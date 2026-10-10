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
; shader hash: 21391fe7b03e185ffd6c166446dc07b4
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
;                                   texture     f32          2d     T54             t1     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 50, 52 }
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
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = alloca [12 x float], align 4
  %106 = alloca [12 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [4 x float], align 4
  %109 = alloca [4 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [3 x float], align 4
  %112 = alloca [3 x float], align 4
  %113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 0
  %117 = fmul fast float %116, %101
  %118 = fmul fast float %116, %102
  %119 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = bitcast float %119 to i32
  %121 = ashr i32 %120, 1
  %122 = sub nsw i32 1597250115, %121
  %123 = bitcast i32 %122 to float
  %124 = fmul fast float %123, %92
  %125 = fmul fast float %123, %93
  %126 = fmul fast float %123, %94
  %127 = fmul fast float %93, %90
  %128 = fmul fast float %94, %89
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %94, %88
  %131 = fmul fast float %92, %90
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %92, %89
  %134 = fmul fast float %93, %88
  %135 = fsub fast float %133, %134
  %136 = fmul fast float %129, %91
  %137 = fmul fast float %132, %91
  %138 = fmul fast float %135, %91
  %139 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %140 = bitcast float %139 to i32
  %141 = ashr i32 %140, 1
  %142 = sub nsw i32 1597250115, %141
  %143 = bitcast i32 %142 to float
  %144 = fmul fast float %143, %81
  %145 = fmul fast float %143, %82
  %146 = fmul fast float %143, %83
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = fcmp fast une float %148, 0.000000e+00
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %117, 2.000000e+00
  %154 = fmul fast float %153, %151
  %155 = fmul fast float %118, 2.000000e+00
  %156 = fmul fast float %155, %152
  %157 = fsub fast float 1.000000e+00, %154
  %158 = fsub fast float 1.000000e+00, %156
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %167 = select i1 %149, float %160, float %164
  %168 = select i1 %149, float %161, float %165
  %169 = select i1 %149, float %162, float %166
  %170 = fmul fast float %167, %157
  %171 = fmul fast float %168, %157
  %172 = fmul fast float %169, %157
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 0
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %176 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 0
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 1
  %180 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %181 = select i1 %149, float %174, float %178
  %182 = select i1 %149, float %175, float %179
  %183 = select i1 %149, float %176, float %180
  %184 = fmul fast float %181, %158
  %185 = fmul fast float %182, %158
  %186 = fmul fast float %183, %158
  %187 = fadd fast float %184, %170
  %188 = fadd fast float %185, %171
  %189 = fadd fast float %186, %172
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.f32 %190, 0
  %192 = extractvalue %dx.types.CBufRet.f32 %190, 1
  %193 = extractvalue %dx.types.CBufRet.f32 %190, 2
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.f32 %194, 0
  %196 = extractvalue %dx.types.CBufRet.f32 %194, 1
  %197 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %198 = select i1 %149, float %191, float %195
  %199 = select i1 %149, float %192, float %196
  %200 = select i1 %149, float %193, float %197
  %201 = fadd fast float %187, %198
  %202 = fadd fast float %188, %199
  %203 = fadd fast float %189, %200
  %204 = fmul fast float %201, %104
  %205 = fmul fast float %202, %104
  %206 = fmul fast float %203, %104
  %207 = fmul fast float %117, 5.000000e-01
  %208 = fmul fast float %118, 5.000000e-01
  %209 = fptosi float %207 to i32
  %210 = fptosi float %208 to i32
  %211 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %28, i32 0, i32 %209, i32 %210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = lshr i32 %212, 18
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F4C00EBA0000000
  %216 = call float @dx.op.unary.f32(i32 21, float %215)  ; Exp(value)
  %217 = fadd fast float %216, -1.000000e+00
  %218 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %28, i32 0)  ; GetDimensions(handle,mipLevel)
  %219 = extractvalue %dx.types.Dimensions %218, 0
  %220 = sitofp i32 %219 to float
  %221 = extractvalue %dx.types.Dimensions %218, 1
  %222 = sitofp i32 %221 to float
  %223 = fcmp fast oge float %207, %220
  %224 = fcmp fast oge float %208, %222
  %225 = or i1 %223, %224
  %226 = select i1 %225, float 0x4197782600000000, float %217
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %230 = fmul fast float %228, %117
  %231 = fmul fast float %229, %118
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 114688
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %235, float %230, float 0.000000e+00
  %237 = select i1 %235, float %231, float 0.000000e+00
  %238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %57, float %236, float %237, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fmul fast float %239, 2.550000e+02
  %241 = fptoui float %240 to i32
  %242 = select i1 %235, i32 %241, i32 0
  %243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.i32 %243, 3
  %245 = and i32 %244, 3
  %246 = icmp ne i32 %245, 0
  %247 = and i32 %244, 4
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %246, %248
  br i1 %249, label %250, label %259

; <label>:250                                     ; preds = %0
  %251 = fmul fast float %152, %118
  %252 = fmul fast float %151, %117
  %253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %56, float %252, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fsub fast float 1.000000e+00, %254
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = fcmp fast olt float %255, %257
  br label %262

; <label>:259                                     ; preds = %0
  %260 = icmp eq i32 %247, 0
  %261 = and i1 %246, %260
  br label %262

; <label>:262                                     ; preds = %259, %250
  %263 = phi i1 [ %258, %250 ], [ %261, %259 ]
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = fmul fast float %265, 0x3FE3C6EF40000000
  %267 = frem fast float %117, 2.560000e+02
  %268 = frem fast float %118, 2.560000e+02
  %269 = fptoui float %267 to i32
  %270 = fptoui float %268 to i32
  %271 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %269, i32 %270, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fadd fast float %272, %266
  %274 = call float @dx.op.unary.f32(i32 22, float %273)  ; Frc(value)
  %275 = add i32 %62, 216
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %277, 8
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %277, 16
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = add i32 %62, 36
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %62, 288
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = fmul fast float %300, 0x3F50624DE0000000
  %304 = fmul fast float %302, 0x3F50624DE0000000
  %305 = mul i32 %63, 100
  %306 = add i32 %305, 28
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = add i32 %62, 232
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %311, 8
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %311, 16
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = add i32 %62, 52
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %62, 304
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %305, 48
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = shl i32 %339, 4
  %341 = and i32 %340, 32752
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %339, 7
  %344 = and i32 %343, 32752
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = lshr i32 %339, 22
  %347 = shl nuw nsw i32 %346, 5
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = and i32 %308, 8
  %350 = icmp ne i32 %349, 0
  %351 = select i1 %350, float %342, float %314
  %352 = select i1 %350, float %345, float %318
  %353 = select i1 %350, float %348, float %322
  %354 = add i32 %305, 52
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = and i32 %308, 2
  %362 = icmp ne i32 %361, 0
  %363 = select i1 %362, float %358, float %327
  %364 = select i1 %362, float %360, float %329
  %365 = add i32 %305, 56
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 65535
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = lshr i32 %367, 16
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = and i32 %308, 4
  %373 = icmp ne i32 %372, 0
  %374 = select i1 %373, float %369, float %334
  %375 = fmul float %374, 0x3F50624DE0000000
  %376 = select i1 %373, float %371, float %336
  %377 = fmul float %376, 0x3F50624DE0000000
  %378 = add i32 %305, 32
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %62, 248
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %62, 68
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %62, 320
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = add i32 %305, 68
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = shl i32 %411, 4
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = lshr i32 %411, 7
  %416 = and i32 %415, 32752
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %411, 22
  %419 = shl nuw nsw i32 %418, 5
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = and i32 %380, 8
  %422 = icmp ne i32 %421, 0
  %423 = select i1 %422, float %414, float %386
  %424 = select i1 %422, float %417, float %390
  %425 = select i1 %422, float %420, float %394
  %426 = add i32 %305, 72
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 65535
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %428, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = and i32 %380, 2
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %430, float %399
  %436 = select i1 %434, float %432, float %401
  %437 = add i32 %305, 76
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 65535
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = lshr i32 %439, 16
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = and i32 %380, 4
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %441, float %406
  %447 = fmul float %446, 0x3F50624DE0000000
  %448 = select i1 %445, float %443, float %408
  %449 = fmul float %448, 0x3F50624DE0000000
  %450 = add i32 %305, 36
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = add i32 %62, 264
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, 0x3F70101020000000
  %459 = lshr i32 %455, 8
  %460 = and i32 %459, 255
  %461 = uitofp i32 %460 to float
  %462 = fmul fast float %461, 0x3F70101020000000
  %463 = lshr i32 %455, 16
  %464 = and i32 %463, 255
  %465 = uitofp i32 %464 to float
  %466 = fmul fast float %465, 0x3F70101020000000
  %467 = add i32 %62, 84
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 65535
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = lshr i32 %469, 16
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = add i32 %62, 336
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 65535
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = lshr i32 %476, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = add i32 %305, 88
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = shl i32 %483, 4
  %485 = and i32 %484, 32752
  %486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %485)  ; LegacyF16ToF32(value)
  %487 = lshr i32 %483, 7
  %488 = and i32 %487, 32752
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = lshr i32 %483, 22
  %491 = shl nuw nsw i32 %490, 5
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = and i32 %452, 8
  %494 = icmp ne i32 %493, 0
  %495 = select i1 %494, float %486, float %458
  %496 = select i1 %494, float %489, float %462
  %497 = select i1 %494, float %492, float %466
  %498 = add i32 %305, 92
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 65535
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %500, 16
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = and i32 %452, 2
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %506, float %502, float %471
  %508 = select i1 %506, float %504, float %473
  %509 = add i32 %305, 96
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = and i32 %452, 4
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %513, float %478
  %519 = fmul float %518, 0x3F50624DE0000000
  %520 = select i1 %517, float %515, float %480
  %521 = fmul float %520, 0x3F50624DE0000000
  %522 = add i32 %62, 348
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 32
  %526 = icmp eq i32 %525, 0
  %527 = and i32 %524, 64
  %528 = icmp eq i32 %527, 0
  %529 = and i32 %524, 128
  %530 = icmp eq i32 %529, 0
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 2
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %550, label %535

; <label>:535                                     ; preds = %262
  %536 = add i32 %62, 488
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %114, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = fmul fast float %545, %97
  %547 = fmul fast float %542, %98
  %548 = fmul fast float %543, %99
  %549 = fmul fast float %544, %100
  br label %550

; <label>:550                                     ; preds = %535, %262
  %551 = phi float [ %100, %262 ], [ %549, %535 ]
  %552 = phi float [ %99, %262 ], [ %548, %535 ]
  %553 = phi float [ %98, %262 ], [ %547, %535 ]
  %554 = phi float [ %97, %262 ], [ %546, %535 ]
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 2
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %578, label %559

; <label>:559                                     ; preds = %550
  %560 = add i32 %62, 44
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 1
  %564 = icmp ne i32 %563, 0
  %565 = select i1 %564, float %553, float 1.000000e+00
  %566 = add i32 %62, 60
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 1
  %570 = icmp ne i32 %569, 0
  %571 = select i1 %570, float %552, float 1.000000e+00
  %572 = add i32 %62, 76
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 1
  %576 = icmp ne i32 %575, 0
  %577 = select i1 %576, float %551, float 1.000000e+00
  br label %578

; <label>:578                                     ; preds = %559, %550
  %579 = phi float [ %551, %550 ], [ %577, %559 ]
  %580 = phi float [ %552, %550 ], [ %571, %559 ]
  %581 = phi float [ %553, %550 ], [ %565, %559 ]
  %582 = add i32 %62, 24
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = add i32 %62, 28
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = or i32 %587, %584
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %1053, label %590

; <label>:590                                     ; preds = %578
  %591 = and i32 %584, 262144
  %592 = icmp ne i32 %591, 0
  %593 = select i1 %592, float %68, float 1.000000e+00
  %594 = select i1 %592, float %69, float 0.000000e+00
  %595 = select i1 %592, float %70, float 0.000000e+00
  %596 = select i1 %592, float %71, float 1.000000e+00
  %597 = select i1 %592, float %72, float %95
  %598 = select i1 %592, float %73, float %96
  %599 = add i32 %62, 284
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = lshr i32 %601, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fmul fast float %603, 0x3F50624DE0000000
  %605 = add i32 %62, 88
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 16
  %609 = and i32 %608, 255
  %610 = lshr i32 %607, 24
  %611 = add i32 %62, 292
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 65535
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %613, 16
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = add i32 %62, 32
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = lshr i32 %620, 22
  %622 = shl nuw nsw i32 %621, 5
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = shl i32 %620, 4
  %625 = and i32 %624, 32752
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %620, 7
  %628 = and i32 %627, 32752
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %632 = fmul fast float %631, 1.000000e+03
  %633 = fmul fast float %303, %632
  %634 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %635 = fadd fast float %634, %293
  %636 = fmul fast float %304, %632
  %637 = call float @dx.op.unary.f32(i32 22, float %636)  ; Frc(value)
  %638 = fadd fast float %637, %295
  %639 = fmul fast float %604, %632
  %640 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %641 = fmul fast float %640, 0x401921FB60000000
  %642 = fadd fast float %641, %623
  %643 = call float @dx.op.unary.f32(i32 13, float %642)  ; Sin(value)
  %644 = call float @dx.op.unary.f32(i32 12, float %642)  ; Cos(value)
  %645 = fsub fast float -0.000000e+00, %643
  %646 = fadd fast float %597, -5.000000e-01
  %647 = fadd fast float %598, -5.000000e-01
  %648 = fmul fast float %615, %646
  %649 = fmul fast float %617, %647
  %650 = fadd fast float %648, 5.000000e-01
  %651 = fadd fast float %649, 5.000000e-01
  %652 = fmul fast float %626, %650
  %653 = fmul fast float %629, %651
  %654 = fmul fast float %644, %652
  %655 = call float @dx.op.tertiary.f32(i32 46, float %645, float %653, float %654)  ; FMad(a,b,c)
  %656 = fmul fast float %643, %652
  %657 = call float @dx.op.tertiary.f32(i32 46, float %644, float %653, float %656)  ; FMad(a,b,c)
  %658 = fadd fast float %635, %655
  %659 = fadd fast float %638, %657
  %660 = icmp ugt i32 %609, 1
  %661 = icmp ugt i32 %607, 33554431
  %662 = or i1 %661, %660
  br i1 %662, label %663, label %688

; <label>:663                                     ; preds = %590
  %664 = add i32 %62, 228
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = lshr i32 %666, 16
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = fmul fast float %631, %668
  %670 = call float @dx.op.unary.f32(i32 22, float %669)  ; Frc(value)
  %671 = mul nuw nsw i32 %609, %610
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %670, %672
  %674 = call float @dx.op.unary.f32(i32 27, float %673)  ; Round_ni(value)
  %675 = fptoui float %674 to i32
  %676 = urem i32 %675, %609
  %677 = udiv i32 %675, %610
  %678 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %679 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %680 = uitofp i32 %676 to float
  %681 = uitofp i32 %677 to float
  %682 = fadd fast float %678, %680
  %683 = fadd fast float %679, %681
  %684 = uitofp i32 %609 to float
  %685 = uitofp i32 %610 to float
  %686 = fdiv fast float %682, %684
  %687 = fdiv fast float %683, %685
  br label %688

; <label>:688                                     ; preds = %663, %590
  %689 = phi float [ %686, %663 ], [ %658, %590 ]
  %690 = phi float [ %687, %663 ], [ %659, %590 ]
  %691 = and i32 %584, 256
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %739, label %693

; <label>:693                                     ; preds = %688
  %694 = add i32 %62, 440
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %698, %dx.types.Handle %114, float %689, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = add i32 %62, 100
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = shl i32 %703, 4
  %705 = and i32 %704, 32752
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = lshr i32 %703, 7
  %708 = and i32 %707, 32752
  %709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %708)  ; LegacyF16ToF32(value)
  %710 = fsub fast float 1.000000e+00, %554
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %712 = bitcast float %554 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %709, %714
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = bitcast float %711 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %721, %709
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = fmul fast float %718, %706
  %727 = fmul fast float %725, %706
  %728 = fsub fast float %711, %726
  %729 = fadd fast float %727, %711
  %730 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %731 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %732 = fsub fast float %700, %730
  %733 = fsub fast float %731, %730
  %734 = bitcast float %733 to i32
  %735 = sub nsw i32 2129859010, %734
  %736 = bitcast i32 %735 to float
  %737 = fmul fast float %736, %732
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  br label %739

; <label>:739                                     ; preds = %693, %688
  %740 = phi float [ %738, %693 ], [ %554, %688 ]
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 128
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %761, label %745

; <label>:745                                     ; preds = %739
  %746 = add i32 %62, 424
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %114, float %689, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 524288
  %756 = icmp ne i32 %755, 0
  %757 = fcmp fast ogt float %752, 0x3FE0101020000000
  %758 = select i1 %757, float 1.000000e+00, float 0.000000e+00
  %759 = select i1 %756, float %758, float %752
  %760 = fmul fast float %759, %740
  br label %761

; <label>:761                                     ; preds = %745, %739
  %762 = phi float [ %760, %745 ], [ %740, %739 ]
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 16
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %942, label %767

; <label>:767                                     ; preds = %761
  %768 = add i32 %62, 376
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %113, float %689, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 512
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %789, label %781

; <label>:781                                     ; preds = %767
  %782 = add i32 %62, 456
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = add i32 %784, 0
  %786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %786, %dx.types.Handle %114, float %689, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  br label %789

; <label>:789                                     ; preds = %781, %767
  %790 = phi float [ %788, %781 ], [ 1.000000e+00, %767 ]
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 33554432
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %889, label %795

; <label>:795                                     ; preds = %789
  %796 = add i32 %62, 224
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 65535
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = lshr i32 %798, 16
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = add i32 %62, 228
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F70101020000000
  %813 = lshr i32 %809, 8
  %814 = and i32 %813, 255
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = lshr i32 %809, 16
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = add i32 %62, 220
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %823, 8
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = lshr i32 %823, 16
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = bitcast float %774 to i32
  %836 = ashr i32 %835, 1
  %837 = sub nsw i32 1597463174, %836
  %838 = bitcast i32 %837 to float
  %839 = fmul fast float %774, 5.000000e-01
  %840 = fmul fast float %838, %838
  %841 = fmul fast float %840, %839
  %842 = fsub fast float 1.500000e+00, %841
  %843 = fmul fast float %838, %774
  %844 = fmul fast float %843, %842
  %845 = bitcast float %775 to i32
  %846 = ashr i32 %845, 1
  %847 = sub nsw i32 1597463174, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %775, 5.000000e-01
  %850 = fmul fast float %848, %848
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.500000e+00, %851
  %853 = fmul fast float %848, %775
  %854 = fmul fast float %853, %852
  %855 = bitcast float %776 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %776, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %776
  %864 = fmul fast float %863, %862
  %865 = fsub fast float %844, %826
  %866 = fsub fast float %854, %830
  %867 = fsub fast float %864, %834
  %868 = fmul fast float %865, %800
  %869 = fmul fast float %866, %802
  %870 = fmul fast float %867, %807
  %871 = fadd fast float %868, %812
  %872 = fadd fast float %869, %816
  %873 = fadd fast float %870, %820
  %874 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %875 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %876 = call float @dx.op.unary.f32(i32 7, float %873)  ; Saturate(value)
  %877 = fmul fast float %874, %874
  %878 = fmul fast float %875, %875
  %879 = fmul fast float %876, %876
  %880 = fsub fast float %877, %774
  %881 = fsub fast float %878, %775
  %882 = fsub fast float %879, %776
  %883 = fmul fast float %880, %790
  %884 = fmul fast float %881, %790
  %885 = fmul fast float %882, %790
  %886 = fadd fast float %883, %774
  %887 = fadd fast float %884, %775
  %888 = fadd fast float %885, %776
  br label %942

; <label>:889                                     ; preds = %789
  %890 = and i32 %792, 134217728
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %926, label %892

; <label>:892                                     ; preds = %889
  %893 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %894 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %895 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %896 = fadd fast float %893, -5.000000e-01
  %897 = fadd fast float %894, -5.000000e-01
  %898 = fadd fast float %895, -5.000000e-01
  %899 = fmul fast float %896, %790
  %900 = fmul fast float %897, %790
  %901 = fmul fast float %898, %790
  %902 = fadd fast float %899, 5.000000e-01
  %903 = fadd fast float %900, 5.000000e-01
  %904 = fadd fast float %901, 5.000000e-01
  %905 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %906 = call float @dx.op.unary.f32(i32 24, float %775)  ; Sqrt(value)
  %907 = call float @dx.op.unary.f32(i32 24, float %776)  ; Sqrt(value)
  %908 = fmul fast float %902, 2.000000e+00
  %909 = fsub fast float 1.000000e+00, %908
  %910 = fmul fast float %909, %905
  %911 = fadd fast float %910, %908
  %912 = fmul fast float %911, %905
  %913 = fmul fast float %903, 2.000000e+00
  %914 = fsub fast float 1.000000e+00, %913
  %915 = fmul fast float %914, %906
  %916 = fadd fast float %915, %913
  %917 = fmul fast float %916, %906
  %918 = fmul fast float %904, 2.000000e+00
  %919 = fsub fast float 1.000000e+00, %918
  %920 = fmul fast float %919, %907
  %921 = fadd fast float %920, %918
  %922 = fmul fast float %921, %907
  %923 = fmul fast float %912, %912
  %924 = fmul fast float %917, %917
  %925 = fmul fast float %922, %922
  br label %942

; <label>:926                                     ; preds = %889
  %927 = fmul fast float %280, %280
  %928 = fmul fast float %284, %284
  %929 = fmul fast float %288, %288
  %930 = fadd fast float %927, -1.000000e+00
  %931 = fadd fast float %928, -1.000000e+00
  %932 = fadd fast float %929, -1.000000e+00
  %933 = fmul fast float %790, %930
  %934 = fmul fast float %790, %931
  %935 = fmul fast float %790, %932
  %936 = fadd fast float %933, 1.000000e+00
  %937 = fadd fast float %934, 1.000000e+00
  %938 = fadd fast float %935, 1.000000e+00
  %939 = fmul fast float %936, %774
  %940 = fmul fast float %937, %775
  %941 = fmul fast float %938, %776
  br label %942

; <label>:942                                     ; preds = %926, %892, %795, %761
  %943 = phi float [ %886, %795 ], [ %923, %892 ], [ %939, %926 ], [ 1.000000e+00, %761 ]
  %944 = phi float [ %887, %795 ], [ %924, %892 ], [ %940, %926 ], [ 1.000000e+00, %761 ]
  %945 = phi float [ %888, %795 ], [ %925, %892 ], [ %941, %926 ], [ 1.000000e+00, %761 ]
  %946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.i32 %946, 1
  %948 = and i32 %947, 1
  %949 = icmp ne i32 %948, 0
  %950 = add i32 %62, 356
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 32
  %954 = icmp ne i32 %953, 0
  %955 = and i1 %949, %954
  %956 = select i1 %955, float 1.000000e+00, float %943
  %957 = select i1 %955, float 0x3FD3333340000000, float %944
  %958 = select i1 %955, float 0x3FD3333340000000, float %945
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = and i32 %960, 32
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %1035, label %963

; <label>:963                                     ; preds = %942
  %964 = add i32 %62, 92
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = add i32 %62, 392
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = add i32 %969, 0
  %971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %972 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %971, %dx.types.Handle %113, float %689, float %690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  %977 = and i32 %966, 255
  %978 = uitofp i32 %977 to float
  %979 = lshr i32 %966, 8
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = lshr i32 %966, 16
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = fmul fast float %984, 0x3F70101000000000
  %986 = fmul fast float %973, %978
  %987 = fadd fast float %986, %981
  %988 = fmul fast float %987, 0x3F70101000000000
  %989 = fadd fast float %974, -5.000000e-01
  %990 = fadd fast float %976, -5.000000e-01
  %991 = fmul fast float %989, %985
  %992 = fmul fast float %990, %985
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fadd fast float %992, 5.000000e-01
  %995 = fmul fast float %993, 2.000000e+00
  %996 = fadd fast float %995, -1.000000e+00
  %997 = fmul fast float %994, 2.000000e+00
  %998 = fadd fast float %997, -1.000000e+00
  %999 = fadd fast float %996, %998
  %1000 = fmul fast float %999, 5.000000e-01
  %1001 = fsub fast float %996, %998
  %1002 = fmul fast float %1001, 5.000000e-01
  %1003 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1004 = fsub fast float 1.000000e+00, %1003
  %1005 = call float @dx.op.unary.f32(i32 6, float %1002)  ; FAbs(value)
  %1006 = fsub fast float %1004, %1005
  %1007 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1002, float %1006, float %1000, float %1002, float %1006)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.unary.f32(i32 25, float %1007)  ; Rsqrt(value)
  %1009 = fmul fast float %1000, %1008
  %1010 = fmul fast float %1002, %1008
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 67108864
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1031, label %1015

; <label>:1015                                    ; preds = %963
  %1016 = add i32 %62, 280
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 65535
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 65535
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = lshr i32 %1018, 16
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = fsub fast float %988, %1026
  %1028 = fmul fast float %1027, %1020
  %1029 = fadd fast float %1028, %1024
  %1030 = call float @dx.op.unary.f32(i32 7, float %1029)  ; Saturate(value)
  br label %1031

; <label>:1031                                    ; preds = %1015, %963
  %1032 = phi float [ %1030, %1015 ], [ %988, %963 ]
  %1033 = call float @dx.op.dot2.f32(i32 54, float %1009, float %1010, float %593, float %594)  ; Dot2(ax,ay,bx,by)
  %1034 = call float @dx.op.dot2.f32(i32 54, float %1009, float %1010, float %595, float %596)  ; Dot2(ax,ay,bx,by)
  br label %1035

; <label>:1035                                    ; preds = %1031, %942
  %1036 = phi float [ %1032, %1031 ], [ 0x3FD6666660000000, %942 ]
  %1037 = phi float [ %1033, %1031 ], [ 0.000000e+00, %942 ]
  %1038 = phi float [ %1034, %1031 ], [ 0.000000e+00, %942 ]
  %1039 = phi float [ %975, %1031 ], [ 1.000000e+00, %942 ]
  %1040 = add i32 %62, 96
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 255
  %1044 = uitofp i32 %1043 to float
  %1045 = lshr i32 %1042, 8
  %1046 = and i32 %1045, 255
  %1047 = uitofp i32 %1046 to float
  %1048 = call float @dx.op.dot3.f32(i32 55, float %956, float %957, float %958, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = fmul fast float %1047, %1048
  %1050 = fadd fast float %1049, %1044
  %1051 = fmul fast float %1050, 0x3F70101020000000
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %1035, %578
  %1054 = phi float [ 0.000000e+00, %578 ], [ %1037, %1035 ]
  %1055 = phi float [ 0.000000e+00, %578 ], [ %1038, %1035 ]
  %1056 = phi float [ 0.000000e+00, %578 ], [ %762, %1035 ]
  %1057 = phi float [ 0.000000e+00, %578 ], [ %1036, %1035 ]
  %1058 = phi float [ 0.000000e+00, %578 ], [ %1039, %1035 ]
  %1059 = phi float [ 0.000000e+00, %578 ], [ %1052, %1035 ]
  br i1 %526, label %1621, label %1060

; <label>:1060                                    ; preds = %1053
  %1061 = add i32 %62, 40
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %62, 44
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = or i32 %1066, %1063
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1621, label %1069

; <label>:1069                                    ; preds = %1060
  %1070 = and i32 %1063, 262144
  %1071 = icmp ne i32 %1070, 0
  %1072 = select i1 %1071, float %68, float 1.000000e+00
  %1073 = select i1 %1071, float %69, float 0.000000e+00
  %1074 = select i1 %1071, float %70, float 0.000000e+00
  %1075 = select i1 %1071, float %71, float 1.000000e+00
  %1076 = select i1 %1071, float %72, float %95
  %1077 = select i1 %1071, float %73, float %96
  %1078 = add i32 %62, 300
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1082, 0x3F50624DE0000000
  %1084 = add i32 %62, 104
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 16
  %1088 = and i32 %1087, 255
  %1089 = lshr i32 %1086, 24
  %1090 = add i32 %62, 308
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1092, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = add i32 %62, 48
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.i32 %1098, 0
  %1100 = lshr i32 %1099, 22
  %1101 = shl nuw nsw i32 %1100, 5
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = shl i32 %1099, 4
  %1104 = and i32 %1103, 32752
  %1105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1104)  ; LegacyF16ToF32(value)
  %1106 = lshr i32 %1099, 7
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1111 = fmul fast float %1110, 1.000000e+03
  %1112 = fmul fast float %1111, %375
  %1113 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1114 = fadd fast float %1113, %363
  %1115 = fmul fast float %1111, %377
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = fadd fast float %1116, %364
  %1118 = fmul fast float %1083, %1111
  %1119 = call float @dx.op.unary.f32(i32 22, float %1118)  ; Frc(value)
  %1120 = fmul fast float %1119, 0x401921FB60000000
  %1121 = fadd fast float %1120, %1102
  %1122 = call float @dx.op.unary.f32(i32 13, float %1121)  ; Sin(value)
  %1123 = call float @dx.op.unary.f32(i32 12, float %1121)  ; Cos(value)
  %1124 = fsub fast float -0.000000e+00, %1122
  %1125 = fadd fast float %1076, -5.000000e-01
  %1126 = fadd fast float %1077, -5.000000e-01
  %1127 = fmul fast float %1094, %1125
  %1128 = fmul fast float %1096, %1126
  %1129 = fadd fast float %1127, 5.000000e-01
  %1130 = fadd fast float %1128, 5.000000e-01
  %1131 = fmul fast float %1105, %1129
  %1132 = fmul fast float %1108, %1130
  %1133 = fmul fast float %1123, %1131
  %1134 = call float @dx.op.tertiary.f32(i32 46, float %1124, float %1132, float %1133)  ; FMad(a,b,c)
  %1135 = fmul fast float %1122, %1131
  %1136 = call float @dx.op.tertiary.f32(i32 46, float %1123, float %1132, float %1135)  ; FMad(a,b,c)
  %1137 = fadd fast float %1114, %1134
  %1138 = fadd fast float %1117, %1136
  %1139 = icmp ugt i32 %1088, 1
  %1140 = icmp ugt i32 %1086, 33554431
  %1141 = or i1 %1140, %1139
  br i1 %1141, label %1142, label %1167

; <label>:1142                                    ; preds = %1069
  %1143 = add i32 %62, 244
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = fmul fast float %1110, %1147
  %1149 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1150 = mul nuw nsw i32 %1088, %1089
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1149, %1151
  %1153 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1154 = fptoui float %1153 to i32
  %1155 = urem i32 %1154, %1088
  %1156 = udiv i32 %1154, %1089
  %1157 = call float @dx.op.unary.f32(i32 22, float %1137)  ; Frc(value)
  %1158 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1159 = uitofp i32 %1155 to float
  %1160 = uitofp i32 %1156 to float
  %1161 = fadd fast float %1157, %1159
  %1162 = fadd fast float %1158, %1160
  %1163 = uitofp i32 %1088 to float
  %1164 = uitofp i32 %1089 to float
  %1165 = fdiv fast float %1161, %1163
  %1166 = fdiv fast float %1162, %1164
  br label %1167

; <label>:1167                                    ; preds = %1142, %1069
  %1168 = phi float [ %1165, %1142 ], [ %1137, %1069 ]
  %1169 = phi float [ %1166, %1142 ], [ %1138, %1069 ]
  %1170 = and i32 %1063, 256
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1218, label %1172

; <label>:1172                                    ; preds = %1167
  %1173 = add i32 %62, 444
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %114, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = add i32 %62, 116
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = shl i32 %1182, 4
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1182, 7
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fsub fast float 1.000000e+00, %581
  %1190 = call float @dx.op.binary.f32(i32 35, float %1189, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1191 = bitcast float %581 to i32
  %1192 = sitofp i32 %1191 to float
  %1193 = fadd fast float %1192, 0xC1CFBF8940000000
  %1194 = fmul fast float %1188, %1193
  %1195 = fadd fast float %1194, 0x41CFBF8940000000
  %1196 = fptosi float %1195 to i32
  %1197 = bitcast i32 %1196 to float
  %1198 = bitcast float %1190 to i32
  %1199 = sitofp i32 %1198 to float
  %1200 = fadd fast float %1199, 0xC1CFBF8940000000
  %1201 = fmul fast float %1200, %1188
  %1202 = fadd fast float %1201, 0x41CFBF8940000000
  %1203 = fptosi float %1202 to i32
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1197, %1185
  %1206 = fmul fast float %1204, %1185
  %1207 = fsub fast float %1190, %1205
  %1208 = fadd fast float %1206, %1190
  %1209 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1210 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1211 = fsub fast float %1179, %1209
  %1212 = fsub fast float %1210, %1209
  %1213 = bitcast float %1212 to i32
  %1214 = sub nsw i32 2129859010, %1213
  %1215 = bitcast i32 %1214 to float
  %1216 = fmul fast float %1215, %1211
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  br label %1218

; <label>:1218                                    ; preds = %1172, %1167
  %1219 = phi float [ %1217, %1172 ], [ %581, %1167 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 128
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1240, label %1224

; <label>:1224                                    ; preds = %1218
  %1225 = add i32 %62, 428
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = add i32 %1227, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1229, %dx.types.Handle %114, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 524288
  %1235 = icmp ne i32 %1234, 0
  %1236 = fcmp fast ogt float %1231, 0x3FE0101020000000
  %1237 = select i1 %1236, float 1.000000e+00, float 0.000000e+00
  %1238 = select i1 %1235, float %1237, float %1231
  %1239 = fmul fast float %1238, %1219
  br label %1240

; <label>:1240                                    ; preds = %1224, %1218
  %1241 = phi float [ %1239, %1224 ], [ %1219, %1218 ]
  %1242 = fcmp fast ult float %1241, 0x3F70101020000000
  br i1 %1242, label %1621, label %1243

; <label>:1243                                    ; preds = %1240
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 16
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1423, label %1248

; <label>:1248                                    ; preds = %1243
  %1249 = add i32 %62, 380
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1253, %dx.types.Handle %113, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 512
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1270, label %1262

; <label>:1262                                    ; preds = %1248
  %1263 = add i32 %62, 460
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = add i32 %1265, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1267, %dx.types.Handle %114, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  br label %1270

; <label>:1270                                    ; preds = %1262, %1248
  %1271 = phi float [ %1269, %1262 ], [ 1.000000e+00, %1248 ]
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 33554432
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1370, label %1276

; <label>:1276                                    ; preds = %1270
  %1277 = add i32 %62, 240
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 65535
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1279, 16
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = add i32 %62, 244
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = lshr i32 %1290, 8
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = lshr i32 %1290, 16
  %1299 = and i32 %1298, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = add i32 %62, 236
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1304, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = lshr i32 %1304, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = bitcast float %1255 to i32
  %1317 = ashr i32 %1316, 1
  %1318 = sub nsw i32 1597463174, %1317
  %1319 = bitcast i32 %1318 to float
  %1320 = fmul fast float %1255, 5.000000e-01
  %1321 = fmul fast float %1319, %1319
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float 1.500000e+00, %1322
  %1324 = fmul fast float %1319, %1255
  %1325 = fmul fast float %1324, %1323
  %1326 = bitcast float %1256 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1256, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1256
  %1335 = fmul fast float %1334, %1333
  %1336 = bitcast float %1257 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1257, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1257
  %1345 = fmul fast float %1344, %1343
  %1346 = fsub fast float %1325, %1307
  %1347 = fsub fast float %1335, %1311
  %1348 = fsub fast float %1345, %1315
  %1349 = fmul fast float %1346, %1281
  %1350 = fmul fast float %1347, %1283
  %1351 = fmul fast float %1348, %1288
  %1352 = fadd fast float %1349, %1293
  %1353 = fadd fast float %1350, %1297
  %1354 = fadd fast float %1351, %1301
  %1355 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1356 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1357 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1358 = fmul fast float %1355, %1355
  %1359 = fmul fast float %1356, %1356
  %1360 = fmul fast float %1357, %1357
  %1361 = fsub fast float %1358, %1255
  %1362 = fsub fast float %1359, %1256
  %1363 = fsub fast float %1360, %1257
  %1364 = fmul fast float %1361, %1271
  %1365 = fmul fast float %1362, %1271
  %1366 = fmul fast float %1363, %1271
  %1367 = fadd fast float %1364, %1255
  %1368 = fadd fast float %1365, %1256
  %1369 = fadd fast float %1366, %1257
  br label %1423

; <label>:1370                                    ; preds = %1270
  %1371 = and i32 %1273, 134217728
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1407, label %1373

; <label>:1373                                    ; preds = %1370
  %1374 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %1376 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %1377 = fadd fast float %1374, -5.000000e-01
  %1378 = fadd fast float %1375, -5.000000e-01
  %1379 = fadd fast float %1376, -5.000000e-01
  %1380 = fmul fast float %1377, %1271
  %1381 = fmul fast float %1378, %1271
  %1382 = fmul fast float %1379, %1271
  %1383 = fadd fast float %1380, 5.000000e-01
  %1384 = fadd fast float %1381, 5.000000e-01
  %1385 = fadd fast float %1382, 5.000000e-01
  %1386 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1387 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1389 = fmul fast float %1383, 2.000000e+00
  %1390 = fsub fast float 1.000000e+00, %1389
  %1391 = fmul fast float %1390, %1386
  %1392 = fadd fast float %1391, %1389
  %1393 = fmul fast float %1392, %1386
  %1394 = fmul fast float %1384, 2.000000e+00
  %1395 = fsub fast float 1.000000e+00, %1394
  %1396 = fmul fast float %1395, %1387
  %1397 = fadd fast float %1396, %1394
  %1398 = fmul fast float %1397, %1387
  %1399 = fmul fast float %1385, 2.000000e+00
  %1400 = fsub fast float 1.000000e+00, %1399
  %1401 = fmul fast float %1400, %1388
  %1402 = fadd fast float %1401, %1399
  %1403 = fmul fast float %1402, %1388
  %1404 = fmul fast float %1393, %1393
  %1405 = fmul fast float %1398, %1398
  %1406 = fmul fast float %1403, %1403
  br label %1423

; <label>:1407                                    ; preds = %1370
  %1408 = fmul fast float %351, %351
  %1409 = fmul fast float %352, %352
  %1410 = fmul fast float %353, %353
  %1411 = fadd fast float %1408, -1.000000e+00
  %1412 = fadd fast float %1409, -1.000000e+00
  %1413 = fadd fast float %1410, -1.000000e+00
  %1414 = fmul fast float %1271, %1411
  %1415 = fmul fast float %1271, %1412
  %1416 = fmul fast float %1271, %1413
  %1417 = fadd fast float %1414, 1.000000e+00
  %1418 = fadd fast float %1415, 1.000000e+00
  %1419 = fadd fast float %1416, 1.000000e+00
  %1420 = fmul fast float %1417, %1255
  %1421 = fmul fast float %1418, %1256
  %1422 = fmul fast float %1419, %1257
  br label %1423

; <label>:1423                                    ; preds = %1407, %1373, %1276, %1243
  %1424 = phi float [ %1367, %1276 ], [ %1404, %1373 ], [ %1420, %1407 ], [ 1.000000e+00, %1243 ]
  %1425 = phi float [ %1368, %1276 ], [ %1405, %1373 ], [ %1421, %1407 ], [ 1.000000e+00, %1243 ]
  %1426 = phi float [ %1369, %1276 ], [ %1406, %1373 ], [ %1422, %1407 ], [ 1.000000e+00, %1243 ]
  %1427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.i32 %1427, 1
  %1429 = and i32 %1428, 1
  %1430 = icmp ne i32 %1429, 0
  %1431 = add i32 %62, 356
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 32
  %1435 = icmp ne i32 %1434, 0
  %1436 = and i1 %1430, %1435
  %1437 = select i1 %1436, float 1.000000e+00, float %1424
  %1438 = select i1 %1436, float 0x3FD3333340000000, float %1425
  %1439 = select i1 %1436, float 0x3FD3333340000000, float %1426
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 32
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1516, label %1444

; <label>:1444                                    ; preds = %1423
  %1445 = add i32 %62, 108
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = add i32 %62, 396
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %1450, 0
  %1452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1452, %dx.types.Handle %113, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = extractvalue %dx.types.ResRet.f32 %1453, 3
  %1458 = and i32 %1447, 255
  %1459 = uitofp i32 %1458 to float
  %1460 = lshr i32 %1447, 8
  %1461 = and i32 %1460, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1447, 16
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = fmul fast float %1465, 0x3F70101000000000
  %1467 = fmul fast float %1454, %1459
  %1468 = fadd fast float %1467, %1462
  %1469 = fmul fast float %1468, 0x3F70101000000000
  %1470 = fadd fast float %1455, -5.000000e-01
  %1471 = fadd fast float %1457, -5.000000e-01
  %1472 = fmul fast float %1470, %1466
  %1473 = fmul fast float %1471, %1466
  %1474 = fadd fast float %1472, 5.000000e-01
  %1475 = fadd fast float %1473, 5.000000e-01
  %1476 = fmul fast float %1474, 2.000000e+00
  %1477 = fadd fast float %1476, -1.000000e+00
  %1478 = fmul fast float %1475, 2.000000e+00
  %1479 = fadd fast float %1478, -1.000000e+00
  %1480 = fadd fast float %1477, %1479
  %1481 = fmul fast float %1480, 5.000000e-01
  %1482 = fsub fast float %1477, %1479
  %1483 = fmul fast float %1482, 5.000000e-01
  %1484 = call float @dx.op.unary.f32(i32 6, float %1481)  ; FAbs(value)
  %1485 = fsub fast float 1.000000e+00, %1484
  %1486 = call float @dx.op.unary.f32(i32 6, float %1483)  ; FAbs(value)
  %1487 = fsub fast float %1485, %1486
  %1488 = call float @dx.op.dot3.f32(i32 55, float %1481, float %1483, float %1487, float %1481, float %1483, float %1487)  ; Dot3(ax,ay,az,bx,by,bz)
  %1489 = call float @dx.op.unary.f32(i32 25, float %1488)  ; Rsqrt(value)
  %1490 = fmul fast float %1481, %1489
  %1491 = fmul fast float %1483, %1489
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 67108864
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1512, label %1496

; <label>:1496                                    ; preds = %1444
  %1497 = add i32 %62, 296
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 65535
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = lshr i32 %1499, 16
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fsub fast float %1469, %1507
  %1509 = fmul fast float %1508, %1501
  %1510 = fadd fast float %1509, %1505
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  br label %1512

; <label>:1512                                    ; preds = %1496, %1444
  %1513 = phi float [ %1511, %1496 ], [ %1469, %1444 ]
  %1514 = call float @dx.op.dot2.f32(i32 54, float %1490, float %1491, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1515 = call float @dx.op.dot2.f32(i32 54, float %1490, float %1491, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  br label %1516

; <label>:1516                                    ; preds = %1512, %1423
  %1517 = phi float [ %1513, %1512 ], [ 0x3FD6666660000000, %1423 ]
  %1518 = phi float [ %1514, %1512 ], [ 0.000000e+00, %1423 ]
  %1519 = phi float [ %1515, %1512 ], [ 0.000000e+00, %1423 ]
  %1520 = phi float [ %1456, %1512 ], [ 1.000000e+00, %1423 ]
  %1521 = add i32 %62, 112
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 3
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1528, label %1545

; <label>:1528                                    ; preds = %1516
  %1529 = lshr i32 %1523, 8
  %1530 = and i32 %1529, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1438, float %1439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = fmul fast float %1531, %1532
  %1534 = and i32 %1523, 255
  %1535 = uitofp i32 %1534 to float
  %1536 = fadd fast float %1533, %1535
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  %1539 = and i32 %1525, 16
  %1540 = icmp ne i32 %1539, 0
  %1541 = select i1 %1540, float %1241, float 0.000000e+00
  %1542 = fsub fast float %1538, %1059
  %1543 = fmul fast float %1541, %1542
  %1544 = fadd fast float %1543, %1059
  br label %1545

; <label>:1545                                    ; preds = %1528, %1516
  %1546 = phi float [ %1059, %1516 ], [ %1544, %1528 ]
  %1547 = and i32 %1525, 12
  %1548 = icmp eq i32 %1547, 12
  br i1 %1548, label %1621, label %1549

; <label>:1549                                    ; preds = %1545
  %1550 = and i32 %1525, 2097184
  %1551 = icmp eq i32 %1550, 2097184
  %1552 = select i1 %1551, float %1241, float 0.000000e+00
  %1553 = and i32 %1525, 4194336
  %1554 = icmp eq i32 %1553, 4194336
  %1555 = select i1 %1554, float %1241, float 0.000000e+00
  %1556 = and i32 %1525, 8388640
  %1557 = icmp eq i32 %1556, 8388640
  %1558 = select i1 %1557, float %1241, float 0.000000e+00
  %1559 = icmp eq i32 %1547, 0
  br i1 %1559, label %1560, label %1573

; <label>:1560                                    ; preds = %1549
  %1561 = fsub fast float %1518, %1054
  %1562 = fsub fast float %1519, %1055
  %1563 = fmul fast float %1552, %1561
  %1564 = fmul fast float %1552, %1562
  %1565 = fadd fast float %1563, %1054
  %1566 = fadd fast float %1564, %1055
  %1567 = fsub fast float %1520, %1058
  %1568 = fmul fast float %1555, %1567
  %1569 = fadd fast float %1568, %1058
  %1570 = fsub fast float %1517, %1057
  %1571 = fmul fast float %1558, %1570
  %1572 = fadd fast float %1571, %1057
  br label %1621

; <label>:1573                                    ; preds = %1549
  %1574 = icmp eq i32 %1547, 4
  br i1 %1574, label %1575, label %1607

; <label>:1575                                    ; preds = %1573
  %1576 = fmul fast float %1552, %1518
  %1577 = fmul fast float %1552, %1519
  %1578 = fadd fast float %1576, %1054
  %1579 = fadd fast float %1577, %1055
  %1580 = call float @dx.op.binary.f32(i32 36, float %1058, float %1520)  ; FMin(a,b)
  %1581 = fsub fast float %1580, %1058
  %1582 = fmul fast float %1581, %1555
  %1583 = fadd fast float %1582, %1058
  %1584 = fadd fast float %1517, %1057
  %1585 = fmul fast float %1584, 0x3FF337FAE0000000
  %1586 = fmul fast float %1057, %1057
  %1587 = fmul fast float %1517, %1517
  %1588 = fadd fast float %1587, %1586
  %1589 = fmul fast float %1588, 0x3FE5152B00000000
  %1590 = fmul fast float %1057, 0xBFCC1F85E0000000
  %1591 = fmul fast float %1590, %1517
  %1592 = fadd fast float %1591, 0xBFE1363700000000
  %1593 = fadd fast float %1592, %1585
  %1594 = fsub fast float %1593, %1589
  %1595 = fmul fast float %1584, 0x3FBA6F0D00000000
  %1596 = fmul fast float %1588, 0x3FD0432880000000
  %1597 = fmul fast float %1057, 0xBFEF110800000000
  %1598 = fmul fast float %1597, %1517
  %1599 = fadd fast float %1598, 1.000000e+00
  %1600 = fsub fast float %1599, %1595
  %1601 = fadd fast float %1600, %1596
  %1602 = fdiv fast float %1594, %1601
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1604 = fsub fast float %1603, %1057
  %1605 = fmul fast float %1604, %1558
  %1606 = fadd fast float %1605, %1057
  br label %1621

; <label>:1607                                    ; preds = %1573
  %1608 = icmp eq i32 %1547, 8
  br i1 %1608, label %1609, label %1621

; <label>:1609                                    ; preds = %1607
  %1610 = fmul fast float %1552, %1518
  %1611 = fmul fast float %1552, %1519
  %1612 = fadd fast float %1610, %1054
  %1613 = fadd fast float %1611, %1055
  %1614 = call float @dx.op.binary.f32(i32 36, float %1058, float %1520)  ; FMin(a,b)
  %1615 = fsub fast float %1614, %1058
  %1616 = fmul fast float %1615, %1555
  %1617 = fadd fast float %1616, %1058
  %1618 = fsub fast float %1517, %1057
  %1619 = fmul fast float %1558, %1618
  %1620 = fadd fast float %1619, %1057
  br label %1621

; <label>:1621                                    ; preds = %1609, %1607, %1575, %1560, %1545, %1240, %1060, %1053
  %1622 = phi float [ %1054, %1545 ], [ %1054, %1240 ], [ %1054, %1053 ], [ %1612, %1609 ], [ %1054, %1607 ], [ %1578, %1575 ], [ %1565, %1560 ], [ %1054, %1060 ]
  %1623 = phi float [ %1055, %1545 ], [ %1055, %1240 ], [ %1055, %1053 ], [ %1613, %1609 ], [ %1055, %1607 ], [ %1579, %1575 ], [ %1566, %1560 ], [ %1055, %1060 ]
  %1624 = phi float [ %1057, %1545 ], [ %1057, %1240 ], [ %1057, %1053 ], [ %1620, %1609 ], [ %1057, %1607 ], [ %1606, %1575 ], [ %1572, %1560 ], [ %1057, %1060 ]
  %1625 = phi float [ %1058, %1545 ], [ %1058, %1240 ], [ %1058, %1053 ], [ %1617, %1609 ], [ %1058, %1607 ], [ %1583, %1575 ], [ %1569, %1560 ], [ %1058, %1060 ]
  %1626 = phi float [ %1546, %1545 ], [ %1059, %1240 ], [ %1059, %1053 ], [ %1546, %1609 ], [ %1546, %1607 ], [ %1546, %1575 ], [ %1546, %1560 ], [ %1059, %1060 ]
  br i1 %528, label %2188, label %1627

; <label>:1627                                    ; preds = %1621
  %1628 = add i32 %62, 56
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = add i32 %62, 60
  %1632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1631, i32 undef)  ; BufferLoad(srv,index,wot)
  %1633 = extractvalue %dx.types.ResRet.i32 %1632, 0
  %1634 = or i32 %1633, %1630
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %2188, label %1636

; <label>:1636                                    ; preds = %1627
  %1637 = and i32 %1630, 262144
  %1638 = icmp ne i32 %1637, 0
  %1639 = select i1 %1638, float %68, float 1.000000e+00
  %1640 = select i1 %1638, float %69, float 0.000000e+00
  %1641 = select i1 %1638, float %70, float 0.000000e+00
  %1642 = select i1 %1638, float %71, float 1.000000e+00
  %1643 = select i1 %1638, float %72, float %95
  %1644 = select i1 %1638, float %73, float %96
  %1645 = add i32 %62, 316
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = lshr i32 %1647, 16
  %1649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1648)  ; LegacyF16ToF32(value)
  %1650 = fmul fast float %1649, 0x3F50624DE0000000
  %1651 = add i32 %62, 120
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = lshr i32 %1653, 16
  %1655 = and i32 %1654, 255
  %1656 = lshr i32 %1653, 24
  %1657 = add i32 %62, 324
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1657, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 65535
  %1661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1660)  ; LegacyF16ToF32(value)
  %1662 = lshr i32 %1659, 16
  %1663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1662)  ; LegacyF16ToF32(value)
  %1664 = add i32 %62, 64
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = lshr i32 %1666, 22
  %1668 = shl nuw nsw i32 %1667, 5
  %1669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1668)  ; LegacyF16ToF32(value)
  %1670 = shl i32 %1666, 4
  %1671 = and i32 %1670, 32752
  %1672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1671)  ; LegacyF16ToF32(value)
  %1673 = lshr i32 %1666, 7
  %1674 = and i32 %1673, 32752
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1677 = extractvalue %dx.types.CBufRet.f32 %1676, 3
  %1678 = fmul fast float %1677, 1.000000e+03
  %1679 = fmul fast float %1678, %447
  %1680 = call float @dx.op.unary.f32(i32 22, float %1679)  ; Frc(value)
  %1681 = fadd fast float %1680, %435
  %1682 = fmul fast float %1678, %449
  %1683 = call float @dx.op.unary.f32(i32 22, float %1682)  ; Frc(value)
  %1684 = fadd fast float %1683, %436
  %1685 = fmul fast float %1650, %1678
  %1686 = call float @dx.op.unary.f32(i32 22, float %1685)  ; Frc(value)
  %1687 = fmul fast float %1686, 0x401921FB60000000
  %1688 = fadd fast float %1687, %1669
  %1689 = call float @dx.op.unary.f32(i32 13, float %1688)  ; Sin(value)
  %1690 = call float @dx.op.unary.f32(i32 12, float %1688)  ; Cos(value)
  %1691 = fsub fast float -0.000000e+00, %1689
  %1692 = fadd fast float %1643, -5.000000e-01
  %1693 = fadd fast float %1644, -5.000000e-01
  %1694 = fmul fast float %1661, %1692
  %1695 = fmul fast float %1663, %1693
  %1696 = fadd fast float %1694, 5.000000e-01
  %1697 = fadd fast float %1695, 5.000000e-01
  %1698 = fmul fast float %1672, %1696
  %1699 = fmul fast float %1675, %1697
  %1700 = fmul fast float %1690, %1698
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1691, float %1699, float %1700)  ; FMad(a,b,c)
  %1702 = fmul fast float %1689, %1698
  %1703 = call float @dx.op.tertiary.f32(i32 46, float %1690, float %1699, float %1702)  ; FMad(a,b,c)
  %1704 = fadd fast float %1681, %1701
  %1705 = fadd fast float %1684, %1703
  %1706 = icmp ugt i32 %1655, 1
  %1707 = icmp ugt i32 %1653, 33554431
  %1708 = or i1 %1707, %1706
  br i1 %1708, label %1709, label %1734

; <label>:1709                                    ; preds = %1636
  %1710 = add i32 %62, 260
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = lshr i32 %1712, 16
  %1714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1713)  ; LegacyF16ToF32(value)
  %1715 = fmul fast float %1677, %1714
  %1716 = call float @dx.op.unary.f32(i32 22, float %1715)  ; Frc(value)
  %1717 = mul nuw nsw i32 %1655, %1656
  %1718 = uitofp i32 %1717 to float
  %1719 = fmul fast float %1716, %1718
  %1720 = call float @dx.op.unary.f32(i32 27, float %1719)  ; Round_ni(value)
  %1721 = fptoui float %1720 to i32
  %1722 = urem i32 %1721, %1655
  %1723 = udiv i32 %1721, %1656
  %1724 = call float @dx.op.unary.f32(i32 22, float %1704)  ; Frc(value)
  %1725 = call float @dx.op.unary.f32(i32 22, float %1705)  ; Frc(value)
  %1726 = uitofp i32 %1722 to float
  %1727 = uitofp i32 %1723 to float
  %1728 = fadd fast float %1724, %1726
  %1729 = fadd fast float %1725, %1727
  %1730 = uitofp i32 %1655 to float
  %1731 = uitofp i32 %1656 to float
  %1732 = fdiv fast float %1728, %1730
  %1733 = fdiv fast float %1729, %1731
  br label %1734

; <label>:1734                                    ; preds = %1709, %1636
  %1735 = phi float [ %1732, %1709 ], [ %1704, %1636 ]
  %1736 = phi float [ %1733, %1709 ], [ %1705, %1636 ]
  %1737 = and i32 %1630, 256
  %1738 = icmp eq i32 %1737, 0
  br i1 %1738, label %1785, label %1739

; <label>:1739                                    ; preds = %1734
  %1740 = add i32 %62, 448
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = add i32 %1742, 0
  %1744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1744, %dx.types.Handle %114, float %1735, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1746 = extractvalue %dx.types.ResRet.f32 %1745, 0
  %1747 = add i32 %62, 132
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = shl i32 %1749, 4
  %1751 = and i32 %1750, 32752
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = lshr i32 %1749, 7
  %1754 = and i32 %1753, 32752
  %1755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1754)  ; LegacyF16ToF32(value)
  %1756 = fsub fast float 1.000000e+00, %580
  %1757 = call float @dx.op.binary.f32(i32 35, float %1756, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1758 = bitcast float %580 to i32
  %1759 = sitofp i32 %1758 to float
  %1760 = fadd fast float %1759, 0xC1CFBF8940000000
  %1761 = fmul fast float %1755, %1760
  %1762 = fadd fast float %1761, 0x41CFBF8940000000
  %1763 = fptosi float %1762 to i32
  %1764 = bitcast i32 %1763 to float
  %1765 = bitcast float %1757 to i32
  %1766 = sitofp i32 %1765 to float
  %1767 = fadd fast float %1766, 0xC1CFBF8940000000
  %1768 = fmul fast float %1767, %1755
  %1769 = fadd fast float %1768, 0x41CFBF8940000000
  %1770 = fptosi float %1769 to i32
  %1771 = bitcast i32 %1770 to float
  %1772 = fmul fast float %1764, %1752
  %1773 = fmul fast float %1771, %1752
  %1774 = fsub fast float %1757, %1772
  %1775 = fadd fast float %1773, %1757
  %1776 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  %1777 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1778 = fsub fast float %1746, %1776
  %1779 = fsub fast float %1777, %1776
  %1780 = bitcast float %1779 to i32
  %1781 = sub nsw i32 2129859010, %1780
  %1782 = bitcast i32 %1781 to float
  %1783 = fmul fast float %1782, %1778
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  br label %1785

; <label>:1785                                    ; preds = %1739, %1734
  %1786 = phi float [ %1784, %1739 ], [ %580, %1734 ]
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = and i32 %1788, 128
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1807, label %1791

; <label>:1791                                    ; preds = %1785
  %1792 = add i32 %62, 432
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %1794, 0
  %1796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1796, %dx.types.Handle %114, float %1735, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 524288
  %1802 = icmp ne i32 %1801, 0
  %1803 = fcmp fast ogt float %1798, 0x3FE0101020000000
  %1804 = select i1 %1803, float 1.000000e+00, float 0.000000e+00
  %1805 = select i1 %1802, float %1804, float %1798
  %1806 = fmul fast float %1805, %1786
  br label %1807

; <label>:1807                                    ; preds = %1791, %1785
  %1808 = phi float [ %1806, %1791 ], [ %1786, %1785 ]
  %1809 = fcmp fast ult float %1808, 0x3F70101020000000
  br i1 %1809, label %2188, label %1810

; <label>:1810                                    ; preds = %1807
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 16
  %1814 = icmp eq i32 %1813, 0
  br i1 %1814, label %1990, label %1815

; <label>:1815                                    ; preds = %1810
  %1816 = add i32 %62, 384
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = add i32 %1818, 0
  %1820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1820, %dx.types.Handle %113, float %1735, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.ResRet.f32 %1821, 1
  %1824 = extractvalue %dx.types.ResRet.f32 %1821, 2
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 512
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1837, label %1829

; <label>:1829                                    ; preds = %1815
  %1830 = add i32 %62, 464
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %1832, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1834, %dx.types.Handle %114, float %1735, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1836 = extractvalue %dx.types.ResRet.f32 %1835, 0
  br label %1837

; <label>:1837                                    ; preds = %1829, %1815
  %1838 = phi float [ %1836, %1829 ], [ 1.000000e+00, %1815 ]
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 33554432
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1937, label %1843

; <label>:1843                                    ; preds = %1837
  %1844 = add i32 %62, 256
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 65535
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = lshr i32 %1846, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = add i32 %62, 260
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %1853, 65535
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 255
  %1859 = uitofp i32 %1858 to float
  %1860 = fmul fast float %1859, 0x3F70101020000000
  %1861 = lshr i32 %1857, 8
  %1862 = and i32 %1861, 255
  %1863 = uitofp i32 %1862 to float
  %1864 = fmul fast float %1863, 0x3F70101020000000
  %1865 = lshr i32 %1857, 16
  %1866 = and i32 %1865, 255
  %1867 = uitofp i32 %1866 to float
  %1868 = fmul fast float %1867, 0x3F70101020000000
  %1869 = add i32 %62, 252
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 255
  %1873 = uitofp i32 %1872 to float
  %1874 = fmul fast float %1873, 0x3F70101020000000
  %1875 = lshr i32 %1871, 8
  %1876 = and i32 %1875, 255
  %1877 = uitofp i32 %1876 to float
  %1878 = fmul fast float %1877, 0x3F70101020000000
  %1879 = lshr i32 %1871, 16
  %1880 = and i32 %1879, 255
  %1881 = uitofp i32 %1880 to float
  %1882 = fmul fast float %1881, 0x3F70101020000000
  %1883 = bitcast float %1822 to i32
  %1884 = ashr i32 %1883, 1
  %1885 = sub nsw i32 1597463174, %1884
  %1886 = bitcast i32 %1885 to float
  %1887 = fmul fast float %1822, 5.000000e-01
  %1888 = fmul fast float %1886, %1886
  %1889 = fmul fast float %1888, %1887
  %1890 = fsub fast float 1.500000e+00, %1889
  %1891 = fmul fast float %1886, %1822
  %1892 = fmul fast float %1891, %1890
  %1893 = bitcast float %1823 to i32
  %1894 = ashr i32 %1893, 1
  %1895 = sub nsw i32 1597463174, %1894
  %1896 = bitcast i32 %1895 to float
  %1897 = fmul fast float %1823, 5.000000e-01
  %1898 = fmul fast float %1896, %1896
  %1899 = fmul fast float %1898, %1897
  %1900 = fsub fast float 1.500000e+00, %1899
  %1901 = fmul fast float %1896, %1823
  %1902 = fmul fast float %1901, %1900
  %1903 = bitcast float %1824 to i32
  %1904 = ashr i32 %1903, 1
  %1905 = sub nsw i32 1597463174, %1904
  %1906 = bitcast i32 %1905 to float
  %1907 = fmul fast float %1824, 5.000000e-01
  %1908 = fmul fast float %1906, %1906
  %1909 = fmul fast float %1908, %1907
  %1910 = fsub fast float 1.500000e+00, %1909
  %1911 = fmul fast float %1906, %1824
  %1912 = fmul fast float %1911, %1910
  %1913 = fsub fast float %1892, %1874
  %1914 = fsub fast float %1902, %1878
  %1915 = fsub fast float %1912, %1882
  %1916 = fmul fast float %1913, %1848
  %1917 = fmul fast float %1914, %1850
  %1918 = fmul fast float %1915, %1855
  %1919 = fadd fast float %1916, %1860
  %1920 = fadd fast float %1917, %1864
  %1921 = fadd fast float %1918, %1868
  %1922 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1923 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1924 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1925 = fmul fast float %1922, %1922
  %1926 = fmul fast float %1923, %1923
  %1927 = fmul fast float %1924, %1924
  %1928 = fsub fast float %1925, %1822
  %1929 = fsub fast float %1926, %1823
  %1930 = fsub fast float %1927, %1824
  %1931 = fmul fast float %1928, %1838
  %1932 = fmul fast float %1929, %1838
  %1933 = fmul fast float %1930, %1838
  %1934 = fadd fast float %1931, %1822
  %1935 = fadd fast float %1932, %1823
  %1936 = fadd fast float %1933, %1824
  br label %1990

; <label>:1937                                    ; preds = %1837
  %1938 = and i32 %1840, 134217728
  %1939 = icmp eq i32 %1938, 0
  br i1 %1939, label %1974, label %1940

; <label>:1940                                    ; preds = %1937
  %1941 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %1942 = call float @dx.op.unary.f32(i32 24, float %424)  ; Sqrt(value)
  %1943 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %1944 = fadd fast float %1941, -5.000000e-01
  %1945 = fadd fast float %1942, -5.000000e-01
  %1946 = fadd fast float %1943, -5.000000e-01
  %1947 = fmul fast float %1944, %1838
  %1948 = fmul fast float %1945, %1838
  %1949 = fmul fast float %1946, %1838
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fadd fast float %1948, 5.000000e-01
  %1952 = fadd fast float %1949, 5.000000e-01
  %1953 = call float @dx.op.unary.f32(i32 24, float %1822)  ; Sqrt(value)
  %1954 = call float @dx.op.unary.f32(i32 24, float %1823)  ; Sqrt(value)
  %1955 = call float @dx.op.unary.f32(i32 24, float %1824)  ; Sqrt(value)
  %1956 = fmul fast float %1950, 2.000000e+00
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = fmul fast float %1957, %1953
  %1959 = fadd fast float %1958, %1956
  %1960 = fmul fast float %1959, %1953
  %1961 = fmul fast float %1951, 2.000000e+00
  %1962 = fsub fast float 1.000000e+00, %1961
  %1963 = fmul fast float %1962, %1954
  %1964 = fadd fast float %1963, %1961
  %1965 = fmul fast float %1964, %1954
  %1966 = fmul fast float %1952, 2.000000e+00
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = fmul fast float %1967, %1955
  %1969 = fadd fast float %1968, %1966
  %1970 = fmul fast float %1969, %1955
  %1971 = fmul fast float %1960, %1960
  %1972 = fmul fast float %1965, %1965
  %1973 = fmul fast float %1970, %1970
  br label %1990

; <label>:1974                                    ; preds = %1937
  %1975 = fmul fast float %423, %423
  %1976 = fmul fast float %424, %424
  %1977 = fmul fast float %425, %425
  %1978 = fadd fast float %1975, -1.000000e+00
  %1979 = fadd fast float %1976, -1.000000e+00
  %1980 = fadd fast float %1977, -1.000000e+00
  %1981 = fmul fast float %1838, %1978
  %1982 = fmul fast float %1838, %1979
  %1983 = fmul fast float %1838, %1980
  %1984 = fadd fast float %1981, 1.000000e+00
  %1985 = fadd fast float %1982, 1.000000e+00
  %1986 = fadd fast float %1983, 1.000000e+00
  %1987 = fmul fast float %1984, %1822
  %1988 = fmul fast float %1985, %1823
  %1989 = fmul fast float %1986, %1824
  br label %1990

; <label>:1990                                    ; preds = %1974, %1940, %1843, %1810
  %1991 = phi float [ %1934, %1843 ], [ %1971, %1940 ], [ %1987, %1974 ], [ 1.000000e+00, %1810 ]
  %1992 = phi float [ %1935, %1843 ], [ %1972, %1940 ], [ %1988, %1974 ], [ 1.000000e+00, %1810 ]
  %1993 = phi float [ %1936, %1843 ], [ %1973, %1940 ], [ %1989, %1974 ], [ 1.000000e+00, %1810 ]
  %1994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.i32 %1994, 1
  %1996 = and i32 %1995, 1
  %1997 = icmp ne i32 %1996, 0
  %1998 = add i32 %62, 356
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %2000, 32
  %2002 = icmp ne i32 %2001, 0
  %2003 = and i1 %1997, %2002
  %2004 = select i1 %2003, float 1.000000e+00, float %1991
  %2005 = select i1 %2003, float 0x3FD3333340000000, float %1992
  %2006 = select i1 %2003, float 0x3FD3333340000000, float %1993
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = and i32 %2008, 32
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2083, label %2011

; <label>:2011                                    ; preds = %1990
  %2012 = add i32 %62, 124
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = add i32 %62, 400
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = add i32 %2017, 0
  %2019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2020 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2019, %dx.types.Handle %113, float %1735, float %1736, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2021 = extractvalue %dx.types.ResRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.ResRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.ResRet.f32 %2020, 2
  %2024 = extractvalue %dx.types.ResRet.f32 %2020, 3
  %2025 = and i32 %2014, 255
  %2026 = uitofp i32 %2025 to float
  %2027 = lshr i32 %2014, 8
  %2028 = and i32 %2027, 255
  %2029 = uitofp i32 %2028 to float
  %2030 = lshr i32 %2014, 16
  %2031 = and i32 %2030, 255
  %2032 = uitofp i32 %2031 to float
  %2033 = fmul fast float %2032, 0x3F70101000000000
  %2034 = fmul fast float %2021, %2026
  %2035 = fadd fast float %2034, %2029
  %2036 = fmul fast float %2035, 0x3F70101000000000
  %2037 = fadd fast float %2022, -5.000000e-01
  %2038 = fadd fast float %2024, -5.000000e-01
  %2039 = fmul fast float %2037, %2033
  %2040 = fmul fast float %2038, %2033
  %2041 = fadd fast float %2039, 5.000000e-01
  %2042 = fadd fast float %2040, 5.000000e-01
  %2043 = fmul fast float %2041, 2.000000e+00
  %2044 = fadd fast float %2043, -1.000000e+00
  %2045 = fmul fast float %2042, 2.000000e+00
  %2046 = fadd fast float %2045, -1.000000e+00
  %2047 = fadd fast float %2044, %2046
  %2048 = fmul fast float %2047, 5.000000e-01
  %2049 = fsub fast float %2044, %2046
  %2050 = fmul fast float %2049, 5.000000e-01
  %2051 = call float @dx.op.unary.f32(i32 6, float %2048)  ; FAbs(value)
  %2052 = fsub fast float 1.000000e+00, %2051
  %2053 = call float @dx.op.unary.f32(i32 6, float %2050)  ; FAbs(value)
  %2054 = fsub fast float %2052, %2053
  %2055 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2050, float %2054, float %2048, float %2050, float %2054)  ; Dot3(ax,ay,az,bx,by,bz)
  %2056 = call float @dx.op.unary.f32(i32 25, float %2055)  ; Rsqrt(value)
  %2057 = fmul fast float %2048, %2056
  %2058 = fmul fast float %2050, %2056
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 67108864
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2079, label %2063

; <label>:2063                                    ; preds = %2011
  %2064 = add i32 %62, 312
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = and i32 %2066, 65535
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = lshr i32 %2066, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = fsub fast float %2036, %2074
  %2076 = fmul fast float %2075, %2068
  %2077 = fadd fast float %2076, %2072
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  br label %2079

; <label>:2079                                    ; preds = %2063, %2011
  %2080 = phi float [ %2078, %2063 ], [ %2036, %2011 ]
  %2081 = call float @dx.op.dot2.f32(i32 54, float %2057, float %2058, float %1639, float %1640)  ; Dot2(ax,ay,bx,by)
  %2082 = call float @dx.op.dot2.f32(i32 54, float %2057, float %2058, float %1641, float %1642)  ; Dot2(ax,ay,bx,by)
  br label %2083

; <label>:2083                                    ; preds = %2079, %1990
  %2084 = phi float [ %2080, %2079 ], [ 0x3FD6666660000000, %1990 ]
  %2085 = phi float [ %2081, %2079 ], [ 0.000000e+00, %1990 ]
  %2086 = phi float [ %2082, %2079 ], [ 0.000000e+00, %1990 ]
  %2087 = phi float [ %2023, %2079 ], [ 1.000000e+00, %1990 ]
  %2088 = add i32 %62, 128
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %2092, 3
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2095, label %2112

; <label>:2095                                    ; preds = %2083
  %2096 = lshr i32 %2090, 8
  %2097 = and i32 %2096, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = call float @dx.op.dot3.f32(i32 55, float %2004, float %2005, float %2006, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = fmul fast float %2098, %2099
  %2101 = and i32 %2090, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fadd fast float %2100, %2102
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = and i32 %2092, 16
  %2107 = icmp ne i32 %2106, 0
  %2108 = select i1 %2107, float %1808, float 0.000000e+00
  %2109 = fsub fast float %2105, %1626
  %2110 = fmul fast float %2108, %2109
  %2111 = fadd fast float %2110, %1626
  br label %2112

; <label>:2112                                    ; preds = %2095, %2083
  %2113 = phi float [ %1626, %2083 ], [ %2111, %2095 ]
  %2114 = and i32 %2092, 12
  %2115 = icmp eq i32 %2114, 12
  br i1 %2115, label %2188, label %2116

; <label>:2116                                    ; preds = %2112
  %2117 = and i32 %2092, 2097184
  %2118 = icmp eq i32 %2117, 2097184
  %2119 = select i1 %2118, float %1808, float 0.000000e+00
  %2120 = and i32 %2092, 4194336
  %2121 = icmp eq i32 %2120, 4194336
  %2122 = select i1 %2121, float %1808, float 0.000000e+00
  %2123 = and i32 %2092, 8388640
  %2124 = icmp eq i32 %2123, 8388640
  %2125 = select i1 %2124, float %1808, float 0.000000e+00
  %2126 = icmp eq i32 %2114, 0
  br i1 %2126, label %2127, label %2140

; <label>:2127                                    ; preds = %2116
  %2128 = fsub fast float %2085, %1622
  %2129 = fsub fast float %2086, %1623
  %2130 = fmul fast float %2119, %2128
  %2131 = fmul fast float %2119, %2129
  %2132 = fadd fast float %2130, %1622
  %2133 = fadd fast float %2131, %1623
  %2134 = fsub fast float %2087, %1625
  %2135 = fmul fast float %2122, %2134
  %2136 = fadd fast float %2135, %1625
  %2137 = fsub fast float %2084, %1624
  %2138 = fmul fast float %2125, %2137
  %2139 = fadd fast float %2138, %1624
  br label %2188

; <label>:2140                                    ; preds = %2116
  %2141 = icmp eq i32 %2114, 4
  br i1 %2141, label %2142, label %2174

; <label>:2142                                    ; preds = %2140
  %2143 = fmul fast float %2119, %2085
  %2144 = fmul fast float %2119, %2086
  %2145 = fadd fast float %2143, %1622
  %2146 = fadd fast float %2144, %1623
  %2147 = call float @dx.op.binary.f32(i32 36, float %1625, float %2087)  ; FMin(a,b)
  %2148 = fsub fast float %2147, %1625
  %2149 = fmul fast float %2148, %2122
  %2150 = fadd fast float %2149, %1625
  %2151 = fadd fast float %2084, %1624
  %2152 = fmul fast float %2151, 0x3FF337FAE0000000
  %2153 = fmul fast float %1624, %1624
  %2154 = fmul fast float %2084, %2084
  %2155 = fadd fast float %2154, %2153
  %2156 = fmul fast float %2155, 0x3FE5152B00000000
  %2157 = fmul fast float %1624, 0xBFCC1F85E0000000
  %2158 = fmul fast float %2157, %2084
  %2159 = fadd fast float %2158, 0xBFE1363700000000
  %2160 = fadd fast float %2159, %2152
  %2161 = fsub fast float %2160, %2156
  %2162 = fmul fast float %2151, 0x3FBA6F0D00000000
  %2163 = fmul fast float %2155, 0x3FD0432880000000
  %2164 = fmul fast float %1624, 0xBFEF110800000000
  %2165 = fmul fast float %2164, %2084
  %2166 = fadd fast float %2165, 1.000000e+00
  %2167 = fsub fast float %2166, %2162
  %2168 = fadd fast float %2167, %2163
  %2169 = fdiv fast float %2161, %2168
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fsub fast float %2170, %1624
  %2172 = fmul fast float %2171, %2125
  %2173 = fadd fast float %2172, %1624
  br label %2188

; <label>:2174                                    ; preds = %2140
  %2175 = icmp eq i32 %2114, 8
  br i1 %2175, label %2176, label %2188

; <label>:2176                                    ; preds = %2174
  %2177 = fmul fast float %2119, %2085
  %2178 = fmul fast float %2119, %2086
  %2179 = fadd fast float %2177, %1622
  %2180 = fadd fast float %2178, %1623
  %2181 = call float @dx.op.binary.f32(i32 36, float %1625, float %2087)  ; FMin(a,b)
  %2182 = fsub fast float %2181, %1625
  %2183 = fmul fast float %2182, %2122
  %2184 = fadd fast float %2183, %1625
  %2185 = fsub fast float %2084, %1624
  %2186 = fmul fast float %2125, %2185
  %2187 = fadd fast float %2186, %1624
  br label %2188

; <label>:2188                                    ; preds = %2176, %2174, %2142, %2127, %2112, %1807, %1627, %1621
  %2189 = phi float [ %1622, %2112 ], [ %1622, %1807 ], [ %1622, %1621 ], [ %2179, %2176 ], [ %1622, %2174 ], [ %2145, %2142 ], [ %2132, %2127 ], [ %1622, %1627 ]
  %2190 = phi float [ %1623, %2112 ], [ %1623, %1807 ], [ %1623, %1621 ], [ %2180, %2176 ], [ %1623, %2174 ], [ %2146, %2142 ], [ %2133, %2127 ], [ %1623, %1627 ]
  %2191 = phi float [ %1624, %2112 ], [ %1624, %1807 ], [ %1624, %1621 ], [ %2187, %2176 ], [ %1624, %2174 ], [ %2173, %2142 ], [ %2139, %2127 ], [ %1624, %1627 ]
  %2192 = phi float [ %1625, %2112 ], [ %1625, %1807 ], [ %1625, %1621 ], [ %2184, %2176 ], [ %1625, %2174 ], [ %2150, %2142 ], [ %2136, %2127 ], [ %1625, %1627 ]
  %2193 = phi float [ %2113, %2112 ], [ %1626, %1807 ], [ %1626, %1621 ], [ %2113, %2176 ], [ %2113, %2174 ], [ %2113, %2142 ], [ %2113, %2127 ], [ %1626, %1627 ]
  br i1 %530, label %2755, label %2194

; <label>:2194                                    ; preds = %2188
  %2195 = add i32 %62, 72
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %62, 76
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = or i32 %2200, %2197
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2755, label %2203

; <label>:2203                                    ; preds = %2194
  %2204 = and i32 %2197, 262144
  %2205 = icmp ne i32 %2204, 0
  %2206 = select i1 %2205, float %68, float 1.000000e+00
  %2207 = select i1 %2205, float %69, float 0.000000e+00
  %2208 = select i1 %2205, float %70, float 0.000000e+00
  %2209 = select i1 %2205, float %71, float 1.000000e+00
  %2210 = select i1 %2205, float %72, float %95
  %2211 = select i1 %2205, float %73, float %96
  %2212 = add i32 %62, 332
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = lshr i32 %2214, 16
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = fmul fast float %2216, 0x3F50624DE0000000
  %2218 = add i32 %62, 136
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = lshr i32 %2220, 16
  %2222 = and i32 %2221, 255
  %2223 = lshr i32 %2220, 24
  %2224 = add i32 %62, 340
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 65535
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = lshr i32 %2226, 16
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = add i32 %62, 80
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = lshr i32 %2233, 22
  %2235 = shl nuw nsw i32 %2234, 5
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = shl i32 %2233, 4
  %2238 = and i32 %2237, 32752
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = lshr i32 %2233, 7
  %2241 = and i32 %2240, 32752
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 3
  %2245 = fmul fast float %2244, 1.000000e+03
  %2246 = fmul fast float %2245, %519
  %2247 = call float @dx.op.unary.f32(i32 22, float %2246)  ; Frc(value)
  %2248 = fadd fast float %2247, %507
  %2249 = fmul fast float %2245, %521
  %2250 = call float @dx.op.unary.f32(i32 22, float %2249)  ; Frc(value)
  %2251 = fadd fast float %2250, %508
  %2252 = fmul fast float %2217, %2245
  %2253 = call float @dx.op.unary.f32(i32 22, float %2252)  ; Frc(value)
  %2254 = fmul fast float %2253, 0x401921FB60000000
  %2255 = fadd fast float %2254, %2236
  %2256 = call float @dx.op.unary.f32(i32 13, float %2255)  ; Sin(value)
  %2257 = call float @dx.op.unary.f32(i32 12, float %2255)  ; Cos(value)
  %2258 = fsub fast float -0.000000e+00, %2256
  %2259 = fadd fast float %2210, -5.000000e-01
  %2260 = fadd fast float %2211, -5.000000e-01
  %2261 = fmul fast float %2228, %2259
  %2262 = fmul fast float %2230, %2260
  %2263 = fadd fast float %2261, 5.000000e-01
  %2264 = fadd fast float %2262, 5.000000e-01
  %2265 = fmul fast float %2239, %2263
  %2266 = fmul fast float %2242, %2264
  %2267 = fmul fast float %2257, %2265
  %2268 = call float @dx.op.tertiary.f32(i32 46, float %2258, float %2266, float %2267)  ; FMad(a,b,c)
  %2269 = fmul fast float %2256, %2265
  %2270 = call float @dx.op.tertiary.f32(i32 46, float %2257, float %2266, float %2269)  ; FMad(a,b,c)
  %2271 = fadd fast float %2248, %2268
  %2272 = fadd fast float %2251, %2270
  %2273 = icmp ugt i32 %2222, 1
  %2274 = icmp ugt i32 %2220, 33554431
  %2275 = or i1 %2274, %2273
  br i1 %2275, label %2276, label %2301

; <label>:2276                                    ; preds = %2203
  %2277 = add i32 %62, 276
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2277, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = lshr i32 %2279, 16
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = fmul fast float %2244, %2281
  %2283 = call float @dx.op.unary.f32(i32 22, float %2282)  ; Frc(value)
  %2284 = mul nuw nsw i32 %2222, %2223
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2283, %2285
  %2287 = call float @dx.op.unary.f32(i32 27, float %2286)  ; Round_ni(value)
  %2288 = fptoui float %2287 to i32
  %2289 = urem i32 %2288, %2222
  %2290 = udiv i32 %2288, %2223
  %2291 = call float @dx.op.unary.f32(i32 22, float %2271)  ; Frc(value)
  %2292 = call float @dx.op.unary.f32(i32 22, float %2272)  ; Frc(value)
  %2293 = uitofp i32 %2289 to float
  %2294 = uitofp i32 %2290 to float
  %2295 = fadd fast float %2291, %2293
  %2296 = fadd fast float %2292, %2294
  %2297 = uitofp i32 %2222 to float
  %2298 = uitofp i32 %2223 to float
  %2299 = fdiv fast float %2295, %2297
  %2300 = fdiv fast float %2296, %2298
  br label %2301

; <label>:2301                                    ; preds = %2276, %2203
  %2302 = phi float [ %2299, %2276 ], [ %2271, %2203 ]
  %2303 = phi float [ %2300, %2276 ], [ %2272, %2203 ]
  %2304 = and i32 %2197, 256
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2352, label %2306

; <label>:2306                                    ; preds = %2301
  %2307 = add i32 %62, 452
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = add i32 %2309, 0
  %2311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2311, %dx.types.Handle %114, float %2302, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = add i32 %62, 148
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = shl i32 %2316, 4
  %2318 = and i32 %2317, 32752
  %2319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2318)  ; LegacyF16ToF32(value)
  %2320 = lshr i32 %2316, 7
  %2321 = and i32 %2320, 32752
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = fsub fast float 1.000000e+00, %579
  %2324 = call float @dx.op.binary.f32(i32 35, float %2323, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2325 = bitcast float %579 to i32
  %2326 = sitofp i32 %2325 to float
  %2327 = fadd fast float %2326, 0xC1CFBF8940000000
  %2328 = fmul fast float %2322, %2327
  %2329 = fadd fast float %2328, 0x41CFBF8940000000
  %2330 = fptosi float %2329 to i32
  %2331 = bitcast i32 %2330 to float
  %2332 = bitcast float %2324 to i32
  %2333 = sitofp i32 %2332 to float
  %2334 = fadd fast float %2333, 0xC1CFBF8940000000
  %2335 = fmul fast float %2334, %2322
  %2336 = fadd fast float %2335, 0x41CFBF8940000000
  %2337 = fptosi float %2336 to i32
  %2338 = bitcast i32 %2337 to float
  %2339 = fmul fast float %2331, %2319
  %2340 = fmul fast float %2338, %2319
  %2341 = fsub fast float %2324, %2339
  %2342 = fadd fast float %2340, %2324
  %2343 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  %2344 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  %2345 = fsub fast float %2313, %2343
  %2346 = fsub fast float %2344, %2343
  %2347 = bitcast float %2346 to i32
  %2348 = sub nsw i32 2129859010, %2347
  %2349 = bitcast i32 %2348 to float
  %2350 = fmul fast float %2349, %2345
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br label %2352

; <label>:2352                                    ; preds = %2306, %2301
  %2353 = phi float [ %2351, %2306 ], [ %579, %2301 ]
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 128
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2374, label %2358

; <label>:2358                                    ; preds = %2352
  %2359 = add i32 %62, 436
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %2361, 0
  %2363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2363, %dx.types.Handle %114, float %2302, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 524288
  %2369 = icmp ne i32 %2368, 0
  %2370 = fcmp fast ogt float %2365, 0x3FE0101020000000
  %2371 = select i1 %2370, float 1.000000e+00, float 0.000000e+00
  %2372 = select i1 %2369, float %2371, float %2365
  %2373 = fmul fast float %2372, %2353
  br label %2374

; <label>:2374                                    ; preds = %2358, %2352
  %2375 = phi float [ %2373, %2358 ], [ %2353, %2352 ]
  %2376 = fcmp fast ult float %2375, 0x3F70101020000000
  br i1 %2376, label %2755, label %2377

; <label>:2377                                    ; preds = %2374
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 16
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2557, label %2382

; <label>:2382                                    ; preds = %2377
  %2383 = add i32 %62, 388
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = add i32 %2385, 0
  %2387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2387, %dx.types.Handle %113, float %2302, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 0
  %2390 = extractvalue %dx.types.ResRet.f32 %2388, 1
  %2391 = extractvalue %dx.types.ResRet.f32 %2388, 2
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 512
  %2395 = icmp eq i32 %2394, 0
  br i1 %2395, label %2404, label %2396

; <label>:2396                                    ; preds = %2382
  %2397 = add i32 %62, 468
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = add i32 %2399, 0
  %2401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2401, %dx.types.Handle %114, float %2302, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2403 = extractvalue %dx.types.ResRet.f32 %2402, 0
  br label %2404

; <label>:2404                                    ; preds = %2396, %2382
  %2405 = phi float [ %2403, %2396 ], [ 1.000000e+00, %2382 ]
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 33554432
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2504, label %2410

; <label>:2410                                    ; preds = %2404
  %2411 = add i32 %62, 272
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = lshr i32 %2413, 16
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = add i32 %62, 276
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 65535
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = lshr i32 %2424, 8
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = lshr i32 %2424, 16
  %2433 = and i32 %2432, 255
  %2434 = uitofp i32 %2433 to float
  %2435 = fmul fast float %2434, 0x3F70101020000000
  %2436 = add i32 %62, 268
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 255
  %2440 = uitofp i32 %2439 to float
  %2441 = fmul fast float %2440, 0x3F70101020000000
  %2442 = lshr i32 %2438, 8
  %2443 = and i32 %2442, 255
  %2444 = uitofp i32 %2443 to float
  %2445 = fmul fast float %2444, 0x3F70101020000000
  %2446 = lshr i32 %2438, 16
  %2447 = and i32 %2446, 255
  %2448 = uitofp i32 %2447 to float
  %2449 = fmul fast float %2448, 0x3F70101020000000
  %2450 = bitcast float %2389 to i32
  %2451 = ashr i32 %2450, 1
  %2452 = sub nsw i32 1597463174, %2451
  %2453 = bitcast i32 %2452 to float
  %2454 = fmul fast float %2389, 5.000000e-01
  %2455 = fmul fast float %2453, %2453
  %2456 = fmul fast float %2455, %2454
  %2457 = fsub fast float 1.500000e+00, %2456
  %2458 = fmul fast float %2453, %2389
  %2459 = fmul fast float %2458, %2457
  %2460 = bitcast float %2390 to i32
  %2461 = ashr i32 %2460, 1
  %2462 = sub nsw i32 1597463174, %2461
  %2463 = bitcast i32 %2462 to float
  %2464 = fmul fast float %2390, 5.000000e-01
  %2465 = fmul fast float %2463, %2463
  %2466 = fmul fast float %2465, %2464
  %2467 = fsub fast float 1.500000e+00, %2466
  %2468 = fmul fast float %2463, %2390
  %2469 = fmul fast float %2468, %2467
  %2470 = bitcast float %2391 to i32
  %2471 = ashr i32 %2470, 1
  %2472 = sub nsw i32 1597463174, %2471
  %2473 = bitcast i32 %2472 to float
  %2474 = fmul fast float %2391, 5.000000e-01
  %2475 = fmul fast float %2473, %2473
  %2476 = fmul fast float %2475, %2474
  %2477 = fsub fast float 1.500000e+00, %2476
  %2478 = fmul fast float %2473, %2391
  %2479 = fmul fast float %2478, %2477
  %2480 = fsub fast float %2459, %2441
  %2481 = fsub fast float %2469, %2445
  %2482 = fsub fast float %2479, %2449
  %2483 = fmul fast float %2480, %2415
  %2484 = fmul fast float %2481, %2417
  %2485 = fmul fast float %2482, %2422
  %2486 = fadd fast float %2483, %2427
  %2487 = fadd fast float %2484, %2431
  %2488 = fadd fast float %2485, %2435
  %2489 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2491 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2492 = fmul fast float %2489, %2489
  %2493 = fmul fast float %2490, %2490
  %2494 = fmul fast float %2491, %2491
  %2495 = fsub fast float %2492, %2389
  %2496 = fsub fast float %2493, %2390
  %2497 = fsub fast float %2494, %2391
  %2498 = fmul fast float %2495, %2405
  %2499 = fmul fast float %2496, %2405
  %2500 = fmul fast float %2497, %2405
  %2501 = fadd fast float %2498, %2389
  %2502 = fadd fast float %2499, %2390
  %2503 = fadd fast float %2500, %2391
  br label %2557

; <label>:2504                                    ; preds = %2404
  %2505 = and i32 %2407, 134217728
  %2506 = icmp eq i32 %2505, 0
  br i1 %2506, label %2541, label %2507

; <label>:2507                                    ; preds = %2504
  %2508 = call float @dx.op.unary.f32(i32 24, float %495)  ; Sqrt(value)
  %2509 = call float @dx.op.unary.f32(i32 24, float %496)  ; Sqrt(value)
  %2510 = call float @dx.op.unary.f32(i32 24, float %497)  ; Sqrt(value)
  %2511 = fadd fast float %2508, -5.000000e-01
  %2512 = fadd fast float %2509, -5.000000e-01
  %2513 = fadd fast float %2510, -5.000000e-01
  %2514 = fmul fast float %2511, %2405
  %2515 = fmul fast float %2512, %2405
  %2516 = fmul fast float %2513, %2405
  %2517 = fadd fast float %2514, 5.000000e-01
  %2518 = fadd fast float %2515, 5.000000e-01
  %2519 = fadd fast float %2516, 5.000000e-01
  %2520 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2521 = call float @dx.op.unary.f32(i32 24, float %2390)  ; Sqrt(value)
  %2522 = call float @dx.op.unary.f32(i32 24, float %2391)  ; Sqrt(value)
  %2523 = fmul fast float %2517, 2.000000e+00
  %2524 = fsub fast float 1.000000e+00, %2523
  %2525 = fmul fast float %2524, %2520
  %2526 = fadd fast float %2525, %2523
  %2527 = fmul fast float %2526, %2520
  %2528 = fmul fast float %2518, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2521
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2521
  %2533 = fmul fast float %2519, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2522
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2522
  %2538 = fmul fast float %2527, %2527
  %2539 = fmul fast float %2532, %2532
  %2540 = fmul fast float %2537, %2537
  br label %2557

; <label>:2541                                    ; preds = %2504
  %2542 = fmul fast float %495, %495
  %2543 = fmul fast float %496, %496
  %2544 = fmul fast float %497, %497
  %2545 = fadd fast float %2542, -1.000000e+00
  %2546 = fadd fast float %2543, -1.000000e+00
  %2547 = fadd fast float %2544, -1.000000e+00
  %2548 = fmul fast float %2405, %2545
  %2549 = fmul fast float %2405, %2546
  %2550 = fmul fast float %2405, %2547
  %2551 = fadd fast float %2548, 1.000000e+00
  %2552 = fadd fast float %2549, 1.000000e+00
  %2553 = fadd fast float %2550, 1.000000e+00
  %2554 = fmul fast float %2551, %2389
  %2555 = fmul fast float %2552, %2390
  %2556 = fmul fast float %2553, %2391
  br label %2557

; <label>:2557                                    ; preds = %2541, %2507, %2410, %2377
  %2558 = phi float [ %2501, %2410 ], [ %2538, %2507 ], [ %2554, %2541 ], [ 1.000000e+00, %2377 ]
  %2559 = phi float [ %2502, %2410 ], [ %2539, %2507 ], [ %2555, %2541 ], [ 1.000000e+00, %2377 ]
  %2560 = phi float [ %2503, %2410 ], [ %2540, %2507 ], [ %2556, %2541 ], [ 1.000000e+00, %2377 ]
  %2561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.i32 %2561, 1
  %2563 = and i32 %2562, 1
  %2564 = icmp ne i32 %2563, 0
  %2565 = add i32 %62, 356
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 32
  %2569 = icmp ne i32 %2568, 0
  %2570 = and i1 %2564, %2569
  %2571 = select i1 %2570, float 1.000000e+00, float %2558
  %2572 = select i1 %2570, float 0x3FD3333340000000, float %2559
  %2573 = select i1 %2570, float 0x3FD3333340000000, float %2560
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 32
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2650, label %2578

; <label>:2578                                    ; preds = %2557
  %2579 = add i32 %62, 140
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %62, 404
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %2584, 0
  %2586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2586, %dx.types.Handle %113, float %2302, float %2303, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2588 = extractvalue %dx.types.ResRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.ResRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.ResRet.f32 %2587, 2
  %2591 = extractvalue %dx.types.ResRet.f32 %2587, 3
  %2592 = and i32 %2581, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = lshr i32 %2581, 8
  %2595 = and i32 %2594, 255
  %2596 = uitofp i32 %2595 to float
  %2597 = lshr i32 %2581, 16
  %2598 = and i32 %2597, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = fmul fast float %2599, 0x3F70101000000000
  %2601 = fmul fast float %2588, %2593
  %2602 = fadd fast float %2601, %2596
  %2603 = fmul fast float %2602, 0x3F70101000000000
  %2604 = fadd fast float %2589, -5.000000e-01
  %2605 = fadd fast float %2591, -5.000000e-01
  %2606 = fmul fast float %2604, %2600
  %2607 = fmul fast float %2605, %2600
  %2608 = fadd fast float %2606, 5.000000e-01
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = fmul fast float %2608, 2.000000e+00
  %2611 = fadd fast float %2610, -1.000000e+00
  %2612 = fmul fast float %2609, 2.000000e+00
  %2613 = fadd fast float %2612, -1.000000e+00
  %2614 = fadd fast float %2611, %2613
  %2615 = fmul fast float %2614, 5.000000e-01
  %2616 = fsub fast float %2611, %2613
  %2617 = fmul fast float %2616, 5.000000e-01
  %2618 = call float @dx.op.unary.f32(i32 6, float %2615)  ; FAbs(value)
  %2619 = fsub fast float 1.000000e+00, %2618
  %2620 = call float @dx.op.unary.f32(i32 6, float %2617)  ; FAbs(value)
  %2621 = fsub fast float %2619, %2620
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2615, float %2617, float %2621, float %2615, float %2617, float %2621)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = call float @dx.op.unary.f32(i32 25, float %2622)  ; Rsqrt(value)
  %2624 = fmul fast float %2615, %2623
  %2625 = fmul fast float %2617, %2623
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 67108864
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2646, label %2630

; <label>:2630                                    ; preds = %2578
  %2631 = add i32 %62, 328
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 65535
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = and i32 %2637, 65535
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2633, 16
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = fsub fast float %2603, %2641
  %2643 = fmul fast float %2642, %2635
  %2644 = fadd fast float %2643, %2639
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  br label %2646

; <label>:2646                                    ; preds = %2630, %2578
  %2647 = phi float [ %2645, %2630 ], [ %2603, %2578 ]
  %2648 = call float @dx.op.dot2.f32(i32 54, float %2624, float %2625, float %2206, float %2207)  ; Dot2(ax,ay,bx,by)
  %2649 = call float @dx.op.dot2.f32(i32 54, float %2624, float %2625, float %2208, float %2209)  ; Dot2(ax,ay,bx,by)
  br label %2650

; <label>:2650                                    ; preds = %2646, %2557
  %2651 = phi float [ %2647, %2646 ], [ 0x3FD6666660000000, %2557 ]
  %2652 = phi float [ %2648, %2646 ], [ 0.000000e+00, %2557 ]
  %2653 = phi float [ %2649, %2646 ], [ 0.000000e+00, %2557 ]
  %2654 = phi float [ %2590, %2646 ], [ 1.000000e+00, %2557 ]
  %2655 = add i32 %62, 144
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 3
  %2661 = icmp eq i32 %2660, 0
  br i1 %2661, label %2662, label %2679

; <label>:2662                                    ; preds = %2650
  %2663 = lshr i32 %2657, 8
  %2664 = and i32 %2663, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2572, float %2573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2667 = fmul fast float %2665, %2666
  %2668 = and i32 %2657, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fadd fast float %2667, %2669
  %2671 = fmul fast float %2670, 0x3F70101020000000
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2673 = and i32 %2659, 16
  %2674 = icmp ne i32 %2673, 0
  %2675 = select i1 %2674, float %2375, float 0.000000e+00
  %2676 = fsub fast float %2672, %2193
  %2677 = fmul fast float %2675, %2676
  %2678 = fadd fast float %2677, %2193
  br label %2679

; <label>:2679                                    ; preds = %2662, %2650
  %2680 = phi float [ %2193, %2650 ], [ %2678, %2662 ]
  %2681 = and i32 %2659, 12
  %2682 = icmp eq i32 %2681, 12
  br i1 %2682, label %2755, label %2683

; <label>:2683                                    ; preds = %2679
  %2684 = and i32 %2659, 2097184
  %2685 = icmp eq i32 %2684, 2097184
  %2686 = select i1 %2685, float %2375, float 0.000000e+00
  %2687 = and i32 %2659, 4194336
  %2688 = icmp eq i32 %2687, 4194336
  %2689 = select i1 %2688, float %2375, float 0.000000e+00
  %2690 = and i32 %2659, 8388640
  %2691 = icmp eq i32 %2690, 8388640
  %2692 = select i1 %2691, float %2375, float 0.000000e+00
  %2693 = icmp eq i32 %2681, 0
  br i1 %2693, label %2694, label %2707

; <label>:2694                                    ; preds = %2683
  %2695 = fsub fast float %2652, %2189
  %2696 = fsub fast float %2653, %2190
  %2697 = fmul fast float %2686, %2695
  %2698 = fmul fast float %2686, %2696
  %2699 = fadd fast float %2697, %2189
  %2700 = fadd fast float %2698, %2190
  %2701 = fsub fast float %2654, %2192
  %2702 = fmul fast float %2689, %2701
  %2703 = fadd fast float %2702, %2192
  %2704 = fsub fast float %2651, %2191
  %2705 = fmul fast float %2692, %2704
  %2706 = fadd fast float %2705, %2191
  br label %2755

; <label>:2707                                    ; preds = %2683
  %2708 = icmp eq i32 %2681, 4
  br i1 %2708, label %2709, label %2741

; <label>:2709                                    ; preds = %2707
  %2710 = fmul fast float %2686, %2652
  %2711 = fmul fast float %2686, %2653
  %2712 = fadd fast float %2710, %2189
  %2713 = fadd fast float %2711, %2190
  %2714 = call float @dx.op.binary.f32(i32 36, float %2192, float %2654)  ; FMin(a,b)
  %2715 = fsub fast float %2714, %2192
  %2716 = fmul fast float %2715, %2689
  %2717 = fadd fast float %2716, %2192
  %2718 = fadd fast float %2651, %2191
  %2719 = fmul fast float %2718, 0x3FF337FAE0000000
  %2720 = fmul fast float %2191, %2191
  %2721 = fmul fast float %2651, %2651
  %2722 = fadd fast float %2721, %2720
  %2723 = fmul fast float %2722, 0x3FE5152B00000000
  %2724 = fmul fast float %2191, 0xBFCC1F85E0000000
  %2725 = fmul fast float %2724, %2651
  %2726 = fadd fast float %2725, 0xBFE1363700000000
  %2727 = fadd fast float %2726, %2719
  %2728 = fsub fast float %2727, %2723
  %2729 = fmul fast float %2718, 0x3FBA6F0D00000000
  %2730 = fmul fast float %2722, 0x3FD0432880000000
  %2731 = fmul fast float %2191, 0xBFEF110800000000
  %2732 = fmul fast float %2731, %2651
  %2733 = fadd fast float %2732, 1.000000e+00
  %2734 = fsub fast float %2733, %2729
  %2735 = fadd fast float %2734, %2730
  %2736 = fdiv fast float %2728, %2735
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = fsub fast float %2737, %2191
  %2739 = fmul fast float %2738, %2692
  %2740 = fadd fast float %2739, %2191
  br label %2755

; <label>:2741                                    ; preds = %2707
  %2742 = icmp eq i32 %2681, 8
  br i1 %2742, label %2743, label %2755

; <label>:2743                                    ; preds = %2741
  %2744 = fmul fast float %2686, %2652
  %2745 = fmul fast float %2686, %2653
  %2746 = fadd fast float %2744, %2189
  %2747 = fadd fast float %2745, %2190
  %2748 = call float @dx.op.binary.f32(i32 36, float %2192, float %2654)  ; FMin(a,b)
  %2749 = fsub fast float %2748, %2192
  %2750 = fmul fast float %2749, %2689
  %2751 = fadd fast float %2750, %2192
  %2752 = fsub fast float %2651, %2191
  %2753 = fmul fast float %2692, %2752
  %2754 = fadd fast float %2753, %2191
  br label %2755

; <label>:2755                                    ; preds = %2743, %2741, %2709, %2694, %2679, %2374, %2194, %2188
  %2756 = phi float [ %2189, %2679 ], [ %2189, %2374 ], [ %2189, %2188 ], [ %2189, %2194 ], [ %2699, %2694 ], [ %2712, %2709 ], [ %2189, %2741 ], [ %2746, %2743 ]
  %2757 = phi float [ %2190, %2679 ], [ %2190, %2374 ], [ %2190, %2188 ], [ %2190, %2194 ], [ %2700, %2694 ], [ %2713, %2709 ], [ %2190, %2741 ], [ %2747, %2743 ]
  %2758 = phi float [ %2191, %2679 ], [ %2191, %2374 ], [ %2191, %2188 ], [ %2191, %2194 ], [ %2706, %2694 ], [ %2740, %2709 ], [ %2191, %2741 ], [ %2754, %2743 ]
  %2759 = phi float [ %2192, %2679 ], [ %2192, %2374 ], [ %2192, %2188 ], [ %2192, %2194 ], [ %2703, %2694 ], [ %2717, %2709 ], [ %2192, %2741 ], [ %2751, %2743 ]
  %2760 = phi float [ %2680, %2679 ], [ %2193, %2374 ], [ %2193, %2188 ], [ %2193, %2194 ], [ %2680, %2694 ], [ %2680, %2709 ], [ %2680, %2741 ], [ %2680, %2743 ]
  %2761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2762 = extractvalue %dx.types.CBufRet.f32 %2761, 0
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 2
  %2765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2766 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %1, %dx.types.Handle %2765, float %95, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float %2764, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = extractvalue %dx.types.ResRet.f32 %2766, 3
  %2771 = add i32 %62, 360
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = extractvalue %dx.types.ResRet.i32 %2772, 1
  %2775 = extractvalue %dx.types.ResRet.i32 %2772, 2
  %2776 = bitcast i32 %2773 to float
  %2777 = bitcast i32 %2774 to float
  %2778 = bitcast i32 %2775 to float
  %2779 = fmul fast float %2776, %2767
  %2780 = fmul fast float %2777, %2768
  %2781 = fmul fast float %2778, %2769
  %2782 = call float @dx.op.dot2.f32(i32 54, float %2756, float %2757, float %2756, float %2757)  ; Dot2(ax,ay,bx,by)
  %2783 = fmul fast float %2782, 0x3FE3333340000000
  %2784 = fsub fast float 1.000000e+00, %2783
  %2785 = call float @dx.op.dot3.f32(i32 55, float %2756, float %2757, float %2784, float %2756, float %2757, float %2784)  ; Dot3(ax,ay,az,bx,by,bz)
  %2786 = call float @dx.op.unary.f32(i32 25, float %2785)  ; Rsqrt(value)
  %2787 = fmul fast float %2786, %2756
  %2788 = fmul fast float %2786, %2757
  %2789 = fmul fast float %2784, %2786
  %2790 = fmul fast float %2789, %124
  %2791 = fmul fast float %2789, %125
  %2792 = fmul fast float %2789, %126
  %2793 = fmul fast float %2787, %88
  %2794 = fmul fast float %2787, %89
  %2795 = fmul fast float %2787, %90
  %2796 = fadd fast float %2790, %2793
  %2797 = fadd fast float %2791, %2794
  %2798 = fadd fast float %2792, %2795
  %2799 = fmul fast float %136, %2788
  %2800 = fmul fast float %137, %2788
  %2801 = fmul fast float %138, %2788
  %2802 = fadd fast float %2796, %2799
  %2803 = fadd fast float %2797, %2800
  %2804 = fadd fast float %2798, %2801
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2802, float %2803, float %2804, float %2802, float %2803, float %2804)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = call float @dx.op.unary.f32(i32 25, float %2805)  ; Rsqrt(value)
  %2807 = fmul fast float %2802, %2806
  %2808 = fmul fast float %2803, %2806
  %2809 = fmul fast float %2804, %2806
  %2810 = icmp eq i32 %64, 65535
  br i1 %2810, label %3329, label %2811

; <label>:2811                                    ; preds = %2755
  %2812 = call float @dx.op.unary.f32(i32 83, float %65)  ; DerivCoarseX(value)
  %2813 = call float @dx.op.unary.f32(i32 83, float %66)  ; DerivCoarseX(value)
  %2814 = call float @dx.op.unary.f32(i32 83, float %67)  ; DerivCoarseX(value)
  %2815 = call float @dx.op.unary.f32(i32 84, float %65)  ; DerivCoarseY(value)
  %2816 = call float @dx.op.unary.f32(i32 84, float %66)  ; DerivCoarseY(value)
  %2817 = call float @dx.op.unary.f32(i32 84, float %67)  ; DerivCoarseY(value)
  %2818 = fadd fast float %2812, %65
  %2819 = fadd fast float %2813, %66
  %2820 = fadd fast float %2814, %67
  %2821 = fadd fast float %2815, %65
  %2822 = fadd fast float %2816, %66
  %2823 = fadd fast float %2817, %67
  %2824 = mul i32 %64, 48
  %2825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = add i32 %2824, 16
  %2830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = add i32 %2824, 32
  %2835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = extractvalue %dx.types.ResRet.f32 %2835, 1
  %2838 = extractvalue %dx.types.ResRet.f32 %2835, 2
  %2839 = extractvalue %dx.types.ResRet.f32 %2835, 3
  %2840 = bitcast float %2839 to i32
  %2841 = fmul fast float %2826, %65
  %2842 = fmul fast float %2827, %66
  %2843 = fmul fast float %2828, %67
  %2844 = fsub fast float %2841, %2831
  %2845 = fsub fast float %2842, %2832
  %2846 = fsub fast float %2843, %2833
  %2847 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2848 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2849 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2850 = fmul fast float %2847, %2836
  %2851 = fmul fast float %2848, %2837
  %2852 = fmul fast float %2849, %2838
  %2853 = fadd fast float %2836, -1.000000e+00
  %2854 = fadd fast float %2837, -1.000000e+00
  %2855 = fadd fast float %2838, -1.000000e+00
  %2856 = call float @dx.op.unary.f32(i32 27, float %2850)  ; Round_ni(value)
  %2857 = call float @dx.op.unary.f32(i32 27, float %2851)  ; Round_ni(value)
  %2858 = call float @dx.op.unary.f32(i32 27, float %2852)  ; Round_ni(value)
  %2859 = call float @dx.op.binary.f32(i32 36, float %2856, float %2853)  ; FMin(a,b)
  %2860 = call float @dx.op.binary.f32(i32 36, float %2857, float %2854)  ; FMin(a,b)
  %2861 = call float @dx.op.binary.f32(i32 36, float %2858, float %2855)  ; FMin(a,b)
  %2862 = fmul fast float %2861, %2837
  %2863 = fadd fast float %2862, %2860
  %2864 = fmul fast float %2863, %2836
  %2865 = fadd fast float %2864, %2859
  %2866 = fptosi float %2865 to i32
  %2867 = add nsw i32 %2866, %2840
  %2868 = shl nsw i32 %2867, 2
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = lshr i32 %2870, 16
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %3297, label %2873

; <label>:2873                                    ; preds = %2811
  br label %2874

; <label>:2874                                    ; preds = %2996, %2873
  %2875 = phi i32 [ %2898, %2996 ], [ %2871, %2873 ]
  %2876 = phi float [ %2997, %2996 ], [ 0.000000e+00, %2873 ]
  %2877 = phi float [ %2998, %2996 ], [ %1056, %2873 ]
  %2878 = phi float [ %2999, %2996 ], [ %2762, %2873 ]
  %2879 = phi float [ %3000, %2996 ], [ %2760, %2873 ]
  %2880 = phi float [ %3001, %2996 ], [ 0.000000e+00, %2873 ]
  %2881 = phi float [ %3002, %2996 ], [ 0.000000e+00, %2873 ]
  %2882 = phi float [ %3003, %2996 ], [ %2779, %2873 ]
  %2883 = phi float [ %3004, %2996 ], [ %2780, %2873 ]
  %2884 = phi float [ %3005, %2996 ], [ %2781, %2873 ]
  %2885 = phi float [ %3006, %2996 ], [ %2807, %2873 ]
  %2886 = phi float [ %3007, %2996 ], [ %2808, %2873 ]
  %2887 = phi float [ %3008, %2996 ], [ %2809, %2873 ]
  %2888 = phi float [ %3009, %2996 ], [ %2759, %2873 ]
  %2889 = phi float [ %3010, %2996 ], [ %2758, %2873 ]
  %2890 = phi float [ %3011, %2996 ], [ 0.000000e+00, %2873 ]
  %2891 = phi float [ %3012, %2996 ], [ 0x3FA23C0BE0000000, %2873 ]
  %2892 = phi float [ %3013, %2996 ], [ %2767, %2873 ]
  %2893 = phi float [ %3014, %2996 ], [ %2768, %2873 ]
  %2894 = phi float [ %3015, %2996 ], [ %2769, %2873 ]
  %2895 = shl nuw nsw i32 %2875, 2
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = lshr i32 %2897, 16
  %2899 = shl i32 %2897, 8
  %2900 = and i32 %2899, 16776960
  %2901 = or i32 %2900, 48
  %2902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = or i32 %2900, 64
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = extractvalue %dx.types.ResRet.i32 %2907, 1
  %2910 = or i32 %2900, 80
  %2911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2914 = or i32 %2900, 96
  %2915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.ResRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.ResRet.f32 %2915, 2
  %2919 = extractvalue %dx.types.ResRet.f32 %2915, 3
  %2920 = or i32 %2900, 112
  %2921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2923 = or i32 %2900, 128
  %2924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = extractvalue %dx.types.ResRet.f32 %2924, 3
  %2929 = or i32 %2900, 144
  %2930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2930, 3
  %2935 = or i32 %2900, 160
  %2936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.ResRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.ResRet.f32 %2936, 2
  %2940 = extractvalue %dx.types.ResRet.f32 %2936, 3
  %2941 = or i32 %2900, 192
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = or i32 %2900, 208
  %2945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = or i32 %2900, 248
  %2948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.f32 %2948, 0
  %2950 = extractvalue %dx.types.ResRet.f32 %2948, 1
  %2951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = extractvalue %dx.types.ResRet.f32 %2951, 3
  %2956 = call float @dx.op.dot4.f32(i32 56, float %2952, float %2953, float %2954, float %2955, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2957 = or i32 %2900, 16
  %2958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = extractvalue %dx.types.ResRet.f32 %2958, 1
  %2961 = extractvalue %dx.types.ResRet.f32 %2958, 2
  %2962 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2963 = call float @dx.op.dot4.f32(i32 56, float %2959, float %2960, float %2961, float %2962, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2964 = or i32 %2900, 32
  %2965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.f32 %2965, 0
  %2967 = extractvalue %dx.types.ResRet.f32 %2965, 1
  %2968 = extractvalue %dx.types.ResRet.f32 %2965, 2
  %2969 = extractvalue %dx.types.ResRet.f32 %2965, 3
  %2970 = call float @dx.op.dot4.f32(i32 56, float %2966, float %2967, float %2968, float %2969, float %65, float %66, float %67, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2971 = call float @dx.op.unary.f32(i32 27, float %2956)  ; Round_ni(value)
  %2972 = call float @dx.op.unary.f32(i32 6, float %2971)  ; FAbs(value)
  %2973 = call float @dx.op.unary.f32(i32 27, float %2963)  ; Round_ni(value)
  %2974 = call float @dx.op.unary.f32(i32 6, float %2973)  ; FAbs(value)
  %2975 = call float @dx.op.unary.f32(i32 6, float %2970)  ; FAbs(value)
  %2976 = call float @dx.op.unary.f32(i32 27, float %2975)  ; Round_ni(value)
  %2977 = fadd fast float %2974, %2972
  %2978 = fadd fast float %2977, %2976
  %2979 = fcmp fast oeq float %2978, 0.000000e+00
  %2980 = call float @dx.op.dot4.f32(i32 56, float %2952, float %2953, float %2954, float %2955, float %2818, float %2819, float %2820, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2981 = call float @dx.op.dot4.f32(i32 56, float %2959, float %2960, float %2961, float %2962, float %2818, float %2819, float %2820, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2982 = call float @dx.op.dot4.f32(i32 56, float %2952, float %2953, float %2954, float %2955, float %2821, float %2822, float %2823, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2983 = call float @dx.op.dot4.f32(i32 56, float %2959, float %2960, float %2961, float %2962, float %2821, float %2822, float %2823, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2984 = fsub fast float %2980, %2956
  %2985 = fsub fast float %2982, %2956
  %2986 = fsub fast float %2981, %2963
  %2987 = fsub fast float %2983, %2963
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2903, float %2904, float %2905, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 2
  %2991 = fadd fast float %2990, %2988
  %2992 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %2994 = fcmp fast ogt float %2992, %2993
  %2995 = and i1 %2979, %2994
  br i1 %2995, label %3017, label %2996

; <label>:2996                                    ; preds = %3283, %3100, %3017, %2874
  %2997 = phi float [ %2876, %3017 ], [ %3103, %3100 ], [ %3103, %3283 ], [ %2876, %2874 ]
  %2998 = phi float [ %2877, %3017 ], [ %2877, %3100 ], [ %3258, %3283 ], [ %2877, %2874 ]
  %2999 = phi float [ %2878, %3017 ], [ %2878, %3100 ], [ %3257, %3283 ], [ %2878, %2874 ]
  %3000 = phi float [ %2879, %3017 ], [ %2879, %3100 ], [ %3255, %3283 ], [ %2879, %2874 ]
  %3001 = phi float [ %2880, %3017 ], [ %2880, %3100 ], [ %3227, %3283 ], [ %2880, %2874 ]
  %3002 = phi float [ %2881, %3017 ], [ %2881, %3100 ], [ %3225, %3283 ], [ %2881, %2874 ]
  %3003 = phi float [ %2882, %3017 ], [ %2882, %3100 ], [ %3293, %3283 ], [ %2882, %2874 ]
  %3004 = phi float [ %2883, %3017 ], [ %2883, %3100 ], [ %3294, %3283 ], [ %2883, %2874 ]
  %3005 = phi float [ %2884, %3017 ], [ %2884, %3100 ], [ %3295, %3283 ], [ %2884, %2874 ]
  %3006 = phi float [ %2885, %3017 ], [ %2885, %3100 ], [ %3206, %3283 ], [ %2885, %2874 ]
  %3007 = phi float [ %2886, %3017 ], [ %2886, %3100 ], [ %3207, %3283 ], [ %2886, %2874 ]
  %3008 = phi float [ %2887, %3017 ], [ %2887, %3100 ], [ %3208, %3283 ], [ %2887, %2874 ]
  %3009 = phi float [ %2888, %3017 ], [ %2888, %3100 ], [ %3235, %3283 ], [ %2888, %2874 ]
  %3010 = phi float [ %2889, %3017 ], [ %2889, %3100 ], [ %3232, %3283 ], [ %2889, %2874 ]
  %3011 = phi float [ %2890, %3017 ], [ %2890, %3100 ], [ %3229, %3283 ], [ %2890, %2874 ]
  %3012 = phi float [ %2891, %3017 ], [ %2891, %3100 ], [ %3223, %3283 ], [ %2891, %2874 ]
  %3013 = phi float [ %2892, %3017 ], [ %2892, %3100 ], [ %3218, %3283 ], [ %2892, %2874 ]
  %3014 = phi float [ %2893, %3017 ], [ %2893, %3100 ], [ %3219, %3283 ], [ %2893, %2874 ]
  %3015 = phi float [ %2894, %3017 ], [ %2894, %3100 ], [ %3220, %3283 ], [ %2894, %2874 ]
  %3016 = icmp eq i32 %2898, 0
  br i1 %3016, label %3296, label %2874

; <label>:3017                                    ; preds = %2874
  %3018 = extractvalue %dx.types.ResRet.f32 %2902, 3
  %3019 = extractvalue %dx.types.ResRet.f32 %2921, 3
  %3020 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %3021 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %3022 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %3024 = extractvalue %dx.types.ResRet.i32 %2907, 3
  %3025 = extractvalue %dx.types.ResRet.i32 %2907, 2
  %3026 = bitcast float %3018 to i32
  %3027 = add i32 %3024, 0
  %3028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3027, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3028, %dx.types.Handle %3029, float %2956, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float %2984, float %2986, float undef, float %2985, float %2987, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3032 = fmul fast float %3031, %3023
  %3033 = fadd fast float %3032, %3022
  %3034 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3035 = fmul fast float %2956, %2916
  %3036 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2963, float %3035)  ; FMad(a,b,c)
  %3037 = fadd fast float %3036, %3021
  %3038 = fmul fast float %2956, %2918
  %3039 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2963, float %3038)  ; FMad(a,b,c)
  %3040 = fadd fast float %3039, %3020
  %3041 = fmul fast float %2984, %2916
  %3042 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2986, float %3041)  ; FMad(a,b,c)
  %3043 = fmul fast float %2984, %2918
  %3044 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2986, float %3043)  ; FMad(a,b,c)
  %3045 = fmul fast float %2985, %2916
  %3046 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2987, float %3045)  ; FMad(a,b,c)
  %3047 = fmul fast float %2985, %2918
  %3048 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2987, float %3047)  ; FMad(a,b,c)
  %3049 = add i32 %3025, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3049, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3050, %dx.types.Handle %3029, float %3037, float %3040, float undef, float undef, i32 0, i32 0, i32 undef, float %3042, float %3044, float undef, float %3046, float %3048, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = and i32 %3026, 1024
  %3054 = icmp ne i32 %3053, 0
  %3055 = fcmp fast ogt float %3052, 0x3FE0101020000000
  %3056 = uitofp i1 %3055 to float
  %3057 = select i1 %3054, float %3056, float %3052
  %3058 = and i32 %3026, 8192
  %3059 = icmp ne i32 %3058, 0
  %3060 = select i1 %3059, float %3019, float 1.000000e+00
  %3061 = fmul fast float %2956, 2.000000e+00
  %3062 = fadd fast float %3061, -1.000000e+00
  %3063 = call float @dx.op.unary.f32(i32 6, float %3062)  ; FAbs(value)
  %3064 = fmul fast float %3063, %2949
  %3065 = fsub fast float %3064, %2949
  %3066 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3067 = fmul fast float %2963, 2.000000e+00
  %3068 = fadd fast float %3067, -1.000000e+00
  %3069 = call float @dx.op.unary.f32(i32 6, float %3068)  ; FAbs(value)
  %3070 = fmul fast float %3069, %2950
  %3071 = fsub fast float %3070, %2950
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3073 = fmul fast float %2975, %2912
  %3074 = fsub fast float %3073, %2912
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3076 = fmul fast float %3034, %3060
  %3077 = fmul fast float %3076, %3031
  %3078 = fmul fast float %3077, %3066
  %3079 = fmul fast float %3078, %3057
  %3080 = fmul fast float %3079, %3072
  %3081 = fmul fast float %3080, %3075
  %3082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3083 = extractvalue %dx.types.CBufRet.f32 %3082, 1
  %3084 = extractvalue %dx.types.CBufRet.f32 %3082, 0
  %3085 = fsub fast float %2992, %3084
  %3086 = fmul fast float %3085, %3083
  %3087 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3088 = fmul fast float %3081, %2913
  %3089 = fadd fast float %3081, %2913
  %3090 = fmul fast float %3089, %2922
  %3091 = fsub fast float %3090, %2922
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3093 = and i32 %3026, 128
  %3094 = icmp ne i32 %3093, 0
  %3095 = select i1 %3094, float %3092, float %3088
  %3096 = fmul fast float %3095, %3087
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 0
  %3099 = fcmp fast ugt float %3096, %3098
  br i1 %3099, label %3100, label %2996

; <label>:3100                                    ; preds = %3017
  %3101 = select i1 %3059, float %3096, float 0.000000e+00
  %3102 = fadd fast float %3101, %2876
  %3103 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  br i1 %3059, label %2996, label %3104

; <label>:3104                                    ; preds = %3100
  %3105 = and i32 %3026, 4
  %3106 = and i32 %3026, 8
  %3107 = add i32 %2908, 0
  %3108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3108, %dx.types.Handle %3109, float %3037, float %3040, float undef, float undef, i32 0, i32 0, i32 undef, float %3042, float %3044, float undef, float %3046, float %3048, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3115 = bitcast float %2934 to i32
  %3116 = and i32 %3115, 255
  %3117 = uitofp i32 %3116 to float
  %3118 = lshr i32 %3115, 8
  %3119 = and i32 %3118, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = fmul fast float %3114, %3117
  %3122 = fadd fast float %3121, %3120
  %3123 = fmul fast float %3122, 0x3F70101000000000
  %3124 = add i32 %2909, 0
  %3125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3124, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3126 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3125, %dx.types.Handle %3109, float %3037, float %3040, float undef, float undef, i32 0, i32 0, i32 undef, float %3042, float %3044, float undef, float %3046, float %3048, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.ResRet.f32 %3126, 3
  %3131 = bitcast float %2928 to i32
  %3132 = and i32 %3131, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = lshr i32 %3131, 8
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = lshr i32 %3131, 16
  %3138 = and i32 %3137, 255
  %3139 = uitofp i32 %3138 to float
  %3140 = fmul fast float %3139, 0x3F70101000000000
  %3141 = fmul fast float %3127, %3133
  %3142 = fadd fast float %3141, %3136
  %3143 = fmul fast float %3142, 0x3F70101000000000
  %3144 = fadd fast float %3128, -5.000000e-01
  %3145 = fadd fast float %3130, -5.000000e-01
  %3146 = fmul fast float %3144, %3140
  %3147 = fmul fast float %3145, %3140
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = fadd fast float %3147, 5.000000e-01
  %3150 = fmul fast float %3111, %2937
  %3151 = fmul fast float %3112, %2938
  %3152 = fmul fast float %3113, %2939
  %3153 = fmul fast float %3148, 2.000000e+00
  %3154 = fadd fast float %3153, -1.000000e+00
  %3155 = fmul fast float %3149, 2.000000e+00
  %3156 = fadd fast float %3155, -1.000000e+00
  %3157 = fadd fast float %3154, %3156
  %3158 = fmul fast float %3157, 5.000000e-01
  %3159 = fsub fast float %3154, %3156
  %3160 = fmul fast float %3159, 5.000000e-01
  %3161 = call float @dx.op.unary.f32(i32 6, float %3158)  ; FAbs(value)
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = call float @dx.op.unary.f32(i32 6, float %3160)  ; FAbs(value)
  %3164 = fsub fast float %3162, %3163
  %3165 = call float @dx.op.dot3.f32(i32 55, float %3158, float %3160, float %3164, float %3158, float %3160, float %3164)  ; Dot3(ax,ay,az,bx,by,bz)
  %3166 = call float @dx.op.unary.f32(i32 25, float %3165)  ; Rsqrt(value)
  %3167 = fmul fast float %3158, %3166
  %3168 = fmul fast float %3160, %3166
  %3169 = fmul fast float %3166, %3164
  %3170 = fmul fast float %3169, %2903
  %3171 = fmul fast float %3169, %2904
  %3172 = fmul fast float %3169, %2905
  %3173 = fmul fast float %3167, %2925
  %3174 = fmul fast float %3167, %2926
  %3175 = fmul fast float %3167, %2927
  %3176 = fadd fast float %3173, %3170
  %3177 = fadd fast float %3174, %3171
  %3178 = fadd fast float %3175, %3172
  %3179 = fmul fast float %3168, %2931
  %3180 = fmul fast float %3168, %2932
  %3181 = fmul fast float %3168, %2933
  %3182 = fadd fast float %3176, %3179
  %3183 = fadd fast float %3177, %3180
  %3184 = fadd fast float %3178, %3181
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3182, float %3183, float %3184, float %3182, float %3183, float %3184)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = call float @dx.op.unary.f32(i32 25, float %3185)  ; Rsqrt(value)
  %3187 = fmul fast float %3182, %3186
  %3188 = fmul fast float %3183, %3186
  %3189 = fmul fast float %3184, %3186
  %3190 = icmp ne i32 %3106, 0
  %3191 = select i1 %3190, float 1.000000e+00, float 0.000000e+00
  %3192 = fmul fast float %3096, %3191
  %3193 = and i32 %3026, 1
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3195, label %3199

; <label>:3195                                    ; preds = %3104
  %3196 = fsub fast float %3187, %2885
  %3197 = fsub fast float %3188, %2886
  %3198 = fsub fast float %3189, %2887
  br label %3199

; <label>:3199                                    ; preds = %3195, %3104
  %3200 = phi float [ %3196, %3195 ], [ %3187, %3104 ]
  %3201 = phi float [ %3197, %3195 ], [ %3188, %3104 ]
  %3202 = phi float [ %3198, %3195 ], [ %3189, %3104 ]
  %3203 = fmul float %3202, %3192
  %3204 = fmul float %3201, %3192
  %3205 = fmul float %3200, %3192
  %3206 = fadd fast float %3205, %2885
  %3207 = fadd fast float %3204, %2886
  %3208 = fadd fast float %3203, %2887
  %3209 = icmp ne i32 %3105, 0
  %3210 = select i1 %3209, float 1.000000e+00, float 0.000000e+00
  %3211 = fmul fast float %3096, %3210
  %3212 = fsub fast float %3150, %2892
  %3213 = fsub fast float %3151, %2893
  %3214 = fsub fast float %3152, %2894
  %3215 = fmul fast float %3212, %3211
  %3216 = fmul fast float %3213, %3211
  %3217 = fmul fast float %3214, %3211
  %3218 = fadd fast float %3215, %2892
  %3219 = fadd fast float %3216, %2893
  %3220 = fadd fast float %3217, %2894
  %3221 = fsub fast float %3123, %2891
  %3222 = fmul fast float %3221, %3211
  %3223 = fadd fast float %3222, %2891
  %3224 = fmul fast float %3211, %2881
  %3225 = fsub fast float %2881, %3224
  %3226 = fmul fast float %3211, %2880
  %3227 = fsub fast float %2880, %3226
  %3228 = fadd fast float %3096, %2890
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3230 = fsub fast float %3143, %2889
  %3231 = fmul fast float %3230, %3192
  %3232 = fadd fast float %3231, %2889
  %3233 = fsub fast float %3129, %2888
  %3234 = fmul fast float %3233, %3192
  %3235 = fadd fast float %3234, %2888
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3150, float %3151, float %3152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.CBufRet.f32 %3237, 1
  %3240 = fmul fast float %3239, %3236
  %3241 = fadd fast float %3240, %3238
  %3242 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3243 = bitcast float %2940 to i32
  %3244 = and i32 %3243, 65535
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = lshr i32 %3243, 16
  %3247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3246)  ; LegacyF16ToF32(value)
  %3248 = fcmp fast oge float %3245, 0.000000e+00
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = select i1 %3248, float %3245, float %3250
  %3252 = fadd fast float %3251, %3247
  %3253 = fsub fast float %3242, %2879
  %3254 = fmul fast float %3253, %3096
  %3255 = fadd fast float %3254, %2879
  %3256 = fmul fast float %3252, %3096
  %3257 = call float @dx.op.binary.f32(i32 35, float %2878, float %3256)  ; FMax(a,b)
  %3258 = call float @dx.op.binary.f32(i32 35, float %2877, float %3096)  ; FMax(a,b)
  %3259 = and i32 %3026, 16
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3283, label %3261

; <label>:3261                                    ; preds = %3199
  %3262 = bitcast float %2946 to i32
  %3263 = add i32 %2943, 0
  %3264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3263, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3264, %dx.types.Handle %3109, float %3037, float %3040, float undef, float undef, i32 0, i32 0, i32 undef, float %3042, float %3044, float undef, float %3046, float %3048, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.ResRet.f32 %3265, 2
  %3269 = and i32 %3262, 65535
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = fmul fast float %3266, %2937
  %3272 = fmul fast float %3267, %2938
  %3273 = fmul fast float %3268, %2939
  %3274 = and i32 %3026, 16384
  %3275 = icmp ne i32 %3274, 0
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = select i1 %3275, float %3277, float 1.000000e+00
  %3279 = fmul fast float %3278, %3270
  %3280 = fmul fast float %3271, %3279
  %3281 = fmul fast float %3272, %3279
  %3282 = fmul fast float %3273, %3279
  br label %3283

; <label>:3283                                    ; preds = %3261, %3199
  %3284 = phi float [ %3280, %3261 ], [ 0.000000e+00, %3199 ]
  %3285 = phi float [ %3281, %3261 ], [ 0.000000e+00, %3199 ]
  %3286 = phi float [ %3282, %3261 ], [ 0.000000e+00, %3199 ]
  %3287 = fsub fast float %3284, %2882
  %3288 = fsub fast float %3285, %2883
  %3289 = fsub fast float %3286, %2884
  %3290 = fmul fast float %3287, %3096
  %3291 = fmul fast float %3288, %3096
  %3292 = fmul fast float %3289, %3096
  %3293 = fadd fast float %3290, %2882
  %3294 = fadd fast float %3291, %2883
  %3295 = fadd fast float %3292, %2884
  br label %2996

; <label>:3296                                    ; preds = %2996
  br label %3297

; <label>:3297                                    ; preds = %3296, %2811
  %3298 = phi float [ 0.000000e+00, %2811 ], [ %2997, %3296 ]
  %3299 = phi float [ %1056, %2811 ], [ %2998, %3296 ]
  %3300 = phi float [ %2762, %2811 ], [ %2999, %3296 ]
  %3301 = phi float [ %2760, %2811 ], [ %3000, %3296 ]
  %3302 = phi float [ 0.000000e+00, %2811 ], [ %3001, %3296 ]
  %3303 = phi float [ 0.000000e+00, %2811 ], [ %3002, %3296 ]
  %3304 = phi float [ %2779, %2811 ], [ %3003, %3296 ]
  %3305 = phi float [ %2780, %2811 ], [ %3004, %3296 ]
  %3306 = phi float [ %2781, %2811 ], [ %3005, %3296 ]
  %3307 = phi float [ %2807, %2811 ], [ %3006, %3296 ]
  %3308 = phi float [ %2808, %2811 ], [ %3007, %3296 ]
  %3309 = phi float [ %2809, %2811 ], [ %3008, %3296 ]
  %3310 = phi float [ %2759, %2811 ], [ %3009, %3296 ]
  %3311 = phi float [ %2758, %2811 ], [ %3010, %3296 ]
  %3312 = phi float [ 0.000000e+00, %2811 ], [ %3011, %3296 ]
  %3313 = phi float [ 0x3FA23C0BE0000000, %2811 ], [ %3012, %3296 ]
  %3314 = phi float [ %2767, %2811 ], [ %3013, %3296 ]
  %3315 = phi float [ %2768, %2811 ], [ %3014, %3296 ]
  %3316 = phi float [ %2769, %2811 ], [ %3015, %3296 ]
  %3317 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float %3307, float %3308, float %3309)  ; Dot3(ax,ay,az,bx,by,bz)
  %3318 = call float @dx.op.unary.f32(i32 25, float %3317)  ; Rsqrt(value)
  %3319 = fmul fast float %3318, %3307
  %3320 = fmul fast float %3318, %3308
  %3321 = fmul fast float %3318, %3309
  %3322 = fadd fast float %3312, %2770
  %3323 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3324 = call float @dx.op.dot3.f32(i32 55, float %3319, float %3320, float %3321, float %3319, float %3320, float %3321)  ; Dot3(ax,ay,az,bx,by,bz)
  %3325 = call float @dx.op.unary.f32(i32 25, float %3324)  ; Rsqrt(value)
  %3326 = fmul fast float %3325, %3319
  %3327 = fmul fast float %3325, %3320
  %3328 = fmul fast float %3325, %3321
  br label %3329

; <label>:3329                                    ; preds = %3297, %2755
  %3330 = phi float [ %3326, %3297 ], [ %2807, %2755 ]
  %3331 = phi float [ %3327, %3297 ], [ %2808, %2755 ]
  %3332 = phi float [ %3328, %3297 ], [ %2809, %2755 ]
  %3333 = phi float [ %3314, %3297 ], [ %2767, %2755 ]
  %3334 = phi float [ %3315, %3297 ], [ %2768, %2755 ]
  %3335 = phi float [ %3316, %3297 ], [ %2769, %2755 ]
  %3336 = phi float [ %3304, %3297 ], [ %2779, %2755 ]
  %3337 = phi float [ %3305, %3297 ], [ %2780, %2755 ]
  %3338 = phi float [ %3306, %3297 ], [ %2781, %2755 ]
  %3339 = phi float [ %3313, %3297 ], [ 0x3FA23C0BE0000000, %2755 ]
  %3340 = phi float [ %3323, %3297 ], [ %2770, %2755 ]
  %3341 = phi float [ %3311, %3297 ], [ %2758, %2755 ]
  %3342 = phi float [ %3310, %3297 ], [ %2759, %2755 ]
  %3343 = phi float [ %3303, %3297 ], [ 0.000000e+00, %2755 ]
  %3344 = phi float [ %3302, %3297 ], [ 0.000000e+00, %2755 ]
  %3345 = phi float [ %3298, %3297 ], [ 0.000000e+00, %2755 ]
  %3346 = phi float [ %3300, %3297 ], [ %2762, %2755 ]
  %3347 = phi float [ %3299, %3297 ], [ %1056, %2755 ]
  %3348 = phi float [ %3301, %3297 ], [ %2760, %2755 ]
  %3349 = fadd fast float %3339, 0xBFB99999A0000000
  %3350 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3351 = fmul fast float %3350, 0x3FF1C71C80000000
  %3352 = call float @dx.op.binary.f32(i32 36, float %3339, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3353 = fsub fast float 1.000000e+00, %3351
  %3354 = call float @dx.op.unary.f32(i32 7, float %3353)  ; Saturate(value)
  %3355 = fmul fast float %3354, %3333
  %3356 = fmul fast float %3354, %3334
  %3357 = fmul fast float %3354, %3335
  %3358 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3361 = fmul fast float %3351, %3333
  %3362 = fmul fast float %3351, %3334
  %3363 = fmul fast float %3351, %3335
  %3364 = fadd fast float %3361, %3352
  %3365 = fadd fast float %3362, %3352
  %3366 = fadd fast float %3363, %3352
  %3367 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3368 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3369 = call float @dx.op.unary.f32(i32 7, float %3366)  ; Saturate(value)
  %3370 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3372 = extractvalue %dx.types.CBufRet.i32 %3371, 3
  %3373 = and i32 %3372, 8
  %3374 = icmp ne i32 %3373, 0
  %3375 = call float @dx.op.binary.f32(i32 35, float %3358, float %3333)  ; FMax(a,b)
  %3376 = call float @dx.op.binary.f32(i32 35, float %3359, float %3333)  ; FMax(a,b)
  %3377 = call float @dx.op.binary.f32(i32 35, float %3360, float %3333)  ; FMax(a,b)
  %3378 = call float @dx.op.dot3.f32(i32 55, float %3358, float %3359, float %3360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3379 = select i1 %263, float %3333, float %3358
  %3380 = select i1 %263, float %3378, float %3359
  %3381 = select i1 %263, float 1.000000e+00, float %3360
  %3382 = select i1 %3374, float %3375, float %3379
  %3383 = select i1 %3374, float %3376, float %3380
  %3384 = select i1 %3374, float %3377, float %3381
  %3385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3386 = extractvalue %dx.types.CBufRet.f32 %3385, 0
  %3387 = extractvalue %dx.types.CBufRet.f32 %3385, 1
  %3388 = extractvalue %dx.types.CBufRet.f32 %3385, 2
  %3389 = fadd fast float %3386, %204
  %3390 = fadd fast float %3387, %205
  %3391 = fadd fast float %3388, %206
  %3392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3393 = extractvalue %dx.types.CBufRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.CBufRet.f32 %3392, 1
  %3395 = fsub fast float %3389, %3393
  %3396 = fsub fast float %3390, %3394
  %3397 = fmul fast float %3395, %3395
  %3398 = fmul fast float %3396, %3396
  %3399 = fadd fast float %3397, %3398
  %3400 = call float @dx.op.unary.f32(i32 24, float %3399)  ; Sqrt(value)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3392, 2
  %3402 = fcmp fast olt float %3400, %3401
  br i1 %3402, label %3403, label %3470

; <label>:3403                                    ; preds = %3329
  %3404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.f32 %3404, 0
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.f32 %3408, 0
  %3410 = extractvalue %dx.types.CBufRet.f32 %3404, 1
  %3411 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3412 = extractvalue %dx.types.CBufRet.f32 %3408, 1
  %3413 = extractvalue %dx.types.CBufRet.f32 %3404, 3
  %3414 = extractvalue %dx.types.CBufRet.f32 %3406, 3
  %3415 = extractvalue %dx.types.CBufRet.f32 %3408, 3
  %3416 = fadd fast float %3413, %3389
  %3417 = fadd fast float %3414, %3390
  %3418 = fadd fast float %3415, %3391
  %3419 = fmul fast float %3416, %3405
  %3420 = call float @dx.op.tertiary.f32(i32 46, float %3417, float %3407, float %3419)  ; FMad(a,b,c)
  %3421 = call float @dx.op.tertiary.f32(i32 46, float %3418, float %3409, float %3420)  ; FMad(a,b,c)
  %3422 = fmul fast float %3416, %3410
  %3423 = call float @dx.op.tertiary.f32(i32 46, float %3417, float %3411, float %3422)  ; FMad(a,b,c)
  %3424 = call float @dx.op.tertiary.f32(i32 46, float %3418, float %3412, float %3423)  ; FMad(a,b,c)
  %3425 = fsub fast float %3421, %3413
  %3426 = fsub fast float %3424, %3414
  %3427 = fsub fast float %3425, %3393
  %3428 = fadd fast float %3427, %3401
  %3429 = fsub fast float %3426, %3394
  %3430 = fadd fast float %3429, %3401
  %3431 = extractvalue %dx.types.CBufRet.f32 %3392, 3
  %3432 = fmul fast float %3428, %3431
  %3433 = fmul fast float %3430, %3431
  %3434 = call float @dx.op.unary.f32(i32 7, float %3432)  ; Saturate(value)
  %3435 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3436 = fsub fast float 1.000000e+00, %3434
  %3437 = fsub fast float 1.000000e+00, %3435
  %3438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %56, float %3436, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3440 = fcmp fast ugt float %3439, 0.000000e+00
  br i1 %3440, label %3441, label %3744

; <label>:3441                                    ; preds = %3403
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 2
  %3444 = fmul fast float %3443, %3439
  %3445 = extractvalue %dx.types.CBufRet.f32 %3442, 3
  %3446 = fadd fast float %3445, %3444
  %3447 = extractvalue %dx.types.CBufRet.f32 %3408, 2
  %3448 = fadd fast float %3446, %3415
  %3449 = fmul fast float %3421, %3409
  %3450 = call float @dx.op.tertiary.f32(i32 46, float %3424, float %3412, float %3449)  ; FMad(a,b,c)
  %3451 = call float @dx.op.tertiary.f32(i32 46, float %3448, float %3447, float %3450)  ; FMad(a,b,c)
  %3452 = fsub fast float %3451, %3415
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3455 = fsub fast float %3452, %3454
  %3456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %56, float %3436, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3457 = extractvalue %dx.types.ResRet.f32 %3456, 0
  %3458 = extractvalue %dx.types.ResRet.f32 %3456, 1
  %3459 = extractvalue %dx.types.ResRet.f32 %3456, 2
  %3460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %56, float %3436, float %3437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = fadd fast float %3461, %3457
  %3465 = fmul fast float %3464, 0x3F847AE140000000
  %3466 = fadd fast float %3462, %3458
  %3467 = fmul fast float %3466, 0x3F847AE140000000
  %3468 = fadd fast float %3463, %3459
  %3469 = fmul fast float %3468, 0x3F847AE140000000
  br label %3744

; <label>:3470                                    ; preds = %3329
  %3471 = and i32 %242, 1
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %3744, label %3473

; <label>:3473                                    ; preds = %3470
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3474, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3482 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3484 = extractvalue %dx.types.CBufRet.f32 %3476, 3
  %3485 = extractvalue %dx.types.CBufRet.f32 %3478, 3
  %3486 = fadd fast float %3483, %3389
  %3487 = fadd fast float %3484, %3390
  %3488 = fadd fast float %3485, %3391
  %3489 = fmul fast float %3486, %3475
  %3490 = call float @dx.op.tertiary.f32(i32 46, float %3487, float %3477, float %3489)  ; FMad(a,b,c)
  %3491 = call float @dx.op.tertiary.f32(i32 46, float %3488, float %3479, float %3490)  ; FMad(a,b,c)
  %3492 = fmul fast float %3486, %3480
  %3493 = call float @dx.op.tertiary.f32(i32 46, float %3487, float %3481, float %3492)  ; FMad(a,b,c)
  %3494 = call float @dx.op.tertiary.f32(i32 46, float %3488, float %3482, float %3493)  ; FMad(a,b,c)
  %3495 = fsub fast float %3491, %3483
  %3496 = fsub fast float %3494, %3484
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 1
  %3500 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3501 = extractvalue %dx.types.CBufRet.f32 %3497, 3
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.i32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.i32 %3504, 1
  %3507 = udiv i32 %3506, %3505
  %3508 = fsub fast float %3495, %3498
  %3509 = fsub fast float %3496, %3499
  %3510 = call float @dx.op.binary.f32(i32 35, float %3508, float 0.000000e+00)  ; FMax(a,b)
  %3511 = call float @dx.op.binary.f32(i32 35, float %3509, float 0.000000e+00)  ; FMax(a,b)
  %3512 = call float @dx.op.binary.f32(i32 36, float %3510, float %3500)  ; FMin(a,b)
  %3513 = call float @dx.op.binary.f32(i32 36, float %3511, float %3501)  ; FMin(a,b)
  %3514 = add i32 %3505, -1
  %3515 = add i32 %3507, -1
  %3516 = fmul fast float %3512, %3503
  %3517 = fmul fast float %3513, %3503
  %3518 = fptoui float %3516 to i32
  %3519 = fptoui float %3517 to i32
  %3520 = call i32 @dx.op.binary.i32(i32 40, i32 %3518, i32 %3514)  ; UMin(a,b)
  %3521 = call i32 @dx.op.binary.i32(i32 40, i32 %3519, i32 %3515)  ; UMin(a,b)
  %3522 = mul i32 %3521, %3505
  %3523 = add i32 %3522, %3520
  %3524 = shl i32 %3523, 2
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = icmp eq i32 %3526, -1
  br i1 %3527, label %3744, label %3528

; <label>:3528                                    ; preds = %3473
  %3529 = mul i32 %3526, 148
  %3530 = add i32 %3529, 4
  %3531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.f32 %3531, 0
  %3533 = add i32 %3529, 8
  %3534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = add i32 %3529, 36
  %3537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.f32 %3537, 0
  %3539 = add i32 %3529, 60
  %3540 = add i32 %3529, 92
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = add i32 %3529, 116
  %3544 = fsub fast float %3495, %3532
  %3545 = fsub fast float %3496, %3535
  %3546 = fmul fast float %3503, %3544
  %3547 = fmul fast float %3503, %3545
  %3548 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3549 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3550 = fsub fast float 1.000000e+00, %3549
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 2
  %3553 = call float @dx.op.unary.f32(i32 83, float %3548)  ; DerivCoarseX(value)
  %3554 = call float @dx.op.unary.f32(i32 83, float %3550)  ; DerivCoarseX(value)
  %3555 = call float @dx.op.unary.f32(i32 84, float %3548)  ; DerivCoarseY(value)
  %3556 = call float @dx.op.unary.f32(i32 84, float %3550)  ; DerivCoarseY(value)
  %3557 = fmul fast float %3553, %3552
  %3558 = fmul fast float %3554, %3552
  %3559 = fmul fast float %3555, %3552
  %3560 = fmul fast float %3556, %3552
  %3561 = call float @dx.op.dot2.f32(i32 54, float %3559, float %3560, float %3559, float %3560)  ; Dot2(ax,ay,bx,by)
  %3562 = call float @dx.op.dot2.f32(i32 54, float %3557, float %3558, float %3557, float %3558)  ; Dot2(ax,ay,bx,by)
  %3563 = call float @dx.op.binary.f32(i32 35, float %3562, float %3561)  ; FMax(a,b)
  %3564 = call float @dx.op.unary.f32(i32 23, float %3563)  ; Log(value)
  %3565 = fmul fast float %3564, 5.000000e-01
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 1
  %3568 = fadd fast float %3567, %3565
  %3569 = call float @dx.op.binary.f32(i32 35, float %3568, float 0.000000e+00)  ; FMax(a,b)
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3572 = fadd fast float %3571, %3569
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 3
  %3575 = fadd fast float %3572, %3574
  %3576 = add i32 %3542, 0
  %3577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3576, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3578 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3577, i32 0)  ; GetDimensions(handle,mipLevel)
  %3579 = extractvalue %dx.types.Dimensions %3578, 0
  %3580 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3579)  ; FirstbitLo(value)
  %3581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.i32 %3581, 1
  %3583 = sub nsw i32 %3582, %3580
  %3584 = sitofp i32 %3583 to float
  %3585 = fsub fast float %3575, %3584
  %3586 = call float @dx.op.binary.f32(i32 35, float %3585, float 0.000000e+00)  ; FMax(a,b)
  %3587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3577, %dx.types.Handle %54, float %3548, float %3550, float %3538, float undef, i32 0, i32 0, i32 undef, float %3586)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = fcmp ule float %3588, 0x3FE0101020000000
  %3590 = extractvalue %dx.types.CBufRet.i32 %3581, 0
  %3591 = and i32 %3590, 128
  %3592 = icmp ne i32 %3591, 0
  %3593 = and i1 %3589, %3592
  br i1 %3593, label %3744, label %3594

; <label>:3594                                    ; preds = %3528
  %3595 = add i32 %3529, 20
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = add i32 %3529, 24
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = add i32 %3529, 40
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = add i32 %3529, 96
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 2
  %3609 = fmul fast float %3608, %3548
  %3610 = fmul fast float %3608, %3550
  %3611 = extractvalue %dx.types.CBufRet.f32 %3607, 3
  %3612 = fadd fast float %3609, %3611
  %3613 = fadd fast float %3610, %3611
  %3614 = add i32 %3606, 0
  %3615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3614, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3616 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3615, i32 0)  ; GetDimensions(handle,mipLevel)
  %3617 = extractvalue %dx.types.Dimensions %3616, 0
  %3618 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3617)  ; FirstbitLo(value)
  %3619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3620 = extractvalue %dx.types.CBufRet.i32 %3619, 1
  %3621 = sub nsw i32 %3620, %3618
  %3622 = sitofp i32 %3621 to float
  %3623 = fsub fast float %3572, %3622
  %3624 = call float @dx.op.binary.f32(i32 35, float %3623, float 0.000000e+00)  ; FMax(a,b)
  %3625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3615, %dx.types.Handle %54, float %3612, float %3613, float %3603, float undef, i32 0, i32 0, i32 undef, float %3624)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = fmul fast float %3626, %3597
  %3628 = fadd fast float %3627, %3600
  %3629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.CBufRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.CBufRet.f32 %3629, 2
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 3
  %3635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3636 = extractvalue %dx.types.CBufRet.f32 %3635, 3
  %3637 = extractvalue %dx.types.CBufRet.f32 %3629, 3
  %3638 = fadd fast float %3634, %3495
  %3639 = fadd fast float %3636, %3496
  %3640 = fadd fast float %3628, %3637
  %3641 = fmul fast float %3638, %3630
  %3642 = call float @dx.op.tertiary.f32(i32 46, float %3639, float %3631, float %3641)  ; FMad(a,b,c)
  %3643 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3632, float %3642)  ; FMad(a,b,c)
  %3644 = fsub fast float %3643, %3637
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3647 = fsub fast float %3644, %3646
  %3648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.i32 %3648, 0
  %3650 = call i32 @dx.op.binary.i32(i32 40, i32 %3526, i32 %3649)  ; UMin(a,b)
  %3651 = mul i32 %3650, 36
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = add i32 %3651, 4
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = fmul fast float %3656, %3548
  %3658 = fmul fast float %3656, %3550
  %3659 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3660 = fadd fast float %3657, %3659
  %3661 = fadd fast float %3658, %3659
  %3662 = icmp eq i32 %3653, 0
  br i1 %3662, label %3731, label %3663

; <label>:3663                                    ; preds = %3594
  br label %3664

; <label>:3664                                    ; preds = %3721, %3663
  %3665 = phi float [ %3722, %3721 ], [ 0.000000e+00, %3663 ]
  %3666 = phi float [ %3723, %3721 ], [ 0.000000e+00, %3663 ]
  %3667 = phi float [ %3724, %3721 ], [ 0.000000e+00, %3663 ]
  %3668 = phi float [ %3725, %3721 ], [ 0.000000e+00, %3663 ]
  %3669 = phi float [ %3726, %3721 ], [ 0.000000e+00, %3663 ]
  %3670 = phi float [ %3727, %3721 ], [ 0.000000e+00, %3663 ]
  %3671 = phi i32 [ %3728, %3721 ], [ 0, %3663 ]
  %3672 = shl i32 %3671, 2
  %3673 = add i32 %3539, %3672
  %3674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %3673, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = add i32 %3543, %3672
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %3678, 0
  %3680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3679, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3681 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3680, i32 0)  ; GetDimensions(handle,mipLevel)
  %3682 = extractvalue %dx.types.Dimensions %3681, 0
  %3683 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3682)  ; FirstbitLo(value)
  %3684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.i32 %3684, 1
  %3686 = sub nsw i32 %3685, %3683
  %3687 = sitofp i32 %3686 to float
  %3688 = fsub fast float %3572, %3687
  %3689 = call float @dx.op.binary.f32(i32 35, float %3688, float 0.000000e+00)  ; FMax(a,b)
  %3690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3680, %dx.types.Handle %54, float %3660, float %3661, float %3675, float undef, i32 0, i32 0, i32 undef, float %3689)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = fcmp fast ogt float %3691, 0.000000e+00
  br i1 %3692, label %3693, label %3721

; <label>:3693                                    ; preds = %3664
  %3694 = add i32 %3654, %3672
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 32767
  %3698 = mul nuw nsw i32 %3697, 928
  %3699 = add nuw nsw i32 %3698, 48
  %3700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3699, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.ResRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3700, 2
  %3704 = add nuw nsw i32 %3698, 60
  %3705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = extractvalue %dx.types.ResRet.f32 %3705, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3705, 2
  %3709 = fmul fast float %3701, %3691
  %3710 = fmul fast float %3702, %3691
  %3711 = fmul fast float %3703, %3691
  %3712 = fadd fast float %3709, %3665
  %3713 = fadd fast float %3710, %3666
  %3714 = fadd fast float %3711, %3667
  %3715 = fmul fast float %3706, %3691
  %3716 = fmul fast float %3707, %3691
  %3717 = fmul fast float %3708, %3691
  %3718 = fadd fast float %3715, %3668
  %3719 = fadd fast float %3716, %3669
  %3720 = fadd fast float %3717, %3670
  br label %3721

; <label>:3721                                    ; preds = %3693, %3664
  %3722 = phi float [ %3712, %3693 ], [ %3665, %3664 ]
  %3723 = phi float [ %3713, %3693 ], [ %3666, %3664 ]
  %3724 = phi float [ %3714, %3693 ], [ %3667, %3664 ]
  %3725 = phi float [ %3718, %3693 ], [ %3668, %3664 ]
  %3726 = phi float [ %3719, %3693 ], [ %3669, %3664 ]
  %3727 = phi float [ %3720, %3693 ], [ %3670, %3664 ]
  %3728 = add nuw i32 %3671, 1
  %3729 = icmp eq i32 %3728, %3653
  br i1 %3729, label %3730, label %3664

; <label>:3730                                    ; preds = %3721
  br label %3731

; <label>:3731                                    ; preds = %3730, %3594
  %3732 = phi float [ 0.000000e+00, %3594 ], [ %3722, %3730 ]
  %3733 = phi float [ 0.000000e+00, %3594 ], [ %3723, %3730 ]
  %3734 = phi float [ 0.000000e+00, %3594 ], [ %3724, %3730 ]
  %3735 = phi float [ 0.000000e+00, %3594 ], [ %3725, %3730 ]
  %3736 = phi float [ 0.000000e+00, %3594 ], [ %3726, %3730 ]
  %3737 = phi float [ 0.000000e+00, %3594 ], [ %3727, %3730 ]
  %3738 = fadd fast float %3735, %3732
  %3739 = fmul fast float %3738, 0x3F847AE140000000
  %3740 = fadd fast float %3736, %3733
  %3741 = fmul fast float %3740, 0x3F847AE140000000
  %3742 = fadd fast float %3737, %3734
  %3743 = fmul fast float %3742, 0x3F847AE140000000
  br label %3744

; <label>:3744                                    ; preds = %3731, %3528, %3473, %3470, %3441, %3403
  %3745 = phi float [ %3455, %3441 ], [ -1.310720e+05, %3403 ], [ %3647, %3731 ], [ -1.310720e+05, %3473 ], [ -1.310720e+05, %3528 ], [ -1.310720e+05, %3470 ]
  %3746 = phi float [ %3465, %3441 ], [ 0.000000e+00, %3403 ], [ %3739, %3731 ], [ 0.000000e+00, %3473 ], [ 0.000000e+00, %3528 ], [ 0.000000e+00, %3470 ]
  %3747 = phi float [ %3467, %3441 ], [ 0.000000e+00, %3403 ], [ %3741, %3731 ], [ 0.000000e+00, %3473 ], [ 0.000000e+00, %3528 ], [ 0.000000e+00, %3470 ]
  %3748 = phi float [ %3469, %3441 ], [ 0.000000e+00, %3403 ], [ %3743, %3731 ], [ 0.000000e+00, %3473 ], [ 0.000000e+00, %3528 ], [ 0.000000e+00, %3470 ]
  %3749 = phi i1 [ true, %3441 ], [ false, %3403 ], [ true, %3731 ], [ false, %3473 ], [ false, %3528 ], [ false, %3470 ]
  %3750 = and i32 %242, 3
  %3751 = icmp eq i32 %3750, 1
  %3752 = select i1 %3751, float 1.000000e+00, float 0.000000e+00
  %3753 = fsub fast float %3745, %206
  %3754 = call float @dx.op.unary.f32(i32 7, float %3753)  ; Saturate(value)
  %3755 = select i1 %3749, float %3754, float 1.000000e+00
  %3756 = fmul fast float %3755, %3752
  %3757 = icmp eq i32 %3750, 3
  %3758 = select i1 %3757, float 1.000000e+00, float %3756
  %3759 = call float @dx.op.binary.f32(i32 35, float %3345, float %3758)  ; FMax(a,b)
  %3760 = fcmp fast olt float %3758, 1.000000e+00
  %3761 = fcmp uge float %78, 0.000000e+00
  %3762 = and i1 %3761, %3760
  br i1 %3762, label %3763, label %3773

; <label>:3763                                    ; preds = %3744
  %3764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %50, %dx.types.Handle %54, float %78, float %79, float %80, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = fadd fast float %3765, %3759
  %3769 = fcmp ule float %77, 0.000000e+00
  %3770 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3771 = select i1 %3769, float %3770, float 1.000000e+00
  %3772 = fmul fast float %3771, %3767
  br label %3773

; <label>:3773                                    ; preds = %3763, %3744
  %3774 = phi float [ %3768, %3763 ], [ %3759, %3744 ]
  %3775 = phi float [ %3766, %3763 ], [ 0.000000e+00, %3744 ]
  %3776 = phi float [ %3772, %3763 ], [ 0.000000e+00, %3744 ]
  %3777 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3778 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3779 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3780 = fcmp fast une float %3778, 0.000000e+00
  %3781 = fcmp fast une float %3779, 0.000000e+00
  %3782 = or i1 %3780, %3781
  br i1 %3782, label %3783, label %4342

; <label>:3783                                    ; preds = %3773
  br i1 %3780, label %3784, label %4057

; <label>:3784                                    ; preds = %3783
  %3785 = call float @dx.op.unary.f32(i32 23, float %3342)  ; Log(value)
  %3786 = fmul fast float %3785, 4.000000e+00
  %3787 = call float @dx.op.unary.f32(i32 21, float %3786)  ; Exp(value)
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = fmul fast float %3789, %65
  %3791 = fmul fast float %3789, %66
  %3792 = fmul fast float %3789, %67
  %3793 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %3794 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %3795 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %3796 = call float @dx.op.unary.f32(i32 23, float %3793)  ; Log(value)
  %3797 = call float @dx.op.unary.f32(i32 23, float %3794)  ; Log(value)
  %3798 = call float @dx.op.unary.f32(i32 23, float %3795)  ; Log(value)
  %3799 = fmul fast float %3796, 4.000000e+00
  %3800 = fmul fast float %3797, 4.000000e+00
  %3801 = fmul fast float %3798, 4.000000e+00
  %3802 = call float @dx.op.unary.f32(i32 21, float %3799)  ; Exp(value)
  %3803 = call float @dx.op.unary.f32(i32 21, float %3800)  ; Exp(value)
  %3804 = call float @dx.op.unary.f32(i32 21, float %3801)  ; Exp(value)
  %3805 = fadd fast float %3803, %3802
  %3806 = fadd fast float %3805, %3804
  %3807 = fdiv fast float 1.000000e+00, %3806
  %3808 = fmul fast float %3807, %3802
  %3809 = fcmp fast ogt float %74, 0.000000e+00
  %3810 = fcmp fast ogt float %75, 0.000000e+00
  %3811 = fcmp fast ogt float %76, 0.000000e+00
  %3812 = fcmp fast olt float %74, 0.000000e+00
  %3813 = fcmp fast olt float %75, 0.000000e+00
  %3814 = fcmp fast olt float %76, 0.000000e+00
  %3815 = zext i1 %3809 to i32
  %3816 = zext i1 %3810 to i32
  %3817 = zext i1 %3811 to i32
  %3818 = zext i1 %3812 to i32
  %3819 = zext i1 %3813 to i32
  %3820 = zext i1 %3814 to i32
  %3821 = sub nsw i32 %3815, %3818
  %3822 = sub nsw i32 %3816, %3819
  %3823 = sub nsw i32 %3817, %3820
  %3824 = call float @dx.op.unary.f32(i32 83, float %3790)  ; DerivCoarseX(value)
  %3825 = call float @dx.op.unary.f32(i32 83, float %3791)  ; DerivCoarseX(value)
  %3826 = call float @dx.op.unary.f32(i32 83, float %3792)  ; DerivCoarseX(value)
  %3827 = call float @dx.op.unary.f32(i32 84, float %3790)  ; DerivCoarseY(value)
  %3828 = call float @dx.op.unary.f32(i32 84, float %3791)  ; DerivCoarseY(value)
  %3829 = call float @dx.op.unary.f32(i32 84, float %3792)  ; DerivCoarseY(value)
  %3830 = fcmp fast ole float %274, %3808
  %3831 = fmul fast float %3807, %3805
  %3832 = fcmp fast ole float %274, %3831
  %3833 = select i1 %3832, float %3792, float %3790
  %3834 = select i1 %3832, float %3790, float %3791
  %3835 = select i1 %3830, float %3791, float %3833
  %3836 = select i1 %3830, float %3792, float %3834
  %3837 = select i1 %3832, float %3826, float %3824
  %3838 = select i1 %3832, float %3824, float %3825
  %3839 = select i1 %3830, float %3825, float %3837
  %3840 = select i1 %3830, float %3826, float %3838
  %3841 = select i1 %3832, float %3829, float %3827
  %3842 = select i1 %3832, float %3827, float %3828
  %3843 = select i1 %3830, float %3828, float %3841
  %3844 = select i1 %3830, float %3829, float %3842
  %3845 = call float @dx.op.unary.f32(i32 27, float %3835)  ; Round_ni(value)
  %3846 = call float @dx.op.unary.f32(i32 27, float %3836)  ; Round_ni(value)
  %3847 = fptosi float %3845 to i32
  %3848 = fptosi float %3846 to i32
  %3849 = xor i32 %3848, %3847
  %3850 = sitofp i32 %3849 to float
  %3851 = fptosi float %3850 to i32
  %3852 = sitofp i32 %3851 to float
  %3853 = fmul fast float %3852, 0x3FE3C6EF40000000
  %3854 = frem fast float %3845, 2.560000e+02
  %3855 = frem fast float %3846, 2.560000e+02
  %3856 = fptoui float %3854 to i32
  %3857 = fptoui float %3855 to i32
  %3858 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %3856, i32 %3857, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = fadd fast float %3859, %3853
  %3863 = fadd fast float %3860, %3853
  %3864 = fadd fast float %3861, %3853
  %3865 = call float @dx.op.unary.f32(i32 22, float %3862)  ; Frc(value)
  %3866 = call float @dx.op.unary.f32(i32 22, float %3863)  ; Frc(value)
  %3867 = call float @dx.op.unary.f32(i32 22, float %3864)  ; Frc(value)
  %3868 = fmul fast float %3867, 0x401921FB60000000
  %3869 = call float @dx.op.unary.f32(i32 13, float %3868)  ; Sin(value)
  %3870 = call float @dx.op.unary.f32(i32 12, float %3868)  ; Cos(value)
  %3871 = fsub fast float -0.000000e+00, %3870
  %3872 = fmul fast float %3870, %3835
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3869, float %3836, float %3872)  ; FMad(a,b,c)
  %3874 = fmul fast float %3869, %3835
  %3875 = call float @dx.op.tertiary.f32(i32 46, float %3871, float %3836, float %3874)  ; FMad(a,b,c)
  %3876 = fadd fast float %3873, %3865
  %3877 = fadd fast float %3875, %3866
  %3878 = extractvalue %dx.types.CBufRet.f32 %3788, 3
  %3879 = bitcast float %3878 to i32
  %3880 = icmp eq i32 %3879, 0
  br i1 %3880, label %3919, label %3881

; <label>:3881                                    ; preds = %3784
  %3882 = add i32 %3879, 0
  %3883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3884 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3883, %dx.types.Handle %114, float %3876, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3840, float undef, float %3843, float %3844, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.f32 %3886, 1
  %3888 = extractvalue %dx.types.CBufRet.f32 %3886, 2
  %3889 = fsub fast float 1.000000e+00, %3778
  %3890 = call float @dx.op.binary.f32(i32 35, float %3889, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3891 = bitcast float %3778 to i32
  %3892 = sitofp i32 %3891 to float
  %3893 = fadd fast float %3892, 0xC1CFBF8940000000
  %3894 = fmul fast float %3888, %3893
  %3895 = fadd fast float %3894, 0x41CFBF8940000000
  %3896 = fptosi float %3895 to i32
  %3897 = bitcast i32 %3896 to float
  %3898 = bitcast float %3890 to i32
  %3899 = sitofp i32 %3898 to float
  %3900 = fadd fast float %3899, 0xC1CFBF8940000000
  %3901 = fmul fast float %3900, %3888
  %3902 = fadd fast float %3901, 0x41CFBF8940000000
  %3903 = fptosi float %3902 to i32
  %3904 = bitcast i32 %3903 to float
  %3905 = fmul fast float %3897, %3887
  %3906 = fmul fast float %3904, %3887
  %3907 = fsub fast float %3890, %3905
  %3908 = fadd fast float %3906, %3890
  %3909 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3910 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3911 = fsub fast float %3885, %3909
  %3912 = fsub fast float %3910, %3909
  %3913 = bitcast float %3912 to i32
  %3914 = sub nsw i32 2129859010, %3913
  %3915 = bitcast i32 %3914 to float
  %3916 = fmul fast float %3915, %3911
  %3917 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3918 = fcmp fast olt float %3917, 0x3F70101020000000
  br i1 %3918, label %4057, label %3919

; <label>:3919                                    ; preds = %3881, %3784
  %3920 = phi float [ %3917, %3881 ], [ %3778, %3784 ]
  %3921 = fmul fast float %3920, %3787
  %3922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.i32 %3922, 1
  %3924 = extractvalue %dx.types.CBufRet.i32 %3922, 0
  %3925 = add i32 %3924, 0
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3926, %dx.types.Handle %113, float %3876, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3840, float undef, float %3843, float %3844, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = and i32 %3923, 255
  %3933 = uitofp i32 %3932 to float
  %3934 = lshr i32 %3923, 8
  %3935 = and i32 %3934, 255
  %3936 = uitofp i32 %3935 to float
  %3937 = fmul fast float %3931, %3933
  %3938 = fadd fast float %3937, %3936
  %3939 = fmul fast float %3938, 0x3F70101000000000
  %3940 = fadd fast float %3939, 0xBFB99999A0000000
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fmul fast float %3941, 0x3FF1C71C80000000
  %3943 = call float @dx.op.binary.f32(i32 36, float %3939, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3944 = fsub fast float 1.000000e+00, %3942
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fmul fast float %3945, %3928
  %3947 = fmul fast float %3945, %3929
  %3948 = fmul fast float %3945, %3930
  %3949 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3950 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3951 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3952 = fmul fast float %3942, %3928
  %3953 = fmul fast float %3942, %3929
  %3954 = fmul fast float %3942, %3930
  %3955 = fadd fast float %3952, %3943
  %3956 = fadd fast float %3953, %3943
  %3957 = fadd fast float %3954, %3943
  %3958 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.i32 %3961, 3
  %3963 = extractvalue %dx.types.CBufRet.i32 %3961, 2
  %3964 = add i32 %3963, 0
  %3965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3966 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3965, %dx.types.Handle %113, float %3876, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3840, float undef, float %3843, float %3844, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = extractvalue %dx.types.ResRet.f32 %3966, 2
  %3970 = extractvalue %dx.types.ResRet.f32 %3966, 3
  %3971 = and i32 %3962, 255
  %3972 = uitofp i32 %3971 to float
  %3973 = lshr i32 %3962, 8
  %3974 = and i32 %3973, 255
  %3975 = uitofp i32 %3974 to float
  %3976 = lshr i32 %3962, 16
  %3977 = and i32 %3976, 255
  %3978 = uitofp i32 %3977 to float
  %3979 = fmul fast float %3978, 0x3F70101000000000
  %3980 = fmul fast float %3967, %3972
  %3981 = fadd fast float %3980, %3975
  %3982 = fmul fast float %3981, 0x3F70101000000000
  %3983 = fadd fast float %3968, -5.000000e-01
  %3984 = fadd fast float %3970, -5.000000e-01
  %3985 = fmul fast float %3983, %3979
  %3986 = fmul fast float %3984, %3979
  %3987 = fadd fast float %3985, 5.000000e-01
  %3988 = fadd fast float %3986, 5.000000e-01
  %3989 = fmul fast float %3987, 2.000000e+00
  %3990 = fadd fast float %3989, -1.000000e+00
  %3991 = fmul fast float %3988, 2.000000e+00
  %3992 = fadd fast float %3991, -1.000000e+00
  %3993 = fadd fast float %3990, %3992
  %3994 = fmul fast float %3993, 5.000000e-01
  %3995 = fsub fast float %3990, %3992
  %3996 = fmul fast float %3995, 5.000000e-01
  %3997 = call float @dx.op.unary.f32(i32 6, float %3994)  ; FAbs(value)
  %3998 = fsub fast float 1.000000e+00, %3997
  %3999 = call float @dx.op.unary.f32(i32 6, float %3996)  ; FAbs(value)
  %4000 = fsub fast float %3998, %3999
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3996, float %4000, float %3994, float %3996, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = call float @dx.op.unary.f32(i32 25, float %4001)  ; Rsqrt(value)
  %4003 = fmul fast float %3994, %4002
  %4004 = fmul fast float %3996, %4002
  %4005 = select i1 %3832, i32 %3822, i32 %3823
  %4006 = select i1 %3830, i32 %3821, i32 %4005
  %4007 = sitofp i32 %4006 to float
  %4008 = fmul fast float %4000, %4007
  %4009 = fmul fast float %4008, %4002
  %4010 = select i1 %3832, float %4009, float %4004
  %4011 = select i1 %3832, float %4004, float %4009
  %4012 = select i1 %3830, float %4009, float %4003
  %4013 = select i1 %3830, float %4004, float %4010
  %4014 = select i1 %3830, float %4003, float %4011
  %4015 = fsub fast float %3949, %3382
  %4016 = fsub fast float %3950, %3383
  %4017 = fsub fast float %3951, %3384
  %4018 = fmul fast float %4015, %3921
  %4019 = fmul fast float %4016, %3921
  %4020 = fmul fast float %4017, %3921
  %4021 = fadd fast float %4018, %3382
  %4022 = fadd fast float %4019, %3383
  %4023 = fadd fast float %4020, %3384
  %4024 = fsub fast float %3958, %3367
  %4025 = fsub fast float %3959, %3368
  %4026 = fsub fast float %3960, %3369
  %4027 = fmul fast float %4024, %3921
  %4028 = fmul fast float %4025, %3921
  %4029 = fmul fast float %4026, %3921
  %4030 = fadd fast float %4027, %3367
  %4031 = fadd fast float %4028, %3368
  %4032 = fadd fast float %4029, %3369
  %4033 = fadd fast float %4012, %3330
  %4034 = fadd fast float %4013, %3331
  %4035 = fadd fast float %4014, %3332
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4033, float %4034, float %4035, float %4033, float %4034, float %4035)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = call float @dx.op.unary.f32(i32 25, float %4036)  ; Rsqrt(value)
  %4038 = fmul fast float %4033, %4037
  %4039 = fmul fast float %4034, %4037
  %4040 = fmul fast float %4035, %4037
  %4041 = fsub fast float %4038, %3330
  %4042 = fsub fast float %4039, %3331
  %4043 = fsub fast float %4040, %3332
  %4044 = fmul fast float %4041, %3921
  %4045 = fmul fast float %4042, %3921
  %4046 = fmul fast float %4043, %3921
  %4047 = fadd fast float %4044, %3330
  %4048 = fadd fast float %4045, %3331
  %4049 = fadd fast float %4046, %3332
  %4050 = call float @dx.op.binary.f32(i32 36, float %3342, float %3969)  ; FMin(a,b)
  %4051 = fsub fast float %4050, %3342
  %4052 = fmul fast float %4051, %3921
  %4053 = fadd fast float %4052, %3342
  %4054 = fsub fast float %3982, %3370
  %4055 = fmul fast float %4054, %3921
  %4056 = fadd fast float %4055, %3370
  br label %4057

; <label>:4057                                    ; preds = %3919, %3881, %3783
  %4058 = phi float [ %4021, %3919 ], [ %3382, %3881 ], [ %3382, %3783 ]
  %4059 = phi float [ %4022, %3919 ], [ %3383, %3881 ], [ %3383, %3783 ]
  %4060 = phi float [ %4023, %3919 ], [ %3384, %3881 ], [ %3384, %3783 ]
  %4061 = phi float [ %4030, %3919 ], [ %3367, %3881 ], [ %3367, %3783 ]
  %4062 = phi float [ %4031, %3919 ], [ %3368, %3881 ], [ %3368, %3783 ]
  %4063 = phi float [ %4032, %3919 ], [ %3369, %3881 ], [ %3369, %3783 ]
  %4064 = phi float [ %4047, %3919 ], [ %3330, %3881 ], [ %3330, %3783 ]
  %4065 = phi float [ %4048, %3919 ], [ %3331, %3881 ], [ %3331, %3783 ]
  %4066 = phi float [ %4049, %3919 ], [ %3332, %3881 ], [ %3332, %3783 ]
  %4067 = phi float [ %4056, %3919 ], [ %3370, %3881 ], [ %3370, %3783 ]
  %4068 = phi float [ %4053, %3919 ], [ %3342, %3881 ], [ %3342, %3783 ]
  br i1 %3781, label %4069, label %4342

; <label>:4069                                    ; preds = %4057
  %4070 = call float @dx.op.unary.f32(i32 23, float %4068)  ; Log(value)
  %4071 = fmul fast float %4070, 4.000000e+00
  %4072 = call float @dx.op.unary.f32(i32 21, float %4071)  ; Exp(value)
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = fmul fast float %4074, %65
  %4076 = fmul fast float %4074, %66
  %4077 = fmul fast float %4074, %67
  %4078 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %4079 = call float @dx.op.unary.f32(i32 6, float %75)  ; FAbs(value)
  %4080 = call float @dx.op.unary.f32(i32 6, float %76)  ; FAbs(value)
  %4081 = call float @dx.op.unary.f32(i32 23, float %4078)  ; Log(value)
  %4082 = call float @dx.op.unary.f32(i32 23, float %4079)  ; Log(value)
  %4083 = call float @dx.op.unary.f32(i32 23, float %4080)  ; Log(value)
  %4084 = fmul fast float %4081, 4.000000e+00
  %4085 = fmul fast float %4082, 4.000000e+00
  %4086 = fmul fast float %4083, 4.000000e+00
  %4087 = call float @dx.op.unary.f32(i32 21, float %4084)  ; Exp(value)
  %4088 = call float @dx.op.unary.f32(i32 21, float %4085)  ; Exp(value)
  %4089 = call float @dx.op.unary.f32(i32 21, float %4086)  ; Exp(value)
  %4090 = fadd fast float %4088, %4087
  %4091 = fadd fast float %4090, %4089
  %4092 = fdiv fast float 1.000000e+00, %4091
  %4093 = fmul fast float %4092, %4087
  %4094 = fcmp fast ogt float %74, 0.000000e+00
  %4095 = fcmp fast ogt float %75, 0.000000e+00
  %4096 = fcmp fast ogt float %76, 0.000000e+00
  %4097 = fcmp fast olt float %74, 0.000000e+00
  %4098 = fcmp fast olt float %75, 0.000000e+00
  %4099 = fcmp fast olt float %76, 0.000000e+00
  %4100 = zext i1 %4094 to i32
  %4101 = zext i1 %4095 to i32
  %4102 = zext i1 %4096 to i32
  %4103 = zext i1 %4097 to i32
  %4104 = zext i1 %4098 to i32
  %4105 = zext i1 %4099 to i32
  %4106 = sub nsw i32 %4100, %4103
  %4107 = sub nsw i32 %4101, %4104
  %4108 = sub nsw i32 %4102, %4105
  %4109 = call float @dx.op.unary.f32(i32 83, float %4075)  ; DerivCoarseX(value)
  %4110 = call float @dx.op.unary.f32(i32 83, float %4076)  ; DerivCoarseX(value)
  %4111 = call float @dx.op.unary.f32(i32 83, float %4077)  ; DerivCoarseX(value)
  %4112 = call float @dx.op.unary.f32(i32 84, float %4075)  ; DerivCoarseY(value)
  %4113 = call float @dx.op.unary.f32(i32 84, float %4076)  ; DerivCoarseY(value)
  %4114 = call float @dx.op.unary.f32(i32 84, float %4077)  ; DerivCoarseY(value)
  %4115 = fcmp fast ole float %274, %4093
  %4116 = fmul fast float %4092, %4090
  %4117 = fcmp fast ole float %274, %4116
  %4118 = select i1 %4117, float %4077, float %4075
  %4119 = select i1 %4117, float %4075, float %4076
  %4120 = select i1 %4115, float %4076, float %4118
  %4121 = select i1 %4115, float %4077, float %4119
  %4122 = select i1 %4117, float %4111, float %4109
  %4123 = select i1 %4117, float %4109, float %4110
  %4124 = select i1 %4115, float %4110, float %4122
  %4125 = select i1 %4115, float %4111, float %4123
  %4126 = select i1 %4117, float %4114, float %4112
  %4127 = select i1 %4117, float %4112, float %4113
  %4128 = select i1 %4115, float %4113, float %4126
  %4129 = select i1 %4115, float %4114, float %4127
  %4130 = call float @dx.op.unary.f32(i32 27, float %4120)  ; Round_ni(value)
  %4131 = call float @dx.op.unary.f32(i32 27, float %4121)  ; Round_ni(value)
  %4132 = fptosi float %4130 to i32
  %4133 = fptosi float %4131 to i32
  %4134 = xor i32 %4133, %4132
  %4135 = sitofp i32 %4134 to float
  %4136 = fptosi float %4135 to i32
  %4137 = sitofp i32 %4136 to float
  %4138 = fmul fast float %4137, 0x3FE3C6EF40000000
  %4139 = frem fast float %4130, 2.560000e+02
  %4140 = frem fast float %4131, 2.560000e+02
  %4141 = fptoui float %4139 to i32
  %4142 = fptoui float %4140 to i32
  %4143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %39, i32 0, i32 %4141, i32 %4142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = fadd fast float %4144, %4138
  %4148 = fadd fast float %4145, %4138
  %4149 = fadd fast float %4146, %4138
  %4150 = call float @dx.op.unary.f32(i32 22, float %4147)  ; Frc(value)
  %4151 = call float @dx.op.unary.f32(i32 22, float %4148)  ; Frc(value)
  %4152 = call float @dx.op.unary.f32(i32 22, float %4149)  ; Frc(value)
  %4153 = fmul fast float %4152, 0x401921FB60000000
  %4154 = call float @dx.op.unary.f32(i32 13, float %4153)  ; Sin(value)
  %4155 = call float @dx.op.unary.f32(i32 12, float %4153)  ; Cos(value)
  %4156 = fsub fast float -0.000000e+00, %4155
  %4157 = fmul fast float %4155, %4120
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4121, float %4157)  ; FMad(a,b,c)
  %4159 = fmul fast float %4154, %4120
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4121, float %4159)  ; FMad(a,b,c)
  %4161 = fadd fast float %4158, %4150
  %4162 = fadd fast float %4160, %4151
  %4163 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4164 = bitcast float %4163 to i32
  %4165 = icmp eq i32 %4164, 0
  br i1 %4165, label %4204, label %4166

; <label>:4166                                    ; preds = %4069
  %4167 = add i32 %4164, 0
  %4168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4168, %dx.types.Handle %114, float %4161, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4125, float undef, float %4128, float %4129, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4174 = fsub fast float 1.000000e+00, %3779
  %4175 = call float @dx.op.binary.f32(i32 35, float %4174, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4176 = bitcast float %3779 to i32
  %4177 = sitofp i32 %4176 to float
  %4178 = fadd fast float %4177, 0xC1CFBF8940000000
  %4179 = fmul fast float %4173, %4178
  %4180 = fadd fast float %4179, 0x41CFBF8940000000
  %4181 = fptosi float %4180 to i32
  %4182 = bitcast i32 %4181 to float
  %4183 = bitcast float %4175 to i32
  %4184 = sitofp i32 %4183 to float
  %4185 = fadd fast float %4184, 0xC1CFBF8940000000
  %4186 = fmul fast float %4185, %4173
  %4187 = fadd fast float %4186, 0x41CFBF8940000000
  %4188 = fptosi float %4187 to i32
  %4189 = bitcast i32 %4188 to float
  %4190 = fmul fast float %4182, %4172
  %4191 = fmul fast float %4189, %4172
  %4192 = fsub fast float %4175, %4190
  %4193 = fadd fast float %4191, %4175
  %4194 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4196 = fsub fast float %4170, %4194
  %4197 = fsub fast float %4195, %4194
  %4198 = bitcast float %4197 to i32
  %4199 = sub nsw i32 2129859010, %4198
  %4200 = bitcast i32 %4199 to float
  %4201 = fmul fast float %4200, %4196
  %4202 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4203 = fcmp fast olt float %4202, 0x3F70101020000000
  br i1 %4203, label %4342, label %4204

; <label>:4204                                    ; preds = %4166, %4069
  %4205 = phi float [ %4202, %4166 ], [ %3779, %4069 ]
  %4206 = fmul fast float %4205, %4072
  %4207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.i32 %4207, 1
  %4209 = extractvalue %dx.types.CBufRet.i32 %4207, 0
  %4210 = add i32 %4209, 0
  %4211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4211, %dx.types.Handle %113, float %4161, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4125, float undef, float %4128, float %4129, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = and i32 %4208, 255
  %4218 = uitofp i32 %4217 to float
  %4219 = lshr i32 %4208, 8
  %4220 = and i32 %4219, 255
  %4221 = uitofp i32 %4220 to float
  %4222 = fmul fast float %4216, %4218
  %4223 = fadd fast float %4222, %4221
  %4224 = fmul fast float %4223, 0x3F70101000000000
  %4225 = fadd fast float %4224, 0xBFB99999A0000000
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = fmul fast float %4226, 0x3FF1C71C80000000
  %4228 = call float @dx.op.binary.f32(i32 36, float %4224, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4229 = fsub fast float 1.000000e+00, %4227
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fmul fast float %4230, %4213
  %4232 = fmul fast float %4230, %4214
  %4233 = fmul fast float %4230, %4215
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = fmul fast float %4227, %4213
  %4238 = fmul fast float %4227, %4214
  %4239 = fmul fast float %4227, %4215
  %4240 = fadd fast float %4237, %4228
  %4241 = fadd fast float %4238, %4228
  %4242 = fadd fast float %4239, %4228
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.i32 %4246, 3
  %4248 = extractvalue %dx.types.CBufRet.i32 %4246, 2
  %4249 = add i32 %4248, 0
  %4250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4250, %dx.types.Handle %113, float %4161, float %4162, float undef, float undef, i32 0, i32 0, i32 undef, float %4124, float %4125, float undef, float %4128, float %4129, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = extractvalue %dx.types.ResRet.f32 %4251, 3
  %4256 = and i32 %4247, 255
  %4257 = uitofp i32 %4256 to float
  %4258 = lshr i32 %4247, 8
  %4259 = and i32 %4258, 255
  %4260 = uitofp i32 %4259 to float
  %4261 = lshr i32 %4247, 16
  %4262 = and i32 %4261, 255
  %4263 = uitofp i32 %4262 to float
  %4264 = fmul fast float %4263, 0x3F70101000000000
  %4265 = fmul fast float %4252, %4257
  %4266 = fadd fast float %4265, %4260
  %4267 = fmul fast float %4266, 0x3F70101000000000
  %4268 = fadd fast float %4253, -5.000000e-01
  %4269 = fadd fast float %4255, -5.000000e-01
  %4270 = fmul fast float %4268, %4264
  %4271 = fmul fast float %4269, %4264
  %4272 = fadd fast float %4270, 5.000000e-01
  %4273 = fadd fast float %4271, 5.000000e-01
  %4274 = fmul fast float %4272, 2.000000e+00
  %4275 = fadd fast float %4274, -1.000000e+00
  %4276 = fmul fast float %4273, 2.000000e+00
  %4277 = fadd fast float %4276, -1.000000e+00
  %4278 = fadd fast float %4275, %4277
  %4279 = fmul fast float %4278, 5.000000e-01
  %4280 = fsub fast float %4275, %4277
  %4281 = fmul fast float %4280, 5.000000e-01
  %4282 = call float @dx.op.unary.f32(i32 6, float %4279)  ; FAbs(value)
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4285 = fsub fast float %4283, %4284
  %4286 = call float @dx.op.dot3.f32(i32 55, float %4279, float %4281, float %4285, float %4279, float %4281, float %4285)  ; Dot3(ax,ay,az,bx,by,bz)
  %4287 = call float @dx.op.unary.f32(i32 25, float %4286)  ; Rsqrt(value)
  %4288 = fmul fast float %4279, %4287
  %4289 = fmul fast float %4281, %4287
  %4290 = select i1 %4117, i32 %4107, i32 %4108
  %4291 = select i1 %4115, i32 %4106, i32 %4290
  %4292 = sitofp i32 %4291 to float
  %4293 = fmul fast float %4285, %4292
  %4294 = fmul fast float %4293, %4287
  %4295 = select i1 %4117, float %4294, float %4289
  %4296 = select i1 %4117, float %4289, float %4294
  %4297 = select i1 %4115, float %4294, float %4288
  %4298 = select i1 %4115, float %4289, float %4295
  %4299 = select i1 %4115, float %4288, float %4296
  %4300 = fsub fast float %4234, %4058
  %4301 = fsub fast float %4235, %4059
  %4302 = fsub fast float %4236, %4060
  %4303 = fmul fast float %4300, %4206
  %4304 = fmul fast float %4301, %4206
  %4305 = fmul fast float %4302, %4206
  %4306 = fadd fast float %4303, %4058
  %4307 = fadd fast float %4304, %4059
  %4308 = fadd fast float %4305, %4060
  %4309 = fsub fast float %4243, %4061
  %4310 = fsub fast float %4244, %4062
  %4311 = fsub fast float %4245, %4063
  %4312 = fmul fast float %4309, %4206
  %4313 = fmul fast float %4310, %4206
  %4314 = fmul fast float %4311, %4206
  %4315 = fadd fast float %4312, %4061
  %4316 = fadd fast float %4313, %4062
  %4317 = fadd fast float %4314, %4063
  %4318 = fadd fast float %4297, %4064
  %4319 = fadd fast float %4298, %4065
  %4320 = fadd fast float %4299, %4066
  %4321 = call float @dx.op.dot3.f32(i32 55, float %4318, float %4319, float %4320, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4322 = call float @dx.op.unary.f32(i32 25, float %4321)  ; Rsqrt(value)
  %4323 = fmul fast float %4318, %4322
  %4324 = fmul fast float %4319, %4322
  %4325 = fmul fast float %4320, %4322
  %4326 = fsub fast float %4323, %4064
  %4327 = fsub fast float %4324, %4065
  %4328 = fsub fast float %4325, %4066
  %4329 = fmul fast float %4326, %4206
  %4330 = fmul fast float %4327, %4206
  %4331 = fmul fast float %4328, %4206
  %4332 = fadd fast float %4329, %4064
  %4333 = fadd fast float %4330, %4065
  %4334 = fadd fast float %4331, %4066
  %4335 = call float @dx.op.binary.f32(i32 36, float %4068, float %4254)  ; FMin(a,b)
  %4336 = fsub fast float %4335, %4068
  %4337 = fmul fast float %4336, %4206
  %4338 = fadd fast float %4337, %4068
  %4339 = fsub fast float %4267, %4067
  %4340 = fmul fast float %4339, %4206
  %4341 = fadd fast float %4340, %4067
  br label %4342

; <label>:4342                                    ; preds = %4204, %4166, %4057, %3773
  %4343 = phi float [ %4306, %4204 ], [ %4058, %4166 ], [ %4058, %4057 ], [ %3382, %3773 ]
  %4344 = phi float [ %4307, %4204 ], [ %4059, %4166 ], [ %4059, %4057 ], [ %3383, %3773 ]
  %4345 = phi float [ %4308, %4204 ], [ %4060, %4166 ], [ %4060, %4057 ], [ %3384, %3773 ]
  %4346 = phi float [ %4315, %4204 ], [ %4061, %4166 ], [ %4061, %4057 ], [ %3367, %3773 ]
  %4347 = phi float [ %4316, %4204 ], [ %4062, %4166 ], [ %4062, %4057 ], [ %3368, %3773 ]
  %4348 = phi float [ %4317, %4204 ], [ %4063, %4166 ], [ %4063, %4057 ], [ %3369, %3773 ]
  %4349 = phi float [ %4332, %4204 ], [ %4064, %4166 ], [ %4064, %4057 ], [ %3330, %3773 ]
  %4350 = phi float [ %4333, %4204 ], [ %4065, %4166 ], [ %4065, %4057 ], [ %3331, %3773 ]
  %4351 = phi float [ %4334, %4204 ], [ %4066, %4166 ], [ %4066, %4057 ], [ %3332, %3773 ]
  %4352 = phi float [ %4341, %4204 ], [ %4067, %4166 ], [ %4067, %4057 ], [ %3370, %3773 ]
  %4353 = phi float [ %4338, %4204 ], [ %4068, %4166 ], [ %4068, %4057 ], [ %3342, %3773 ]
  %4354 = fcmp fast une float %3777, 0.000000e+00
  br i1 %4354, label %4355, label %4524

; <label>:4355                                    ; preds = %4342
  %4356 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4357 = call float @dx.op.unary.f32(i32 25, float %4356)  ; Rsqrt(value)
  %4358 = fmul fast float %204, %4357
  %4359 = fsub fast float -0.000000e+00, %4358
  %4360 = fmul fast float %205, %4357
  %4361 = fsub fast float -0.000000e+00, %4360
  %4362 = fmul fast float %206, %4357
  %4363 = fsub fast float -0.000000e+00, %4362
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4359, float %4361, float %4363, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = fmul fast float %3777, 2.500000e+00
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = fmul fast float %3777, 0x4013FFFFE0000000
  %4368 = fadd fast float %4367, 0xBFFFFFFFE0000000
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = fmul fast float %3777, 0x4004000020000000
  %4371 = fadd fast float %4370, 0xBFF8000040000000
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %3349, 1.000000e+01
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4374, 2.000000e+00
  %4376 = fsub fast float 3.000000e+00, %4375
  %4377 = fmul fast float %4374, %4374
  %4378 = fmul fast float %4377, %4376
  %4379 = fsub fast float 1.000000e+00, %4378
  %4380 = fsub fast float 0x3FE3333340000000, %4352
  %4381 = fmul fast float %4380, 0x400AAAAAA0000000
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fmul fast float %4379, %4382
  %4384 = fmul fast float %4343, 0x3FEA2B8620000000
  %4385 = fmul fast float %4344, 0x3FEA2B8620000000
  %4386 = fmul fast float %4345, 0x3FEA2B8620000000
  %4387 = fadd fast float %4384, 0x3FC81DFBA0000000
  %4388 = fmul fast float %4387, %4343
  %4389 = fadd fast float %4388, 0x3F910E6020000000
  %4390 = fadd fast float %4385, 0x3FC81DFBA0000000
  %4391 = fmul fast float %4390, %4344
  %4392 = fadd fast float %4391, 0x3F910E6020000000
  %4393 = fadd fast float %4386, 0x3FC81DFBA0000000
  %4394 = fmul fast float %4393, %4345
  %4395 = fadd fast float %4394, 0x3F910E6020000000
  %4396 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4399 = fsub fast float %4396, %4343
  %4400 = fsub fast float %4397, %4344
  %4401 = fsub fast float %4398, %4345
  %4402 = fmul fast float %4399, %4366
  %4403 = fmul fast float %4402, %4383
  %4404 = fmul fast float %4400, %4366
  %4405 = fmul fast float %4404, %4383
  %4406 = fmul fast float %4401, %4366
  %4407 = fmul fast float %4406, %4383
  %4408 = fadd fast float %4403, %4343
  %4409 = fadd fast float %4405, %4344
  %4410 = fadd fast float %4407, %4345
  %4411 = fmul fast float %4353, %4353
  %4412 = fmul fast float %4411, %4411
  %4413 = fadd fast float %4369, 1.000000e+00
  %4414 = fsub fast float %4413, %4383
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fsub fast float 1.000000e+00, %4412
  %4419 = call float @dx.op.binary.f32(i32 36, float %4415, float %4418)  ; FMin(a,b)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4421 = call float @dx.op.binary.f32(i32 35, float %4419, float %4420)  ; FMax(a,b)
  %4422 = fadd fast float %4417, 0xBFE4CCCCC0000000
  %4423 = fmul fast float %4422, 0x4006DB6DA0000000
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %4424, 2.000000e+00
  %4426 = fsub fast float 3.000000e+00, %4425
  %4427 = bitcast float %4346 to i32
  %4428 = ashr i32 %4427, 1
  %4429 = add nsw i32 %4428, 532487669
  %4430 = bitcast i32 %4429 to float
  %4431 = fsub fast float 1.000000e+00, %4430
  %4432 = bitcast float %4431 to i32
  %4433 = sub nsw i32 2129859010, %4432
  %4434 = bitcast i32 %4433 to float
  %4435 = fmul fast float %4434, 2.000000e+00
  %4436 = bitcast float %4347 to i32
  %4437 = ashr i32 %4436, 1
  %4438 = add nsw i32 %4437, 532487669
  %4439 = bitcast i32 %4438 to float
  %4440 = fsub fast float 1.000000e+00, %4439
  %4441 = bitcast float %4440 to i32
  %4442 = sub nsw i32 2129859010, %4441
  %4443 = bitcast i32 %4442 to float
  %4444 = fmul fast float %4443, 2.000000e+00
  %4445 = bitcast float %4348 to i32
  %4446 = ashr i32 %4445, 1
  %4447 = add nsw i32 %4446, 532487669
  %4448 = bitcast i32 %4447 to float
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = bitcast float %4449 to i32
  %4451 = sub nsw i32 2129859010, %4450
  %4452 = bitcast i32 %4451 to float
  %4453 = fmul fast float %4452, 2.000000e+00
  %4454 = fsub fast float 0x4002A9FBE0000000, %4435
  %4455 = fadd fast float %4435, 0x3FD54FDF00000000
  %4456 = bitcast float %4455 to i32
  %4457 = sub nsw i32 2129859010, %4456
  %4458 = bitcast i32 %4457 to float
  %4459 = fmul fast float %4458, %4454
  %4460 = fmul fast float %4459, %4459
  %4461 = fsub fast float 0x4002A9FBE0000000, %4444
  %4462 = fadd fast float %4444, 0x3FD54FDF00000000
  %4463 = bitcast float %4462 to i32
  %4464 = sub nsw i32 2129859010, %4463
  %4465 = bitcast i32 %4464 to float
  %4466 = fmul fast float %4465, %4461
  %4467 = fmul fast float %4466, %4466
  %4468 = fsub fast float 0x4002A9FBE0000000, %4453
  %4469 = fadd fast float %4453, 0x3FD54FDF00000000
  %4470 = bitcast float %4469 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = fmul fast float %4472, %4468
  %4474 = fmul fast float %4473, %4473
  %4475 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4460)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4467)  ; FMax(a,b)
  %4477 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4474)  ; FMax(a,b)
  %4478 = fsub fast float 1.000000e+00, %4364
  %4479 = fadd fast float %4478, %4379
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fsub fast float 1.000000e+00, %3758
  %4482 = fmul fast float %4421, %4481
  %4483 = fmul fast float %4424, %4424
  %4484 = fmul fast float %4483, %4482
  %4485 = fmul fast float %4484, %4426
  %4486 = fmul fast float %4481, 0xBFE99999A0000000
  %4487 = fmul fast float %4486, %4366
  %4488 = fmul fast float %4487, %4383
  %4489 = fadd fast float %4488, 1.000000e+00
  %4490 = fadd fast float %4352, -1.000000e+00
  %4491 = fmul fast float %4489, %4490
  %4492 = fadd fast float %4491, 1.000000e+00
  %4493 = fsub fast float %4475, %4346
  %4494 = fsub fast float %4476, %4347
  %4495 = fsub fast float %4477, %4348
  %4496 = fmul fast float %4485, %4493
  %4497 = fmul fast float %4485, %4494
  %4498 = fmul fast float %4485, %4495
  %4499 = fadd fast float %4496, %4346
  %4500 = fadd fast float %4497, %4347
  %4501 = fadd fast float %4498, %4348
  %4502 = fsub fast float %124, %4349
  %4503 = fsub fast float %125, %4350
  %4504 = fsub fast float %126, %4351
  %4505 = fmul fast float %4485, %4502
  %4506 = fmul fast float %4485, %4503
  %4507 = fmul fast float %4485, %4504
  %4508 = fadd fast float %4505, %4349
  %4509 = fadd fast float %4506, %4350
  %4510 = fadd fast float %4507, %4351
  %4511 = fmul fast float %4485, %4480
  %4512 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = fmul fast float %4511, %4513
  %4515 = fadd fast float %4514, %4512
  %4516 = fsub fast float 1.000000e+00, %4353
  %4517 = fmul fast float %4485, %4516
  %4518 = fadd fast float %4517, %4353
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float %4508, float %4509, float %4510)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = call float @dx.op.unary.f32(i32 25, float %4519)  ; Rsqrt(value)
  %4521 = fmul fast float %4508, %4520
  %4522 = fmul fast float %4509, %4520
  %4523 = fmul fast float %4510, %4520
  br label %4524

; <label>:4524                                    ; preds = %4355, %4342
  %4525 = phi float [ %4408, %4355 ], [ %4343, %4342 ]
  %4526 = phi float [ %4409, %4355 ], [ %4344, %4342 ]
  %4527 = phi float [ %4410, %4355 ], [ %4345, %4342 ]
  %4528 = phi float [ %4499, %4355 ], [ %4346, %4342 ]
  %4529 = phi float [ %4500, %4355 ], [ %4347, %4342 ]
  %4530 = phi float [ %4501, %4355 ], [ %4348, %4342 ]
  %4531 = phi float [ %4521, %4355 ], [ %4349, %4342 ]
  %4532 = phi float [ %4522, %4355 ], [ %4350, %4342 ]
  %4533 = phi float [ %4523, %4355 ], [ %4351, %4342 ]
  %4534 = phi float [ %4515, %4355 ], [ %4352, %4342 ]
  %4535 = phi float [ %4518, %4355 ], [ %4353, %4342 ]
  %4536 = icmp eq i32 %63, 0
  br i1 %4536, label %4567, label %4537

; <label>:4537                                    ; preds = %4524
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4540 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4541 = fmul fast float %4539, %117
  %4542 = fmul fast float %4540, %118
  %4543 = fmul fast float %4541, 1.024000e+03
  %4544 = fmul fast float %4542, 1.024000e+03
  %4545 = fadd fast float %4543, -5.120000e+02
  %4546 = fadd fast float %4544, -5.120000e+02
  %4547 = fmul fast float %4541, 0x4081BEDF00000000
  %4548 = fadd fast float %4547, 0xC071BEDF00000000
  %4549 = call float @dx.op.unary.f32(i32 22, float %4548)  ; Frc(value)
  %4550 = fmul fast float %4545, %4549
  %4551 = fadd fast float %4550, %4546
  %4552 = fmul fast float %4542, 0x4073BEBE20000000
  %4553 = fadd fast float %4552, 0xC063BEBE20000000
  %4554 = call float @dx.op.unary.f32(i32 22, float %4553)  ; Frc(value)
  %4555 = fmul fast float %4546, %4554
  %4556 = fadd fast float %4555, %4545
  %4557 = fmul fast float %4551, %4556
  %4558 = call float @dx.op.unary.f32(i32 22, float %4557)  ; Frc(value)
  %4559 = add i32 %305, 12
  %4560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.i32 %4560, 0
  %4562 = and i32 %4561, 255
  %4563 = uitofp i32 %4562 to float
  %4564 = fmul fast float %4563, 0x3F70101020000000
  %4565 = fcmp fast olt float %4558, %4564
  br i1 %4565, label %4566, label %4567

; <label>:4566                                    ; preds = %4537
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4567

; <label>:4567                                    ; preds = %4566, %4537, %4524
  %4568 = fsub fast float -0.000000e+00, %206
  %4569 = call float @dx.op.dot3.f32(i32 55, float %204, float %205, float %206, float %204, float %205, float %206)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.unary.f32(i32 25, float %4569)  ; Rsqrt(value)
  %4571 = fmul fast float %4570, %204
  %4572 = fmul fast float %4570, %205
  %4573 = fmul fast float %4570, %206
  %4574 = fsub fast float -0.000000e+00, %4571
  %4575 = fsub fast float -0.000000e+00, %4572
  %4576 = fsub fast float -0.000000e+00, %4573
  %4577 = select i1 %263, float 0.000000e+00, float %4530
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4574, float %4575, float %4576)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = call float @dx.op.dot3.f32(i32 55, float %4571, float %4572, float %4573, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4581 = fmul fast float %4580, 2.000000e+00
  %4582 = fmul fast float %4581, %4531
  %4583 = fmul fast float %4581, %4532
  %4584 = fmul fast float %4581, %4533
  %4585 = fsub fast float %4571, %4582
  %4586 = fsub fast float %4572, %4583
  %4587 = fsub fast float %4573, %4584
  %4588 = call float @dx.op.binary.f32(i32 36, float %4535, float 1.000000e+00)  ; FMin(a,b)
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = bitcast float %4589 to i32
  %4591 = ashr i32 %4590, 1
  %4592 = add nsw i32 %4591, 532487669
  %4593 = bitcast i32 %4592 to float
  %4594 = fsub fast float 1.000000e+00, %4534
  %4595 = call float @dx.op.binary.f32(i32 35, float %4594, float 0x3F847AE140000000)  ; FMax(a,b)
  %4596 = fmul fast float %4595, %4595
  %4597 = fmul fast float %4596, %4596
  %4598 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %56, float %4593, float %4597, float %4598, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = fsub fast float 1.000000e+00, %4535
  %4602 = bitcast float %4601 to i32
  %4603 = sub nsw i32 2129859010, %4602
  %4604 = bitcast i32 %4603 to float
  %4605 = fsub fast float 1.000000e+00, %84
  %4606 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.binary.f32(i32 35, float %4606, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4608 = fdiv fast float %4605, %4607
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = fmul fast float %4610, 5.000000e-01
  %4612 = fadd fast float %4611, 5.000000e-01
  %4613 = fmul fast float %4612, %84
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = fmul fast float %4615, %4608
  %4617 = fadd fast float %4613, %4616
  %4618 = fsub fast float 5.000000e-01, %4611
  %4619 = fmul fast float %4618, %4525
  %4620 = fmul fast float %4618, %4526
  %4621 = fmul fast float %4618, %4527
  %4622 = fadd fast float %4617, %4619
  %4623 = fadd fast float %4617, %4620
  %4624 = fadd fast float %4617, %4621
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4587, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4626, 5.000000e-01
  %4628 = fadd fast float %4627, 5.000000e-01
  %4629 = fmul fast float %4628, %84
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4587, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fmul fast float %4631, %4608
  %4633 = fadd fast float %4629, %4632
  %4634 = fsub fast float 5.000000e-01, %4627
  %4635 = fmul fast float %4634, %4525
  %4636 = fmul fast float %4634, %4526
  %4637 = fmul fast float %4634, %4527
  %4638 = fadd fast float %4633, %4635
  %4639 = fadd fast float %4633, %4636
  %4640 = fadd fast float %4633, %4637
  %4641 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = call float @dx.op.binary.f32(i32 36, float %4525, float %4643)  ; FMin(a,b)
  %4645 = fmul fast float %4644, %4589
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = bitcast float %4646 to i32
  %4648 = sub nsw i32 2129859010, %4647
  %4649 = bitcast i32 %4648 to float
  %4650 = call float @dx.op.binary.f32(i32 36, float %4526, float %4643)  ; FMin(a,b)
  %4651 = fmul fast float %4650, %4589
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = bitcast float %4652 to i32
  %4654 = sub nsw i32 2129859010, %4653
  %4655 = bitcast i32 %4654 to float
  %4656 = call float @dx.op.binary.f32(i32 36, float %4527, float %4643)  ; FMin(a,b)
  %4657 = fmul fast float %4656, %4589
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4588, %85
  %4663 = fmul fast float %4662, %4622
  %4664 = fmul fast float %4663, %4649
  %4665 = fmul fast float %4588, %86
  %4666 = fmul fast float %4665, %4623
  %4667 = fmul fast float %4666, %4655
  %4668 = fmul fast float %4588, %87
  %4669 = fmul fast float %4668, %4624
  %4670 = fmul fast float %4669, %4661
  %4671 = call float @dx.op.binary.f32(i32 36, float %4528, float %4643)  ; FMin(a,b)
  %4672 = fmul fast float %4671, %4589
  %4673 = fsub fast float 1.000000e+00, %4672
  %4674 = bitcast float %4673 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = call float @dx.op.binary.f32(i32 36, float %4529, float %4643)  ; FMin(a,b)
  %4678 = fmul fast float %4677, %4589
  %4679 = fsub fast float 1.000000e+00, %4678
  %4680 = bitcast float %4679 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = bitcast i32 %4681 to float
  %4683 = call float @dx.op.binary.f32(i32 36, float %4577, float %4643)  ; FMin(a,b)
  %4684 = fmul fast float %4683, %4589
  %4685 = fsub fast float 1.000000e+00, %4684
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = bitcast i32 %4687 to float
  %4689 = fmul fast float %4662, %4638
  %4690 = fmul fast float %4689, %4676
  %4691 = fmul fast float %4665, %4639
  %4692 = fmul fast float %4691, %4682
  %4693 = fmul fast float %4668, %4640
  %4694 = fmul fast float %4693, %4688
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4667, float %4670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = select i1 %263, float 0.000000e+00, float %4664
  %4697 = select i1 %263, float %4695, float %4667
  %4698 = select i1 %263, float 0.000000e+00, float %4670
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4690, float %4692, float %4694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = select i1 %263, float 0.000000e+00, float %4690
  %4701 = select i1 %263, float %4699, float %4692
  %4702 = select i1 %263, float 0.000000e+00, float %4694
  %4703 = fmul fast float %4579, 9.843750e-01
  %4704 = fmul fast float %4534, 9.843750e-01
  %4705 = fadd fast float %4703, 7.812500e-03
  %4706 = fadd fast float %4704, 7.812500e-03
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %4705, float %4706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 3
  %4710 = fmul fast float %4708, %4528
  %4711 = fmul fast float %4708, %4529
  %4712 = fmul fast float %4708, %4577
  %4713 = fadd fast float %4710, %4709
  %4714 = fadd fast float %4711, %4709
  %4715 = fadd fast float %4712, %4709
  %4716 = fcmp fast ogt float %3343, 0.000000e+00
  br i1 %4716, label %4717, label %4743

; <label>:4717                                    ; preds = %4567
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3343, float %4579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.ResRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.ResRet.f32 %4718, 2
  %4722 = fadd fast float %4719, -5.000000e-01
  %4723 = fadd fast float %4720, -5.000000e-01
  %4724 = fadd fast float %4721, -5.000000e-01
  %4725 = fsub fast float 1.000000e+00, %4528
  %4726 = fsub fast float 1.000000e+00, %4529
  %4727 = fsub fast float 1.000000e+00, %4577
  %4728 = fmul fast float %4528, 4.000000e+00
  %4729 = fmul fast float %4728, %4725
  %4730 = fmul fast float %4729, %4722
  %4731 = fmul fast float %4529, 4.000000e+00
  %4732 = fmul fast float %4731, %4726
  %4733 = fmul fast float %4732, %4723
  %4734 = fmul fast float %4577, 4.000000e+00
  %4735 = fmul fast float %4734, %4727
  %4736 = fmul fast float %4735, %4724
  %4737 = fadd fast float %4730, %4713
  %4738 = fadd fast float %4733, %4714
  %4739 = fadd fast float %4736, %4715
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4741 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4742 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  br label %4743

; <label>:4743                                    ; preds = %4717, %4567
  %4744 = phi float [ %4740, %4717 ], [ %4713, %4567 ]
  %4745 = phi float [ %4741, %4717 ], [ %4714, %4567 ]
  %4746 = phi float [ %4742, %4717 ], [ %4715, %4567 ]
  %4747 = call float @dx.op.binary.f32(i32 35, float %4745, float %4746)  ; FMax(a,b)
  %4748 = call float @dx.op.binary.f32(i32 35, float %4744, float %4747)  ; FMax(a,b)
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = fmul fast float %4748, %4534
  %4751 = fadd fast float %4750, %4534
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 3
  %4755 = fmul fast float %4751, %4753
  %4756 = fadd fast float %4755, %4754
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = fsub fast float 1.000000e+00, %4600
  %4759 = fadd fast float %4758, %4757
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fcmp fast olt float %4760, 1.000000e+00
  br i1 %4761, label %4762, label %5238

; <label>:4762                                    ; preds = %4743
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4765 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4766 = fmul fast float %4764, %117
  %4767 = fmul fast float %4765, %118
  %4768 = fptoui float %4766 to i32
  %4769 = fptoui float %4767 to i32
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4773 = extractvalue %dx.types.CBufRet.f32 %4770, 3
  %4774 = fadd fast float %104, -4.000000e+00
  %4775 = call float @dx.op.binary.f32(i32 35, float %4774, float 0.000000e+00)  ; FMax(a,b)
  %4776 = fadd fast float %4775, %4771
  %4777 = fmul fast float %4776, %4772
  %4778 = call float @dx.op.unary.f32(i32 23, float %4777)  ; Log(value)
  %4779 = fmul fast float %4778, %4773
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4782 = fmul fast float %4779, %4781
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.i32 %4784, 1
  %4786 = add i32 %4785, -1
  %4787 = uitofp i32 %4785 to float
  %4788 = fmul fast float %4787, %4783
  %4789 = fptoui float %4788 to i32
  %4790 = call i32 @dx.op.binary.i32(i32 40, i32 %4789, i32 %4786)  ; UMin(a,b)
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 2
  %4793 = extractvalue %dx.types.CBufRet.i32 %4791, 3
  %4794 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4769, i32 %4792, i32 %4768)  ; UMad(a,b,c)
  %4795 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4790, i32 %4793, i32 %4794)  ; UMad(a,b,c)
  %4796 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %4797 = fptoui float %4796 to i32
  %4798 = lshr i32 %4797, 5
  %4799 = call i32 @dx.op.binary.i32(i32 40, i32 %4798, i32 8191)  ; UMin(a,b)
  %4800 = fsub fast float %3745, %206
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fcmp fast ogt float %4801, 0.000000e+00
  %4803 = fcmp fast ogt float %4587, 0.000000e+00
  %4804 = and i1 %4803, %4802
  br i1 %4804, label %4805, label %4834

; <label>:4805                                    ; preds = %4762
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4587, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float -1.000000e+00)  ; FMax(a,b)
  %4808 = call float @dx.op.binary.f32(i32 36, float %4807, float 1.000000e+00)  ; FMin(a,b)
  %4809 = fmul fast float %4808, %4808
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4810, 0x3FFC6E2300000000
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = fcmp fast ogt float %4812, 0.000000e+00
  %4814 = call float @dx.op.unary.f32(i32 24, float %4812)  ; Sqrt(value)
  %4815 = fsub fast float 1.000000e+00, %4814
  %4816 = call float @dx.op.unary.f32(i32 23, float %4815)  ; Log(value)
  %4817 = fmul fast float %4816, 5.000000e+00
  %4818 = call float @dx.op.unary.f32(i32 21, float %4817)  ; Exp(value)
  %4819 = fmul fast float %4818, 0x3FEF591A60000000
  %4820 = fadd fast float %4819, 0x3F94DCB540000000
  %4821 = select i1 %4813, float %4820, float 1.000000e+00
  %4822 = fcmp fast oge float %4821, 1.000000e+00
  %4823 = fmul fast float %4806, 2.000000e+00
  %4824 = fadd fast float %4823, %4587
  %4825 = select i1 %4822, float %4824, float %4587
  %4826 = fsub fast float %4825, %4587
  %4827 = fmul fast float %4826, %4801
  %4828 = fadd fast float %4827, %4587
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4585, float %4586, float %4828, float %4585, float %4586, float %4828)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = call float @dx.op.unary.f32(i32 25, float %4829)  ; Rsqrt(value)
  %4831 = fmul fast float %4830, %4585
  %4832 = fmul fast float %4830, %4586
  %4833 = fmul fast float %4828, %4830
  br label %4834

; <label>:4834                                    ; preds = %4805, %4762
  %4835 = phi float [ %4831, %4805 ], [ %4585, %4762 ]
  %4836 = phi float [ %4832, %4805 ], [ %4586, %4762 ]
  %4837 = phi float [ %4833, %4805 ], [ %4587, %4762 ]
  %4838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.i32 %4838, 2
  %4840 = add nsw i32 %4839, -1
  %4841 = call i32 @dx.op.binary.i32(i32 37, i32 %4840, i32 0)  ; IMax(a,b)
  %4842 = shl i32 %4799, 2
  %4843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %4842, i32 undef)  ; BufferLoad(srv,index,wot)
  %4844 = extractvalue %dx.types.ResRet.i32 %4843, 0
  %4845 = lshr i32 %4844, 16
  %4846 = and i32 %4844, 65535
  %4847 = lshr i32 %4844, 21
  %4848 = lshr i32 %4846, 5
  %4849 = call i32 @dx.op.binary.i32(i32 40, i32 %4848, i32 %4841)  ; UMin(a,b)
  %4850 = icmp ugt i32 %4847, %4849
  br i1 %4850, label %5214, label %4851

; <label>:4851                                    ; preds = %4834
  br label %4852

; <label>:4852                                    ; preds = %5206, %4851
  %4853 = phi float [ %5207, %5206 ], [ 0.000000e+00, %4851 ]
  %4854 = phi float [ %5208, %5206 ], [ 0.000000e+00, %4851 ]
  %4855 = phi float [ %5209, %5206 ], [ 0.000000e+00, %4851 ]
  %4856 = phi float [ %5210, %5206 ], [ 1.000000e+00, %4851 ]
  %4857 = phi i32 [ %5211, %5206 ], [ %4847, %4851 ]
  %4858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.i32 %4858, 2
  %4860 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4795, i32 %4859, i32 %4857)  ; UMad(a,b,c)
  %4861 = shl i32 %4860, 2
  %4862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %4861, i32 undef)  ; BufferLoad(srv,index,wot)
  %4863 = extractvalue %dx.types.ResRet.i32 %4862, 0
  %4864 = shl i32 %4857, 5
  %4865 = sub nsw i32 %4845, %4864
  %4866 = call i32 @dx.op.binary.i32(i32 37, i32 %4865, i32 0)  ; IMax(a,b)
  %4867 = call i32 @dx.op.binary.i32(i32 38, i32 %4866, i32 31)  ; IMin(a,b)
  %4868 = sub nsw i32 1, %4845
  %4869 = add nsw i32 %4868, %4846
  %4870 = call i32 @dx.op.binary.i32(i32 37, i32 %4869, i32 0)  ; IMax(a,b)
  %4871 = call i32 @dx.op.binary.i32(i32 38, i32 %4870, i32 32)  ; IMin(a,b)
  %4872 = and i32 %4871, 31
  %4873 = shl i32 -1, %4872
  %4874 = xor i32 %4873, -1
  %4875 = and i32 %4867, 31
  %4876 = shl i32 %4874, %4875
  %4877 = icmp eq i32 %4871, 32
  %4878 = select i1 %4877, i32 -1, i32 %4876
  %4879 = and i32 %4878, %4863
  %4880 = icmp eq i32 %4879, 0
  br i1 %4880, label %5206, label %4881

; <label>:4881                                    ; preds = %4852
  br label %4882

; <label>:4882                                    ; preds = %4989, %4881
  %4883 = phi float [ %4990, %4989 ], [ %4853, %4881 ]
  %4884 = phi float [ %4991, %4989 ], [ %4854, %4881 ]
  %4885 = phi float [ %4992, %4989 ], [ %4855, %4881 ]
  %4886 = phi float [ %4993, %4989 ], [ %4856, %4881 ]
  %4887 = phi i32 [ %4892, %4989 ], [ %4879, %4881 ]
  %4888 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4887)  ; FirstbitLo(value)
  %4889 = add i32 %4888, %4864
  %4890 = and i32 %4888, 31
  %4891 = shl i32 1, %4890
  %4892 = xor i32 %4891, %4887
  %4893 = mul i32 %4889, 72
  %4894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.ResRet.f32 %4894, 2
  %4898 = add i32 %4893, 12
  %4899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %4898, i32 undef)  ; BufferLoad(srv,index,wot)
  %4900 = extractvalue %dx.types.ResRet.i32 %4899, 0
  %4901 = add i32 %4893, 16
  %4902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = add i32 %4893, 28
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = add i32 %4893, 32
  %4910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4909, i32 undef)  ; BufferLoad(srv,index,wot)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.ResRet.f32 %4910, 1
  %4913 = extractvalue %dx.types.ResRet.f32 %4910, 2
  %4914 = extractvalue %dx.types.ResRet.f32 %4910, 3
  %4915 = add i32 %4893, 48
  %4916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4915, i32 undef)  ; BufferLoad(srv,index,wot)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.ResRet.f32 %4916, 1
  %4919 = add i32 %4893, 56
  %4920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4919, i32 undef)  ; BufferLoad(srv,index,wot)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = extractvalue %dx.types.ResRet.f32 %4920, 1
  %4923 = add i32 %4893, 64
  %4924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %4923, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4927 = mul i32 %4889, 60
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = add i32 %4927, 12
  %4933 = add i32 %4927, 48
  %4934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4933, i32 undef)  ; BufferLoad(srv,index,wot)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 0
  %4936 = extractvalue %dx.types.ResRet.f32 %4934, 1
  %4937 = extractvalue %dx.types.ResRet.f32 %4934, 2
  %4938 = and i32 %4900, 32767
  %4939 = bitcast float %4895 to i32
  %4940 = icmp eq i32 %4939, -1
  %4941 = bitcast float %4896 to i32
  %4942 = and i32 %4900, 32768
  %4943 = icmp ne i32 %4942, 0
  %4944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.CBufRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4944, 2
  %4948 = fsub fast float %4929, %4945
  %4949 = fsub fast float %4930, %4946
  %4950 = fsub fast float %4931, %4947
  %4951 = fsub fast float %204, %4948
  %4952 = fsub fast float %205, %4949
  %4953 = fsub fast float %206, %4950
  %4954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.ResRet.f32 %4954, 1
  %4957 = extractvalue %dx.types.ResRet.f32 %4954, 2
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4955, float %4956, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = add i32 %4927, 24
  %4960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4959, i32 undef)  ; BufferLoad(srv,index,wot)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4961, float %4962, float %4963)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = add i32 %4927, 36
  %4966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %4965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.ResRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.ResRet.f32 %4966, 2
  %4970 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4967, float %4968, float %4969)  ; Dot3(ax,ay,az,bx,by,bz)
  %4971 = call float @dx.op.unary.f32(i32 6, float %4958)  ; FAbs(value)
  %4972 = call float @dx.op.unary.f32(i32 6, float %4964)  ; FAbs(value)
  %4973 = call float @dx.op.unary.f32(i32 6, float %4970)  ; FAbs(value)
  %4974 = fsub fast float %4935, %4971
  %4975 = fsub fast float %4936, %4972
  %4976 = fsub fast float %4937, %4973
  %4977 = fmul fast float %4974, %4903
  %4978 = fmul fast float %4975, %4904
  %4979 = fmul fast float %4976, %4905
  %4980 = call float @dx.op.binary.f32(i32 36, float %4978, float %4979)  ; FMin(a,b)
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float %4980)  ; FMin(a,b)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = call float @dx.op.binary.f32(i32 36, float %4886, float %4982)  ; FMin(a,b)
  %4984 = uitofp i1 %4943 to float
  %4985 = fadd fast float %4801, 1.000000e+00
  %4986 = fsub fast float %4985, %4984
  %4987 = fmul fast float %4983, %4986
  %4988 = fcmp fast ogt float %4987, 0.000000e+00
  br i1 %4988, label %4995, label %4989

; <label>:4989                                    ; preds = %5137, %4882
  %4990 = phi float [ %5201, %5137 ], [ %4883, %4882 ]
  %4991 = phi float [ %5202, %5137 ], [ %4884, %4882 ]
  %4992 = phi float [ %5203, %5137 ], [ %4885, %4882 ]
  %4993 = phi float [ %5204, %5137 ], [ %4886, %4882 ]
  %4994 = icmp eq i32 %4887, %4891
  br i1 %4994, label %5205, label %4882

; <label>:4995                                    ; preds = %4882
  br i1 %4940, label %5053, label %4996

; <label>:4996                                    ; preds = %4995
  %4997 = fsub fast float -0.000000e+00, %4955
  %4998 = fsub fast float -0.000000e+00, %4956
  %4999 = fsub fast float -0.000000e+00, %4957
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = fsub fast float -0.000000e+00, %5000
  %5002 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5003 = fadd fast float %5002, %4918
  %5004 = fadd fast float %4917, %5002
  %5005 = fsub fast float -0.000000e+00, %5004
  %5006 = fcmp ogt float %5000, -0.000000e+00
  %5007 = select i1 %5006, float %5005, float %5003
  %5008 = call float @dx.op.unary.f32(i32 6, float %5001)  ; FAbs(value)
  %5009 = fdiv fast float 1.000000e+00, %5008
  %5010 = fmul fast float %5007, %5009
  %5011 = call float @dx.op.binary.f32(i32 35, float %5010, float 0.000000e+00)  ; FMax(a,b)
  %5012 = fsub fast float -0.000000e+00, %4961
  %5013 = fsub fast float -0.000000e+00, %4962
  %5014 = fsub fast float -0.000000e+00, %4963
  %5015 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5016 = fsub fast float -0.000000e+00, %5015
  %5017 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = fadd fast float %5017, %4922
  %5019 = fadd fast float %4921, %5017
  %5020 = fsub fast float -0.000000e+00, %5019
  %5021 = fcmp ogt float %5015, -0.000000e+00
  %5022 = select i1 %5021, float %5020, float %5018
  %5023 = call float @dx.op.unary.f32(i32 6, float %5016)  ; FAbs(value)
  %5024 = fdiv fast float 1.000000e+00, %5023
  %5025 = fmul fast float %5022, %5024
  %5026 = call float @dx.op.binary.f32(i32 35, float %5025, float 0.000000e+00)  ; FMax(a,b)
  %5027 = fsub fast float -0.000000e+00, %4967
  %5028 = fsub fast float -0.000000e+00, %4968
  %5029 = fsub fast float -0.000000e+00, %4969
  %5030 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = fsub fast float -0.000000e+00, %5030
  %5032 = call float @dx.op.dot3.f32(i32 55, float %4951, float %4952, float %4953, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = fadd fast float %5032, %4926
  %5034 = fadd fast float %4925, %5032
  %5035 = fsub fast float -0.000000e+00, %5034
  %5036 = fcmp ogt float %5030, -0.000000e+00
  %5037 = select i1 %5036, float %5035, float %5033
  %5038 = call float @dx.op.unary.f32(i32 6, float %5031)  ; FAbs(value)
  %5039 = fdiv fast float 1.000000e+00, %5038
  %5040 = fmul fast float %5037, %5039
  %5041 = call float @dx.op.binary.f32(i32 35, float %5040, float 0.000000e+00)  ; FMax(a,b)
  %5042 = call float @dx.op.binary.f32(i32 36, float %5026, float %5041)  ; FMin(a,b)
  %5043 = call float @dx.op.binary.f32(i32 36, float %5011, float %5042)  ; FMin(a,b)
  %5044 = fmul fast float %5043, %4835
  %5045 = fmul fast float %5043, %4836
  %5046 = fmul fast float %5043, %4837
  %5047 = fadd fast float %5044, %204
  %5048 = fadd fast float %5045, %205
  %5049 = fadd fast float %5046, %206
  %5050 = fsub fast float %5047, %4895
  %5051 = fsub fast float %5048, %4896
  %5052 = fsub fast float %5049, %4897
  br label %5060

; <label>:5053                                    ; preds = %4995
  %5054 = fmul fast float %4835, 8.096000e+03
  %5055 = fmul fast float %4836, 8.096000e+03
  %5056 = fmul fast float %4837, 8.096000e+03
  %5057 = fadd fast float %5054, %204
  %5058 = fadd fast float %5055, %205
  %5059 = fadd fast float %5056, %206
  br label %5060

; <label>:5060                                    ; preds = %5053, %4996
  %5061 = phi float [ %4835, %5053 ], [ %5050, %4996 ]
  %5062 = phi float [ %4836, %5053 ], [ %5051, %4996 ]
  %5063 = phi float [ %4837, %5053 ], [ %5052, %4996 ]
  %5064 = phi float [ %5057, %5053 ], [ %5047, %4996 ]
  %5065 = phi float [ %5058, %5053 ], [ %5048, %4996 ]
  %5066 = phi float [ %5059, %5053 ], [ %5049, %4996 ]
  %5067 = fcmp fast olt float %4914, 1.000000e+00
  br i1 %5067, label %5068, label %5099, !dx.controlflow.hints !104

; <label>:5068                                    ; preds = %5060
  %5069 = fmul fast float %5063, %4912
  %5070 = fmul fast float %5062, %4913
  %5071 = fsub fast float %5069, %5070
  %5072 = fmul fast float %5061, %4913
  %5073 = fmul fast float %5063, %4911
  %5074 = fsub fast float %5072, %5073
  %5075 = fmul fast float %5062, %4911
  %5076 = fmul fast float %5061, %4912
  %5077 = fsub fast float %5075, %5076
  %5078 = fmul fast float %5071, 2.000000e+00
  %5079 = fmul fast float %5074, 2.000000e+00
  %5080 = fmul fast float %5077, 2.000000e+00
  %5081 = fmul fast float %5078, %4914
  %5082 = fmul fast float %5079, %4914
  %5083 = fmul fast float %5080, %4914
  %5084 = fmul fast float %5080, %4912
  %5085 = fmul fast float %5079, %4913
  %5086 = fmul fast float %5078, %4913
  %5087 = fmul fast float %5080, %4911
  %5088 = fmul fast float %5079, %4911
  %5089 = fmul fast float %5078, %4912
  %5090 = fadd fast float %5084, %5061
  %5091 = fadd fast float %5090, %5081
  %5092 = fsub fast float %5091, %5085
  %5093 = fsub fast float %5062, %5087
  %5094 = fadd fast float %5093, %5082
  %5095 = fadd fast float %5094, %5086
  %5096 = fadd fast float %5083, %5063
  %5097 = fsub fast float %5096, %5089
  %5098 = fadd fast float %5097, %5088
  br label %5099

; <label>:5099                                    ; preds = %5068, %5060
  %5100 = phi float [ %5092, %5068 ], [ %5061, %5060 ]
  %5101 = phi float [ %5095, %5068 ], [ %5062, %5060 ]
  %5102 = phi float [ %5098, %5068 ], [ %5063, %5060 ]
  br i1 %4940, label %5134, label %5103

; <label>:5103                                    ; preds = %5099
  %5104 = fmul fast float %4534, 0x400187C840000000
  %5105 = fadd fast float %5104, 0xC00EFC2120000000
  %5106 = fmul fast float %5105, %4534
  %5107 = fadd fast float %5106, 0x3FE5D16340000000
  %5108 = fmul fast float %5107, %4534
  %5109 = fadd fast float %5108, 1.000000e+00
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fsub fast float %5064, %204
  %5112 = fsub fast float %5065, %205
  %5113 = fsub fast float %5066, %206
  %5114 = fsub fast float %5064, %4895
  %5115 = fsub fast float %5065, %4896
  %5116 = fsub fast float %5066, %4897
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float %5111, float %5112, float %5113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.dot3.f32(i32 55, float %5114, float %5115, float %5116, float %5114, float %5115, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5119 = fadd fast float %5118, 0x3EE4F8B580000000
  %5120 = fdiv fast float %5117, %5119
  %5121 = bitcast float %5120 to i32
  %5122 = ashr i32 %5121, 1
  %5123 = add nsw i32 %5122, 532487669
  %5124 = bitcast i32 %5123 to float
  %5125 = fmul fast float %5124, %5110
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fmul fast float %5126, 0x4009981AE0000000
  %5128 = fsub fast float 0x40111BBD80000000, %5127
  %5129 = fmul fast float %5128, %5126
  %5130 = fadd fast float %5129, 0xC0009F6020000000
  %5131 = fmul fast float %5130, %5126
  %5132 = fadd fast float %5131, 1.000000e+00
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  br label %5137

; <label>:5134                                    ; preds = %5099
  %5135 = icmp ne i32 %4941, -1
  %5136 = zext i1 %5135 to i32
  br label %5137

; <label>:5137                                    ; preds = %5134, %5103
  %5138 = phi float [ %4534, %5134 ], [ %5133, %5103 ]
  %5139 = phi i32 [ %5136, %5134 ], [ 0, %5103 ]
  %5140 = fmul float %5138, 5.000000e+00
  %5141 = fsub float 5.000000e+00, %5140
  %5142 = icmp ne i32 %5139, 0
  %5143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5144 = extractvalue %dx.types.CBufRet.f32 %5143, 3
  %5145 = fadd fast float %5144, %5141
  %5146 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5145)  ; FMax(a,b)
  %5147 = call float @dx.op.unary.f32(i32 6, float %5100)  ; FAbs(value)
  %5148 = call float @dx.op.unary.f32(i32 6, float %5101)  ; FAbs(value)
  %5149 = fadd fast float %5148, %5147
  %5150 = call float @dx.op.unary.f32(i32 6, float %5102)  ; FAbs(value)
  %5151 = fadd fast float %5149, %5150
  %5152 = fcmp fast oeq float %5151, 0.000000e+00
  %5153 = fdiv fast float 1.000000e+00, %5151
  %5154 = select i1 %5152, float 1.000000e+00, float %5153
  %5155 = fmul fast float %5154, %5100
  %5156 = fmul fast float %5154, %5101
  %5157 = call float @dx.op.unary.f32(i32 6, float %5156)  ; FAbs(value)
  %5158 = call float @dx.op.unary.f32(i32 6, float %5155)  ; FAbs(value)
  %5159 = fsub fast float 1.000000e+00, %5157
  %5160 = fsub fast float 1.000000e+00, %5158
  %5161 = fcmp fast oge float %5155, 0.000000e+00
  %5162 = fcmp fast oge float %5156, 0.000000e+00
  %5163 = select i1 %5161, float 1.000000e+00, float -1.000000e+00
  %5164 = select i1 %5162, float 1.000000e+00, float -1.000000e+00
  %5165 = fcmp fast ole float %5102, 0.000000e+00
  %5166 = fmul fast float %5163, %5159
  %5167 = fmul fast float %5164, %5160
  %5168 = select i1 %5165, float %5166, float %5155
  %5169 = select i1 %5165, float %5167, float %5156
  %5170 = fmul fast float %5168, 5.000000e-01
  %5171 = fmul fast float %5169, 5.000000e-01
  %5172 = fadd fast float %5170, 5.000000e-01
  %5173 = fadd fast float %5171, 5.000000e-01
  %5174 = uitofp i32 %4938 to float
  %5175 = call float @dx.op.binary.f32(i32 36, float %5146, float 3.000000e+00)  ; FMin(a,b)
  %5176 = fadd fast float %5175, 2.000000e+00
  %5177 = call float @dx.op.unary.f32(i32 21, float %5176)  ; Exp(value)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5143, 1
  %5179 = fmul fast float %5178, %5177
  %5180 = fmul fast float %5179, 2.000000e+00
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = fmul fast float %5172, %5181
  %5183 = fmul fast float %5173, %5181
  %5184 = fadd fast float %5182, %5179
  %5185 = fadd fast float %5183, %5179
  %5186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %54, float %5184, float %5185, float %5174, float undef, i32 0, i32 0, i32 undef, float %5146)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = extractvalue %dx.types.ResRet.f32 %5186, 1
  %5189 = extractvalue %dx.types.ResRet.f32 %5186, 2
  %5190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.f32 %5190, 3
  %5192 = fmul fast float %5191, %4908
  %5193 = call float @dx.op.binary.f32(i32 36, float %4641, float %5192)  ; FMin(a,b)
  %5194 = select i1 %5142, float %5193, float %5192
  %5195 = fmul fast float %5187, %4987
  %5196 = fmul fast float %5195, %5194
  %5197 = fmul fast float %5188, %4987
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %5189, %4987
  %5200 = fmul fast float %5199, %5194
  %5201 = fadd fast float %5196, %4883
  %5202 = fadd fast float %5198, %4884
  %5203 = fadd fast float %5200, %4885
  %5204 = fsub fast float %4886, %4987
  br label %4989

; <label>:5205                                    ; preds = %4989
  br label %5206

; <label>:5206                                    ; preds = %5205, %4852
  %5207 = phi float [ %4853, %4852 ], [ %4990, %5205 ]
  %5208 = phi float [ %4854, %4852 ], [ %4991, %5205 ]
  %5209 = phi float [ %4855, %4852 ], [ %4992, %5205 ]
  %5210 = phi float [ %4856, %4852 ], [ %4993, %5205 ]
  %5211 = add i32 %4857, 1
  %5212 = icmp ugt i32 %5211, %4849
  br i1 %5212, label %5213, label %4852, !llvm.loop !105

; <label>:5213                                    ; preds = %5206
  br label %5214

; <label>:5214                                    ; preds = %5213, %4834
  %5215 = phi float [ 0.000000e+00, %4834 ], [ %5207, %5213 ]
  %5216 = phi float [ 0.000000e+00, %4834 ], [ %5208, %5213 ]
  %5217 = phi float [ 0.000000e+00, %4834 ], [ %5209, %5213 ]
  %5218 = call float @dx.op.dot3.f32(i32 55, float %5215, float %5216, float %5217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = select i1 %263, float 0.000000e+00, float %5215
  %5220 = select i1 %263, float %5218, float %5216
  %5221 = select i1 %263, float 0.000000e+00, float %5217
  %5222 = fcmp fast olt float %4760, 0.000000e+00
  %5223 = call float @dx.op.unary.f32(i32 6, float %4760)  ; FAbs(value)
  %5224 = fmul fast float %5223, %4700
  %5225 = fmul fast float %5223, %4701
  %5226 = fmul fast float %5223, %4702
  %5227 = select i1 %5222, float %4700, float %5224
  %5228 = select i1 %5222, float %4701, float %5225
  %5229 = select i1 %5222, float %4702, float %5226
  %5230 = fsub fast float 1.000000e+00, %5223
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fmul fast float %5231, %5219
  %5233 = fmul fast float %5231, %5220
  %5234 = fmul fast float %5231, %5221
  %5235 = fadd fast float %5227, %5232
  %5236 = fadd fast float %5228, %5233
  %5237 = fadd fast float %5229, %5234
  br label %5238

; <label>:5238                                    ; preds = %5214, %4743
  %5239 = phi float [ %4700, %4743 ], [ %5235, %5214 ]
  %5240 = phi float [ %4701, %4743 ], [ %5236, %5214 ]
  %5241 = phi float [ %4702, %4743 ], [ %5237, %5214 ]
  %5242 = fmul fast float %4749, %4696
  %5243 = fmul fast float %4749, %4697
  %5244 = fmul fast float %4749, %4698
  %5245 = call float @dx.op.dot3.f32(i32 55, float %4525, float %4526, float %4527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fcmp fast ogt float %5245, 0x3E7FF19E20000000
  %5247 = fdiv fast float 1.000000e+00, %5245
  %5248 = select i1 %5246, float %5247, float 0.000000e+00
  %5249 = fmul fast float %5248, %4525
  %5250 = fmul fast float %5248, %4526
  %5251 = fmul fast float %5248, %4527
  %5252 = fadd fast float %5249, -1.000000e+00
  %5253 = fadd fast float %5250, -1.000000e+00
  %5254 = fadd fast float %5251, -1.000000e+00
  %5255 = fmul fast float %5252, 5.000000e-01
  %5256 = fmul fast float %5253, 5.000000e-01
  %5257 = fmul fast float %5254, 5.000000e-01
  %5258 = fadd fast float %5255, 1.000000e+00
  %5259 = fadd fast float %5256, 1.000000e+00
  %5260 = fadd fast float %5257, 1.000000e+00
  %5261 = fmul fast float %5239, %4744
  %5262 = fmul fast float %5240, %4745
  %5263 = fmul fast float %5241, %4746
  %5264 = fsub fast float 1.000000e+00, %4579
  %5265 = bitcast float %5264 to i32
  %5266 = sitofp i32 %5265 to float
  %5267 = fmul fast float %5266, 5.000000e+00
  %5268 = fadd fast float %5267, 0xC1EFBF8940000000
  %5269 = fptosi float %5268 to i32
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5270, %3344
  %5272 = fmul fast float %4696, %5271
  %5273 = fmul fast float %5272, %4749
  %5274 = fmul fast float %5273, %5258
  %5275 = fmul fast float %4697, %5271
  %5276 = fmul fast float %5275, %4749
  %5277 = fmul fast float %5276, %5259
  %5278 = fmul fast float %4698, %5271
  %5279 = fmul fast float %5278, %4749
  %5280 = fmul fast float %5279, %5260
  %5281 = fmul fast float %5242, %3340
  %5282 = fmul fast float %5243, %3340
  %5283 = fmul fast float %5244, %3340
  %5284 = fadd fast float %5261, %3336
  %5285 = fadd fast float %5284, %5274
  %5286 = fmul fast float %5285, %3340
  %5287 = fadd fast float %5262, %3337
  %5288 = fadd fast float %5287, %5277
  %5289 = fmul fast float %5288, %3340
  %5290 = fadd fast float %5263, %3338
  %5291 = fadd fast float %5290, %5280
  %5292 = fmul fast float %5291, %3340
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5295 = fcmp fast oeq float %5294, 0.000000e+00
  br i1 %5295, label %6999, label %5296

; <label>:5296                                    ; preds = %5238
  %5297 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5298 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5299 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = extractvalue %dx.types.CBufRet.f32 %5300, 1
  %5303 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5301, float %5302, float %5303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = select i1 %263, float %5305, float %5301
  %5309 = select i1 %263, float %5307, float %5302
  %5310 = select i1 %263, float %5306, float %5303
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5313 = fmul fast float %5312, %124
  %5314 = fmul fast float %5312, %125
  %5315 = fmul fast float %5312, %126
  %5316 = fadd fast float %5313, %204
  %5317 = fadd fast float %5314, %205
  %5318 = fadd fast float %5315, %206
  %5319 = fcmp fast olt float %5294, 0.000000e+00
  br i1 %5319, label %6577, label %5320

; <label>:5320                                    ; preds = %5296
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 0
  %5323 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5324 = extractvalue %dx.types.CBufRet.f32 %5321, 2
  %5325 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 0
  %5328 = extractvalue %dx.types.CBufRet.f32 %5326, 1
  %5329 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5330 = extractvalue %dx.types.CBufRet.f32 %5326, 3
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.CBufRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.CBufRet.f32 %5331, 2
  %5335 = extractvalue %dx.types.CBufRet.f32 %5331, 3
  %5336 = fmul fast float %5322, %5316
  %5337 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5323, float %5336)  ; FMad(a,b,c)
  %5338 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5324, float %5337)  ; FMad(a,b,c)
  %5339 = fadd fast float %5338, %5325
  %5340 = fmul fast float %5327, %5316
  %5341 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5328, float %5340)  ; FMad(a,b,c)
  %5342 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5329, float %5341)  ; FMad(a,b,c)
  %5343 = fadd fast float %5342, %5330
  %5344 = fmul fast float %5332, %5316
  %5345 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5333, float %5344)  ; FMad(a,b,c)
  %5346 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5334, float %5345)  ; FMad(a,b,c)
  %5347 = fadd fast float %5346, %5335
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = fcmp fast une float %5349, 0.000000e+00
  %5351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.CBufRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.CBufRet.f32 %5351, 3
  %5355 = fmul fast float %5354, %5339
  %5356 = fmul fast float %5354, %5343
  %5357 = fadd fast float %5355, %5352
  %5358 = fadd fast float %5356, %5353
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.CBufRet.f32 %5359, 3
  %5363 = fmul fast float %5362, %5339
  %5364 = fmul fast float %5362, %5343
  %5365 = fadd fast float %5363, %5360
  %5366 = fadd fast float %5364, %5361
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5369 = fsub fast float %5368, %5347
  %5370 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5371 = fmul fast float %5369, %5370
  %5372 = fsub fast float 1.000000e+00, %5371
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  br i1 %5350, label %5434, label %5374

; <label>:5374                                    ; preds = %5320
  %5375 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5378 = fadd fast float %5377, %5375
  %5379 = fcmp fast ogt float %5378, 0.000000e+00
  br i1 %5379, label %5380, label %5404

; <label>:5380                                    ; preds = %5374
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.CBufRet.f32 %5381, 1
  %5384 = fsub fast float %5365, %5382
  %5385 = fsub fast float %5366, %5383
  %5386 = fcmp fast olt float %5384, 0.000000e+00
  %5387 = fcmp fast olt float %5385, 0.000000e+00
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.CBufRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5393 = select i1 %5386, float %5389, float %5391
  %5394 = select i1 %5387, float %5390, float %5392
  %5395 = fmul fast float %5393, %5384
  %5396 = fmul fast float %5394, %5385
  %5397 = call float @dx.op.unary.f32(i32 6, float %5395)  ; FAbs(value)
  %5398 = call float @dx.op.unary.f32(i32 6, float %5396)  ; FAbs(value)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5400 = call float @dx.op.binary.f32(i32 35, float %5397, float %5398)  ; FMax(a,b)
  %5401 = fsub fast float %5399, %5400
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = fmul fast float %5402, %5373
  br label %5404

; <label>:5404                                    ; preds = %5380, %5374
  %5405 = phi float [ %5403, %5380 ], [ 0.000000e+00, %5374 ]
  %5406 = extractvalue %dx.types.CBufRet.f32 %5351, 2
  %5407 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5408 = fadd fast float %5407, %5406
  %5409 = fcmp fast ogt float %5408, 0.000000e+00
  br i1 %5409, label %5410, label %5434

; <label>:5410                                    ; preds = %5404
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5414 = fsub fast float %5357, %5412
  %5415 = fsub fast float %5358, %5413
  %5416 = fcmp fast olt float %5414, 0.000000e+00
  %5417 = fcmp fast olt float %5415, 0.000000e+00
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5423 = select i1 %5416, float %5419, float %5421
  %5424 = select i1 %5417, float %5420, float %5422
  %5425 = fmul fast float %5423, %5414
  %5426 = fmul fast float %5424, %5415
  %5427 = call float @dx.op.unary.f32(i32 6, float %5425)  ; FAbs(value)
  %5428 = call float @dx.op.unary.f32(i32 6, float %5426)  ; FAbs(value)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5430 = call float @dx.op.binary.f32(i32 35, float %5427, float %5428)  ; FMax(a,b)
  %5431 = fsub fast float %5429, %5430
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %5432, %5373
  br label %5434

; <label>:5434                                    ; preds = %5410, %5404, %5320
  %5435 = phi float [ 0.000000e+00, %5320 ], [ %5433, %5410 ], [ 0.000000e+00, %5404 ]
  %5436 = phi float [ 0.000000e+00, %5320 ], [ %5405, %5410 ], [ %5405, %5404 ]
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = fsub fast float %5339, %5441
  %5444 = fsub fast float %5343, %5442
  %5445 = fcmp fast olt float %5443, 0.000000e+00
  %5446 = fcmp fast olt float %5444, 0.000000e+00
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5452 = select i1 %5445, float %5448, float %5450
  %5453 = select i1 %5446, float %5449, float %5451
  %5454 = fmul fast float %5452, %5443
  %5455 = fmul fast float %5453, %5444
  %5456 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5457 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5459 = call float @dx.op.binary.f32(i32 35, float %5456, float %5457)  ; FMax(a,b)
  %5460 = fsub fast float %5458, %5459
  %5461 = call float @dx.op.unary.f32(i32 7, float %5460)  ; Saturate(value)
  %5462 = call float @dx.op.binary.f32(i32 36, float %5461, float %5439)  ; FMin(a,b)
  %5463 = fmul fast float %5462, %5373
  %5464 = fsub fast float %5435, %5463
  %5465 = fsub fast float %5436, %5435
  %5466 = fsub fast float %5465, %5463
  %5467 = call float @dx.op.binary.f32(i32 35, float %5435, float %5436)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 35, float %5463, float %5467)  ; FMax(a,b)
  %5469 = fcmp fast olt float %5468, 1.000000e+00
  br i1 %5469, label %5470, label %5868, !dx.controlflow.hints !107

; <label>:5470                                    ; preds = %5434
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = fcmp fast une float %5472, 0.000000e+00
  br i1 %5473, label %5474, label %5868, !dx.controlflow.hints !108

; <label>:5474                                    ; preds = %5470
  %5475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5476 = extractvalue %dx.types.CBufRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.CBufRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5475, 2
  %5479 = extractvalue %dx.types.CBufRet.f32 %5475, 3
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5484 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5490 = fmul fast float %5476, %5316
  %5491 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5477, float %5490)  ; FMad(a,b,c)
  %5492 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5478, float %5491)  ; FMad(a,b,c)
  %5493 = fadd fast float %5492, %5479
  %5494 = fmul fast float %5481, %5316
  %5495 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5482, float %5494)  ; FMad(a,b,c)
  %5496 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5483, float %5495)  ; FMad(a,b,c)
  %5497 = fadd fast float %5496, %5484
  %5498 = fmul fast float %5486, %5316
  %5499 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5487, float %5498)  ; FMad(a,b,c)
  %5500 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %5488, float %5499)  ; FMad(a,b,c)
  %5501 = fadd fast float %5500, %5489
  %5502 = fcmp fast oge float %5493, 1.000000e+00
  %5503 = fcmp fast oge float %5497, 1.000000e+00
  %5504 = or i1 %5502, %5503
  %5505 = fcmp fast olt float %5493, 0.000000e+00
  %5506 = fcmp fast olt float %5497, 0.000000e+00
  %5507 = or i1 %5505, %5506
  %5508 = or i1 %5504, %5507
  br i1 %5508, label %5868, label %5509, !dx.controlflow.hints !109

; <label>:5509                                    ; preds = %5474
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.CBufRet.f32 %5510, 2
  %5514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.i32 %5514, 2
  %5516 = uitofp i32 %5515 to float
  %5517 = extractvalue %dx.types.CBufRet.i32 %5514, 3
  %5518 = uitofp i32 %5517 to float
  %5519 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5520 = fmul fast float %5519, 2.000000e+00
  %5521 = fsub fast float %5493, %5511
  %5522 = fsub fast float %5497, %5512
  %5523 = fmul fast float %5520, %5521
  %5524 = fmul fast float %5520, %5522
  %5525 = fdiv fast float 1.000000e+00, %5299
  %5526 = fmul fast float %5524, %5525
  %5527 = call float @dx.op.unary.f32(i32 6, float %5526)  ; FAbs(value)
  %5528 = fmul fast float %5513, %5318
  %5529 = fmul fast float %5528, %5520
  %5530 = call float @dx.op.unary.f32(i32 6, float %5529)  ; FAbs(value)
  %5531 = call float @dx.op.unary.f32(i32 6, float %5523)  ; FAbs(value)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5530, float %5527)  ; FMax(a,b)
  %5533 = call float @dx.op.binary.f32(i32 35, float %5531, float %5532)  ; FMax(a,b)
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = call float @dx.op.unary.f32(i32 23, float %5534)  ; Log(value)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5535, float %5516)  ; FMax(a,b)
  %5537 = call float @dx.op.unary.f32(i32 22, float %5536)  ; Frc(value)
  %5538 = fadd fast float %5537, 0xBFEA666660000000
  %5539 = fmul fast float %5538, 8.000000e+00
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = call float @dx.op.unary.f32(i32 27, float %5536)  ; Round_ni(value)
  %5542 = fadd fast float %5541, %5540
  %5543 = call float @dx.op.binary.f32(i32 36, float %5542, float %5518)  ; FMin(a,b)
  %5544 = call float @dx.op.unary.f32(i32 27, float %5543)  ; Round_ni(value)
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = call float @dx.op.unary.f32(i32 21, float %5545)  ; Exp(value)
  %5547 = fmul fast float %5546, %5520
  %5548 = fmul fast float %5547, %5493
  %5549 = fmul fast float %5547, %5497
  %5550 = fmul fast float %5548, 2.500000e-01
  %5551 = fmul fast float %5549, 2.500000e-01
  %5552 = fadd fast float %5550, 5.000000e-01
  %5553 = fadd fast float %5551, 5.000000e-01
  %5554 = fsub fast float %5518, %5516
  %5555 = fptoui float %5554 to i32
  %5556 = add i32 %5555, 320
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %5556)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5560 = fcmp fast une float %5543, %5518
  %5561 = fsub fast float %5493, %5558
  %5562 = fsub fast float %5497, %5559
  %5563 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5564 = call float @dx.op.unary.f32(i32 6, float %5562)  ; FAbs(value)
  %5565 = fmul fast float %5563, %5547
  %5566 = fmul fast float %5564, %5547
  %5567 = fcmp fast olt float %5565, 1.000000e+00
  %5568 = fcmp fast olt float %5566, 1.000000e+00
  %5569 = and i1 %5567, %5568
  %5570 = or i1 %5560, %5569
  br i1 %5570, label %5571, label %5868, !dx.controlflow.hints !110

; <label>:5571                                    ; preds = %5509
  %5572 = fmul fast float %5549, 5.000000e-01
  %5573 = fmul fast float %5548, 5.000000e-01
  %5574 = fadd fast float %5572, 5.000000e-01
  %5575 = fadd fast float %5573, 5.000000e-01
  %5576 = sitofp i32 %5515 to float
  %5577 = fsub fast float %5543, %5576
  %5578 = call float @dx.op.unary.f32(i32 27, float %5577)  ; Round_ni(value)
  %5579 = call float @dx.op.unary.f32(i32 22, float %5543)  ; Frc(value)
  %5580 = call float @dx.op.unary.f32(i32 22, float %5575)  ; Frc(value)
  %5581 = call float @dx.op.unary.f32(i32 22, float %5574)  ; Frc(value)
  %5582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %55, float %5580, float %5581, float %5578, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5583 = extractvalue %dx.types.ResRet.f32 %5582, 0
  %5584 = extractvalue %dx.types.ResRet.f32 %5582, 1
  %5585 = extractvalue %dx.types.ResRet.f32 %5582, 2
  %5586 = extractvalue %dx.types.ResRet.f32 %5582, 3
  %5587 = fcmp fast ogt float %5579, 0.000000e+00
  br i1 %5587, label %5588, label %5609, !dx.controlflow.hints !111

; <label>:5588                                    ; preds = %5571
  %5589 = fadd fast float %5578, 1.000000e+00
  %5590 = call float @dx.op.unary.f32(i32 22, float %5552)  ; Frc(value)
  %5591 = call float @dx.op.unary.f32(i32 22, float %5553)  ; Frc(value)
  %5592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %55, float %5590, float %5591, float %5589, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5593 = extractvalue %dx.types.ResRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.ResRet.f32 %5592, 1
  %5595 = extractvalue %dx.types.ResRet.f32 %5592, 2
  %5596 = extractvalue %dx.types.ResRet.f32 %5592, 3
  %5597 = fsub fast float %5593, %5583
  %5598 = fsub fast float %5594, %5584
  %5599 = fsub fast float %5595, %5585
  %5600 = fsub fast float %5596, %5586
  %5601 = fmul fast float %5597, %5579
  %5602 = fmul fast float %5598, %5579
  %5603 = fmul fast float %5599, %5579
  %5604 = fmul fast float %5600, %5579
  %5605 = fadd fast float %5601, %5583
  %5606 = fadd fast float %5602, %5584
  %5607 = fadd fast float %5603, %5585
  %5608 = fadd fast float %5604, %5586
  br label %5609

; <label>:5609                                    ; preds = %5588, %5571
  %5610 = phi float [ %5605, %5588 ], [ %5583, %5571 ]
  %5611 = phi float [ %5606, %5588 ], [ %5584, %5571 ]
  %5612 = phi float [ %5607, %5588 ], [ %5585, %5571 ]
  %5613 = phi float [ %5608, %5588 ], [ %5586, %5571 ]
  %5614 = fadd fast float %5610, -5.000000e-01
  %5615 = fadd fast float %5612, -5.000000e-01
  %5616 = fmul fast float %5614, 0xBFD5555560000000
  %5617 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5615, float %5616)  ; FMad(a,b,c)
  %5618 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5611, float 0.000000e+00)  ; FMad(a,b,c)
  %5619 = fadd fast float %5618, %5613
  %5620 = fmul fast float %5614, -7.500000e-01
  %5621 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5615, float %5620)  ; FMad(a,b,c)
  %5622 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5611, float 0.000000e+00)  ; FMad(a,b,c)
  %5623 = fadd fast float %5622, %5613
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5630 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5631 = fsub fast float %5627, %5617
  %5632 = fsub fast float %5628, %5619
  %5633 = fsub fast float %5629, %5621
  %5634 = fsub fast float %5630, %5623
  %5635 = fmul fast float %5631, %5625
  %5636 = fmul fast float %5632, %5625
  %5637 = fmul fast float %5633, %5625
  %5638 = fmul fast float %5634, %5625
  %5639 = fadd fast float %5635, %5617
  %5640 = fadd fast float %5636, %5619
  %5641 = fadd fast float %5637, %5621
  %5642 = fadd fast float %5638, %5623
  %5643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.i32 %5643, 0
  %5645 = and i32 %5644, 536870911
  %5646 = uitofp i32 %5645 to float
  %5647 = fmul fast float %5646, %5493
  %5648 = fmul fast float %5646, %5497
  %5649 = fptoui float %5647 to i32
  %5650 = fptoui float %5648 to i32
  %5651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.i32 %5651, 0
  %5653 = and i32 %5652, 31
  %5654 = lshr i32 %5649, %5653
  %5655 = lshr i32 %5650, %5653
  %5656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5657 = extractvalue %dx.types.ResRet.i32 %5656, 0
  %5658 = and i32 %5657, 31
  %5659 = shl i32 1, %5658
  %5660 = call i32 @dx.op.binary.i32(i32 40, i32 %5659, i32 4)  ; UMin(a,b)
  %5661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5662 = extractvalue %dx.types.ResRet.i32 %5661, 0
  %5663 = extractvalue %dx.types.ResRet.i32 %5661, 1
  %5664 = icmp eq i32 %5660, 0
  br i1 %5664, label %5706, label %5665

; <label>:5665                                    ; preds = %5609
  br label %5666

; <label>:5666                                    ; preds = %5694, %5665
  %5667 = phi i32 [ %5697, %5694 ], [ 0, %5665 ]
  %5668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5669 = extractvalue %dx.types.ResRet.i32 %5668, 0
  %5670 = lshr i32 %5669, 16
  %5671 = and i32 %5670, 31
  %5672 = shl i32 %5655, %5671
  %5673 = add i32 %5672, %5654
  %5674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5675 = extractvalue %dx.types.ResRet.i32 %5674, 0
  %5676 = and i32 %5675, 31
  %5677 = shl i32 %5673, %5676
  %5678 = add i32 %5677, %5667
  %5679 = shl i32 %5678, 2
  %5680 = add i32 %5679, 32
  %5681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5680, i32 undef)  ; BufferLoad(srv,index,wot)
  %5682 = extractvalue %dx.types.ResRet.i32 %5681, 0
  %5683 = icmp slt i32 %5682, 0
  %5684 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5667
  %5685 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5667
  %5686 = bitcast float* %5684 to i32*
  %5687 = bitcast float* %5685 to i32*
  br i1 %5683, label %5688, label %5694

; <label>:5688                                    ; preds = %5666
  %5689 = and i32 %5682, 1073741823
  %5690 = add nuw nsw i32 %5689, 20
  %5691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5690, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.i32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.i32 %5691, 1
  br label %5694

; <label>:5694                                    ; preds = %5688, %5666
  %5695 = phi i32 [ %5692, %5688 ], [ %5662, %5666 ]
  %5696 = phi i32 [ %5693, %5688 ], [ %5663, %5666 ]
  store i32 %5695, i32* %5686, align 4
  store i32 %5696, i32* %5687, align 4
  %5697 = add nuw i32 %5667, 1
  %5698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.i32 %5698, 2
  %5700 = icmp eq i32 %5699, 0
  %5701 = icmp ugt i32 %5682, -1073741825
  %5702 = and i1 %5701, %5700
  %5703 = icmp ult i32 %5697, %5660
  %5704 = and i1 %5702, %5703
  br i1 %5704, label %5666, label %5705

; <label>:5705                                    ; preds = %5694
  br label %5706

; <label>:5706                                    ; preds = %5705, %5609
  %5707 = phi i32 [ 0, %5609 ], [ %5697, %5705 ]
  %5708 = extractvalue %dx.types.CBufRet.f32 %5471, 2
  %5709 = fptoui float %5708 to i32
  %5710 = icmp eq i32 %5709, 0
  br i1 %5710, label %5762, label %5711

; <label>:5711                                    ; preds = %5706
  br label %5712

; <label>:5712                                    ; preds = %5757, %5711
  %5713 = phi i32 [ %5758, %5757 ], [ %5707, %5711 ]
  %5714 = phi i32 [ %5759, %5757 ], [ 0, %5711 ]
  %5715 = lshr i32 %5714, 2
  %5716 = and i32 %5714, 3
  %5717 = add nuw nsw i32 %5715, 83
  %5718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 %5717)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.i32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.i32 %5718, 1
  %5721 = extractvalue %dx.types.CBufRet.i32 %5718, 2
  %5722 = extractvalue %dx.types.CBufRet.i32 %5718, 3
  %5723 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 0
  store i32 %5719, i32* %5723, align 4
  %5724 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 1
  store i32 %5720, i32* %5724, align 4
  %5725 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 2
  store i32 %5721, i32* %5725, align 4
  %5726 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 3
  store i32 %5722, i32* %5726, align 4
  %5727 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i32 0, i32 %5716
  %5728 = load i32, i32* %5727, align 4, !tbaa !112, !noalias !116
  %5729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.i32 %5729, 0
  %5731 = lshr i32 %5730, 16
  %5732 = and i32 %5731, 31
  %5733 = shl i32 %5655, %5732
  %5734 = add i32 %5733, %5654
  %5735 = shl i32 %5734, 2
  %5736 = add i32 %5735, %5728
  %5737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5736, i32 undef)  ; BufferLoad(srv,index,wot)
  %5738 = extractvalue %dx.types.ResRet.i32 %5737, 0
  %5739 = icmp eq i32 %5738, 0
  br i1 %5739, label %5757, label %5740

; <label>:5740                                    ; preds = %5712
  %5741 = icmp slt i32 %5738, 0
  %5742 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5713
  %5743 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5713
  %5744 = bitcast float* %5742 to i32*
  %5745 = bitcast float* %5743 to i32*
  br i1 %5741, label %5746, label %5753

; <label>:5746                                    ; preds = %5740
  %5747 = and i32 %5738, 1073741823
  %5748 = add i32 %5728, 20
  %5749 = add i32 %5748, %5747
  %5750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.i32 %5750, 0
  %5752 = extractvalue %dx.types.ResRet.i32 %5750, 1
  br label %5753

; <label>:5753                                    ; preds = %5746, %5740
  %5754 = phi i32 [ %5751, %5746 ], [ %5662, %5740 ]
  %5755 = phi i32 [ %5752, %5746 ], [ %5663, %5740 ]
  store i32 %5754, i32* %5744, align 4
  store i32 %5755, i32* %5745, align 4
  %5756 = add i32 %5713, 1
  br label %5757

; <label>:5757                                    ; preds = %5753, %5712
  %5758 = phi i32 [ %5713, %5712 ], [ %5756, %5753 ]
  %5759 = add nuw i32 %5714, 1
  %5760 = icmp eq i32 %5759, %5709
  br i1 %5760, label %5761, label %5712

; <label>:5761                                    ; preds = %5757
  br label %5762

; <label>:5762                                    ; preds = %5761, %5706
  %5763 = phi i32 [ %5707, %5706 ], [ %5758, %5761 ]
  %5764 = icmp eq i32 %5763, 1
  %5765 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 0
  %5766 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  br i1 %5764, label %5767, label %5770

; <label>:5767                                    ; preds = %5762
  %5768 = load float, float* %5765, align 4
  %5769 = load float, float* %5766, align 4
  br label %5797

; <label>:5770                                    ; preds = %5762
  %5771 = load float, float* %5765, align 4
  %5772 = load float, float* %5766, align 4
  %5773 = fdiv fast float 1.000000e+00, %5772
  %5774 = fsub fast float %5771, %5773
  %5775 = icmp ugt i32 %5763, 1
  br i1 %5775, label %5776, label %5792

; <label>:5776                                    ; preds = %5770
  br label %5777

; <label>:5777                                    ; preds = %5777, %5776
  %5778 = phi float [ %5787, %5777 ], [ %5774, %5776 ]
  %5779 = phi float [ %5788, %5777 ], [ %5771, %5776 ]
  %5780 = phi i32 [ %5789, %5777 ], [ 1, %5776 ]
  %5781 = getelementptr [12 x float], [12 x float]* %105, i32 0, i32 %5780
  %5782 = load float, float* %5781, align 4
  %5783 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %5780
  %5784 = load float, float* %5783, align 4
  %5785 = fdiv fast float 1.000000e+00, %5784
  %5786 = fsub fast float %5782, %5785
  %5787 = call float @dx.op.binary.f32(i32 36, float %5778, float %5786)  ; FMin(a,b)
  %5788 = call float @dx.op.binary.f32(i32 35, float %5779, float %5782)  ; FMax(a,b)
  %5789 = add nuw i32 %5780, 1
  %5790 = icmp eq i32 %5789, %5763
  br i1 %5790, label %5791, label %5777

; <label>:5791                                    ; preds = %5777
  br label %5792

; <label>:5792                                    ; preds = %5791, %5770
  %5793 = phi float [ %5774, %5770 ], [ %5787, %5791 ]
  %5794 = phi float [ %5771, %5770 ], [ %5788, %5791 ]
  %5795 = fsub fast float %5794, %5793
  %5796 = fdiv fast float 1.000000e+00, %5795
  br label %5797

; <label>:5797                                    ; preds = %5792, %5767
  %5798 = phi float [ %5768, %5767 ], [ %5794, %5792 ]
  %5799 = phi float [ %5769, %5767 ], [ %5796, %5792 ]
  %5800 = fadd fast float %5501, %5798
  %5801 = fmul fast float %5800, %5799
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fmul fast float %5802, 2.000000e+00
  %5804 = fsub fast float 1.000000e+00, %5803
  %5805 = fmul fast float %5639, %5639
  %5806 = fsub fast float %5640, %5805
  %5807 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5806)  ; FMax(a,b)
  %5808 = fdiv fast float 1.000000e+00, %5807
  %5809 = fmul fast float %5640, %5639
  %5810 = fsub fast float %5641, %5809
  %5811 = fsub fast float %5804, %5639
  %5812 = fmul fast float %5804, %5804
  %5813 = fsub fast float %5812, %5640
  %5814 = fmul fast float %5808, %5810
  %5815 = fmul fast float %5814, %5811
  %5816 = fsub fast float %5813, %5815
  %5817 = fmul fast float %5640, %5640
  %5818 = fsub fast float %5642, %5817
  %5819 = fmul fast float %5810, %5810
  %5820 = fmul fast float %5819, %5808
  %5821 = fsub fast float %5818, %5820
  %5822 = fdiv fast float %5816, %5821
  %5823 = fmul fast float %5822, %5810
  %5824 = fsub fast float %5811, %5823
  %5825 = fmul fast float %5824, %5808
  %5826 = fmul fast float %5825, %5639
  %5827 = fsub fast float 1.000000e+00, %5826
  %5828 = fmul fast float %5822, %5640
  %5829 = fsub fast float %5827, %5828
  %5830 = fmul fast float %5825, %5825
  %5831 = fmul fast float %5822, 4.000000e+00
  %5832 = fmul fast float %5831, %5829
  %5833 = fsub fast float %5830, %5832
  %5834 = call float @dx.op.unary.f32(i32 24, float %5833)  ; Sqrt(value)
  %5835 = fcmp fast oge float %5825, 0.000000e+00
  %5836 = fsub fast float -0.000000e+00, %5834
  %5837 = select i1 %5835, float %5836, float %5834
  %5838 = fsub fast float %5837, %5825
  %5839 = fdiv fast float %5838, %5822
  %5840 = fdiv fast float %5829, %5838
  %5841 = fmul fast float %5839, 5.000000e-01
  %5842 = fmul fast float %5840, 2.000000e+00
  %5843 = select i1 %5835, float %5841, float %5842
  %5844 = select i1 %5835, float %5842, float %5841
  %5845 = call float @dx.op.binary.f32(i32 35, float %5843, float %5844)  ; FMax(a,b)
  %5846 = call float @dx.op.binary.f32(i32 36, float %5843, float %5844)  ; FMin(a,b)
  %5847 = fcmp fast ogt float %5804, %5845
  %5848 = fsub fast float %5804, %5846
  %5849 = fsub fast float %5804, %5845
  %5850 = fsub fast float %5845, %5846
  %5851 = select i1 %5847, float %5849, float %5850
  %5852 = fmul float %5848, %5851
  %5853 = select i1 %5847, float %5846, float %5804
  %5854 = fcmp fast ogt float %5804, %5846
  %5855 = fmul fast float %5853, %5845
  %5856 = fadd fast float %5853, %5845
  %5857 = fmul fast float %5856, %5639
  %5858 = fadd fast float %5855, %5640
  %5859 = fsub fast float %5858, %5857
  %5860 = fdiv fast float %5859, %5852
  %5861 = select i1 %5854, float %5860, float 0.000000e+00
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = select i1 %5847, float %5862, float %5861
  %5864 = call float @dx.op.unary.f32(i32 7, float %5863)  ; Saturate(value)
  %5865 = extractvalue %dx.types.CBufRet.f32 %5624, 3
  %5866 = fmul fast float %5865, %5864
  %5867 = fsub fast float 1.000000e+00, %5866
  br label %5868

; <label>:5868                                    ; preds = %5797, %5509, %5474, %5470, %5434
  %5869 = phi float [ 1.000000e+00, %5434 ], [ %5867, %5797 ], [ 1.000000e+00, %5474 ], [ 1.000000e+00, %5509 ], [ 1.000000e+00, %5470 ]
  %5870 = fcmp fast ogt float %5466, 0.000000e+00
  br i1 %5870, label %5871, label %6035, !dx.controlflow.hints !125

; <label>:5871                                    ; preds = %5868
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 2
  %5874 = fadd fast float %5873, %5347
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 3
  %5878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5879 = extractvalue %dx.types.CBufRet.f32 %5878, 2
  %5880 = call float @dx.op.binary.f32(i32 35, float %5874, float 0.000000e+00)  ; FMax(a,b)
  %5881 = fadd fast float %5880, 0x3F10000000000000
  %5882 = fcmp fast oeq float %5879, 0.000000e+00
  br i1 %5882, label %5883, label %5950

; <label>:5883                                    ; preds = %5871
  %5884 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5886 = fmul fast float %5885, %5365
  %5887 = fmul fast float %5884, %5366
  %5888 = fadd fast float %5886, 5.000000e-01
  %5889 = call float @dx.op.unary.f32(i32 27, float %5888)  ; Round_ni(value)
  %5890 = fadd fast float %5887, 5.000000e-01
  %5891 = call float @dx.op.unary.f32(i32 27, float %5890)  ; Round_ni(value)
  %5892 = fsub fast float %5888, %5889
  %5893 = fsub fast float %5890, %5891
  %5894 = fadd fast float %5889, -5.000000e-01
  %5895 = fadd fast float %5891, -5.000000e-01
  %5896 = fmul fast float %5892, 2.000000e+00
  %5897 = fsub fast float 3.000000e+00, %5896
  %5898 = fadd fast float %5896, 1.000000e+00
  %5899 = fsub fast float 2.000000e+00, %5892
  %5900 = bitcast float %5897 to i32
  %5901 = sub nsw i32 2129859010, %5900
  %5902 = bitcast i32 %5901 to float
  %5903 = fmul fast float %5902, %5899
  %5904 = fadd fast float %5903, -1.000000e+00
  %5905 = bitcast float %5898 to i32
  %5906 = sub nsw i32 2129859010, %5905
  %5907 = bitcast i32 %5906 to float
  %5908 = fmul fast float %5907, %5892
  %5909 = fadd fast float %5908, 1.000000e+00
  %5910 = fmul fast float %5893, 2.000000e+00
  %5911 = fsub fast float 3.000000e+00, %5910
  %5912 = fadd fast float %5910, 1.000000e+00
  %5913 = fsub fast float 2.000000e+00, %5893
  %5914 = bitcast float %5911 to i32
  %5915 = sub nsw i32 2129859010, %5914
  %5916 = bitcast i32 %5915 to float
  %5917 = fmul fast float %5916, %5913
  %5918 = fadd fast float %5917, -1.000000e+00
  %5919 = bitcast float %5912 to i32
  %5920 = sub nsw i32 2129859010, %5919
  %5921 = bitcast i32 %5920 to float
  %5922 = fmul fast float %5921, %5893
  %5923 = fadd fast float %5922, 1.000000e+00
  %5924 = fadd fast float %5904, %5894
  %5925 = fmul fast float %5924, %5876
  %5926 = fadd fast float %5918, %5895
  %5927 = fmul fast float %5926, %5877
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5925, float %5927, float undef, float undef, i32 0, i32 0, i32 undef, float %5881)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = fmul fast float %5929, %5897
  %5931 = fadd fast float %5909, %5894
  %5932 = fmul fast float %5931, %5876
  %5933 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5932, float %5927, float undef, float undef, i32 0, i32 0, i32 undef, float %5881)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = fmul fast float %5934, %5898
  %5936 = fadd fast float %5923, %5895
  %5937 = fmul fast float %5936, %5877
  %5938 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5925, float %5937, float undef, float undef, i32 0, i32 0, i32 undef, float %5881)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 0
  %5940 = fmul fast float %5939, %5897
  %5941 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %58, float %5932, float %5937, float undef, float undef, i32 0, i32 0, i32 undef, float %5881)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = fmul fast float %5942, %5898
  %5944 = fadd fast float %5943, %5940
  %5945 = fmul fast float %5944, %5912
  %5946 = fadd fast float %5935, %5930
  %5947 = fmul fast float %5946, %5911
  %5948 = fadd fast float %5947, %5945
  %5949 = fmul fast float %5948, 6.250000e-02
  br label %6035

; <label>:5950                                    ; preds = %5871
  %5951 = fmul fast float %274, 0x401921FB60000000
  %5952 = call float @dx.op.unary.f32(i32 13, float %5951)  ; Sin(value)
  %5953 = call float @dx.op.unary.f32(i32 12, float %5951)  ; Cos(value)
  %5954 = fsub fast float -0.000000e+00, %5952
  br label %5955

; <label>:5955                                    ; preds = %6004, %5950
  %5956 = phi float [ 0.000000e+00, %5950 ], [ %5999, %6004 ]
  %5957 = phi float [ 0.000000e+00, %5950 ], [ %6001, %6004 ]
  %5958 = phi i32 [ 0, %5950 ], [ %6005, %6004 ]
  %5959 = mul i32 %5958, 2
  %5960 = add i32 0, %5959
  %5961 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5960
  %5962 = load float, float* %5961, align 4
  %5963 = mul i32 %5958, 2
  %5964 = add i32 1, %5963
  %5965 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5964
  %5966 = load float, float* %5965, align 4
  %5967 = fmul fast float %5962, %5953
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5966, float %5954, float %5967)  ; FMad(a,b,c)
  %5969 = fmul fast float %5962, %5952
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5966, float %5953, float %5969)  ; FMad(a,b,c)
  %5971 = fmul fast float %5968, %5879
  %5972 = fmul fast float %5970, %5879
  %5973 = fadd fast float %5971, %5365
  %5974 = fadd fast float %5972, %5366
  %5975 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %57, float %5973, float %5974, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.ResRet.f32 %5975, 2
  %5979 = extractvalue %dx.types.ResRet.f32 %5975, 3
  %5980 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %5976, float* %5980, align 4
  %5981 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %5977, float* %5981, align 4
  %5982 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %5978, float* %5982, align 4
  %5983 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %5979, float* %5983, align 4
  %5984 = fsub fast float %5976, %5881
  %5985 = fcmp fast olt float %5984, 0.000000e+00
  %5986 = select i1 %5985, float 0.000000e+00, float 1.000000e+00
  %5987 = fadd fast float %5986, %5956
  %5988 = fmul fast float %5986, %5984
  %5989 = fadd fast float %5988, %5957
  br label %5990

; <label>:5990                                    ; preds = %5990, %5955
  %5991 = phi i32 [ 1, %5955 ], [ %6002, %5990 ]
  %5992 = phi float [ %5989, %5955 ], [ %6001, %5990 ]
  %5993 = phi float [ %5987, %5955 ], [ %5999, %5990 ]
  %5994 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %5991
  %5995 = load float, float* %5994, align 4, !tbaa !126, !noalias !116
  %5996 = fsub fast float %5995, %5881
  %5997 = fcmp fast olt float %5996, 0.000000e+00
  %5998 = select i1 %5997, float 0.000000e+00, float 1.000000e+00
  %5999 = fadd fast float %5998, %5993
  %6000 = fmul fast float %5998, %5996
  %6001 = fadd fast float %6000, %5992
  %6002 = add nuw nsw i32 %5991, 1
  %6003 = icmp eq i32 %6002, 4
  br i1 %6003, label %6004, label %5990, !llvm.loop !128

; <label>:6004                                    ; preds = %5990
  %6005 = add nuw nsw i32 %5958, 1
  %6006 = icmp eq i32 %6005, 8
  br i1 %6006, label %6007, label %5955, !llvm.loop !129

; <label>:6007                                    ; preds = %6004
  %6008 = fdiv fast float 1.000000e+00, %5999
  %6009 = fmul fast float %6008, %6001
  %6010 = fdiv fast float 1.000000e+00, %5881
  %6011 = fmul fast float %6009, %6010
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float 0.000000e+00)  ; FMax(a,b)
  %6014 = fmul fast float %5999, 3.125000e-02
  %6015 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6016 = fmul fast float %6015, 2.000000e+00
  %6017 = fadd fast float %6016, -1.000000e+00
  %6018 = fcmp fast ogt float %6017, 0.000000e+00
  %6019 = fcmp fast olt float %6017, 0.000000e+00
  %6020 = zext i1 %6018 to i32
  %6021 = zext i1 %6019 to i32
  %6022 = sub nsw i32 %6020, %6021
  %6023 = sitofp i32 %6022 to float
  %6024 = fmul fast float %6023, %6017
  %6025 = fsub fast float 1.000000e+00, %6024
  %6026 = fmul fast float %6025, %6025
  %6027 = fmul fast float %6026, %6025
  %6028 = fsub fast float %6025, %6027
  %6029 = fmul fast float %6028, %6013
  %6030 = fsub fast float 1.000000e+00, %6027
  %6031 = fsub fast float %6030, %6029
  %6032 = fmul fast float %6023, 5.000000e-01
  %6033 = fmul fast float %6032, %6031
  %6034 = fsub fast float 5.000000e-01, %6033
  br label %6035

; <label>:6035                                    ; preds = %6007, %5883, %5868
  %6036 = phi float [ 1.000000e+00, %5868 ], [ %5949, %5883 ], [ %6034, %6007 ]
  %6037 = fcmp fast ogt float %5464, 0.000000e+00
  br i1 %6037, label %6038, label %6202, !dx.controlflow.hints !130

; <label>:6038                                    ; preds = %6035
  %6039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6040 = extractvalue %dx.types.CBufRet.f32 %6039, 1
  %6041 = fadd fast float %6040, %5347
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6047 = call float @dx.op.binary.f32(i32 35, float %6041, float 0.000000e+00)  ; FMax(a,b)
  %6048 = fadd fast float %6047, 0x3F10000000000000
  %6049 = fcmp fast oeq float %6046, 0.000000e+00
  br i1 %6049, label %6050, label %6117

; <label>:6050                                    ; preds = %6038
  %6051 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6052 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6053 = fmul fast float %6052, %5357
  %6054 = fmul fast float %6051, %5358
  %6055 = fadd fast float %6053, 5.000000e-01
  %6056 = call float @dx.op.unary.f32(i32 27, float %6055)  ; Round_ni(value)
  %6057 = fadd fast float %6054, 5.000000e-01
  %6058 = call float @dx.op.unary.f32(i32 27, float %6057)  ; Round_ni(value)
  %6059 = fsub fast float %6055, %6056
  %6060 = fsub fast float %6057, %6058
  %6061 = fadd fast float %6056, -5.000000e-01
  %6062 = fadd fast float %6058, -5.000000e-01
  %6063 = fmul fast float %6059, 2.000000e+00
  %6064 = fsub fast float 3.000000e+00, %6063
  %6065 = fadd fast float %6063, 1.000000e+00
  %6066 = fsub fast float 2.000000e+00, %6059
  %6067 = bitcast float %6064 to i32
  %6068 = sub nsw i32 2129859010, %6067
  %6069 = bitcast i32 %6068 to float
  %6070 = fmul fast float %6069, %6066
  %6071 = fadd fast float %6070, -1.000000e+00
  %6072 = bitcast float %6065 to i32
  %6073 = sub nsw i32 2129859010, %6072
  %6074 = bitcast i32 %6073 to float
  %6075 = fmul fast float %6074, %6059
  %6076 = fadd fast float %6075, 1.000000e+00
  %6077 = fmul fast float %6060, 2.000000e+00
  %6078 = fsub fast float 3.000000e+00, %6077
  %6079 = fadd fast float %6077, 1.000000e+00
  %6080 = fsub fast float 2.000000e+00, %6060
  %6081 = bitcast float %6078 to i32
  %6082 = sub nsw i32 2129859010, %6081
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %6080
  %6085 = fadd fast float %6084, -1.000000e+00
  %6086 = bitcast float %6079 to i32
  %6087 = sub nsw i32 2129859010, %6086
  %6088 = bitcast i32 %6087 to float
  %6089 = fmul fast float %6088, %6060
  %6090 = fadd fast float %6089, 1.000000e+00
  %6091 = fadd fast float %6071, %6061
  %6092 = fmul fast float %6091, %6043
  %6093 = fadd fast float %6085, %6062
  %6094 = fmul fast float %6093, %6044
  %6095 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6092, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float %6048)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 0
  %6097 = fmul fast float %6096, %6064
  %6098 = fadd fast float %6076, %6061
  %6099 = fmul fast float %6098, %6043
  %6100 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6099, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float %6048)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = fmul fast float %6101, %6065
  %6103 = fadd fast float %6090, %6062
  %6104 = fmul fast float %6103, %6044
  %6105 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6092, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float %6048)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6106 = extractvalue %dx.types.ResRet.f32 %6105, 0
  %6107 = fmul fast float %6106, %6064
  %6108 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %58, float %6099, float %6104, float undef, float undef, i32 0, i32 0, i32 undef, float %6048)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 0
  %6110 = fmul fast float %6109, %6065
  %6111 = fadd fast float %6110, %6107
  %6112 = fmul fast float %6111, %6079
  %6113 = fadd fast float %6102, %6097
  %6114 = fmul fast float %6113, %6078
  %6115 = fadd fast float %6114, %6112
  %6116 = fmul fast float %6115, 6.250000e-02
  br label %6202

; <label>:6117                                    ; preds = %6038
  %6118 = fmul fast float %274, 0x401921FB60000000
  %6119 = call float @dx.op.unary.f32(i32 13, float %6118)  ; Sin(value)
  %6120 = call float @dx.op.unary.f32(i32 12, float %6118)  ; Cos(value)
  %6121 = fsub fast float -0.000000e+00, %6119
  br label %6122

; <label>:6122                                    ; preds = %6171, %6117
  %6123 = phi float [ 0.000000e+00, %6117 ], [ %6166, %6171 ]
  %6124 = phi float [ 0.000000e+00, %6117 ], [ %6168, %6171 ]
  %6125 = phi i32 [ 0, %6117 ], [ %6172, %6171 ]
  %6126 = mul i32 %6125, 2
  %6127 = add i32 0, %6126
  %6128 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6127
  %6129 = load float, float* %6128, align 4
  %6130 = mul i32 %6125, 2
  %6131 = add i32 1, %6130
  %6132 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6131
  %6133 = load float, float* %6132, align 4
  %6134 = fmul fast float %6129, %6120
  %6135 = call float @dx.op.tertiary.f32(i32 46, float %6133, float %6121, float %6134)  ; FMad(a,b,c)
  %6136 = fmul fast float %6129, %6119
  %6137 = call float @dx.op.tertiary.f32(i32 46, float %6133, float %6120, float %6136)  ; FMad(a,b,c)
  %6138 = fmul fast float %6135, %6046
  %6139 = fmul fast float %6137, %6046
  %6140 = fadd fast float %6138, %5357
  %6141 = fadd fast float %6139, %5358
  %6142 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %57, float %6140, float %6141, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.ResRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.ResRet.f32 %6142, 2
  %6146 = extractvalue %dx.types.ResRet.f32 %6142, 3
  %6147 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6143, float* %6147, align 4
  %6148 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6144, float* %6148, align 4
  %6149 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6145, float* %6149, align 4
  %6150 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6146, float* %6150, align 4
  %6151 = fsub fast float %6143, %6048
  %6152 = fcmp fast olt float %6151, 0.000000e+00
  %6153 = select i1 %6152, float 0.000000e+00, float 1.000000e+00
  %6154 = fadd fast float %6153, %6123
  %6155 = fmul fast float %6153, %6151
  %6156 = fadd fast float %6155, %6124
  br label %6157

; <label>:6157                                    ; preds = %6157, %6122
  %6158 = phi i32 [ 1, %6122 ], [ %6169, %6157 ]
  %6159 = phi float [ %6156, %6122 ], [ %6168, %6157 ]
  %6160 = phi float [ %6154, %6122 ], [ %6166, %6157 ]
  %6161 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6158
  %6162 = load float, float* %6161, align 4, !tbaa !126, !noalias !116
  %6163 = fsub fast float %6162, %6048
  %6164 = fcmp fast olt float %6163, 0.000000e+00
  %6165 = select i1 %6164, float 0.000000e+00, float 1.000000e+00
  %6166 = fadd fast float %6165, %6160
  %6167 = fmul fast float %6165, %6163
  %6168 = fadd fast float %6167, %6159
  %6169 = add nuw nsw i32 %6158, 1
  %6170 = icmp eq i32 %6169, 4
  br i1 %6170, label %6171, label %6157, !llvm.loop !128

; <label>:6171                                    ; preds = %6157
  %6172 = add nuw nsw i32 %6125, 1
  %6173 = icmp eq i32 %6172, 8
  br i1 %6173, label %6174, label %6122, !llvm.loop !129

; <label>:6174                                    ; preds = %6171
  %6175 = fdiv fast float 1.000000e+00, %6166
  %6176 = fmul fast float %6175, %6168
  %6177 = fdiv fast float 1.000000e+00, %6048
  %6178 = fmul fast float %6176, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6180 = call float @dx.op.binary.f32(i32 35, float %6179, float 0.000000e+00)  ; FMax(a,b)
  %6181 = fmul fast float %6166, 3.125000e-02
  %6182 = call float @dx.op.unary.f32(i32 7, float %6181)  ; Saturate(value)
  %6183 = fmul fast float %6182, 2.000000e+00
  %6184 = fadd fast float %6183, -1.000000e+00
  %6185 = fcmp fast ogt float %6184, 0.000000e+00
  %6186 = fcmp fast olt float %6184, 0.000000e+00
  %6187 = zext i1 %6185 to i32
  %6188 = zext i1 %6186 to i32
  %6189 = sub nsw i32 %6187, %6188
  %6190 = sitofp i32 %6189 to float
  %6191 = fmul fast float %6190, %6184
  %6192 = fsub fast float 1.000000e+00, %6191
  %6193 = fmul fast float %6192, %6192
  %6194 = fmul fast float %6193, %6192
  %6195 = fsub fast float %6192, %6194
  %6196 = fmul fast float %6195, %6180
  %6197 = fsub fast float 1.000000e+00, %6194
  %6198 = fsub fast float %6197, %6196
  %6199 = fmul fast float %6190, 5.000000e-01
  %6200 = fmul fast float %6199, %6198
  %6201 = fsub fast float 5.000000e-01, %6200
  br label %6202

; <label>:6202                                    ; preds = %6174, %6050, %6035
  %6203 = phi float [ 1.000000e+00, %6035 ], [ %6116, %6050 ], [ %6201, %6174 ]
  %6204 = fcmp fast ogt float %5463, 0.000000e+00
  br i1 %6204, label %6205, label %6523, !dx.controlflow.hints !131

; <label>:6205                                    ; preds = %6202
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = fadd fast float %6207, %5347
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 3
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = call float @dx.op.binary.f32(i32 35, float %6208, float 0.000000e+00)  ; FMax(a,b)
  %6215 = fadd fast float %6214, 0x3F10000000000000
  %6216 = fcmp fast oeq float %6213, 0.000000e+00
  br i1 %5350, label %6217, label %6370, !dx.controlflow.hints !132

; <label>:6217                                    ; preds = %6205
  br i1 %6216, label %6218, label %6285

; <label>:6218                                    ; preds = %6217
  %6219 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6220 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6221 = fmul fast float %6220, %5339
  %6222 = fmul fast float %6219, %5343
  %6223 = fadd fast float %6221, 5.000000e-01
  %6224 = call float @dx.op.unary.f32(i32 27, float %6223)  ; Round_ni(value)
  %6225 = fadd fast float %6222, 5.000000e-01
  %6226 = call float @dx.op.unary.f32(i32 27, float %6225)  ; Round_ni(value)
  %6227 = fsub fast float %6223, %6224
  %6228 = fsub fast float %6225, %6226
  %6229 = fadd fast float %6224, -5.000000e-01
  %6230 = fadd fast float %6226, -5.000000e-01
  %6231 = fmul fast float %6227, 2.000000e+00
  %6232 = fsub fast float 3.000000e+00, %6231
  %6233 = fadd fast float %6231, 1.000000e+00
  %6234 = fsub fast float 2.000000e+00, %6227
  %6235 = bitcast float %6232 to i32
  %6236 = sub nsw i32 2129859010, %6235
  %6237 = bitcast i32 %6236 to float
  %6238 = fmul fast float %6237, %6234
  %6239 = fadd fast float %6238, -1.000000e+00
  %6240 = bitcast float %6233 to i32
  %6241 = sub nsw i32 2129859010, %6240
  %6242 = bitcast i32 %6241 to float
  %6243 = fmul fast float %6242, %6227
  %6244 = fadd fast float %6243, 1.000000e+00
  %6245 = fmul fast float %6228, 2.000000e+00
  %6246 = fsub fast float 3.000000e+00, %6245
  %6247 = fadd fast float %6245, 1.000000e+00
  %6248 = fsub fast float 2.000000e+00, %6228
  %6249 = bitcast float %6246 to i32
  %6250 = sub nsw i32 2129859010, %6249
  %6251 = bitcast i32 %6250 to float
  %6252 = fmul fast float %6251, %6248
  %6253 = fadd fast float %6252, -1.000000e+00
  %6254 = bitcast float %6247 to i32
  %6255 = sub nsw i32 2129859010, %6254
  %6256 = bitcast i32 %6255 to float
  %6257 = fmul fast float %6256, %6228
  %6258 = fadd fast float %6257, 1.000000e+00
  %6259 = fadd fast float %6239, %6229
  %6260 = fmul fast float %6259, %6210
  %6261 = fadd fast float %6253, %6230
  %6262 = fmul fast float %6261, %6211
  %6263 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6260, float %6262, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = fmul fast float %6264, %6232
  %6266 = fadd fast float %6244, %6229
  %6267 = fmul fast float %6266, %6210
  %6268 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6267, float %6262, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = fmul fast float %6269, %6233
  %6271 = fadd fast float %6258, %6230
  %6272 = fmul fast float %6271, %6211
  %6273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6260, float %6272, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = fmul fast float %6274, %6232
  %6276 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %58, float %6267, float %6272, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6277 = extractvalue %dx.types.ResRet.f32 %6276, 0
  %6278 = fmul fast float %6277, %6233
  %6279 = fadd fast float %6278, %6275
  %6280 = fmul fast float %6279, %6247
  %6281 = fadd fast float %6270, %6265
  %6282 = fmul fast float %6281, %6246
  %6283 = fadd fast float %6282, %6280
  %6284 = fmul fast float %6283, 6.250000e-02
  br label %6523

; <label>:6285                                    ; preds = %6217
  %6286 = fmul fast float %274, 0x401921FB60000000
  %6287 = call float @dx.op.unary.f32(i32 13, float %6286)  ; Sin(value)
  %6288 = call float @dx.op.unary.f32(i32 12, float %6286)  ; Cos(value)
  %6289 = fsub fast float -0.000000e+00, %6287
  br label %6290

; <label>:6290                                    ; preds = %6339, %6285
  %6291 = phi float [ 0.000000e+00, %6285 ], [ %6334, %6339 ]
  %6292 = phi float [ 0.000000e+00, %6285 ], [ %6336, %6339 ]
  %6293 = phi i32 [ 0, %6285 ], [ %6340, %6339 ]
  %6294 = mul i32 %6293, 2
  %6295 = add i32 0, %6294
  %6296 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6295
  %6297 = load float, float* %6296, align 4
  %6298 = mul i32 %6293, 2
  %6299 = add i32 1, %6298
  %6300 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6299
  %6301 = load float, float* %6300, align 4
  %6302 = fmul fast float %6297, %6288
  %6303 = call float @dx.op.tertiary.f32(i32 46, float %6301, float %6289, float %6302)  ; FMad(a,b,c)
  %6304 = fmul fast float %6297, %6287
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %6301, float %6288, float %6304)  ; FMad(a,b,c)
  %6306 = fmul fast float %6303, %6213
  %6307 = fmul fast float %6305, %6213
  %6308 = fadd fast float %6306, %5339
  %6309 = fadd fast float %6307, %5343
  %6310 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %57, float %6308, float %6309, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.ResRet.f32 %6310, 2
  %6314 = extractvalue %dx.types.ResRet.f32 %6310, 3
  %6315 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6311, float* %6315, align 4
  %6316 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6312, float* %6316, align 4
  %6317 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6313, float* %6317, align 4
  %6318 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6314, float* %6318, align 4
  %6319 = fsub fast float %6311, %6215
  %6320 = fcmp fast olt float %6319, 0.000000e+00
  %6321 = select i1 %6320, float 0.000000e+00, float 1.000000e+00
  %6322 = fadd fast float %6321, %6291
  %6323 = fmul fast float %6321, %6319
  %6324 = fadd fast float %6323, %6292
  br label %6325

; <label>:6325                                    ; preds = %6325, %6290
  %6326 = phi i32 [ 1, %6290 ], [ %6337, %6325 ]
  %6327 = phi float [ %6324, %6290 ], [ %6336, %6325 ]
  %6328 = phi float [ %6322, %6290 ], [ %6334, %6325 ]
  %6329 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6326
  %6330 = load float, float* %6329, align 4, !tbaa !126, !noalias !116
  %6331 = fsub fast float %6330, %6215
  %6332 = fcmp fast olt float %6331, 0.000000e+00
  %6333 = select i1 %6332, float 0.000000e+00, float 1.000000e+00
  %6334 = fadd fast float %6333, %6328
  %6335 = fmul fast float %6333, %6331
  %6336 = fadd fast float %6335, %6327
  %6337 = add nuw nsw i32 %6326, 1
  %6338 = icmp eq i32 %6337, 4
  br i1 %6338, label %6339, label %6325, !llvm.loop !128

; <label>:6339                                    ; preds = %6325
  %6340 = add nuw nsw i32 %6293, 1
  %6341 = icmp eq i32 %6340, 8
  br i1 %6341, label %6342, label %6290, !llvm.loop !129

; <label>:6342                                    ; preds = %6339
  %6343 = fdiv fast float 1.000000e+00, %6334
  %6344 = fmul fast float %6343, %6336
  %6345 = fdiv fast float 1.000000e+00, %6215
  %6346 = fmul fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6348 = call float @dx.op.binary.f32(i32 35, float %6347, float 0.000000e+00)  ; FMax(a,b)
  %6349 = fmul fast float %6334, 3.125000e-02
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = fmul fast float %6350, 2.000000e+00
  %6352 = fadd fast float %6351, -1.000000e+00
  %6353 = fcmp fast ogt float %6352, 0.000000e+00
  %6354 = fcmp fast olt float %6352, 0.000000e+00
  %6355 = zext i1 %6353 to i32
  %6356 = zext i1 %6354 to i32
  %6357 = sub nsw i32 %6355, %6356
  %6358 = sitofp i32 %6357 to float
  %6359 = fmul fast float %6358, %6352
  %6360 = fsub fast float 1.000000e+00, %6359
  %6361 = fmul fast float %6360, %6360
  %6362 = fmul fast float %6361, %6360
  %6363 = fsub fast float %6360, %6362
  %6364 = fmul fast float %6363, %6348
  %6365 = fsub fast float 1.000000e+00, %6362
  %6366 = fsub fast float %6365, %6364
  %6367 = fmul fast float %6358, 5.000000e-01
  %6368 = fmul fast float %6367, %6366
  %6369 = fsub fast float 5.000000e-01, %6368
  br label %6523

; <label>:6370                                    ; preds = %6205
  br i1 %6216, label %6371, label %6438

; <label>:6371                                    ; preds = %6370
  %6372 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6373 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6374 = fmul fast float %6373, %5339
  %6375 = fmul fast float %6372, %5343
  %6376 = fadd fast float %6374, 5.000000e-01
  %6377 = call float @dx.op.unary.f32(i32 27, float %6376)  ; Round_ni(value)
  %6378 = fadd fast float %6375, 5.000000e-01
  %6379 = call float @dx.op.unary.f32(i32 27, float %6378)  ; Round_ni(value)
  %6380 = fsub fast float %6376, %6377
  %6381 = fsub fast float %6378, %6379
  %6382 = fadd fast float %6377, -5.000000e-01
  %6383 = fadd fast float %6379, -5.000000e-01
  %6384 = fmul fast float %6380, 2.000000e+00
  %6385 = fsub fast float 3.000000e+00, %6384
  %6386 = fadd fast float %6384, 1.000000e+00
  %6387 = fsub fast float 2.000000e+00, %6380
  %6388 = bitcast float %6385 to i32
  %6389 = sub nsw i32 2129859010, %6388
  %6390 = bitcast i32 %6389 to float
  %6391 = fmul fast float %6390, %6387
  %6392 = fadd fast float %6391, -1.000000e+00
  %6393 = bitcast float %6386 to i32
  %6394 = sub nsw i32 2129859010, %6393
  %6395 = bitcast i32 %6394 to float
  %6396 = fmul fast float %6395, %6380
  %6397 = fadd fast float %6396, 1.000000e+00
  %6398 = fmul fast float %6381, 2.000000e+00
  %6399 = fsub fast float 3.000000e+00, %6398
  %6400 = fadd fast float %6398, 1.000000e+00
  %6401 = fsub fast float 2.000000e+00, %6381
  %6402 = bitcast float %6399 to i32
  %6403 = sub nsw i32 2129859010, %6402
  %6404 = bitcast i32 %6403 to float
  %6405 = fmul fast float %6404, %6401
  %6406 = fadd fast float %6405, -1.000000e+00
  %6407 = bitcast float %6400 to i32
  %6408 = sub nsw i32 2129859010, %6407
  %6409 = bitcast i32 %6408 to float
  %6410 = fmul fast float %6409, %6381
  %6411 = fadd fast float %6410, 1.000000e+00
  %6412 = fadd fast float %6392, %6382
  %6413 = fmul fast float %6412, %6210
  %6414 = fadd fast float %6406, %6383
  %6415 = fmul fast float %6414, %6211
  %6416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6413, float %6415, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6417 = extractvalue %dx.types.ResRet.f32 %6416, 0
  %6418 = fmul fast float %6417, %6385
  %6419 = fadd fast float %6397, %6382
  %6420 = fmul fast float %6419, %6210
  %6421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6420, float %6415, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6422 = extractvalue %dx.types.ResRet.f32 %6421, 0
  %6423 = fmul fast float %6422, %6386
  %6424 = fadd fast float %6411, %6383
  %6425 = fmul fast float %6424, %6211
  %6426 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6413, float %6425, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6427 = extractvalue %dx.types.ResRet.f32 %6426, 0
  %6428 = fmul fast float %6427, %6385
  %6429 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %58, float %6420, float %6425, float undef, float undef, i32 0, i32 0, i32 undef, float %6215)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6430 = extractvalue %dx.types.ResRet.f32 %6429, 0
  %6431 = fmul fast float %6430, %6386
  %6432 = fadd fast float %6431, %6428
  %6433 = fmul fast float %6432, %6400
  %6434 = fadd fast float %6423, %6418
  %6435 = fmul fast float %6434, %6399
  %6436 = fadd fast float %6435, %6433
  %6437 = fmul fast float %6436, 6.250000e-02
  br label %6523

; <label>:6438                                    ; preds = %6370
  %6439 = fmul fast float %274, 0x401921FB60000000
  %6440 = call float @dx.op.unary.f32(i32 13, float %6439)  ; Sin(value)
  %6441 = call float @dx.op.unary.f32(i32 12, float %6439)  ; Cos(value)
  %6442 = fsub fast float -0.000000e+00, %6440
  br label %6443

; <label>:6443                                    ; preds = %6492, %6438
  %6444 = phi float [ 0.000000e+00, %6438 ], [ %6487, %6492 ]
  %6445 = phi float [ 0.000000e+00, %6438 ], [ %6489, %6492 ]
  %6446 = phi i32 [ 0, %6438 ], [ %6493, %6492 ]
  %6447 = mul i32 %6446, 2
  %6448 = add i32 0, %6447
  %6449 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6448
  %6450 = load float, float* %6449, align 4
  %6451 = mul i32 %6446, 2
  %6452 = add i32 1, %6451
  %6453 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6452
  %6454 = load float, float* %6453, align 4
  %6455 = fmul fast float %6450, %6441
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6442, float %6455)  ; FMad(a,b,c)
  %6457 = fmul fast float %6450, %6440
  %6458 = call float @dx.op.tertiary.f32(i32 46, float %6454, float %6441, float %6457)  ; FMad(a,b,c)
  %6459 = fmul fast float %6456, %6213
  %6460 = fmul fast float %6458, %6213
  %6461 = fadd fast float %6459, %5339
  %6462 = fadd fast float %6460, %5343
  %6463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %57, float %6461, float %6462, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.ResRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.ResRet.f32 %6463, 2
  %6467 = extractvalue %dx.types.ResRet.f32 %6463, 3
  %6468 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6464, float* %6468, align 4
  %6469 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6465, float* %6469, align 4
  %6470 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6466, float* %6470, align 4
  %6471 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6467, float* %6471, align 4
  %6472 = fsub fast float %6464, %6215
  %6473 = fcmp fast olt float %6472, 0.000000e+00
  %6474 = select i1 %6473, float 0.000000e+00, float 1.000000e+00
  %6475 = fadd fast float %6474, %6444
  %6476 = fmul fast float %6474, %6472
  %6477 = fadd fast float %6476, %6445
  br label %6478

; <label>:6478                                    ; preds = %6478, %6443
  %6479 = phi i32 [ 1, %6443 ], [ %6490, %6478 ]
  %6480 = phi float [ %6477, %6443 ], [ %6489, %6478 ]
  %6481 = phi float [ %6475, %6443 ], [ %6487, %6478 ]
  %6482 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6479
  %6483 = load float, float* %6482, align 4, !tbaa !126, !noalias !116
  %6484 = fsub fast float %6483, %6215
  %6485 = fcmp fast olt float %6484, 0.000000e+00
  %6486 = select i1 %6485, float 0.000000e+00, float 1.000000e+00
  %6487 = fadd fast float %6486, %6481
  %6488 = fmul fast float %6486, %6484
  %6489 = fadd fast float %6488, %6480
  %6490 = add nuw nsw i32 %6479, 1
  %6491 = icmp eq i32 %6490, 4
  br i1 %6491, label %6492, label %6478, !llvm.loop !128

; <label>:6492                                    ; preds = %6478
  %6493 = add nuw nsw i32 %6446, 1
  %6494 = icmp eq i32 %6493, 8
  br i1 %6494, label %6495, label %6443, !llvm.loop !129

; <label>:6495                                    ; preds = %6492
  %6496 = fdiv fast float 1.000000e+00, %6487
  %6497 = fmul fast float %6496, %6489
  %6498 = fdiv fast float 1.000000e+00, %6215
  %6499 = fmul fast float %6497, %6498
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = call float @dx.op.binary.f32(i32 35, float %6500, float 0.000000e+00)  ; FMax(a,b)
  %6502 = fmul fast float %6487, 3.125000e-02
  %6503 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6504 = fmul fast float %6503, 2.000000e+00
  %6505 = fadd fast float %6504, -1.000000e+00
  %6506 = fcmp fast ogt float %6505, 0.000000e+00
  %6507 = fcmp fast olt float %6505, 0.000000e+00
  %6508 = zext i1 %6506 to i32
  %6509 = zext i1 %6507 to i32
  %6510 = sub nsw i32 %6508, %6509
  %6511 = sitofp i32 %6510 to float
  %6512 = fmul fast float %6511, %6505
  %6513 = fsub fast float 1.000000e+00, %6512
  %6514 = fmul fast float %6513, %6513
  %6515 = fmul fast float %6514, %6513
  %6516 = fsub fast float %6513, %6515
  %6517 = fmul fast float %6516, %6501
  %6518 = fsub fast float 1.000000e+00, %6515
  %6519 = fsub fast float %6518, %6517
  %6520 = fmul fast float %6511, 5.000000e-01
  %6521 = fmul fast float %6520, %6519
  %6522 = fsub fast float 5.000000e-01, %6521
  br label %6523

; <label>:6523                                    ; preds = %6495, %6371, %6342, %6218, %6202
  %6524 = phi float [ 1.000000e+00, %6202 ], [ %6284, %6218 ], [ %6369, %6342 ], [ %6437, %6371 ], [ %6522, %6495 ]
  %6525 = fsub fast float %6036, %5869
  %6526 = fmul fast float %6525, %5436
  %6527 = fadd fast float %6526, %5869
  %6528 = fsub fast float %6203, %6527
  %6529 = fmul fast float %6528, %5435
  %6530 = fadd fast float %6529, %6527
  %6531 = fsub fast float %6524, %6530
  %6532 = fmul fast float %6531, %5463
  %6533 = fadd fast float %6532, %6530
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6536 = fcmp fast ogt float %6535, 0.000000e+00
  br i1 %6536, label %6537, label %6577, !dx.controlflow.hints !133

; <label>:6537                                    ; preds = %6523
  %6538 = fcmp fast ugt float %6535, 0.000000e+00
  br i1 %6538, label %6539, label %6574

; <label>:6539                                    ; preds = %6537
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6549 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6550 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6551 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = fadd fast float %6553, %5316
  %6557 = fadd fast float %6554, %5317
  %6558 = fadd fast float %6555, %5318
  %6559 = fmul fast float %6556, %6541
  %6560 = call float @dx.op.tertiary.f32(i32 46, float %6542, float %6557, float %6559)  ; FMad(a,b,c)
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6543, float %6558, float %6560)  ; FMad(a,b,c)
  %6562 = fadd fast float %6561, %6544
  %6563 = fmul fast float %6556, %6546
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6547, float %6557, float %6563)  ; FMad(a,b,c)
  %6565 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6558, float %6564)  ; FMad(a,b,c)
  %6566 = fadd fast float %6565, %6549
  %6567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %53, float %6562, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6568 = extractvalue %dx.types.ResRet.f32 %6567, 0
  %6569 = fmul fast float %6568, %6551
  %6570 = fadd fast float %6569, %6550
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fmul fast float %6571, %6535
  %6573 = fsub fast float 1.000000e+00, %6572
  br label %6574

; <label>:6574                                    ; preds = %6539, %6537
  %6575 = phi float [ %6573, %6539 ], [ 1.000000e+00, %6537 ]
  %6576 = fmul fast float %6575, %6533
  br label %6577

; <label>:6577                                    ; preds = %6574, %6523, %5296
  %6578 = phi float [ 1.000000e+00, %5296 ], [ %6576, %6574 ], [ %6533, %6523 ]
  %6579 = call float @dx.op.binary.f32(i32 36, float %6578, float %6578)  ; FMin(a,b)
  %6580 = call float @dx.op.binary.f32(i32 36, float %6578, float %6579)  ; FMin(a,b)
  %6581 = fcmp fast ogt float %6580, 0.000000e+00
  br i1 %6581, label %6582, label %6747, !dx.controlflow.hints !134

; <label>:6582                                    ; preds = %6577
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.CBufRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.CBufRet.f32 %6583, 2
  %6587 = extractvalue %dx.types.CBufRet.f32 %6583, 3
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6598 = fmul fast float %6584, %5316
  %6599 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %6585, float %6598)  ; FMad(a,b,c)
  %6600 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %6586, float %6599)  ; FMad(a,b,c)
  %6601 = fadd fast float %6600, %6587
  %6602 = fmul fast float %6589, %5316
  %6603 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %6590, float %6602)  ; FMad(a,b,c)
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %6591, float %6603)  ; FMad(a,b,c)
  %6605 = fadd fast float %6604, %6592
  %6606 = fmul fast float %6594, %5316
  %6607 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %6595, float %6606)  ; FMad(a,b,c)
  %6608 = call float @dx.op.tertiary.f32(i32 46, float %5318, float %6596, float %6607)  ; FMad(a,b,c)
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6609, 3
  %6613 = fmul fast float %6612, %6601
  %6614 = fmul fast float %6612, %6605
  %6615 = fadd fast float %6613, %6610
  %6616 = fadd fast float %6614, %6611
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.CBufRet.f32 %6617, 1
  %6620 = fsub fast float %6615, %6618
  %6621 = fsub fast float %6616, %6619
  %6622 = fcmp fast olt float %6620, 0.000000e+00
  %6623 = fcmp fast olt float %6621, 0.000000e+00
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6628 = extractvalue %dx.types.CBufRet.f32 %6624, 3
  %6629 = select i1 %6622, float %6625, float %6627
  %6630 = select i1 %6623, float %6626, float %6628
  %6631 = fmul fast float %6629, %6620
  %6632 = fmul fast float %6630, %6621
  %6633 = call float @dx.op.unary.f32(i32 6, float %6631)  ; FAbs(value)
  %6634 = call float @dx.op.unary.f32(i32 6, float %6632)  ; FAbs(value)
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = call float @dx.op.binary.f32(i32 35, float %6633, float %6634)  ; FMax(a,b)
  %6638 = fsub fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = fcmp fast ogt float %6639, 0.000000e+00
  br i1 %6640, label %6641, label %6682, !dx.controlflow.hints !135

; <label>:6641                                    ; preds = %6582
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %56, float %6615, float %6616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6644 = fcmp fast ogt float %6643, 0.000000e+00
  br i1 %6644, label %6645, label %6677

; <label>:6645                                    ; preds = %6641
  %6646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %56, float %6615, float %6616, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6647 = extractvalue %dx.types.ResRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.ResRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.ResRet.f32 %6646, 2
  %6650 = extractvalue %dx.types.ResRet.f32 %6646, 3
  %6651 = fsub fast float 1.000000e+00, %6597
  %6652 = fsub fast float %6651, %6608
  %6653 = fmul fast float %6652, 0x400921FB60000000
  %6654 = fadd fast float %6653, 0x3FF921FB60000000
  %6655 = call float @dx.op.unary.f32(i32 13, float %6654)  ; Sin(value)
  %6656 = fadd fast float %6655, -1.000000e+00
  %6657 = fmul fast float %6656, 0x3FD45F3060000000
  %6658 = fmul fast float %6652, 0x401921FB60000000
  %6659 = fadd fast float %6658, 0x400921FB60000000
  %6660 = call float @dx.op.unary.f32(i32 13, float %6659)  ; Sin(value)
  %6661 = fadd fast float %6660, 0x3E7777A5C0000000
  %6662 = fmul fast float %6661, 0x3FC45F3060000000
  %6663 = fmul fast float %6652, 0x4022D97C80000000
  %6664 = fadd fast float %6663, 0x4012D97C80000000
  %6665 = call float @dx.op.unary.f32(i32 13, float %6664)  ; Sin(value)
  %6666 = fadd fast float %6665, 1.000000e+00
  %6667 = fmul fast float %6666, 0x3FBB2995E0000000
  %6668 = fmul fast float %6652, 0x402921FB60000000
  %6669 = fadd fast float %6668, 0x401921FB60000000
  %6670 = call float @dx.op.unary.f32(i32 13, float %6669)  ; Sin(value)
  %6671 = fadd fast float %6670, 0xBE8777A5C0000000
  %6672 = fmul fast float %6671, 0x3FB45F3060000000
  %6673 = call float @dx.op.dot4.f32(i32 56, float %6647, float %6648, float %6649, float %6650, float %6657, float %6662, float %6667, float %6672)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6674 = fmul fast float %6673, 0xBFF7154760000000
  %6675 = call float @dx.op.unary.f32(i32 21, float %6674)  ; Exp(value)
  %6676 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  br label %6677

; <label>:6677                                    ; preds = %6645, %6641
  %6678 = phi float [ %6676, %6645 ], [ 1.000000e+00, %6641 ]
  %6679 = fadd fast float %6678, -1.000000e+00
  %6680 = fmul fast float %6679, %6639
  %6681 = fadd fast float %6680, 1.000000e+00
  br label %6682

; <label>:6682                                    ; preds = %6677, %6582
  %6683 = phi float [ %6681, %6677 ], [ 1.000000e+00, %6582 ]
  %6684 = fmul fast float %6683, %6578
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = fadd fast float %6686, %204
  %6690 = fadd fast float %6687, %205
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.CBufRet.f32 %6693, 1
  %6696 = extractvalue %dx.types.CBufRet.f32 %6693, 2
  %6697 = fsub fast float -0.000000e+00, %6689
  %6698 = fsub fast float -0.000000e+00, %6690
  %6699 = fsub fast float %4568, %6688
  %6700 = fadd fast float %6699, %6692
  %6701 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6697, float %6698, float %6700)  ; Dot3(ax,ay,az,bx,by,bz)
  %6702 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6694, float %6695, float %6696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6703 = fdiv fast float 1.000000e+00, %6702
  %6704 = fmul fast float %6703, %6701
  %6705 = fmul fast float %6694, %6704
  %6706 = fmul fast float %6695, %6704
  %6707 = fadd fast float %6705, %6689
  %6708 = fadd fast float %6706, %6690
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = fsub fast float %6707, %6710
  %6713 = fsub fast float %6708, %6711
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6716 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6717 = fmul fast float %6712, %6715
  %6718 = fmul fast float %6713, %6716
  %6719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.i32 %6719, 3
  %6721 = icmp eq i32 %6720, 0
  br i1 %6721, label %6727, label %6722

; <label>:6722                                    ; preds = %6682
  %6723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %55, float %6717, float %6718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6724 = extractvalue %dx.types.ResRet.f32 %6723, 0
  %6725 = extractvalue %dx.types.ResRet.f32 %6723, 1
  %6726 = extractvalue %dx.types.ResRet.f32 %6723, 2
  br label %6732

; <label>:6727                                    ; preds = %6682
  %6728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %56, float %6717, float %6718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6729 = extractvalue %dx.types.ResRet.f32 %6728, 0
  %6730 = extractvalue %dx.types.ResRet.f32 %6728, 1
  %6731 = extractvalue %dx.types.ResRet.f32 %6728, 2
  br label %6732

; <label>:6732                                    ; preds = %6727, %6722
  %6733 = phi float [ %6724, %6722 ], [ %6729, %6727 ]
  %6734 = phi float [ %6725, %6722 ], [ %6730, %6727 ]
  %6735 = phi float [ %6726, %6722 ], [ %6731, %6727 ]
  %6736 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6737 = fmul fast float %6736, %6733
  %6738 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6739 = fsub fast float %6704, %6738
  %6740 = fsub fast float %6739, %6737
  %6741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6740)  ; FMax(a,b)
  %6742 = fmul fast float %6741, %6734
  %6743 = call float @dx.op.binary.f32(i32 36, float %6735, float %6742)  ; FMin(a,b)
  %6744 = fmul fast float %6743, 0xBFF7154760000000
  %6745 = call float @dx.op.unary.f32(i32 21, float %6744)  ; Exp(value)
  %6746 = fmul fast float %6684, %6745
  br label %6747

; <label>:6747                                    ; preds = %6732, %6577
  %6748 = phi float [ %6746, %6732 ], [ %6578, %6577 ]
  %6749 = call float @dx.op.binary.f32(i32 36, float %6748, float %6748)  ; FMin(a,b)
  %6750 = call float @dx.op.binary.f32(i32 36, float %6748, float %6749)  ; FMin(a,b)
  %6751 = fcmp fast ogt float %6750, 0.000000e+00
  br i1 %6751, label %6752, label %6999, !dx.controlflow.hints !136

; <label>:6752                                    ; preds = %6747
  %6753 = fmul fast float %6748, %5308
  %6754 = fmul fast float %6748, %5309
  %6755 = fmul fast float %6748, %5310
  %6756 = fsub fast float %206, %3745
  %6757 = fcmp fast ogt float %6756, 0.000000e+00
  %6758 = fmul fast float %5297, 5.120000e+02
  %6759 = fmul fast float %5298, 5.120000e+02
  %6760 = fmul fast float %5299, 5.120000e+02
  %6761 = fadd fast float %6760, %206
  %6762 = fsub fast float %3745, %6761
  %6763 = fmul fast float %6762, 2.000000e+00
  %6764 = fadd fast float %6763, %6761
  %6765 = select i1 %6757, float %6764, float %6761
  %6766 = fsub fast float %6765, %206
  %6767 = call float @dx.op.dot3.f32(i32 55, float %6758, float %6759, float %6766, float %6758, float %6759, float %6766)  ; Dot3(ax,ay,az,bx,by,bz)
  %6768 = call float @dx.op.unary.f32(i32 25, float %6767)  ; Rsqrt(value)
  %6769 = fmul fast float %6768, %6758
  %6770 = fmul fast float %6768, %6759
  %6771 = fmul fast float %6768, %6766
  %6772 = fsub fast float %3745, %206
  %6773 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6772)  ; Dot3(ax,ay,az,bx,by,bz)
  %6774 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6769, float %6770, float %6771)  ; Dot3(ax,ay,az,bx,by,bz)
  %6775 = fdiv fast float 1.000000e+00, %6774
  %6776 = fmul fast float %6775, %6773
  %6777 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6756, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = fcmp fast ogt float %6777, 0.000000e+00
  %6779 = fcmp fast olt float %6777, 0.000000e+00
  %6780 = zext i1 %6778 to i32
  %6781 = zext i1 %6779 to i32
  %6782 = sub nsw i32 %6780, %6781
  %6783 = sitofp i32 %6782 to float
  %6784 = fsub fast float %6765, %3745
  %6785 = call float @dx.op.dot3.f32(i32 55, float %6758, float %6759, float %6784, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = fcmp fast ogt float %6785, 0.000000e+00
  %6787 = fcmp fast olt float %6785, 0.000000e+00
  %6788 = zext i1 %6786 to i32
  %6789 = zext i1 %6787 to i32
  %6790 = sub nsw i32 %6788, %6789
  %6791 = sitofp i32 %6790 to float
  %6792 = fcmp fast une float %6783, %6791
  br i1 %6792, label %6793, label %6803

; <label>:6793                                    ; preds = %6752
  %6794 = fmul fast float %6776, %6771
  %6795 = fmul fast float %6776, %6770
  %6796 = fmul fast float %6776, %6769
  %6797 = fmul fast float %6796, %6796
  %6798 = fmul fast float %6795, %6795
  %6799 = fadd fast float %6797, %6798
  %6800 = fmul fast float %6794, %6794
  %6801 = fadd fast float %6799, %6800
  %6802 = call float @dx.op.unary.f32(i32 24, float %6801)  ; Sqrt(value)
  br label %6813

; <label>:6803                                    ; preds = %6752
  %6804 = icmp slt i32 %6782, 0
  br i1 %6804, label %6805, label %6813

; <label>:6805                                    ; preds = %6803
  %6806 = fsub fast float %206, %6765
  %6807 = fmul fast float %6758, %6758
  %6808 = fmul fast float %6759, %6759
  %6809 = fadd fast float %6807, %6808
  %6810 = fmul fast float %6806, %6806
  %6811 = fadd fast float %6809, %6810
  %6812 = call float @dx.op.unary.f32(i32 24, float %6811)  ; Sqrt(value)
  br label %6813

; <label>:6813                                    ; preds = %6805, %6803, %6793
  %6814 = phi float [ %6802, %6793 ], [ %6812, %6805 ], [ 0.000000e+00, %6803 ]
  %6815 = fsub fast float -0.000000e+00, %6814
  %6816 = select i1 %6757, float -0.000000e+00, float %6815
  %6817 = fmul fast float %3746, 0x3FF7154760000000
  %6818 = fmul fast float %6817, %6816
  %6819 = fmul fast float %3747, 0x3FF7154760000000
  %6820 = fmul fast float %6819, %6816
  %6821 = fmul fast float %3748, 0x3FF7154760000000
  %6822 = fmul fast float %6821, %6816
  %6823 = call float @dx.op.unary.f32(i32 21, float %6818)  ; Exp(value)
  %6824 = call float @dx.op.unary.f32(i32 21, float %6820)  ; Exp(value)
  %6825 = call float @dx.op.unary.f32(i32 21, float %6822)  ; Exp(value)
  %6826 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6827 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6828 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  %6829 = fmul fast float %6753, %6826
  %6830 = fmul fast float %6754, %6827
  %6831 = fmul fast float %6755, %6828
  %6832 = fsub fast float %5297, %4571
  %6833 = fsub fast float %5298, %4572
  %6834 = fsub fast float %5299, %4573
  %6835 = call float @dx.op.dot3.f32(i32 55, float %6832, float %6833, float %6834, float %6832, float %6833, float %6834)  ; Dot3(ax,ay,az,bx,by,bz)
  %6836 = call float @dx.op.unary.f32(i32 25, float %6835)  ; Rsqrt(value)
  %6837 = fmul fast float %6836, %6832
  %6838 = fmul fast float %6836, %6833
  %6839 = fmul fast float %6836, %6834
  %6840 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5299, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %6837, float %6838, float %6839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6842 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6843 = fmul fast float %6842, %6842
  %6844 = fmul fast float %6843, %4604
  %6845 = call float @dx.op.unary.f32(i32 7, float %6844)  ; Saturate(value)
  %6846 = fmul fast float %6845, %6842
  %6847 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %6837, float %6838, float %6839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = fmul fast float %6847, %6847
  %6849 = call float @dx.op.unary.f32(i32 6, float %6840)  ; FAbs(value)
  %6850 = fsub fast float 1.000000e+00, %4597
  %6851 = fmul fast float %4579, %4579
  %6852 = fmul fast float %6851, %6850
  %6853 = fadd fast float %6852, %4597
  %6854 = bitcast float %6853 to i32
  %6855 = ashr i32 %6854, 1
  %6856 = add nsw i32 %6855, 532487669
  %6857 = bitcast i32 %6856 to float
  %6858 = fadd fast float %6857, %4579
  %6859 = fmul fast float %4597, %6848
  %6860 = fsub fast float 1.000000e+00, %6848
  %6861 = fadd fast float %6860, %6859
  %6862 = fmul fast float %6849, %6849
  %6863 = fmul fast float %6862, %6850
  %6864 = fadd fast float %6863, %4597
  %6865 = bitcast float %6864 to i32
  %6866 = ashr i32 %6865, 1
  %6867 = add nsw i32 %6866, 532487669
  %6868 = bitcast i32 %6867 to float
  %6869 = fadd fast float %6868, %6849
  %6870 = fmul fast float %6861, %6861
  %6871 = fmul fast float %6870, %6858
  %6872 = fmul fast float %6871, %6869
  %6873 = fdiv fast float 0x3FF0A00000000000, %6872
  %6874 = fmul fast float %6873, %4597
  %6875 = call float @dx.op.unary.f32(i32 6, float %6841)  ; FAbs(value)
  %6876 = fsub fast float 1.000000e+00, %6875
  %6877 = bitcast float %6876 to i32
  %6878 = sitofp i32 %6877 to float
  %6879 = fmul fast float %6878, 5.000000e+00
  %6880 = fadd fast float %6879, 0xC1EFBF8940000000
  %6881 = fptosi float %6880 to i32
  %6882 = bitcast i32 %6881 to float
  %6883 = fsub fast float 1.000000e+00, %4528
  %6884 = fsub fast float 1.000000e+00, %4529
  %6885 = fsub fast float 1.000000e+00, %4577
  %6886 = fmul fast float %6882, %6883
  %6887 = fmul fast float %6882, %6884
  %6888 = fmul fast float %6882, %6885
  %6889 = fadd fast float %6886, %4528
  %6890 = fadd fast float %6887, %4529
  %6891 = fadd fast float %6888, %4577
  br i1 %4716, label %6892, label %6915

; <label>:6892                                    ; preds = %6813
  %6893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3343, float %6875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6894 = extractvalue %dx.types.ResRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.ResRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.ResRet.f32 %6893, 2
  %6897 = fadd fast float %6894, -5.000000e-01
  %6898 = fadd fast float %6895, -5.000000e-01
  %6899 = fadd fast float %6896, -5.000000e-01
  %6900 = fmul fast float %4528, 4.000000e+00
  %6901 = fmul fast float %6900, %6883
  %6902 = fmul fast float %6901, %6897
  %6903 = fmul fast float %4529, 4.000000e+00
  %6904 = fmul fast float %6903, %6884
  %6905 = fmul fast float %6904, %6898
  %6906 = fmul fast float %4577, 4.000000e+00
  %6907 = fmul fast float %6906, %6885
  %6908 = fmul fast float %6907, %6899
  %6909 = fadd fast float %6902, %6889
  %6910 = fadd fast float %6905, %6890
  %6911 = fadd fast float %6908, %6891
  %6912 = call float @dx.op.unary.f32(i32 7, float %6909)  ; Saturate(value)
  %6913 = call float @dx.op.unary.f32(i32 7, float %6910)  ; Saturate(value)
  %6914 = call float @dx.op.unary.f32(i32 7, float %6911)  ; Saturate(value)
  br label %6915

; <label>:6915                                    ; preds = %6892, %6813
  %6916 = phi float [ %6912, %6892 ], [ %6889, %6813 ]
  %6917 = phi float [ %6913, %6892 ], [ %6890, %6813 ]
  %6918 = phi float [ %6914, %6892 ], [ %6891, %6813 ]
  %6919 = fmul fast float %6840, 9.843750e-01
  %6920 = fadd fast float %6919, 7.812500e-03
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %6920, float %4706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 2
  %6923 = extractvalue %dx.types.ResRet.f32 %6921, 3
  %6924 = fmul fast float %6922, %4528
  %6925 = fmul fast float %6922, %4529
  %6926 = fmul fast float %6922, %4577
  %6927 = fadd fast float %6924, %6923
  %6928 = fadd fast float %6925, %6923
  %6929 = fadd fast float %6926, %6923
  br i1 %4716, label %6930, label %6953

; <label>:6930                                    ; preds = %6915
  %6931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3343, float %6840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.ResRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.ResRet.f32 %6931, 2
  %6935 = fadd fast float %6932, -5.000000e-01
  %6936 = fadd fast float %6933, -5.000000e-01
  %6937 = fadd fast float %6934, -5.000000e-01
  %6938 = fmul fast float %4528, 4.000000e+00
  %6939 = fmul fast float %6938, %6883
  %6940 = fmul fast float %6939, %6935
  %6941 = fmul fast float %4529, 4.000000e+00
  %6942 = fmul fast float %6941, %6884
  %6943 = fmul fast float %6942, %6936
  %6944 = fmul fast float %4577, 4.000000e+00
  %6945 = fmul fast float %6944, %6885
  %6946 = fmul fast float %6945, %6937
  %6947 = fadd fast float %6940, %6927
  %6948 = fadd fast float %6943, %6928
  %6949 = fadd fast float %6946, %6929
  %6950 = call float @dx.op.unary.f32(i32 7, float %6947)  ; Saturate(value)
  %6951 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6952 = call float @dx.op.unary.f32(i32 7, float %6949)  ; Saturate(value)
  br label %6953

; <label>:6953                                    ; preds = %6930, %6915
  %6954 = phi float [ %6950, %6930 ], [ %6927, %6915 ]
  %6955 = phi float [ %6951, %6930 ], [ %6928, %6915 ]
  %6956 = phi float [ %6952, %6930 ], [ %6929, %6915 ]
  %6957 = call float @dx.op.binary.f32(i32 35, float %6955, float %6956)  ; FMax(a,b)
  %6958 = call float @dx.op.binary.f32(i32 35, float %6954, float %6957)  ; FMax(a,b)
  %6959 = fsub fast float 1.000000e+00, %6958
  %6960 = fmul fast float %6916, %6874
  %6961 = fmul fast float %6917, %6874
  %6962 = fmul fast float %6918, %6874
  %6963 = fsub fast float 1.000000e+00, %6841
  %6964 = bitcast float %6963 to i32
  %6965 = sitofp i32 %6964 to float
  %6966 = fmul fast float %6965, 5.000000e+00
  %6967 = fadd fast float %6966, 0xC1EFBF8940000000
  %6968 = fptosi float %6967 to i32
  %6969 = bitcast i32 %6968 to float
  %6970 = fmul fast float %6969, %3344
  %6971 = fmul fast float %6959, %6970
  %6972 = fmul fast float %6971, %5258
  %6973 = fmul fast float %6971, %5259
  %6974 = fmul fast float %6971, %5260
  %6975 = fadd fast float %6972, %6960
  %6976 = fadd fast float %6973, %6961
  %6977 = fadd fast float %6974, %6962
  %6978 = fmul fast float %6846, %6829
  %6979 = fmul fast float %6978, %6959
  %6980 = fmul fast float %6846, %6830
  %6981 = fmul fast float %6980, %6959
  %6982 = fmul fast float %6846, %6831
  %6983 = fmul fast float %6982, %6959
  %6984 = fmul fast float %6978, %6975
  %6985 = fmul fast float %6980, %6976
  %6986 = fmul fast float %6982, %6977
  %6987 = fadd fast float %6979, %5242
  %6988 = fmul fast float %6987, %3340
  %6989 = fadd fast float %6981, %5243
  %6990 = fmul fast float %6989, %3340
  %6991 = fadd fast float %6983, %5244
  %6992 = fmul fast float %6991, %3340
  %6993 = fadd fast float %6984, %5285
  %6994 = fmul fast float %6993, %3340
  %6995 = fadd fast float %6985, %5288
  %6996 = fmul fast float %6995, %3340
  %6997 = fadd fast float %6986, %5291
  %6998 = fmul fast float %6997, %3340
  br label %6999

; <label>:6999                                    ; preds = %6953, %6747, %5238
  %7000 = phi float [ %5286, %5238 ], [ %5286, %6747 ], [ %6994, %6953 ]
  %7001 = phi float [ %5289, %5238 ], [ %5289, %6747 ], [ %6996, %6953 ]
  %7002 = phi float [ %5292, %5238 ], [ %5292, %6747 ], [ %6998, %6953 ]
  %7003 = phi float [ %5281, %5238 ], [ %5281, %6747 ], [ %6988, %6953 ]
  %7004 = phi float [ %5282, %5238 ], [ %5282, %6747 ], [ %6990, %6953 ]
  %7005 = phi float [ %5283, %5238 ], [ %5283, %6747 ], [ %6992, %6953 ]
  %7006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.i32 %7006, 0
  %7008 = icmp eq i32 %7007, 0
  br i1 %7008, label %7671, label %7009

; <label>:7009                                    ; preds = %6999
  %7010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7011 = extractvalue %dx.types.CBufRet.f32 %7010, 2
  %7012 = extractvalue %dx.types.CBufRet.f32 %7010, 3
  %7013 = fmul fast float %7011, %117
  %7014 = fmul fast float %7012, %118
  %7015 = fptoui float %7013 to i32
  %7016 = fptoui float %7014 to i32
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 3
  %7021 = fadd fast float %104, -4.000000e+00
  %7022 = call float @dx.op.binary.f32(i32 35, float %7021, float 0.000000e+00)  ; FMax(a,b)
  %7023 = fadd fast float %7022, %7018
  %7024 = fmul fast float %7023, %7019
  %7025 = call float @dx.op.unary.f32(i32 23, float %7024)  ; Log(value)
  %7026 = fmul fast float %7025, %7020
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 2
  %7029 = fmul fast float %7026, %7028
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.i32 %7031, 1
  %7033 = add i32 %7032, -1
  %7034 = uitofp i32 %7032 to float
  %7035 = fmul fast float %7034, %7030
  %7036 = fptoui float %7035 to i32
  %7037 = call i32 @dx.op.binary.i32(i32 40, i32 %7036, i32 %7033)  ; UMin(a,b)
  %7038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.i32 %7038, 2
  %7040 = extractvalue %dx.types.CBufRet.i32 %7038, 3
  %7041 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7016, i32 %7039, i32 %7015)  ; UMad(a,b,c)
  %7042 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7037, i32 %7040, i32 %7041)  ; UMad(a,b,c)
  %7043 = add nsw i32 %7007, -1
  %7044 = call i32 @dx.op.binary.i32(i32 37, i32 %7043, i32 0)  ; IMax(a,b)
  %7045 = call float @dx.op.binary.f32(i32 35, float %104, float 0.000000e+00)  ; FMax(a,b)
  %7046 = fptoui float %7045 to i32
  %7047 = lshr i32 %7046, 5
  %7048 = call i32 @dx.op.binary.i32(i32 40, i32 %7047, i32 8191)  ; UMin(a,b)
  %7049 = shl i32 %7048, 2
  %7050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7049, i32 undef)  ; BufferLoad(srv,index,wot)
  %7051 = extractvalue %dx.types.ResRet.i32 %7050, 0
  %7052 = lshr i32 %7051, 16
  %7053 = and i32 %7051, 65535
  %7054 = lshr i32 %7051, 21
  %7055 = lshr i32 %7053, 5
  %7056 = call i32 @dx.op.binary.i32(i32 40, i32 %7055, i32 %7044)  ; UMin(a,b)
  %7057 = icmp ugt i32 %7054, %7056
  br i1 %7057, label %7671, label %7058

; <label>:7058                                    ; preds = %7009
  br label %7059

; <label>:7059                                    ; preds = %7661, %7058
  %7060 = phi i32 [ %7668, %7661 ], [ %7054, %7058 ]
  %7061 = phi float [ %7662, %7661 ], [ %7000, %7058 ]
  %7062 = phi float [ %7663, %7661 ], [ %7001, %7058 ]
  %7063 = phi float [ %7664, %7661 ], [ %7002, %7058 ]
  %7064 = phi float [ %7665, %7661 ], [ %7003, %7058 ]
  %7065 = phi float [ %7666, %7661 ], [ %7004, %7058 ]
  %7066 = phi float [ %7667, %7661 ], [ %7005, %7058 ]
  %7067 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.i32 %7067, 0
  %7069 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7042, i32 %7068, i32 %7060)  ; UMad(a,b,c)
  %7070 = shl i32 %7069, 2
  %7071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %7070, i32 undef)  ; BufferLoad(srv,index,wot)
  %7072 = extractvalue %dx.types.ResRet.i32 %7071, 0
  %7073 = shl i32 %7060, 5
  %7074 = sub nsw i32 %7052, %7073
  %7075 = call i32 @dx.op.binary.i32(i32 37, i32 %7074, i32 0)  ; IMax(a,b)
  %7076 = call i32 @dx.op.binary.i32(i32 38, i32 %7075, i32 31)  ; IMin(a,b)
  %7077 = sub nsw i32 1, %7052
  %7078 = add nsw i32 %7077, %7053
  %7079 = call i32 @dx.op.binary.i32(i32 37, i32 %7078, i32 0)  ; IMax(a,b)
  %7080 = call i32 @dx.op.binary.i32(i32 38, i32 %7079, i32 32)  ; IMin(a,b)
  %7081 = and i32 %7080, 31
  %7082 = shl i32 -1, %7081
  %7083 = xor i32 %7082, -1
  %7084 = and i32 %7076, 31
  %7085 = shl i32 %7083, %7084
  %7086 = icmp eq i32 %7080, 32
  %7087 = select i1 %7086, i32 -1, i32 %7085
  %7088 = and i32 %7087, %7072
  %7089 = icmp eq i32 %7088, 0
  br i1 %7089, label %7661, label %7090

; <label>:7090                                    ; preds = %7059
  br label %7091

; <label>:7091                                    ; preds = %7225, %7090
  %7092 = phi i32 [ %7103, %7225 ], [ %7088, %7090 ]
  %7093 = phi float [ %7226, %7225 ], [ %7061, %7090 ]
  %7094 = phi float [ %7227, %7225 ], [ %7062, %7090 ]
  %7095 = phi float [ %7228, %7225 ], [ %7063, %7090 ]
  %7096 = phi float [ %7229, %7225 ], [ %7064, %7090 ]
  %7097 = phi float [ %7230, %7225 ], [ %7065, %7090 ]
  %7098 = phi float [ %7231, %7225 ], [ %7066, %7090 ]
  %7099 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7092)  ; FirstbitLo(value)
  %7100 = add i32 %7099, %7073
  %7101 = and i32 %7099, 31
  %7102 = shl i32 1, %7101
  %7103 = xor i32 %7102, %7092
  %7104 = mul i32 %7100, 112
  %7105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7104, i32 undef)  ; BufferLoad(srv,index,wot)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = extractvalue %dx.types.ResRet.f32 %7105, 1
  %7108 = extractvalue %dx.types.ResRet.f32 %7105, 2
  %7109 = or i32 %7104, 12
  %7110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7109, i32 undef)  ; BufferLoad(srv,index,wot)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = add i32 %7104, 16
  %7113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7112, i32 undef)  ; BufferLoad(srv,index,wot)
  %7114 = extractvalue %dx.types.ResRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.ResRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.ResRet.f32 %7113, 2
  %7117 = add i32 %7104, 28
  %7118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7117, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.i32 %7118, 0
  %7120 = add i32 %7104, 44
  %7121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7120, i32 undef)  ; BufferLoad(srv,index,wot)
  %7122 = extractvalue %dx.types.ResRet.f32 %7121, 0
  %7123 = add i32 %7104, 48
  %7124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7123, i32 undef)  ; BufferLoad(srv,index,wot)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7129 = add i32 %7104, 64
  %7130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7129, i32 undef)  ; BufferLoad(srv,index,wot)
  %7131 = extractvalue %dx.types.ResRet.f32 %7130, 0
  %7132 = extractvalue %dx.types.ResRet.f32 %7130, 1
  %7133 = extractvalue %dx.types.ResRet.f32 %7130, 2
  %7134 = extractvalue %dx.types.ResRet.f32 %7130, 3
  %7135 = add i32 %7104, 80
  %7136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %7135, i32 undef)  ; BufferLoad(srv,index,wot)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 1
  %7138 = extractvalue %dx.types.ResRet.f32 %7136, 2
  %7139 = add i32 %7104, 92
  %7140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %7139, i32 undef)  ; BufferLoad(srv,index,wot)
  %7141 = extractvalue %dx.types.ResRet.i32 %7140, 0
  %7142 = call float @dx.op.dot3.f32(i32 55, float %7106, float %7107, float %7108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7143 = select i1 %263, float %7137, float %7106
  %7144 = select i1 %263, float %7142, float %7107
  %7145 = select i1 %263, float %7138, float %7108
  %7146 = and i32 %7141, 65535
  %7147 = uitofp i32 %7146 to float
  %7148 = lshr i32 %7141, 16
  %7149 = uitofp i32 %7148 to float
  %7150 = and i32 %7119, 65535
  %7151 = and i32 %7119, 50331648
  %7152 = icmp eq i32 %7151, 33554432
  %7153 = fsub fast float %7125, %204
  %7154 = fsub fast float %7126, %205
  %7155 = fsub fast float %7127, %206
  %7156 = call float @dx.op.dot3.f32(i32 55, float %7153, float %7154, float %7155, float %7153, float %7154, float %7155)  ; Dot3(ax,ay,az,bx,by,bz)
  %7157 = call float @dx.op.unary.f32(i32 24, float %7156)  ; Sqrt(value)
  %7158 = fdiv fast float 1.000000e+00, %7157
  %7159 = fmul fast float %7158, %7153
  %7160 = fmul fast float %7158, %7154
  %7161 = fmul fast float %7158, %7155
  %7162 = fadd fast float %7157, %7111
  %7163 = fdiv fast float 1.000000e+00, %7162
  %7164 = fmul float %7122, %7163
  %7165 = fmul float %7164, %7164
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  br i1 %7152, label %7167, label %7188

; <label>:7167                                    ; preds = %7091
  %7168 = fmul fast float %7133, %7114
  %7169 = fmul fast float %7133, %7115
  %7170 = fmul fast float %7133, %7116
  %7171 = fadd fast float %7153, %7168
  %7172 = fadd fast float %7154, %7169
  %7173 = fadd fast float %7155, %7170
  %7174 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7172, float %7173, float %7171, float %7172, float %7173)  ; Dot3(ax,ay,az,bx,by,bz)
  %7175 = call float @dx.op.unary.f32(i32 25, float %7174)  ; Rsqrt(value)
  %7176 = fmul fast float %7175, %7171
  %7177 = fmul fast float %7175, %7172
  %7178 = fmul fast float %7175, %7173
  %7179 = fsub fast float %204, %7125
  %7180 = fsub fast float %205, %7126
  %7181 = fsub fast float %206, %7127
  %7182 = fsub fast float -0.000000e+00, %7179
  %7183 = fsub fast float -0.000000e+00, %7180
  %7184 = fsub fast float -0.000000e+00, %7181
  %7185 = call float @dx.op.dot3.f32(i32 55, float %7182, float %7183, float %7184, float %7114, float %7115, float %7116)  ; Dot3(ax,ay,az,bx,by,bz)
  %7186 = fcmp fast ogt float %7185, 0.000000e+00
  %7187 = uitofp i1 %7186 to float
  br label %7188

; <label>:7188                                    ; preds = %7167, %7091
  %7189 = phi float [ %7187, %7167 ], [ 1.000000e+00, %7091 ]
  %7190 = phi float [ %7176, %7167 ], [ %7159, %7091 ]
  %7191 = phi float [ %7177, %7167 ], [ %7160, %7091 ]
  %7192 = phi float [ %7178, %7167 ], [ %7161, %7091 ]
  %7193 = call float @dx.op.dot3.f32(i32 55, float %7114, float %7115, float %7116, float %7190, float %7191, float %7192)  ; Dot3(ax,ay,az,bx,by,bz)
  %7194 = fmul fast float %7193, %7193
  %7195 = call float @dx.op.unary.f32(i32 7, float %7194)  ; Saturate(value)
  %7196 = fsub fast float 1.000000e+00, %7195
  %7197 = fmul fast float %7196, 5.000000e-01
  %7198 = fcmp fast ogt float %7193, 0.000000e+00
  %7199 = fsub fast float 1.000000e+00, %7197
  %7200 = select i1 %7198, float %7197, float %7199
  %7201 = fmul fast float %7200, %7149
  %7202 = fadd fast float %7201, %7147
  %7203 = fmul fast float %7202, 0x3EF0001000000000
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %56, float %7203, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = fmul fast float %7193, %7131
  %7207 = fadd fast float %7206, %7132
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  %7209 = select i1 %7152, float 1.000000e+00, float %7208
  %7210 = select i1 %7152, float %7208, float 1.000000e+00
  %7211 = fmul fast float %7157, %7128
  %7212 = fsub fast float 1.000000e+00, %7211
  %7213 = fmul fast float %7212, %7134
  %7214 = call float @dx.op.unary.f32(i32 7, float %7213)  ; Saturate(value)
  %7215 = fmul fast float %7214, %7210
  %7216 = fmul fast float %7215, 2.000000e+00
  %7217 = fsub fast float 3.000000e+00, %7216
  %7218 = fmul fast float %7205, %7189
  %7219 = fmul fast float %7215, %7215
  %7220 = fmul fast float %7219, %7218
  %7221 = fmul fast float %7220, %7217
  %7222 = call float @dx.op.binary.f32(i32 36, float %7221, float %7221)  ; FMin(a,b)
  %7223 = call float @dx.op.binary.f32(i32 36, float %7221, float %7222)  ; FMin(a,b)
  %7224 = fcmp fast ogt float %7223, 0.000000e+00
  br i1 %7224, label %7233, label %7225, !dx.controlflow.hints !137

; <label>:7225                                    ; preds = %7617, %7379, %7188
  %7226 = phi float [ %7093, %7379 ], [ %7093, %7188 ], [ %7657, %7617 ]
  %7227 = phi float [ %7094, %7379 ], [ %7094, %7188 ], [ %7658, %7617 ]
  %7228 = phi float [ %7095, %7379 ], [ %7095, %7188 ], [ %7659, %7617 ]
  %7229 = phi float [ %7096, %7379 ], [ %7096, %7188 ], [ %7651, %7617 ]
  %7230 = phi float [ %7097, %7379 ], [ %7097, %7188 ], [ %7652, %7617 ]
  %7231 = phi float [ %7098, %7379 ], [ %7098, %7188 ], [ %7653, %7617 ]
  %7232 = icmp eq i32 %7092, %7102
  br i1 %7232, label %7660, label %7091

; <label>:7233                                    ; preds = %7188
  %7234 = icmp eq i32 %7150, 255
  br i1 %7234, label %7379, label %7235, !dx.controlflow.hints !138

; <label>:7235                                    ; preds = %7233
  %7236 = mul nuw nsw i32 %7150, 176
  %7237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7236, i32 undef)  ; BufferLoad(srv,index,wot)
  %7238 = extractvalue %dx.types.ResRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.ResRet.f32 %7237, 1
  %7240 = extractvalue %dx.types.ResRet.f32 %7237, 2
  %7241 = extractvalue %dx.types.ResRet.f32 %7237, 3
  %7242 = add nuw nsw i32 %7236, 16
  %7243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7242, i32 undef)  ; BufferLoad(srv,index,wot)
  %7244 = extractvalue %dx.types.ResRet.f32 %7243, 0
  %7245 = extractvalue %dx.types.ResRet.f32 %7243, 1
  %7246 = add nuw nsw i32 %7236, 32
  %7247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7246, i32 undef)  ; BufferLoad(srv,index,wot)
  %7248 = extractvalue %dx.types.ResRet.f32 %7247, 0
  %7249 = extractvalue %dx.types.ResRet.f32 %7247, 1
  %7250 = extractvalue %dx.types.ResRet.f32 %7247, 2
  %7251 = add nuw nsw i32 %7236, 48
  %7252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7251, i32 undef)  ; BufferLoad(srv,index,wot)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = extractvalue %dx.types.ResRet.f32 %7252, 3
  %7257 = add nuw nsw i32 %7236, 64
  %7258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7257, i32 undef)  ; BufferLoad(srv,index,wot)
  %7259 = extractvalue %dx.types.ResRet.f32 %7258, 0
  %7260 = extractvalue %dx.types.ResRet.f32 %7258, 1
  %7261 = extractvalue %dx.types.ResRet.f32 %7258, 2
  %7262 = extractvalue %dx.types.ResRet.f32 %7258, 3
  %7263 = add nuw nsw i32 %7236, 80
  %7264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7263, i32 undef)  ; BufferLoad(srv,index,wot)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = extractvalue %dx.types.ResRet.f32 %7264, 1
  %7267 = extractvalue %dx.types.ResRet.f32 %7264, 2
  %7268 = extractvalue %dx.types.ResRet.f32 %7264, 3
  %7269 = add nuw nsw i32 %7236, 96
  %7270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7269, i32 undef)  ; BufferLoad(srv,index,wot)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = extractvalue %dx.types.ResRet.f32 %7270, 3
  %7275 = bitcast float %7245 to i32
  %7276 = fmul fast float %7250, %124
  %7277 = fmul fast float %7250, %125
  %7278 = fmul fast float %7250, %126
  %7279 = fadd fast float %7276, %204
  %7280 = fadd fast float %7277, %205
  %7281 = fadd fast float %7278, %206
  %7282 = fmul fast float %7279, %7253
  %7283 = call float @dx.op.tertiary.f32(i32 46, float %7280, float %7259, float %7282)  ; FMad(a,b,c)
  %7284 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7265, float %7283)  ; FMad(a,b,c)
  %7285 = fadd fast float %7284, %7271
  %7286 = fmul fast float %7279, %7254
  %7287 = call float @dx.op.tertiary.f32(i32 46, float %7280, float %7260, float %7286)  ; FMad(a,b,c)
  %7288 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7266, float %7287)  ; FMad(a,b,c)
  %7289 = fadd fast float %7288, %7272
  %7290 = fmul fast float %7279, %7255
  %7291 = call float @dx.op.tertiary.f32(i32 46, float %7280, float %7261, float %7290)  ; FMad(a,b,c)
  %7292 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7267, float %7291)  ; FMad(a,b,c)
  %7293 = fadd fast float %7292, %7273
  %7294 = fmul fast float %7279, %7256
  %7295 = call float @dx.op.tertiary.f32(i32 46, float %7280, float %7262, float %7294)  ; FMad(a,b,c)
  %7296 = call float @dx.op.tertiary.f32(i32 46, float %7281, float %7268, float %7295)  ; FMad(a,b,c)
  %7297 = fadd fast float %7296, %7274
  %7298 = fdiv fast float %7285, %7297
  %7299 = fdiv fast float %7289, %7297
  %7300 = fdiv fast float %7293, %7297
  %7301 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7300)  ; FMax(a,b)
  %7302 = fmul fast float %274, 0x401921FB60000000
  %7303 = call float @dx.op.unary.f32(i32 13, float %7302)  ; Sin(value)
  %7304 = call float @dx.op.unary.f32(i32 12, float %7302)  ; Cos(value)
  %7305 = fmul fast float %7304, %7249
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7303, float %7249, float 0.000000e+00)  ; FMad(a,b,c)
  %7307 = fmul fast float %7249, %7303
  %7308 = fsub fast float -0.000000e+00, %7307
  %7309 = call float @dx.op.tertiary.f32(i32 46, float %7304, float %7249, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7310

; <label>:7310                                    ; preds = %7310, %7235
  %7311 = phi float [ 0.000000e+00, %7235 ], [ %7343, %7310 ]
  %7312 = phi float [ 0.000000e+00, %7235 ], [ %7345, %7310 ]
  %7313 = phi i32 [ 0, %7235 ], [ %7346, %7310 ]
  %7314 = mul i32 %7313, 2
  %7315 = add i32 0, %7314
  %7316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7315
  %7317 = load float, float* %7316, align 4
  %7318 = mul i32 %7313, 2
  %7319 = add i32 1, %7318
  %7320 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7319
  %7321 = load float, float* %7320, align 4
  %7322 = fmul fast float %7305, %7317
  %7323 = call float @dx.op.tertiary.f32(i32 46, float %7321, float %7308, float %7322)  ; FMad(a,b,c)
  %7324 = fmul fast float %7317, %7306
  %7325 = call float @dx.op.tertiary.f32(i32 46, float %7321, float %7309, float %7324)  ; FMad(a,b,c)
  %7326 = fadd fast float %7323, %7298
  %7327 = fadd fast float %7325, %7299
  %7328 = fmul fast float %7326, %7244
  %7329 = fmul fast float %7327, %7244
  %7330 = call float @dx.op.binary.f32(i32 35, float %7328, float %7240)  ; FMax(a,b)
  %7331 = call float @dx.op.binary.f32(i32 35, float %7329, float %7240)  ; FMax(a,b)
  %7332 = call float @dx.op.binary.f32(i32 36, float %7330, float %7241)  ; FMin(a,b)
  %7333 = call float @dx.op.binary.f32(i32 36, float %7331, float %7241)  ; FMin(a,b)
  %7334 = fadd fast float %7332, %7238
  %7335 = fadd fast float %7333, %7239
  %7336 = uitofp i32 %7275 to float
  %7337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %57, float %7334, float %7335, float %7336, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7338 = extractvalue %dx.types.ResRet.f32 %7337, 0
  %7339 = fsub fast float %7338, %7301
  %7340 = fsub fast float %7339, %7248
  %7341 = fcmp fast ogt float %7340, 0.000000e+00
  %7342 = select i1 %7341, float 1.000000e+00, float 0.000000e+00
  %7343 = fadd fast float %7342, %7311
  %7344 = select i1 %7341, float %7340, float 0.000000e+00
  %7345 = fadd fast float %7344, %7312
  %7346 = add nuw nsw i32 %7313, 1
  %7347 = icmp eq i32 %7346, 8
  br i1 %7347, label %7348, label %7310

; <label>:7348                                    ; preds = %7310
  %7349 = fdiv fast float 1.000000e+00, %7343
  %7350 = fmul fast float %7349, %7345
  %7351 = fdiv fast float 1.000000e+00, %7301
  %7352 = fmul fast float %7350, %7351
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7354 = call float @dx.op.binary.f32(i32 35, float %7353, float 0.000000e+00)  ; FMax(a,b)
  %7355 = fmul fast float %7343, 1.250000e-01
  %7356 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7357 = fmul fast float %7356, 2.000000e+00
  %7358 = fadd fast float %7357, -1.000000e+00
  %7359 = fcmp fast ogt float %7358, 0.000000e+00
  %7360 = fcmp fast olt float %7358, 0.000000e+00
  %7361 = zext i1 %7359 to i32
  %7362 = zext i1 %7360 to i32
  %7363 = sub nsw i32 %7361, %7362
  %7364 = sitofp i32 %7363 to float
  %7365 = fmul fast float %7364, %7358
  %7366 = fsub fast float 1.000000e+00, %7365
  %7367 = fmul fast float %7366, %7366
  %7368 = fmul fast float %7367, %7366
  %7369 = fsub fast float %7366, %7368
  %7370 = fmul fast float %7369, %7354
  %7371 = fsub fast float 1.000000e+00, %7368
  %7372 = fsub fast float %7371, %7370
  %7373 = fmul fast float %7364, 5.000000e-01
  %7374 = fmul fast float %7373, %7372
  %7375 = fsub fast float -5.000000e-01, %7374
  %7376 = fmul fast float %7375, %7209
  %7377 = fadd fast float %7376, 1.000000e+00
  %7378 = fmul fast float %7377, %7221
  br label %7379

; <label>:7379                                    ; preds = %7348, %7233
  %7380 = phi float [ %7378, %7348 ], [ %7221, %7233 ]
  %7381 = call float @dx.op.binary.f32(i32 36, float %7380, float %7380)  ; FMin(a,b)
  %7382 = call float @dx.op.binary.f32(i32 36, float %7380, float %7381)  ; FMin(a,b)
  %7383 = fcmp fast ogt float %7382, 0.000000e+00
  br i1 %7383, label %7384, label %7225, !dx.controlflow.hints !139

; <label>:7384                                    ; preds = %7379
  %7385 = fmul fast float %7380, %7143
  %7386 = fmul fast float %7380, %7144
  %7387 = fmul fast float %7380, %7145
  %7388 = fsub fast float %7127, %3745
  %7389 = fcmp fast ogt float %7388, 0.000000e+00
  %7390 = fsub fast float %206, %3745
  %7391 = fcmp fast ogt float %7390, 0.000000e+00
  %7392 = xor i1 %7391, %7389
  %7393 = fsub fast float %3745, %7127
  %7394 = fmul fast float %7393, 2.000000e+00
  %7395 = fadd fast float %7394, %7127
  %7396 = select i1 %7392, float %7127, float %7395
  %7397 = fsub fast float %7396, %206
  %7398 = call float @dx.op.dot3.f32(i32 55, float %7153, float %7154, float %7397, float %7153, float %7154, float %7397)  ; Dot3(ax,ay,az,bx,by,bz)
  %7399 = call float @dx.op.unary.f32(i32 25, float %7398)  ; Rsqrt(value)
  %7400 = fmul fast float %7399, %7153
  %7401 = fmul fast float %7399, %7154
  %7402 = fmul fast float %7399, %7397
  %7403 = fsub fast float %3745, %206
  %7404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7403)  ; Dot3(ax,ay,az,bx,by,bz)
  %7405 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7400, float %7401, float %7402)  ; Dot3(ax,ay,az,bx,by,bz)
  %7406 = fdiv fast float 1.000000e+00, %7405
  %7407 = fmul fast float %7406, %7404
  %7408 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7390, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7409 = fcmp fast ogt float %7408, 0.000000e+00
  %7410 = fcmp fast olt float %7408, 0.000000e+00
  %7411 = zext i1 %7409 to i32
  %7412 = zext i1 %7410 to i32
  %7413 = sub nsw i32 %7411, %7412
  %7414 = sitofp i32 %7413 to float
  %7415 = fsub fast float %7396, %3745
  %7416 = call float @dx.op.dot3.f32(i32 55, float %7153, float %7154, float %7415, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7417 = fcmp fast ogt float %7416, 0.000000e+00
  %7418 = fcmp fast olt float %7416, 0.000000e+00
  %7419 = zext i1 %7417 to i32
  %7420 = zext i1 %7418 to i32
  %7421 = sub nsw i32 %7419, %7420
  %7422 = sitofp i32 %7421 to float
  %7423 = fcmp fast une float %7414, %7422
  br i1 %7423, label %7424, label %7434

; <label>:7424                                    ; preds = %7384
  %7425 = fmul fast float %7407, %7402
  %7426 = fmul fast float %7407, %7401
  %7427 = fmul fast float %7407, %7400
  %7428 = fmul fast float %7427, %7427
  %7429 = fmul fast float %7426, %7426
  %7430 = fadd fast float %7428, %7429
  %7431 = fmul fast float %7425, %7425
  %7432 = fadd fast float %7430, %7431
  %7433 = call float @dx.op.unary.f32(i32 24, float %7432)  ; Sqrt(value)
  br label %7446

; <label>:7434                                    ; preds = %7384
  %7435 = icmp slt i32 %7413, 0
  br i1 %7435, label %7436, label %7446

; <label>:7436                                    ; preds = %7434
  %7437 = fsub fast float %204, %7125
  %7438 = fsub fast float %205, %7126
  %7439 = fsub fast float %206, %7396
  %7440 = fmul fast float %7437, %7437
  %7441 = fmul fast float %7438, %7438
  %7442 = fadd fast float %7440, %7441
  %7443 = fmul fast float %7439, %7439
  %7444 = fadd fast float %7442, %7443
  %7445 = call float @dx.op.unary.f32(i32 24, float %7444)  ; Sqrt(value)
  br label %7446

; <label>:7446                                    ; preds = %7436, %7434, %7424
  %7447 = phi float [ %7433, %7424 ], [ %7445, %7436 ], [ 0.000000e+00, %7434 ]
  %7448 = and i1 %7391, %7389
  %7449 = fsub fast float -0.000000e+00, %7447
  %7450 = select i1 %7448, float -0.000000e+00, float %7449
  %7451 = fmul fast float %3746, 0x3FF7154760000000
  %7452 = fmul fast float %7451, %7450
  %7453 = fmul fast float %3747, 0x3FF7154760000000
  %7454 = fmul fast float %7453, %7450
  %7455 = fmul fast float %3748, 0x3FF7154760000000
  %7456 = fmul fast float %7455, %7450
  %7457 = call float @dx.op.unary.f32(i32 21, float %7452)  ; Exp(value)
  %7458 = call float @dx.op.unary.f32(i32 21, float %7454)  ; Exp(value)
  %7459 = call float @dx.op.unary.f32(i32 21, float %7456)  ; Exp(value)
  %7460 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7461 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7462 = call float @dx.op.unary.f32(i32 7, float %7459)  ; Saturate(value)
  %7463 = fmul fast float %7385, %7460
  %7464 = fmul fast float %7386, %7461
  %7465 = fmul fast float %7387, %7462
  %7466 = fsub fast float %7159, %4571
  %7467 = fsub fast float %7160, %4572
  %7468 = fsub fast float %7161, %4573
  %7469 = call float @dx.op.dot3.f32(i32 55, float %7466, float %7467, float %7468, float %7466, float %7467, float %7468)  ; Dot3(ax,ay,az,bx,by,bz)
  %7470 = call float @dx.op.unary.f32(i32 25, float %7469)  ; Rsqrt(value)
  %7471 = fmul fast float %7470, %7466
  %7472 = fmul fast float %7470, %7467
  %7473 = fmul fast float %7470, %7468
  %7474 = call float @dx.op.dot3.f32(i32 55, float %7159, float %7160, float %7161, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %7475 = call float @dx.op.dot3.f32(i32 55, float %4574, float %4575, float %4576, float %7471, float %7472, float %7473)  ; Dot3(ax,ay,az,bx,by,bz)
  %7476 = call float @dx.op.unary.f32(i32 7, float %7474)  ; Saturate(value)
  %7477 = fmul fast float %7476, %7166
  %7478 = fmul fast float %7476, %7476
  %7479 = fmul fast float %7478, %4604
  %7480 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7481 = fmul fast float %7477, %7480
  %7482 = bitcast float %7156 to i32
  %7483 = ashr i32 %7482, 1
  %7484 = sub nsw i32 1597463007, %7483
  %7485 = bitcast i32 %7484 to float
  %7486 = fmul fast float %7485, %7153
  %7487 = fmul fast float %7485, %7154
  %7488 = fmul fast float %7485, %7155
  %7489 = fsub fast float %7486, %4571
  %7490 = fsub fast float %7487, %4572
  %7491 = fsub fast float %7488, %4573
  %7492 = call float @dx.op.dot3.f32(i32 55, float %7489, float %7490, float %7491, float %7489, float %7490, float %7491)  ; Dot3(ax,ay,az,bx,by,bz)
  %7493 = call float @dx.op.unary.f32(i32 25, float %7492)  ; Rsqrt(value)
  %7494 = fmul fast float %7489, %7493
  %7495 = fmul fast float %7490, %7493
  %7496 = fmul fast float %7491, %7493
  %7497 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %7494, float %7495, float %7496)  ; Dot3(ax,ay,az,bx,by,bz)
  %7498 = fmul fast float %7497, %7497
  %7499 = call float @dx.op.unary.f32(i32 6, float %7474)  ; FAbs(value)
  %7500 = fsub fast float 1.000000e+00, %4597
  %7501 = fmul fast float %4579, %4579
  %7502 = fmul fast float %7501, %7500
  %7503 = fadd fast float %7502, %4597
  %7504 = bitcast float %7503 to i32
  %7505 = ashr i32 %7504, 1
  %7506 = add nsw i32 %7505, 532487669
  %7507 = bitcast i32 %7506 to float
  %7508 = fadd fast float %7507, %4579
  %7509 = fmul fast float %4597, %7498
  %7510 = fsub fast float 1.000000e+00, %7498
  %7511 = fadd fast float %7510, %7509
  %7512 = fmul fast float %7499, %7499
  %7513 = fmul fast float %7512, %7500
  %7514 = fadd fast float %7513, %4597
  %7515 = bitcast float %7514 to i32
  %7516 = ashr i32 %7515, 1
  %7517 = add nsw i32 %7516, 532487669
  %7518 = bitcast i32 %7517 to float
  %7519 = fadd fast float %7518, %7499
  %7520 = fmul fast float %7511, %7511
  %7521 = fmul fast float %7520, %7508
  %7522 = fmul fast float %7521, %7519
  %7523 = fdiv fast float 1.000000e+00, %7522
  %7524 = bitcast float %4597 to i32
  %7525 = sitofp i32 %7524 to float
  %7526 = fmul fast float %7525, 0x3FE7F73180000000
  %7527 = fadd fast float %7526, 0x41AFE27C40000000
  %7528 = fptosi float %7527 to i32
  %7529 = bitcast i32 %7528 to float
  %7530 = fmul fast float %7122, 0x3FD80E9D60000000
  %7531 = fmul fast float %7530, %7485
  %7532 = fadd fast float %7529, %7531
  %7533 = bitcast float %7532 to i32
  %7534 = sub nsw i32 2129859010, %7533
  %7535 = bitcast i32 %7534 to float
  %7536 = fmul fast float %4597, %7523
  %7537 = fmul fast float %7536, %7529
  %7538 = fmul fast float %7537, %7535
  %7539 = call float @dx.op.unary.f32(i32 6, float %7475)  ; FAbs(value)
  %7540 = fsub fast float 1.000000e+00, %7539
  %7541 = bitcast float %7540 to i32
  %7542 = sitofp i32 %7541 to float
  %7543 = fmul fast float %7542, 5.000000e+00
  %7544 = fadd fast float %7543, 0xC1EFBF8940000000
  %7545 = fptosi float %7544 to i32
  %7546 = bitcast i32 %7545 to float
  %7547 = fsub fast float 1.000000e+00, %4528
  %7548 = fsub fast float 1.000000e+00, %4529
  %7549 = fsub fast float 1.000000e+00, %4577
  %7550 = fmul fast float %7546, %7547
  %7551 = fmul fast float %7546, %7548
  %7552 = fmul fast float %7546, %7549
  %7553 = fadd fast float %7550, %4528
  %7554 = fadd fast float %7551, %4529
  %7555 = fadd fast float %7552, %4577
  br i1 %4716, label %7556, label %7579

; <label>:7556                                    ; preds = %7446
  %7557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3343, float %7539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.ResRet.f32 %7557, 2
  %7561 = fadd fast float %7558, -5.000000e-01
  %7562 = fadd fast float %7559, -5.000000e-01
  %7563 = fadd fast float %7560, -5.000000e-01
  %7564 = fmul fast float %4528, 4.000000e+00
  %7565 = fmul fast float %7564, %7547
  %7566 = fmul fast float %7565, %7561
  %7567 = fmul fast float %4529, 4.000000e+00
  %7568 = fmul fast float %7567, %7548
  %7569 = fmul fast float %7568, %7562
  %7570 = fmul fast float %4577, 4.000000e+00
  %7571 = fmul fast float %7570, %7549
  %7572 = fmul fast float %7571, %7563
  %7573 = fadd fast float %7566, %7553
  %7574 = fadd fast float %7569, %7554
  %7575 = fadd fast float %7572, %7555
  %7576 = call float @dx.op.unary.f32(i32 7, float %7573)  ; Saturate(value)
  %7577 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7578 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  br label %7579

; <label>:7579                                    ; preds = %7556, %7446
  %7580 = phi float [ %7576, %7556 ], [ %7553, %7446 ]
  %7581 = phi float [ %7577, %7556 ], [ %7554, %7446 ]
  %7582 = phi float [ %7578, %7556 ], [ %7555, %7446 ]
  %7583 = fmul fast float %7474, 9.843750e-01
  %7584 = fadd fast float %7583, 7.812500e-03
  %7585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %56, float %7584, float %4706, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7586 = extractvalue %dx.types.ResRet.f32 %7585, 2
  %7587 = extractvalue %dx.types.ResRet.f32 %7585, 3
  %7588 = fmul fast float %7586, %4528
  %7589 = fmul fast float %7586, %4529
  %7590 = fmul fast float %7586, %4577
  %7591 = fadd fast float %7588, %7587
  %7592 = fadd fast float %7589, %7587
  %7593 = fadd fast float %7590, %7587
  br i1 %4716, label %7594, label %7617

; <label>:7594                                    ; preds = %7579
  %7595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %56, float %3343, float %7474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7596 = extractvalue %dx.types.ResRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.ResRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.ResRet.f32 %7595, 2
  %7599 = fadd fast float %7596, -5.000000e-01
  %7600 = fadd fast float %7597, -5.000000e-01
  %7601 = fadd fast float %7598, -5.000000e-01
  %7602 = fmul fast float %4528, 4.000000e+00
  %7603 = fmul fast float %7602, %7547
  %7604 = fmul fast float %7603, %7599
  %7605 = fmul fast float %4529, 4.000000e+00
  %7606 = fmul fast float %7605, %7548
  %7607 = fmul fast float %7606, %7600
  %7608 = fmul fast float %4577, 4.000000e+00
  %7609 = fmul fast float %7608, %7549
  %7610 = fmul fast float %7609, %7601
  %7611 = fadd fast float %7604, %7591
  %7612 = fadd fast float %7607, %7592
  %7613 = fadd fast float %7610, %7593
  %7614 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7615 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7616 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  br label %7617

; <label>:7617                                    ; preds = %7594, %7579
  %7618 = phi float [ %7614, %7594 ], [ %7591, %7579 ]
  %7619 = phi float [ %7615, %7594 ], [ %7592, %7579 ]
  %7620 = phi float [ %7616, %7594 ], [ %7593, %7579 ]
  %7621 = call float @dx.op.binary.f32(i32 35, float %7619, float %7620)  ; FMax(a,b)
  %7622 = call float @dx.op.binary.f32(i32 35, float %7618, float %7621)  ; FMax(a,b)
  %7623 = fsub fast float 1.000000e+00, %7622
  %7624 = fmul fast float %7580, %7538
  %7625 = fmul fast float %7581, %7538
  %7626 = fmul fast float %7582, %7538
  %7627 = fsub fast float 1.000000e+00, %7475
  %7628 = bitcast float %7627 to i32
  %7629 = sitofp i32 %7628 to float
  %7630 = fmul fast float %7629, 5.000000e+00
  %7631 = fadd fast float %7630, 0xC1EFBF8940000000
  %7632 = fptosi float %7631 to i32
  %7633 = bitcast i32 %7632 to float
  %7634 = fmul fast float %7633, %3344
  %7635 = fmul fast float %7623, %7634
  %7636 = fmul fast float %7635, %5258
  %7637 = fmul fast float %7635, %5259
  %7638 = fmul fast float %7635, %5260
  %7639 = fadd fast float %7636, %7624
  %7640 = fadd fast float %7637, %7625
  %7641 = fadd fast float %7638, %7626
  %7642 = fmul fast float %7463, %3340
  %7643 = fmul fast float %7642, %7481
  %7644 = fmul fast float %7643, %7623
  %7645 = fmul fast float %7464, %3340
  %7646 = fmul fast float %7645, %7481
  %7647 = fmul fast float %7646, %7623
  %7648 = fmul fast float %7465, %3340
  %7649 = fmul fast float %7648, %7481
  %7650 = fmul fast float %7649, %7623
  %7651 = fadd fast float %7644, %7096
  %7652 = fadd fast float %7647, %7097
  %7653 = fadd fast float %7650, %7098
  %7654 = fmul fast float %7643, %7639
  %7655 = fmul fast float %7646, %7640
  %7656 = fmul fast float %7649, %7641
  %7657 = fadd fast float %7654, %7093
  %7658 = fadd fast float %7655, %7094
  %7659 = fadd fast float %7656, %7095
  br label %7225

; <label>:7660                                    ; preds = %7225
  br label %7661

; <label>:7661                                    ; preds = %7660, %7059
  %7662 = phi float [ %7061, %7059 ], [ %7226, %7660 ]
  %7663 = phi float [ %7062, %7059 ], [ %7227, %7660 ]
  %7664 = phi float [ %7063, %7059 ], [ %7228, %7660 ]
  %7665 = phi float [ %7064, %7059 ], [ %7229, %7660 ]
  %7666 = phi float [ %7065, %7059 ], [ %7230, %7660 ]
  %7667 = phi float [ %7066, %7059 ], [ %7231, %7660 ]
  %7668 = add i32 %7060, 1
  %7669 = icmp ugt i32 %7668, %7056
  br i1 %7669, label %7670, label %7059

; <label>:7670                                    ; preds = %7661
  br label %7671

; <label>:7671                                    ; preds = %7670, %7009, %6999
  %7672 = phi float [ %7000, %6999 ], [ %7000, %7009 ], [ %7662, %7670 ]
  %7673 = phi float [ %7001, %6999 ], [ %7001, %7009 ], [ %7663, %7670 ]
  %7674 = phi float [ %7002, %6999 ], [ %7002, %7009 ], [ %7664, %7670 ]
  %7675 = phi float [ %7003, %6999 ], [ %7003, %7009 ], [ %7665, %7670 ]
  %7676 = phi float [ %7004, %6999 ], [ %7004, %7009 ], [ %7666, %7670 ]
  %7677 = phi float [ %7005, %6999 ], [ %7005, %7009 ], [ %7667, %7670 ]
  %7678 = fmul fast float %3340, %3340
  %7679 = fsub fast float 1.000000e+00, %7678
  %7680 = call float @dx.op.dot3.f32(i32 55, float %7679, float %7679, float %7679, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7681 = fsub fast float 1.000000e+00, %7680
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 0
  %7684 = fmul fast float %7683, %5264
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7687 = fsub fast float 1.000000e+00, %3348
  %7688 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7689 = fadd fast float %7677, %3346
  %7690 = fmul fast float %7689, %3348
  %7691 = fmul fast float %7688, %7686
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 3
  %7694 = fmul fast float %7675, %4525
  %7695 = fmul fast float %7676, %4526
  %7696 = fmul fast float %7677, %4527
  %7697 = fcmp fast ogt float %104, %226
  %7698 = and i1 %7697, %3751
  %7699 = or i1 %3757, %7698
  %7700 = icmp eq i32 %3750, 2
  %7701 = fcmp fast ole float %104, %226
  %7702 = and i1 %7701, %7700
  %7703 = or i1 %7702, %7699
  br i1 %7698, label %7704, label %7961

; <label>:7704                                    ; preds = %7671
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %7707 = extractvalue %dx.types.CBufRet.f32 %7705, 3
  %7708 = fmul fast float %7706, %117
  %7709 = fmul fast float %7707, %118
  %7710 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7711 = call float @dx.op.unary.f32(i32 7, float %7709)  ; Saturate(value)
  %7712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %7710, float %7711, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7713 = extractvalue %dx.types.ResRet.f32 %7712, 0
  %7714 = extractvalue %dx.types.ResRet.f32 %7712, 1
  %7715 = extractvalue %dx.types.ResRet.f32 %7712, 2
  %7716 = extractvalue %dx.types.ResRet.f32 %7712, 3
  %7717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %7710, float %7711, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7718 = extractvalue %dx.types.ResRet.f32 %7717, 0
  %7719 = extractvalue %dx.types.ResRet.f32 %7717, 1
  %7720 = extractvalue %dx.types.ResRet.f32 %7717, 2
  %7721 = extractvalue %dx.types.ResRet.f32 %7717, 3
  %7722 = call float @dx.op.binary.f32(i32 35, float %7714, float %7715)  ; FMax(a,b)
  %7723 = call float @dx.op.binary.f32(i32 35, float %7713, float %7722)  ; FMax(a,b)
  %7724 = call float @dx.op.binary.f32(i32 35, float %7723, float %7716)  ; FMax(a,b)
  %7725 = call float @dx.op.binary.f32(i32 36, float %7719, float %7720)  ; FMin(a,b)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7718, float %7725)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7726, float %7721)  ; FMin(a,b)
  %7728 = fmul fast float %7724, 2.550000e+02
  %7729 = fadd fast float %7728, 0x3F70101020000000
  %7730 = fptoui float %7729 to i32
  %7731 = fmul fast float %7727, 2.550000e+02
  %7732 = fadd fast float %7731, 0x3F70101020000000
  %7733 = fptoui float %7732 to i32
  %7734 = icmp ult i32 %7730, %7733
  br i1 %7734, label %7735, label %7903

; <label>:7735                                    ; preds = %7704
  %7736 = fcmp fast ogt float %103, 9.843750e-01
  %7737 = fadd fast float %104, -4.000000e+00
  %7738 = select i1 %7736, float -4.000000e+00, float %7737
  %7739 = call float @dx.op.binary.f32(i32 35, float %7738, float 0.000000e+00)  ; FMax(a,b)
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7742 = fadd fast float %7741, %7739
  %7743 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7744 = fmul fast float %7742, %7743
  %7745 = call float @dx.op.unary.f32(i32 23, float %7744)  ; Log(value)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7740, 3
  %7747 = fmul fast float %7746, %7745
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7750 = fmul fast float %7747, %7749
  %7751 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7752 = uitofp i32 %7730 to float
  %7753 = uitofp i32 %7733 to float
  %7754 = fadd fast float %7752, 5.000000e-01
  %7755 = fadd fast float %7753, 5.000000e-01
  %7756 = fmul fast float %7749, %7754
  %7757 = fmul fast float %7749, %7755
  %7758 = fadd fast float %7756, 0x3F0FFB4800000000
  %7759 = fadd fast float %7757, 0xBF0FFB4800000000
  %7760 = call float @dx.op.binary.f32(i32 35, float %7751, float %7758)  ; FMax(a,b)
  %7761 = call float @dx.op.binary.f32(i32 36, float %7760, float %7759)  ; FMin(a,b)
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7766 = fmul fast float %7763, %7761
  %7767 = fadd fast float %7765, %7766
  %7768 = fadd fast float %7765, %7764
  %7769 = fsub fast float %7763, %7764
  %7770 = fadd fast float %7769, %7765
  %7771 = call float @dx.op.binary.f32(i32 35, float %7767, float %7768)  ; FMax(a,b)
  %7772 = call float @dx.op.binary.f32(i32 36, float %7771, float %7770)  ; FMin(a,b)
  %7773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %7710, float %7711, float %7772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.i32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.i32 %7777, 1
  %7780 = uitofp i32 %7778 to float
  %7781 = uitofp i32 %7779 to float
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.CBufRet.f32 %7782, 1
  %7785 = fmul fast float %7780, %7710
  %7786 = fmul fast float %7781, %7711
  %7787 = fadd fast float %7785, -5.000000e-01
  %7788 = fadd fast float %7786, -5.000000e-01
  %7789 = call float @dx.op.unary.f32(i32 22, float %7787)  ; Frc(value)
  %7790 = call float @dx.op.unary.f32(i32 22, float %7788)  ; Frc(value)
  %7791 = fmul fast float %7789, %7789
  %7792 = fmul fast float %7791, %7789
  %7793 = fsub fast float 3.000000e+00, %7789
  %7794 = fmul fast float %7791, %7793
  %7795 = fmul fast float %7789, 3.000000e+00
  %7796 = fmul fast float %7792, 3.000000e+00
  %7797 = fmul fast float %7791, 6.000000e+00
  %7798 = fsub fast float %7796, %7797
  %7799 = fadd fast float %7798, 4.000000e+00
  %7800 = fmul fast float %7799, 0x3FC5555560000000
  %7801 = fmul fast float %7792, -3.000000e+00
  %7802 = fadd fast float %7791, %7789
  %7803 = fmul fast float %7802, 3.000000e+00
  %7804 = fadd fast float %7801, 1.000000e+00
  %7805 = fadd fast float %7804, %7803
  %7806 = fmul fast float %7792, 0x3FC5555560000000
  %7807 = fmul fast float %7790, %7790
  %7808 = fmul fast float %7807, %7790
  %7809 = fsub fast float 3.000000e+00, %7790
  %7810 = fmul fast float %7807, %7809
  %7811 = fmul fast float %7790, 3.000000e+00
  %7812 = fmul fast float %7808, 3.000000e+00
  %7813 = fmul fast float %7807, 6.000000e+00
  %7814 = fsub fast float %7812, %7813
  %7815 = fadd fast float %7814, 4.000000e+00
  %7816 = fmul fast float %7815, 0x3FC5555560000000
  %7817 = fmul fast float %7808, -3.000000e+00
  %7818 = fadd fast float %7807, %7790
  %7819 = fmul fast float %7818, 3.000000e+00
  %7820 = fadd fast float %7817, 1.000000e+00
  %7821 = fadd fast float %7820, %7819
  %7822 = fmul fast float %7808, 0x3FC5555560000000
  %7823 = fadd fast float %7789, 1.000000e+00
  %7824 = fsub fast float 1.000000e+00, %7795
  %7825 = fadd fast float %7824, %7794
  %7826 = fadd fast float %7825, %7799
  %7827 = fmul fast float %7826, 0x3FC5555560000000
  %7828 = fdiv fast float %7800, %7827
  %7829 = fsub fast float %7823, %7828
  %7830 = fsub fast float 1.000000e+00, %7789
  %7831 = fadd fast float %7805, %7792
  %7832 = fmul fast float %7831, 0x3FC5555560000000
  %7833 = fdiv fast float %7806, %7832
  %7834 = fadd fast float %7830, %7833
  %7835 = fadd fast float %7790, 1.000000e+00
  %7836 = fsub fast float 1.000000e+00, %7811
  %7837 = fadd fast float %7836, %7810
  %7838 = fadd fast float %7837, %7815
  %7839 = fmul fast float %7838, 0x3FC5555560000000
  %7840 = fdiv fast float %7816, %7839
  %7841 = fsub fast float %7835, %7840
  %7842 = fsub fast float 1.000000e+00, %7790
  %7843 = fadd fast float %7821, %7808
  %7844 = fmul fast float %7843, 0x3FC5555560000000
  %7845 = fdiv fast float %7822, %7844
  %7846 = fadd fast float %7845, %7842
  %7847 = fmul fast float %7829, %7783
  %7848 = fsub fast float %7710, %7847
  %7849 = fmul fast float %7834, %7783
  %7850 = fadd fast float %7849, %7710
  %7851 = fmul fast float %7846, %7784
  %7852 = fadd fast float %7851, %7711
  %7853 = fmul fast float %7841, %7784
  %7854 = fsub fast float %7711, %7853
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7848, float %7854, float %7772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7850, float %7854, float %7772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7860 = extractvalue %dx.types.ResRet.f32 %7859, 0
  %7861 = extractvalue %dx.types.ResRet.f32 %7859, 1
  %7862 = extractvalue %dx.types.ResRet.f32 %7859, 2
  %7863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7848, float %7852, float %7772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7864 = extractvalue %dx.types.ResRet.f32 %7863, 0
  %7865 = extractvalue %dx.types.ResRet.f32 %7863, 1
  %7866 = extractvalue %dx.types.ResRet.f32 %7863, 2
  %7867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %7850, float %7852, float %7772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7868 = extractvalue %dx.types.ResRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.ResRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.ResRet.f32 %7867, 2
  %7871 = fsub fast float %7864, %7856
  %7872 = fsub fast float %7865, %7857
  %7873 = fsub fast float %7866, %7858
  %7874 = fmul fast float %7871, %7844
  %7875 = fmul fast float %7872, %7844
  %7876 = fmul fast float %7873, %7844
  %7877 = fadd fast float %7874, %7856
  %7878 = fadd fast float %7875, %7857
  %7879 = fadd fast float %7876, %7858
  %7880 = fsub fast float %7868, %7860
  %7881 = fsub fast float %7869, %7861
  %7882 = fsub fast float %7870, %7862
  %7883 = fmul fast float %7880, %7844
  %7884 = fmul fast float %7881, %7844
  %7885 = fmul fast float %7882, %7844
  %7886 = fsub fast float %7860, %7877
  %7887 = fadd fast float %7886, %7883
  %7888 = fsub fast float %7861, %7878
  %7889 = fadd fast float %7888, %7884
  %7890 = fsub fast float %7862, %7879
  %7891 = fadd fast float %7890, %7885
  %7892 = fmul fast float %7887, %7832
  %7893 = fmul fast float %7889, %7832
  %7894 = fmul fast float %7891, %7832
  %7895 = fadd fast float %7892, %7877
  %7896 = fadd fast float %7893, %7878
  %7897 = fadd fast float %7894, %7879
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7900 = fmul fast float %7895, %7899
  %7901 = fmul fast float %7896, %7899
  %7902 = fmul fast float %7897, %7899
  br label %7903

; <label>:7903                                    ; preds = %7735, %7704
  %7904 = phi float [ %7774, %7735 ], [ 1.000000e+00, %7704 ]
  %7905 = phi float [ %7775, %7735 ], [ 1.000000e+00, %7704 ]
  %7906 = phi float [ %7776, %7735 ], [ 1.000000e+00, %7704 ]
  %7907 = phi float [ %7900, %7735 ], [ 0.000000e+00, %7704 ]
  %7908 = phi float [ %7901, %7735 ], [ 0.000000e+00, %7704 ]
  %7909 = phi float [ %7902, %7735 ], [ 0.000000e+00, %7704 ]
  %7910 = fmul fast float %7907, %7681
  %7911 = fmul fast float %7908, %7681
  %7912 = fmul fast float %7909, %7681
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7904, float %7905, float %7906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = call float @dx.op.dot3.f32(i32 55, float %7910, float %7911, float %7912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7915 = select i1 %263, float %7913, float %7904
  %7916 = select i1 %263, float %7913, float %7905
  %7917 = select i1 %263, float 1.000000e+00, float %7906
  %7918 = select i1 %263, float %7914, float %7910
  %7919 = select i1 %263, float 0.000000e+00, float %7911
  %7920 = select i1 %263, float 0.000000e+00, float %7912
  %7921 = fmul fast float %7915, %7694
  %7922 = fmul fast float %7916, %7695
  %7923 = fmul fast float %7917, %7696
  %7924 = fadd fast float %7921, %7918
  %7925 = fadd fast float %7922, %7919
  %7926 = fadd fast float %7920, %7923
  %7927 = fmul fast float %7915, %7672
  %7928 = fmul fast float %7916, %7673
  %7929 = fmul fast float %7917, %7674
  %7930 = fmul fast float %153, %7706
  %7931 = fmul fast float %155, %7707
  %7932 = fsub fast float 1.000000e+00, %7930
  %7933 = fsub fast float 1.000000e+00, %7931
  %7934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7935 = extractvalue %dx.types.CBufRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.CBufRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.CBufRet.f32 %7934, 2
  %7938 = fmul fast float %7932, %7935
  %7939 = fmul fast float %7932, %7936
  %7940 = fmul fast float %7932, %7937
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7945 = fmul fast float %7933, %7942
  %7946 = fmul fast float %7933, %7943
  %7947 = fmul fast float %7933, %7944
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7950 = extractvalue %dx.types.CBufRet.f32 %7948, 1
  %7951 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7952 = fadd fast float %7945, %7949
  %7953 = fadd fast float %7952, %7938
  %7954 = fadd fast float %7946, %7950
  %7955 = fadd fast float %7954, %7939
  %7956 = fadd fast float %7947, %7951
  %7957 = fadd fast float %7956, %7940
  %7958 = fmul fast float %7953, %226
  %7959 = fmul fast float %7955, %226
  %7960 = fmul fast float %7957, %226
  br label %7961

; <label>:7961                                    ; preds = %7903, %7671
  %7962 = phi float [ %7958, %7903 ], [ %204, %7671 ]
  %7963 = phi float [ %7959, %7903 ], [ %205, %7671 ]
  %7964 = phi float [ %7960, %7903 ], [ %206, %7671 ]
  %7965 = phi float [ %226, %7903 ], [ %104, %7671 ]
  %7966 = phi float [ %7924, %7903 ], [ %7694, %7671 ]
  %7967 = phi float [ %7925, %7903 ], [ %7695, %7671 ]
  %7968 = phi float [ %7926, %7903 ], [ %7696, %7671 ]
  %7969 = phi float [ %7927, %7903 ], [ %7672, %7671 ]
  %7970 = phi float [ %7928, %7903 ], [ %7673, %7671 ]
  %7971 = phi float [ %7929, %7903 ], [ %7674, %7671 ]
  %7972 = phi float [ %7904, %7903 ], [ 1.000000e+00, %7671 ]
  br i1 %7703, label %9127, label %7973

; <label>:7973                                    ; preds = %7961
  %7974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7975 = extractvalue %dx.types.CBufRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.CBufRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.CBufRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.CBufRet.f32 %7974, 3
  %7979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7980 = extractvalue %dx.types.CBufRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.CBufRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.CBufRet.f32 %7979, 2
  %7983 = extractvalue %dx.types.CBufRet.f32 %7979, 3
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.CBufRet.f32 %7984, 3
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 0
  %7991 = extractvalue %dx.types.CBufRet.f32 %7989, 1
  %7992 = extractvalue %dx.types.CBufRet.f32 %7989, 2
  %7993 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7995 = extractvalue %dx.types.CBufRet.f32 %7994, 3
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 3
  %7998 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7999 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %8000 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %8001 = fcmp fast olt float %8000, -5.000000e-01
  %8002 = call float @dx.op.dot3.f32(i32 55, float %7962, float %7963, float %7964, float %7962, float %7963, float %7964)  ; Dot3(ax,ay,az,bx,by,bz)
  %8003 = call float @dx.op.unary.f32(i32 25, float %8002)  ; Rsqrt(value)
  %8004 = fmul fast float %8003, %8002
  %8005 = fmul fast float %8003, %7962
  %8006 = fmul fast float %8003, %7963
  %8007 = fmul fast float %8003, %7964
  %8008 = fadd fast float %8004, %7978
  %8009 = call float @dx.op.dot3.f32(i32 55, float %8005, float %8006, float %8007, float %7975, float %7976, float %7977)  ; Dot3(ax,ay,az,bx,by,bz)
  %8010 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8011 = extractvalue %dx.types.CBufRet.i32 %8010, 1
  %8012 = and i32 %8011, 1
  %8013 = icmp ne i32 %8012, 0
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 2
  %8016 = fcmp fast ogt float %8015, 0.000000e+00
  %8017 = and i1 %8013, %8016
  br i1 %8017, label %8018, label %8424, !dx.controlflow.hints !140

; <label>:8018                                    ; preds = %7973
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 3
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 2
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 2
  %8025 = fsub fast float %8022, %8024
  %8026 = and i32 %8011, 2
  %8027 = extractvalue %dx.types.CBufRet.i32 %8010, 0
  %8028 = call i32 @dx.op.binary.i32(i32 40, i32 %8027, i32 3)  ; UMin(a,b)
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8023, 1
  %8034 = fsub fast float %8030, %8032
  %8035 = fsub fast float %8031, %8033
  %8036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8036, 0
  %8038 = fcmp fast ogt float %8037, 0.000000e+00
  %8039 = fsub fast float -0.000000e+00, %8034
  %8040 = fsub fast float -0.000000e+00, %8035
  %8041 = call float @dx.op.dot2.f32(i32 54, float %8005, float %8006, float %8005, float %8006)  ; Dot2(ax,ay,bx,by)
  %8042 = call float @dx.op.dot2.f32(i32 54, float %8005, float %8006, float %8039, float %8040)  ; Dot2(ax,ay,bx,by)
  %8043 = fmul fast float %8042, 2.000000e+00
  %8044 = call float @dx.op.dot2.f32(i32 54, float %8039, float %8040, float %8039, float %8040)  ; Dot2(ax,ay,bx,by)
  %8045 = fmul fast float %8037, %8037
  %8046 = fsub fast float %8044, %8045
  %8047 = fmul fast float %8043, %8043
  %8048 = fmul fast float %8041, 4.000000e+00
  %8049 = fmul fast float %8048, %8046
  %8050 = fsub fast float %8047, %8049
  %8051 = fcmp fast ogt float %8050, 0.000000e+00
  br i1 %8051, label %8052, label %8067

; <label>:8052                                    ; preds = %8018
  %8053 = fcmp fast ogt float %8043, 0.000000e+00
  %8054 = call float @dx.op.unary.f32(i32 24, float %8050)  ; Sqrt(value)
  %8055 = fsub fast float -0.000000e+00, %8054
  %8056 = select i1 %8053, float %8054, float %8055
  %8057 = fadd fast float %8056, %8043
  %8058 = fmul float %8057, -5.000000e-01
  %8059 = fdiv fast float %8058, %8041
  %8060 = call float @dx.op.binary.f32(i32 35, float %8059, float 0.000000e+00)  ; FMax(a,b)
  %8061 = call float @dx.op.binary.f32(i32 36, float %8004, float %8060)  ; FMin(a,b)
  %8062 = fdiv fast float %8046, %8058
  %8063 = call float @dx.op.binary.f32(i32 35, float %8062, float 0.000000e+00)  ; FMax(a,b)
  %8064 = call float @dx.op.binary.f32(i32 36, float %8004, float %8063)  ; FMin(a,b)
  %8065 = call float @dx.op.binary.f32(i32 36, float %8061, float %8064)  ; FMin(a,b)
  %8066 = call float @dx.op.binary.f32(i32 35, float %8061, float %8064)  ; FMax(a,b)
  br label %8067

; <label>:8067                                    ; preds = %8052, %8018
  %8068 = phi float [ %8066, %8052 ], [ -1.000000e+00, %8018 ]
  %8069 = phi float [ %8065, %8052 ], [ -1.000000e+00, %8018 ]
  %8070 = phi i1 [ true, %8052 ], [ false, %8018 ]
  %8071 = and i1 %8038, %8070
  br i1 %8071, label %8072, label %8074

; <label>:8072                                    ; preds = %8067
  %8073 = fcmp fast oeq float %8069, %8068
  br i1 %8073, label %8377, label %8075

; <label>:8074                                    ; preds = %8067
  br i1 %8038, label %8377, label %8075

; <label>:8075                                    ; preds = %8074, %8072
  %8076 = phi float [ %8004, %8074 ], [ %8068, %8072 ]
  %8077 = phi float [ 0.000000e+00, %8074 ], [ %8069, %8072 ]
  %8078 = icmp ne i32 %8026, 0
  %8079 = fmul fast float %8076, %8007
  %8080 = fadd fast float %8079, %8020
  %8081 = fmul fast float %8080, %8076
  %8082 = select i1 %8078, float 0.000000e+00, float %8081
  %8083 = fcmp fast oeq float %8007, 0.000000e+00
  %8084 = fdiv fast float %8025, %8007
  %8085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8084)  ; FMax(a,b)
  %8086 = select i1 %8083, float %8076, float %8085
  %8087 = call float @dx.op.binary.f32(i32 36, float %8076, float %8086)  ; FMin(a,b)
  %8088 = fcmp fast ogt float %8007, 0.000000e+00
  %8089 = fcmp fast olt float %8025, 0.000000e+00
  br i1 %8088, label %8090, label %8147

; <label>:8090                                    ; preds = %8075
  %8091 = icmp eq i32 %8026, 0
  br i1 %8089, label %8092, label %8136

; <label>:8092                                    ; preds = %8090
  %8093 = select i1 %8091, float %8076, float 0.000000e+00
  %8094 = fsub fast float -0.000000e+00, %8093
  %8095 = call float @dx.op.unary.f32(i32 6, float %8094)  ; FAbs(value)
  %8096 = fmul fast float %8093, %8007
  %8097 = fadd fast float %8096, %8020
  %8098 = fmul fast float %8095, %8097
  %8099 = fsub fast float %8082, %8098
  %8100 = fsub fast float %8076, %8095
  %8101 = select i1 %8091, float %8100, float 0.000000e+00
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 0
  %8104 = extractvalue %dx.types.CBufRet.f32 %8102, 1
  %8105 = extractvalue %dx.types.CBufRet.f32 %8102, 2
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8110 = extractvalue %dx.types.CBufRet.f32 %8106, 3
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 3
  %8113 = call float @dx.op.binary.f32(i32 36, float %8099, float %8112)  ; FMin(a,b)
  %8114 = fmul fast float %8110, %8101
  %8115 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8116 = fsub fast float %8107, %8103
  %8117 = fsub fast float %8108, %8104
  %8118 = fsub fast float %8109, %8105
  %8119 = fmul fast float %8115, %8116
  %8120 = fmul fast float %8115, %8117
  %8121 = fmul fast float %8115, %8118
  %8122 = fadd fast float %8119, %8103
  %8123 = fadd fast float %8120, %8104
  %8124 = fadd fast float %8121, %8105
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.CBufRet.f32 %8125, 1
  %8128 = fadd fast float %8127, %8126
  %8129 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8131 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8132 = fadd fast float %8131, %8130
  %8133 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8134 = fmul fast float %8129, %8113
  %8135 = fmul fast float %8134, %8133
  br label %8377

; <label>:8136                                    ; preds = %8090
  br i1 %8091, label %8137, label %8158

; <label>:8137                                    ; preds = %8136
  %8138 = call float @dx.op.binary.f32(i32 36, float %8087, float %8077)  ; FMin(a,b)
  %8139 = fsub fast float %8087, %8138
  %8140 = fsub fast float %8139, %8076
  %8141 = call float @dx.op.unary.f32(i32 6, float %8140)  ; FAbs(value)
  %8142 = fadd fast float %8139, %8076
  %8143 = fmul fast float %8142, %8007
  %8144 = fadd fast float %8143, %8020
  %8145 = fmul fast float %8144, %8141
  %8146 = fsub fast float %8082, %8145
  br label %8158

; <label>:8147                                    ; preds = %8075
  br i1 %8089, label %8148, label %8158

; <label>:8148                                    ; preds = %8147
  %8149 = call float @dx.op.binary.f32(i32 35, float %8077, float %8087)  ; FMax(a,b)
  %8150 = icmp eq i32 %8026, 0
  %8151 = select i1 %8150, float %8087, float 0.000000e+00
  %8152 = fsub fast float -0.000000e+00, %8151
  %8153 = call float @dx.op.unary.f32(i32 6, float %8152)  ; FAbs(value)
  %8154 = fmul fast float %8151, %8007
  %8155 = fadd fast float %8154, %8020
  %8156 = fmul fast float %8153, %8155
  %8157 = fsub fast float %8082, %8156
  br label %8158

; <label>:8158                                    ; preds = %8148, %8147, %8137, %8136
  %8159 = phi float [ %8077, %8136 ], [ %8077, %8137 ], [ %8149, %8148 ], [ %8077, %8147 ]
  %8160 = phi float [ 0.000000e+00, %8136 ], [ %8141, %8137 ], [ %8153, %8148 ], [ 0.000000e+00, %8147 ]
  %8161 = phi float [ %8082, %8136 ], [ %8146, %8137 ], [ %8157, %8148 ], [ %8082, %8147 ]
  %8162 = phi float [ %8087, %8136 ], [ %8087, %8137 ], [ %8076, %8148 ], [ %8076, %8147 ]
  %8163 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 0
  store float -1.000000e+00, float* %8163, align 4, !tbaa !126, !noalias !141
  %8164 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 1
  store float -1.000000e+00, float* %8164, align 4, !tbaa !126, !noalias !141
  %8165 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 2
  store float -1.000000e+00, float* %8165, align 4, !tbaa !126, !noalias !141
  %8166 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 0
  store float -1.000000e+00, float* %8166, align 4, !tbaa !126, !noalias !141
  %8167 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 1
  store float -1.000000e+00, float* %8167, align 4, !tbaa !126, !noalias !141
  %8168 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 2
  store float -1.000000e+00, float* %8168, align 4, !tbaa !126, !noalias !141
  %8169 = icmp sgt i32 %8028, 0
  br i1 %8169, label %8170, label %8231

; <label>:8170                                    ; preds = %8158
  br label %8171

; <label>:8171                                    ; preds = %8220, %8170
  %8172 = phi i32 [ %8221, %8220 ], [ 0, %8170 ]
  %8173 = phi i32 [ %8222, %8220 ], [ 0, %8170 ]
  %8174 = add nuw i32 %8173, 171
  %8175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 %8174)  ; CBufferLoadLegacy(handle,regIndex)
  %8176 = extractvalue %dx.types.CBufRet.f32 %8175, 0
  %8177 = extractvalue %dx.types.CBufRet.f32 %8175, 1
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = fsub fast float %8176, %8179
  %8182 = fsub fast float %8177, %8180
  %8183 = extractvalue %dx.types.CBufRet.f32 %8175, 2
  %8184 = fsub fast float -0.000000e+00, %8181
  %8185 = fsub fast float -0.000000e+00, %8182
  %8186 = call float @dx.op.dot2.f32(i32 54, float %8005, float %8006, float %8184, float %8185)  ; Dot2(ax,ay,bx,by)
  %8187 = fmul fast float %8186, 2.000000e+00
  %8188 = call float @dx.op.dot2.f32(i32 54, float %8184, float %8185, float %8184, float %8185)  ; Dot2(ax,ay,bx,by)
  %8189 = fmul fast float %8183, %8183
  %8190 = fsub fast float %8188, %8189
  %8191 = fmul fast float %8187, %8187
  %8192 = fmul fast float %8048, %8190
  %8193 = fsub fast float %8191, %8192
  %8194 = fcmp fast ogt float %8193, 0.000000e+00
  br i1 %8194, label %8195, label %8210

; <label>:8195                                    ; preds = %8171
  %8196 = fcmp fast ogt float %8187, 0.000000e+00
  %8197 = call float @dx.op.unary.f32(i32 24, float %8193)  ; Sqrt(value)
  %8198 = fsub fast float -0.000000e+00, %8197
  %8199 = select i1 %8196, float %8197, float %8198
  %8200 = fadd fast float %8199, %8187
  %8201 = fmul float %8200, -5.000000e-01
  %8202 = fdiv fast float %8201, %8041
  %8203 = call float @dx.op.binary.f32(i32 35, float %8202, float 0.000000e+00)  ; FMax(a,b)
  %8204 = call float @dx.op.binary.f32(i32 36, float %8076, float %8203)  ; FMin(a,b)
  %8205 = fdiv fast float %8190, %8201
  %8206 = call float @dx.op.binary.f32(i32 35, float %8205, float 0.000000e+00)  ; FMax(a,b)
  %8207 = call float @dx.op.binary.f32(i32 36, float %8076, float %8206)  ; FMin(a,b)
  %8208 = call float @dx.op.binary.f32(i32 36, float %8204, float %8207)  ; FMin(a,b)
  %8209 = call float @dx.op.binary.f32(i32 35, float %8204, float %8207)  ; FMax(a,b)
  br label %8210

; <label>:8210                                    ; preds = %8195, %8171
  %8211 = phi float [ %8209, %8195 ], [ -1.000000e+00, %8171 ]
  %8212 = phi float [ %8208, %8195 ], [ -1.000000e+00, %8171 ]
  %8213 = phi i1 [ true, %8195 ], [ false, %8171 ]
  br i1 %8213, label %8214, label %8220

; <label>:8214                                    ; preds = %8210
  %8215 = call float @dx.op.binary.f32(i32 35, float %8159, float %8212)  ; FMax(a,b)
  %8216 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8173
  store float %8215, float* %8216, align 4, !tbaa !126, !noalias !141
  %8217 = call float @dx.op.binary.f32(i32 35, float %8159, float %8211)  ; FMax(a,b)
  %8218 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8173
  store float %8217, float* %8218, align 4, !tbaa !126, !noalias !141
  %8219 = add nsw i32 %8172, 1
  br label %8220

; <label>:8220                                    ; preds = %8214, %8210
  %8221 = phi i32 [ %8219, %8214 ], [ %8172, %8210 ]
  %8222 = add nuw nsw i32 %8173, 1
  %8223 = icmp eq i32 %8222, %8028
  br i1 %8223, label %8224, label %8171

; <label>:8224                                    ; preds = %8220
  %8225 = load float, float* %8165, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8226 = load float, float* %8164, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  %8227 = load float, float* %8163, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  %8228 = load float, float* %8168, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8229 = load float, float* %8167, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  %8230 = load float, float* %8166, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  br label %8231

; <label>:8231                                    ; preds = %8224, %8158
  %8232 = phi float [ -1.000000e+00, %8158 ], [ %8230, %8224 ]
  %8233 = phi float [ -1.000000e+00, %8158 ], [ %8229, %8224 ]
  %8234 = phi float [ -1.000000e+00, %8158 ], [ %8228, %8224 ]
  %8235 = phi float [ -1.000000e+00, %8158 ], [ %8227, %8224 ]
  %8236 = phi float [ -1.000000e+00, %8158 ], [ %8226, %8224 ]
  %8237 = phi float [ -1.000000e+00, %8158 ], [ %8225, %8224 ]
  %8238 = phi i32 [ 0, %8158 ], [ %8221, %8224 ]
  %8239 = call float @dx.op.binary.f32(i32 36, float %8236, float %8237)  ; FMin(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8235, float %8239)  ; FMin(a,b)
  %8241 = call float @dx.op.binary.f32(i32 35, float %8235, float %8236)  ; FMax(a,b)
  %8242 = call float @dx.op.binary.f32(i32 36, float %8241, float %8237)  ; FMin(a,b)
  %8243 = call float @dx.op.binary.f32(i32 36, float %8235, float %8236)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 35, float %8243, float %8242)  ; FMax(a,b)
  %8245 = call float @dx.op.binary.f32(i32 35, float %8236, float %8237)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8235, float %8245)  ; FMax(a,b)
  store float %8240, float* %8163, align 4, !tbaa !126, !alias.scope !165, !noalias !166
  store float %8244, float* %8164, align 4, !tbaa !126, !alias.scope !163, !noalias !164
  store float %8246, float* %8165, align 4, !tbaa !126, !alias.scope !157, !noalias !160
  %8247 = call float @dx.op.binary.f32(i32 36, float %8233, float %8234)  ; FMin(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8232, float %8247)  ; FMin(a,b)
  %8249 = call float @dx.op.binary.f32(i32 35, float %8232, float %8233)  ; FMax(a,b)
  %8250 = call float @dx.op.binary.f32(i32 36, float %8249, float %8234)  ; FMin(a,b)
  %8251 = call float @dx.op.binary.f32(i32 36, float %8232, float %8233)  ; FMin(a,b)
  %8252 = call float @dx.op.binary.f32(i32 35, float %8251, float %8250)  ; FMax(a,b)
  %8253 = call float @dx.op.binary.f32(i32 35, float %8233, float %8234)  ; FMax(a,b)
  %8254 = call float @dx.op.binary.f32(i32 35, float %8232, float %8253)  ; FMax(a,b)
  store float %8248, float* %8166, align 4, !tbaa !126, !alias.scope !175, !noalias !176
  store float %8252, float* %8167, align 4, !tbaa !126, !alias.scope !173, !noalias !174
  store float %8254, float* %8168, align 4, !tbaa !126, !alias.scope !167, !noalias !170
  %8255 = sub nsw i32 3, %8238
  %8256 = icmp sgt i32 %8255, 2
  br i1 %8256, label %8257, label %8295

; <label>:8257                                    ; preds = %8231
  %8258 = icmp eq i32 %8026, 0
  %8259 = fsub fast float %8076, %8160
  %8260 = select i1 %8258, float %8259, float %8160
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
  %8272 = call float @dx.op.binary.f32(i32 36, float %8161, float %8271)  ; FMin(a,b)
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
  br label %8377

; <label>:8295                                    ; preds = %8231
  %8296 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8255
  %8297 = load float, float* %8296, align 4, !tbaa !126, !noalias !141
  %8298 = fcmp fast olt float %8297, %8162
  %8299 = icmp sgt i32 %8238, 0
  %8300 = and i1 %8299, %8298
  br i1 %8300, label %8301, label %8338

; <label>:8301                                    ; preds = %8295
  br label %8302

; <label>:8302                                    ; preds = %8331, %8301
  %8303 = phi float [ %8332, %8331 ], [ %8160, %8301 ]
  %8304 = phi float [ %8333, %8331 ], [ %8161, %8301 ]
  %8305 = phi float [ %8313, %8331 ], [ %8297, %8301 ]
  %8306 = phi i32 [ %8310, %8331 ], [ %8255, %8301 ]
  %8307 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8306
  %8308 = load float, float* %8307, align 4, !tbaa !126, !noalias !141
  %8309 = icmp slt i32 %8306, 2
  %8310 = add nsw i32 %8306, 1
  %8311 = getelementptr inbounds [3 x float], [3 x float]* %111, i32 0, i32 %8310
  %8312 = load float, float* %8311, align 4, !tbaa !126, !noalias !141
  %8313 = select i1 %8309, float %8312, float %8076
  %8314 = call float @dx.op.binary.f32(i32 36, float %8313, float %8308)  ; FMin(a,b)
  %8315 = call float @dx.op.binary.f32(i32 36, float %8162, float %8314)  ; FMin(a,b)
  %8316 = icmp eq i32 %8026, 0
  %8317 = fadd fast float %8315, %8305
  %8318 = fmul fast float %8317, %8007
  %8319 = fadd fast float %8318, %8020
  br i1 %8316, label %8325, label %8320

; <label>:8320                                    ; preds = %8302
  %8321 = fsub fast float %8315, %8305
  %8322 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8321)  ; FMax(a,b)
  %8323 = fmul fast float %8322, %8319
  %8324 = fadd fast float %8323, %8304
  br label %8331

; <label>:8325                                    ; preds = %8302
  %8326 = fsub fast float %8305, %8315
  %8327 = call float @dx.op.unary.f32(i32 6, float %8326)  ; FAbs(value)
  %8328 = fadd fast float %8327, %8303
  %8329 = fmul fast float %8327, %8319
  %8330 = fsub fast float %8304, %8329
  br label %8331

; <label>:8331                                    ; preds = %8325, %8320
  %8332 = phi float [ %8322, %8320 ], [ %8328, %8325 ]
  %8333 = phi float [ %8324, %8320 ], [ %8330, %8325 ]
  %8334 = fcmp fast olt float %8313, %8162
  %8335 = icmp slt i32 %8310, 3
  %8336 = and i1 %8335, %8334
  br i1 %8336, label %8302, label %8337

; <label>:8337                                    ; preds = %8331
  br label %8338

; <label>:8338                                    ; preds = %8337, %8295
  %8339 = phi float [ %8160, %8295 ], [ %8332, %8337 ]
  %8340 = phi float [ %8161, %8295 ], [ %8333, %8337 ]
  %8341 = fsub fast float %8076, %8339
  %8342 = select i1 %8078, float %8339, float %8341
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.CBufRet.f32 %8347, 2
  %8351 = extractvalue %dx.types.CBufRet.f32 %8347, 3
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8354 = call float @dx.op.binary.f32(i32 36, float %8340, float %8353)  ; FMin(a,b)
  %8355 = fmul fast float %8351, %8342
  %8356 = call float @dx.op.unary.f32(i32 7, float %8355)  ; Saturate(value)
  %8357 = fsub fast float %8348, %8344
  %8358 = fsub fast float %8349, %8345
  %8359 = fsub fast float %8350, %8346
  %8360 = fmul fast float %8356, %8357
  %8361 = fmul fast float %8356, %8358
  %8362 = fmul fast float %8356, %8359
  %8363 = fadd fast float %8360, %8344
  %8364 = fadd fast float %8361, %8345
  %8365 = fadd fast float %8362, %8346
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.CBufRet.f32 %8366, 1
  %8369 = fadd fast float %8368, %8367
  %8370 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8366, 2
  %8372 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8373 = fadd fast float %8372, %8371
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fmul fast float %8370, %8354
  %8376 = fmul fast float %8375, %8374
  br label %8377

; <label>:8377                                    ; preds = %8338, %8257, %8092, %8074, %8072
  %8378 = phi float [ %8101, %8092 ], [ %8260, %8257 ], [ %8342, %8338 ], [ 0.000000e+00, %8072 ], [ 0.000000e+00, %8074 ]
  %8379 = phi float [ %8135, %8092 ], [ %8294, %8257 ], [ %8376, %8338 ], [ 0.000000e+00, %8072 ], [ 0.000000e+00, %8074 ]
  %8380 = phi float [ %8122, %8092 ], [ %8281, %8257 ], [ %8363, %8338 ], [ 0.000000e+00, %8072 ], [ 0.000000e+00, %8074 ]
  %8381 = phi float [ %8123, %8092 ], [ %8282, %8257 ], [ %8364, %8338 ], [ 0.000000e+00, %8072 ], [ 0.000000e+00, %8074 ]
  %8382 = phi float [ %8124, %8092 ], [ %8283, %8257 ], [ %8365, %8338 ], [ 0.000000e+00, %8072 ], [ 0.000000e+00, %8074 ]
  %8383 = fmul fast float %8015, %8379
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8386 = fsub fast float %8022, %8385
  %8387 = fcmp fast olt float %8383, -2.000000e+01
  %8388 = call float @dx.op.unary.f32(i32 21, float %8383)  ; Exp(value)
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 3
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 2
  %8394 = fmul fast float %8391, %8386
  %8395 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8396 = fsub fast float 1.000000e+00, %8395
  %8397 = fmul fast float %8007, 5.000000e-01
  %8398 = fadd fast float %8397, 5.000000e-01
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = fsub fast float 1.000000e+00, %8399
  %8401 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8396)  ; FMax(a,b)
  %8402 = fdiv fast float %8400, %8401
  %8403 = fsub fast float %8386, %7964
  %8404 = call float @dx.op.unary.f32(i32 6, float %8403)  ; FAbs(value)
  %8405 = fmul fast float %8404, %8390
  %8406 = call float @dx.op.unary.f32(i32 7, float %8402)  ; Saturate(value)
  %8407 = fsub fast float 1.000000e+00, %8405
  %8408 = fmul fast float %8407, %8406
  %8409 = fadd fast float %8408, %8405
  %8410 = fmul fast float %8393, %8386
  %8411 = call float @dx.op.unary.f32(i32 7, float %8410)  ; Saturate(value)
  %8412 = fsub fast float 1.000000e+00, %8409
  %8413 = fmul fast float %8412, %8411
  %8414 = fadd fast float %8413, %8409
  %8415 = call float @dx.op.unary.f32(i32 7, float %8414)  ; Saturate(value)
  %8416 = fadd fast float %8388, -1.000000e+00
  %8417 = select i1 %8387, float -1.000000e+00, float %8416
  %8418 = fmul fast float %8415, %8417
  %8419 = fadd fast float %8418, 1.000000e+00
  %8420 = fsub fast float -0.000000e+00, %8418
  %8421 = fmul fast float %8380, %8420
  %8422 = fmul fast float %8381, %8420
  %8423 = fmul fast float %8382, %8420
  br label %8424

; <label>:8424                                    ; preds = %8377, %7973
  %8425 = phi float [ %8378, %8377 ], [ 0.000000e+00, %7973 ]
  %8426 = phi float [ %8419, %8377 ], [ 1.000000e+00, %7973 ]
  %8427 = phi float [ %8421, %8377 ], [ 0.000000e+00, %7973 ]
  %8428 = phi float [ %8422, %8377 ], [ 0.000000e+00, %7973 ]
  %8429 = phi float [ %8423, %8377 ], [ 0.000000e+00, %7973 ]
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8432 = fsub fast float 1.000000e+00, %8426
  %8433 = fmul fast float %8432, %8008
  %8434 = fmul fast float %8433, %8431
  %8435 = fsub fast float %8008, %8434
  br i1 %8001, label %8436, label %8465, !dx.controlflow.hints !177

; <label>:8436                                    ; preds = %8424
  %8437 = fmul fast float %8009, %7998
  %8438 = fadd fast float %8437, %7999
  %8439 = call float @dx.op.unary.f32(i32 7, float %8438)  ; Saturate(value)
  %8440 = fmul fast float %7980, %8435
  %8441 = fsub fast float -0.000000e+00, %8440
  %8442 = fmul fast float %7981, %8435
  %8443 = fsub fast float -0.000000e+00, %8442
  %8444 = call float @dx.op.unary.f32(i32 21, float %8441)  ; Exp(value)
  %8445 = call float @dx.op.unary.f32(i32 21, float %8443)  ; Exp(value)
  %8446 = call float @dx.op.binary.f32(i32 35, float %7988, float %8444)  ; FMax(a,b)
  %8447 = call float @dx.op.binary.f32(i32 35, float %7988, float %8445)  ; FMax(a,b)
  %8448 = fsub fast float %8447, %8446
  %8449 = fmul fast float %8448, %8439
  %8450 = fadd fast float %8449, %8446
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = fsub fast float %7985, %7990
  %8453 = fsub fast float %7986, %7991
  %8454 = fsub fast float %7987, %7992
  %8455 = fmul fast float %8439, %8452
  %8456 = fmul fast float %8439, %8453
  %8457 = fmul fast float %8439, %8454
  %8458 = fadd fast float %8455, %7990
  %8459 = fadd fast float %8456, %7991
  %8460 = fadd fast float %8457, %7992
  %8461 = fsub fast float 1.000000e+00, %8451
  %8462 = fmul fast float %8461, %8458
  %8463 = fmul fast float %8461, %8459
  %8464 = fmul fast float %8461, %8460
  br label %8524

; <label>:8465                                    ; preds = %8424
  %8466 = fmul fast float %8435, %7997
  %8467 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8468 = fsub fast float 2.000000e+00, %8467
  %8469 = fmul fast float %8467, 9.921875e-01
  %8470 = fmul fast float %8469, %8468
  %8471 = fadd fast float %8470, 3.906250e-03
  %8472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %56, float %8471, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8473 = extractvalue %dx.types.ResRet.f32 %8472, 0
  %8474 = fsub fast float %8467, %8473
  %8475 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8474)  ; FMax(a,b)
  %8476 = fmul fast float %7983, %7964
  %8477 = call float @dx.op.unary.f32(i32 6, float %8476)  ; FAbs(value)
  %8478 = fcmp fast ogt float %8477, 0x3EB0C6F7A0000000
  br i1 %8478, label %8479, label %8485, !dx.controlflow.hints !178

; <label>:8479                                    ; preds = %8465
  %8480 = fmul fast float %8476, 0xBFF7154760000000
  %8481 = call float @dx.op.unary.f32(i32 21, float %8480)  ; Exp(value)
  %8482 = fsub fast float 1.000000e+00, %8481
  %8483 = fdiv fast float %8482, %8476
  %8484 = fmul fast float %8483, %7993
  br label %8485

; <label>:8485                                    ; preds = %8479, %8465
  %8486 = phi float [ %8484, %8479 ], [ %7993, %8465 ]
  %8487 = fadd fast float %8486, %7995
  %8488 = fmul fast float %8487, %8475
  %8489 = fmul fast float %7980, %8488
  %8490 = fsub fast float -0.000000e+00, %8489
  %8491 = fmul fast float %7981, %8488
  %8492 = fsub fast float -0.000000e+00, %8491
  %8493 = fmul fast float %7982, %8488
  %8494 = fsub fast float -0.000000e+00, %8493
  %8495 = call float @dx.op.unary.f32(i32 21, float %8490)  ; Exp(value)
  %8496 = call float @dx.op.unary.f32(i32 21, float %8492)  ; Exp(value)
  %8497 = call float @dx.op.unary.f32(i32 21, float %8494)  ; Exp(value)
  %8498 = fmul fast float %8009, %8009
  %8499 = fadd fast float %8498, 1.000000e+00
  %8500 = fmul fast float %8499, 0x3FAE8EC8A0000000
  %8501 = fmul fast float %8500, %7990
  %8502 = fmul fast float %8500, %7991
  %8503 = fmul fast float %8500, %7992
  %8504 = fmul fast float %8009, %7988
  %8505 = fsub fast float 1.000000e+00, %8504
  %8506 = fmul fast float %7988, %7988
  %8507 = fsub fast float 1.000000e+00, %8506
  %8508 = fmul fast float %8507, 0x3FB45F3060000000
  %8509 = fmul fast float %8505, %8505
  %8510 = fdiv fast float 1.000000e+00, %8509
  %8511 = fmul fast float %8508, %8510
  %8512 = fmul fast float %8511, %7985
  %8513 = fmul fast float %8511, %7986
  %8514 = fmul fast float %8511, %7987
  %8515 = fadd fast float %8512, %8501
  %8516 = fadd fast float %8513, %8502
  %8517 = fadd fast float %8514, %8503
  %8518 = fsub fast float 1.000000e+00, %8495
  %8519 = fsub fast float 1.000000e+00, %8496
  %8520 = fsub fast float 1.000000e+00, %8497
  %8521 = fmul fast float %8515, %8518
  %8522 = fmul fast float %8516, %8519
  %8523 = fmul fast float %8517, %8520
  br label %8524

; <label>:8524                                    ; preds = %8485, %8436
  %8525 = phi float [ %8462, %8436 ], [ %8521, %8485 ]
  %8526 = phi float [ %8463, %8436 ], [ %8522, %8485 ]
  %8527 = phi float [ %8464, %8436 ], [ %8523, %8485 ]
  %8528 = phi float [ %8451, %8436 ], [ %8495, %8485 ]
  %8529 = phi float [ %8451, %8436 ], [ %8496, %8485 ]
  %8530 = phi float [ %8451, %8436 ], [ %8497, %8485 ]
  br i1 %8017, label %8531, label %8729, !dx.controlflow.hints !179

; <label>:8531                                    ; preds = %8524
  %8532 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8533 = fmul fast float %8532, %8432
  %8534 = fsub fast float %8427, %8525
  %8535 = fsub fast float %8428, %8526
  %8536 = fsub fast float %8429, %8527
  %8537 = fmul fast float %8533, %8534
  %8538 = fmul fast float %8533, %8535
  %8539 = fmul fast float %8533, %8536
  %8540 = fadd fast float %8537, %8525
  %8541 = fadd fast float %8538, %8526
  %8542 = fadd fast float %8539, %8527
  %8543 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8528)  ; FMax(a,b)
  %8544 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8529)  ; FMax(a,b)
  %8545 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8530)  ; FMax(a,b)
  %8546 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8426)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 35, float %8425, float %8435)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8547)  ; FMax(a,b)
  %8549 = fdiv fast float %8425, %8548
  %8550 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8551 = fdiv fast float %8435, %8548
  %8552 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8553 = fcmp fast une float %8546, 1.000000e+00
  br i1 %8553, label %8554, label %8567, !dx.controlflow.hints !180

; <label>:8554                                    ; preds = %8531
  %8555 = call float @dx.op.unary.f32(i32 23, float %8546)  ; Log(value)
  %8556 = fmul fast float %8555, 0x3FE62E4300000000
  %8557 = fmul fast float %8427, %8556
  %8558 = fsub fast float -0.000000e+00, %8557
  %8559 = fmul fast float %8428, %8556
  %8560 = fsub fast float -0.000000e+00, %8559
  %8561 = fmul fast float %8429, %8556
  %8562 = fsub fast float -0.000000e+00, %8561
  %8563 = fsub fast float 1.000000e+00, %8546
  %8564 = fdiv fast float %8558, %8563
  %8565 = fdiv fast float %8560, %8563
  %8566 = fdiv fast float %8562, %8563
  br label %8567

; <label>:8567                                    ; preds = %8554, %8531
  %8568 = phi float [ %8564, %8554 ], [ %8427, %8531 ]
  %8569 = phi float [ %8565, %8554 ], [ %8428, %8531 ]
  %8570 = phi float [ %8566, %8554 ], [ %8429, %8531 ]
  %8571 = phi float [ %8556, %8554 ], [ 0.000000e+00, %8531 ]
  %8572 = fcmp fast une float %8543, 1.000000e+00
  br i1 %8572, label %8573, label %8580, !dx.controlflow.hints !181

; <label>:8573                                    ; preds = %8567
  %8574 = call float @dx.op.unary.f32(i32 23, float %8543)  ; Log(value)
  %8575 = fmul fast float %8574, 0x3FE62E4300000000
  %8576 = fmul fast float %8540, %8575
  %8577 = fsub fast float -0.000000e+00, %8576
  %8578 = fsub fast float 1.000000e+00, %8543
  %8579 = fdiv fast float %8577, %8578
  br label %8580

; <label>:8580                                    ; preds = %8573, %8567
  %8581 = phi float [ %8579, %8573 ], [ %8540, %8567 ]
  %8582 = phi float [ %8575, %8573 ], [ 0.000000e+00, %8567 ]
  %8583 = fcmp fast une float %8544, 1.000000e+00
  br i1 %8583, label %8584, label %8591, !dx.controlflow.hints !181

; <label>:8584                                    ; preds = %8580
  %8585 = call float @dx.op.unary.f32(i32 23, float %8544)  ; Log(value)
  %8586 = fmul fast float %8585, 0x3FE62E4300000000
  %8587 = fmul fast float %8541, %8586
  %8588 = fsub fast float -0.000000e+00, %8587
  %8589 = fsub fast float 1.000000e+00, %8544
  %8590 = fdiv fast float %8588, %8589
  br label %8591

; <label>:8591                                    ; preds = %8584, %8580
  %8592 = phi float [ %8590, %8584 ], [ %8541, %8580 ]
  %8593 = phi float [ %8586, %8584 ], [ 0.000000e+00, %8580 ]
  %8594 = fcmp fast une float %8545, 1.000000e+00
  br i1 %8594, label %8595, label %8602, !dx.controlflow.hints !181

; <label>:8595                                    ; preds = %8591
  %8596 = call float @dx.op.unary.f32(i32 23, float %8545)  ; Log(value)
  %8597 = fmul fast float %8596, 0x3FE62E4300000000
  %8598 = fmul fast float %8542, %8597
  %8599 = fsub fast float -0.000000e+00, %8598
  %8600 = fsub fast float 1.000000e+00, %8545
  %8601 = fdiv fast float %8599, %8600
  br label %8602

; <label>:8602                                    ; preds = %8595, %8591
  %8603 = phi float [ %8601, %8595 ], [ %8542, %8591 ]
  %8604 = phi float [ %8597, %8595 ], [ 0.000000e+00, %8591 ]
  %8605 = fmul fast float %8568, %8552
  %8606 = fmul fast float %8569, %8552
  %8607 = fmul fast float %8570, %8552
  %8608 = fmul fast float %8571, %8552
  %8609 = fmul fast float %8581, %8550
  %8610 = fmul fast float %8592, %8550
  %8611 = fmul fast float %8603, %8550
  %8612 = fmul fast float %8582, %8550
  %8613 = fmul fast float %8593, %8550
  %8614 = fmul fast float %8604, %8550
  %8615 = fadd fast float %8609, %8605
  %8616 = fadd fast float %8610, %8606
  %8617 = fadd fast float %8611, %8607
  %8618 = fadd fast float %8612, %8608
  %8619 = fadd fast float %8613, %8608
  %8620 = fadd fast float %8614, %8608
  %8621 = fcmp fast une float %8618, 0.000000e+00
  br i1 %8621, label %8622, label %8629, !dx.controlflow.hints !182

; <label>:8622                                    ; preds = %8602
  %8623 = fmul fast float %8618, 0x3FF7154760000000
  %8624 = call float @dx.op.unary.f32(i32 21, float %8623)  ; Exp(value)
  %8625 = fsub fast float 1.000000e+00, %8624
  %8626 = fmul fast float %8615, %8625
  %8627 = fsub fast float -0.000000e+00, %8626
  %8628 = fdiv fast float %8627, %8618
  br label %8629

; <label>:8629                                    ; preds = %8622, %8602
  %8630 = phi float [ %8624, %8622 ], [ 1.000000e+00, %8602 ]
  %8631 = phi float [ %8628, %8622 ], [ %8615, %8602 ]
  %8632 = fcmp fast une float %8619, 0.000000e+00
  br i1 %8632, label %8633, label %8640, !dx.controlflow.hints !182

; <label>:8633                                    ; preds = %8629
  %8634 = fmul fast float %8619, 0x3FF7154760000000
  %8635 = call float @dx.op.unary.f32(i32 21, float %8634)  ; Exp(value)
  %8636 = fsub fast float 1.000000e+00, %8635
  %8637 = fmul fast float %8616, %8636
  %8638 = fsub fast float -0.000000e+00, %8637
  %8639 = fdiv fast float %8638, %8619
  br label %8640

; <label>:8640                                    ; preds = %8633, %8629
  %8641 = phi float [ %8635, %8633 ], [ 1.000000e+00, %8629 ]
  %8642 = phi float [ %8639, %8633 ], [ %8616, %8629 ]
  %8643 = fcmp fast une float %8620, 0.000000e+00
  br i1 %8643, label %8644, label %8651, !dx.controlflow.hints !182

; <label>:8644                                    ; preds = %8640
  %8645 = fmul fast float %8620, 0x3FF7154760000000
  %8646 = call float @dx.op.unary.f32(i32 21, float %8645)  ; Exp(value)
  %8647 = fsub fast float 1.000000e+00, %8646
  %8648 = fmul fast float %8617, %8647
  %8649 = fsub fast float -0.000000e+00, %8648
  %8650 = fdiv fast float %8649, %8620
  br label %8651

; <label>:8651                                    ; preds = %8644, %8640
  %8652 = phi float [ %8646, %8644 ], [ 1.000000e+00, %8640 ]
  %8653 = phi float [ %8650, %8644 ], [ %8617, %8640 ]
  %8654 = fcmp fast ogt float %8550, %8552
  br i1 %8654, label %8655, label %8675

; <label>:8655                                    ; preds = %8651
  %8656 = fsub fast float 1.000000e+00, %8552
  %8657 = fmul fast float %8568, %8656
  %8658 = fmul fast float %8569, %8656
  %8659 = fmul fast float %8570, %8656
  %8660 = fmul fast float %8571, %8656
  %8661 = fcmp fast une float %8660, 0.000000e+00
  br i1 %8661, label %8662, label %8713, !dx.controlflow.hints !183

; <label>:8662                                    ; preds = %8655
  %8663 = fmul fast float %8660, 0x3FF7154760000000
  %8664 = call float @dx.op.unary.f32(i32 21, float %8663)  ; Exp(value)
  %8665 = fsub fast float 1.000000e+00, %8664
  %8666 = fmul fast float %8657, %8665
  %8667 = fsub fast float -0.000000e+00, %8666
  %8668 = fmul fast float %8658, %8665
  %8669 = fsub fast float -0.000000e+00, %8668
  %8670 = fmul fast float %8659, %8665
  %8671 = fsub fast float -0.000000e+00, %8670
  %8672 = fdiv fast float %8667, %8660
  %8673 = fdiv fast float %8669, %8660
  %8674 = fdiv fast float %8671, %8660
  br label %8713

; <label>:8675                                    ; preds = %8651
  %8676 = fsub fast float 1.000000e+00, %8550
  %8677 = fmul fast float %8581, %8676
  %8678 = fmul fast float %8592, %8676
  %8679 = fmul fast float %8603, %8676
  %8680 = fmul fast float %8582, %8676
  %8681 = fmul fast float %8593, %8676
  %8682 = fmul fast float %8604, %8676
  %8683 = fcmp fast une float %8680, 0.000000e+00
  br i1 %8683, label %8684, label %8691, !dx.controlflow.hints !182

; <label>:8684                                    ; preds = %8675
  %8685 = fmul fast float %8680, 0x3FF7154760000000
  %8686 = call float @dx.op.unary.f32(i32 21, float %8685)  ; Exp(value)
  %8687 = fsub fast float 1.000000e+00, %8686
  %8688 = fmul fast float %8677, %8687
  %8689 = fsub fast float -0.000000e+00, %8688
  %8690 = fdiv fast float %8689, %8680
  br label %8691

; <label>:8691                                    ; preds = %8684, %8675
  %8692 = phi float [ %8690, %8684 ], [ %8677, %8675 ]
  %8693 = phi float [ %8686, %8684 ], [ 1.000000e+00, %8675 ]
  %8694 = fcmp fast une float %8681, 0.000000e+00
  br i1 %8694, label %8695, label %8702, !dx.controlflow.hints !182

; <label>:8695                                    ; preds = %8691
  %8696 = fmul fast float %8681, 0x3FF7154760000000
  %8697 = call float @dx.op.unary.f32(i32 21, float %8696)  ; Exp(value)
  %8698 = fsub fast float 1.000000e+00, %8697
  %8699 = fmul fast float %8678, %8698
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = fdiv fast float %8700, %8681
  br label %8702

; <label>:8702                                    ; preds = %8695, %8691
  %8703 = phi float [ %8701, %8695 ], [ %8678, %8691 ]
  %8704 = phi float [ %8697, %8695 ], [ 1.000000e+00, %8691 ]
  %8705 = fcmp fast une float %8682, 0.000000e+00
  br i1 %8705, label %8706, label %8713, !dx.controlflow.hints !182

; <label>:8706                                    ; preds = %8702
  %8707 = fmul fast float %8682, 0x3FF7154760000000
  %8708 = call float @dx.op.unary.f32(i32 21, float %8707)  ; Exp(value)
  %8709 = fsub fast float 1.000000e+00, %8708
  %8710 = fmul fast float %8679, %8709
  %8711 = fsub fast float -0.000000e+00, %8710
  %8712 = fdiv fast float %8711, %8682
  br label %8713

; <label>:8713                                    ; preds = %8706, %8702, %8662, %8655
  %8714 = phi float [ %8712, %8706 ], [ %8674, %8662 ], [ %8659, %8655 ], [ %8679, %8702 ]
  %8715 = phi float [ %8703, %8706 ], [ %8673, %8662 ], [ %8658, %8655 ], [ %8703, %8702 ]
  %8716 = phi float [ %8692, %8706 ], [ %8672, %8662 ], [ %8657, %8655 ], [ %8692, %8702 ]
  %8717 = phi float [ %8708, %8706 ], [ %8664, %8662 ], [ 1.000000e+00, %8655 ], [ 1.000000e+00, %8702 ]
  %8718 = phi float [ %8704, %8706 ], [ %8664, %8662 ], [ 1.000000e+00, %8655 ], [ %8704, %8702 ]
  %8719 = phi float [ %8693, %8706 ], [ %8664, %8662 ], [ 1.000000e+00, %8655 ], [ %8693, %8702 ]
  %8720 = fmul fast float %8719, %8631
  %8721 = fmul fast float %8718, %8642
  %8722 = fmul fast float %8717, %8653
  %8723 = fadd fast float %8720, %8716
  %8724 = fadd fast float %8721, %8715
  %8725 = fadd fast float %8722, %8714
  %8726 = fmul fast float %8719, %8630
  %8727 = fmul fast float %8718, %8641
  %8728 = fmul fast float %8717, %8652
  br label %8729

; <label>:8729                                    ; preds = %8713, %8524
  %8730 = phi float [ %8728, %8713 ], [ %8530, %8524 ]
  %8731 = phi float [ %8727, %8713 ], [ %8529, %8524 ]
  %8732 = phi float [ %8726, %8713 ], [ %8528, %8524 ]
  %8733 = phi float [ %8725, %8713 ], [ %8527, %8524 ]
  %8734 = phi float [ %8724, %8713 ], [ %8526, %8524 ]
  %8735 = phi float [ %8723, %8713 ], [ %8525, %8524 ]
  %8736 = fmul fast float %8735, %7681
  %8737 = fmul fast float %8734, %7681
  %8738 = fmul fast float %8733, %7681
  %8739 = fmul fast float %8732, %7972
  %8740 = call float @dx.op.dot3.f32(i32 55, float %8732, float %8731, float %8730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8741 = call float @dx.op.dot3.f32(i32 55, float %8736, float %8737, float %8738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8742 = select i1 %263, float %8740, float %8732
  %8743 = select i1 %263, float %8740, float %8731
  %8744 = select i1 %263, float 1.000000e+00, float %8730
  %8745 = select i1 %263, float %8741, float %8736
  %8746 = select i1 %263, float 0.000000e+00, float %8737
  %8747 = select i1 %263, float 0.000000e+00, float %8738
  %8748 = fmul fast float %8742, %7966
  %8749 = fmul fast float %8743, %7967
  %8750 = fmul fast float %8744, %7968
  %8751 = fadd fast float %8748, %8745
  %8752 = fadd fast float %8749, %8746
  %8753 = fadd fast float %8747, %8750
  %8754 = fmul fast float %8742, %7969
  %8755 = fmul fast float %8743, %7970
  %8756 = fmul fast float %8744, %7971
  %8757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.i32 %8757, 0
  %8759 = icmp eq i32 %8758, 0
  br i1 %8759, label %9127, label %8760, !dx.controlflow.hints !184

; <label>:8760                                    ; preds = %8729
  %8761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8762 = extractvalue %dx.types.CBufRet.f32 %8761, 2
  %8763 = extractvalue %dx.types.CBufRet.f32 %8761, 3
  %8764 = fmul fast float %8762, %117
  %8765 = fmul fast float %8763, %118
  %8766 = fmul fast float %8764, 2.000000e+00
  %8767 = fmul fast float %8765, 2.000000e+00
  %8768 = fsub fast float 1.000000e+00, %8766
  %8769 = fsub fast float 1.000000e+00, %8767
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8774 = fmul fast float %8768, %8771
  %8775 = fmul fast float %8768, %8772
  %8776 = fmul fast float %8768, %8773
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 0
  %8779 = extractvalue %dx.types.CBufRet.f32 %8777, 1
  %8780 = extractvalue %dx.types.CBufRet.f32 %8777, 2
  %8781 = fmul fast float %8769, %8778
  %8782 = fmul fast float %8769, %8779
  %8783 = fmul fast float %8769, %8780
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 0
  %8786 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8787 = extractvalue %dx.types.CBufRet.f32 %8784, 2
  %8788 = fadd fast float %8781, %8785
  %8789 = fadd fast float %8788, %8774
  %8790 = fadd fast float %8782, %8786
  %8791 = fadd fast float %8790, %8775
  %8792 = fadd fast float %8783, %8787
  %8793 = fadd fast float %8792, %8776
  %8794 = fmul fast float %8789, %7965
  %8795 = fmul fast float %8791, %7965
  %8796 = fmul fast float %8793, %7965
  %8797 = fmul fast float %8794, %8794
  %8798 = fmul fast float %8795, %8795
  %8799 = fadd fast float %8797, %8798
  %8800 = fmul fast float %8796, %8796
  %8801 = fadd fast float %8799, %8800
  %8802 = call float @dx.op.unary.f32(i32 24, float %8801)  ; Sqrt(value)
  %8803 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %8804 = fsub fast float %8802, %8803
  %8805 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %8806 = fmul fast float %8804, %8805
  %8807 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8808 = fadd fast float %8807, -5.000000e-01
  %8809 = fmul fast float %8808, 2.000000e+00
  %8810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8810, 2
  %8812 = call float @dx.op.binary.f32(i32 36, float %8811, float %8809)  ; FMin(a,b)
  %8813 = fsub fast float -0.000000e+00, %8811
  %8814 = fcmp fast ogt float %8812, %8813
  br i1 %8814, label %8815, label %9127, !dx.controlflow.hints !185

; <label>:8815                                    ; preds = %8760
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8818 = fcmp fast ogt float %8817, 0.000000e+00
  br i1 %8818, label %8819, label %8894, !dx.controlflow.hints !186

; <label>:8819                                    ; preds = %8815
  %8820 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %8821 = extractvalue %dx.types.Dimensions %8820, 0
  %8822 = sitofp i32 %8821 to float
  %8823 = extractvalue %dx.types.Dimensions %8820, 1
  %8824 = sitofp i32 %8823 to float
  %8825 = fmul fast float %8764, %8822
  %8826 = fmul fast float %8765, %8824
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 1
  %8829 = fsub fast float -0.000000e+00, %8828
  %8830 = fptoui float %8829 to i32
  %8831 = fptoui float %8825 to i32
  %8832 = fptoui float %8826 to i32
  %8833 = and i32 %8830, 31
  %8834 = lshr i32 %8831, %8833
  %8835 = lshr i32 %8832, %8833
  %8836 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 %8830, i32 %8834, i32 %8835, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8837 = extractvalue %dx.types.ResRet.f32 %8836, 0
  %8838 = fcmp fast olt float %8837, -1.000000e+00
  %8839 = fcmp fast ogt float %8837, -1.000000e+00
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8842 = select i1 %8839, float %8841, float 1.000000e+00
  %8843 = fadd fast float %8837, 1.000000e+00
  %8844 = fmul fast float %8842, %8843
  %8845 = call float @dx.op.unary.f32(i32 6, float %8844)  ; FAbs(value)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8847 = fcmp fast oge float %8845, %8846
  %8848 = select i1 %8847, float 0x4197782600000000, float %8845
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8853 = select i1 %8838, float %8850, float %8771
  %8854 = select i1 %8838, float %8851, float %8772
  %8855 = select i1 %8838, float %8852, float %8773
  %8856 = fmul fast float %8853, %8768
  %8857 = fmul fast float %8854, %8768
  %8858 = fmul fast float %8855, %8768
  %8859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8859, 0
  %8861 = extractvalue %dx.types.CBufRet.f32 %8859, 1
  %8862 = extractvalue %dx.types.CBufRet.f32 %8859, 2
  %8863 = select i1 %8838, float %8860, float %8778
  %8864 = select i1 %8838, float %8861, float %8779
  %8865 = select i1 %8838, float %8862, float %8780
  %8866 = fmul fast float %8863, %8769
  %8867 = fmul fast float %8864, %8769
  %8868 = fmul fast float %8865, %8769
  %8869 = fadd fast float %8866, %8856
  %8870 = fadd fast float %8867, %8857
  %8871 = fadd fast float %8868, %8858
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = select i1 %8838, float %8873, float %8785
  %8877 = select i1 %8838, float %8874, float %8786
  %8878 = select i1 %8838, float %8875, float %8787
  %8879 = fadd fast float %8869, %8876
  %8880 = fadd fast float %8870, %8877
  %8881 = fadd fast float %8871, %8878
  %8882 = fmul fast float %8879, %8848
  %8883 = fmul fast float %8880, %8848
  %8884 = fmul fast float %8881, %8848
  %8885 = fmul fast float %8882, %8882
  %8886 = fmul fast float %8883, %8883
  %8887 = fadd fast float %8885, %8886
  %8888 = fmul fast float %8884, %8884
  %8889 = fadd fast float %8887, %8888
  %8890 = call float @dx.op.unary.f32(i32 24, float %8889)  ; Sqrt(value)
  %8891 = fsub fast float %8890, %8803
  %8892 = fmul fast float %8891, %8805
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  br label %8894

; <label>:8894                                    ; preds = %8819, %8815
  %8895 = phi float [ %8893, %8819 ], [ 1.000000e+00, %8815 ]
  %8896 = fmul fast float %8812, 5.000000e-01
  %8897 = fadd fast float %8896, 5.000000e-01
  %8898 = call float @dx.op.unary.f32(i32 22, float %8897)  ; Frc(value)
  %8899 = call float @dx.op.unary.f32(i32 27, float %8898)  ; Round_ni(value)
  %8900 = call float @dx.op.unary.f32(i32 22, float %8898)  ; Frc(value)
  %8901 = fmul fast float %8900, 2.000000e+00
  %8902 = fadd fast float %8901, -1.000000e+00
  %8903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %56, float %8764, float %8765, float %8899, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8904 = extractvalue %dx.types.ResRet.f32 %8903, 0
  %8905 = extractvalue %dx.types.ResRet.f32 %8903, 1
  %8906 = extractvalue %dx.types.ResRet.f32 %8903, 2
  %8907 = extractvalue %dx.types.ResRet.f32 %8903, 3
  %8908 = fadd fast float %8904, -5.000000e-01
  %8909 = fadd fast float %8906, -5.000000e-01
  %8910 = fmul fast float %8908, 0xBFD5555560000000
  %8911 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8909, float %8910)  ; FMad(a,b,c)
  %8912 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8905, float 0.000000e+00)  ; FMad(a,b,c)
  %8913 = fadd fast float %8912, %8907
  %8914 = fmul fast float %8908, -7.500000e-01
  %8915 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8909, float %8914)  ; FMad(a,b,c)
  %8916 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8905, float 0.000000e+00)  ; FMad(a,b,c)
  %8917 = fadd fast float %8916, %8907
  %8918 = call float @dx.op.binary.f32(i32 35, float %8911, float -1.000000e+00)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float %8913, float -1.000000e+00)  ; FMax(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8915, float -1.000000e+00)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float %8917, float -1.000000e+00)  ; FMax(a,b)
  %8922 = call float @dx.op.binary.f32(i32 36, float %8918, float 1.000000e+00)  ; FMin(a,b)
  %8923 = call float @dx.op.binary.f32(i32 36, float %8919, float 1.000000e+00)  ; FMin(a,b)
  %8924 = call float @dx.op.binary.f32(i32 36, float %8920, float 1.000000e+00)  ; FMin(a,b)
  %8925 = call float @dx.op.binary.f32(i32 36, float %8921, float 1.000000e+00)  ; FMin(a,b)
  %8926 = fcmp fast olt float %8922, 0x3FEFFF8020000000
  br i1 %8926, label %8927, label %9042, !dx.controlflow.hints !187

; <label>:8927                                    ; preds = %8894
  %8928 = extractvalue %dx.types.CBufRet.f32 %8810, 3
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %8931 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8932 = extractvalue %dx.types.CBufRet.f32 %8929, 2
  %8933 = extractvalue %dx.types.CBufRet.f32 %8929, 3
  %8934 = fsub fast float %8930, %8922
  %8935 = fsub fast float %8931, %8923
  %8936 = fsub fast float %8932, %8924
  %8937 = fsub fast float %8933, %8925
  %8938 = fmul fast float %8934, %8928
  %8939 = fmul fast float %8935, %8928
  %8940 = fmul fast float %8936, %8928
  %8941 = fmul fast float %8937, %8928
  %8942 = fadd fast float %8938, %8922
  %8943 = fadd fast float %8939, %8923
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fadd fast float %8940, %8924
  %8946 = fadd fast float %8941, %8925
  %8947 = fmul fast float %8942, %8942
  %8948 = fsub fast float %8943, %8947
  %8949 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8948)  ; FMax(a,b)
  %8950 = fdiv fast float 1.000000e+00, %8949
  %8951 = fmul fast float %8943, %8942
  %8952 = fsub fast float %8945, %8951
  %8953 = fsub fast float %8902, %8942
  %8954 = fmul fast float %8902, %8902
  %8955 = fsub fast float %8954, %8943
  %8956 = fmul fast float %8953, %8950
  %8957 = fmul fast float %8956, %8952
  %8958 = fsub fast float %8955, %8957
  %8959 = fmul fast float %8943, %8943
  %8960 = fsub fast float %8946, %8959
  %8961 = fmul fast float %8952, %8952
  %8962 = fmul fast float %8961, %8950
  %8963 = fsub fast float %8960, %8962
  %8964 = fdiv fast float %8958, %8963
  %8965 = fmul fast float %8952, %8964
  %8966 = fsub fast float %8953, %8965
  %8967 = fmul fast float %8966, %8950
  %8968 = fmul fast float %8967, %8942
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = fmul fast float %8943, %8964
  %8971 = fsub fast float %8969, %8970
  %8972 = fmul fast float %8967, %8967
  %8973 = fmul fast float %8964, 4.000000e+00
  %8974 = fmul fast float %8973, %8971
  %8975 = fsub fast float %8972, %8974
  %8976 = call float @dx.op.unary.f32(i32 24, float %8975)  ; Sqrt(value)
  %8977 = fcmp fast oge float %8967, 0.000000e+00
  %8978 = fsub fast float -0.000000e+00, %8976
  %8979 = select i1 %8977, float %8978, float %8976
  %8980 = fsub fast float %8979, %8967
  %8981 = fdiv fast float %8980, %8964
  %8982 = fdiv fast float %8971, %8980
  %8983 = fmul fast float %8981, 5.000000e-01
  %8984 = fmul fast float %8982, 2.000000e+00
  %8985 = select i1 %8977, float %8983, float %8984
  %8986 = select i1 %8977, float %8984, float %8983
  %8987 = call float @dx.op.binary.f32(i32 35, float %8985, float %8986)  ; FMax(a,b)
  %8988 = call float @dx.op.binary.f32(i32 36, float %8985, float %8986)  ; FMin(a,b)
  %8989 = fcmp fast ogt float %8902, %8988
  br i1 %8989, label %8990, label %9000

; <label>:8990                                    ; preds = %8927
  %8991 = fsub fast float %8902, %8988
  %8992 = fsub fast float %8987, %8988
  %8993 = fmul fast float %8991, %8992
  %8994 = fmul fast float %8987, %8902
  %8995 = fadd fast float %8987, %8902
  %8996 = fmul fast float %8995, %8942
  %8997 = fadd fast float %8994, %8943
  %8998 = fsub fast float %8997, %8996
  %8999 = fdiv fast float %8998, %8993
  br label %9000

; <label>:9000                                    ; preds = %8990, %8927
  %9001 = phi float [ %8999, %8990 ], [ 0.000000e+00, %8927 ]
  %9002 = fcmp fast ogt float %8902, %8987
  %9003 = fsub fast float %8902, %8987
  br i1 %9002, label %9004, label %9014

; <label>:9004                                    ; preds = %9000
  %9005 = fsub fast float %8987, %8988
  %9006 = fmul fast float %9005, %9003
  %9007 = fmul fast float %8988, %8902
  %9008 = fadd fast float %8988, %8902
  %9009 = fmul fast float %9008, %8942
  %9010 = fsub fast float %8944, %9007
  %9011 = fadd fast float %9010, %9009
  %9012 = fdiv fast float %9011, %9006
  %9013 = fadd fast float %9012, %9001
  br label %9014

; <label>:9014                                    ; preds = %9004, %9000
  %9015 = phi float [ %9013, %9004 ], [ %9001, %9000 ]
  %9016 = fsub fast float %8902, %8988
  %9017 = fmul fast float %9016, %9003
  %9018 = fmul fast float %8988, %8987
  %9019 = fadd fast float %8988, %8987
  %9020 = fmul fast float %9019, %8942
  %9021 = fadd fast float %9018, %8943
  %9022 = fsub fast float %9021, %9020
  %9023 = fdiv fast float %9022, %9017
  %9024 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9025 = fcmp fast oeq float %7693, 0.000000e+00
  %9026 = extractvalue %dx.types.CBufRet.f32 %8810, 0
  %9027 = fcmp fast oeq float %9026, 0.000000e+00
  %9028 = or i1 %9025, %9027
  %9029 = fmul fast float %9026, 2.000000e+00
  %9030 = fadd fast float %8811, %8812
  %9031 = fdiv fast float %9030, %9029
  %9032 = call float @dx.op.unary.f32(i32 7, float %9031)  ; Saturate(value)
  %9033 = fmul fast float %9032, 2.000000e+00
  %9034 = fsub fast float 3.000000e+00, %9033
  %9035 = fmul fast float %9032, %9032
  %9036 = fmul fast float %9035, %9034
  %9037 = select i1 %9028, float 1.000000e+00, float %9036
  %9038 = fmul fast float %9023, %7693
  %9039 = fadd fast float %9024, %9038
  %9040 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  %9041 = fmul fast float %9037, %9040
  br label %9042

; <label>:9042                                    ; preds = %9014, %8894
  %9043 = phi float [ %9041, %9014 ], [ 0.000000e+00, %8894 ]
  %9044 = fsub fast float 1.000000e+00, %9043
  %9045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %56, float %8764, float %8765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9046 = extractvalue %dx.types.ResRet.f32 %9045, 0
  %9047 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.i32 %9047, 2
  %9049 = icmp eq i32 %9048, 0
  br i1 %9049, label %9055, label %9050

; <label>:9050                                    ; preds = %9042
  %9051 = call float @dx.op.unary.f32(i32 7, float %9043)  ; Saturate(value)
  %9052 = fadd fast float %9046, -1.000000e+00
  %9053 = fmul fast float %9051, %9052
  %9054 = fadd fast float %9053, 1.000000e+00
  br label %9055

; <label>:9055                                    ; preds = %9050, %9042
  %9056 = phi float [ %9054, %9050 ], [ %9044, %9042 ]
  br i1 %8818, label %9057, label %9075

; <label>:9057                                    ; preds = %9055
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 1
  %9060 = fsub fast float %8895, %9059
  %9061 = call float @dx.op.unary.f32(i32 7, float %9060)  ; Saturate(value)
  %9062 = fsub fast float %8895, %8817
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fsub fast float %9061, %9063
  %9065 = fsub fast float %8897, %9063
  %9066 = fdiv fast float %9065, %9064
  %9067 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9068 = fmul fast float %9067, 2.000000e+00
  %9069 = fsub fast float 3.000000e+00, %9068
  %9070 = fsub fast float %9046, %9056
  %9071 = fmul fast float %9067, %9067
  %9072 = fmul fast float %9071, %9070
  %9073 = fmul fast float %9072, %9069
  %9074 = fadd fast float %9073, %9056
  br label %9075

; <label>:9075                                    ; preds = %9057, %9055
  %9076 = phi float [ %9074, %9057 ], [ %9056, %9055 ]
  %9077 = call float @dx.op.binary.f32(i32 35, float %9046, float %9076)  ; FMax(a,b)
  %9078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.i32 %9078, 2
  %9080 = and i32 %9079, 1
  %9081 = icmp eq i32 %9080, 0
  %9082 = fcmp fast une float %9077, 1.000000e+00
  %9083 = and i1 %9082, %9081
  br i1 %9083, label %9084, label %9103

; <label>:9084                                    ; preds = %9075
  %9085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %56, float %8764, float %8765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9086 = extractvalue %dx.types.ResRet.f32 %9085, 0
  %9087 = extractvalue %dx.types.ResRet.f32 %9085, 1
  %9088 = extractvalue %dx.types.ResRet.f32 %9085, 2
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 1
  %9091 = fmul fast float %9090, %9086
  %9092 = fmul fast float %9090, %9087
  %9093 = fmul fast float %9090, %9088
  %9094 = fcmp fast ogt float %9046, 0x3FEFFF2E40000000
  %9095 = fsub fast float 1.000000e+00, %9077
  %9096 = fsub fast float 1.000000e+00, %9046
  %9097 = fdiv fast float %9095, %9096
  %9098 = call float @dx.op.unary.f32(i32 7, float %9097)  ; Saturate(value)
  %9099 = select i1 %9094, float 0.000000e+00, float %9098
  %9100 = fmul fast float %9091, %9099
  %9101 = fmul fast float %9092, %9099
  %9102 = fmul fast float %9093, %9099
  br label %9103

; <label>:9103                                    ; preds = %9084, %9075
  %9104 = phi float [ 0.000000e+00, %9075 ], [ %9100, %9084 ]
  %9105 = phi float [ 0.000000e+00, %9075 ], [ %9101, %9084 ]
  %9106 = phi float [ 0.000000e+00, %9075 ], [ %9102, %9084 ]
  %9107 = fmul fast float %9104, %7681
  %9108 = fmul fast float %9105, %7681
  %9109 = fmul fast float %9106, %7681
  %9110 = fmul fast float %9077, %8739
  %9111 = call float @dx.op.dot3.f32(i32 55, float %9077, float %9077, float %9077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9112 = call float @dx.op.dot3.f32(i32 55, float %9107, float %9108, float %9109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9113 = select i1 %263, float %9111, float %9077
  %9114 = select i1 %263, float 1.000000e+00, float %9077
  %9115 = select i1 %263, float %9112, float %9107
  %9116 = select i1 %263, float 0.000000e+00, float %9108
  %9117 = select i1 %263, float 0.000000e+00, float %9109
  %9118 = fmul fast float %9113, %8751
  %9119 = fmul fast float %9113, %8752
  %9120 = fmul fast float %9114, %8753
  %9121 = fadd fast float %9118, %9115
  %9122 = fadd fast float %9119, %9116
  %9123 = fadd fast float %9117, %9120
  %9124 = fmul fast float %9113, %8754
  %9125 = fmul fast float %9113, %8755
  %9126 = fmul fast float %9114, %8756
  br label %9127

; <label>:9127                                    ; preds = %9103, %8760, %8729, %7961
  %9128 = phi float [ %7966, %7961 ], [ %8751, %8729 ], [ %9121, %9103 ], [ %8751, %8760 ]
  %9129 = phi float [ %7967, %7961 ], [ %8752, %8729 ], [ %9122, %9103 ], [ %8752, %8760 ]
  %9130 = phi float [ %7968, %7961 ], [ %8753, %8729 ], [ %9123, %9103 ], [ %8753, %8760 ]
  %9131 = phi float [ %7969, %7961 ], [ %8754, %8729 ], [ %9124, %9103 ], [ %8754, %8760 ]
  %9132 = phi float [ %7970, %7961 ], [ %8755, %8729 ], [ %9125, %9103 ], [ %8755, %8760 ]
  %9133 = phi float [ %7971, %7961 ], [ %8756, %8729 ], [ %9126, %9103 ], [ %8756, %8760 ]
  %9134 = phi float [ %7972, %7961 ], [ %8739, %8729 ], [ %9110, %9103 ], [ %8739, %8760 ]
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %59, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9138 = fmul fast float %9136, %117
  %9139 = fmul fast float %9137, %118
  %9140 = call float @dx.op.unary.f32(i32 7, float %9138)  ; Saturate(value)
  %9141 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9142 = select i1 %7703, i32 2, i32 0
  %9143 = or i32 %9142, 1
  %9144 = uitofp i32 %9143 to float
  %9145 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %9140, float %9141, float %9144, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9146 = extractvalue %dx.types.ResRet.f32 %9145, 0
  %9147 = extractvalue %dx.types.ResRet.f32 %9145, 1
  %9148 = extractvalue %dx.types.ResRet.f32 %9145, 2
  %9149 = extractvalue %dx.types.ResRet.f32 %9145, 3
  %9150 = add nuw nsw i32 %9142, 2
  %9151 = uitofp i32 %9150 to float
  %9152 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %56, float %9140, float %9141, float %9151, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9153 = extractvalue %dx.types.ResRet.f32 %9152, 0
  %9154 = extractvalue %dx.types.ResRet.f32 %9152, 1
  %9155 = extractvalue %dx.types.ResRet.f32 %9152, 2
  %9156 = extractvalue %dx.types.ResRet.f32 %9152, 3
  %9157 = call float @dx.op.binary.f32(i32 35, float %9147, float %9148)  ; FMax(a,b)
  %9158 = call float @dx.op.binary.f32(i32 35, float %9146, float %9157)  ; FMax(a,b)
  %9159 = call float @dx.op.binary.f32(i32 35, float %9158, float %9149)  ; FMax(a,b)
  %9160 = call float @dx.op.binary.f32(i32 36, float %9154, float %9155)  ; FMin(a,b)
  %9161 = call float @dx.op.binary.f32(i32 36, float %9153, float %9160)  ; FMin(a,b)
  %9162 = call float @dx.op.binary.f32(i32 36, float %9161, float %9156)  ; FMin(a,b)
  %9163 = fmul fast float %9159, 2.550000e+02
  %9164 = fadd fast float %9163, 0x3F70101020000000
  %9165 = fptoui float %9164 to i32
  %9166 = fmul fast float %9162, 2.550000e+02
  %9167 = fadd fast float %9166, 0x3F70101020000000
  %9168 = fptoui float %9167 to i32
  %9169 = icmp ult i32 %9165, %9168
  br i1 %9169, label %9170, label %9339

; <label>:9170                                    ; preds = %9127
  %9171 = fcmp fast ogt float %103, 9.843750e-01
  %9172 = fadd fast float %7965, -4.000000e+00
  %9173 = select i1 %9171, float -4.000000e+00, float %9172
  %9174 = call float @dx.op.binary.f32(i32 35, float %9173, float 0.000000e+00)  ; FMax(a,b)
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 0
  %9177 = fadd fast float %9176, %9174
  %9178 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %9179 = fmul fast float %9177, %9178
  %9180 = call float @dx.op.unary.f32(i32 23, float %9179)  ; Log(value)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9175, 3
  %9182 = fmul fast float %9181, %9180
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 2
  %9185 = fmul fast float %9182, %9184
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = uitofp i32 %9165 to float
  %9188 = uitofp i32 %9168 to float
  %9189 = fadd fast float %9187, 5.000000e-01
  %9190 = fadd fast float %9188, 5.000000e-01
  %9191 = fmul fast float %9184, %9189
  %9192 = fmul fast float %9184, %9190
  %9193 = fadd fast float %9191, 0x3F0FFB4800000000
  %9194 = fadd fast float %9192, 0xBF0FFB4800000000
  %9195 = call float @dx.op.binary.f32(i32 35, float %9186, float %9193)  ; FMax(a,b)
  %9196 = call float @dx.op.binary.f32(i32 36, float %9195, float %9194)  ; FMin(a,b)
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 1
  %9199 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9200 = extractvalue %dx.types.CBufRet.f32 %9197, 0
  %9201 = select i1 %7703, float %9200, float 0.000000e+00
  %9202 = fmul fast float %9198, %9196
  %9203 = fadd fast float %9201, %9202
  %9204 = fadd fast float %9201, %9199
  %9205 = fsub fast float %9198, %9199
  %9206 = fadd fast float %9205, %9201
  %9207 = call float @dx.op.binary.f32(i32 35, float %9203, float %9204)  ; FMax(a,b)
  %9208 = call float @dx.op.binary.f32(i32 36, float %9207, float %9206)  ; FMin(a,b)
  %9209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %54, float %9140, float %9141, float %9208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.ResRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.ResRet.f32 %9209, 2
  %9213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9214 = extractvalue %dx.types.CBufRet.i32 %9213, 0
  %9215 = extractvalue %dx.types.CBufRet.i32 %9213, 1
  %9216 = uitofp i32 %9214 to float
  %9217 = uitofp i32 %9215 to float
  %9218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.f32 %9218, 0
  %9220 = extractvalue %dx.types.CBufRet.f32 %9218, 1
  %9221 = fmul fast float %9216, %9140
  %9222 = fmul fast float %9217, %9141
  %9223 = fadd fast float %9221, -5.000000e-01
  %9224 = fadd fast float %9222, -5.000000e-01
  %9225 = call float @dx.op.unary.f32(i32 22, float %9223)  ; Frc(value)
  %9226 = call float @dx.op.unary.f32(i32 22, float %9224)  ; Frc(value)
  %9227 = fmul fast float %9225, %9225
  %9228 = fmul fast float %9227, %9225
  %9229 = fsub fast float 3.000000e+00, %9225
  %9230 = fmul fast float %9227, %9229
  %9231 = fmul fast float %9225, 3.000000e+00
  %9232 = fmul fast float %9228, 3.000000e+00
  %9233 = fmul fast float %9227, 6.000000e+00
  %9234 = fsub fast float %9232, %9233
  %9235 = fadd fast float %9234, 4.000000e+00
  %9236 = fmul fast float %9235, 0x3FC5555560000000
  %9237 = fmul fast float %9228, -3.000000e+00
  %9238 = fadd fast float %9227, %9225
  %9239 = fmul fast float %9238, 3.000000e+00
  %9240 = fadd fast float %9237, 1.000000e+00
  %9241 = fadd fast float %9240, %9239
  %9242 = fmul fast float %9228, 0x3FC5555560000000
  %9243 = fmul fast float %9226, %9226
  %9244 = fmul fast float %9243, %9226
  %9245 = fsub fast float 3.000000e+00, %9226
  %9246 = fmul fast float %9243, %9245
  %9247 = fmul fast float %9226, 3.000000e+00
  %9248 = fmul fast float %9244, 3.000000e+00
  %9249 = fmul fast float %9243, 6.000000e+00
  %9250 = fsub fast float %9248, %9249
  %9251 = fadd fast float %9250, 4.000000e+00
  %9252 = fmul fast float %9251, 0x3FC5555560000000
  %9253 = fmul fast float %9244, -3.000000e+00
  %9254 = fadd fast float %9243, %9226
  %9255 = fmul fast float %9254, 3.000000e+00
  %9256 = fadd fast float %9253, 1.000000e+00
  %9257 = fadd fast float %9256, %9255
  %9258 = fmul fast float %9244, 0x3FC5555560000000
  %9259 = fadd fast float %9225, 1.000000e+00
  %9260 = fsub fast float 1.000000e+00, %9231
  %9261 = fadd fast float %9260, %9230
  %9262 = fadd fast float %9261, %9235
  %9263 = fmul fast float %9262, 0x3FC5555560000000
  %9264 = fdiv fast float %9236, %9263
  %9265 = fsub fast float %9259, %9264
  %9266 = fsub fast float 1.000000e+00, %9225
  %9267 = fadd fast float %9241, %9228
  %9268 = fmul fast float %9267, 0x3FC5555560000000
  %9269 = fdiv fast float %9242, %9268
  %9270 = fadd fast float %9266, %9269
  %9271 = fadd fast float %9226, 1.000000e+00
  %9272 = fsub fast float 1.000000e+00, %9247
  %9273 = fadd fast float %9272, %9246
  %9274 = fadd fast float %9273, %9251
  %9275 = fmul fast float %9274, 0x3FC5555560000000
  %9276 = fdiv fast float %9252, %9275
  %9277 = fsub fast float %9271, %9276
  %9278 = fsub fast float 1.000000e+00, %9226
  %9279 = fadd fast float %9257, %9244
  %9280 = fmul fast float %9279, 0x3FC5555560000000
  %9281 = fdiv fast float %9258, %9280
  %9282 = fadd fast float %9281, %9278
  %9283 = fmul fast float %9265, %9219
  %9284 = fsub fast float %9140, %9283
  %9285 = fmul fast float %9270, %9219
  %9286 = fadd fast float %9285, %9140
  %9287 = fmul fast float %9282, %9220
  %9288 = fadd fast float %9287, %9141
  %9289 = fmul fast float %9277, %9220
  %9290 = fsub fast float %9141, %9289
  %9291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9284, float %9290, float %9208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9292 = extractvalue %dx.types.ResRet.f32 %9291, 0
  %9293 = extractvalue %dx.types.ResRet.f32 %9291, 1
  %9294 = extractvalue %dx.types.ResRet.f32 %9291, 2
  %9295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9286, float %9290, float %9208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9284, float %9288, float %9208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9300 = extractvalue %dx.types.ResRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.ResRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.ResRet.f32 %9299, 2
  %9303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9286, float %9288, float %9208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9304 = extractvalue %dx.types.ResRet.f32 %9303, 0
  %9305 = extractvalue %dx.types.ResRet.f32 %9303, 1
  %9306 = extractvalue %dx.types.ResRet.f32 %9303, 2
  %9307 = fsub fast float %9300, %9292
  %9308 = fsub fast float %9301, %9293
  %9309 = fsub fast float %9302, %9294
  %9310 = fmul fast float %9307, %9280
  %9311 = fmul fast float %9308, %9280
  %9312 = fmul fast float %9309, %9280
  %9313 = fadd fast float %9310, %9292
  %9314 = fadd fast float %9311, %9293
  %9315 = fadd fast float %9312, %9294
  %9316 = fsub fast float %9304, %9296
  %9317 = fsub fast float %9305, %9297
  %9318 = fsub fast float %9306, %9298
  %9319 = fmul fast float %9316, %9280
  %9320 = fmul fast float %9317, %9280
  %9321 = fmul fast float %9318, %9280
  %9322 = fsub fast float %9296, %9313
  %9323 = fadd fast float %9322, %9319
  %9324 = fsub fast float %9297, %9314
  %9325 = fadd fast float %9324, %9320
  %9326 = fsub fast float %9298, %9315
  %9327 = fadd fast float %9326, %9321
  %9328 = fmul fast float %9323, %9268
  %9329 = fmul fast float %9325, %9268
  %9330 = fmul fast float %9327, %9268
  %9331 = fadd fast float %9328, %9313
  %9332 = fadd fast float %9329, %9314
  %9333 = fadd fast float %9330, %9315
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 1
  %9336 = fmul fast float %9331, %9335
  %9337 = fmul fast float %9332, %9335
  %9338 = fmul fast float %9333, %9335
  br label %9339

; <label>:9339                                    ; preds = %9170, %9127
  %9340 = phi float [ %9210, %9170 ], [ 1.000000e+00, %9127 ]
  %9341 = phi float [ %9211, %9170 ], [ 1.000000e+00, %9127 ]
  %9342 = phi float [ %9212, %9170 ], [ 1.000000e+00, %9127 ]
  %9343 = phi float [ %9336, %9170 ], [ 0.000000e+00, %9127 ]
  %9344 = phi float [ %9337, %9170 ], [ 0.000000e+00, %9127 ]
  %9345 = phi float [ %9338, %9170 ], [ 0.000000e+00, %9127 ]
  %9346 = fmul fast float %9343, %7681
  %9347 = fmul fast float %9344, %7681
  %9348 = fmul fast float %9345, %7681
  %9349 = fmul fast float %9340, %9134
  %9350 = call float @dx.op.dot3.f32(i32 55, float %9340, float %9341, float %9342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9351 = call float @dx.op.dot3.f32(i32 55, float %9346, float %9347, float %9348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9352 = select i1 %263, float %9350, float %9340
  %9353 = select i1 %263, float %9350, float %9341
  %9354 = select i1 %263, float 1.000000e+00, float %9342
  %9355 = select i1 %263, float %9351, float %9346
  %9356 = select i1 %263, float 0.000000e+00, float %9347
  %9357 = select i1 %263, float 0.000000e+00, float %9348
  %9358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %60, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9359 = extractvalue %dx.types.CBufRet.i32 %9358, 3
  %9360 = and i32 %9359, 3
  %9361 = icmp ne i32 %9360, 0
  %9362 = and i32 %9359, 4
  %9363 = icmp ne i32 %9362, 0
  %9364 = and i1 %9361, %9363
  %9365 = and i1 %263, %9364
  br i1 %9365, label %9366, label %9372

; <label>:9366                                    ; preds = %9339
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 1
  %9369 = fadd fast float %9349, -1.000000e+00
  %9370 = fmul fast float %9368, %9369
  %9371 = fadd fast float %9370, 1.000000e+00
  br label %9372

; <label>:9372                                    ; preds = %9366, %9339
  %9373 = phi float [ %9371, %9366 ], [ %9349, %9339 ]
  %9374 = fadd fast float %9131, %9128
  %9375 = fmul fast float %9352, %9374
  %9376 = fadd fast float %9375, %9355
  %9377 = fadd fast float %9132, %9129
  %9378 = fmul fast float %9353, %9377
  %9379 = fadd fast float %9378, %9356
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 0
  br i1 %263, label %9382, label %9406

; <label>:9382                                    ; preds = %9372
  %9383 = fadd fast float %9376, %9379
  %9384 = fmul fast float %9381, %9383
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 3
  %9387 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %9388 = fsub fast float %7690, %7684
  %9389 = fadd fast float %9388, %7691
  %9390 = fsub fast float %9389, %9387
  %9391 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %9392 = fmul fast float %9390, %9391
  %9393 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9394 = fsub fast float %9393, %9386
  %9395 = fmul fast float %9394, %9373
  %9396 = fadd fast float %9395, %9386
  %9397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9398 = extractvalue %dx.types.CBufRet.f32 %9397, 0
  %9399 = fsub fast float %9396, %9398
  %9400 = fmul fast float %9399, 1.000000e+01
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  %9402 = fsub fast float %3347, %7681
  %9403 = fmul fast float %9401, %9402
  %9404 = fadd fast float %9403, %7681
  %9405 = fmul fast float %9404, %9396
  br label %9430

; <label>:9406                                    ; preds = %9372
  %9407 = fadd fast float %9133, %9130
  %9408 = fmul fast float %9354, %9407
  %9409 = fadd fast float %9408, %9357
  %9410 = fmul fast float %9381, %9376
  %9411 = fmul fast float %9381, %9379
  %9412 = fmul fast float %9381, %9409
  %9413 = call float @dx.op.binary.f32(i32 35, float %9411, float %9412)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 35, float %9410, float %9413)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 35, float %9414, float %7681)  ; FMax(a,b)
  %9416 = fcmp fast ugt float %9415, 0x3F10000000000000
  br i1 %9416, label %9418, label %9417

; <label>:9417                                    ; preds = %9406
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9418

; <label>:9418                                    ; preds = %9417, %9406
  %9419 = add i32 %62, 356
  %9420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9419, i32 undef)  ; BufferLoad(srv,index,wot)
  %9421 = extractvalue %dx.types.ResRet.i32 %9420, 0
  %9422 = and i32 %9421, 32
  %9423 = icmp eq i32 %9422, 0
  br i1 %9423, label %9430, label %9424

; <label>:9424                                    ; preds = %9418
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %60, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 0
  %9427 = fmul fast float %9426, 0x3FE99999A0000000
  %9428 = fadd fast float %9426, %9410
  %9429 = fadd fast float %9427, %9412
  br label %9430

; <label>:9430                                    ; preds = %9424, %9418, %9382
  %9431 = phi float [ %9384, %9382 ], [ %9428, %9424 ], [ %9410, %9418 ]
  %9432 = phi float [ %9405, %9382 ], [ %9411, %9424 ], [ %9411, %9418 ]
  %9433 = phi float [ %9404, %9382 ], [ %9429, %9424 ], [ %9412, %9418 ]
  %9434 = phi float [ %9404, %9382 ], [ %7681, %9424 ], [ %7681, %9418 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9435 = call float @dx.op.binary.f32(i32 36, float %9431, float 3.225500e+04)  ; FMin(a,b)
  %9436 = call float @dx.op.binary.f32(i32 36, float %9432, float 3.225500e+04)  ; FMin(a,b)
  %9437 = call float @dx.op.binary.f32(i32 36, float %9433, float 3.225500e+04)  ; FMin(a,b)
  %9438 = call float @dx.op.binary.f32(i32 36, float %9434, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9435)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9436)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9437)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9438)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!75 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 14, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!76 = !{void ()* @ps_main, !"ps_main", !77, !4, !103}
!77 = !{!78, !101, null}
!78 = !{!79, !82, !83, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !99, !100}
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
!97 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !80, i8 1, i32 1, i8 2, i32 12, i8 1, !98}
!98 = !{i32 3, i32 2}
!99 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !80, i8 1, i32 1, i8 4, i32 13, i8 0, !96}
!100 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !80, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!101 = !{!102}
!102 = !{i32 0, !"SV_Target", i8 9, i8 16, !80, i8 0, i32 1, i8 4, i32 0, i8 0, !81}
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

