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
; shader hash: 06212994b27ae1eee66ee112166bc41a
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
;                                   texture     f32          3d      T4     t52,space2     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     f32          2d     T10     t69,space2     1
;                                   texture    byte         r/o     T11     t18,space1     1
;                                   texture    byte         r/o     T12     t19,space1     1
;                                   texture    byte         r/o     T13     t20,space1     1
;                                   texture    byte         r/o     T14     t21,space1     1
;                                   texture     f32          2d     T15     t37,space2     1
;                                   texture     f32          2d     T16             t0     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture     u32          2d     T26     t56,space2     1
;                                   texture     f32     2darray     T27     t35,space2     1
;                                   texture     f32          2d     T28     t34,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31      t1,space1     1
;                                   texture     f32          1d     T32     t32,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture     f32          2d     T34      t1,space2     1
;                                   texture     f32          2d     T35      t2,space2     1
;                                   texture     f32          2d     T36      t3,space2     1
;                                   texture     f32          2d     T37      t4,space2     1
;                                   textureunorm_f32     2darray     T38     t80,space2     1
;                                   texture    byte         r/o     T39     t67,space1     1
;                                   texture     f32          2d     T40      t7,space2     1
;                                   texture     f32          2d     T41      t6,space2     1
;                                   texture     f32          2d     T42      t5,space2     1
;                                   texture     f32          2d     T43     t38,space2     1
;                                   texture    byte         r/o     T44     t12,space1     1
;                                   texture    byte         r/o     T45     t13,space1     1
;                                   texture     f32          1d     T46     t30,space2     1
;                                   texture     f32          3d     T47     t44,space2     1
;                                   texture     f32          3d     T48     t45,space2     1
;                                   texture     f32     2darray     T49     t47,space2     1
;                                   textureunorm_f32     2darray     T50     t85,space2     1
;                                   texture     f32          2d     T51     t83,space2     1
;                                   texture     f32          2d     T52     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 56, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = alloca [4 x i32], align 4
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = alloca [12 x float], align 4
  %103 = alloca [12 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [4 x float], align 4
  %106 = alloca [4 x float], align 4
  %107 = alloca [4 x float], align 4
  %108 = alloca [3 x float], align 4
  %109 = alloca [3 x float], align 4
  %110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = fmul fast float %113, %98
  %115 = fmul fast float %113, %99
  %116 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %117 = bitcast float %116 to i32
  %118 = ashr i32 %117, 1
  %119 = sub nsw i32 1597250115, %118
  %120 = bitcast i32 %119 to float
  %121 = fmul fast float %120, %89
  %122 = fmul fast float %120, %90
  %123 = fmul fast float %120, %91
  %124 = fmul fast float %90, %87
  %125 = fmul fast float %91, %86
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %91, %85
  %128 = fmul fast float %89, %87
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %89, %86
  %131 = fmul fast float %90, %85
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %88
  %134 = fmul fast float %129, %88
  %135 = fmul fast float %132, %88
  %136 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = bitcast float %136 to i32
  %138 = ashr i32 %137, 1
  %139 = sub nsw i32 1597250115, %138
  %140 = bitcast i32 %139 to float
  %141 = fmul fast float %140, %78
  %142 = fmul fast float %140, %79
  %143 = fmul fast float %140, %80
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast une float %145, 0.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %114, 2.000000e+00
  %151 = fmul fast float %150, %148
  %152 = fmul fast float %115, 2.000000e+00
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %146, float %157, float %161
  %165 = select i1 %146, float %158, float %162
  %166 = select i1 %146, float %159, float %163
  %167 = fmul fast float %164, %154
  %168 = fmul fast float %165, %154
  %169 = fmul fast float %166, %154
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = select i1 %146, float %171, float %175
  %179 = select i1 %146, float %172, float %176
  %180 = select i1 %146, float %173, float %177
  %181 = fmul fast float %178, %155
  %182 = fmul fast float %179, %155
  %183 = fmul fast float %180, %155
  %184 = fadd fast float %181, %167
  %185 = fadd fast float %182, %168
  %186 = fadd fast float %183, %169
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = select i1 %146, float %188, float %192
  %196 = select i1 %146, float %189, float %193
  %197 = select i1 %146, float %190, float %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fmul fast float %198, %101
  %202 = fmul fast float %199, %101
  %203 = fmul fast float %200, %101
  %204 = fmul fast float %114, 5.000000e-01
  %205 = fmul fast float %115, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %114
  %228 = fmul fast float %226, %115
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = select i1 %232, i32 %238, i32 0
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %256

; <label>:247                                     ; preds = %0
  %248 = fmul fast float %149, %115
  %249 = fmul fast float %148, %114
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %249, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %244, 0
  %258 = and i1 %243, %257
  br label %259

; <label>:259                                     ; preds = %256, %247
  %260 = phi i1 [ %255, %247 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %114, 2.560000e+02
  %265 = frem fast float %115, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fadd fast float %269, %263
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = add i32 %60, 156
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %60, 216
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %60, 36
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %60, 288
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %60, 172
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %60, 232
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %60, 52
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %60, 304
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %60, 188
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %60, 248
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %60, 68
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %60, 320
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %60, 204
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = shl i32 %400, 4
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %400, 7
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %400, 22
  %408 = shl nuw nsw i32 %407, 5
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = add i32 %60, 264
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = lshr i32 %412, 8
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %412, 16
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = add i32 %60, 84
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = add i32 %60, 336
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fmul fast float %435, 0x3F50624DE0000000
  %439 = fmul fast float %437, 0x3F50624DE0000000
  %440 = add i32 %60, 348
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 32
  %444 = icmp eq i32 %443, 0
  %445 = and i32 %442, 64
  %446 = icmp eq i32 %445, 0
  %447 = and i32 %442, 128
  %448 = icmp eq i32 %447, 0
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 2
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %468, label %453

; <label>:453                                     ; preds = %259
  %454 = add i32 %60, 488
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = add i32 %456, 0
  %458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %458, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = extractvalue %dx.types.ResRet.f32 %459, 2
  %463 = extractvalue %dx.types.ResRet.f32 %459, 3
  %464 = fmul fast float %463, %94
  %465 = fmul fast float %460, %95
  %466 = fmul fast float %461, %96
  %467 = fmul fast float %462, %97
  br label %468

; <label>:468                                     ; preds = %453, %259
  %469 = phi float [ %97, %259 ], [ %467, %453 ]
  %470 = phi float [ %96, %259 ], [ %466, %453 ]
  %471 = phi float [ %95, %259 ], [ %465, %453 ]
  %472 = phi float [ %94, %259 ], [ %464, %453 ]
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 2
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %496, label %477

; <label>:477                                     ; preds = %468
  %478 = add i32 %60, 44
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %471, float 1.000000e+00
  %484 = add i32 %60, 60
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 1
  %488 = icmp ne i32 %487, 0
  %489 = select i1 %488, float %470, float 1.000000e+00
  %490 = add i32 %60, 76
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 1
  %494 = icmp ne i32 %493, 0
  %495 = select i1 %494, float %469, float 1.000000e+00
  br label %496

; <label>:496                                     ; preds = %477, %468
  %497 = phi float [ %469, %468 ], [ %495, %477 ]
  %498 = phi float [ %470, %468 ], [ %489, %477 ]
  %499 = phi float [ %471, %468 ], [ %483, %477 ]
  %500 = lshr i32 %474, 20
  %501 = and i32 %500, 3
  %502 = add nuw nsw i32 %501, 1
  %503 = add i32 %60, 24
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = add i32 %60, 28
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = or i32 %508, %505
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %1129, label %511

; <label>:511                                     ; preds = %496
  %512 = and i32 %505, 262144
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %65, float 1.000000e+00
  %515 = select i1 %513, float %66, float 0.000000e+00
  %516 = select i1 %513, float %67, float 0.000000e+00
  %517 = select i1 %513, float %68, float 1.000000e+00
  %518 = select i1 %513, float %69, float %92
  %519 = select i1 %513, float %70, float %93
  %520 = add i32 %60, 284
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = lshr i32 %522, 16
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = fmul fast float %524, 0x3F50624DE0000000
  %526 = add i32 %60, 88
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = lshr i32 %528, 16
  %530 = and i32 %529, 255
  %531 = lshr i32 %528, 24
  %532 = add i32 %60, 292
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 65535
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %534, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %60, 32
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 22
  %543 = shl nuw nsw i32 %542, 5
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = shl i32 %541, 4
  %546 = and i32 %545, 32752
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = lshr i32 %541, 7
  %549 = and i32 %548, 32752
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 3
  %553 = fmul fast float %552, 1.000000e+03
  %554 = fmul fast float %312, %553
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = fadd fast float %555, %302
  %557 = fmul fast float %313, %553
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = fadd fast float %558, %304
  %560 = fmul fast float %525, %553
  %561 = call float @dx.op.unary.f32(i32 22, float %560)  ; Frc(value)
  %562 = fmul fast float %561, 0x401921FB60000000
  %563 = fadd fast float %562, %544
  %564 = call float @dx.op.unary.f32(i32 13, float %563)  ; Sin(value)
  %565 = call float @dx.op.unary.f32(i32 12, float %563)  ; Cos(value)
  %566 = fsub fast float -0.000000e+00, %564
  %567 = fadd fast float %518, -5.000000e-01
  %568 = fadd fast float %519, -5.000000e-01
  %569 = fmul fast float %536, %567
  %570 = fmul fast float %538, %568
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fadd fast float %570, 5.000000e-01
  %573 = fmul fast float %547, %571
  %574 = fmul fast float %550, %572
  %575 = fmul fast float %565, %573
  %576 = call float @dx.op.tertiary.f32(i32 46, float %566, float %574, float %575)  ; FMad(a,b,c)
  %577 = fmul fast float %564, %573
  %578 = call float @dx.op.tertiary.f32(i32 46, float %565, float %574, float %577)  ; FMad(a,b,c)
  %579 = fadd fast float %556, %576
  %580 = fadd fast float %559, %578
  %581 = icmp ugt i32 %530, 1
  %582 = icmp ugt i32 %528, 33554431
  %583 = or i1 %582, %581
  br i1 %583, label %584, label %609

; <label>:584                                     ; preds = %511
  %585 = add i32 %60, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = lshr i32 %587, 16
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = fmul fast float %552, %589
  %591 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %592 = mul nuw nsw i32 %530, %531
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %591, %593
  %595 = call float @dx.op.unary.f32(i32 27, float %594)  ; Round_ni(value)
  %596 = fptoui float %595 to i32
  %597 = urem i32 %596, %530
  %598 = udiv i32 %596, %531
  %599 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %600 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %601 = uitofp i32 %597 to float
  %602 = uitofp i32 %598 to float
  %603 = fadd fast float %599, %601
  %604 = fadd fast float %600, %602
  %605 = uitofp i32 %530 to float
  %606 = uitofp i32 %531 to float
  %607 = fdiv fast float %603, %605
  %608 = fdiv fast float %604, %606
  br label %609

; <label>:609                                     ; preds = %584, %511
  %610 = phi float [ %607, %584 ], [ %579, %511 ]
  %611 = phi float [ %608, %584 ], [ %580, %511 ]
  %612 = and i32 %505, 256
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %660, label %614

; <label>:614                                     ; preds = %609
  %615 = add i32 %60, 424
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = add i32 %60, 100
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = shl i32 %624, 4
  %626 = and i32 %625, 32752
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %624, 7
  %629 = and i32 %628, 32752
  %630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %629)  ; LegacyF16ToF32(value)
  %631 = fsub fast float 1.000000e+00, %472
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %633 = bitcast float %472 to i32
  %634 = sitofp i32 %633 to float
  %635 = fadd fast float %634, 0xC1CFBF8940000000
  %636 = fmul fast float %630, %635
  %637 = fadd fast float %636, 0x41CFBF8940000000
  %638 = fptosi float %637 to i32
  %639 = bitcast i32 %638 to float
  %640 = bitcast float %632 to i32
  %641 = sitofp i32 %640 to float
  %642 = fadd fast float %641, 0xC1CFBF8940000000
  %643 = fmul fast float %642, %630
  %644 = fadd fast float %643, 0x41CFBF8940000000
  %645 = fptosi float %644 to i32
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %639, %627
  %648 = fmul fast float %646, %627
  %649 = fsub fast float %632, %647
  %650 = fadd fast float %648, %632
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %653 = fsub fast float %621, %651
  %654 = fsub fast float %652, %651
  %655 = bitcast float %654 to i32
  %656 = sub nsw i32 2129859010, %655
  %657 = bitcast i32 %656 to float
  %658 = fmul fast float %657, %653
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  br label %660

; <label>:660                                     ; preds = %614, %609
  %661 = phi float [ %659, %614 ], [ %472, %609 ]
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 128
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %682, label %666

; <label>:666                                     ; preds = %660
  %667 = add i32 %60, 408
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %671, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = and i32 %675, 524288
  %677 = icmp ne i32 %676, 0
  %678 = fcmp fast ogt float %673, 0x3FE0101020000000
  %679 = select i1 %678, float 1.000000e+00, float 0.000000e+00
  %680 = select i1 %677, float %679, float %673
  %681 = fmul fast float %680, %661
  br label %682

; <label>:682                                     ; preds = %666, %660
  %683 = phi float [ %681, %666 ], [ %661, %660 ]
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 16
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %886, label %688

; <label>:688                                     ; preds = %682
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %60, 360
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = add i32 %693, 0
  %695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %695, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = and i32 %690, 255
  %702 = uitofp i32 %701 to float
  %703 = lshr i32 %690, 8
  %704 = and i32 %703, 255
  %705 = uitofp i32 %704 to float
  %706 = fmul fast float %700, %702
  %707 = fadd fast float %706, %705
  %708 = fmul fast float %707, 0x3F70101000000000
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 512
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %721, label %713

; <label>:713                                     ; preds = %688
  %714 = add i32 %60, 440
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = add i32 %716, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %718, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %720 = extractvalue %dx.types.ResRet.f32 %719, 0
  br label %721

; <label>:721                                     ; preds = %713, %688
  %722 = phi float [ %720, %713 ], [ 1.000000e+00, %688 ]
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 33554432
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %833, label %727

; <label>:727                                     ; preds = %721
  %728 = add i32 %60, 224
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %730, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = add i32 %60, 228
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 24
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = and i32 %741, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = lshr i32 %741, 8
  %749 = and i32 %748, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = lshr i32 %741, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = add i32 %60, 220
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = lshr i32 %758, 24
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = and i32 %758, 255
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = lshr i32 %758, 8
  %766 = and i32 %765, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = lshr i32 %758, 16
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = bitcast float %697 to i32
  %774 = ashr i32 %773, 1
  %775 = sub nsw i32 1597463174, %774
  %776 = bitcast i32 %775 to float
  %777 = fmul fast float %697, 5.000000e-01
  %778 = fmul fast float %776, %776
  %779 = fmul fast float %778, %777
  %780 = fsub fast float 1.500000e+00, %779
  %781 = fmul fast float %776, %697
  %782 = fmul fast float %781, %780
  %783 = bitcast float %698 to i32
  %784 = ashr i32 %783, 1
  %785 = sub nsw i32 1597463174, %784
  %786 = bitcast i32 %785 to float
  %787 = fmul fast float %698, 5.000000e-01
  %788 = fmul fast float %786, %786
  %789 = fmul fast float %788, %787
  %790 = fsub fast float 1.500000e+00, %789
  %791 = fmul fast float %786, %698
  %792 = fmul fast float %791, %790
  %793 = bitcast float %699 to i32
  %794 = ashr i32 %793, 1
  %795 = sub nsw i32 1597463174, %794
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %699, 5.000000e-01
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %798, %797
  %800 = fsub fast float 1.500000e+00, %799
  %801 = fmul fast float %796, %699
  %802 = fmul fast float %801, %800
  %803 = fsub fast float %782, %764
  %804 = fsub fast float %792, %768
  %805 = fsub fast float %802, %772
  %806 = fmul fast float %803, %732
  %807 = fmul fast float %804, %734
  %808 = fmul fast float %805, %739
  %809 = fadd fast float %806, %747
  %810 = fadd fast float %807, %751
  %811 = fadd fast float %808, %755
  %812 = call float @dx.op.unary.f32(i32 7, float %809)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = call float @dx.op.unary.f32(i32 7, float %811)  ; Saturate(value)
  %815 = fmul fast float %812, %812
  %816 = fmul fast float %813, %813
  %817 = fmul fast float %814, %814
  %818 = fsub fast float %815, %697
  %819 = fsub fast float %816, %698
  %820 = fsub fast float %817, %699
  %821 = fmul fast float %818, %722
  %822 = fmul fast float %819, %722
  %823 = fmul fast float %820, %722
  %824 = fadd fast float %821, %697
  %825 = fadd fast float %822, %698
  %826 = fadd fast float %823, %699
  %827 = fadd fast float %744, %708
  %828 = fsub fast float %827, %761
  %829 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %830 = fsub fast float %829, %708
  %831 = fmul fast float %830, %722
  %832 = fadd fast float %831, %708
  br label %886

; <label>:833                                     ; preds = %721
  %834 = and i32 %724, 134217728
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %870, label %836

; <label>:836                                     ; preds = %833
  %837 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %840 = fadd fast float %837, -5.000000e-01
  %841 = fadd fast float %838, -5.000000e-01
  %842 = fadd fast float %839, -5.000000e-01
  %843 = fmul fast float %840, %722
  %844 = fmul fast float %841, %722
  %845 = fmul fast float %842, %722
  %846 = fadd fast float %843, 5.000000e-01
  %847 = fadd fast float %844, 5.000000e-01
  %848 = fadd fast float %845, 5.000000e-01
  %849 = call float @dx.op.unary.f32(i32 24, float %697)  ; Sqrt(value)
  %850 = call float @dx.op.unary.f32(i32 24, float %698)  ; Sqrt(value)
  %851 = call float @dx.op.unary.f32(i32 24, float %699)  ; Sqrt(value)
  %852 = fmul fast float %846, 2.000000e+00
  %853 = fsub fast float 1.000000e+00, %852
  %854 = fmul fast float %853, %849
  %855 = fadd fast float %854, %852
  %856 = fmul fast float %855, %849
  %857 = fmul fast float %847, 2.000000e+00
  %858 = fsub fast float 1.000000e+00, %857
  %859 = fmul fast float %858, %850
  %860 = fadd fast float %859, %857
  %861 = fmul fast float %860, %850
  %862 = fmul fast float %848, 2.000000e+00
  %863 = fsub fast float 1.000000e+00, %862
  %864 = fmul fast float %863, %851
  %865 = fadd fast float %864, %862
  %866 = fmul fast float %865, %851
  %867 = fmul fast float %856, %856
  %868 = fmul fast float %861, %861
  %869 = fmul fast float %866, %866
  br label %886

; <label>:870                                     ; preds = %833
  %871 = fmul fast float %289, %289
  %872 = fmul fast float %293, %293
  %873 = fmul fast float %297, %297
  %874 = fadd fast float %871, -1.000000e+00
  %875 = fadd fast float %872, -1.000000e+00
  %876 = fadd fast float %873, -1.000000e+00
  %877 = fmul fast float %722, %874
  %878 = fmul fast float %722, %875
  %879 = fmul fast float %722, %876
  %880 = fadd fast float %877, 1.000000e+00
  %881 = fadd fast float %878, 1.000000e+00
  %882 = fadd fast float %879, 1.000000e+00
  %883 = fmul fast float %880, %697
  %884 = fmul fast float %881, %698
  %885 = fmul fast float %882, %699
  br label %886

; <label>:886                                     ; preds = %870, %836, %727, %682
  %887 = phi float [ %832, %727 ], [ %708, %836 ], [ %708, %870 ], [ 0x3FA23C0BE0000000, %682 ]
  %888 = phi float [ %824, %727 ], [ %867, %836 ], [ %883, %870 ], [ 1.000000e+00, %682 ]
  %889 = phi float [ %825, %727 ], [ %868, %836 ], [ %884, %870 ], [ 1.000000e+00, %682 ]
  %890 = phi float [ %826, %727 ], [ %869, %836 ], [ %885, %870 ], [ 1.000000e+00, %682 ]
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 1
  %893 = and i32 %892, 1
  %894 = icmp ne i32 %893, 0
  %895 = add i32 %60, 356
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 32
  %899 = icmp ne i32 %898, 0
  %900 = and i1 %894, %899
  %901 = select i1 %900, float 1.000000e+00, float %888
  %902 = select i1 %900, float 0x3FD3333340000000, float %889
  %903 = select i1 %900, float 0x3FD3333340000000, float %890
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 32
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %980, label %908

; <label>:908                                     ; preds = %886
  %909 = add i32 %60, 92
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %60, 376
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = extractvalue %dx.types.ResRet.f32 %917, 3
  %922 = and i32 %911, 255
  %923 = uitofp i32 %922 to float
  %924 = lshr i32 %911, 8
  %925 = and i32 %924, 255
  %926 = uitofp i32 %925 to float
  %927 = lshr i32 %911, 16
  %928 = and i32 %927, 255
  %929 = uitofp i32 %928 to float
  %930 = fmul fast float %929, 0x3F70101000000000
  %931 = fmul fast float %918, %923
  %932 = fadd fast float %931, %926
  %933 = fmul fast float %932, 0x3F70101000000000
  %934 = fadd fast float %919, -5.000000e-01
  %935 = fadd fast float %921, -5.000000e-01
  %936 = fmul fast float %934, %930
  %937 = fmul fast float %935, %930
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fadd fast float %937, 5.000000e-01
  %940 = fmul fast float %938, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = fmul fast float %939, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = fadd fast float %941, %943
  %945 = fmul fast float %944, 5.000000e-01
  %946 = fsub fast float %941, %943
  %947 = fmul fast float %946, 5.000000e-01
  %948 = call float @dx.op.unary.f32(i32 6, float %945)  ; FAbs(value)
  %949 = fsub fast float 1.000000e+00, %948
  %950 = call float @dx.op.unary.f32(i32 6, float %947)  ; FAbs(value)
  %951 = fsub fast float %949, %950
  %952 = call float @dx.op.dot3.f32(i32 55, float %945, float %947, float %951, float %945, float %947, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = call float @dx.op.unary.f32(i32 25, float %952)  ; Rsqrt(value)
  %954 = fmul fast float %945, %953
  %955 = fmul fast float %947, %953
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = and i32 %957, 67108864
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %976, label %960

; <label>:960                                     ; preds = %908
  %961 = add i32 %60, 280
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = and i32 %963, 65535
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 65535
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %963, 16
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = fsub fast float %933, %971
  %973 = fmul fast float %972, %965
  %974 = fadd fast float %973, %969
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  br label %976

; <label>:976                                     ; preds = %960, %908
  %977 = phi float [ %975, %960 ], [ %933, %908 ]
  %978 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %514, float %515)  ; Dot2(ax,ay,bx,by)
  %979 = call float @dx.op.dot2.f32(i32 54, float %954, float %955, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  br label %980

; <label>:980                                     ; preds = %976, %886
  %981 = phi float [ %977, %976 ], [ 0x3FD6666660000000, %886 ]
  %982 = phi float [ %978, %976 ], [ 0.000000e+00, %886 ]
  %983 = phi float [ %979, %976 ], [ 0.000000e+00, %886 ]
  %984 = phi float [ %920, %976 ], [ 1.000000e+00, %886 ]
  %985 = add i32 %60, 160
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = lshr i32 %987, 22
  %989 = shl nuw nsw i32 %988, 5
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 64
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1028, label %995

; <label>:995                                     ; preds = %980
  %996 = add i32 %60, 392
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %998, 0
  %1000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 131072
  %1004 = icmp eq i32 %1003, 0
  %1005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1000, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = fmul fast float %1006, %277
  %1010 = fmul fast float %1007, %280
  %1011 = fmul fast float %1008, %283
  br i1 %1004, label %1018, label %1012

; <label>:1012                                    ; preds = %995
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1015 = fmul fast float %1014, %1009
  %1016 = fmul fast float %1014, %1010
  %1017 = fmul fast float %1014, %1011
  br label %1018

; <label>:1018                                    ; preds = %1012, %995
  %1019 = phi float [ %1015, %1012 ], [ %1009, %995 ]
  %1020 = phi float [ %1016, %1012 ], [ %1010, %995 ]
  %1021 = phi float [ %1017, %1012 ], [ %1011, %995 ]
  %1022 = fmul fast float %1019, %990
  %1023 = select i1 %260, float %1022, float %1019
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1023, float %1020, float %1021, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = select i1 %260, float 0.000000e+00, float %1019
  %1026 = select i1 %260, float %1024, float %1020
  %1027 = select i1 %260, float 0.000000e+00, float %1021
  br label %1028

; <label>:1028                                    ; preds = %1018, %980
  %1029 = phi float [ %1025, %1018 ], [ 0.000000e+00, %980 ]
  %1030 = phi float [ %1026, %1018 ], [ 0.000000e+00, %980 ]
  %1031 = phi float [ %1027, %1018 ], [ 0.000000e+00, %980 ]
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %1033, 1024
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1066, label %1036

; <label>:1036                                    ; preds = %1028
  %1037 = add i32 %60, 152
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 255
  %1041 = uitofp i32 %1040 to float
  %1042 = fmul fast float %1041, 0x3F70101020000000
  %1043 = lshr i32 %1039, 8
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = lshr i32 %1039, 16
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = fmul fast float %1042, %1042
  %1052 = fmul fast float %1046, %1046
  %1053 = fmul fast float %1050, %1050
  %1054 = add i32 %60, 456
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = add i32 %1056, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1058, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = fmul fast float %1051, %1060
  %1064 = fmul fast float %1052, %1061
  %1065 = fmul fast float %1053, %1062
  br label %1066

; <label>:1066                                    ; preds = %1036, %1028
  %1067 = phi float [ %1063, %1036 ], [ 0.000000e+00, %1028 ]
  %1068 = phi float [ %1064, %1036 ], [ 0.000000e+00, %1028 ]
  %1069 = phi float [ %1065, %1036 ], [ 0.000000e+00, %1028 ]
  %1070 = fcmp fast ogt float %1067, 0.000000e+00
  %1071 = fcmp fast ogt float %1068, 0.000000e+00
  %1072 = fcmp fast ogt float %1069, 0.000000e+00
  %1073 = call float @dx.op.unary.f32(i32 23, float %1067)  ; Log(value)
  %1074 = call float @dx.op.unary.f32(i32 23, float %1068)  ; Log(value)
  %1075 = call float @dx.op.unary.f32(i32 23, float %1069)  ; Log(value)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = lshr i32 %1077, 7
  %1079 = and i32 %1078, 32752
  %1080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1079)  ; LegacyF16ToF32(value)
  %1081 = fmul fast float %1073, 0xBFE62E4300000000
  %1082 = fmul fast float %1081, %1080
  %1083 = fmul fast float %1074, 0xBFE62E4300000000
  %1084 = fmul fast float %1083, %1080
  %1085 = fmul fast float %1075, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1080
  %1087 = select i1 %1070, float %1082, float 1.270000e+02
  %1088 = select i1 %1071, float %1084, float 1.270000e+02
  %1089 = select i1 %1072, float %1086, float 1.270000e+02
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 10240
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1114, label %1094

; <label>:1094                                    ; preds = %1066
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = and i32 %1096, 2048
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1114, label %1099

; <label>:1099                                    ; preds = %1094
  %1100 = add i32 %60, 472
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fmul fast float %1111, %1106
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1114

; <label>:1114                                    ; preds = %1099, %1094, %1066
  %1115 = phi float [ %1113, %1099 ], [ 0x3F70101020000000, %1094 ], [ 0x3F70101020000000, %1066 ]
  %1116 = add i32 %60, 96
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = lshr i32 %1118, 8
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = fmul fast float %1123, %1124
  %1126 = fadd fast float %1125, %1120
  %1127 = fmul fast float %1126, 0x3F70101020000000
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1114, %496
  %1130 = phi float [ 0.000000e+00, %496 ], [ %982, %1114 ]
  %1131 = phi float [ 0.000000e+00, %496 ], [ %983, %1114 ]
  %1132 = phi float [ 0.000000e+00, %496 ], [ %901, %1114 ]
  %1133 = phi float [ 0.000000e+00, %496 ], [ %902, %1114 ]
  %1134 = phi float [ 0.000000e+00, %496 ], [ %903, %1114 ]
  %1135 = phi float [ 0.000000e+00, %496 ], [ %1029, %1114 ]
  %1136 = phi float [ 0.000000e+00, %496 ], [ %1030, %1114 ]
  %1137 = phi float [ 0.000000e+00, %496 ], [ %1031, %1114 ]
  %1138 = phi float [ 0.000000e+00, %496 ], [ %1087, %1114 ]
  %1139 = phi float [ 0.000000e+00, %496 ], [ %1088, %1114 ]
  %1140 = phi float [ 0.000000e+00, %496 ], [ %1089, %1114 ]
  %1141 = phi float [ 0.000000e+00, %496 ], [ %887, %1114 ]
  %1142 = phi float [ 0.000000e+00, %496 ], [ %683, %1114 ]
  %1143 = phi float [ 0.000000e+00, %496 ], [ %981, %1114 ]
  %1144 = phi float [ 0.000000e+00, %496 ], [ %984, %1114 ]
  %1145 = phi float [ 0.000000e+00, %496 ], [ %1115, %1114 ]
  %1146 = phi float [ 0.000000e+00, %496 ], [ %1128, %1114 ]
  br i1 %444, label %2018, label %1147

; <label>:1147                                    ; preds = %1129
  %1148 = icmp ult i32 %502, 2
  %1149 = add i32 %60, 40
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %60, 44
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = or i32 %1154, %1151
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %2018, label %1157

; <label>:1157                                    ; preds = %1147
  %1158 = and i32 %1151, 262144
  %1159 = icmp ne i32 %1158, 0
  %1160 = select i1 %1159, float %65, float 1.000000e+00
  %1161 = select i1 %1159, float %66, float 0.000000e+00
  %1162 = select i1 %1159, float %67, float 0.000000e+00
  %1163 = select i1 %1159, float %68, float 1.000000e+00
  %1164 = select i1 %1159, float %69, float %92
  %1165 = select i1 %1159, float %70, float %93
  %1166 = add i32 %60, 300
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = lshr i32 %1168, 16
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = fmul fast float %1170, 0x3F50624DE0000000
  %1172 = add i32 %60, 104
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 16
  %1176 = and i32 %1175, 255
  %1177 = lshr i32 %1174, 24
  %1178 = add i32 %60, 308
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 65535
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1180, 16
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = add i32 %60, 48
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = shl i32 %1187, 4
  %1192 = and i32 %1191, 32752
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = lshr i32 %1187, 7
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 3
  %1199 = fmul fast float %1198, 1.000000e+03
  %1200 = fmul fast float %354, %1199
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = fadd fast float %1201, %344
  %1203 = fmul fast float %355, %1199
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1204, %346
  %1206 = fmul fast float %1171, %1199
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = fmul fast float %1207, 0x401921FB60000000
  %1209 = fadd fast float %1208, %1190
  %1210 = call float @dx.op.unary.f32(i32 13, float %1209)  ; Sin(value)
  %1211 = call float @dx.op.unary.f32(i32 12, float %1209)  ; Cos(value)
  %1212 = fsub fast float -0.000000e+00, %1210
  %1213 = fadd fast float %1164, -5.000000e-01
  %1214 = fadd fast float %1165, -5.000000e-01
  %1215 = fmul fast float %1182, %1213
  %1216 = fmul fast float %1184, %1214
  %1217 = fadd fast float %1215, 5.000000e-01
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fmul fast float %1193, %1217
  %1220 = fmul fast float %1196, %1218
  %1221 = fmul fast float %1211, %1219
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1220, float %1221)  ; FMad(a,b,c)
  %1223 = fmul fast float %1210, %1219
  %1224 = call float @dx.op.tertiary.f32(i32 46, float %1211, float %1220, float %1223)  ; FMad(a,b,c)
  %1225 = fadd fast float %1202, %1222
  %1226 = fadd fast float %1205, %1224
  %1227 = icmp ugt i32 %1176, 1
  %1228 = icmp ugt i32 %1174, 33554431
  %1229 = or i1 %1228, %1227
  br i1 %1229, label %1230, label %1255

; <label>:1230                                    ; preds = %1157
  %1231 = add i32 %60, 244
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fmul fast float %1198, %1235
  %1237 = call float @dx.op.unary.f32(i32 22, float %1236)  ; Frc(value)
  %1238 = mul nuw nsw i32 %1176, %1177
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1237, %1239
  %1241 = call float @dx.op.unary.f32(i32 27, float %1240)  ; Round_ni(value)
  %1242 = fptoui float %1241 to i32
  %1243 = urem i32 %1242, %1176
  %1244 = udiv i32 %1242, %1177
  %1245 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1246 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1247 = uitofp i32 %1243 to float
  %1248 = uitofp i32 %1244 to float
  %1249 = fadd fast float %1245, %1247
  %1250 = fadd fast float %1246, %1248
  %1251 = uitofp i32 %1176 to float
  %1252 = uitofp i32 %1177 to float
  %1253 = fdiv fast float %1249, %1251
  %1254 = fdiv fast float %1250, %1252
  br label %1255

; <label>:1255                                    ; preds = %1230, %1157
  %1256 = phi float [ %1253, %1230 ], [ %1225, %1157 ]
  %1257 = phi float [ %1254, %1230 ], [ %1226, %1157 ]
  %1258 = and i32 %1151, 256
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %1306, label %1260

; <label>:1260                                    ; preds = %1255
  %1261 = add i32 %60, 428
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %1263, 0
  %1265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1265, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = add i32 %60, 116
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = shl i32 %1270, 4
  %1272 = and i32 %1271, 32752
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = lshr i32 %1270, 7
  %1275 = and i32 %1274, 32752
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fsub fast float 1.000000e+00, %499
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1279 = bitcast float %499 to i32
  %1280 = sitofp i32 %1279 to float
  %1281 = fadd fast float %1280, 0xC1CFBF8940000000
  %1282 = fmul fast float %1276, %1281
  %1283 = fadd fast float %1282, 0x41CFBF8940000000
  %1284 = fptosi float %1283 to i32
  %1285 = bitcast i32 %1284 to float
  %1286 = bitcast float %1278 to i32
  %1287 = sitofp i32 %1286 to float
  %1288 = fadd fast float %1287, 0xC1CFBF8940000000
  %1289 = fmul fast float %1288, %1276
  %1290 = fadd fast float %1289, 0x41CFBF8940000000
  %1291 = fptosi float %1290 to i32
  %1292 = bitcast i32 %1291 to float
  %1293 = fmul fast float %1285, %1273
  %1294 = fmul fast float %1292, %1273
  %1295 = fsub fast float %1278, %1293
  %1296 = fadd fast float %1294, %1278
  %1297 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = fsub fast float %1267, %1297
  %1300 = fsub fast float %1298, %1297
  %1301 = bitcast float %1300 to i32
  %1302 = sub nsw i32 2129859010, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1303, %1299
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  br label %1306

; <label>:1306                                    ; preds = %1260, %1255
  %1307 = phi float [ %1305, %1260 ], [ %499, %1255 ]
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = and i32 %1309, 128
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %1328, label %1312

; <label>:1312                                    ; preds = %1306
  %1313 = add i32 %60, 412
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = add i32 %1315, 0
  %1317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1318 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1317, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 524288
  %1323 = icmp ne i32 %1322, 0
  %1324 = fcmp fast ogt float %1319, 0x3FE0101020000000
  %1325 = select i1 %1324, float 1.000000e+00, float 0.000000e+00
  %1326 = select i1 %1323, float %1325, float %1319
  %1327 = fmul fast float %1326, %1307
  br label %1328

; <label>:1328                                    ; preds = %1312, %1306
  %1329 = phi float [ %1327, %1312 ], [ %1307, %1306 ]
  %1330 = fcmp fast ult float %1329, 0x3F70101020000000
  br i1 %1330, label %2018, label %1331

; <label>:1331                                    ; preds = %1328
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.i32 %1332, 0
  %1334 = and i32 %1333, 16
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1534, label %1336

; <label>:1336                                    ; preds = %1331
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = add i32 %60, 364
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %1341, 0
  %1343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1343, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = extractvalue %dx.types.ResRet.f32 %1344, 2
  %1348 = extractvalue %dx.types.ResRet.f32 %1344, 3
  %1349 = and i32 %1338, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = lshr i32 %1338, 8
  %1352 = and i32 %1351, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1348, %1350
  %1355 = fadd fast float %1354, %1353
  %1356 = fmul fast float %1355, 0x3F70101000000000
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 512
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1369, label %1361

; <label>:1361                                    ; preds = %1336
  %1362 = add i32 %60, 444
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1364, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1366, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  br label %1369

; <label>:1369                                    ; preds = %1361, %1336
  %1370 = phi float [ %1368, %1361 ], [ 1.000000e+00, %1336 ]
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = and i32 %1372, 33554432
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1481, label %1375

; <label>:1375                                    ; preds = %1369
  %1376 = add i32 %60, 240
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 65535
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = lshr i32 %1378, 16
  %1382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1381)  ; LegacyF16ToF32(value)
  %1383 = add i32 %60, 244
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 65535
  %1387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1386)  ; LegacyF16ToF32(value)
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = lshr i32 %1389, 24
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = and i32 %1389, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = lshr i32 %1389, 8
  %1397 = and i32 %1396, 255
  %1398 = uitofp i32 %1397 to float
  %1399 = fmul fast float %1398, 0x3F70101020000000
  %1400 = lshr i32 %1389, 16
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101020000000
  %1404 = add i32 %60, 236
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = lshr i32 %1406, 24
  %1408 = uitofp i32 %1407 to float
  %1409 = fmul fast float %1408, 0x3F70101020000000
  %1410 = and i32 %1406, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = lshr i32 %1406, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101020000000
  %1417 = lshr i32 %1406, 16
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1419, 0x3F70101020000000
  %1421 = bitcast float %1345 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1345, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1345
  %1430 = fmul fast float %1429, %1428
  %1431 = bitcast float %1346 to i32
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 1597463174, %1432
  %1434 = bitcast i32 %1433 to float
  %1435 = fmul fast float %1346, 5.000000e-01
  %1436 = fmul fast float %1434, %1434
  %1437 = fmul fast float %1436, %1435
  %1438 = fsub fast float 1.500000e+00, %1437
  %1439 = fmul fast float %1434, %1346
  %1440 = fmul fast float %1439, %1438
  %1441 = bitcast float %1347 to i32
  %1442 = ashr i32 %1441, 1
  %1443 = sub nsw i32 1597463174, %1442
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1347, 5.000000e-01
  %1446 = fmul fast float %1444, %1444
  %1447 = fmul fast float %1446, %1445
  %1448 = fsub fast float 1.500000e+00, %1447
  %1449 = fmul fast float %1444, %1347
  %1450 = fmul fast float %1449, %1448
  %1451 = fsub fast float %1430, %1412
  %1452 = fsub fast float %1440, %1416
  %1453 = fsub fast float %1450, %1420
  %1454 = fmul fast float %1451, %1380
  %1455 = fmul fast float %1452, %1382
  %1456 = fmul fast float %1453, %1387
  %1457 = fadd fast float %1454, %1395
  %1458 = fadd fast float %1455, %1399
  %1459 = fadd fast float %1456, %1403
  %1460 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1461 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = fmul fast float %1460, %1460
  %1464 = fmul fast float %1461, %1461
  %1465 = fmul fast float %1462, %1462
  %1466 = fsub fast float %1463, %1345
  %1467 = fsub fast float %1464, %1346
  %1468 = fsub fast float %1465, %1347
  %1469 = fmul fast float %1466, %1370
  %1470 = fmul fast float %1467, %1370
  %1471 = fmul fast float %1468, %1370
  %1472 = fadd fast float %1469, %1345
  %1473 = fadd fast float %1470, %1346
  %1474 = fadd fast float %1471, %1347
  %1475 = fadd fast float %1392, %1356
  %1476 = fsub fast float %1475, %1409
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fsub fast float %1477, %1356
  %1479 = fmul fast float %1478, %1370
  %1480 = fadd fast float %1479, %1356
  br label %1534

; <label>:1481                                    ; preds = %1369
  %1482 = and i32 %1372, 134217728
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1518, label %1484

; <label>:1484                                    ; preds = %1481
  %1485 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1486 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1487 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1488 = fadd fast float %1485, -5.000000e-01
  %1489 = fadd fast float %1486, -5.000000e-01
  %1490 = fadd fast float %1487, -5.000000e-01
  %1491 = fmul fast float %1488, %1370
  %1492 = fmul fast float %1489, %1370
  %1493 = fmul fast float %1490, %1370
  %1494 = fadd fast float %1491, 5.000000e-01
  %1495 = fadd fast float %1492, 5.000000e-01
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = call float @dx.op.unary.f32(i32 24, float %1345)  ; Sqrt(value)
  %1498 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1499 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1500 = fmul fast float %1494, 2.000000e+00
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = fmul fast float %1501, %1497
  %1503 = fadd fast float %1502, %1500
  %1504 = fmul fast float %1503, %1497
  %1505 = fmul fast float %1495, 2.000000e+00
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = fmul fast float %1506, %1498
  %1508 = fadd fast float %1507, %1505
  %1509 = fmul fast float %1508, %1498
  %1510 = fmul fast float %1496, 2.000000e+00
  %1511 = fsub fast float 1.000000e+00, %1510
  %1512 = fmul fast float %1511, %1499
  %1513 = fadd fast float %1512, %1510
  %1514 = fmul fast float %1513, %1499
  %1515 = fmul fast float %1504, %1504
  %1516 = fmul fast float %1509, %1509
  %1517 = fmul fast float %1514, %1514
  br label %1534

; <label>:1518                                    ; preds = %1481
  %1519 = fmul fast float %331, %331
  %1520 = fmul fast float %335, %335
  %1521 = fmul fast float %339, %339
  %1522 = fadd fast float %1519, -1.000000e+00
  %1523 = fadd fast float %1520, -1.000000e+00
  %1524 = fadd fast float %1521, -1.000000e+00
  %1525 = fmul fast float %1370, %1522
  %1526 = fmul fast float %1370, %1523
  %1527 = fmul fast float %1370, %1524
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fmul fast float %1528, %1345
  %1532 = fmul fast float %1529, %1346
  %1533 = fmul fast float %1530, %1347
  br label %1534

; <label>:1534                                    ; preds = %1518, %1484, %1375, %1331
  %1535 = phi float [ %1480, %1375 ], [ %1356, %1484 ], [ %1356, %1518 ], [ 0x3FA23C0BE0000000, %1331 ]
  %1536 = phi float [ %1472, %1375 ], [ %1515, %1484 ], [ %1531, %1518 ], [ 1.000000e+00, %1331 ]
  %1537 = phi float [ %1473, %1375 ], [ %1516, %1484 ], [ %1532, %1518 ], [ 1.000000e+00, %1331 ]
  %1538 = phi float [ %1474, %1375 ], [ %1517, %1484 ], [ %1533, %1518 ], [ 1.000000e+00, %1331 ]
  %1539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.i32 %1539, 1
  %1541 = and i32 %1540, 1
  %1542 = icmp ne i32 %1541, 0
  %1543 = add i32 %60, 356
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 32
  %1547 = icmp ne i32 %1546, 0
  %1548 = and i1 %1542, %1547
  %1549 = select i1 %1548, float 1.000000e+00, float %1536
  %1550 = select i1 %1548, float 0x3FD3333340000000, float %1537
  %1551 = select i1 %1548, float 0x3FD3333340000000, float %1538
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 32
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1628, label %1556

; <label>:1556                                    ; preds = %1534
  %1557 = add i32 %60, 108
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %60, 380
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1564, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = extractvalue %dx.types.ResRet.f32 %1565, 3
  %1570 = and i32 %1559, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = lshr i32 %1559, 8
  %1573 = and i32 %1572, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = lshr i32 %1559, 16
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101000000000
  %1579 = fmul fast float %1566, %1571
  %1580 = fadd fast float %1579, %1574
  %1581 = fmul fast float %1580, 0x3F70101000000000
  %1582 = fadd fast float %1567, -5.000000e-01
  %1583 = fadd fast float %1569, -5.000000e-01
  %1584 = fmul fast float %1582, %1578
  %1585 = fmul fast float %1583, %1578
  %1586 = fadd fast float %1584, 5.000000e-01
  %1587 = fadd fast float %1585, 5.000000e-01
  %1588 = fmul fast float %1586, 2.000000e+00
  %1589 = fadd fast float %1588, -1.000000e+00
  %1590 = fmul fast float %1587, 2.000000e+00
  %1591 = fadd fast float %1590, -1.000000e+00
  %1592 = fadd fast float %1589, %1591
  %1593 = fmul fast float %1592, 5.000000e-01
  %1594 = fsub fast float %1589, %1591
  %1595 = fmul fast float %1594, 5.000000e-01
  %1596 = call float @dx.op.unary.f32(i32 6, float %1593)  ; FAbs(value)
  %1597 = fsub fast float 1.000000e+00, %1596
  %1598 = call float @dx.op.unary.f32(i32 6, float %1595)  ; FAbs(value)
  %1599 = fsub fast float %1597, %1598
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1593, float %1595, float %1599, float %1593, float %1595, float %1599)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = call float @dx.op.unary.f32(i32 25, float %1600)  ; Rsqrt(value)
  %1602 = fmul fast float %1593, %1601
  %1603 = fmul fast float %1595, %1601
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 67108864
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1624, label %1608

; <label>:1608                                    ; preds = %1556
  %1609 = add i32 %60, 296
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 65535
  %1613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1612)  ; LegacyF16ToF32(value)
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 65535
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = lshr i32 %1611, 16
  %1619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1618)  ; LegacyF16ToF32(value)
  %1620 = fsub fast float %1581, %1619
  %1621 = fmul fast float %1620, %1613
  %1622 = fadd fast float %1621, %1617
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  br label %1624

; <label>:1624                                    ; preds = %1608, %1556
  %1625 = phi float [ %1623, %1608 ], [ %1581, %1556 ]
  %1626 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  %1627 = call float @dx.op.dot2.f32(i32 54, float %1602, float %1603, float %1162, float %1163)  ; Dot2(ax,ay,bx,by)
  br label %1628

; <label>:1628                                    ; preds = %1624, %1534
  %1629 = phi float [ %1625, %1624 ], [ 0x3FD6666660000000, %1534 ]
  %1630 = phi float [ %1626, %1624 ], [ 0.000000e+00, %1534 ]
  %1631 = phi float [ %1627, %1624 ], [ 0.000000e+00, %1534 ]
  %1632 = phi float [ %1568, %1624 ], [ 1.000000e+00, %1534 ]
  %1633 = add i32 %60, 176
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = lshr i32 %1635, 22
  %1637 = shl nuw nsw i32 %1636, 5
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 64
  %1642 = icmp eq i32 %1641, 0
  br i1 %1642, label %1676, label %1643

; <label>:1643                                    ; preds = %1628
  %1644 = add i32 %60, 396
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = add i32 %1646, 0
  %1648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1650 = extractvalue %dx.types.ResRet.i32 %1649, 0
  %1651 = and i32 %1650, 131072
  %1652 = icmp eq i32 %1651, 0
  %1653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1648, %dx.types.Handle %110, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1654 = extractvalue %dx.types.ResRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.ResRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.ResRet.f32 %1653, 2
  %1657 = fmul fast float %1654, %319
  %1658 = fmul fast float %1655, %322
  %1659 = fmul fast float %1656, %325
  br i1 %1652, label %1666, label %1660

; <label>:1660                                    ; preds = %1643
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = fmul fast float %1662, %1657
  %1664 = fmul fast float %1662, %1658
  %1665 = fmul fast float %1662, %1659
  br label %1666

; <label>:1666                                    ; preds = %1660, %1643
  %1667 = phi float [ %1663, %1660 ], [ %1657, %1643 ]
  %1668 = phi float [ %1664, %1660 ], [ %1658, %1643 ]
  %1669 = phi float [ %1665, %1660 ], [ %1659, %1643 ]
  %1670 = fmul fast float %1667, %1638
  %1671 = select i1 %260, float %1670, float %1667
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1671, float %1668, float %1669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = select i1 %260, float 0.000000e+00, float %1667
  %1674 = select i1 %260, float %1672, float %1668
  %1675 = select i1 %260, float 0.000000e+00, float %1669
  br label %1676

; <label>:1676                                    ; preds = %1666, %1628
  %1677 = phi float [ %1673, %1666 ], [ 0.000000e+00, %1628 ]
  %1678 = phi float [ %1674, %1666 ], [ 0.000000e+00, %1628 ]
  %1679 = phi float [ %1675, %1666 ], [ 0.000000e+00, %1628 ]
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 1024
  %1683 = icmp eq i32 %1682, 0
  br i1 %1683, label %1714, label %1684

; <label>:1684                                    ; preds = %1676
  %1685 = add i32 %60, 168
  %1686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1685, i32 undef)  ; BufferLoad(srv,index,wot)
  %1687 = extractvalue %dx.types.ResRet.i32 %1686, 0
  %1688 = and i32 %1687, 255
  %1689 = uitofp i32 %1688 to float
  %1690 = fmul fast float %1689, 0x3F70101020000000
  %1691 = lshr i32 %1687, 8
  %1692 = and i32 %1691, 255
  %1693 = uitofp i32 %1692 to float
  %1694 = fmul fast float %1693, 0x3F70101020000000
  %1695 = lshr i32 %1687, 16
  %1696 = and i32 %1695, 255
  %1697 = uitofp i32 %1696 to float
  %1698 = fmul fast float %1697, 0x3F70101020000000
  %1699 = fmul fast float %1690, %1690
  %1700 = fmul fast float %1694, %1694
  %1701 = fmul fast float %1698, %1698
  %1702 = add i32 %60, 460
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = add i32 %1704, 0
  %1706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1706, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1708 = extractvalue %dx.types.ResRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.ResRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.ResRet.f32 %1707, 2
  %1711 = fmul fast float %1699, %1708
  %1712 = fmul fast float %1700, %1709
  %1713 = fmul fast float %1701, %1710
  br label %1714

; <label>:1714                                    ; preds = %1684, %1676
  %1715 = phi float [ %1711, %1684 ], [ 0.000000e+00, %1676 ]
  %1716 = phi float [ %1712, %1684 ], [ 0.000000e+00, %1676 ]
  %1717 = phi float [ %1713, %1684 ], [ 0.000000e+00, %1676 ]
  %1718 = fcmp fast ogt float %1715, 0.000000e+00
  %1719 = fcmp fast ogt float %1716, 0.000000e+00
  %1720 = fcmp fast ogt float %1717, 0.000000e+00
  %1721 = call float @dx.op.unary.f32(i32 23, float %1715)  ; Log(value)
  %1722 = call float @dx.op.unary.f32(i32 23, float %1716)  ; Log(value)
  %1723 = call float @dx.op.unary.f32(i32 23, float %1717)  ; Log(value)
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = lshr i32 %1725, 7
  %1727 = and i32 %1726, 32752
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = fmul fast float %1721, 0xBFE62E4300000000
  %1730 = fmul fast float %1729, %1728
  %1731 = fmul fast float %1722, 0xBFE62E4300000000
  %1732 = fmul fast float %1731, %1728
  %1733 = fmul fast float %1723, 0xBFE62E4300000000
  %1734 = fmul fast float %1733, %1728
  %1735 = select i1 %1718, float %1730, float 1.270000e+02
  %1736 = select i1 %1719, float %1732, float 1.270000e+02
  %1737 = select i1 %1720, float %1734, float 1.270000e+02
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 10240
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1762, label %1742

; <label>:1742                                    ; preds = %1714
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 2048
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1762, label %1747

; <label>:1747                                    ; preds = %1742
  %1748 = add i32 %60, 476
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %111, float %1256, float %1257, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1754 = extractvalue %dx.types.ResRet.f32 %1753, 3
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = shl i32 %1756, 4
  %1758 = and i32 %1757, 32752
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, %1754
  %1761 = call float @dx.op.binary.f32(i32 35, float %1760, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1762

; <label>:1762                                    ; preds = %1747, %1742, %1714
  %1763 = phi float [ %1761, %1747 ], [ 0x3F70101020000000, %1742 ], [ 0x3F70101020000000, %1714 ]
  %1764 = add i32 %60, 112
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = and i32 %1766, 255
  %1768 = uitofp i32 %1767 to float
  %1769 = lshr i32 %1766, 8
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1773 = fmul fast float %1771, %1772
  %1774 = fadd fast float %1773, %1768
  %1775 = fmul fast float %1774, 0x3F70101020000000
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  br i1 %1148, label %1777, label %1812

; <label>:1777                                    ; preds = %1762
  %1778 = fmul fast float %1763, 2.000000e+00
  %1779 = fcmp fast olt float %1735, 1.270000e+02
  %1780 = fcmp fast olt float %1736, 1.270000e+02
  %1781 = fcmp fast olt float %1737, 1.270000e+02
  %1782 = fmul fast float %1735, 0xBFF7154760000000
  %1783 = fmul fast float %1782, %1778
  %1784 = fmul fast float %1736, 0xBFF7154760000000
  %1785 = fmul fast float %1784, %1778
  %1786 = fmul fast float %1737, 0xBFF7154760000000
  %1787 = fmul fast float %1786, %1778
  %1788 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1789 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1790 = call float @dx.op.unary.f32(i32 21, float %1787)  ; Exp(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1793 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1794 = fadd fast float %1791, -1.000000e+00
  %1795 = select i1 %1779, float %1794, float -1.000000e+00
  %1796 = fadd fast float %1792, -1.000000e+00
  %1797 = select i1 %1780, float %1796, float -1.000000e+00
  %1798 = fadd fast float %1793, -1.000000e+00
  %1799 = select i1 %1781, float %1798, float -1.000000e+00
  %1800 = fmul fast float %1795, %1329
  %1801 = fmul fast float %1797, %1329
  %1802 = fmul fast float %1799, %1329
  %1803 = fadd fast float %1800, 1.000000e+00
  %1804 = fadd fast float %1801, 1.000000e+00
  %1805 = fadd fast float %1802, 1.000000e+00
  %1806 = fmul fast float %1803, %1132
  %1807 = fmul fast float %1804, %1133
  %1808 = fmul fast float %1805, %1134
  %1809 = fmul fast float %1803, %1135
  %1810 = fmul fast float %1804, %1136
  %1811 = fmul fast float %1805, %1137
  br label %1812

; <label>:1812                                    ; preds = %1777, %1762
  %1813 = phi float [ %1806, %1777 ], [ %1132, %1762 ]
  %1814 = phi float [ %1807, %1777 ], [ %1133, %1762 ]
  %1815 = phi float [ %1808, %1777 ], [ %1134, %1762 ]
  %1816 = phi float [ %1809, %1777 ], [ %1135, %1762 ]
  %1817 = phi float [ %1810, %1777 ], [ %1136, %1762 ]
  %1818 = phi float [ %1811, %1777 ], [ %1137, %1762 ]
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = and i32 %1820, 3
  %1822 = icmp eq i32 %1821, 3
  br i1 %1822, label %1901, label %1823

; <label>:1823                                    ; preds = %1812
  %1824 = and i32 %1820, 16
  %1825 = icmp ne i32 %1824, 0
  %1826 = select i1 %1825, float %1329, float 0.000000e+00
  %1827 = icmp eq i32 %1821, 0
  br i1 %1827, label %1828, label %1856

; <label>:1828                                    ; preds = %1823
  %1829 = and i32 %1820, 64
  %1830 = icmp ne i32 %1829, 0
  %1831 = select i1 %1830, float %1329, float 0.000000e+00
  %1832 = fsub fast float %1549, %1813
  %1833 = fsub fast float %1550, %1814
  %1834 = fsub fast float %1551, %1815
  %1835 = fmul fast float %1826, %1832
  %1836 = fmul fast float %1826, %1833
  %1837 = fmul fast float %1826, %1834
  %1838 = fadd fast float %1835, %1813
  %1839 = fadd fast float %1836, %1814
  %1840 = fadd fast float %1837, %1815
  %1841 = fsub fast float %1535, %1141
  %1842 = fmul fast float %1826, %1841
  %1843 = fadd fast float %1842, %1141
  %1844 = fsub fast float %1677, %1816
  %1845 = fsub fast float %1678, %1817
  %1846 = fsub fast float %1679, %1818
  %1847 = fmul fast float %1831, %1844
  %1848 = fmul fast float %1831, %1845
  %1849 = fmul fast float %1831, %1846
  %1850 = fadd fast float %1847, %1816
  %1851 = fadd fast float %1848, %1817
  %1852 = fadd fast float %1849, %1818
  %1853 = fsub fast float %1776, %1146
  %1854 = fmul fast float %1826, %1853
  %1855 = fadd fast float %1854, %1146
  br label %1901

; <label>:1856                                    ; preds = %1823
  %1857 = icmp eq i32 %1821, 1
  br i1 %1857, label %1858, label %1871

; <label>:1858                                    ; preds = %1856
  %1859 = fadd fast float %1549, -1.000000e+00
  %1860 = fadd fast float %1550, -1.000000e+00
  %1861 = fadd fast float %1551, -1.000000e+00
  %1862 = fmul fast float %1826, %1859
  %1863 = fmul fast float %1826, %1860
  %1864 = fmul fast float %1826, %1861
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1814
  %1870 = fmul fast float %1867, %1815
  br label %1901

; <label>:1871                                    ; preds = %1856
  %1872 = icmp eq i32 %1821, 2
  br i1 %1872, label %1873, label %1901

; <label>:1873                                    ; preds = %1871
  %1874 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1875 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1876 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fadd fast float %1875, -5.000000e-01
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fmul fast float %1877, %1826
  %1881 = fmul fast float %1878, %1826
  %1882 = fmul fast float %1879, %1826
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fadd fast float %1881, 5.000000e-01
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fmul fast float %1883, 2.000000e+00
  %1887 = fsub fast float 1.000000e+00, %1886
  %1888 = fmul fast float %1887, %1813
  %1889 = fadd fast float %1888, %1886
  %1890 = fmul fast float %1889, %1813
  %1891 = fmul fast float %1884, 2.000000e+00
  %1892 = fsub fast float 1.000000e+00, %1891
  %1893 = fmul fast float %1892, %1814
  %1894 = fadd fast float %1893, %1891
  %1895 = fmul fast float %1894, %1814
  %1896 = fmul fast float %1885, 2.000000e+00
  %1897 = fsub fast float 1.000000e+00, %1896
  %1898 = fmul fast float %1897, %1815
  %1899 = fadd fast float %1898, %1896
  %1900 = fmul fast float %1899, %1815
  br label %1901

; <label>:1901                                    ; preds = %1873, %1871, %1858, %1828, %1812
  %1902 = phi float [ %1813, %1812 ], [ %1890, %1873 ], [ %1813, %1871 ], [ %1868, %1858 ], [ %1838, %1828 ]
  %1903 = phi float [ %1814, %1812 ], [ %1895, %1873 ], [ %1814, %1871 ], [ %1869, %1858 ], [ %1839, %1828 ]
  %1904 = phi float [ %1815, %1812 ], [ %1900, %1873 ], [ %1815, %1871 ], [ %1870, %1858 ], [ %1840, %1828 ]
  %1905 = phi float [ %1816, %1812 ], [ %1816, %1873 ], [ %1816, %1871 ], [ %1816, %1858 ], [ %1850, %1828 ]
  %1906 = phi float [ %1817, %1812 ], [ %1817, %1873 ], [ %1817, %1871 ], [ %1817, %1858 ], [ %1851, %1828 ]
  %1907 = phi float [ %1818, %1812 ], [ %1818, %1873 ], [ %1818, %1871 ], [ %1818, %1858 ], [ %1852, %1828 ]
  %1908 = phi float [ %1141, %1812 ], [ %1141, %1873 ], [ %1141, %1871 ], [ %1141, %1858 ], [ %1843, %1828 ]
  %1909 = phi float [ %1146, %1812 ], [ %1146, %1873 ], [ %1146, %1871 ], [ %1146, %1858 ], [ %1855, %1828 ]
  %1910 = and i32 %1820, 12
  %1911 = icmp eq i32 %1910, 12
  br i1 %1911, label %2018, label %1912

; <label>:1912                                    ; preds = %1901
  %1913 = and i32 %1820, 2097184
  %1914 = icmp eq i32 %1913, 2097184
  %1915 = select i1 %1914, float %1329, float 0.000000e+00
  %1916 = and i32 %1820, 4194336
  %1917 = icmp eq i32 %1916, 4194336
  %1918 = select i1 %1917, float %1329, float 0.000000e+00
  %1919 = and i32 %1820, 8388640
  %1920 = icmp eq i32 %1919, 8388640
  %1921 = select i1 %1920, float %1329, float 0.000000e+00
  %1922 = and i32 %1820, 1024
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %1923, float %1329, float 0.000000e+00
  %1925 = and i32 %1820, 2048
  %1926 = icmp ne i32 %1925, 0
  %1927 = select i1 %1926, float %1329, float 0.000000e+00
  %1928 = icmp eq i32 %1910, 0
  br i1 %1928, label %1929, label %1954

; <label>:1929                                    ; preds = %1912
  %1930 = fsub fast float %1630, %1130
  %1931 = fsub fast float %1631, %1131
  %1932 = fmul fast float %1915, %1930
  %1933 = fmul fast float %1915, %1931
  %1934 = fadd fast float %1932, %1130
  %1935 = fadd fast float %1933, %1131
  %1936 = fsub fast float %1632, %1144
  %1937 = fmul fast float %1918, %1936
  %1938 = fadd fast float %1937, %1144
  %1939 = fsub fast float %1629, %1143
  %1940 = fmul fast float %1921, %1939
  %1941 = fadd fast float %1940, %1143
  %1942 = fsub fast float %1735, %1138
  %1943 = fsub fast float %1736, %1139
  %1944 = fsub fast float %1737, %1140
  %1945 = fmul fast float %1924, %1942
  %1946 = fmul fast float %1924, %1943
  %1947 = fmul fast float %1924, %1944
  %1948 = fadd fast float %1945, %1138
  %1949 = fadd fast float %1946, %1139
  %1950 = fadd fast float %1947, %1140
  %1951 = fsub fast float %1763, %1145
  %1952 = fmul fast float %1927, %1951
  %1953 = fadd fast float %1952, %1145
  br label %2018

; <label>:1954                                    ; preds = %1912
  %1955 = icmp eq i32 %1910, 4
  br i1 %1955, label %1956, label %1996

; <label>:1956                                    ; preds = %1954
  %1957 = fmul fast float %1915, %1630
  %1958 = fmul fast float %1915, %1631
  %1959 = fadd fast float %1957, %1130
  %1960 = fadd fast float %1958, %1131
  %1961 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %1962 = fsub fast float %1961, %1144
  %1963 = fmul fast float %1962, %1918
  %1964 = fadd fast float %1963, %1144
  %1965 = fadd fast float %1629, %1143
  %1966 = fmul fast float %1965, 0x3FF337FAE0000000
  %1967 = fmul fast float %1143, %1143
  %1968 = fmul fast float %1629, %1629
  %1969 = fadd fast float %1968, %1967
  %1970 = fmul fast float %1969, 0x3FE5152B00000000
  %1971 = fmul fast float %1143, 0xBFCC1F85E0000000
  %1972 = fmul fast float %1971, %1629
  %1973 = fadd fast float %1972, 0xBFE1363700000000
  %1974 = fadd fast float %1973, %1966
  %1975 = fsub fast float %1974, %1970
  %1976 = fmul fast float %1965, 0x3FBA6F0D00000000
  %1977 = fmul fast float %1969, 0x3FD0432880000000
  %1978 = fmul fast float %1143, 0xBFEF110800000000
  %1979 = fmul fast float %1978, %1629
  %1980 = fadd fast float %1979, 1.000000e+00
  %1981 = fsub fast float %1980, %1976
  %1982 = fadd fast float %1981, %1977
  %1983 = fdiv fast float %1975, %1982
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fsub fast float %1984, %1143
  %1986 = fmul fast float %1985, %1921
  %1987 = fadd fast float %1986, %1143
  %1988 = fmul fast float %1924, %1735
  %1989 = fmul fast float %1924, %1736
  %1990 = fmul fast float %1924, %1737
  %1991 = fadd fast float %1988, %1138
  %1992 = fadd fast float %1989, %1139
  %1993 = fadd fast float %1990, %1140
  %1994 = fmul fast float %1927, %1763
  %1995 = fadd fast float %1994, %1145
  br label %2018

; <label>:1996                                    ; preds = %1954
  %1997 = icmp eq i32 %1910, 8
  br i1 %1997, label %1998, label %2018

; <label>:1998                                    ; preds = %1996
  %1999 = fmul fast float %1915, %1630
  %2000 = fmul fast float %1915, %1631
  %2001 = fadd fast float %1999, %1130
  %2002 = fadd fast float %2000, %1131
  %2003 = call float @dx.op.binary.f32(i32 36, float %1144, float %1632)  ; FMin(a,b)
  %2004 = fsub fast float %2003, %1144
  %2005 = fmul fast float %2004, %1918
  %2006 = fadd fast float %2005, %1144
  %2007 = fsub fast float %1629, %1143
  %2008 = fmul fast float %1921, %2007
  %2009 = fadd fast float %2008, %1143
  %2010 = fmul fast float %1924, %1735
  %2011 = fmul fast float %1924, %1736
  %2012 = fmul fast float %1924, %1737
  %2013 = fadd fast float %2010, %1138
  %2014 = fadd fast float %2011, %1139
  %2015 = fadd fast float %2012, %1140
  %2016 = fmul fast float %1927, %1763
  %2017 = fadd fast float %2016, %1145
  br label %2018

; <label>:2018                                    ; preds = %1998, %1996, %1956, %1929, %1901, %1328, %1147, %1129
  %2019 = phi float [ %1130, %1901 ], [ %1130, %1328 ], [ %1130, %1129 ], [ %2001, %1998 ], [ %1130, %1996 ], [ %1959, %1956 ], [ %1934, %1929 ], [ %1130, %1147 ]
  %2020 = phi float [ %1131, %1901 ], [ %1131, %1328 ], [ %1131, %1129 ], [ %2002, %1998 ], [ %1131, %1996 ], [ %1960, %1956 ], [ %1935, %1929 ], [ %1131, %1147 ]
  %2021 = phi float [ %1902, %1901 ], [ %1132, %1328 ], [ %1132, %1129 ], [ %1902, %1998 ], [ %1902, %1996 ], [ %1902, %1956 ], [ %1902, %1929 ], [ %1132, %1147 ]
  %2022 = phi float [ %1903, %1901 ], [ %1133, %1328 ], [ %1133, %1129 ], [ %1903, %1998 ], [ %1903, %1996 ], [ %1903, %1956 ], [ %1903, %1929 ], [ %1133, %1147 ]
  %2023 = phi float [ %1904, %1901 ], [ %1134, %1328 ], [ %1134, %1129 ], [ %1904, %1998 ], [ %1904, %1996 ], [ %1904, %1956 ], [ %1904, %1929 ], [ %1134, %1147 ]
  %2024 = phi float [ %1905, %1901 ], [ %1135, %1328 ], [ %1135, %1129 ], [ %1905, %1998 ], [ %1905, %1996 ], [ %1905, %1956 ], [ %1905, %1929 ], [ %1135, %1147 ]
  %2025 = phi float [ %1906, %1901 ], [ %1136, %1328 ], [ %1136, %1129 ], [ %1906, %1998 ], [ %1906, %1996 ], [ %1906, %1956 ], [ %1906, %1929 ], [ %1136, %1147 ]
  %2026 = phi float [ %1907, %1901 ], [ %1137, %1328 ], [ %1137, %1129 ], [ %1907, %1998 ], [ %1907, %1996 ], [ %1907, %1956 ], [ %1907, %1929 ], [ %1137, %1147 ]
  %2027 = phi float [ %1138, %1901 ], [ %1138, %1328 ], [ %1138, %1129 ], [ %2013, %1998 ], [ %1138, %1996 ], [ %1991, %1956 ], [ %1948, %1929 ], [ %1138, %1147 ]
  %2028 = phi float [ %1139, %1901 ], [ %1139, %1328 ], [ %1139, %1129 ], [ %2014, %1998 ], [ %1139, %1996 ], [ %1992, %1956 ], [ %1949, %1929 ], [ %1139, %1147 ]
  %2029 = phi float [ %1140, %1901 ], [ %1140, %1328 ], [ %1140, %1129 ], [ %2015, %1998 ], [ %1140, %1996 ], [ %1993, %1956 ], [ %1950, %1929 ], [ %1140, %1147 ]
  %2030 = phi float [ %1908, %1901 ], [ %1141, %1328 ], [ %1141, %1129 ], [ %1908, %1998 ], [ %1908, %1996 ], [ %1908, %1956 ], [ %1908, %1929 ], [ %1141, %1147 ]
  %2031 = phi float [ %1143, %1901 ], [ %1143, %1328 ], [ %1143, %1129 ], [ %2009, %1998 ], [ %1143, %1996 ], [ %1987, %1956 ], [ %1941, %1929 ], [ %1143, %1147 ]
  %2032 = phi float [ %1144, %1901 ], [ %1144, %1328 ], [ %1144, %1129 ], [ %2006, %1998 ], [ %1144, %1996 ], [ %1964, %1956 ], [ %1938, %1929 ], [ %1144, %1147 ]
  %2033 = phi float [ %1145, %1901 ], [ %1145, %1328 ], [ %1145, %1129 ], [ %2017, %1998 ], [ %1145, %1996 ], [ %1995, %1956 ], [ %1953, %1929 ], [ %1145, %1147 ]
  %2034 = phi float [ %1909, %1901 ], [ %1146, %1328 ], [ %1146, %1129 ], [ %1909, %1998 ], [ %1909, %1996 ], [ %1909, %1956 ], [ %1909, %1929 ], [ %1146, %1147 ]
  br i1 %446, label %2906, label %2035

; <label>:2035                                    ; preds = %2018
  %2036 = icmp ult i32 %502, 3
  %2037 = add i32 %60, 56
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %60, 60
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = or i32 %2042, %2039
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2906, label %2045

; <label>:2045                                    ; preds = %2035
  %2046 = and i32 %2039, 262144
  %2047 = icmp ne i32 %2046, 0
  %2048 = select i1 %2047, float %65, float 1.000000e+00
  %2049 = select i1 %2047, float %66, float 0.000000e+00
  %2050 = select i1 %2047, float %67, float 0.000000e+00
  %2051 = select i1 %2047, float %68, float 1.000000e+00
  %2052 = select i1 %2047, float %69, float %92
  %2053 = select i1 %2047, float %70, float %93
  %2054 = add i32 %60, 316
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = lshr i32 %2056, 16
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = fmul fast float %2058, 0x3F50624DE0000000
  %2060 = add i32 %60, 120
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = lshr i32 %2062, 16
  %2064 = and i32 %2063, 255
  %2065 = lshr i32 %2062, 24
  %2066 = add i32 %60, 324
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 65535
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = lshr i32 %2068, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = add i32 %60, 64
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 22
  %2077 = shl nuw nsw i32 %2076, 5
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = shl i32 %2075, 4
  %2080 = and i32 %2079, 32752
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = lshr i32 %2075, 7
  %2083 = and i32 %2082, 32752
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2086 = extractvalue %dx.types.CBufRet.f32 %2085, 3
  %2087 = fmul fast float %2086, 1.000000e+03
  %2088 = fmul fast float %396, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = fadd fast float %2089, %386
  %2091 = fmul fast float %397, %2087
  %2092 = call float @dx.op.unary.f32(i32 22, float %2091)  ; Frc(value)
  %2093 = fadd fast float %2092, %388
  %2094 = fmul fast float %2059, %2087
  %2095 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2096 = fmul fast float %2095, 0x401921FB60000000
  %2097 = fadd fast float %2096, %2078
  %2098 = call float @dx.op.unary.f32(i32 13, float %2097)  ; Sin(value)
  %2099 = call float @dx.op.unary.f32(i32 12, float %2097)  ; Cos(value)
  %2100 = fsub fast float -0.000000e+00, %2098
  %2101 = fadd fast float %2052, -5.000000e-01
  %2102 = fadd fast float %2053, -5.000000e-01
  %2103 = fmul fast float %2070, %2101
  %2104 = fmul fast float %2072, %2102
  %2105 = fadd fast float %2103, 5.000000e-01
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fmul fast float %2081, %2105
  %2108 = fmul fast float %2084, %2106
  %2109 = fmul fast float %2099, %2107
  %2110 = call float @dx.op.tertiary.f32(i32 46, float %2100, float %2108, float %2109)  ; FMad(a,b,c)
  %2111 = fmul fast float %2098, %2107
  %2112 = call float @dx.op.tertiary.f32(i32 46, float %2099, float %2108, float %2111)  ; FMad(a,b,c)
  %2113 = fadd fast float %2090, %2110
  %2114 = fadd fast float %2093, %2112
  %2115 = icmp ugt i32 %2064, 1
  %2116 = icmp ugt i32 %2062, 33554431
  %2117 = or i1 %2116, %2115
  br i1 %2117, label %2118, label %2143

; <label>:2118                                    ; preds = %2045
  %2119 = add i32 %60, 260
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 16
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fmul fast float %2086, %2123
  %2125 = call float @dx.op.unary.f32(i32 22, float %2124)  ; Frc(value)
  %2126 = mul nuw nsw i32 %2064, %2065
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2125, %2127
  %2129 = call float @dx.op.unary.f32(i32 27, float %2128)  ; Round_ni(value)
  %2130 = fptoui float %2129 to i32
  %2131 = urem i32 %2130, %2064
  %2132 = udiv i32 %2130, %2065
  %2133 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2134 = call float @dx.op.unary.f32(i32 22, float %2114)  ; Frc(value)
  %2135 = uitofp i32 %2131 to float
  %2136 = uitofp i32 %2132 to float
  %2137 = fadd fast float %2133, %2135
  %2138 = fadd fast float %2134, %2136
  %2139 = uitofp i32 %2064 to float
  %2140 = uitofp i32 %2065 to float
  %2141 = fdiv fast float %2137, %2139
  %2142 = fdiv fast float %2138, %2140
  br label %2143

; <label>:2143                                    ; preds = %2118, %2045
  %2144 = phi float [ %2141, %2118 ], [ %2113, %2045 ]
  %2145 = phi float [ %2142, %2118 ], [ %2114, %2045 ]
  %2146 = and i32 %2039, 256
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2194, label %2148

; <label>:2148                                    ; preds = %2143
  %2149 = add i32 %60, 432
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2153, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = add i32 %60, 132
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = shl i32 %2158, 4
  %2160 = and i32 %2159, 32752
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = lshr i32 %2158, 7
  %2163 = and i32 %2162, 32752
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = fsub fast float 1.000000e+00, %498
  %2166 = call float @dx.op.binary.f32(i32 35, float %2165, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2167 = bitcast float %498 to i32
  %2168 = sitofp i32 %2167 to float
  %2169 = fadd fast float %2168, 0xC1CFBF8940000000
  %2170 = fmul fast float %2164, %2169
  %2171 = fadd fast float %2170, 0x41CFBF8940000000
  %2172 = fptosi float %2171 to i32
  %2173 = bitcast i32 %2172 to float
  %2174 = bitcast float %2166 to i32
  %2175 = sitofp i32 %2174 to float
  %2176 = fadd fast float %2175, 0xC1CFBF8940000000
  %2177 = fmul fast float %2176, %2164
  %2178 = fadd fast float %2177, 0x41CFBF8940000000
  %2179 = fptosi float %2178 to i32
  %2180 = bitcast i32 %2179 to float
  %2181 = fmul fast float %2173, %2161
  %2182 = fmul fast float %2180, %2161
  %2183 = fsub fast float %2166, %2181
  %2184 = fadd fast float %2182, %2166
  %2185 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2186 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2187 = fsub fast float %2155, %2185
  %2188 = fsub fast float %2186, %2185
  %2189 = bitcast float %2188 to i32
  %2190 = sub nsw i32 2129859010, %2189
  %2191 = bitcast i32 %2190 to float
  %2192 = fmul fast float %2191, %2187
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  br label %2194

; <label>:2194                                    ; preds = %2148, %2143
  %2195 = phi float [ %2193, %2148 ], [ %498, %2143 ]
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 128
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2216, label %2200

; <label>:2200                                    ; preds = %2194
  %2201 = add i32 %60, 416
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 524288
  %2211 = icmp ne i32 %2210, 0
  %2212 = fcmp fast ogt float %2207, 0x3FE0101020000000
  %2213 = select i1 %2212, float 1.000000e+00, float 0.000000e+00
  %2214 = select i1 %2211, float %2213, float %2207
  %2215 = fmul fast float %2214, %2195
  br label %2216

; <label>:2216                                    ; preds = %2200, %2194
  %2217 = phi float [ %2215, %2200 ], [ %2195, %2194 ]
  %2218 = fcmp fast ult float %2217, 0x3F70101020000000
  br i1 %2218, label %2906, label %2219

; <label>:2219                                    ; preds = %2216
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 16
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2422, label %2224

; <label>:2224                                    ; preds = %2219
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = add i32 %60, 368
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %2229, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2231, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2233 = extractvalue %dx.types.ResRet.f32 %2232, 0
  %2234 = extractvalue %dx.types.ResRet.f32 %2232, 1
  %2235 = extractvalue %dx.types.ResRet.f32 %2232, 2
  %2236 = extractvalue %dx.types.ResRet.f32 %2232, 3
  %2237 = and i32 %2226, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = lshr i32 %2226, 8
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2236, %2238
  %2243 = fadd fast float %2242, %2241
  %2244 = fmul fast float %2243, 0x3F70101000000000
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = and i32 %2246, 512
  %2248 = icmp eq i32 %2247, 0
  br i1 %2248, label %2257, label %2249

; <label>:2249                                    ; preds = %2224
  %2250 = add i32 %60, 448
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = add i32 %2252, 0
  %2254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2253, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2255 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2254, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2256 = extractvalue %dx.types.ResRet.f32 %2255, 0
  br label %2257

; <label>:2257                                    ; preds = %2249, %2224
  %2258 = phi float [ %2256, %2249 ], [ 1.000000e+00, %2224 ]
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 33554432
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2369, label %2263

; <label>:2263                                    ; preds = %2257
  %2264 = add i32 %60, 256
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 65535
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2266, 16
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = add i32 %60, 260
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = lshr i32 %2277, 24
  %2279 = uitofp i32 %2278 to float
  %2280 = fmul fast float %2279, 0x3F70101020000000
  %2281 = and i32 %2277, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = fmul fast float %2282, 0x3F70101020000000
  %2284 = lshr i32 %2277, 8
  %2285 = and i32 %2284, 255
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = lshr i32 %2277, 16
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101020000000
  %2292 = add i32 %60, 252
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = lshr i32 %2294, 24
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101020000000
  %2298 = and i32 %2294, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = fmul fast float %2299, 0x3F70101020000000
  %2301 = lshr i32 %2294, 8
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = lshr i32 %2294, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101020000000
  %2309 = bitcast float %2233 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2233, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2233
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2234 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2234, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2234
  %2328 = fmul fast float %2327, %2326
  %2329 = bitcast float %2235 to i32
  %2330 = ashr i32 %2329, 1
  %2331 = sub nsw i32 1597463174, %2330
  %2332 = bitcast i32 %2331 to float
  %2333 = fmul fast float %2235, 5.000000e-01
  %2334 = fmul fast float %2332, %2332
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float 1.500000e+00, %2335
  %2337 = fmul fast float %2332, %2235
  %2338 = fmul fast float %2337, %2336
  %2339 = fsub fast float %2318, %2300
  %2340 = fsub fast float %2328, %2304
  %2341 = fsub fast float %2338, %2308
  %2342 = fmul fast float %2339, %2268
  %2343 = fmul fast float %2340, %2270
  %2344 = fmul fast float %2341, %2275
  %2345 = fadd fast float %2342, %2283
  %2346 = fadd fast float %2343, %2287
  %2347 = fadd fast float %2344, %2291
  %2348 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2349 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  %2350 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2351 = fmul fast float %2348, %2348
  %2352 = fmul fast float %2349, %2349
  %2353 = fmul fast float %2350, %2350
  %2354 = fsub fast float %2351, %2233
  %2355 = fsub fast float %2352, %2234
  %2356 = fsub fast float %2353, %2235
  %2357 = fmul fast float %2354, %2258
  %2358 = fmul fast float %2355, %2258
  %2359 = fmul fast float %2356, %2258
  %2360 = fadd fast float %2357, %2233
  %2361 = fadd fast float %2358, %2234
  %2362 = fadd fast float %2359, %2235
  %2363 = fadd fast float %2280, %2244
  %2364 = fsub fast float %2363, %2297
  %2365 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  %2366 = fsub fast float %2365, %2244
  %2367 = fmul fast float %2366, %2258
  %2368 = fadd fast float %2367, %2244
  br label %2422

; <label>:2369                                    ; preds = %2257
  %2370 = and i32 %2260, 134217728
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2406, label %2372

; <label>:2372                                    ; preds = %2369
  %2373 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2374 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2376 = fadd fast float %2373, -5.000000e-01
  %2377 = fadd fast float %2374, -5.000000e-01
  %2378 = fadd fast float %2375, -5.000000e-01
  %2379 = fmul fast float %2376, %2258
  %2380 = fmul fast float %2377, %2258
  %2381 = fmul fast float %2378, %2258
  %2382 = fadd fast float %2379, 5.000000e-01
  %2383 = fadd fast float %2380, 5.000000e-01
  %2384 = fadd fast float %2381, 5.000000e-01
  %2385 = call float @dx.op.unary.f32(i32 24, float %2233)  ; Sqrt(value)
  %2386 = call float @dx.op.unary.f32(i32 24, float %2234)  ; Sqrt(value)
  %2387 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2388 = fmul fast float %2382, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2385
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2385
  %2393 = fmul fast float %2383, 2.000000e+00
  %2394 = fsub fast float 1.000000e+00, %2393
  %2395 = fmul fast float %2394, %2386
  %2396 = fadd fast float %2395, %2393
  %2397 = fmul fast float %2396, %2386
  %2398 = fmul fast float %2384, 2.000000e+00
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = fmul fast float %2399, %2387
  %2401 = fadd fast float %2400, %2398
  %2402 = fmul fast float %2401, %2387
  %2403 = fmul fast float %2392, %2392
  %2404 = fmul fast float %2397, %2397
  %2405 = fmul fast float %2402, %2402
  br label %2422

; <label>:2406                                    ; preds = %2369
  %2407 = fmul fast float %373, %373
  %2408 = fmul fast float %377, %377
  %2409 = fmul fast float %381, %381
  %2410 = fadd fast float %2407, -1.000000e+00
  %2411 = fadd fast float %2408, -1.000000e+00
  %2412 = fadd fast float %2409, -1.000000e+00
  %2413 = fmul fast float %2258, %2410
  %2414 = fmul fast float %2258, %2411
  %2415 = fmul fast float %2258, %2412
  %2416 = fadd fast float %2413, 1.000000e+00
  %2417 = fadd fast float %2414, 1.000000e+00
  %2418 = fadd fast float %2415, 1.000000e+00
  %2419 = fmul fast float %2416, %2233
  %2420 = fmul fast float %2417, %2234
  %2421 = fmul fast float %2418, %2235
  br label %2422

; <label>:2422                                    ; preds = %2406, %2372, %2263, %2219
  %2423 = phi float [ %2368, %2263 ], [ %2244, %2372 ], [ %2244, %2406 ], [ 0x3FA23C0BE0000000, %2219 ]
  %2424 = phi float [ %2360, %2263 ], [ %2403, %2372 ], [ %2419, %2406 ], [ 1.000000e+00, %2219 ]
  %2425 = phi float [ %2361, %2263 ], [ %2404, %2372 ], [ %2420, %2406 ], [ 1.000000e+00, %2219 ]
  %2426 = phi float [ %2362, %2263 ], [ %2405, %2372 ], [ %2421, %2406 ], [ 1.000000e+00, %2219 ]
  %2427 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.i32 %2427, 1
  %2429 = and i32 %2428, 1
  %2430 = icmp ne i32 %2429, 0
  %2431 = add i32 %60, 356
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = and i32 %2433, 32
  %2435 = icmp ne i32 %2434, 0
  %2436 = and i1 %2430, %2435
  %2437 = select i1 %2436, float 1.000000e+00, float %2424
  %2438 = select i1 %2436, float 0x3FD3333340000000, float %2425
  %2439 = select i1 %2436, float 0x3FD3333340000000, float %2426
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 32
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2516, label %2444

; <label>:2444                                    ; preds = %2422
  %2445 = add i32 %60, 124
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %60, 384
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = add i32 %2450, 0
  %2452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2452, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.ResRet.f32 %2453, 3
  %2458 = and i32 %2447, 255
  %2459 = uitofp i32 %2458 to float
  %2460 = lshr i32 %2447, 8
  %2461 = and i32 %2460, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = lshr i32 %2447, 16
  %2464 = and i32 %2463, 255
  %2465 = uitofp i32 %2464 to float
  %2466 = fmul fast float %2465, 0x3F70101000000000
  %2467 = fmul fast float %2454, %2459
  %2468 = fadd fast float %2467, %2462
  %2469 = fmul fast float %2468, 0x3F70101000000000
  %2470 = fadd fast float %2455, -5.000000e-01
  %2471 = fadd fast float %2457, -5.000000e-01
  %2472 = fmul fast float %2470, %2466
  %2473 = fmul fast float %2471, %2466
  %2474 = fadd fast float %2472, 5.000000e-01
  %2475 = fadd fast float %2473, 5.000000e-01
  %2476 = fmul fast float %2474, 2.000000e+00
  %2477 = fadd fast float %2476, -1.000000e+00
  %2478 = fmul fast float %2475, 2.000000e+00
  %2479 = fadd fast float %2478, -1.000000e+00
  %2480 = fadd fast float %2477, %2479
  %2481 = fmul fast float %2480, 5.000000e-01
  %2482 = fsub fast float %2477, %2479
  %2483 = fmul fast float %2482, 5.000000e-01
  %2484 = call float @dx.op.unary.f32(i32 6, float %2481)  ; FAbs(value)
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = call float @dx.op.unary.f32(i32 6, float %2483)  ; FAbs(value)
  %2487 = fsub fast float %2485, %2486
  %2488 = call float @dx.op.dot3.f32(i32 55, float %2481, float %2483, float %2487, float %2481, float %2483, float %2487)  ; Dot3(ax,ay,az,bx,by,bz)
  %2489 = call float @dx.op.unary.f32(i32 25, float %2488)  ; Rsqrt(value)
  %2490 = fmul fast float %2481, %2489
  %2491 = fmul fast float %2483, %2489
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 67108864
  %2495 = icmp eq i32 %2494, 0
  br i1 %2495, label %2512, label %2496

; <label>:2496                                    ; preds = %2444
  %2497 = add i32 %60, 312
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 65535
  %2501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2500)  ; LegacyF16ToF32(value)
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = and i32 %2503, 65535
  %2505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2504)  ; LegacyF16ToF32(value)
  %2506 = lshr i32 %2499, 16
  %2507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2506)  ; LegacyF16ToF32(value)
  %2508 = fsub fast float %2469, %2507
  %2509 = fmul fast float %2508, %2501
  %2510 = fadd fast float %2509, %2505
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  br label %2512

; <label>:2512                                    ; preds = %2496, %2444
  %2513 = phi float [ %2511, %2496 ], [ %2469, %2444 ]
  %2514 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2048, float %2049)  ; Dot2(ax,ay,bx,by)
  %2515 = call float @dx.op.dot2.f32(i32 54, float %2490, float %2491, float %2050, float %2051)  ; Dot2(ax,ay,bx,by)
  br label %2516

; <label>:2516                                    ; preds = %2512, %2422
  %2517 = phi float [ %2513, %2512 ], [ 0x3FD6666660000000, %2422 ]
  %2518 = phi float [ %2514, %2512 ], [ 0.000000e+00, %2422 ]
  %2519 = phi float [ %2515, %2512 ], [ 0.000000e+00, %2422 ]
  %2520 = phi float [ %2456, %2512 ], [ 1.000000e+00, %2422 ]
  %2521 = add i32 %60, 192
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = lshr i32 %2523, 22
  %2525 = shl nuw nsw i32 %2524, 5
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 64
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2564, label %2531

; <label>:2531                                    ; preds = %2516
  %2532 = add i32 %60, 400
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 131072
  %2540 = icmp eq i32 %2539, 0
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %110, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = fmul fast float %2542, %361
  %2546 = fmul fast float %2543, %364
  %2547 = fmul fast float %2544, %367
  br i1 %2540, label %2554, label %2548

; <label>:2548                                    ; preds = %2531
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = fmul fast float %2550, %2545
  %2552 = fmul fast float %2550, %2546
  %2553 = fmul fast float %2550, %2547
  br label %2554

; <label>:2554                                    ; preds = %2548, %2531
  %2555 = phi float [ %2551, %2548 ], [ %2545, %2531 ]
  %2556 = phi float [ %2552, %2548 ], [ %2546, %2531 ]
  %2557 = phi float [ %2553, %2548 ], [ %2547, %2531 ]
  %2558 = fmul fast float %2555, %2526
  %2559 = select i1 %260, float %2558, float %2555
  %2560 = call float @dx.op.dot3.f32(i32 55, float %2559, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = select i1 %260, float 0.000000e+00, float %2555
  %2562 = select i1 %260, float %2560, float %2556
  %2563 = select i1 %260, float 0.000000e+00, float %2557
  br label %2564

; <label>:2564                                    ; preds = %2554, %2516
  %2565 = phi float [ %2561, %2554 ], [ 0.000000e+00, %2516 ]
  %2566 = phi float [ %2562, %2554 ], [ 0.000000e+00, %2516 ]
  %2567 = phi float [ %2563, %2554 ], [ 0.000000e+00, %2516 ]
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 1024
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2602, label %2572

; <label>:2572                                    ; preds = %2564
  %2573 = add i32 %60, 184
  %2574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2573, i32 undef)  ; BufferLoad(srv,index,wot)
  %2575 = extractvalue %dx.types.ResRet.i32 %2574, 0
  %2576 = and i32 %2575, 255
  %2577 = uitofp i32 %2576 to float
  %2578 = fmul fast float %2577, 0x3F70101020000000
  %2579 = lshr i32 %2575, 8
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101020000000
  %2583 = lshr i32 %2575, 16
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3F70101020000000
  %2587 = fmul fast float %2578, %2578
  %2588 = fmul fast float %2582, %2582
  %2589 = fmul fast float %2586, %2586
  %2590 = add i32 %60, 464
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %2592, 0
  %2594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2594, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = extractvalue %dx.types.ResRet.f32 %2595, 1
  %2598 = extractvalue %dx.types.ResRet.f32 %2595, 2
  %2599 = fmul fast float %2587, %2596
  %2600 = fmul fast float %2588, %2597
  %2601 = fmul fast float %2589, %2598
  br label %2602

; <label>:2602                                    ; preds = %2572, %2564
  %2603 = phi float [ %2599, %2572 ], [ 0.000000e+00, %2564 ]
  %2604 = phi float [ %2600, %2572 ], [ 0.000000e+00, %2564 ]
  %2605 = phi float [ %2601, %2572 ], [ 0.000000e+00, %2564 ]
  %2606 = fcmp fast ogt float %2603, 0.000000e+00
  %2607 = fcmp fast ogt float %2604, 0.000000e+00
  %2608 = fcmp fast ogt float %2605, 0.000000e+00
  %2609 = call float @dx.op.unary.f32(i32 23, float %2603)  ; Log(value)
  %2610 = call float @dx.op.unary.f32(i32 23, float %2604)  ; Log(value)
  %2611 = call float @dx.op.unary.f32(i32 23, float %2605)  ; Log(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = lshr i32 %2613, 7
  %2615 = and i32 %2614, 32752
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2609, 0xBFE62E4300000000
  %2618 = fmul fast float %2617, %2616
  %2619 = fmul fast float %2610, 0xBFE62E4300000000
  %2620 = fmul fast float %2619, %2616
  %2621 = fmul fast float %2611, 0xBFE62E4300000000
  %2622 = fmul fast float %2621, %2616
  %2623 = select i1 %2606, float %2618, float 1.270000e+02
  %2624 = select i1 %2607, float %2620, float 1.270000e+02
  %2625 = select i1 %2608, float %2622, float 1.270000e+02
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 10240
  %2629 = icmp eq i32 %2628, 0
  br i1 %2629, label %2650, label %2630

; <label>:2630                                    ; preds = %2602
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 2048
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2650, label %2635

; <label>:2635                                    ; preds = %2630
  %2636 = add i32 %60, 480
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %111, float %2144, float %2145, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 3
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = shl i32 %2644, 4
  %2646 = and i32 %2645, 32752
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fmul fast float %2647, %2642
  %2649 = call float @dx.op.binary.f32(i32 35, float %2648, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2650

; <label>:2650                                    ; preds = %2635, %2630, %2602
  %2651 = phi float [ %2649, %2635 ], [ 0x3F70101020000000, %2630 ], [ 0x3F70101020000000, %2602 ]
  %2652 = add i32 %60, 128
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = lshr i32 %2654, 8
  %2658 = and i32 %2657, 255
  %2659 = uitofp i32 %2658 to float
  %2660 = call float @dx.op.dot3.f32(i32 55, float %2437, float %2438, float %2439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2661 = fmul fast float %2659, %2660
  %2662 = fadd fast float %2661, %2656
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  br i1 %2036, label %2665, label %2700

; <label>:2665                                    ; preds = %2650
  %2666 = fmul fast float %2651, 2.000000e+00
  %2667 = fcmp fast olt float %2623, 1.270000e+02
  %2668 = fcmp fast olt float %2624, 1.270000e+02
  %2669 = fcmp fast olt float %2625, 1.270000e+02
  %2670 = fmul fast float %2623, 0xBFF7154760000000
  %2671 = fmul fast float %2670, %2666
  %2672 = fmul fast float %2624, 0xBFF7154760000000
  %2673 = fmul fast float %2672, %2666
  %2674 = fmul fast float %2625, 0xBFF7154760000000
  %2675 = fmul fast float %2674, %2666
  %2676 = call float @dx.op.unary.f32(i32 21, float %2671)  ; Exp(value)
  %2677 = call float @dx.op.unary.f32(i32 21, float %2673)  ; Exp(value)
  %2678 = call float @dx.op.unary.f32(i32 21, float %2675)  ; Exp(value)
  %2679 = call float @dx.op.unary.f32(i32 7, float %2676)  ; Saturate(value)
  %2680 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  %2681 = call float @dx.op.unary.f32(i32 7, float %2678)  ; Saturate(value)
  %2682 = fadd fast float %2679, -1.000000e+00
  %2683 = select i1 %2667, float %2682, float -1.000000e+00
  %2684 = fadd fast float %2680, -1.000000e+00
  %2685 = select i1 %2668, float %2684, float -1.000000e+00
  %2686 = fadd fast float %2681, -1.000000e+00
  %2687 = select i1 %2669, float %2686, float -1.000000e+00
  %2688 = fmul fast float %2683, %2217
  %2689 = fmul fast float %2685, %2217
  %2690 = fmul fast float %2687, %2217
  %2691 = fadd fast float %2688, 1.000000e+00
  %2692 = fadd fast float %2689, 1.000000e+00
  %2693 = fadd fast float %2690, 1.000000e+00
  %2694 = fmul fast float %2691, %2021
  %2695 = fmul fast float %2692, %2022
  %2696 = fmul fast float %2693, %2023
  %2697 = fmul fast float %2691, %2024
  %2698 = fmul fast float %2692, %2025
  %2699 = fmul fast float %2693, %2026
  br label %2700

; <label>:2700                                    ; preds = %2665, %2650
  %2701 = phi float [ %2694, %2665 ], [ %2021, %2650 ]
  %2702 = phi float [ %2695, %2665 ], [ %2022, %2650 ]
  %2703 = phi float [ %2696, %2665 ], [ %2023, %2650 ]
  %2704 = phi float [ %2697, %2665 ], [ %2024, %2650 ]
  %2705 = phi float [ %2698, %2665 ], [ %2025, %2650 ]
  %2706 = phi float [ %2699, %2665 ], [ %2026, %2650 ]
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 3
  %2710 = icmp eq i32 %2709, 3
  br i1 %2710, label %2789, label %2711

; <label>:2711                                    ; preds = %2700
  %2712 = and i32 %2708, 16
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %2217, float 0.000000e+00
  %2715 = icmp eq i32 %2709, 0
  br i1 %2715, label %2716, label %2744

; <label>:2716                                    ; preds = %2711
  %2717 = and i32 %2708, 64
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2217, float 0.000000e+00
  %2720 = fsub fast float %2437, %2701
  %2721 = fsub fast float %2438, %2702
  %2722 = fsub fast float %2439, %2703
  %2723 = fmul fast float %2714, %2720
  %2724 = fmul fast float %2714, %2721
  %2725 = fmul fast float %2714, %2722
  %2726 = fadd fast float %2723, %2701
  %2727 = fadd fast float %2724, %2702
  %2728 = fadd fast float %2725, %2703
  %2729 = fsub fast float %2423, %2030
  %2730 = fmul fast float %2714, %2729
  %2731 = fadd fast float %2730, %2030
  %2732 = fsub fast float %2565, %2704
  %2733 = fsub fast float %2566, %2705
  %2734 = fsub fast float %2567, %2706
  %2735 = fmul fast float %2719, %2732
  %2736 = fmul fast float %2719, %2733
  %2737 = fmul fast float %2719, %2734
  %2738 = fadd fast float %2735, %2704
  %2739 = fadd fast float %2736, %2705
  %2740 = fadd fast float %2737, %2706
  %2741 = fsub fast float %2664, %2034
  %2742 = fmul fast float %2714, %2741
  %2743 = fadd fast float %2742, %2034
  br label %2789

; <label>:2744                                    ; preds = %2711
  %2745 = icmp eq i32 %2709, 1
  br i1 %2745, label %2746, label %2759

; <label>:2746                                    ; preds = %2744
  %2747 = fadd fast float %2437, -1.000000e+00
  %2748 = fadd fast float %2438, -1.000000e+00
  %2749 = fadd fast float %2439, -1.000000e+00
  %2750 = fmul fast float %2714, %2747
  %2751 = fmul fast float %2714, %2748
  %2752 = fmul fast float %2714, %2749
  %2753 = fadd fast float %2750, 1.000000e+00
  %2754 = fadd fast float %2751, 1.000000e+00
  %2755 = fadd fast float %2752, 1.000000e+00
  %2756 = fmul fast float %2753, %2701
  %2757 = fmul fast float %2754, %2702
  %2758 = fmul fast float %2755, %2703
  br label %2789

; <label>:2759                                    ; preds = %2744
  %2760 = icmp eq i32 %2709, 2
  br i1 %2760, label %2761, label %2789

; <label>:2761                                    ; preds = %2759
  %2762 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  %2763 = call float @dx.op.unary.f32(i32 24, float %2438)  ; Sqrt(value)
  %2764 = call float @dx.op.unary.f32(i32 24, float %2439)  ; Sqrt(value)
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fadd fast float %2763, -5.000000e-01
  %2767 = fadd fast float %2764, -5.000000e-01
  %2768 = fmul fast float %2765, %2714
  %2769 = fmul fast float %2766, %2714
  %2770 = fmul fast float %2767, %2714
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = fadd fast float %2769, 5.000000e-01
  %2773 = fadd fast float %2770, 5.000000e-01
  %2774 = fmul fast float %2771, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2701
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2701
  %2779 = fmul fast float %2772, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2702
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2702
  %2784 = fmul fast float %2773, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2703
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2703
  br label %2789

; <label>:2789                                    ; preds = %2761, %2759, %2746, %2716, %2700
  %2790 = phi float [ %2701, %2700 ], [ %2778, %2761 ], [ %2701, %2759 ], [ %2756, %2746 ], [ %2726, %2716 ]
  %2791 = phi float [ %2702, %2700 ], [ %2783, %2761 ], [ %2702, %2759 ], [ %2757, %2746 ], [ %2727, %2716 ]
  %2792 = phi float [ %2703, %2700 ], [ %2788, %2761 ], [ %2703, %2759 ], [ %2758, %2746 ], [ %2728, %2716 ]
  %2793 = phi float [ %2704, %2700 ], [ %2704, %2761 ], [ %2704, %2759 ], [ %2704, %2746 ], [ %2738, %2716 ]
  %2794 = phi float [ %2705, %2700 ], [ %2705, %2761 ], [ %2705, %2759 ], [ %2705, %2746 ], [ %2739, %2716 ]
  %2795 = phi float [ %2706, %2700 ], [ %2706, %2761 ], [ %2706, %2759 ], [ %2706, %2746 ], [ %2740, %2716 ]
  %2796 = phi float [ %2030, %2700 ], [ %2030, %2761 ], [ %2030, %2759 ], [ %2030, %2746 ], [ %2731, %2716 ]
  %2797 = phi float [ %2034, %2700 ], [ %2034, %2761 ], [ %2034, %2759 ], [ %2034, %2746 ], [ %2743, %2716 ]
  %2798 = and i32 %2708, 12
  %2799 = icmp eq i32 %2798, 12
  br i1 %2799, label %2906, label %2800

; <label>:2800                                    ; preds = %2789
  %2801 = and i32 %2708, 2097184
  %2802 = icmp eq i32 %2801, 2097184
  %2803 = select i1 %2802, float %2217, float 0.000000e+00
  %2804 = and i32 %2708, 4194336
  %2805 = icmp eq i32 %2804, 4194336
  %2806 = select i1 %2805, float %2217, float 0.000000e+00
  %2807 = and i32 %2708, 8388640
  %2808 = icmp eq i32 %2807, 8388640
  %2809 = select i1 %2808, float %2217, float 0.000000e+00
  %2810 = and i32 %2708, 1024
  %2811 = icmp ne i32 %2810, 0
  %2812 = select i1 %2811, float %2217, float 0.000000e+00
  %2813 = and i32 %2708, 2048
  %2814 = icmp ne i32 %2813, 0
  %2815 = select i1 %2814, float %2217, float 0.000000e+00
  %2816 = icmp eq i32 %2798, 0
  br i1 %2816, label %2817, label %2842

; <label>:2817                                    ; preds = %2800
  %2818 = fsub fast float %2518, %2019
  %2819 = fsub fast float %2519, %2020
  %2820 = fmul fast float %2803, %2818
  %2821 = fmul fast float %2803, %2819
  %2822 = fadd fast float %2820, %2019
  %2823 = fadd fast float %2821, %2020
  %2824 = fsub fast float %2520, %2032
  %2825 = fmul fast float %2806, %2824
  %2826 = fadd fast float %2825, %2032
  %2827 = fsub fast float %2517, %2031
  %2828 = fmul fast float %2809, %2827
  %2829 = fadd fast float %2828, %2031
  %2830 = fsub fast float %2623, %2027
  %2831 = fsub fast float %2624, %2028
  %2832 = fsub fast float %2625, %2029
  %2833 = fmul fast float %2812, %2830
  %2834 = fmul fast float %2812, %2831
  %2835 = fmul fast float %2812, %2832
  %2836 = fadd fast float %2833, %2027
  %2837 = fadd fast float %2834, %2028
  %2838 = fadd fast float %2835, %2029
  %2839 = fsub fast float %2651, %2033
  %2840 = fmul fast float %2815, %2839
  %2841 = fadd fast float %2840, %2033
  br label %2906

; <label>:2842                                    ; preds = %2800
  %2843 = icmp eq i32 %2798, 4
  br i1 %2843, label %2844, label %2884

; <label>:2844                                    ; preds = %2842
  %2845 = fmul fast float %2803, %2518
  %2846 = fmul fast float %2803, %2519
  %2847 = fadd fast float %2845, %2019
  %2848 = fadd fast float %2846, %2020
  %2849 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2850 = fsub fast float %2849, %2032
  %2851 = fmul fast float %2850, %2806
  %2852 = fadd fast float %2851, %2032
  %2853 = fadd fast float %2517, %2031
  %2854 = fmul fast float %2853, 0x3FF337FAE0000000
  %2855 = fmul fast float %2031, %2031
  %2856 = fmul fast float %2517, %2517
  %2857 = fadd fast float %2856, %2855
  %2858 = fmul fast float %2857, 0x3FE5152B00000000
  %2859 = fmul fast float %2031, 0xBFCC1F85E0000000
  %2860 = fmul fast float %2859, %2517
  %2861 = fadd fast float %2860, 0xBFE1363700000000
  %2862 = fadd fast float %2861, %2854
  %2863 = fsub fast float %2862, %2858
  %2864 = fmul fast float %2853, 0x3FBA6F0D00000000
  %2865 = fmul fast float %2857, 0x3FD0432880000000
  %2866 = fmul fast float %2031, 0xBFEF110800000000
  %2867 = fmul fast float %2866, %2517
  %2868 = fadd fast float %2867, 1.000000e+00
  %2869 = fsub fast float %2868, %2864
  %2870 = fadd fast float %2869, %2865
  %2871 = fdiv fast float %2863, %2870
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = fsub fast float %2872, %2031
  %2874 = fmul fast float %2873, %2809
  %2875 = fadd fast float %2874, %2031
  %2876 = fmul fast float %2812, %2623
  %2877 = fmul fast float %2812, %2624
  %2878 = fmul fast float %2812, %2625
  %2879 = fadd fast float %2876, %2027
  %2880 = fadd fast float %2877, %2028
  %2881 = fadd fast float %2878, %2029
  %2882 = fmul fast float %2815, %2651
  %2883 = fadd fast float %2882, %2033
  br label %2906

; <label>:2884                                    ; preds = %2842
  %2885 = icmp eq i32 %2798, 8
  br i1 %2885, label %2886, label %2906

; <label>:2886                                    ; preds = %2884
  %2887 = fmul fast float %2803, %2518
  %2888 = fmul fast float %2803, %2519
  %2889 = fadd fast float %2887, %2019
  %2890 = fadd fast float %2888, %2020
  %2891 = call float @dx.op.binary.f32(i32 36, float %2032, float %2520)  ; FMin(a,b)
  %2892 = fsub fast float %2891, %2032
  %2893 = fmul fast float %2892, %2806
  %2894 = fadd fast float %2893, %2032
  %2895 = fsub fast float %2517, %2031
  %2896 = fmul fast float %2809, %2895
  %2897 = fadd fast float %2896, %2031
  %2898 = fmul fast float %2812, %2623
  %2899 = fmul fast float %2812, %2624
  %2900 = fmul fast float %2812, %2625
  %2901 = fadd fast float %2898, %2027
  %2902 = fadd fast float %2899, %2028
  %2903 = fadd fast float %2900, %2029
  %2904 = fmul fast float %2815, %2651
  %2905 = fadd fast float %2904, %2033
  br label %2906

; <label>:2906                                    ; preds = %2886, %2884, %2844, %2817, %2789, %2216, %2035, %2018
  %2907 = phi float [ %2019, %2789 ], [ %2019, %2216 ], [ %2019, %2018 ], [ %2889, %2886 ], [ %2019, %2884 ], [ %2847, %2844 ], [ %2822, %2817 ], [ %2019, %2035 ]
  %2908 = phi float [ %2020, %2789 ], [ %2020, %2216 ], [ %2020, %2018 ], [ %2890, %2886 ], [ %2020, %2884 ], [ %2848, %2844 ], [ %2823, %2817 ], [ %2020, %2035 ]
  %2909 = phi float [ %2790, %2789 ], [ %2021, %2216 ], [ %2021, %2018 ], [ %2790, %2886 ], [ %2790, %2884 ], [ %2790, %2844 ], [ %2790, %2817 ], [ %2021, %2035 ]
  %2910 = phi float [ %2791, %2789 ], [ %2022, %2216 ], [ %2022, %2018 ], [ %2791, %2886 ], [ %2791, %2884 ], [ %2791, %2844 ], [ %2791, %2817 ], [ %2022, %2035 ]
  %2911 = phi float [ %2792, %2789 ], [ %2023, %2216 ], [ %2023, %2018 ], [ %2792, %2886 ], [ %2792, %2884 ], [ %2792, %2844 ], [ %2792, %2817 ], [ %2023, %2035 ]
  %2912 = phi float [ %2793, %2789 ], [ %2024, %2216 ], [ %2024, %2018 ], [ %2793, %2886 ], [ %2793, %2884 ], [ %2793, %2844 ], [ %2793, %2817 ], [ %2024, %2035 ]
  %2913 = phi float [ %2794, %2789 ], [ %2025, %2216 ], [ %2025, %2018 ], [ %2794, %2886 ], [ %2794, %2884 ], [ %2794, %2844 ], [ %2794, %2817 ], [ %2025, %2035 ]
  %2914 = phi float [ %2795, %2789 ], [ %2026, %2216 ], [ %2026, %2018 ], [ %2795, %2886 ], [ %2795, %2884 ], [ %2795, %2844 ], [ %2795, %2817 ], [ %2026, %2035 ]
  %2915 = phi float [ %2027, %2789 ], [ %2027, %2216 ], [ %2027, %2018 ], [ %2901, %2886 ], [ %2027, %2884 ], [ %2879, %2844 ], [ %2836, %2817 ], [ %2027, %2035 ]
  %2916 = phi float [ %2028, %2789 ], [ %2028, %2216 ], [ %2028, %2018 ], [ %2902, %2886 ], [ %2028, %2884 ], [ %2880, %2844 ], [ %2837, %2817 ], [ %2028, %2035 ]
  %2917 = phi float [ %2029, %2789 ], [ %2029, %2216 ], [ %2029, %2018 ], [ %2903, %2886 ], [ %2029, %2884 ], [ %2881, %2844 ], [ %2838, %2817 ], [ %2029, %2035 ]
  %2918 = phi float [ %2796, %2789 ], [ %2030, %2216 ], [ %2030, %2018 ], [ %2796, %2886 ], [ %2796, %2884 ], [ %2796, %2844 ], [ %2796, %2817 ], [ %2030, %2035 ]
  %2919 = phi float [ %2031, %2789 ], [ %2031, %2216 ], [ %2031, %2018 ], [ %2897, %2886 ], [ %2031, %2884 ], [ %2875, %2844 ], [ %2829, %2817 ], [ %2031, %2035 ]
  %2920 = phi float [ %2032, %2789 ], [ %2032, %2216 ], [ %2032, %2018 ], [ %2894, %2886 ], [ %2032, %2884 ], [ %2852, %2844 ], [ %2826, %2817 ], [ %2032, %2035 ]
  %2921 = phi float [ %2033, %2789 ], [ %2033, %2216 ], [ %2033, %2018 ], [ %2905, %2886 ], [ %2033, %2884 ], [ %2883, %2844 ], [ %2841, %2817 ], [ %2033, %2035 ]
  %2922 = phi float [ %2797, %2789 ], [ %2034, %2216 ], [ %2034, %2018 ], [ %2797, %2886 ], [ %2797, %2884 ], [ %2797, %2844 ], [ %2797, %2817 ], [ %2034, %2035 ]
  br i1 %448, label %3794, label %2923

; <label>:2923                                    ; preds = %2906
  %2924 = icmp ult i32 %502, 4
  %2925 = add i32 %60, 72
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %60, 76
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = or i32 %2930, %2927
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3794, label %2933

; <label>:2933                                    ; preds = %2923
  %2934 = and i32 %2927, 262144
  %2935 = icmp ne i32 %2934, 0
  %2936 = select i1 %2935, float %65, float 1.000000e+00
  %2937 = select i1 %2935, float %66, float 0.000000e+00
  %2938 = select i1 %2935, float %67, float 0.000000e+00
  %2939 = select i1 %2935, float %68, float 1.000000e+00
  %2940 = select i1 %2935, float %69, float %92
  %2941 = select i1 %2935, float %70, float %93
  %2942 = add i32 %60, 332
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = lshr i32 %2944, 16
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = fmul fast float %2946, 0x3F50624DE0000000
  %2948 = add i32 %60, 136
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 16
  %2952 = and i32 %2951, 255
  %2953 = lshr i32 %2950, 24
  %2954 = add i32 %60, 340
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 65535
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = lshr i32 %2956, 16
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = add i32 %60, 80
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = lshr i32 %2963, 22
  %2965 = shl nuw nsw i32 %2964, 5
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = shl i32 %2963, 4
  %2968 = and i32 %2967, 32752
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = lshr i32 %2963, 7
  %2971 = and i32 %2970, 32752
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2974 = extractvalue %dx.types.CBufRet.f32 %2973, 3
  %2975 = fmul fast float %2974, 1.000000e+03
  %2976 = fmul fast float %438, %2975
  %2977 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2978 = fadd fast float %2977, %428
  %2979 = fmul fast float %439, %2975
  %2980 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %2981 = fadd fast float %2980, %430
  %2982 = fmul fast float %2947, %2975
  %2983 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2984 = fmul fast float %2983, 0x401921FB60000000
  %2985 = fadd fast float %2984, %2966
  %2986 = call float @dx.op.unary.f32(i32 13, float %2985)  ; Sin(value)
  %2987 = call float @dx.op.unary.f32(i32 12, float %2985)  ; Cos(value)
  %2988 = fsub fast float -0.000000e+00, %2986
  %2989 = fadd fast float %2940, -5.000000e-01
  %2990 = fadd fast float %2941, -5.000000e-01
  %2991 = fmul fast float %2958, %2989
  %2992 = fmul fast float %2960, %2990
  %2993 = fadd fast float %2991, 5.000000e-01
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fmul fast float %2969, %2993
  %2996 = fmul fast float %2972, %2994
  %2997 = fmul fast float %2987, %2995
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2988, float %2996, float %2997)  ; FMad(a,b,c)
  %2999 = fmul fast float %2986, %2995
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2987, float %2996, float %2999)  ; FMad(a,b,c)
  %3001 = fadd fast float %2978, %2998
  %3002 = fadd fast float %2981, %3000
  %3003 = icmp ugt i32 %2952, 1
  %3004 = icmp ugt i32 %2950, 33554431
  %3005 = or i1 %3004, %3003
  br i1 %3005, label %3006, label %3031

; <label>:3006                                    ; preds = %2933
  %3007 = add i32 %60, 276
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = lshr i32 %3009, 16
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = fmul fast float %2974, %3011
  %3013 = call float @dx.op.unary.f32(i32 22, float %3012)  ; Frc(value)
  %3014 = mul nuw nsw i32 %2952, %2953
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3013, %3015
  %3017 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3018 = fptoui float %3017 to i32
  %3019 = urem i32 %3018, %2952
  %3020 = udiv i32 %3018, %2953
  %3021 = call float @dx.op.unary.f32(i32 22, float %3001)  ; Frc(value)
  %3022 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3023 = uitofp i32 %3019 to float
  %3024 = uitofp i32 %3020 to float
  %3025 = fadd fast float %3021, %3023
  %3026 = fadd fast float %3022, %3024
  %3027 = uitofp i32 %2952 to float
  %3028 = uitofp i32 %2953 to float
  %3029 = fdiv fast float %3025, %3027
  %3030 = fdiv fast float %3026, %3028
  br label %3031

; <label>:3031                                    ; preds = %3006, %2933
  %3032 = phi float [ %3029, %3006 ], [ %3001, %2933 ]
  %3033 = phi float [ %3030, %3006 ], [ %3002, %2933 ]
  %3034 = and i32 %2927, 256
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3082, label %3036

; <label>:3036                                    ; preds = %3031
  %3037 = add i32 %60, 436
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = add i32 %3039, 0
  %3041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3041, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = add i32 %60, 148
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = shl i32 %3046, 4
  %3048 = and i32 %3047, 32752
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = lshr i32 %3046, 7
  %3051 = and i32 %3050, 32752
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = fsub fast float 1.000000e+00, %497
  %3054 = call float @dx.op.binary.f32(i32 35, float %3053, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3055 = bitcast float %497 to i32
  %3056 = sitofp i32 %3055 to float
  %3057 = fadd fast float %3056, 0xC1CFBF8940000000
  %3058 = fmul fast float %3052, %3057
  %3059 = fadd fast float %3058, 0x41CFBF8940000000
  %3060 = fptosi float %3059 to i32
  %3061 = bitcast i32 %3060 to float
  %3062 = bitcast float %3054 to i32
  %3063 = sitofp i32 %3062 to float
  %3064 = fadd fast float %3063, 0xC1CFBF8940000000
  %3065 = fmul fast float %3064, %3052
  %3066 = fadd fast float %3065, 0x41CFBF8940000000
  %3067 = fptosi float %3066 to i32
  %3068 = bitcast i32 %3067 to float
  %3069 = fmul fast float %3061, %3049
  %3070 = fmul fast float %3068, %3049
  %3071 = fsub fast float %3054, %3069
  %3072 = fadd fast float %3070, %3054
  %3073 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3074 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3075 = fsub fast float %3043, %3073
  %3076 = fsub fast float %3074, %3073
  %3077 = bitcast float %3076 to i32
  %3078 = sub nsw i32 2129859010, %3077
  %3079 = bitcast i32 %3078 to float
  %3080 = fmul fast float %3079, %3075
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  br label %3082

; <label>:3082                                    ; preds = %3036, %3031
  %3083 = phi float [ %3081, %3036 ], [ %497, %3031 ]
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = and i32 %3085, 128
  %3087 = icmp eq i32 %3086, 0
  br i1 %3087, label %3104, label %3088

; <label>:3088                                    ; preds = %3082
  %3089 = add i32 %60, 420
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = add i32 %3091, 0
  %3093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3093, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3095 = extractvalue %dx.types.ResRet.f32 %3094, 0
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 524288
  %3099 = icmp ne i32 %3098, 0
  %3100 = fcmp fast ogt float %3095, 0x3FE0101020000000
  %3101 = select i1 %3100, float 1.000000e+00, float 0.000000e+00
  %3102 = select i1 %3099, float %3101, float %3095
  %3103 = fmul fast float %3102, %3083
  br label %3104

; <label>:3104                                    ; preds = %3088, %3082
  %3105 = phi float [ %3103, %3088 ], [ %3083, %3082 ]
  %3106 = fcmp fast ult float %3105, 0x3F70101020000000
  br i1 %3106, label %3794, label %3107

; <label>:3107                                    ; preds = %3104
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 16
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3310, label %3112

; <label>:3112                                    ; preds = %3107
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %60, 372
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %3117, 0
  %3119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3119, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 0
  %3122 = extractvalue %dx.types.ResRet.f32 %3120, 1
  %3123 = extractvalue %dx.types.ResRet.f32 %3120, 2
  %3124 = extractvalue %dx.types.ResRet.f32 %3120, 3
  %3125 = and i32 %3114, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = lshr i32 %3114, 8
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = fmul fast float %3124, %3126
  %3131 = fadd fast float %3130, %3129
  %3132 = fmul fast float %3131, 0x3F70101000000000
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 512
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3145, label %3137

; <label>:3137                                    ; preds = %3112
  %3138 = add i32 %60, 452
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  br label %3145

; <label>:3145                                    ; preds = %3137, %3112
  %3146 = phi float [ %3144, %3137 ], [ 1.000000e+00, %3112 ]
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 33554432
  %3150 = icmp eq i32 %3149, 0
  br i1 %3150, label %3257, label %3151

; <label>:3151                                    ; preds = %3145
  %3152 = add i32 %60, 272
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 65535
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = lshr i32 %3154, 16
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = add i32 %60, 276
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = lshr i32 %3165, 24
  %3167 = uitofp i32 %3166 to float
  %3168 = fmul fast float %3167, 0x3F70101020000000
  %3169 = and i32 %3165, 255
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101020000000
  %3172 = lshr i32 %3165, 8
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3174, 0x3F70101020000000
  %3176 = lshr i32 %3165, 16
  %3177 = and i32 %3176, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = add i32 %60, 268
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = lshr i32 %3182, 24
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = and i32 %3182, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = lshr i32 %3182, 8
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = lshr i32 %3182, 16
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = bitcast float %3121 to i32
  %3198 = ashr i32 %3197, 1
  %3199 = sub nsw i32 1597463174, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3121, 5.000000e-01
  %3202 = fmul fast float %3200, %3200
  %3203 = fmul fast float %3202, %3201
  %3204 = fsub fast float 1.500000e+00, %3203
  %3205 = fmul fast float %3200, %3121
  %3206 = fmul fast float %3205, %3204
  %3207 = bitcast float %3122 to i32
  %3208 = ashr i32 %3207, 1
  %3209 = sub nsw i32 1597463174, %3208
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3122, 5.000000e-01
  %3212 = fmul fast float %3210, %3210
  %3213 = fmul fast float %3212, %3211
  %3214 = fsub fast float 1.500000e+00, %3213
  %3215 = fmul fast float %3210, %3122
  %3216 = fmul fast float %3215, %3214
  %3217 = bitcast float %3123 to i32
  %3218 = ashr i32 %3217, 1
  %3219 = sub nsw i32 1597463174, %3218
  %3220 = bitcast i32 %3219 to float
  %3221 = fmul fast float %3123, 5.000000e-01
  %3222 = fmul fast float %3220, %3220
  %3223 = fmul fast float %3222, %3221
  %3224 = fsub fast float 1.500000e+00, %3223
  %3225 = fmul fast float %3220, %3123
  %3226 = fmul fast float %3225, %3224
  %3227 = fsub fast float %3206, %3188
  %3228 = fsub fast float %3216, %3192
  %3229 = fsub fast float %3226, %3196
  %3230 = fmul fast float %3227, %3156
  %3231 = fmul fast float %3228, %3158
  %3232 = fmul fast float %3229, %3163
  %3233 = fadd fast float %3230, %3171
  %3234 = fadd fast float %3231, %3175
  %3235 = fadd fast float %3232, %3179
  %3236 = call float @dx.op.unary.f32(i32 7, float %3233)  ; Saturate(value)
  %3237 = call float @dx.op.unary.f32(i32 7, float %3234)  ; Saturate(value)
  %3238 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  %3239 = fmul fast float %3236, %3236
  %3240 = fmul fast float %3237, %3237
  %3241 = fmul fast float %3238, %3238
  %3242 = fsub fast float %3239, %3121
  %3243 = fsub fast float %3240, %3122
  %3244 = fsub fast float %3241, %3123
  %3245 = fmul fast float %3242, %3146
  %3246 = fmul fast float %3243, %3146
  %3247 = fmul fast float %3244, %3146
  %3248 = fadd fast float %3245, %3121
  %3249 = fadd fast float %3246, %3122
  %3250 = fadd fast float %3247, %3123
  %3251 = fadd fast float %3168, %3132
  %3252 = fsub fast float %3251, %3185
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3254 = fsub fast float %3253, %3132
  %3255 = fmul fast float %3254, %3146
  %3256 = fadd fast float %3255, %3132
  br label %3310

; <label>:3257                                    ; preds = %3145
  %3258 = and i32 %3148, 134217728
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3294, label %3260

; <label>:3260                                    ; preds = %3257
  %3261 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %3262 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %3263 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3264 = fadd fast float %3261, -5.000000e-01
  %3265 = fadd fast float %3262, -5.000000e-01
  %3266 = fadd fast float %3263, -5.000000e-01
  %3267 = fmul fast float %3264, %3146
  %3268 = fmul fast float %3265, %3146
  %3269 = fmul fast float %3266, %3146
  %3270 = fadd fast float %3267, 5.000000e-01
  %3271 = fadd fast float %3268, 5.000000e-01
  %3272 = fadd fast float %3269, 5.000000e-01
  %3273 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3274 = call float @dx.op.unary.f32(i32 24, float %3122)  ; Sqrt(value)
  %3275 = call float @dx.op.unary.f32(i32 24, float %3123)  ; Sqrt(value)
  %3276 = fmul fast float %3270, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3273
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3273
  %3281 = fmul fast float %3271, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3274
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3274
  %3286 = fmul fast float %3272, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3275
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3275
  %3291 = fmul fast float %3280, %3280
  %3292 = fmul fast float %3285, %3285
  %3293 = fmul fast float %3290, %3290
  br label %3310

; <label>:3294                                    ; preds = %3257
  %3295 = fmul fast float %415, %415
  %3296 = fmul fast float %419, %419
  %3297 = fmul fast float %423, %423
  %3298 = fadd fast float %3295, -1.000000e+00
  %3299 = fadd fast float %3296, -1.000000e+00
  %3300 = fadd fast float %3297, -1.000000e+00
  %3301 = fmul fast float %3146, %3298
  %3302 = fmul fast float %3146, %3299
  %3303 = fmul fast float %3146, %3300
  %3304 = fadd fast float %3301, 1.000000e+00
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fmul fast float %3304, %3121
  %3308 = fmul fast float %3305, %3122
  %3309 = fmul fast float %3306, %3123
  br label %3310

; <label>:3310                                    ; preds = %3294, %3260, %3151, %3107
  %3311 = phi float [ %3256, %3151 ], [ %3132, %3260 ], [ %3132, %3294 ], [ 0x3FA23C0BE0000000, %3107 ]
  %3312 = phi float [ %3248, %3151 ], [ %3291, %3260 ], [ %3307, %3294 ], [ 1.000000e+00, %3107 ]
  %3313 = phi float [ %3249, %3151 ], [ %3292, %3260 ], [ %3308, %3294 ], [ 1.000000e+00, %3107 ]
  %3314 = phi float [ %3250, %3151 ], [ %3293, %3260 ], [ %3309, %3294 ], [ 1.000000e+00, %3107 ]
  %3315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3316 = extractvalue %dx.types.CBufRet.i32 %3315, 1
  %3317 = and i32 %3316, 1
  %3318 = icmp ne i32 %3317, 0
  %3319 = add i32 %60, 356
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 32
  %3323 = icmp ne i32 %3322, 0
  %3324 = and i1 %3318, %3323
  %3325 = select i1 %3324, float 1.000000e+00, float %3312
  %3326 = select i1 %3324, float 0x3FD3333340000000, float %3313
  %3327 = select i1 %3324, float 0x3FD3333340000000, float %3314
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = and i32 %3329, 32
  %3331 = icmp eq i32 %3330, 0
  br i1 %3331, label %3404, label %3332

; <label>:3332                                    ; preds = %3310
  %3333 = add i32 %60, 140
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = add i32 %60, 388
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %3338, 0
  %3340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3341 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3340, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = and i32 %3335, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = lshr i32 %3335, 8
  %3349 = and i32 %3348, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = lshr i32 %3335, 16
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = fmul fast float %3353, 0x3F70101000000000
  %3355 = fmul fast float %3342, %3347
  %3356 = fadd fast float %3355, %3350
  %3357 = fmul fast float %3356, 0x3F70101000000000
  %3358 = fadd fast float %3343, -5.000000e-01
  %3359 = fadd fast float %3345, -5.000000e-01
  %3360 = fmul fast float %3358, %3354
  %3361 = fmul fast float %3359, %3354
  %3362 = fadd fast float %3360, 5.000000e-01
  %3363 = fadd fast float %3361, 5.000000e-01
  %3364 = fmul fast float %3362, 2.000000e+00
  %3365 = fadd fast float %3364, -1.000000e+00
  %3366 = fmul fast float %3363, 2.000000e+00
  %3367 = fadd fast float %3366, -1.000000e+00
  %3368 = fadd fast float %3365, %3367
  %3369 = fmul fast float %3368, 5.000000e-01
  %3370 = fsub fast float %3365, %3367
  %3371 = fmul fast float %3370, 5.000000e-01
  %3372 = call float @dx.op.unary.f32(i32 6, float %3369)  ; FAbs(value)
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3375 = fsub fast float %3373, %3374
  %3376 = call float @dx.op.dot3.f32(i32 55, float %3369, float %3371, float %3375, float %3369, float %3371, float %3375)  ; Dot3(ax,ay,az,bx,by,bz)
  %3377 = call float @dx.op.unary.f32(i32 25, float %3376)  ; Rsqrt(value)
  %3378 = fmul fast float %3369, %3377
  %3379 = fmul fast float %3371, %3377
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 67108864
  %3383 = icmp eq i32 %3382, 0
  br i1 %3383, label %3400, label %3384

; <label>:3384                                    ; preds = %3332
  %3385 = add i32 %60, 328
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = and i32 %3387, 65535
  %3389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3388)  ; LegacyF16ToF32(value)
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = and i32 %3391, 65535
  %3393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3392)  ; LegacyF16ToF32(value)
  %3394 = lshr i32 %3387, 16
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = fsub fast float %3357, %3395
  %3397 = fmul fast float %3396, %3389
  %3398 = fadd fast float %3397, %3393
  %3399 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  br label %3400

; <label>:3400                                    ; preds = %3384, %3332
  %3401 = phi float [ %3399, %3384 ], [ %3357, %3332 ]
  %3402 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2936, float %2937)  ; Dot2(ax,ay,bx,by)
  %3403 = call float @dx.op.dot2.f32(i32 54, float %3378, float %3379, float %2938, float %2939)  ; Dot2(ax,ay,bx,by)
  br label %3404

; <label>:3404                                    ; preds = %3400, %3310
  %3405 = phi float [ %3401, %3400 ], [ 0x3FD6666660000000, %3310 ]
  %3406 = phi float [ %3402, %3400 ], [ 0.000000e+00, %3310 ]
  %3407 = phi float [ %3403, %3400 ], [ 0.000000e+00, %3310 ]
  %3408 = phi float [ %3344, %3400 ], [ 1.000000e+00, %3310 ]
  %3409 = add i32 %60, 208
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = lshr i32 %3411, 22
  %3413 = shl nuw nsw i32 %3412, 5
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = and i32 %3416, 64
  %3418 = icmp eq i32 %3417, 0
  br i1 %3418, label %3452, label %3419

; <label>:3419                                    ; preds = %3404
  %3420 = add i32 %60, 404
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = add i32 %3422, 0
  %3424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 131072
  %3428 = icmp eq i32 %3427, 0
  %3429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3424, %dx.types.Handle %110, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = fmul fast float %3430, %403
  %3434 = fmul fast float %3431, %406
  %3435 = fmul fast float %3432, %409
  br i1 %3428, label %3442, label %3436

; <label>:3436                                    ; preds = %3419
  %3437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3438 = extractvalue %dx.types.CBufRet.f32 %3437, 0
  %3439 = fmul fast float %3438, %3433
  %3440 = fmul fast float %3438, %3434
  %3441 = fmul fast float %3438, %3435
  br label %3442

; <label>:3442                                    ; preds = %3436, %3419
  %3443 = phi float [ %3439, %3436 ], [ %3433, %3419 ]
  %3444 = phi float [ %3440, %3436 ], [ %3434, %3419 ]
  %3445 = phi float [ %3441, %3436 ], [ %3435, %3419 ]
  %3446 = fmul fast float %3443, %3414
  %3447 = select i1 %260, float %3446, float %3443
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3447, float %3444, float %3445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = select i1 %260, float 0.000000e+00, float %3443
  %3450 = select i1 %260, float %3448, float %3444
  %3451 = select i1 %260, float 0.000000e+00, float %3445
  br label %3452

; <label>:3452                                    ; preds = %3442, %3404
  %3453 = phi float [ %3449, %3442 ], [ 0.000000e+00, %3404 ]
  %3454 = phi float [ %3450, %3442 ], [ 0.000000e+00, %3404 ]
  %3455 = phi float [ %3451, %3442 ], [ 0.000000e+00, %3404 ]
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 1024
  %3459 = icmp eq i32 %3458, 0
  br i1 %3459, label %3490, label %3460

; <label>:3460                                    ; preds = %3452
  %3461 = add i32 %60, 200
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 255
  %3465 = uitofp i32 %3464 to float
  %3466 = fmul fast float %3465, 0x3F70101020000000
  %3467 = lshr i32 %3463, 8
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = lshr i32 %3463, 16
  %3472 = and i32 %3471, 255
  %3473 = uitofp i32 %3472 to float
  %3474 = fmul fast float %3473, 0x3F70101020000000
  %3475 = fmul fast float %3466, %3466
  %3476 = fmul fast float %3470, %3470
  %3477 = fmul fast float %3474, %3474
  %3478 = add i32 %60, 468
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = fmul fast float %3475, %3484
  %3488 = fmul fast float %3476, %3485
  %3489 = fmul fast float %3477, %3486
  br label %3490

; <label>:3490                                    ; preds = %3460, %3452
  %3491 = phi float [ %3487, %3460 ], [ 0.000000e+00, %3452 ]
  %3492 = phi float [ %3488, %3460 ], [ 0.000000e+00, %3452 ]
  %3493 = phi float [ %3489, %3460 ], [ 0.000000e+00, %3452 ]
  %3494 = fcmp fast ogt float %3491, 0.000000e+00
  %3495 = fcmp fast ogt float %3492, 0.000000e+00
  %3496 = fcmp fast ogt float %3493, 0.000000e+00
  %3497 = call float @dx.op.unary.f32(i32 23, float %3491)  ; Log(value)
  %3498 = call float @dx.op.unary.f32(i32 23, float %3492)  ; Log(value)
  %3499 = call float @dx.op.unary.f32(i32 23, float %3493)  ; Log(value)
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = lshr i32 %3501, 7
  %3503 = and i32 %3502, 32752
  %3504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3503)  ; LegacyF16ToF32(value)
  %3505 = fmul fast float %3497, 0xBFE62E4300000000
  %3506 = fmul fast float %3505, %3504
  %3507 = fmul fast float %3498, 0xBFE62E4300000000
  %3508 = fmul fast float %3507, %3504
  %3509 = fmul fast float %3499, 0xBFE62E4300000000
  %3510 = fmul fast float %3509, %3504
  %3511 = select i1 %3494, float %3506, float 1.270000e+02
  %3512 = select i1 %3495, float %3508, float 1.270000e+02
  %3513 = select i1 %3496, float %3510, float 1.270000e+02
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 10240
  %3517 = icmp eq i32 %3516, 0
  br i1 %3517, label %3538, label %3518

; <label>:3518                                    ; preds = %3490
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 2048
  %3522 = icmp eq i32 %3521, 0
  br i1 %3522, label %3538, label %3523

; <label>:3523                                    ; preds = %3518
  %3524 = add i32 %60, 484
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = add i32 %3526, 0
  %3528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3528, %dx.types.Handle %111, float %3032, float %3033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = shl i32 %3532, 4
  %3534 = and i32 %3533, 32752
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = fmul fast float %3535, %3530
  %3537 = call float @dx.op.binary.f32(i32 35, float %3536, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3538

; <label>:3538                                    ; preds = %3523, %3518, %3490
  %3539 = phi float [ %3537, %3523 ], [ 0x3F70101020000000, %3518 ], [ 0x3F70101020000000, %3490 ]
  %3540 = add i32 %60, 144
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = lshr i32 %3542, 8
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = call float @dx.op.dot3.f32(i32 55, float %3325, float %3326, float %3327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = fmul fast float %3547, %3548
  %3550 = fadd fast float %3549, %3544
  %3551 = fmul fast float %3550, 0x3F70101020000000
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  br i1 %2924, label %3553, label %3588

; <label>:3553                                    ; preds = %3538
  %3554 = fmul fast float %3539, 2.000000e+00
  %3555 = fcmp fast olt float %3511, 1.270000e+02
  %3556 = fcmp fast olt float %3512, 1.270000e+02
  %3557 = fcmp fast olt float %3513, 1.270000e+02
  %3558 = fmul fast float %3511, 0xBFF7154760000000
  %3559 = fmul fast float %3558, %3554
  %3560 = fmul fast float %3512, 0xBFF7154760000000
  %3561 = fmul fast float %3560, %3554
  %3562 = fmul fast float %3513, 0xBFF7154760000000
  %3563 = fmul fast float %3562, %3554
  %3564 = call float @dx.op.unary.f32(i32 21, float %3559)  ; Exp(value)
  %3565 = call float @dx.op.unary.f32(i32 21, float %3561)  ; Exp(value)
  %3566 = call float @dx.op.unary.f32(i32 21, float %3563)  ; Exp(value)
  %3567 = call float @dx.op.unary.f32(i32 7, float %3564)  ; Saturate(value)
  %3568 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3569 = call float @dx.op.unary.f32(i32 7, float %3566)  ; Saturate(value)
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = select i1 %3555, float %3570, float -1.000000e+00
  %3572 = fadd fast float %3568, -1.000000e+00
  %3573 = select i1 %3556, float %3572, float -1.000000e+00
  %3574 = fadd fast float %3569, -1.000000e+00
  %3575 = select i1 %3557, float %3574, float -1.000000e+00
  %3576 = fmul fast float %3571, %3105
  %3577 = fmul fast float %3573, %3105
  %3578 = fmul fast float %3575, %3105
  %3579 = fadd fast float %3576, 1.000000e+00
  %3580 = fadd fast float %3577, 1.000000e+00
  %3581 = fadd fast float %3578, 1.000000e+00
  %3582 = fmul fast float %3579, %2909
  %3583 = fmul fast float %3580, %2910
  %3584 = fmul fast float %3581, %2911
  %3585 = fmul fast float %3579, %2912
  %3586 = fmul fast float %3580, %2913
  %3587 = fmul fast float %3581, %2914
  br label %3588

; <label>:3588                                    ; preds = %3553, %3538
  %3589 = phi float [ %3582, %3553 ], [ %2909, %3538 ]
  %3590 = phi float [ %3583, %3553 ], [ %2910, %3538 ]
  %3591 = phi float [ %3584, %3553 ], [ %2911, %3538 ]
  %3592 = phi float [ %3585, %3553 ], [ %2912, %3538 ]
  %3593 = phi float [ %3586, %3553 ], [ %2913, %3538 ]
  %3594 = phi float [ %3587, %3553 ], [ %2914, %3538 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 3
  %3598 = icmp eq i32 %3597, 3
  br i1 %3598, label %3677, label %3599

; <label>:3599                                    ; preds = %3588
  %3600 = and i32 %3596, 16
  %3601 = icmp ne i32 %3600, 0
  %3602 = select i1 %3601, float %3105, float 0.000000e+00
  %3603 = icmp eq i32 %3597, 0
  br i1 %3603, label %3604, label %3632

; <label>:3604                                    ; preds = %3599
  %3605 = and i32 %3596, 64
  %3606 = icmp ne i32 %3605, 0
  %3607 = select i1 %3606, float %3105, float 0.000000e+00
  %3608 = fsub fast float %3325, %3589
  %3609 = fsub fast float %3326, %3590
  %3610 = fsub fast float %3327, %3591
  %3611 = fmul fast float %3602, %3608
  %3612 = fmul fast float %3602, %3609
  %3613 = fmul fast float %3602, %3610
  %3614 = fadd fast float %3611, %3589
  %3615 = fadd fast float %3612, %3590
  %3616 = fadd fast float %3613, %3591
  %3617 = fsub fast float %3311, %2918
  %3618 = fmul fast float %3602, %3617
  %3619 = fadd fast float %3618, %2918
  %3620 = fsub fast float %3453, %3592
  %3621 = fsub fast float %3454, %3593
  %3622 = fsub fast float %3455, %3594
  %3623 = fmul fast float %3607, %3620
  %3624 = fmul fast float %3607, %3621
  %3625 = fmul fast float %3607, %3622
  %3626 = fadd fast float %3623, %3592
  %3627 = fadd fast float %3624, %3593
  %3628 = fadd fast float %3625, %3594
  %3629 = fsub fast float %3552, %2922
  %3630 = fmul fast float %3602, %3629
  %3631 = fadd fast float %3630, %2922
  br label %3677

; <label>:3632                                    ; preds = %3599
  %3633 = icmp eq i32 %3597, 1
  br i1 %3633, label %3634, label %3647

; <label>:3634                                    ; preds = %3632
  %3635 = fadd fast float %3325, -1.000000e+00
  %3636 = fadd fast float %3326, -1.000000e+00
  %3637 = fadd fast float %3327, -1.000000e+00
  %3638 = fmul fast float %3602, %3635
  %3639 = fmul fast float %3602, %3636
  %3640 = fmul fast float %3602, %3637
  %3641 = fadd fast float %3638, 1.000000e+00
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fmul fast float %3641, %3589
  %3645 = fmul fast float %3642, %3590
  %3646 = fmul fast float %3643, %3591
  br label %3677

; <label>:3647                                    ; preds = %3632
  %3648 = icmp eq i32 %3597, 2
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3647
  %3650 = call float @dx.op.unary.f32(i32 24, float %3325)  ; Sqrt(value)
  %3651 = call float @dx.op.unary.f32(i32 24, float %3326)  ; Sqrt(value)
  %3652 = call float @dx.op.unary.f32(i32 24, float %3327)  ; Sqrt(value)
  %3653 = fadd fast float %3650, -5.000000e-01
  %3654 = fadd fast float %3651, -5.000000e-01
  %3655 = fadd fast float %3652, -5.000000e-01
  %3656 = fmul fast float %3653, %3602
  %3657 = fmul fast float %3654, %3602
  %3658 = fmul fast float %3655, %3602
  %3659 = fadd fast float %3656, 5.000000e-01
  %3660 = fadd fast float %3657, 5.000000e-01
  %3661 = fadd fast float %3658, 5.000000e-01
  %3662 = fmul fast float %3659, 2.000000e+00
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3589
  %3665 = fadd fast float %3664, %3662
  %3666 = fmul fast float %3665, %3589
  %3667 = fmul fast float %3660, 2.000000e+00
  %3668 = fsub fast float 1.000000e+00, %3667
  %3669 = fmul fast float %3668, %3590
  %3670 = fadd fast float %3669, %3667
  %3671 = fmul fast float %3670, %3590
  %3672 = fmul fast float %3661, 2.000000e+00
  %3673 = fsub fast float 1.000000e+00, %3672
  %3674 = fmul fast float %3673, %3591
  %3675 = fadd fast float %3674, %3672
  %3676 = fmul fast float %3675, %3591
  br label %3677

; <label>:3677                                    ; preds = %3649, %3647, %3634, %3604, %3588
  %3678 = phi float [ %3589, %3588 ], [ %3666, %3649 ], [ %3589, %3647 ], [ %3644, %3634 ], [ %3614, %3604 ]
  %3679 = phi float [ %3590, %3588 ], [ %3671, %3649 ], [ %3590, %3647 ], [ %3645, %3634 ], [ %3615, %3604 ]
  %3680 = phi float [ %3591, %3588 ], [ %3676, %3649 ], [ %3591, %3647 ], [ %3646, %3634 ], [ %3616, %3604 ]
  %3681 = phi float [ %3592, %3588 ], [ %3592, %3649 ], [ %3592, %3647 ], [ %3592, %3634 ], [ %3626, %3604 ]
  %3682 = phi float [ %3593, %3588 ], [ %3593, %3649 ], [ %3593, %3647 ], [ %3593, %3634 ], [ %3627, %3604 ]
  %3683 = phi float [ %3594, %3588 ], [ %3594, %3649 ], [ %3594, %3647 ], [ %3594, %3634 ], [ %3628, %3604 ]
  %3684 = phi float [ %2918, %3588 ], [ %2918, %3649 ], [ %2918, %3647 ], [ %2918, %3634 ], [ %3619, %3604 ]
  %3685 = phi float [ %2922, %3588 ], [ %2922, %3649 ], [ %2922, %3647 ], [ %2922, %3634 ], [ %3631, %3604 ]
  %3686 = and i32 %3596, 12
  %3687 = icmp eq i32 %3686, 12
  br i1 %3687, label %3794, label %3688

; <label>:3688                                    ; preds = %3677
  %3689 = and i32 %3596, 2097184
  %3690 = icmp eq i32 %3689, 2097184
  %3691 = select i1 %3690, float %3105, float 0.000000e+00
  %3692 = and i32 %3596, 4194336
  %3693 = icmp eq i32 %3692, 4194336
  %3694 = select i1 %3693, float %3105, float 0.000000e+00
  %3695 = and i32 %3596, 8388640
  %3696 = icmp eq i32 %3695, 8388640
  %3697 = select i1 %3696, float %3105, float 0.000000e+00
  %3698 = and i32 %3596, 1024
  %3699 = icmp ne i32 %3698, 0
  %3700 = select i1 %3699, float %3105, float 0.000000e+00
  %3701 = and i32 %3596, 2048
  %3702 = icmp ne i32 %3701, 0
  %3703 = select i1 %3702, float %3105, float 0.000000e+00
  %3704 = icmp eq i32 %3686, 0
  br i1 %3704, label %3705, label %3730

; <label>:3705                                    ; preds = %3688
  %3706 = fsub fast float %3406, %2907
  %3707 = fsub fast float %3407, %2908
  %3708 = fmul fast float %3691, %3706
  %3709 = fmul fast float %3691, %3707
  %3710 = fadd fast float %3708, %2907
  %3711 = fadd fast float %3709, %2908
  %3712 = fsub fast float %3408, %2920
  %3713 = fmul fast float %3694, %3712
  %3714 = fadd fast float %3713, %2920
  %3715 = fsub fast float %3405, %2919
  %3716 = fmul fast float %3697, %3715
  %3717 = fadd fast float %3716, %2919
  %3718 = fsub fast float %3511, %2915
  %3719 = fsub fast float %3512, %2916
  %3720 = fsub fast float %3513, %2917
  %3721 = fmul fast float %3700, %3718
  %3722 = fmul fast float %3700, %3719
  %3723 = fmul fast float %3700, %3720
  %3724 = fadd fast float %3721, %2915
  %3725 = fadd fast float %3722, %2916
  %3726 = fadd fast float %3723, %2917
  %3727 = fsub fast float %3539, %2921
  %3728 = fmul fast float %3703, %3727
  %3729 = fadd fast float %3728, %2921
  br label %3794

; <label>:3730                                    ; preds = %3688
  %3731 = icmp eq i32 %3686, 4
  br i1 %3731, label %3732, label %3772

; <label>:3732                                    ; preds = %3730
  %3733 = fmul fast float %3691, %3406
  %3734 = fmul fast float %3691, %3407
  %3735 = fadd fast float %3733, %2907
  %3736 = fadd fast float %3734, %2908
  %3737 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3738 = fsub fast float %3737, %2920
  %3739 = fmul fast float %3738, %3694
  %3740 = fadd fast float %3739, %2920
  %3741 = fadd fast float %3405, %2919
  %3742 = fmul fast float %3741, 0x3FF337FAE0000000
  %3743 = fmul fast float %2919, %2919
  %3744 = fmul fast float %3405, %3405
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3745, 0x3FE5152B00000000
  %3747 = fmul fast float %2919, 0xBFCC1F85E0000000
  %3748 = fmul fast float %3747, %3405
  %3749 = fadd fast float %3748, 0xBFE1363700000000
  %3750 = fadd fast float %3749, %3742
  %3751 = fsub fast float %3750, %3746
  %3752 = fmul fast float %3741, 0x3FBA6F0D00000000
  %3753 = fmul fast float %3745, 0x3FD0432880000000
  %3754 = fmul fast float %2919, 0xBFEF110800000000
  %3755 = fmul fast float %3754, %3405
  %3756 = fadd fast float %3755, 1.000000e+00
  %3757 = fsub fast float %3756, %3752
  %3758 = fadd fast float %3757, %3753
  %3759 = fdiv fast float %3751, %3758
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fsub fast float %3760, %2919
  %3762 = fmul fast float %3761, %3697
  %3763 = fadd fast float %3762, %2919
  %3764 = fmul fast float %3700, %3511
  %3765 = fmul fast float %3700, %3512
  %3766 = fmul fast float %3700, %3513
  %3767 = fadd fast float %3764, %2915
  %3768 = fadd fast float %3765, %2916
  %3769 = fadd fast float %3766, %2917
  %3770 = fmul fast float %3703, %3539
  %3771 = fadd fast float %3770, %2921
  br label %3794

; <label>:3772                                    ; preds = %3730
  %3773 = icmp eq i32 %3686, 8
  br i1 %3773, label %3774, label %3794

; <label>:3774                                    ; preds = %3772
  %3775 = fmul fast float %3691, %3406
  %3776 = fmul fast float %3691, %3407
  %3777 = fadd fast float %3775, %2907
  %3778 = fadd fast float %3776, %2908
  %3779 = call float @dx.op.binary.f32(i32 36, float %2920, float %3408)  ; FMin(a,b)
  %3780 = fsub fast float %3779, %2920
  %3781 = fmul fast float %3780, %3694
  %3782 = fadd fast float %3781, %2920
  %3783 = fsub fast float %3405, %2919
  %3784 = fmul fast float %3697, %3783
  %3785 = fadd fast float %3784, %2919
  %3786 = fmul fast float %3700, %3511
  %3787 = fmul fast float %3700, %3512
  %3788 = fmul fast float %3700, %3513
  %3789 = fadd fast float %3786, %2915
  %3790 = fadd fast float %3787, %2916
  %3791 = fadd fast float %3788, %2917
  %3792 = fmul fast float %3703, %3539
  %3793 = fadd fast float %3792, %2921
  br label %3794

; <label>:3794                                    ; preds = %3774, %3772, %3732, %3705, %3677, %3104, %2923, %2906
  %3795 = phi float [ %2907, %3677 ], [ %2907, %3104 ], [ %2907, %2906 ], [ %2907, %2923 ], [ %3710, %3705 ], [ %3735, %3732 ], [ %2907, %3772 ], [ %3777, %3774 ]
  %3796 = phi float [ %2908, %3677 ], [ %2908, %3104 ], [ %2908, %2906 ], [ %2908, %2923 ], [ %3711, %3705 ], [ %3736, %3732 ], [ %2908, %3772 ], [ %3778, %3774 ]
  %3797 = phi float [ %3678, %3677 ], [ %2909, %3104 ], [ %2909, %2906 ], [ %2909, %2923 ], [ %3678, %3705 ], [ %3678, %3732 ], [ %3678, %3772 ], [ %3678, %3774 ]
  %3798 = phi float [ %3679, %3677 ], [ %2910, %3104 ], [ %2910, %2906 ], [ %2910, %2923 ], [ %3679, %3705 ], [ %3679, %3732 ], [ %3679, %3772 ], [ %3679, %3774 ]
  %3799 = phi float [ %3680, %3677 ], [ %2911, %3104 ], [ %2911, %2906 ], [ %2911, %2923 ], [ %3680, %3705 ], [ %3680, %3732 ], [ %3680, %3772 ], [ %3680, %3774 ]
  %3800 = phi float [ %3681, %3677 ], [ %2912, %3104 ], [ %2912, %2906 ], [ %2912, %2923 ], [ %3681, %3705 ], [ %3681, %3732 ], [ %3681, %3772 ], [ %3681, %3774 ]
  %3801 = phi float [ %3682, %3677 ], [ %2913, %3104 ], [ %2913, %2906 ], [ %2913, %2923 ], [ %3682, %3705 ], [ %3682, %3732 ], [ %3682, %3772 ], [ %3682, %3774 ]
  %3802 = phi float [ %3683, %3677 ], [ %2914, %3104 ], [ %2914, %2906 ], [ %2914, %2923 ], [ %3683, %3705 ], [ %3683, %3732 ], [ %3683, %3772 ], [ %3683, %3774 ]
  %3803 = phi float [ %2915, %3677 ], [ %2915, %3104 ], [ %2915, %2906 ], [ %2915, %2923 ], [ %3724, %3705 ], [ %3767, %3732 ], [ %2915, %3772 ], [ %3789, %3774 ]
  %3804 = phi float [ %2916, %3677 ], [ %2916, %3104 ], [ %2916, %2906 ], [ %2916, %2923 ], [ %3725, %3705 ], [ %3768, %3732 ], [ %2916, %3772 ], [ %3790, %3774 ]
  %3805 = phi float [ %2917, %3677 ], [ %2917, %3104 ], [ %2917, %2906 ], [ %2917, %2923 ], [ %3726, %3705 ], [ %3769, %3732 ], [ %2917, %3772 ], [ %3791, %3774 ]
  %3806 = phi float [ %3684, %3677 ], [ %2918, %3104 ], [ %2918, %2906 ], [ %2918, %2923 ], [ %3684, %3705 ], [ %3684, %3732 ], [ %3684, %3772 ], [ %3684, %3774 ]
  %3807 = phi float [ %2919, %3677 ], [ %2919, %3104 ], [ %2919, %2906 ], [ %2919, %2923 ], [ %3717, %3705 ], [ %3763, %3732 ], [ %2919, %3772 ], [ %3785, %3774 ]
  %3808 = phi float [ %2920, %3677 ], [ %2920, %3104 ], [ %2920, %2906 ], [ %2920, %2923 ], [ %3714, %3705 ], [ %3740, %3732 ], [ %2920, %3772 ], [ %3782, %3774 ]
  %3809 = phi float [ %2921, %3677 ], [ %2921, %3104 ], [ %2921, %2906 ], [ %2921, %2923 ], [ %3729, %3705 ], [ %3771, %3732 ], [ %2921, %3772 ], [ %3793, %3774 ]
  %3810 = phi float [ %3685, %3677 ], [ %2922, %3104 ], [ %2922, %2906 ], [ %2922, %2923 ], [ %3685, %3705 ], [ %3685, %3732 ], [ %3685, %3772 ], [ %3685, %3774 ]
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3814 = fmul fast float %3813, 0x3FE3333340000000
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3815, float %3795, float %3796, float %3815)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3817, %3795
  %3819 = fmul fast float %3817, %3796
  %3820 = fmul fast float %3815, %3817
  %3821 = fmul fast float %3820, %121
  %3822 = fmul fast float %3820, %122
  %3823 = fmul fast float %3820, %123
  %3824 = fmul fast float %3818, %85
  %3825 = fmul fast float %3818, %86
  %3826 = fmul fast float %3818, %87
  %3827 = fadd fast float %3821, %3824
  %3828 = fadd fast float %3822, %3825
  %3829 = fadd fast float %3823, %3826
  %3830 = fmul fast float %133, %3819
  %3831 = fmul fast float %134, %3819
  %3832 = fmul fast float %135, %3819
  %3833 = fadd fast float %3827, %3830
  %3834 = fadd fast float %3828, %3831
  %3835 = fadd fast float %3829, %3832
  %3836 = call float @dx.op.dot3.f32(i32 55, float %3833, float %3834, float %3835, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3837 = call float @dx.op.unary.f32(i32 25, float %3836)  ; Rsqrt(value)
  %3838 = fmul fast float %3833, %3837
  %3839 = fmul fast float %3834, %3837
  %3840 = fmul fast float %3835, %3837
  %3841 = icmp eq i32 %61, 65535
  br i1 %3841, label %4387, label %3842

; <label>:3842                                    ; preds = %3794
  %3843 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3844 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3845 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3846 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3847 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3848 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3849 = fadd fast float %3843, %62
  %3850 = fadd fast float %3844, %63
  %3851 = fadd fast float %3845, %64
  %3852 = fadd fast float %3846, %62
  %3853 = fadd fast float %3847, %63
  %3854 = fadd fast float %3848, %64
  %3855 = mul i32 %61, 48
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = add i32 %3855, 16
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = add i32 %3855, 32
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = bitcast float %3870 to i32
  %3872 = fmul fast float %3857, %62
  %3873 = fmul fast float %3858, %63
  %3874 = fmul fast float %3859, %64
  %3875 = fsub fast float %3872, %3862
  %3876 = fsub fast float %3873, %3863
  %3877 = fsub fast float %3874, %3864
  %3878 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3879 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3880 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3881 = fmul fast float %3878, %3867
  %3882 = fmul fast float %3879, %3868
  %3883 = fmul fast float %3880, %3869
  %3884 = fadd fast float %3867, -1.000000e+00
  %3885 = fadd fast float %3868, -1.000000e+00
  %3886 = fadd fast float %3869, -1.000000e+00
  %3887 = call float @dx.op.unary.f32(i32 27, float %3881)  ; Round_ni(value)
  %3888 = call float @dx.op.unary.f32(i32 27, float %3882)  ; Round_ni(value)
  %3889 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3890 = call float @dx.op.binary.f32(i32 36, float %3887, float %3884)  ; FMin(a,b)
  %3891 = call float @dx.op.binary.f32(i32 36, float %3888, float %3885)  ; FMin(a,b)
  %3892 = call float @dx.op.binary.f32(i32 36, float %3889, float %3886)  ; FMin(a,b)
  %3893 = fmul fast float %3892, %3868
  %3894 = fadd fast float %3893, %3891
  %3895 = fmul fast float %3894, %3867
  %3896 = fadd fast float %3895, %3890
  %3897 = fptosi float %3896 to i32
  %3898 = add nsw i32 %3897, %3871
  %3899 = shl nsw i32 %3898, 2
  %3900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.i32 %3900, 0
  %3902 = lshr i32 %3901, 16
  %3903 = icmp eq i32 %3902, 0
  br i1 %3903, label %4353, label %3904

; <label>:3904                                    ; preds = %3842
  br label %3905

; <label>:3905                                    ; preds = %4029, %3904
  %3906 = phi i32 [ %3931, %4029 ], [ %3902, %3904 ]
  %3907 = phi float [ %4030, %4029 ], [ 0.000000e+00, %3904 ]
  %3908 = phi float [ %4031, %4029 ], [ %3812, %3904 ]
  %3909 = phi float [ %4032, %4029 ], [ %3810, %3904 ]
  %3910 = phi float [ %4033, %4029 ], [ %3803, %3904 ]
  %3911 = phi float [ %4034, %4029 ], [ %3804, %3904 ]
  %3912 = phi float [ %4035, %4029 ], [ %3805, %3904 ]
  %3913 = phi float [ %4036, %4029 ], [ 0.000000e+00, %3904 ]
  %3914 = phi float [ %4037, %4029 ], [ 0.000000e+00, %3904 ]
  %3915 = phi float [ %4038, %4029 ], [ %3800, %3904 ]
  %3916 = phi float [ %4039, %4029 ], [ %3801, %3904 ]
  %3917 = phi float [ %4040, %4029 ], [ %3802, %3904 ]
  %3918 = phi float [ %4041, %4029 ], [ %3838, %3904 ]
  %3919 = phi float [ %4042, %4029 ], [ %3839, %3904 ]
  %3920 = phi float [ %4043, %4029 ], [ %3840, %3904 ]
  %3921 = phi float [ %4044, %4029 ], [ %3808, %3904 ]
  %3922 = phi float [ %4045, %4029 ], [ %3807, %3904 ]
  %3923 = phi float [ %4046, %4029 ], [ 0.000000e+00, %3904 ]
  %3924 = phi float [ %4047, %4029 ], [ %3806, %3904 ]
  %3925 = phi float [ %4048, %4029 ], [ %3797, %3904 ]
  %3926 = phi float [ %4049, %4029 ], [ %3798, %3904 ]
  %3927 = phi float [ %4050, %4029 ], [ %3799, %3904 ]
  %3928 = shl nuw nsw i32 %3906, 2
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = lshr i32 %3930, 16
  %3932 = shl i32 %3930, 8
  %3933 = and i32 %3932, 16776960
  %3934 = or i32 %3933, 48
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = extractvalue %dx.types.ResRet.f32 %3935, 2
  %3939 = or i32 %3933, 64
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.i32 %3940, 1
  %3943 = or i32 %3933, 80
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %3947 = or i32 %3933, 96
  %3948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3948, 3
  %3953 = or i32 %3933, 112
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3956 = or i32 %3933, 128
  %3957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = extractvalue %dx.types.ResRet.f32 %3957, 3
  %3962 = or i32 %3933, 144
  %3963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.ResRet.f32 %3963, 3
  %3968 = or i32 %3933, 160
  %3969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = extractvalue %dx.types.ResRet.f32 %3969, 3
  %3974 = or i32 %3933, 192
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = or i32 %3933, 208
  %3978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.f32 %3978, 0
  %3980 = or i32 %3933, 248
  %3981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = extractvalue %dx.types.ResRet.f32 %3984, 3
  %3989 = call float @dx.op.dot4.f32(i32 56, float %3985, float %3986, float %3987, float %3988, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3990 = or i32 %3933, 16
  %3991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3990, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = extractvalue %dx.types.ResRet.f32 %3991, 3
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = or i32 %3933, 32
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3999, float %4000, float %4001, float %4002, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = call float @dx.op.unary.f32(i32 27, float %3989)  ; Round_ni(value)
  %4005 = call float @dx.op.unary.f32(i32 6, float %4004)  ; FAbs(value)
  %4006 = call float @dx.op.unary.f32(i32 27, float %3996)  ; Round_ni(value)
  %4007 = call float @dx.op.unary.f32(i32 6, float %4006)  ; FAbs(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %4003)  ; FAbs(value)
  %4009 = call float @dx.op.unary.f32(i32 27, float %4008)  ; Round_ni(value)
  %4010 = fadd fast float %4007, %4005
  %4011 = fadd fast float %4010, %4009
  %4012 = fcmp fast oeq float %4011, 0.000000e+00
  %4013 = call float @dx.op.dot4.f32(i32 56, float %3985, float %3986, float %3987, float %3988, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4014 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4015 = call float @dx.op.dot4.f32(i32 56, float %3985, float %3986, float %3987, float %3988, float %3852, float %3853, float %3854, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4016 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %3852, float %3853, float %3854, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4017 = fsub fast float %4013, %3989
  %4018 = fsub fast float %4015, %3989
  %4019 = fsub fast float %4014, %3996
  %4020 = fsub fast float %4016, %3996
  %4021 = call float @dx.op.dot3.f32(i32 55, float %3936, float %3937, float %3938, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4024 = fadd fast float %4023, %4021
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4022, 0
  %4027 = fcmp fast ogt float %4025, %4026
  %4028 = and i1 %4012, %4027
  br i1 %4028, label %4052, label %4029

; <label>:4029                                    ; preds = %4339, %4135, %4052, %3905
  %4030 = phi float [ %3907, %4052 ], [ %4138, %4135 ], [ %4138, %4339 ], [ %3907, %3905 ]
  %4031 = phi float [ %3908, %4052 ], [ %3908, %4135 ], [ %4315, %4339 ], [ %3908, %3905 ]
  %4032 = phi float [ %3909, %4052 ], [ %3909, %4135 ], [ %4313, %4339 ], [ %3909, %3905 ]
  %4033 = phi float [ %3910, %4052 ], [ %3910, %4135 ], [ %4291, %4339 ], [ %3910, %3905 ]
  %4034 = phi float [ %3911, %4052 ], [ %3911, %4135 ], [ %4292, %4339 ], [ %3911, %3905 ]
  %4035 = phi float [ %3912, %4052 ], [ %3912, %4135 ], [ %4293, %4339 ], [ %3912, %3905 ]
  %4036 = phi float [ %3913, %4052 ], [ %3913, %4135 ], [ %4262, %4339 ], [ %3913, %3905 ]
  %4037 = phi float [ %3914, %4052 ], [ %3914, %4135 ], [ %4260, %4339 ], [ %3914, %3905 ]
  %4038 = phi float [ %3915, %4052 ], [ %3915, %4135 ], [ %4349, %4339 ], [ %3915, %3905 ]
  %4039 = phi float [ %3916, %4052 ], [ %3916, %4135 ], [ %4350, %4339 ], [ %3916, %3905 ]
  %4040 = phi float [ %3917, %4052 ], [ %3917, %4135 ], [ %4351, %4339 ], [ %3917, %3905 ]
  %4041 = phi float [ %3918, %4052 ], [ %3918, %4135 ], [ %4241, %4339 ], [ %3918, %3905 ]
  %4042 = phi float [ %3919, %4052 ], [ %3919, %4135 ], [ %4242, %4339 ], [ %3919, %3905 ]
  %4043 = phi float [ %3920, %4052 ], [ %3920, %4135 ], [ %4243, %4339 ], [ %3920, %3905 ]
  %4044 = phi float [ %3921, %4052 ], [ %3921, %4135 ], [ %4271, %4339 ], [ %3921, %3905 ]
  %4045 = phi float [ %3922, %4052 ], [ %3922, %4135 ], [ %4268, %4339 ], [ %3922, %3905 ]
  %4046 = phi float [ %3923, %4052 ], [ %3923, %4135 ], [ %4265, %4339 ], [ %3923, %3905 ]
  %4047 = phi float [ %3924, %4052 ], [ %3924, %4135 ], [ %4258, %4339 ], [ %3924, %3905 ]
  %4048 = phi float [ %3925, %4052 ], [ %3925, %4135 ], [ %4253, %4339 ], [ %3925, %3905 ]
  %4049 = phi float [ %3926, %4052 ], [ %3926, %4135 ], [ %4254, %4339 ], [ %3926, %3905 ]
  %4050 = phi float [ %3927, %4052 ], [ %3927, %4135 ], [ %4255, %4339 ], [ %3927, %3905 ]
  %4051 = icmp eq i32 %3931, 0
  br i1 %4051, label %4352, label %3905

; <label>:4052                                    ; preds = %3905
  %4053 = extractvalue %dx.types.ResRet.f32 %3935, 3
  %4054 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %4055 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %4059 = extractvalue %dx.types.ResRet.i32 %3940, 3
  %4060 = extractvalue %dx.types.ResRet.i32 %3940, 2
  %4061 = bitcast float %4053 to i32
  %4062 = add i32 %4059, 0
  %4063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4062, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4065 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4063, %dx.types.Handle %4064, float %3989, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float %4017, float %4019, float undef, float %4018, float %4020, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = fmul fast float %4066, %4058
  %4068 = fadd fast float %4067, %4057
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = fmul fast float %3989, %3949
  %4071 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %3996, float %4070)  ; FMad(a,b,c)
  %4072 = fadd fast float %4071, %4056
  %4073 = fmul fast float %3989, %3951
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %3996, float %4073)  ; FMad(a,b,c)
  %4075 = fadd fast float %4074, %4055
  %4076 = fmul fast float %4017, %3949
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %4019, float %4076)  ; FMad(a,b,c)
  %4078 = fmul fast float %4017, %3951
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %4019, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4018, %3949
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %3950, float %4020, float %4080)  ; FMad(a,b,c)
  %4082 = fmul fast float %4018, %3951
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %3952, float %4020, float %4082)  ; FMad(a,b,c)
  %4084 = add i32 %4060, 0
  %4085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4084, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4086 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4085, %dx.types.Handle %4064, float %4072, float %4075, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4081, float %4083, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = and i32 %4061, 1024
  %4089 = icmp ne i32 %4088, 0
  %4090 = fcmp fast ogt float %4087, 0x3FE0101020000000
  %4091 = uitofp i1 %4090 to float
  %4092 = select i1 %4089, float %4091, float %4087
  %4093 = and i32 %4061, 8192
  %4094 = icmp ne i32 %4093, 0
  %4095 = select i1 %4094, float %4054, float 1.000000e+00
  %4096 = fmul fast float %3989, 2.000000e+00
  %4097 = fadd fast float %4096, -1.000000e+00
  %4098 = call float @dx.op.unary.f32(i32 6, float %4097)  ; FAbs(value)
  %4099 = fmul fast float %4098, %3982
  %4100 = fsub fast float %4099, %3982
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %3996, 2.000000e+00
  %4103 = fadd fast float %4102, -1.000000e+00
  %4104 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4105 = fmul fast float %4104, %3983
  %4106 = fsub fast float %4105, %3983
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fmul fast float %4008, %3945
  %4109 = fsub fast float %4108, %3945
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4111 = fmul fast float %4069, %4095
  %4112 = fmul fast float %4111, %4066
  %4113 = fmul fast float %4112, %4101
  %4114 = fmul fast float %4113, %4092
  %4115 = fmul fast float %4114, %4107
  %4116 = fmul fast float %4115, %4110
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4119 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4120 = fsub fast float %4025, %4119
  %4121 = fmul fast float %4120, %4118
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = fmul fast float %4116, %3946
  %4124 = fadd fast float %4116, %3946
  %4125 = fmul fast float %4124, %3955
  %4126 = fsub fast float %4125, %3955
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4128 = and i32 %4061, 128
  %4129 = icmp ne i32 %4128, 0
  %4130 = select i1 %4129, float %4127, float %4123
  %4131 = fmul fast float %4130, %4122
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = fcmp fast ugt float %4131, %4133
  br i1 %4134, label %4135, label %4029

; <label>:4135                                    ; preds = %4052
  %4136 = select i1 %4094, float %4131, float 0.000000e+00
  %4137 = fadd fast float %4136, %3907
  %4138 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  br i1 %4094, label %4029, label %4139

; <label>:4139                                    ; preds = %4135
  %4140 = and i32 %4061, 4
  %4141 = and i32 %4061, 8
  %4142 = add i32 %3941, 0
  %4143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4142, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4143, %dx.types.Handle %4144, float %4072, float %4075, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4081, float %4083, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = bitcast float %3967 to i32
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = lshr i32 %4150, 8
  %4154 = and i32 %4153, 255
  %4155 = uitofp i32 %4154 to float
  %4156 = fmul fast float %4149, %4152
  %4157 = fadd fast float %4156, %4155
  %4158 = fmul fast float %4157, 0x3F70101000000000
  %4159 = add i32 %3942, 0
  %4160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4159, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4160, %dx.types.Handle %4144, float %4072, float %4075, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4081, float %4083, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = extractvalue %dx.types.ResRet.f32 %4161, 1
  %4164 = extractvalue %dx.types.ResRet.f32 %4161, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4161, 3
  %4166 = bitcast float %3961 to i32
  %4167 = and i32 %4166, 255
  %4168 = uitofp i32 %4167 to float
  %4169 = lshr i32 %4166, 8
  %4170 = and i32 %4169, 255
  %4171 = uitofp i32 %4170 to float
  %4172 = lshr i32 %4166, 16
  %4173 = and i32 %4172, 255
  %4174 = uitofp i32 %4173 to float
  %4175 = fmul fast float %4174, 0x3F70101000000000
  %4176 = fmul fast float %4162, %4168
  %4177 = fadd fast float %4176, %4171
  %4178 = fmul fast float %4177, 0x3F70101000000000
  %4179 = fadd fast float %4163, -5.000000e-01
  %4180 = fadd fast float %4165, -5.000000e-01
  %4181 = fmul fast float %4179, %4175
  %4182 = fmul fast float %4180, %4175
  %4183 = fadd fast float %4181, 5.000000e-01
  %4184 = fadd fast float %4182, 5.000000e-01
  %4185 = fmul fast float %4146, %3970
  %4186 = fmul fast float %4147, %3971
  %4187 = fmul fast float %4148, %3972
  %4188 = fmul fast float %4183, 2.000000e+00
  %4189 = fadd fast float %4188, -1.000000e+00
  %4190 = fmul fast float %4184, 2.000000e+00
  %4191 = fadd fast float %4190, -1.000000e+00
  %4192 = fadd fast float %4189, %4191
  %4193 = fmul fast float %4192, 5.000000e-01
  %4194 = fsub fast float %4189, %4191
  %4195 = fmul fast float %4194, 5.000000e-01
  %4196 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4197 = fsub fast float 1.000000e+00, %4196
  %4198 = call float @dx.op.unary.f32(i32 6, float %4195)  ; FAbs(value)
  %4199 = fsub fast float %4197, %4198
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4193, float %4195, float %4199, float %4193, float %4195, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = call float @dx.op.unary.f32(i32 25, float %4200)  ; Rsqrt(value)
  %4202 = fmul fast float %4193, %4201
  %4203 = fmul fast float %4195, %4201
  %4204 = fmul fast float %4201, %4199
  %4205 = fmul fast float %4204, %3936
  %4206 = fmul fast float %4204, %3937
  %4207 = fmul fast float %4204, %3938
  %4208 = fmul fast float %4202, %3958
  %4209 = fmul fast float %4202, %3959
  %4210 = fmul fast float %4202, %3960
  %4211 = fadd fast float %4208, %4205
  %4212 = fadd fast float %4209, %4206
  %4213 = fadd fast float %4210, %4207
  %4214 = fmul fast float %4203, %3964
  %4215 = fmul fast float %4203, %3965
  %4216 = fmul fast float %4203, %3966
  %4217 = fadd fast float %4211, %4214
  %4218 = fadd fast float %4212, %4215
  %4219 = fadd fast float %4213, %4216
  %4220 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %4219, float %4217, float %4218, float %4219)  ; Dot3(ax,ay,az,bx,by,bz)
  %4221 = call float @dx.op.unary.f32(i32 25, float %4220)  ; Rsqrt(value)
  %4222 = fmul fast float %4217, %4221
  %4223 = fmul fast float %4218, %4221
  %4224 = fmul fast float %4219, %4221
  %4225 = icmp ne i32 %4141, 0
  %4226 = select i1 %4225, float 1.000000e+00, float 0.000000e+00
  %4227 = fmul fast float %4131, %4226
  %4228 = and i32 %4061, 1
  %4229 = icmp eq i32 %4228, 0
  br i1 %4229, label %4230, label %4234

; <label>:4230                                    ; preds = %4139
  %4231 = fsub fast float %4222, %3918
  %4232 = fsub fast float %4223, %3919
  %4233 = fsub fast float %4224, %3920
  br label %4234

; <label>:4234                                    ; preds = %4230, %4139
  %4235 = phi float [ %4231, %4230 ], [ %4222, %4139 ]
  %4236 = phi float [ %4232, %4230 ], [ %4223, %4139 ]
  %4237 = phi float [ %4233, %4230 ], [ %4224, %4139 ]
  %4238 = fmul float %4237, %4227
  %4239 = fmul float %4236, %4227
  %4240 = fmul float %4235, %4227
  %4241 = fadd fast float %4240, %3918
  %4242 = fadd fast float %4239, %3919
  %4243 = fadd fast float %4238, %3920
  %4244 = icmp ne i32 %4140, 0
  %4245 = select i1 %4244, float 1.000000e+00, float 0.000000e+00
  %4246 = fmul fast float %4131, %4245
  %4247 = fsub fast float %4185, %3925
  %4248 = fsub fast float %4186, %3926
  %4249 = fsub fast float %4187, %3927
  %4250 = fmul fast float %4247, %4246
  %4251 = fmul fast float %4248, %4246
  %4252 = fmul fast float %4249, %4246
  %4253 = fadd fast float %4250, %3925
  %4254 = fadd fast float %4251, %3926
  %4255 = fadd fast float %4252, %3927
  %4256 = fsub fast float %4158, %3924
  %4257 = fmul fast float %4256, %4246
  %4258 = fadd fast float %4257, %3924
  %4259 = fmul fast float %4246, %3914
  %4260 = fsub fast float %3914, %4259
  %4261 = fmul fast float %4246, %3913
  %4262 = fsub fast float %3913, %4261
  %4263 = bitcast float %3979 to i32
  %4264 = fadd fast float %4131, %3923
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = fsub fast float %4178, %3922
  %4267 = fmul fast float %4266, %4227
  %4268 = fadd fast float %4267, %3922
  %4269 = fsub fast float %4164, %3921
  %4270 = fmul fast float %4269, %4227
  %4271 = fadd fast float %4270, %3921
  br i1 %4229, label %4280, label %4272

; <label>:4272                                    ; preds = %4234
  %4273 = and i32 %4061, 32768
  %4274 = icmp eq i32 %4273, 0
  br i1 %4274, label %4290, label %4275

; <label>:4275                                    ; preds = %4272
  %4276 = fmul fast float %4227, 1.270000e+02
  %4277 = fadd fast float %4276, %3910
  %4278 = fadd fast float %4276, %3911
  %4279 = fadd fast float %4276, %3912
  br label %4290

; <label>:4280                                    ; preds = %4234
  %4281 = fsub fast float 1.270000e+02, %3910
  %4282 = fsub fast float 1.270000e+02, %3911
  %4283 = fsub fast float 1.270000e+02, %3912
  %4284 = fmul fast float %4227, %4281
  %4285 = fmul fast float %4227, %4282
  %4286 = fmul fast float %4227, %4283
  %4287 = fadd fast float %4284, %3910
  %4288 = fadd fast float %4285, %3911
  %4289 = fadd fast float %4286, %3912
  br label %4290

; <label>:4290                                    ; preds = %4280, %4275, %4272
  %4291 = phi float [ %4277, %4275 ], [ %3910, %4272 ], [ %4287, %4280 ]
  %4292 = phi float [ %4278, %4275 ], [ %3911, %4272 ], [ %4288, %4280 ]
  %4293 = phi float [ %4279, %4275 ], [ %3912, %4272 ], [ %4289, %4280 ]
  %4294 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = extractvalue %dx.types.CBufRet.f32 %4295, 1
  %4298 = fmul fast float %4297, %4294
  %4299 = fadd fast float %4298, %4296
  %4300 = call float @dx.op.unary.f32(i32 7, float %4299)  ; Saturate(value)
  %4301 = bitcast float %3973 to i32
  %4302 = and i32 %4301, 65535
  %4303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4302)  ; LegacyF16ToF32(value)
  %4304 = lshr i32 %4301, 16
  %4305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4304)  ; LegacyF16ToF32(value)
  %4306 = fcmp fast oge float %4303, 0.000000e+00
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = select i1 %4306, float %4303, float %4308
  %4310 = fadd fast float %4309, %4305
  %4311 = fsub fast float %4300, %3909
  %4312 = fmul fast float %4311, %4131
  %4313 = fadd fast float %4312, %3909
  %4314 = fmul fast float %4310, %4131
  %4315 = call float @dx.op.binary.f32(i32 35, float %3908, float %4314)  ; FMax(a,b)
  %4316 = and i32 %4061, 16
  %4317 = icmp eq i32 %4316, 0
  br i1 %4317, label %4339, label %4318

; <label>:4318                                    ; preds = %4290
  %4319 = add i32 %3976, 0
  %4320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4319, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4320, %dx.types.Handle %4144, float %4072, float %4075, float undef, float undef, i32 0, i32 0, i32 undef, float %4077, float %4079, float undef, float %4081, float %4083, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = and i32 %4263, 65535
  %4326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4325)  ; LegacyF16ToF32(value)
  %4327 = fmul fast float %4322, %3970
  %4328 = fmul fast float %4323, %3971
  %4329 = fmul fast float %4324, %3972
  %4330 = and i32 %4061, 16384
  %4331 = icmp ne i32 %4330, 0
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 0
  %4334 = select i1 %4331, float %4333, float 1.000000e+00
  %4335 = fmul fast float %4334, %4326
  %4336 = fmul fast float %4327, %4335
  %4337 = fmul fast float %4328, %4335
  %4338 = fmul fast float %4329, %4335
  br label %4339

; <label>:4339                                    ; preds = %4318, %4290
  %4340 = phi float [ %4336, %4318 ], [ 0.000000e+00, %4290 ]
  %4341 = phi float [ %4337, %4318 ], [ 0.000000e+00, %4290 ]
  %4342 = phi float [ %4338, %4318 ], [ 0.000000e+00, %4290 ]
  %4343 = fsub fast float %4340, %3915
  %4344 = fsub fast float %4341, %3916
  %4345 = fsub fast float %4342, %3917
  %4346 = fmul fast float %4343, %4131
  %4347 = fmul fast float %4344, %4131
  %4348 = fmul fast float %4345, %4131
  %4349 = fadd fast float %4346, %3915
  %4350 = fadd fast float %4347, %3916
  %4351 = fadd fast float %4348, %3917
  br label %4029

; <label>:4352                                    ; preds = %4029
  br label %4353

; <label>:4353                                    ; preds = %4352, %3842
  %4354 = phi float [ 0.000000e+00, %3842 ], [ %4030, %4352 ]
  %4355 = phi float [ %3812, %3842 ], [ %4031, %4352 ]
  %4356 = phi float [ %3810, %3842 ], [ %4032, %4352 ]
  %4357 = phi float [ %3803, %3842 ], [ %4033, %4352 ]
  %4358 = phi float [ %3804, %3842 ], [ %4034, %4352 ]
  %4359 = phi float [ %3805, %3842 ], [ %4035, %4352 ]
  %4360 = phi float [ 0.000000e+00, %3842 ], [ %4036, %4352 ]
  %4361 = phi float [ 0.000000e+00, %3842 ], [ %4037, %4352 ]
  %4362 = phi float [ %3800, %3842 ], [ %4038, %4352 ]
  %4363 = phi float [ %3801, %3842 ], [ %4039, %4352 ]
  %4364 = phi float [ %3802, %3842 ], [ %4040, %4352 ]
  %4365 = phi float [ %3838, %3842 ], [ %4041, %4352 ]
  %4366 = phi float [ %3839, %3842 ], [ %4042, %4352 ]
  %4367 = phi float [ %3840, %3842 ], [ %4043, %4352 ]
  %4368 = phi float [ %3808, %3842 ], [ %4044, %4352 ]
  %4369 = phi float [ %3807, %3842 ], [ %4045, %4352 ]
  %4370 = phi float [ 0.000000e+00, %3842 ], [ %4046, %4352 ]
  %4371 = phi float [ %3806, %3842 ], [ %4047, %4352 ]
  %4372 = phi float [ %3797, %3842 ], [ %4048, %4352 ]
  %4373 = phi float [ %3798, %3842 ], [ %4049, %4352 ]
  %4374 = phi float [ %3799, %3842 ], [ %4050, %4352 ]
  %4375 = call float @dx.op.dot3.f32(i32 55, float %4365, float %4366, float %4367, float %4365, float %4366, float %4367)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 25, float %4375)  ; Rsqrt(value)
  %4377 = fmul fast float %4376, %4365
  %4378 = fmul fast float %4376, %4366
  %4379 = fmul fast float %4376, %4367
  %4380 = fadd fast float %4370, %1142
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4382 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float %4377, float %4378, float %4379)  ; Dot3(ax,ay,az,bx,by,bz)
  %4383 = call float @dx.op.unary.f32(i32 25, float %4382)  ; Rsqrt(value)
  %4384 = fmul fast float %4383, %4377
  %4385 = fmul fast float %4383, %4378
  %4386 = fmul fast float %4383, %4379
  br label %4387

; <label>:4387                                    ; preds = %4353, %3794
  %4388 = phi float [ %4362, %4353 ], [ %3800, %3794 ]
  %4389 = phi float [ %4363, %4353 ], [ %3801, %3794 ]
  %4390 = phi float [ %4364, %4353 ], [ %3802, %3794 ]
  %4391 = phi float [ %4372, %4353 ], [ %3797, %3794 ]
  %4392 = phi float [ %4373, %4353 ], [ %3798, %3794 ]
  %4393 = phi float [ %4374, %4353 ], [ %3799, %3794 ]
  %4394 = phi float [ %4357, %4353 ], [ %3803, %3794 ]
  %4395 = phi float [ %4358, %4353 ], [ %3804, %3794 ]
  %4396 = phi float [ %4359, %4353 ], [ %3805, %3794 ]
  %4397 = phi float [ %4384, %4353 ], [ %3838, %3794 ]
  %4398 = phi float [ %4385, %4353 ], [ %3839, %3794 ]
  %4399 = phi float [ %4386, %4353 ], [ %3840, %3794 ]
  %4400 = phi float [ %4371, %4353 ], [ %3806, %3794 ]
  %4401 = phi float [ %4381, %4353 ], [ %1142, %3794 ]
  %4402 = phi float [ %4369, %4353 ], [ %3807, %3794 ]
  %4403 = phi float [ %4368, %4353 ], [ %3808, %3794 ]
  %4404 = phi float [ %4361, %4353 ], [ 0.000000e+00, %3794 ]
  %4405 = phi float [ %4360, %4353 ], [ 0.000000e+00, %3794 ]
  %4406 = phi float [ %4354, %4353 ], [ 0.000000e+00, %3794 ]
  %4407 = phi float [ %4355, %4353 ], [ %3812, %3794 ]
  %4408 = phi float [ %4356, %4353 ], [ %3810, %3794 ]
  %4409 = fadd fast float %4400, 0xBFB99999A0000000
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = fmul fast float %4410, 0x3FF1C71C80000000
  %4412 = call float @dx.op.binary.f32(i32 36, float %4400, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4413 = fsub fast float 1.000000e+00, %4411
  %4414 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4415 = fmul fast float %4414, %4391
  %4416 = fmul fast float %4414, %4392
  %4417 = fmul fast float %4414, %4393
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4421 = fmul fast float %4411, %4391
  %4422 = fmul fast float %4411, %4392
  %4423 = fmul fast float %4411, %4393
  %4424 = fadd fast float %4421, %4412
  %4425 = fadd fast float %4422, %4412
  %4426 = fadd fast float %4423, %4412
  %4427 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4431 = call float @dx.op.binary.f32(i32 36, float %4394, float 1.270000e+02)  ; FMin(a,b)
  %4432 = call float @dx.op.binary.f32(i32 36, float %4395, float 1.270000e+02)  ; FMin(a,b)
  %4433 = call float @dx.op.binary.f32(i32 36, float %4396, float 1.270000e+02)  ; FMin(a,b)
  %4434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.i32 %4434, 3
  %4436 = and i32 %4435, 8
  %4437 = icmp ne i32 %4436, 0
  %4438 = call float @dx.op.binary.f32(i32 35, float %4418, float %4391)  ; FMax(a,b)
  %4439 = call float @dx.op.binary.f32(i32 35, float %4419, float %4391)  ; FMax(a,b)
  %4440 = call float @dx.op.binary.f32(i32 35, float %4420, float %4391)  ; FMax(a,b)
  %4441 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4419, float %4420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4442 = select i1 %260, float %4391, float %4418
  %4443 = select i1 %260, float %4441, float %4419
  %4444 = select i1 %260, float 1.000000e+00, float %4420
  %4445 = select i1 %4437, float %4438, float %4442
  %4446 = select i1 %4437, float %4439, float %4443
  %4447 = select i1 %4437, float %4440, float %4444
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4451 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4452 = fadd fast float %4449, %201
  %4453 = fadd fast float %4450, %202
  %4454 = fadd fast float %4451, %203
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.CBufRet.f32 %4455, 1
  %4458 = fsub fast float %4452, %4456
  %4459 = fsub fast float %4453, %4457
  %4460 = fmul fast float %4458, %4458
  %4461 = fmul fast float %4459, %4459
  %4462 = fadd fast float %4460, %4461
  %4463 = call float @dx.op.unary.f32(i32 24, float %4462)  ; Sqrt(value)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4455, 2
  %4465 = fcmp fast olt float %4463, %4464
  br i1 %4465, label %4466, label %4533

; <label>:4466                                    ; preds = %4387
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 0
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4469, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4477 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4478 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4479 = fadd fast float %4476, %4452
  %4480 = fadd fast float %4477, %4453
  %4481 = fadd fast float %4478, %4454
  %4482 = fmul fast float %4479, %4468
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4470, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4472, float %4483)  ; FMad(a,b,c)
  %4485 = fmul fast float %4479, %4473
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4480, float %4474, float %4485)  ; FMad(a,b,c)
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4481, float %4475, float %4486)  ; FMad(a,b,c)
  %4488 = fsub fast float %4484, %4476
  %4489 = fsub fast float %4487, %4477
  %4490 = fsub fast float %4488, %4456
  %4491 = fadd fast float %4490, %4464
  %4492 = fsub fast float %4489, %4457
  %4493 = fadd fast float %4492, %4464
  %4494 = extractvalue %dx.types.CBufRet.f32 %4455, 3
  %4495 = fmul fast float %4491, %4494
  %4496 = fmul fast float %4493, %4494
  %4497 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4499 = fsub fast float 1.000000e+00, %4497
  %4500 = fsub fast float 1.000000e+00, %4498
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fcmp fast ugt float %4502, 0.000000e+00
  br i1 %4503, label %4504, label %4807

; <label>:4504                                    ; preds = %4466
  %4505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4506 = extractvalue %dx.types.CBufRet.f32 %4505, 2
  %4507 = fmul fast float %4506, %4502
  %4508 = extractvalue %dx.types.CBufRet.f32 %4505, 3
  %4509 = fadd fast float %4508, %4507
  %4510 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4511 = fadd fast float %4509, %4478
  %4512 = fmul fast float %4484, %4472
  %4513 = call float @dx.op.tertiary.f32(i32 46, float %4487, float %4475, float %4512)  ; FMad(a,b,c)
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4511, float %4510, float %4513)  ; FMad(a,b,c)
  %4515 = fsub fast float %4514, %4478
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = fsub fast float %4515, %4517
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.ResRet.f32 %4519, 1
  %4522 = extractvalue %dx.types.ResRet.f32 %4519, 2
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4499, float %4500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.ResRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.ResRet.f32 %4523, 2
  %4527 = fadd fast float %4524, %4520
  %4528 = fmul fast float %4527, 0x3F847AE140000000
  %4529 = fadd fast float %4525, %4521
  %4530 = fmul fast float %4529, 0x3F847AE140000000
  %4531 = fadd fast float %4526, %4522
  %4532 = fmul fast float %4531, 0x3F847AE140000000
  br label %4807

; <label>:4533                                    ; preds = %4387
  %4534 = and i32 %239, 1
  %4535 = icmp eq i32 %4534, 0
  br i1 %4535, label %4807, label %4536

; <label>:4536                                    ; preds = %4533
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4544 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4545 = extractvalue %dx.types.CBufRet.f32 %4541, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4547 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4548 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4549 = fadd fast float %4546, %4452
  %4550 = fadd fast float %4547, %4453
  %4551 = fadd fast float %4548, %4454
  %4552 = fmul fast float %4549, %4538
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4540, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4542, float %4553)  ; FMad(a,b,c)
  %4555 = fmul fast float %4549, %4543
  %4556 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4544, float %4555)  ; FMad(a,b,c)
  %4557 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4545, float %4556)  ; FMad(a,b,c)
  %4558 = fsub fast float %4554, %4546
  %4559 = fsub fast float %4557, %4547
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.CBufRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.CBufRet.f32 %4560, 3
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.i32 %4567, 0
  %4569 = extractvalue %dx.types.CBufRet.i32 %4567, 1
  %4570 = udiv i32 %4569, %4568
  %4571 = fsub fast float %4558, %4561
  %4572 = fsub fast float %4559, %4562
  %4573 = call float @dx.op.binary.f32(i32 35, float %4571, float 0.000000e+00)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float %4572, float 0.000000e+00)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 36, float %4573, float %4563)  ; FMin(a,b)
  %4576 = call float @dx.op.binary.f32(i32 36, float %4574, float %4564)  ; FMin(a,b)
  %4577 = add i32 %4568, -1
  %4578 = add i32 %4570, -1
  %4579 = fmul fast float %4575, %4566
  %4580 = fmul fast float %4576, %4566
  %4581 = fptoui float %4579 to i32
  %4582 = fptoui float %4580 to i32
  %4583 = call i32 @dx.op.binary.i32(i32 40, i32 %4581, i32 %4577)  ; UMin(a,b)
  %4584 = call i32 @dx.op.binary.i32(i32 40, i32 %4582, i32 %4578)  ; UMin(a,b)
  %4585 = mul i32 %4584, %4568
  %4586 = add i32 %4585, %4583
  %4587 = shl i32 %4586, 2
  %4588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.i32 %4588, 0
  %4590 = icmp eq i32 %4589, -1
  br i1 %4590, label %4807, label %4591

; <label>:4591                                    ; preds = %4536
  %4592 = mul i32 %4589, 148
  %4593 = add i32 %4592, 4
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = add i32 %4592, 8
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = add i32 %4592, 36
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = add i32 %4592, 60
  %4603 = add i32 %4592, 92
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = add i32 %4592, 116
  %4607 = fsub fast float %4558, %4595
  %4608 = fsub fast float %4559, %4598
  %4609 = fmul fast float %4566, %4607
  %4610 = fmul fast float %4566, %4608
  %4611 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4612 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4613 = fsub fast float 1.000000e+00, %4612
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 2
  %4616 = call float @dx.op.unary.f32(i32 83, float %4611)  ; DerivCoarseX(value)
  %4617 = call float @dx.op.unary.f32(i32 83, float %4613)  ; DerivCoarseX(value)
  %4618 = call float @dx.op.unary.f32(i32 84, float %4611)  ; DerivCoarseY(value)
  %4619 = call float @dx.op.unary.f32(i32 84, float %4613)  ; DerivCoarseY(value)
  %4620 = fmul fast float %4616, %4615
  %4621 = fmul fast float %4617, %4615
  %4622 = fmul fast float %4618, %4615
  %4623 = fmul fast float %4619, %4615
  %4624 = call float @dx.op.dot2.f32(i32 54, float %4622, float %4623, float %4622, float %4623)  ; Dot2(ax,ay,bx,by)
  %4625 = call float @dx.op.dot2.f32(i32 54, float %4620, float %4621, float %4620, float %4621)  ; Dot2(ax,ay,bx,by)
  %4626 = call float @dx.op.binary.f32(i32 35, float %4625, float %4624)  ; FMax(a,b)
  %4627 = call float @dx.op.unary.f32(i32 23, float %4626)  ; Log(value)
  %4628 = fmul fast float %4627, 5.000000e-01
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4631 = fadd fast float %4630, %4628
  %4632 = call float @dx.op.binary.f32(i32 35, float %4631, float 0.000000e+00)  ; FMax(a,b)
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4635 = fadd fast float %4634, %4632
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 3
  %4638 = fadd fast float %4635, %4637
  %4639 = add i32 %4605, 0
  %4640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4639, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4641 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4640, i32 0)  ; GetDimensions(handle,mipLevel)
  %4642 = extractvalue %dx.types.Dimensions %4641, 0
  %4643 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4642)  ; FirstbitLo(value)
  %4644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.i32 %4644, 1
  %4646 = sub nsw i32 %4645, %4643
  %4647 = sitofp i32 %4646 to float
  %4648 = fsub fast float %4638, %4647
  %4649 = call float @dx.op.binary.f32(i32 35, float %4648, float 0.000000e+00)  ; FMax(a,b)
  %4650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4640, %dx.types.Handle %52, float %4611, float %4613, float %4601, float undef, i32 0, i32 0, i32 undef, float %4649)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4651 = extractvalue %dx.types.ResRet.f32 %4650, 0
  %4652 = fcmp ule float %4651, 0x3FE0101020000000
  %4653 = extractvalue %dx.types.CBufRet.i32 %4644, 0
  %4654 = and i32 %4653, 128
  %4655 = icmp ne i32 %4654, 0
  %4656 = and i1 %4652, %4655
  br i1 %4656, label %4807, label %4657

; <label>:4657                                    ; preds = %4591
  %4658 = add i32 %4592, 20
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4592, 24
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = add i32 %4592, 40
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4592, 96
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4667, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 2
  %4672 = fmul fast float %4671, %4611
  %4673 = fmul fast float %4671, %4613
  %4674 = extractvalue %dx.types.CBufRet.f32 %4670, 3
  %4675 = fadd fast float %4672, %4674
  %4676 = fadd fast float %4673, %4674
  %4677 = add i32 %4669, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4678, i32 0)  ; GetDimensions(handle,mipLevel)
  %4680 = extractvalue %dx.types.Dimensions %4679, 0
  %4681 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4680)  ; FirstbitLo(value)
  %4682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.i32 %4682, 1
  %4684 = sub nsw i32 %4683, %4681
  %4685 = sitofp i32 %4684 to float
  %4686 = fsub fast float %4635, %4685
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0.000000e+00)  ; FMax(a,b)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4678, %dx.types.Handle %52, float %4675, float %4676, float %4666, float undef, i32 0, i32 0, i32 undef, float %4687)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4660
  %4691 = fadd fast float %4690, %4663
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 0
  %4694 = extractvalue %dx.types.CBufRet.f32 %4692, 1
  %4695 = extractvalue %dx.types.CBufRet.f32 %4692, 2
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4700 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4701 = fadd fast float %4697, %4558
  %4702 = fadd fast float %4699, %4559
  %4703 = fadd fast float %4691, %4700
  %4704 = fmul fast float %4701, %4693
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4702, float %4694, float %4704)  ; FMad(a,b,c)
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4703, float %4695, float %4705)  ; FMad(a,b,c)
  %4707 = fsub fast float %4706, %4700
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4710 = fsub fast float %4707, %4709
  %4711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.i32 %4711, 0
  %4713 = call i32 @dx.op.binary.i32(i32 40, i32 %4589, i32 %4712)  ; UMin(a,b)
  %4714 = mul i32 %4713, 36
  %4715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4714, i32 undef)  ; BufferLoad(srv,index,wot)
  %4716 = extractvalue %dx.types.ResRet.i32 %4715, 0
  %4717 = add i32 %4714, 4
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = fmul fast float %4719, %4611
  %4721 = fmul fast float %4719, %4613
  %4722 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4723 = fadd fast float %4720, %4722
  %4724 = fadd fast float %4721, %4722
  %4725 = icmp eq i32 %4716, 0
  br i1 %4725, label %4794, label %4726

; <label>:4726                                    ; preds = %4657
  br label %4727

; <label>:4727                                    ; preds = %4784, %4726
  %4728 = phi float [ %4785, %4784 ], [ 0.000000e+00, %4726 ]
  %4729 = phi float [ %4786, %4784 ], [ 0.000000e+00, %4726 ]
  %4730 = phi float [ %4787, %4784 ], [ 0.000000e+00, %4726 ]
  %4731 = phi float [ %4788, %4784 ], [ 0.000000e+00, %4726 ]
  %4732 = phi float [ %4789, %4784 ], [ 0.000000e+00, %4726 ]
  %4733 = phi float [ %4790, %4784 ], [ 0.000000e+00, %4726 ]
  %4734 = phi i32 [ %4791, %4784 ], [ 0, %4726 ]
  %4735 = shl i32 %4734, 2
  %4736 = add i32 %4602, %4735
  %4737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4736, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = add i32 %4606, %4735
  %4740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.i32 %4740, 0
  %4742 = add i32 %4741, 0
  %4743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4743, i32 0)  ; GetDimensions(handle,mipLevel)
  %4745 = extractvalue %dx.types.Dimensions %4744, 0
  %4746 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4745)  ; FirstbitLo(value)
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = sub nsw i32 %4748, %4746
  %4750 = sitofp i32 %4749 to float
  %4751 = fsub fast float %4635, %4750
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0.000000e+00)  ; FMax(a,b)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4743, %dx.types.Handle %52, float %4723, float %4724, float %4738, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = fcmp fast ogt float %4754, 0.000000e+00
  br i1 %4755, label %4756, label %4784

; <label>:4756                                    ; preds = %4727
  %4757 = add i32 %4717, %4735
  %4758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4757, i32 undef)  ; BufferLoad(srv,index,wot)
  %4759 = extractvalue %dx.types.ResRet.i32 %4758, 0
  %4760 = and i32 %4759, 32767
  %4761 = mul nuw nsw i32 %4760, 928
  %4762 = add nuw nsw i32 %4761, 48
  %4763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.ResRet.f32 %4763, 1
  %4766 = extractvalue %dx.types.ResRet.f32 %4763, 2
  %4767 = add nuw nsw i32 %4761, 60
  %4768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = fmul fast float %4764, %4754
  %4773 = fmul fast float %4765, %4754
  %4774 = fmul fast float %4766, %4754
  %4775 = fadd fast float %4772, %4728
  %4776 = fadd fast float %4773, %4729
  %4777 = fadd fast float %4774, %4730
  %4778 = fmul fast float %4769, %4754
  %4779 = fmul fast float %4770, %4754
  %4780 = fmul fast float %4771, %4754
  %4781 = fadd fast float %4778, %4731
  %4782 = fadd fast float %4779, %4732
  %4783 = fadd fast float %4780, %4733
  br label %4784

; <label>:4784                                    ; preds = %4756, %4727
  %4785 = phi float [ %4775, %4756 ], [ %4728, %4727 ]
  %4786 = phi float [ %4776, %4756 ], [ %4729, %4727 ]
  %4787 = phi float [ %4777, %4756 ], [ %4730, %4727 ]
  %4788 = phi float [ %4781, %4756 ], [ %4731, %4727 ]
  %4789 = phi float [ %4782, %4756 ], [ %4732, %4727 ]
  %4790 = phi float [ %4783, %4756 ], [ %4733, %4727 ]
  %4791 = add nuw i32 %4734, 1
  %4792 = icmp eq i32 %4791, %4716
  br i1 %4792, label %4793, label %4727

; <label>:4793                                    ; preds = %4784
  br label %4794

; <label>:4794                                    ; preds = %4793, %4657
  %4795 = phi float [ 0.000000e+00, %4657 ], [ %4785, %4793 ]
  %4796 = phi float [ 0.000000e+00, %4657 ], [ %4786, %4793 ]
  %4797 = phi float [ 0.000000e+00, %4657 ], [ %4787, %4793 ]
  %4798 = phi float [ 0.000000e+00, %4657 ], [ %4788, %4793 ]
  %4799 = phi float [ 0.000000e+00, %4657 ], [ %4789, %4793 ]
  %4800 = phi float [ 0.000000e+00, %4657 ], [ %4790, %4793 ]
  %4801 = fadd fast float %4798, %4795
  %4802 = fmul fast float %4801, 0x3F847AE140000000
  %4803 = fadd fast float %4799, %4796
  %4804 = fmul fast float %4803, 0x3F847AE140000000
  %4805 = fadd fast float %4800, %4797
  %4806 = fmul fast float %4805, 0x3F847AE140000000
  br label %4807

; <label>:4807                                    ; preds = %4794, %4591, %4536, %4533, %4504, %4466
  %4808 = phi float [ %4528, %4504 ], [ 0.000000e+00, %4466 ], [ %4802, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4809 = phi float [ %4530, %4504 ], [ 0.000000e+00, %4466 ], [ %4804, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4810 = phi float [ %4532, %4504 ], [ 0.000000e+00, %4466 ], [ %4806, %4794 ], [ 0.000000e+00, %4536 ], [ 0.000000e+00, %4591 ], [ 0.000000e+00, %4533 ]
  %4811 = phi float [ %4518, %4504 ], [ -1.310720e+05, %4466 ], [ %4710, %4794 ], [ -1.310720e+05, %4536 ], [ -1.310720e+05, %4591 ], [ -1.310720e+05, %4533 ]
  %4812 = phi i1 [ true, %4504 ], [ false, %4466 ], [ true, %4794 ], [ false, %4536 ], [ false, %4591 ], [ false, %4533 ]
  %4813 = and i32 %239, 3
  %4814 = icmp eq i32 %4813, 1
  %4815 = select i1 %4814, float 1.000000e+00, float 0.000000e+00
  %4816 = fsub fast float %4811, %203
  %4817 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4818 = select i1 %4812, float %4817, float 1.000000e+00
  %4819 = fmul fast float %4818, %4815
  %4820 = icmp eq i32 %4813, 3
  %4821 = select i1 %4820, float 1.000000e+00, float %4819
  %4822 = call float @dx.op.binary.f32(i32 35, float %4406, float %4821)  ; FMax(a,b)
  %4823 = fcmp fast olt float %4821, 1.000000e+00
  %4824 = fcmp uge float %75, 0.000000e+00
  %4825 = and i1 %4824, %4823
  br i1 %4825, label %4826, label %4836

; <label>:4826                                    ; preds = %4807
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.ResRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.ResRet.f32 %4827, 2
  %4831 = fadd fast float %4828, %4822
  %4832 = fcmp ule float %74, 0.000000e+00
  %4833 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = select i1 %4832, float %4833, float 1.000000e+00
  %4835 = fmul fast float %4834, %4830
  br label %4836

; <label>:4836                                    ; preds = %4826, %4807
  %4837 = phi float [ %4831, %4826 ], [ %4822, %4807 ]
  %4838 = phi float [ %4829, %4826 ], [ 0.000000e+00, %4807 ]
  %4839 = phi float [ %4835, %4826 ], [ 0.000000e+00, %4807 ]
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = fcmp fast une float %4841, 0.000000e+00
  %4844 = fcmp fast une float %4842, 0.000000e+00
  %4845 = or i1 %4843, %4844
  br i1 %4845, label %4846, label %5405

; <label>:4846                                    ; preds = %4836
  br i1 %4843, label %4847, label %5120

; <label>:4847                                    ; preds = %4846
  %4848 = call float @dx.op.unary.f32(i32 23, float %4403)  ; Log(value)
  %4849 = fmul fast float %4848, 4.000000e+00
  %4850 = call float @dx.op.unary.f32(i32 21, float %4849)  ; Exp(value)
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = fmul fast float %4852, %62
  %4854 = fmul fast float %4852, %63
  %4855 = fmul fast float %4852, %64
  %4856 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4857 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4858 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4859 = call float @dx.op.unary.f32(i32 23, float %4856)  ; Log(value)
  %4860 = call float @dx.op.unary.f32(i32 23, float %4857)  ; Log(value)
  %4861 = call float @dx.op.unary.f32(i32 23, float %4858)  ; Log(value)
  %4862 = fmul fast float %4859, 4.000000e+00
  %4863 = fmul fast float %4860, 4.000000e+00
  %4864 = fmul fast float %4861, 4.000000e+00
  %4865 = call float @dx.op.unary.f32(i32 21, float %4862)  ; Exp(value)
  %4866 = call float @dx.op.unary.f32(i32 21, float %4863)  ; Exp(value)
  %4867 = call float @dx.op.unary.f32(i32 21, float %4864)  ; Exp(value)
  %4868 = fadd fast float %4866, %4865
  %4869 = fadd fast float %4868, %4867
  %4870 = fdiv fast float 1.000000e+00, %4869
  %4871 = fmul fast float %4870, %4865
  %4872 = fcmp fast ogt float %71, 0.000000e+00
  %4873 = fcmp fast ogt float %72, 0.000000e+00
  %4874 = fcmp fast ogt float %73, 0.000000e+00
  %4875 = fcmp fast olt float %71, 0.000000e+00
  %4876 = fcmp fast olt float %72, 0.000000e+00
  %4877 = fcmp fast olt float %73, 0.000000e+00
  %4878 = zext i1 %4872 to i32
  %4879 = zext i1 %4873 to i32
  %4880 = zext i1 %4874 to i32
  %4881 = zext i1 %4875 to i32
  %4882 = zext i1 %4876 to i32
  %4883 = zext i1 %4877 to i32
  %4884 = sub nsw i32 %4878, %4881
  %4885 = sub nsw i32 %4879, %4882
  %4886 = sub nsw i32 %4880, %4883
  %4887 = call float @dx.op.unary.f32(i32 83, float %4853)  ; DerivCoarseX(value)
  %4888 = call float @dx.op.unary.f32(i32 83, float %4854)  ; DerivCoarseX(value)
  %4889 = call float @dx.op.unary.f32(i32 83, float %4855)  ; DerivCoarseX(value)
  %4890 = call float @dx.op.unary.f32(i32 84, float %4853)  ; DerivCoarseY(value)
  %4891 = call float @dx.op.unary.f32(i32 84, float %4854)  ; DerivCoarseY(value)
  %4892 = call float @dx.op.unary.f32(i32 84, float %4855)  ; DerivCoarseY(value)
  %4893 = fcmp fast ole float %271, %4871
  %4894 = fmul fast float %4870, %4868
  %4895 = fcmp fast ole float %271, %4894
  %4896 = select i1 %4895, float %4855, float %4853
  %4897 = select i1 %4895, float %4853, float %4854
  %4898 = select i1 %4893, float %4854, float %4896
  %4899 = select i1 %4893, float %4855, float %4897
  %4900 = select i1 %4895, float %4889, float %4887
  %4901 = select i1 %4895, float %4887, float %4888
  %4902 = select i1 %4893, float %4888, float %4900
  %4903 = select i1 %4893, float %4889, float %4901
  %4904 = select i1 %4895, float %4892, float %4890
  %4905 = select i1 %4895, float %4890, float %4891
  %4906 = select i1 %4893, float %4891, float %4904
  %4907 = select i1 %4893, float %4892, float %4905
  %4908 = call float @dx.op.unary.f32(i32 27, float %4898)  ; Round_ni(value)
  %4909 = call float @dx.op.unary.f32(i32 27, float %4899)  ; Round_ni(value)
  %4910 = fptosi float %4908 to i32
  %4911 = fptosi float %4909 to i32
  %4912 = xor i32 %4911, %4910
  %4913 = sitofp i32 %4912 to float
  %4914 = fptosi float %4913 to i32
  %4915 = sitofp i32 %4914 to float
  %4916 = fmul fast float %4915, 0x3FE3C6EF40000000
  %4917 = frem fast float %4908, 2.560000e+02
  %4918 = frem fast float %4909, 2.560000e+02
  %4919 = fptoui float %4917 to i32
  %4920 = fptoui float %4918 to i32
  %4921 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4919, i32 %4920, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = fadd fast float %4922, %4916
  %4926 = fadd fast float %4923, %4916
  %4927 = fadd fast float %4924, %4916
  %4928 = call float @dx.op.unary.f32(i32 22, float %4925)  ; Frc(value)
  %4929 = call float @dx.op.unary.f32(i32 22, float %4926)  ; Frc(value)
  %4930 = call float @dx.op.unary.f32(i32 22, float %4927)  ; Frc(value)
  %4931 = fmul fast float %4930, 0x401921FB60000000
  %4932 = call float @dx.op.unary.f32(i32 13, float %4931)  ; Sin(value)
  %4933 = call float @dx.op.unary.f32(i32 12, float %4931)  ; Cos(value)
  %4934 = fsub fast float -0.000000e+00, %4933
  %4935 = fmul fast float %4933, %4898
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4932, float %4899, float %4935)  ; FMad(a,b,c)
  %4937 = fmul fast float %4932, %4898
  %4938 = call float @dx.op.tertiary.f32(i32 46, float %4934, float %4899, float %4937)  ; FMad(a,b,c)
  %4939 = fadd fast float %4936, %4928
  %4940 = fadd fast float %4938, %4929
  %4941 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4942 = bitcast float %4941 to i32
  %4943 = icmp eq i32 %4942, 0
  br i1 %4943, label %4982, label %4944

; <label>:4944                                    ; preds = %4847
  %4945 = add i32 %4942, 0
  %4946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4946, %dx.types.Handle %111, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.f32 %4949, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4949, 2
  %4952 = fsub fast float 1.000000e+00, %4841
  %4953 = call float @dx.op.binary.f32(i32 35, float %4952, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4954 = bitcast float %4841 to i32
  %4955 = sitofp i32 %4954 to float
  %4956 = fadd fast float %4955, 0xC1CFBF8940000000
  %4957 = fmul fast float %4951, %4956
  %4958 = fadd fast float %4957, 0x41CFBF8940000000
  %4959 = fptosi float %4958 to i32
  %4960 = bitcast i32 %4959 to float
  %4961 = bitcast float %4953 to i32
  %4962 = sitofp i32 %4961 to float
  %4963 = fadd fast float %4962, 0xC1CFBF8940000000
  %4964 = fmul fast float %4963, %4951
  %4965 = fadd fast float %4964, 0x41CFBF8940000000
  %4966 = fptosi float %4965 to i32
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4960, %4950
  %4969 = fmul fast float %4967, %4950
  %4970 = fsub fast float %4953, %4968
  %4971 = fadd fast float %4969, %4953
  %4972 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4974 = fsub fast float %4948, %4972
  %4975 = fsub fast float %4973, %4972
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, %4974
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fcmp fast olt float %4980, 0x3F70101020000000
  br i1 %4981, label %5120, label %4982

; <label>:4982                                    ; preds = %4944, %4847
  %4983 = phi float [ %4980, %4944 ], [ %4841, %4847 ]
  %4984 = fmul fast float %4983, %4850
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 1
  %4987 = extractvalue %dx.types.CBufRet.i32 %4985, 0
  %4988 = add i32 %4987, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %110, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4990, 3
  %4995 = and i32 %4986, 255
  %4996 = uitofp i32 %4995 to float
  %4997 = lshr i32 %4986, 8
  %4998 = and i32 %4997, 255
  %4999 = uitofp i32 %4998 to float
  %5000 = fmul fast float %4994, %4996
  %5001 = fadd fast float %5000, %4999
  %5002 = fmul fast float %5001, 0x3F70101000000000
  %5003 = fadd fast float %5002, 0xBFB99999A0000000
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fmul fast float %5004, 0x3FF1C71C80000000
  %5006 = call float @dx.op.binary.f32(i32 36, float %5002, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5007 = fsub fast float 1.000000e+00, %5005
  %5008 = call float @dx.op.unary.f32(i32 7, float %5007)  ; Saturate(value)
  %5009 = fmul fast float %5008, %4991
  %5010 = fmul fast float %5008, %4992
  %5011 = fmul fast float %5008, %4993
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5015 = fmul fast float %5005, %4991
  %5016 = fmul fast float %5005, %4992
  %5017 = fmul fast float %5005, %4993
  %5018 = fadd fast float %5015, %5006
  %5019 = fadd fast float %5016, %5006
  %5020 = fadd fast float %5017, %5006
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.i32 %5024, 3
  %5026 = extractvalue %dx.types.CBufRet.i32 %5024, 2
  %5027 = add i32 %5026, 0
  %5028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5028, %dx.types.Handle %110, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float %4902, float %4903, float undef, float %4906, float %4907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.ResRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.ResRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.ResRet.f32 %5029, 3
  %5034 = and i32 %5025, 255
  %5035 = uitofp i32 %5034 to float
  %5036 = lshr i32 %5025, 8
  %5037 = and i32 %5036, 255
  %5038 = uitofp i32 %5037 to float
  %5039 = lshr i32 %5025, 16
  %5040 = and i32 %5039, 255
  %5041 = uitofp i32 %5040 to float
  %5042 = fmul fast float %5041, 0x3F70101000000000
  %5043 = fmul fast float %5030, %5035
  %5044 = fadd fast float %5043, %5038
  %5045 = fmul fast float %5044, 0x3F70101000000000
  %5046 = fadd fast float %5031, -5.000000e-01
  %5047 = fadd fast float %5033, -5.000000e-01
  %5048 = fmul fast float %5046, %5042
  %5049 = fmul fast float %5047, %5042
  %5050 = fadd fast float %5048, 5.000000e-01
  %5051 = fadd fast float %5049, 5.000000e-01
  %5052 = fmul fast float %5050, 2.000000e+00
  %5053 = fadd fast float %5052, -1.000000e+00
  %5054 = fmul fast float %5051, 2.000000e+00
  %5055 = fadd fast float %5054, -1.000000e+00
  %5056 = fadd fast float %5053, %5055
  %5057 = fmul fast float %5056, 5.000000e-01
  %5058 = fsub fast float %5053, %5055
  %5059 = fmul fast float %5058, 5.000000e-01
  %5060 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5061 = fsub fast float 1.000000e+00, %5060
  %5062 = call float @dx.op.unary.f32(i32 6, float %5059)  ; FAbs(value)
  %5063 = fsub fast float %5061, %5062
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5059, float %5063, float %5057, float %5059, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 25, float %5064)  ; Rsqrt(value)
  %5066 = fmul fast float %5057, %5065
  %5067 = fmul fast float %5059, %5065
  %5068 = select i1 %4895, i32 %4885, i32 %4886
  %5069 = select i1 %4893, i32 %4884, i32 %5068
  %5070 = sitofp i32 %5069 to float
  %5071 = fmul fast float %5063, %5070
  %5072 = fmul fast float %5071, %5065
  %5073 = select i1 %4895, float %5072, float %5067
  %5074 = select i1 %4895, float %5067, float %5072
  %5075 = select i1 %4893, float %5072, float %5066
  %5076 = select i1 %4893, float %5067, float %5073
  %5077 = select i1 %4893, float %5066, float %5074
  %5078 = fsub fast float %5012, %4445
  %5079 = fsub fast float %5013, %4446
  %5080 = fsub fast float %5014, %4447
  %5081 = fmul fast float %5078, %4984
  %5082 = fmul fast float %5079, %4984
  %5083 = fmul fast float %5080, %4984
  %5084 = fadd fast float %5081, %4445
  %5085 = fadd fast float %5082, %4446
  %5086 = fadd fast float %5083, %4447
  %5087 = fsub fast float %5021, %4427
  %5088 = fsub fast float %5022, %4428
  %5089 = fsub fast float %5023, %4429
  %5090 = fmul fast float %5087, %4984
  %5091 = fmul fast float %5088, %4984
  %5092 = fmul fast float %5089, %4984
  %5093 = fadd fast float %5090, %4427
  %5094 = fadd fast float %5091, %4428
  %5095 = fadd fast float %5092, %4429
  %5096 = fadd fast float %5075, %4397
  %5097 = fadd fast float %5076, %4398
  %5098 = fadd fast float %5077, %4399
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5096, %5100
  %5102 = fmul fast float %5097, %5100
  %5103 = fmul fast float %5098, %5100
  %5104 = fsub fast float %5101, %4397
  %5105 = fsub fast float %5102, %4398
  %5106 = fsub fast float %5103, %4399
  %5107 = fmul fast float %5104, %4984
  %5108 = fmul fast float %5105, %4984
  %5109 = fmul fast float %5106, %4984
  %5110 = fadd fast float %5107, %4397
  %5111 = fadd fast float %5108, %4398
  %5112 = fadd fast float %5109, %4399
  %5113 = call float @dx.op.binary.f32(i32 36, float %4403, float %5032)  ; FMin(a,b)
  %5114 = fsub fast float %5113, %4403
  %5115 = fmul fast float %5114, %4984
  %5116 = fadd fast float %5115, %4403
  %5117 = fsub fast float %5045, %4430
  %5118 = fmul fast float %5117, %4984
  %5119 = fadd fast float %5118, %4430
  br label %5120

; <label>:5120                                    ; preds = %4982, %4944, %4846
  %5121 = phi float [ %5084, %4982 ], [ %4445, %4944 ], [ %4445, %4846 ]
  %5122 = phi float [ %5085, %4982 ], [ %4446, %4944 ], [ %4446, %4846 ]
  %5123 = phi float [ %5086, %4982 ], [ %4447, %4944 ], [ %4447, %4846 ]
  %5124 = phi float [ %5093, %4982 ], [ %4427, %4944 ], [ %4427, %4846 ]
  %5125 = phi float [ %5094, %4982 ], [ %4428, %4944 ], [ %4428, %4846 ]
  %5126 = phi float [ %5095, %4982 ], [ %4429, %4944 ], [ %4429, %4846 ]
  %5127 = phi float [ %5110, %4982 ], [ %4397, %4944 ], [ %4397, %4846 ]
  %5128 = phi float [ %5111, %4982 ], [ %4398, %4944 ], [ %4398, %4846 ]
  %5129 = phi float [ %5112, %4982 ], [ %4399, %4944 ], [ %4399, %4846 ]
  %5130 = phi float [ %5119, %4982 ], [ %4430, %4944 ], [ %4430, %4846 ]
  %5131 = phi float [ %5116, %4982 ], [ %4403, %4944 ], [ %4403, %4846 ]
  br i1 %4844, label %5132, label %5405

; <label>:5132                                    ; preds = %5120
  %5133 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5134 = fmul fast float %5133, 4.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 21, float %5134)  ; Exp(value)
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = fmul fast float %5137, %62
  %5139 = fmul fast float %5137, %63
  %5140 = fmul fast float %5137, %64
  %5141 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5142 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5143 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5144 = call float @dx.op.unary.f32(i32 23, float %5141)  ; Log(value)
  %5145 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5146 = call float @dx.op.unary.f32(i32 23, float %5143)  ; Log(value)
  %5147 = fmul fast float %5144, 4.000000e+00
  %5148 = fmul fast float %5145, 4.000000e+00
  %5149 = fmul fast float %5146, 4.000000e+00
  %5150 = call float @dx.op.unary.f32(i32 21, float %5147)  ; Exp(value)
  %5151 = call float @dx.op.unary.f32(i32 21, float %5148)  ; Exp(value)
  %5152 = call float @dx.op.unary.f32(i32 21, float %5149)  ; Exp(value)
  %5153 = fadd fast float %5151, %5150
  %5154 = fadd fast float %5153, %5152
  %5155 = fdiv fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5155, %5150
  %5157 = fcmp fast ogt float %71, 0.000000e+00
  %5158 = fcmp fast ogt float %72, 0.000000e+00
  %5159 = fcmp fast ogt float %73, 0.000000e+00
  %5160 = fcmp fast olt float %71, 0.000000e+00
  %5161 = fcmp fast olt float %72, 0.000000e+00
  %5162 = fcmp fast olt float %73, 0.000000e+00
  %5163 = zext i1 %5157 to i32
  %5164 = zext i1 %5158 to i32
  %5165 = zext i1 %5159 to i32
  %5166 = zext i1 %5160 to i32
  %5167 = zext i1 %5161 to i32
  %5168 = zext i1 %5162 to i32
  %5169 = sub nsw i32 %5163, %5166
  %5170 = sub nsw i32 %5164, %5167
  %5171 = sub nsw i32 %5165, %5168
  %5172 = call float @dx.op.unary.f32(i32 83, float %5138)  ; DerivCoarseX(value)
  %5173 = call float @dx.op.unary.f32(i32 83, float %5139)  ; DerivCoarseX(value)
  %5174 = call float @dx.op.unary.f32(i32 83, float %5140)  ; DerivCoarseX(value)
  %5175 = call float @dx.op.unary.f32(i32 84, float %5138)  ; DerivCoarseY(value)
  %5176 = call float @dx.op.unary.f32(i32 84, float %5139)  ; DerivCoarseY(value)
  %5177 = call float @dx.op.unary.f32(i32 84, float %5140)  ; DerivCoarseY(value)
  %5178 = fcmp fast ole float %271, %5156
  %5179 = fmul fast float %5155, %5153
  %5180 = fcmp fast ole float %271, %5179
  %5181 = select i1 %5180, float %5140, float %5138
  %5182 = select i1 %5180, float %5138, float %5139
  %5183 = select i1 %5178, float %5139, float %5181
  %5184 = select i1 %5178, float %5140, float %5182
  %5185 = select i1 %5180, float %5174, float %5172
  %5186 = select i1 %5180, float %5172, float %5173
  %5187 = select i1 %5178, float %5173, float %5185
  %5188 = select i1 %5178, float %5174, float %5186
  %5189 = select i1 %5180, float %5177, float %5175
  %5190 = select i1 %5180, float %5175, float %5176
  %5191 = select i1 %5178, float %5176, float %5189
  %5192 = select i1 %5178, float %5177, float %5190
  %5193 = call float @dx.op.unary.f32(i32 27, float %5183)  ; Round_ni(value)
  %5194 = call float @dx.op.unary.f32(i32 27, float %5184)  ; Round_ni(value)
  %5195 = fptosi float %5193 to i32
  %5196 = fptosi float %5194 to i32
  %5197 = xor i32 %5196, %5195
  %5198 = sitofp i32 %5197 to float
  %5199 = fptosi float %5198 to i32
  %5200 = sitofp i32 %5199 to float
  %5201 = fmul fast float %5200, 0x3FE3C6EF40000000
  %5202 = frem fast float %5193, 2.560000e+02
  %5203 = frem fast float %5194, 2.560000e+02
  %5204 = fptoui float %5202 to i32
  %5205 = fptoui float %5203 to i32
  %5206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5204, i32 %5205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5210 = fadd fast float %5207, %5201
  %5211 = fadd fast float %5208, %5201
  %5212 = fadd fast float %5209, %5201
  %5213 = call float @dx.op.unary.f32(i32 22, float %5210)  ; Frc(value)
  %5214 = call float @dx.op.unary.f32(i32 22, float %5211)  ; Frc(value)
  %5215 = call float @dx.op.unary.f32(i32 22, float %5212)  ; Frc(value)
  %5216 = fmul fast float %5215, 0x401921FB60000000
  %5217 = call float @dx.op.unary.f32(i32 13, float %5216)  ; Sin(value)
  %5218 = call float @dx.op.unary.f32(i32 12, float %5216)  ; Cos(value)
  %5219 = fsub fast float -0.000000e+00, %5218
  %5220 = fmul fast float %5218, %5183
  %5221 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5184, float %5220)  ; FMad(a,b,c)
  %5222 = fmul fast float %5217, %5183
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5219, float %5184, float %5222)  ; FMad(a,b,c)
  %5224 = fadd fast float %5221, %5213
  %5225 = fadd fast float %5223, %5214
  %5226 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5227 = bitcast float %5226 to i32
  %5228 = icmp eq i32 %5227, 0
  br i1 %5228, label %5267, label %5229

; <label>:5229                                    ; preds = %5132
  %5230 = add i32 %5227, 0
  %5231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5231, %dx.types.Handle %111, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5237 = fsub fast float 1.000000e+00, %4842
  %5238 = call float @dx.op.binary.f32(i32 35, float %5237, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5239 = bitcast float %4842 to i32
  %5240 = sitofp i32 %5239 to float
  %5241 = fadd fast float %5240, 0xC1CFBF8940000000
  %5242 = fmul fast float %5236, %5241
  %5243 = fadd fast float %5242, 0x41CFBF8940000000
  %5244 = fptosi float %5243 to i32
  %5245 = bitcast i32 %5244 to float
  %5246 = bitcast float %5238 to i32
  %5247 = sitofp i32 %5246 to float
  %5248 = fadd fast float %5247, 0xC1CFBF8940000000
  %5249 = fmul fast float %5248, %5236
  %5250 = fadd fast float %5249, 0x41CFBF8940000000
  %5251 = fptosi float %5250 to i32
  %5252 = bitcast i32 %5251 to float
  %5253 = fmul fast float %5245, %5235
  %5254 = fmul fast float %5252, %5235
  %5255 = fsub fast float %5238, %5253
  %5256 = fadd fast float %5254, %5238
  %5257 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5259 = fsub fast float %5233, %5257
  %5260 = fsub fast float %5258, %5257
  %5261 = bitcast float %5260 to i32
  %5262 = sub nsw i32 2129859010, %5261
  %5263 = bitcast i32 %5262 to float
  %5264 = fmul fast float %5263, %5259
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fcmp fast olt float %5265, 0x3F70101020000000
  br i1 %5266, label %5405, label %5267

; <label>:5267                                    ; preds = %5229, %5132
  %5268 = phi float [ %5265, %5229 ], [ %4842, %5132 ]
  %5269 = fmul fast float %5268, %5135
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 1
  %5272 = extractvalue %dx.types.CBufRet.i32 %5270, 0
  %5273 = add i32 %5272, 0
  %5274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5274, %dx.types.Handle %110, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = extractvalue %dx.types.ResRet.f32 %5275, 3
  %5280 = and i32 %5271, 255
  %5281 = uitofp i32 %5280 to float
  %5282 = lshr i32 %5271, 8
  %5283 = and i32 %5282, 255
  %5284 = uitofp i32 %5283 to float
  %5285 = fmul fast float %5279, %5281
  %5286 = fadd fast float %5285, %5284
  %5287 = fmul fast float %5286, 0x3F70101000000000
  %5288 = fadd fast float %5287, 0xBFB99999A0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, 0x3FF1C71C80000000
  %5291 = call float @dx.op.binary.f32(i32 36, float %5287, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5292 = fsub fast float 1.000000e+00, %5290
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5293, %5276
  %5295 = fmul fast float %5293, %5277
  %5296 = fmul fast float %5293, %5278
  %5297 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5300 = fmul fast float %5290, %5276
  %5301 = fmul fast float %5290, %5277
  %5302 = fmul fast float %5290, %5278
  %5303 = fadd fast float %5300, %5291
  %5304 = fadd fast float %5301, %5291
  %5305 = fadd fast float %5302, %5291
  %5306 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5307 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5310 = extractvalue %dx.types.CBufRet.i32 %5309, 3
  %5311 = extractvalue %dx.types.CBufRet.i32 %5309, 2
  %5312 = add i32 %5311, 0
  %5313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5312, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5313, %dx.types.Handle %110, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5187, float %5188, float undef, float %5191, float %5192, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = extractvalue %dx.types.ResRet.f32 %5314, 3
  %5319 = and i32 %5310, 255
  %5320 = uitofp i32 %5319 to float
  %5321 = lshr i32 %5310, 8
  %5322 = and i32 %5321, 255
  %5323 = uitofp i32 %5322 to float
  %5324 = lshr i32 %5310, 16
  %5325 = and i32 %5324, 255
  %5326 = uitofp i32 %5325 to float
  %5327 = fmul fast float %5326, 0x3F70101000000000
  %5328 = fmul fast float %5315, %5320
  %5329 = fadd fast float %5328, %5323
  %5330 = fmul fast float %5329, 0x3F70101000000000
  %5331 = fadd fast float %5316, -5.000000e-01
  %5332 = fadd fast float %5318, -5.000000e-01
  %5333 = fmul fast float %5331, %5327
  %5334 = fmul fast float %5332, %5327
  %5335 = fadd fast float %5333, 5.000000e-01
  %5336 = fadd fast float %5334, 5.000000e-01
  %5337 = fmul fast float %5335, 2.000000e+00
  %5338 = fadd fast float %5337, -1.000000e+00
  %5339 = fmul fast float %5336, 2.000000e+00
  %5340 = fadd fast float %5339, -1.000000e+00
  %5341 = fadd fast float %5338, %5340
  %5342 = fmul fast float %5341, 5.000000e-01
  %5343 = fsub fast float %5338, %5340
  %5344 = fmul fast float %5343, 5.000000e-01
  %5345 = call float @dx.op.unary.f32(i32 6, float %5342)  ; FAbs(value)
  %5346 = fsub fast float 1.000000e+00, %5345
  %5347 = call float @dx.op.unary.f32(i32 6, float %5344)  ; FAbs(value)
  %5348 = fsub fast float %5346, %5347
  %5349 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5344, float %5348, float %5342, float %5344, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.unary.f32(i32 25, float %5349)  ; Rsqrt(value)
  %5351 = fmul fast float %5342, %5350
  %5352 = fmul fast float %5344, %5350
  %5353 = select i1 %5180, i32 %5170, i32 %5171
  %5354 = select i1 %5178, i32 %5169, i32 %5353
  %5355 = sitofp i32 %5354 to float
  %5356 = fmul fast float %5348, %5355
  %5357 = fmul fast float %5356, %5350
  %5358 = select i1 %5180, float %5357, float %5352
  %5359 = select i1 %5180, float %5352, float %5357
  %5360 = select i1 %5178, float %5357, float %5351
  %5361 = select i1 %5178, float %5352, float %5358
  %5362 = select i1 %5178, float %5351, float %5359
  %5363 = fsub fast float %5297, %5121
  %5364 = fsub fast float %5298, %5122
  %5365 = fsub fast float %5299, %5123
  %5366 = fmul fast float %5363, %5269
  %5367 = fmul fast float %5364, %5269
  %5368 = fmul fast float %5365, %5269
  %5369 = fadd fast float %5366, %5121
  %5370 = fadd fast float %5367, %5122
  %5371 = fadd fast float %5368, %5123
  %5372 = fsub fast float %5306, %5124
  %5373 = fsub fast float %5307, %5125
  %5374 = fsub fast float %5308, %5126
  %5375 = fmul fast float %5372, %5269
  %5376 = fmul fast float %5373, %5269
  %5377 = fmul fast float %5374, %5269
  %5378 = fadd fast float %5375, %5124
  %5379 = fadd fast float %5376, %5125
  %5380 = fadd fast float %5377, %5126
  %5381 = fadd fast float %5360, %5127
  %5382 = fadd fast float %5361, %5128
  %5383 = fadd fast float %5362, %5129
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5381, %5385
  %5387 = fmul fast float %5382, %5385
  %5388 = fmul fast float %5383, %5385
  %5389 = fsub fast float %5386, %5127
  %5390 = fsub fast float %5387, %5128
  %5391 = fsub fast float %5388, %5129
  %5392 = fmul fast float %5389, %5269
  %5393 = fmul fast float %5390, %5269
  %5394 = fmul fast float %5391, %5269
  %5395 = fadd fast float %5392, %5127
  %5396 = fadd fast float %5393, %5128
  %5397 = fadd fast float %5394, %5129
  %5398 = call float @dx.op.binary.f32(i32 36, float %5131, float %5317)  ; FMin(a,b)
  %5399 = fsub fast float %5398, %5131
  %5400 = fmul fast float %5399, %5269
  %5401 = fadd fast float %5400, %5131
  %5402 = fsub fast float %5330, %5130
  %5403 = fmul fast float %5402, %5269
  %5404 = fadd fast float %5403, %5130
  br label %5405

; <label>:5405                                    ; preds = %5267, %5229, %5120, %4836
  %5406 = phi float [ %5369, %5267 ], [ %5121, %5229 ], [ %5121, %5120 ], [ %4445, %4836 ]
  %5407 = phi float [ %5370, %5267 ], [ %5122, %5229 ], [ %5122, %5120 ], [ %4446, %4836 ]
  %5408 = phi float [ %5371, %5267 ], [ %5123, %5229 ], [ %5123, %5120 ], [ %4447, %4836 ]
  %5409 = phi float [ %5378, %5267 ], [ %5124, %5229 ], [ %5124, %5120 ], [ %4427, %4836 ]
  %5410 = phi float [ %5379, %5267 ], [ %5125, %5229 ], [ %5125, %5120 ], [ %4428, %4836 ]
  %5411 = phi float [ %5380, %5267 ], [ %5126, %5229 ], [ %5126, %5120 ], [ %4429, %4836 ]
  %5412 = phi float [ %5395, %5267 ], [ %5127, %5229 ], [ %5127, %5120 ], [ %4397, %4836 ]
  %5413 = phi float [ %5396, %5267 ], [ %5128, %5229 ], [ %5128, %5120 ], [ %4398, %4836 ]
  %5414 = phi float [ %5397, %5267 ], [ %5129, %5229 ], [ %5129, %5120 ], [ %4399, %4836 ]
  %5415 = phi float [ %5404, %5267 ], [ %5130, %5229 ], [ %5130, %5120 ], [ %4430, %4836 ]
  %5416 = phi float [ %5401, %5267 ], [ %5131, %5229 ], [ %5131, %5120 ], [ %4403, %4836 ]
  %5417 = fcmp fast une float %4840, 0.000000e+00
  %5418 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.unary.f32(i32 25, float %5418)  ; Rsqrt(value)
  br i1 %5417, label %5427, label %5420

; <label>:5420                                    ; preds = %5405
  %5421 = fmul fast float %5419, %201
  %5422 = fmul fast float %5419, %202
  %5423 = fmul fast float %5419, %203
  %5424 = fsub fast float -0.000000e+00, %5421
  %5425 = fsub fast float -0.000000e+00, %5422
  %5426 = fsub fast float -0.000000e+00, %5423
  br label %5594

; <label>:5427                                    ; preds = %5405
  %5428 = fmul fast float %201, %5419
  %5429 = fsub fast float -0.000000e+00, %5428
  %5430 = fmul fast float %202, %5419
  %5431 = fsub fast float -0.000000e+00, %5430
  %5432 = fmul fast float %203, %5419
  %5433 = fsub fast float -0.000000e+00, %5432
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5431, float %5433, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = fmul fast float %4840, 2.500000e+00
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = fmul fast float %4840, 0x4013FFFFE0000000
  %5438 = fadd fast float %5437, 0xBFFFFFFFE0000000
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fmul fast float %4840, 0x4004000020000000
  %5441 = fadd fast float %5440, 0xBFF8000040000000
  %5442 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5443 = fmul fast float %4409, 1.000000e+01
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = fmul fast float %5444, 2.000000e+00
  %5446 = fsub fast float 3.000000e+00, %5445
  %5447 = fmul fast float %5444, %5444
  %5448 = fmul fast float %5447, %5446
  %5449 = fsub fast float 1.000000e+00, %5448
  %5450 = fsub fast float 0x3FE3333340000000, %5415
  %5451 = fmul fast float %5450, 0x400AAAAAA0000000
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = fmul fast float %5449, %5452
  %5454 = fmul fast float %5406, 0x3FEA2B8620000000
  %5455 = fmul fast float %5407, 0x3FEA2B8620000000
  %5456 = fmul fast float %5408, 0x3FEA2B8620000000
  %5457 = fadd fast float %5454, 0x3FC81DFBA0000000
  %5458 = fmul fast float %5457, %5406
  %5459 = fadd fast float %5458, 0x3F910E6020000000
  %5460 = fadd fast float %5455, 0x3FC81DFBA0000000
  %5461 = fmul fast float %5460, %5407
  %5462 = fadd fast float %5461, 0x3F910E6020000000
  %5463 = fadd fast float %5456, 0x3FC81DFBA0000000
  %5464 = fmul fast float %5463, %5408
  %5465 = fadd fast float %5464, 0x3F910E6020000000
  %5466 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5467 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5469 = fsub fast float %5466, %5406
  %5470 = fsub fast float %5467, %5407
  %5471 = fsub fast float %5468, %5408
  %5472 = fmul fast float %5469, %5436
  %5473 = fmul fast float %5472, %5453
  %5474 = fmul fast float %5470, %5436
  %5475 = fmul fast float %5474, %5453
  %5476 = fmul fast float %5471, %5436
  %5477 = fmul fast float %5476, %5453
  %5478 = fadd fast float %5473, %5406
  %5479 = fadd fast float %5475, %5407
  %5480 = fadd fast float %5477, %5408
  %5481 = fmul fast float %5416, %5416
  %5482 = fmul fast float %5481, %5481
  %5483 = fadd fast float %5439, 1.000000e+00
  %5484 = fsub fast float %5483, %5453
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = fsub fast float 1.000000e+00, %5482
  %5489 = call float @dx.op.binary.f32(i32 36, float %5485, float %5488)  ; FMin(a,b)
  %5490 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5489, float %5490)  ; FMax(a,b)
  %5492 = fadd fast float %5487, 0xBFE4CCCCC0000000
  %5493 = fmul fast float %5492, 0x4006DB6DA0000000
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = fmul fast float %5494, 2.000000e+00
  %5496 = fsub fast float 3.000000e+00, %5495
  %5497 = bitcast float %5409 to i32
  %5498 = ashr i32 %5497, 1
  %5499 = add nsw i32 %5498, 532487669
  %5500 = bitcast i32 %5499 to float
  %5501 = fsub fast float 1.000000e+00, %5500
  %5502 = bitcast float %5501 to i32
  %5503 = sub nsw i32 2129859010, %5502
  %5504 = bitcast i32 %5503 to float
  %5505 = fmul fast float %5504, 2.000000e+00
  %5506 = bitcast float %5410 to i32
  %5507 = ashr i32 %5506, 1
  %5508 = add nsw i32 %5507, 532487669
  %5509 = bitcast i32 %5508 to float
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = bitcast float %5510 to i32
  %5512 = sub nsw i32 2129859010, %5511
  %5513 = bitcast i32 %5512 to float
  %5514 = fmul fast float %5513, 2.000000e+00
  %5515 = bitcast float %5411 to i32
  %5516 = ashr i32 %5515, 1
  %5517 = add nsw i32 %5516, 532487669
  %5518 = bitcast i32 %5517 to float
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = bitcast float %5519 to i32
  %5521 = sub nsw i32 2129859010, %5520
  %5522 = bitcast i32 %5521 to float
  %5523 = fmul fast float %5522, 2.000000e+00
  %5524 = fsub fast float 0x4002A9FBE0000000, %5505
  %5525 = fadd fast float %5505, 0x3FD54FDF00000000
  %5526 = bitcast float %5525 to i32
  %5527 = sub nsw i32 2129859010, %5526
  %5528 = bitcast i32 %5527 to float
  %5529 = fmul fast float %5528, %5524
  %5530 = fmul fast float %5529, %5529
  %5531 = fsub fast float 0x4002A9FBE0000000, %5514
  %5532 = fadd fast float %5514, 0x3FD54FDF00000000
  %5533 = bitcast float %5532 to i32
  %5534 = sub nsw i32 2129859010, %5533
  %5535 = bitcast i32 %5534 to float
  %5536 = fmul fast float %5535, %5531
  %5537 = fmul fast float %5536, %5536
  %5538 = fsub fast float 0x4002A9FBE0000000, %5523
  %5539 = fadd fast float %5523, 0x3FD54FDF00000000
  %5540 = bitcast float %5539 to i32
  %5541 = sub nsw i32 2129859010, %5540
  %5542 = bitcast i32 %5541 to float
  %5543 = fmul fast float %5542, %5538
  %5544 = fmul fast float %5543, %5543
  %5545 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5530)  ; FMax(a,b)
  %5546 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5537)  ; FMax(a,b)
  %5547 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5544)  ; FMax(a,b)
  %5548 = fsub fast float 1.000000e+00, %5434
  %5549 = fadd fast float %5548, %5449
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = fsub fast float 1.000000e+00, %4821
  %5552 = fmul fast float %5491, %5551
  %5553 = fmul fast float %5494, %5494
  %5554 = fmul fast float %5553, %5552
  %5555 = fmul fast float %5554, %5496
  %5556 = fmul fast float %5551, 0xBFE99999A0000000
  %5557 = fmul fast float %5556, %5436
  %5558 = fmul fast float %5557, %5453
  %5559 = fadd fast float %5558, 1.000000e+00
  %5560 = fadd fast float %5415, -1.000000e+00
  %5561 = fmul fast float %5559, %5560
  %5562 = fadd fast float %5561, 1.000000e+00
  %5563 = fsub fast float %5545, %5409
  %5564 = fsub fast float %5546, %5410
  %5565 = fsub fast float %5547, %5411
  %5566 = fmul fast float %5555, %5563
  %5567 = fmul fast float %5555, %5564
  %5568 = fmul fast float %5555, %5565
  %5569 = fadd fast float %5566, %5409
  %5570 = fadd fast float %5567, %5410
  %5571 = fadd fast float %5568, %5411
  %5572 = fsub fast float %121, %5412
  %5573 = fsub fast float %122, %5413
  %5574 = fsub fast float %123, %5414
  %5575 = fmul fast float %5555, %5572
  %5576 = fmul fast float %5555, %5573
  %5577 = fmul fast float %5555, %5574
  %5578 = fadd fast float %5575, %5412
  %5579 = fadd fast float %5576, %5413
  %5580 = fadd fast float %5577, %5414
  %5581 = fmul fast float %5555, %5550
  %5582 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = fmul fast float %5581, %5583
  %5585 = fadd fast float %5584, %5582
  %5586 = fsub fast float 1.000000e+00, %5416
  %5587 = fmul fast float %5555, %5586
  %5588 = fadd fast float %5587, %5416
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5578, float %5579, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 25, float %5589)  ; Rsqrt(value)
  %5591 = fmul fast float %5578, %5590
  %5592 = fmul fast float %5579, %5590
  %5593 = fmul fast float %5580, %5590
  br label %5594

; <label>:5594                                    ; preds = %5427, %5420
  %5595 = phi float [ %5426, %5420 ], [ %5433, %5427 ]
  %5596 = phi float [ %5425, %5420 ], [ %5431, %5427 ]
  %5597 = phi float [ %5424, %5420 ], [ %5429, %5427 ]
  %5598 = phi float [ %5423, %5420 ], [ %5432, %5427 ]
  %5599 = phi float [ %5422, %5420 ], [ %5430, %5427 ]
  %5600 = phi float [ %5421, %5420 ], [ %5428, %5427 ]
  %5601 = phi float [ %5406, %5420 ], [ %5478, %5427 ]
  %5602 = phi float [ %5407, %5420 ], [ %5479, %5427 ]
  %5603 = phi float [ %5408, %5420 ], [ %5480, %5427 ]
  %5604 = phi float [ %5409, %5420 ], [ %5569, %5427 ]
  %5605 = phi float [ %5410, %5420 ], [ %5570, %5427 ]
  %5606 = phi float [ %5411, %5420 ], [ %5571, %5427 ]
  %5607 = phi float [ %5412, %5420 ], [ %5591, %5427 ]
  %5608 = phi float [ %5413, %5420 ], [ %5592, %5427 ]
  %5609 = phi float [ %5414, %5420 ], [ %5593, %5427 ]
  %5610 = phi float [ %5415, %5420 ], [ %5585, %5427 ]
  %5611 = phi float [ %5416, %5420 ], [ %5588, %5427 ]
  %5612 = fsub fast float -0.000000e+00, %203
  %5613 = select i1 %260, float 0.000000e+00, float %5606
  %5614 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %5597, float %5596, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5599, float %5598, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fmul fast float %5616, 2.000000e+00
  %5618 = fmul fast float %5617, %5607
  %5619 = fmul fast float %5617, %5608
  %5620 = fmul fast float %5617, %5609
  %5621 = fsub fast float %5600, %5618
  %5622 = fsub fast float %5599, %5619
  %5623 = fsub fast float %5598, %5620
  %5624 = call float @dx.op.binary.f32(i32 36, float %5611, float 1.000000e+00)  ; FMin(a,b)
  %5625 = fsub fast float 1.000000e+00, %5624
  %5626 = bitcast float %5625 to i32
  %5627 = ashr i32 %5626, 1
  %5628 = add nsw i32 %5627, 532487669
  %5629 = bitcast i32 %5628 to float
  %5630 = fsub fast float 1.000000e+00, %5610
  %5631 = call float @dx.op.binary.f32(i32 35, float %5630, float 0x3F847AE140000000)  ; FMax(a,b)
  %5632 = fmul fast float %5631, %5631
  %5633 = fmul fast float %5632, %5632
  %5634 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5629, float %5633, float %5634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5636 = extractvalue %dx.types.ResRet.f32 %5635, 0
  %5637 = fsub fast float 1.000000e+00, %5611
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = fsub fast float 1.000000e+00, %81
  %5641 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5641, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5643 = fdiv fast float %5640, %5642
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, 5.000000e-01
  %5647 = fadd fast float %5646, 5.000000e-01
  %5648 = fmul fast float %5647, %81
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5650, %5643
  %5652 = fadd fast float %5648, %5651
  %5653 = fsub fast float 5.000000e-01, %5646
  %5654 = fmul fast float %5653, %5601
  %5655 = fmul fast float %5653, %5602
  %5656 = fmul fast float %5653, %5603
  %5657 = fadd fast float %5652, %5654
  %5658 = fadd fast float %5652, %5655
  %5659 = fadd fast float %5652, %5656
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fmul fast float %5661, 5.000000e-01
  %5663 = fadd fast float %5662, 5.000000e-01
  %5664 = fmul fast float %5663, %81
  %5665 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5666, %5643
  %5668 = fadd fast float %5664, %5667
  %5669 = fsub fast float 5.000000e-01, %5662
  %5670 = fmul fast float %5669, %5601
  %5671 = fmul fast float %5669, %5602
  %5672 = fmul fast float %5669, %5603
  %5673 = fadd fast float %5668, %5670
  %5674 = fadd fast float %5668, %5671
  %5675 = fadd fast float %5668, %5672
  %5676 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 0
  %5679 = call float @dx.op.binary.f32(i32 36, float %5601, float %5678)  ; FMin(a,b)
  %5680 = fmul fast float %5679, %5625
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = bitcast float %5681 to i32
  %5683 = sub nsw i32 2129859010, %5682
  %5684 = bitcast i32 %5683 to float
  %5685 = call float @dx.op.binary.f32(i32 36, float %5602, float %5678)  ; FMin(a,b)
  %5686 = fmul fast float %5685, %5625
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = call float @dx.op.binary.f32(i32 36, float %5603, float %5678)  ; FMin(a,b)
  %5692 = fmul fast float %5691, %5625
  %5693 = fsub fast float 1.000000e+00, %5692
  %5694 = bitcast float %5693 to i32
  %5695 = sub nsw i32 2129859010, %5694
  %5696 = bitcast i32 %5695 to float
  %5697 = fmul fast float %5624, %82
  %5698 = fmul fast float %5697, %5657
  %5699 = fmul fast float %5698, %5684
  %5700 = fmul fast float %5624, %83
  %5701 = fmul fast float %5700, %5658
  %5702 = fmul fast float %5701, %5690
  %5703 = fmul fast float %5624, %84
  %5704 = fmul fast float %5703, %5659
  %5705 = fmul fast float %5704, %5696
  %5706 = call float @dx.op.binary.f32(i32 36, float %5604, float %5678)  ; FMin(a,b)
  %5707 = fmul fast float %5706, %5625
  %5708 = fsub fast float 1.000000e+00, %5707
  %5709 = bitcast float %5708 to i32
  %5710 = sub nsw i32 2129859010, %5709
  %5711 = bitcast i32 %5710 to float
  %5712 = call float @dx.op.binary.f32(i32 36, float %5605, float %5678)  ; FMin(a,b)
  %5713 = fmul fast float %5712, %5625
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = bitcast float %5714 to i32
  %5716 = sub nsw i32 2129859010, %5715
  %5717 = bitcast i32 %5716 to float
  %5718 = call float @dx.op.binary.f32(i32 36, float %5613, float %5678)  ; FMin(a,b)
  %5719 = fmul fast float %5718, %5625
  %5720 = fsub fast float 1.000000e+00, %5719
  %5721 = bitcast float %5720 to i32
  %5722 = sub nsw i32 2129859010, %5721
  %5723 = bitcast i32 %5722 to float
  %5724 = fmul fast float %5697, %5673
  %5725 = fmul fast float %5724, %5711
  %5726 = fmul fast float %5700, %5674
  %5727 = fmul fast float %5726, %5717
  %5728 = fmul fast float %5703, %5675
  %5729 = fmul fast float %5728, %5723
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5699, float %5702, float %5705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = select i1 %260, float 0.000000e+00, float %5699
  %5732 = select i1 %260, float %5730, float %5702
  %5733 = select i1 %260, float 0.000000e+00, float %5705
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5727, float %5729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = select i1 %260, float 0.000000e+00, float %5725
  %5736 = select i1 %260, float %5734, float %5727
  %5737 = select i1 %260, float 0.000000e+00, float %5729
  %5738 = fmul fast float %3809, %3809
  %5739 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5740 = fmul fast float %5615, 9.843750e-01
  %5741 = fmul fast float %5610, 9.843750e-01
  %5742 = fadd fast float %5740, 7.812500e-03
  %5743 = fadd fast float %5741, 7.812500e-03
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5742, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  %5748 = extractvalue %dx.types.ResRet.f32 %5744, 3
  %5749 = fsub fast float 1.000000e+00, %5739
  %5750 = fsub fast float %5747, %5745
  %5751 = fsub fast float %5748, %5746
  %5752 = fmul fast float %5750, %5749
  %5753 = fmul fast float %5751, %5749
  %5754 = fadd fast float %5752, %5745
  %5755 = fadd fast float %5753, %5746
  %5756 = fmul fast float %5754, %5604
  %5757 = fmul fast float %5754, %5605
  %5758 = fmul fast float %5754, %5613
  %5759 = fadd fast float %5756, %5755
  %5760 = fadd fast float %5757, %5755
  %5761 = fadd fast float %5758, %5755
  %5762 = fcmp fast ogt float %4404, 0.000000e+00
  br i1 %5762, label %5763, label %5789

; <label>:5763                                    ; preds = %5594
  %5764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4404, float %5615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5765 = extractvalue %dx.types.ResRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.ResRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.ResRet.f32 %5764, 2
  %5768 = fadd fast float %5765, -5.000000e-01
  %5769 = fadd fast float %5766, -5.000000e-01
  %5770 = fadd fast float %5767, -5.000000e-01
  %5771 = fsub fast float 1.000000e+00, %5604
  %5772 = fsub fast float 1.000000e+00, %5605
  %5773 = fsub fast float 1.000000e+00, %5613
  %5774 = fmul fast float %5604, 4.000000e+00
  %5775 = fmul fast float %5774, %5771
  %5776 = fmul fast float %5775, %5768
  %5777 = fmul fast float %5605, 4.000000e+00
  %5778 = fmul fast float %5777, %5772
  %5779 = fmul fast float %5778, %5769
  %5780 = fmul fast float %5613, 4.000000e+00
  %5781 = fmul fast float %5780, %5773
  %5782 = fmul fast float %5781, %5770
  %5783 = fadd fast float %5776, %5759
  %5784 = fadd fast float %5779, %5760
  %5785 = fadd fast float %5782, %5761
  %5786 = call float @dx.op.unary.f32(i32 7, float %5783)  ; Saturate(value)
  %5787 = call float @dx.op.unary.f32(i32 7, float %5784)  ; Saturate(value)
  %5788 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  br label %5789

; <label>:5789                                    ; preds = %5763, %5594
  %5790 = phi float [ %5786, %5763 ], [ %5759, %5594 ]
  %5791 = phi float [ %5787, %5763 ], [ %5760, %5594 ]
  %5792 = phi float [ %5788, %5763 ], [ %5761, %5594 ]
  %5793 = call float @dx.op.binary.f32(i32 35, float %5791, float %5792)  ; FMax(a,b)
  %5794 = call float @dx.op.binary.f32(i32 35, float %5790, float %5793)  ; FMax(a,b)
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = fmul fast float %5794, %5610
  %5797 = fadd fast float %5796, %5610
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5801 = fmul fast float %5797, %5799
  %5802 = fadd fast float %5801, %5800
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = fsub fast float 1.000000e+00, %5636
  %5805 = fadd fast float %5804, %5803
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fcmp fast olt float %5806, 1.000000e+00
  br i1 %5807, label %5808, label %6284

; <label>:5808                                    ; preds = %5789
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5812 = fmul fast float %5810, %114
  %5813 = fmul fast float %5811, %115
  %5814 = fptoui float %5812 to i32
  %5815 = fptoui float %5813 to i32
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.CBufRet.f32 %5816, 2
  %5819 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5820 = fadd fast float %101, -4.000000e+00
  %5821 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5822 = fadd fast float %5821, %5817
  %5823 = fmul fast float %5822, %5818
  %5824 = call float @dx.op.unary.f32(i32 23, float %5823)  ; Log(value)
  %5825 = fmul fast float %5824, %5819
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5828 = fmul fast float %5825, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.i32 %5830, 1
  %5832 = add i32 %5831, -1
  %5833 = uitofp i32 %5831 to float
  %5834 = fmul fast float %5833, %5829
  %5835 = fptoui float %5834 to i32
  %5836 = call i32 @dx.op.binary.i32(i32 40, i32 %5835, i32 %5832)  ; UMin(a,b)
  %5837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.i32 %5837, 2
  %5839 = extractvalue %dx.types.CBufRet.i32 %5837, 3
  %5840 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5815, i32 %5838, i32 %5814)  ; UMad(a,b,c)
  %5841 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5836, i32 %5839, i32 %5840)  ; UMad(a,b,c)
  %5842 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5843 = fptoui float %5842 to i32
  %5844 = lshr i32 %5843, 5
  %5845 = call i32 @dx.op.binary.i32(i32 40, i32 %5844, i32 8191)  ; UMin(a,b)
  %5846 = fsub fast float %4811, %203
  %5847 = call float @dx.op.unary.f32(i32 7, float %5846)  ; Saturate(value)
  %5848 = fcmp fast ogt float %5847, 0.000000e+00
  %5849 = fcmp fast ogt float %5623, 0.000000e+00
  %5850 = and i1 %5849, %5848
  br i1 %5850, label %5851, label %5880

; <label>:5851                                    ; preds = %5808
  %5852 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = call float @dx.op.binary.f32(i32 35, float %5852, float -1.000000e+00)  ; FMax(a,b)
  %5854 = call float @dx.op.binary.f32(i32 36, float %5853, float 1.000000e+00)  ; FMin(a,b)
  %5855 = fmul fast float %5854, %5854
  %5856 = fsub fast float 1.000000e+00, %5855
  %5857 = fmul fast float %5856, 0x3FFC6E2300000000
  %5858 = fsub fast float 1.000000e+00, %5857
  %5859 = fcmp fast ogt float %5858, 0.000000e+00
  %5860 = call float @dx.op.unary.f32(i32 24, float %5858)  ; Sqrt(value)
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = call float @dx.op.unary.f32(i32 23, float %5861)  ; Log(value)
  %5863 = fmul fast float %5862, 5.000000e+00
  %5864 = call float @dx.op.unary.f32(i32 21, float %5863)  ; Exp(value)
  %5865 = fmul fast float %5864, 0x3FEF591A60000000
  %5866 = fadd fast float %5865, 0x3F94DCB540000000
  %5867 = select i1 %5859, float %5866, float 1.000000e+00
  %5868 = fcmp fast oge float %5867, 1.000000e+00
  %5869 = fmul fast float %5852, 2.000000e+00
  %5870 = fadd fast float %5869, %5623
  %5871 = select i1 %5868, float %5870, float %5623
  %5872 = fsub fast float %5871, %5623
  %5873 = fmul fast float %5872, %5847
  %5874 = fadd fast float %5873, %5623
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5874, float %5621, float %5622, float %5874)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.unary.f32(i32 25, float %5875)  ; Rsqrt(value)
  %5877 = fmul fast float %5876, %5621
  %5878 = fmul fast float %5876, %5622
  %5879 = fmul fast float %5874, %5876
  br label %5880

; <label>:5880                                    ; preds = %5851, %5808
  %5881 = phi float [ %5877, %5851 ], [ %5621, %5808 ]
  %5882 = phi float [ %5878, %5851 ], [ %5622, %5808 ]
  %5883 = phi float [ %5879, %5851 ], [ %5623, %5808 ]
  %5884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.i32 %5884, 2
  %5886 = add nsw i32 %5885, -1
  %5887 = call i32 @dx.op.binary.i32(i32 37, i32 %5886, i32 0)  ; IMax(a,b)
  %5888 = shl i32 %5845, 2
  %5889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5888, i32 undef)  ; BufferLoad(srv,index,wot)
  %5890 = extractvalue %dx.types.ResRet.i32 %5889, 0
  %5891 = lshr i32 %5890, 16
  %5892 = and i32 %5890, 65535
  %5893 = lshr i32 %5890, 21
  %5894 = lshr i32 %5892, 5
  %5895 = call i32 @dx.op.binary.i32(i32 40, i32 %5894, i32 %5887)  ; UMin(a,b)
  %5896 = icmp ugt i32 %5893, %5895
  br i1 %5896, label %6260, label %5897

; <label>:5897                                    ; preds = %5880
  br label %5898

; <label>:5898                                    ; preds = %6252, %5897
  %5899 = phi float [ %6253, %6252 ], [ 0.000000e+00, %5897 ]
  %5900 = phi float [ %6254, %6252 ], [ 0.000000e+00, %5897 ]
  %5901 = phi float [ %6255, %6252 ], [ 0.000000e+00, %5897 ]
  %5902 = phi float [ %6256, %6252 ], [ 1.000000e+00, %5897 ]
  %5903 = phi i32 [ %6257, %6252 ], [ %5893, %5897 ]
  %5904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.i32 %5904, 2
  %5906 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5841, i32 %5905, i32 %5903)  ; UMad(a,b,c)
  %5907 = shl i32 %5906, 2
  %5908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.i32 %5908, 0
  %5910 = shl i32 %5903, 5
  %5911 = sub nsw i32 %5891, %5910
  %5912 = call i32 @dx.op.binary.i32(i32 37, i32 %5911, i32 0)  ; IMax(a,b)
  %5913 = call i32 @dx.op.binary.i32(i32 38, i32 %5912, i32 31)  ; IMin(a,b)
  %5914 = sub nsw i32 1, %5891
  %5915 = add nsw i32 %5914, %5892
  %5916 = call i32 @dx.op.binary.i32(i32 37, i32 %5915, i32 0)  ; IMax(a,b)
  %5917 = call i32 @dx.op.binary.i32(i32 38, i32 %5916, i32 32)  ; IMin(a,b)
  %5918 = and i32 %5917, 31
  %5919 = shl i32 -1, %5918
  %5920 = xor i32 %5919, -1
  %5921 = and i32 %5913, 31
  %5922 = shl i32 %5920, %5921
  %5923 = icmp eq i32 %5917, 32
  %5924 = select i1 %5923, i32 -1, i32 %5922
  %5925 = and i32 %5924, %5909
  %5926 = icmp eq i32 %5925, 0
  br i1 %5926, label %6252, label %5927

; <label>:5927                                    ; preds = %5898
  br label %5928

; <label>:5928                                    ; preds = %6035, %5927
  %5929 = phi float [ %6036, %6035 ], [ %5899, %5927 ]
  %5930 = phi float [ %6037, %6035 ], [ %5900, %5927 ]
  %5931 = phi float [ %6038, %6035 ], [ %5901, %5927 ]
  %5932 = phi float [ %6039, %6035 ], [ %5902, %5927 ]
  %5933 = phi i32 [ %5938, %6035 ], [ %5925, %5927 ]
  %5934 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5933)  ; FirstbitLo(value)
  %5935 = add i32 %5934, %5910
  %5936 = and i32 %5934, 31
  %5937 = shl i32 1, %5936
  %5938 = xor i32 %5937, %5933
  %5939 = mul i32 %5935, 72
  %5940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = add i32 %5939, 12
  %5945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5944, i32 undef)  ; BufferLoad(srv,index,wot)
  %5946 = extractvalue %dx.types.ResRet.i32 %5945, 0
  %5947 = add i32 %5939, 16
  %5948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5947, i32 undef)  ; BufferLoad(srv,index,wot)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5952 = add i32 %5939, 28
  %5953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  %5955 = add i32 %5939, 32
  %5956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.ResRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.ResRet.f32 %5956, 3
  %5961 = add i32 %5939, 48
  %5962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5961, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.f32 %5962, 1
  %5965 = add i32 %5939, 56
  %5966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5965, i32 undef)  ; BufferLoad(srv,index,wot)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5969 = add i32 %5939, 64
  %5970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5969, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = mul i32 %5935, 60
  %5974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5973, i32 undef)  ; BufferLoad(srv,index,wot)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = add i32 %5973, 12
  %5979 = add i32 %5973, 48
  %5980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.ResRet.f32 %5980, 2
  %5984 = and i32 %5946, 32767
  %5985 = bitcast float %5941 to i32
  %5986 = icmp eq i32 %5985, -1
  %5987 = bitcast float %5942 to i32
  %5988 = and i32 %5946, 32768
  %5989 = icmp ne i32 %5988, 0
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = fsub fast float %5975, %5991
  %5995 = fsub fast float %5976, %5992
  %5996 = fsub fast float %5977, %5993
  %5997 = fsub fast float %201, %5994
  %5998 = fsub fast float %202, %5995
  %5999 = fsub fast float %203, %5996
  %6000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6001, float %6002, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = add i32 %5973, 24
  %6006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6005, i32 undef)  ; BufferLoad(srv,index,wot)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6007, float %6008, float %6009)  ; Dot3(ax,ay,az,bx,by,bz)
  %6011 = add i32 %5973, 36
  %6012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.ResRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.ResRet.f32 %6012, 2
  %6016 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6013, float %6014, float %6015)  ; Dot3(ax,ay,az,bx,by,bz)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6018 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6019 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6020 = fsub fast float %5981, %6017
  %6021 = fsub fast float %5982, %6018
  %6022 = fsub fast float %5983, %6019
  %6023 = fmul fast float %6020, %5949
  %6024 = fmul fast float %6021, %5950
  %6025 = fmul fast float %6022, %5951
  %6026 = call float @dx.op.binary.f32(i32 36, float %6024, float %6025)  ; FMin(a,b)
  %6027 = call float @dx.op.binary.f32(i32 36, float %6023, float %6026)  ; FMin(a,b)
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = call float @dx.op.binary.f32(i32 36, float %5932, float %6028)  ; FMin(a,b)
  %6030 = uitofp i1 %5989 to float
  %6031 = fadd fast float %5847, 1.000000e+00
  %6032 = fsub fast float %6031, %6030
  %6033 = fmul fast float %6029, %6032
  %6034 = fcmp fast ogt float %6033, 0.000000e+00
  br i1 %6034, label %6041, label %6035

; <label>:6035                                    ; preds = %6183, %5928
  %6036 = phi float [ %6247, %6183 ], [ %5929, %5928 ]
  %6037 = phi float [ %6248, %6183 ], [ %5930, %5928 ]
  %6038 = phi float [ %6249, %6183 ], [ %5931, %5928 ]
  %6039 = phi float [ %6250, %6183 ], [ %5932, %5928 ]
  %6040 = icmp eq i32 %5933, %5937
  br i1 %6040, label %6251, label %5928

; <label>:6041                                    ; preds = %5928
  br i1 %5986, label %6099, label %6042

; <label>:6042                                    ; preds = %6041
  %6043 = fsub fast float -0.000000e+00, %6001
  %6044 = fsub fast float -0.000000e+00, %6002
  %6045 = fsub fast float -0.000000e+00, %6003
  %6046 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %6043, float %6044, float %6045)  ; Dot3(ax,ay,az,bx,by,bz)
  %6047 = fsub fast float -0.000000e+00, %6046
  %6048 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6043, float %6044, float %6045)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = fadd fast float %6048, %5964
  %6050 = fadd fast float %5963, %6048
  %6051 = fsub fast float -0.000000e+00, %6050
  %6052 = fcmp ogt float %6046, -0.000000e+00
  %6053 = select i1 %6052, float %6051, float %6049
  %6054 = call float @dx.op.unary.f32(i32 6, float %6047)  ; FAbs(value)
  %6055 = fdiv fast float 1.000000e+00, %6054
  %6056 = fmul fast float %6053, %6055
  %6057 = call float @dx.op.binary.f32(i32 35, float %6056, float 0.000000e+00)  ; FMax(a,b)
  %6058 = fsub fast float -0.000000e+00, %6007
  %6059 = fsub fast float -0.000000e+00, %6008
  %6060 = fsub fast float -0.000000e+00, %6009
  %6061 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6058, float %6059, float %6060)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = fadd fast float %6063, %5968
  %6065 = fadd fast float %5967, %6063
  %6066 = fsub fast float -0.000000e+00, %6065
  %6067 = fcmp ogt float %6061, -0.000000e+00
  %6068 = select i1 %6067, float %6066, float %6064
  %6069 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6070 = fdiv fast float 1.000000e+00, %6069
  %6071 = fmul fast float %6068, %6070
  %6072 = call float @dx.op.binary.f32(i32 35, float %6071, float 0.000000e+00)  ; FMax(a,b)
  %6073 = fsub fast float -0.000000e+00, %6013
  %6074 = fsub fast float -0.000000e+00, %6014
  %6075 = fsub fast float -0.000000e+00, %6015
  %6076 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %6073, float %6074, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = fsub fast float -0.000000e+00, %6076
  %6078 = call float @dx.op.dot3.f32(i32 55, float %5997, float %5998, float %5999, float %6073, float %6074, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = fadd fast float %6078, %5972
  %6080 = fadd fast float %5971, %6078
  %6081 = fsub fast float -0.000000e+00, %6080
  %6082 = fcmp ogt float %6076, -0.000000e+00
  %6083 = select i1 %6082, float %6081, float %6079
  %6084 = call float @dx.op.unary.f32(i32 6, float %6077)  ; FAbs(value)
  %6085 = fdiv fast float 1.000000e+00, %6084
  %6086 = fmul fast float %6083, %6085
  %6087 = call float @dx.op.binary.f32(i32 35, float %6086, float 0.000000e+00)  ; FMax(a,b)
  %6088 = call float @dx.op.binary.f32(i32 36, float %6072, float %6087)  ; FMin(a,b)
  %6089 = call float @dx.op.binary.f32(i32 36, float %6057, float %6088)  ; FMin(a,b)
  %6090 = fmul fast float %6089, %5881
  %6091 = fmul fast float %6089, %5882
  %6092 = fmul fast float %6089, %5883
  %6093 = fadd fast float %6090, %201
  %6094 = fadd fast float %6091, %202
  %6095 = fadd fast float %6092, %203
  %6096 = fsub fast float %6093, %5941
  %6097 = fsub fast float %6094, %5942
  %6098 = fsub fast float %6095, %5943
  br label %6106

; <label>:6099                                    ; preds = %6041
  %6100 = fmul fast float %5881, 8.096000e+03
  %6101 = fmul fast float %5882, 8.096000e+03
  %6102 = fmul fast float %5883, 8.096000e+03
  %6103 = fadd fast float %6100, %201
  %6104 = fadd fast float %6101, %202
  %6105 = fadd fast float %6102, %203
  br label %6106

; <label>:6106                                    ; preds = %6099, %6042
  %6107 = phi float [ %5881, %6099 ], [ %6096, %6042 ]
  %6108 = phi float [ %5882, %6099 ], [ %6097, %6042 ]
  %6109 = phi float [ %5883, %6099 ], [ %6098, %6042 ]
  %6110 = phi float [ %6103, %6099 ], [ %6093, %6042 ]
  %6111 = phi float [ %6104, %6099 ], [ %6094, %6042 ]
  %6112 = phi float [ %6105, %6099 ], [ %6095, %6042 ]
  %6113 = fcmp fast olt float %5960, 1.000000e+00
  br i1 %6113, label %6114, label %6145, !dx.controlflow.hints !102

; <label>:6114                                    ; preds = %6106
  %6115 = fmul fast float %6109, %5958
  %6116 = fmul fast float %6108, %5959
  %6117 = fsub fast float %6115, %6116
  %6118 = fmul fast float %6107, %5959
  %6119 = fmul fast float %6109, %5957
  %6120 = fsub fast float %6118, %6119
  %6121 = fmul fast float %6108, %5957
  %6122 = fmul fast float %6107, %5958
  %6123 = fsub fast float %6121, %6122
  %6124 = fmul fast float %6117, 2.000000e+00
  %6125 = fmul fast float %6120, 2.000000e+00
  %6126 = fmul fast float %6123, 2.000000e+00
  %6127 = fmul fast float %6124, %5960
  %6128 = fmul fast float %6125, %5960
  %6129 = fmul fast float %6126, %5960
  %6130 = fmul fast float %6126, %5958
  %6131 = fmul fast float %6125, %5959
  %6132 = fmul fast float %6124, %5959
  %6133 = fmul fast float %6126, %5957
  %6134 = fmul fast float %6125, %5957
  %6135 = fmul fast float %6124, %5958
  %6136 = fadd fast float %6130, %6107
  %6137 = fadd fast float %6136, %6127
  %6138 = fsub fast float %6137, %6131
  %6139 = fsub fast float %6108, %6133
  %6140 = fadd fast float %6139, %6128
  %6141 = fadd fast float %6140, %6132
  %6142 = fadd fast float %6129, %6109
  %6143 = fsub fast float %6142, %6135
  %6144 = fadd fast float %6143, %6134
  br label %6145

; <label>:6145                                    ; preds = %6114, %6106
  %6146 = phi float [ %6138, %6114 ], [ %6107, %6106 ]
  %6147 = phi float [ %6141, %6114 ], [ %6108, %6106 ]
  %6148 = phi float [ %6144, %6114 ], [ %6109, %6106 ]
  br i1 %5986, label %6180, label %6149

; <label>:6149                                    ; preds = %6145
  %6150 = fmul fast float %5610, 0x400187C840000000
  %6151 = fadd fast float %6150, 0xC00EFC2120000000
  %6152 = fmul fast float %6151, %5610
  %6153 = fadd fast float %6152, 0x3FE5D16340000000
  %6154 = fmul fast float %6153, %5610
  %6155 = fadd fast float %6154, 1.000000e+00
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = fsub fast float %6110, %201
  %6158 = fsub fast float %6111, %202
  %6159 = fsub fast float %6112, %203
  %6160 = fsub fast float %6110, %5941
  %6161 = fsub fast float %6111, %5942
  %6162 = fsub fast float %6112, %5943
  %6163 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6157, float %6158, float %6159)  ; Dot3(ax,ay,az,bx,by,bz)
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6160, float %6161, float %6162, float %6160, float %6161, float %6162)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = fadd fast float %6164, 0x3EE4F8B580000000
  %6166 = fdiv fast float %6163, %6165
  %6167 = bitcast float %6166 to i32
  %6168 = ashr i32 %6167, 1
  %6169 = add nsw i32 %6168, 532487669
  %6170 = bitcast i32 %6169 to float
  %6171 = fmul fast float %6170, %6156
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6173 = fmul fast float %6172, 0x4009981AE0000000
  %6174 = fsub fast float 0x40111BBD80000000, %6173
  %6175 = fmul fast float %6174, %6172
  %6176 = fadd fast float %6175, 0xC0009F6020000000
  %6177 = fmul fast float %6176, %6172
  %6178 = fadd fast float %6177, 1.000000e+00
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  br label %6183

; <label>:6180                                    ; preds = %6145
  %6181 = icmp ne i32 %5987, -1
  %6182 = zext i1 %6181 to i32
  br label %6183

; <label>:6183                                    ; preds = %6180, %6149
  %6184 = phi float [ %5610, %6180 ], [ %6179, %6149 ]
  %6185 = phi i32 [ %6182, %6180 ], [ 0, %6149 ]
  %6186 = fmul float %6184, 5.000000e+00
  %6187 = fsub float 5.000000e+00, %6186
  %6188 = icmp ne i32 %6185, 0
  %6189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.f32 %6189, 3
  %6191 = fadd fast float %6190, %6187
  %6192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6191)  ; FMax(a,b)
  %6193 = call float @dx.op.unary.f32(i32 6, float %6146)  ; FAbs(value)
  %6194 = call float @dx.op.unary.f32(i32 6, float %6147)  ; FAbs(value)
  %6195 = fadd fast float %6194, %6193
  %6196 = call float @dx.op.unary.f32(i32 6, float %6148)  ; FAbs(value)
  %6197 = fadd fast float %6195, %6196
  %6198 = fcmp fast oeq float %6197, 0.000000e+00
  %6199 = fdiv fast float 1.000000e+00, %6197
  %6200 = select i1 %6198, float 1.000000e+00, float %6199
  %6201 = fmul fast float %6200, %6146
  %6202 = fmul fast float %6200, %6147
  %6203 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6204 = call float @dx.op.unary.f32(i32 6, float %6201)  ; FAbs(value)
  %6205 = fsub fast float 1.000000e+00, %6203
  %6206 = fsub fast float 1.000000e+00, %6204
  %6207 = fcmp fast oge float %6201, 0.000000e+00
  %6208 = fcmp fast oge float %6202, 0.000000e+00
  %6209 = select i1 %6207, float 1.000000e+00, float -1.000000e+00
  %6210 = select i1 %6208, float 1.000000e+00, float -1.000000e+00
  %6211 = fcmp fast ole float %6148, 0.000000e+00
  %6212 = fmul fast float %6209, %6205
  %6213 = fmul fast float %6210, %6206
  %6214 = select i1 %6211, float %6212, float %6201
  %6215 = select i1 %6211, float %6213, float %6202
  %6216 = fmul fast float %6214, 5.000000e-01
  %6217 = fmul fast float %6215, 5.000000e-01
  %6218 = fadd fast float %6216, 5.000000e-01
  %6219 = fadd fast float %6217, 5.000000e-01
  %6220 = uitofp i32 %5984 to float
  %6221 = call float @dx.op.binary.f32(i32 36, float %6192, float 3.000000e+00)  ; FMin(a,b)
  %6222 = fadd fast float %6221, 2.000000e+00
  %6223 = call float @dx.op.unary.f32(i32 21, float %6222)  ; Exp(value)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6189, 1
  %6225 = fmul fast float %6224, %6223
  %6226 = fmul fast float %6225, 2.000000e+00
  %6227 = fsub fast float 1.000000e+00, %6226
  %6228 = fmul fast float %6218, %6227
  %6229 = fmul fast float %6219, %6227
  %6230 = fadd fast float %6228, %6225
  %6231 = fadd fast float %6229, %6225
  %6232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6230, float %6231, float %6220, float undef, i32 0, i32 0, i32 undef, float %6192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.ResRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.ResRet.f32 %6232, 2
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6238 = fmul fast float %6237, %5954
  %6239 = call float @dx.op.binary.f32(i32 36, float %5676, float %6238)  ; FMin(a,b)
  %6240 = select i1 %6188, float %6239, float %6238
  %6241 = fmul fast float %6233, %6033
  %6242 = fmul fast float %6241, %6240
  %6243 = fmul fast float %6234, %6033
  %6244 = fmul fast float %6243, %6240
  %6245 = fmul fast float %6235, %6033
  %6246 = fmul fast float %6245, %6240
  %6247 = fadd fast float %6242, %5929
  %6248 = fadd fast float %6244, %5930
  %6249 = fadd fast float %6246, %5931
  %6250 = fsub fast float %5932, %6033
  br label %6035

; <label>:6251                                    ; preds = %6035
  br label %6252

; <label>:6252                                    ; preds = %6251, %5898
  %6253 = phi float [ %5899, %5898 ], [ %6036, %6251 ]
  %6254 = phi float [ %5900, %5898 ], [ %6037, %6251 ]
  %6255 = phi float [ %5901, %5898 ], [ %6038, %6251 ]
  %6256 = phi float [ %5902, %5898 ], [ %6039, %6251 ]
  %6257 = add i32 %5903, 1
  %6258 = icmp ugt i32 %6257, %5895
  br i1 %6258, label %6259, label %5898, !llvm.loop !103

; <label>:6259                                    ; preds = %6252
  br label %6260

; <label>:6260                                    ; preds = %6259, %5880
  %6261 = phi float [ 0.000000e+00, %5880 ], [ %6253, %6259 ]
  %6262 = phi float [ 0.000000e+00, %5880 ], [ %6254, %6259 ]
  %6263 = phi float [ 0.000000e+00, %5880 ], [ %6255, %6259 ]
  %6264 = call float @dx.op.dot3.f32(i32 55, float %6261, float %6262, float %6263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6265 = select i1 %260, float 0.000000e+00, float %6261
  %6266 = select i1 %260, float %6264, float %6262
  %6267 = select i1 %260, float 0.000000e+00, float %6263
  %6268 = fcmp fast olt float %5806, 0.000000e+00
  %6269 = call float @dx.op.unary.f32(i32 6, float %5806)  ; FAbs(value)
  %6270 = fmul fast float %6269, %5735
  %6271 = fmul fast float %6269, %5736
  %6272 = fmul fast float %6269, %5737
  %6273 = select i1 %6268, float %5735, float %6270
  %6274 = select i1 %6268, float %5736, float %6271
  %6275 = select i1 %6268, float %5737, float %6272
  %6276 = fsub fast float 1.000000e+00, %6269
  %6277 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6278 = fmul fast float %6277, %6265
  %6279 = fmul fast float %6277, %6266
  %6280 = fmul fast float %6277, %6267
  %6281 = fadd fast float %6273, %6278
  %6282 = fadd fast float %6274, %6279
  %6283 = fadd fast float %6275, %6280
  br label %6284

; <label>:6284                                    ; preds = %6260, %5789
  %6285 = phi float [ %5735, %5789 ], [ %6281, %6260 ]
  %6286 = phi float [ %5736, %5789 ], [ %6282, %6260 ]
  %6287 = phi float [ %5737, %5789 ], [ %6283, %6260 ]
  %6288 = fmul fast float %5795, %5731
  %6289 = fmul fast float %5795, %5732
  %6290 = fmul fast float %5795, %5733
  %6291 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6292 = fcmp fast ogt float %6291, 0x3E7FF19E20000000
  %6293 = fdiv fast float 1.000000e+00, %6291
  %6294 = select i1 %6292, float %6293, float 0.000000e+00
  %6295 = fmul fast float %6294, %5601
  %6296 = fmul fast float %6294, %5602
  %6297 = fmul fast float %6294, %5603
  %6298 = fadd fast float %6295, -1.000000e+00
  %6299 = fadd fast float %6296, -1.000000e+00
  %6300 = fadd fast float %6297, -1.000000e+00
  %6301 = fmul fast float %6298, 5.000000e-01
  %6302 = fmul fast float %6299, 5.000000e-01
  %6303 = fmul fast float %6300, 5.000000e-01
  %6304 = fadd fast float %6301, 1.000000e+00
  %6305 = fadd fast float %6302, 1.000000e+00
  %6306 = fadd fast float %6303, 1.000000e+00
  %6307 = call float @dx.op.binary.f32(i32 35, float %5615, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6308 = fdiv fast float %3809, %6307
  %6309 = fcmp fast olt float %4431, 1.270000e+02
  %6310 = fcmp fast olt float %4432, 1.270000e+02
  %6311 = fcmp fast olt float %4433, 1.270000e+02
  %6312 = fmul fast float %4431, 0xBFF7154760000000
  %6313 = fmul fast float %6312, %6308
  %6314 = fmul fast float %4432, 0xBFF7154760000000
  %6315 = fmul fast float %6314, %6308
  %6316 = fmul fast float %4433, 0xBFF7154760000000
  %6317 = fmul fast float %6316, %6308
  %6318 = call float @dx.op.unary.f32(i32 21, float %6313)  ; Exp(value)
  %6319 = call float @dx.op.unary.f32(i32 21, float %6315)  ; Exp(value)
  %6320 = call float @dx.op.unary.f32(i32 21, float %6317)  ; Exp(value)
  %6321 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6322 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6323 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6324 = select i1 %6309, float %6321, float 0.000000e+00
  %6325 = select i1 %6310, float %6322, float 0.000000e+00
  %6326 = select i1 %6311, float %6323, float 0.000000e+00
  %6327 = fmul fast float %6324, %5795
  %6328 = fmul fast float %6325, %5795
  %6329 = fmul fast float %6326, %5795
  %6330 = fadd fast float %6327, -1.000000e+00
  %6331 = fadd fast float %6328, -1.000000e+00
  %6332 = fadd fast float %6329, -1.000000e+00
  %6333 = fmul fast float %6285, %5790
  %6334 = fmul fast float %6286, %5791
  %6335 = fmul fast float %6287, %5792
  %6336 = fsub fast float 1.000000e+00, %5615
  %6337 = bitcast float %6336 to i32
  %6338 = sitofp i32 %6337 to float
  %6339 = fmul fast float %6338, 5.000000e+00
  %6340 = fadd fast float %6339, 0xC1EFBF8940000000
  %6341 = fptosi float %6340 to i32
  %6342 = bitcast i32 %6341 to float
  %6343 = fmul fast float %6342, %4405
  %6344 = fmul fast float %5731, %6343
  %6345 = fmul fast float %6344, %5795
  %6346 = fmul fast float %6345, %6304
  %6347 = fmul fast float %5732, %6343
  %6348 = fmul fast float %6347, %5795
  %6349 = fmul fast float %6348, %6305
  %6350 = fmul fast float %5733, %6343
  %6351 = fmul fast float %6350, %5795
  %6352 = fmul fast float %6351, %6306
  %6353 = fmul fast float %6288, %4401
  %6354 = fmul fast float %6289, %4401
  %6355 = fmul fast float %6290, %4401
  %6356 = fadd fast float %6333, %4388
  %6357 = fadd fast float %6356, %6346
  %6358 = fmul fast float %6357, %4401
  %6359 = fadd fast float %6334, %4389
  %6360 = fadd fast float %6359, %6349
  %6361 = fmul fast float %6360, %4401
  %6362 = fadd fast float %6335, %4390
  %6363 = fadd fast float %6362, %6352
  %6364 = fmul fast float %6363, %4401
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6367 = fcmp fast oeq float %6366, 0.000000e+00
  br i1 %6367, label %8084, label %6368

; <label>:6368                                    ; preds = %6284
  %6369 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6370 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = call float @dx.op.dot3.f32(i32 55, float %6373, float %6374, float %6375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = select i1 %260, float %6377, float %6373
  %6381 = select i1 %260, float %6379, float %6374
  %6382 = select i1 %260, float %6378, float %6375
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6385 = fmul fast float %6384, %121
  %6386 = fmul fast float %6384, %122
  %6387 = fmul fast float %6384, %123
  %6388 = fadd fast float %6385, %201
  %6389 = fadd fast float %6386, %202
  %6390 = fadd fast float %6387, %203
  %6391 = fcmp fast olt float %6366, 0.000000e+00
  br i1 %6391, label %7649, label %6392

; <label>:6392                                    ; preds = %6368
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = fmul fast float %6394, %6388
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6395, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6396, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6397
  %6412 = fmul fast float %6399, %6388
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6400, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6401, float %6413)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6402
  %6416 = fmul fast float %6404, %6388
  %6417 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6405, float %6416)  ; FMad(a,b,c)
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6406, float %6417)  ; FMad(a,b,c)
  %6419 = fadd fast float %6418, %6407
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = fcmp fast une float %6421, 0.000000e+00
  %6423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6423, 0
  %6425 = extractvalue %dx.types.CBufRet.f32 %6423, 1
  %6426 = extractvalue %dx.types.CBufRet.f32 %6423, 3
  %6427 = fmul fast float %6426, %6411
  %6428 = fmul fast float %6426, %6415
  %6429 = fadd fast float %6427, %6424
  %6430 = fadd fast float %6428, %6425
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6435 = fmul fast float %6434, %6411
  %6436 = fmul fast float %6434, %6415
  %6437 = fadd fast float %6435, %6432
  %6438 = fadd fast float %6436, %6433
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6441 = fsub fast float %6440, %6419
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = fmul fast float %6441, %6442
  %6444 = fsub fast float 1.000000e+00, %6443
  %6445 = call float @dx.op.unary.f32(i32 7, float %6444)  ; Saturate(value)
  br i1 %6422, label %6506, label %6446

; <label>:6446                                    ; preds = %6392
  %6447 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6450 = fadd fast float %6449, %6447
  %6451 = fcmp fast ogt float %6450, 0.000000e+00
  br i1 %6451, label %6452, label %6476

; <label>:6452                                    ; preds = %6446
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6456 = fsub fast float %6437, %6454
  %6457 = fsub fast float %6438, %6455
  %6458 = fcmp fast olt float %6456, 0.000000e+00
  %6459 = fcmp fast olt float %6457, 0.000000e+00
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6460, 2
  %6464 = extractvalue %dx.types.CBufRet.f32 %6460, 3
  %6465 = select i1 %6458, float %6461, float %6463
  %6466 = select i1 %6459, float %6462, float %6464
  %6467 = fmul fast float %6465, %6456
  %6468 = fmul fast float %6466, %6457
  %6469 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6470 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6472 = call float @dx.op.binary.f32(i32 35, float %6469, float %6470)  ; FMax(a,b)
  %6473 = fsub fast float %6471, %6472
  %6474 = call float @dx.op.unary.f32(i32 7, float %6473)  ; Saturate(value)
  %6475 = fmul fast float %6474, %6445
  br label %6476

; <label>:6476                                    ; preds = %6452, %6446
  %6477 = phi float [ %6475, %6452 ], [ 0.000000e+00, %6446 ]
  %6478 = extractvalue %dx.types.CBufRet.f32 %6423, 2
  %6479 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6480 = fadd fast float %6479, %6478
  %6481 = fcmp fast ogt float %6480, 0.000000e+00
  br i1 %6481, label %6482, label %6506

; <label>:6482                                    ; preds = %6476
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = fsub fast float %6429, %6484
  %6487 = fsub fast float %6430, %6485
  %6488 = fcmp fast olt float %6486, 0.000000e+00
  %6489 = fcmp fast olt float %6487, 0.000000e+00
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6494 = extractvalue %dx.types.CBufRet.f32 %6490, 3
  %6495 = select i1 %6488, float %6491, float %6493
  %6496 = select i1 %6489, float %6492, float %6494
  %6497 = fmul fast float %6495, %6486
  %6498 = fmul fast float %6496, %6487
  %6499 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6500 = call float @dx.op.unary.f32(i32 6, float %6498)  ; FAbs(value)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6502 = call float @dx.op.binary.f32(i32 35, float %6499, float %6500)  ; FMax(a,b)
  %6503 = fsub fast float %6501, %6502
  %6504 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6505 = fmul fast float %6504, %6445
  br label %6506

; <label>:6506                                    ; preds = %6482, %6476, %6392
  %6507 = phi float [ 0.000000e+00, %6392 ], [ %6505, %6482 ], [ 0.000000e+00, %6476 ]
  %6508 = phi float [ 0.000000e+00, %6392 ], [ %6477, %6482 ], [ %6477, %6476 ]
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = fsub fast float %6411, %6513
  %6516 = fsub fast float %6415, %6514
  %6517 = fcmp fast olt float %6515, 0.000000e+00
  %6518 = fcmp fast olt float %6516, 0.000000e+00
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 0
  %6521 = extractvalue %dx.types.CBufRet.f32 %6519, 1
  %6522 = extractvalue %dx.types.CBufRet.f32 %6519, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6519, 3
  %6524 = select i1 %6517, float %6520, float %6522
  %6525 = select i1 %6518, float %6521, float %6523
  %6526 = fmul fast float %6524, %6515
  %6527 = fmul fast float %6525, %6516
  %6528 = call float @dx.op.unary.f32(i32 6, float %6526)  ; FAbs(value)
  %6529 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6531 = call float @dx.op.binary.f32(i32 35, float %6528, float %6529)  ; FMax(a,b)
  %6532 = fsub fast float %6530, %6531
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = call float @dx.op.binary.f32(i32 36, float %6533, float %6511)  ; FMin(a,b)
  %6535 = fmul fast float %6534, %6445
  %6536 = fsub fast float %6507, %6535
  %6537 = fsub fast float %6508, %6507
  %6538 = fsub fast float %6537, %6535
  %6539 = call float @dx.op.binary.f32(i32 35, float %6507, float %6508)  ; FMax(a,b)
  %6540 = call float @dx.op.binary.f32(i32 35, float %6535, float %6539)  ; FMax(a,b)
  %6541 = fcmp fast olt float %6540, 1.000000e+00
  br i1 %6541, label %6542, label %6940, !dx.controlflow.hints !105

; <label>:6542                                    ; preds = %6506
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = fcmp fast une float %6544, 0.000000e+00
  br i1 %6545, label %6546, label %6940, !dx.controlflow.hints !106

; <label>:6546                                    ; preds = %6542
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6551 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6562 = fmul fast float %6548, %6388
  %6563 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6549, float %6562)  ; FMad(a,b,c)
  %6564 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6550, float %6563)  ; FMad(a,b,c)
  %6565 = fadd fast float %6564, %6551
  %6566 = fmul fast float %6553, %6388
  %6567 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6554, float %6566)  ; FMad(a,b,c)
  %6568 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6555, float %6567)  ; FMad(a,b,c)
  %6569 = fadd fast float %6568, %6556
  %6570 = fmul fast float %6558, %6388
  %6571 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6559, float %6570)  ; FMad(a,b,c)
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6560, float %6571)  ; FMad(a,b,c)
  %6573 = fadd fast float %6572, %6561
  %6574 = fcmp fast oge float %6565, 1.000000e+00
  %6575 = fcmp fast oge float %6569, 1.000000e+00
  %6576 = or i1 %6574, %6575
  %6577 = fcmp fast olt float %6565, 0.000000e+00
  %6578 = fcmp fast olt float %6569, 0.000000e+00
  %6579 = or i1 %6577, %6578
  %6580 = or i1 %6576, %6579
  br i1 %6580, label %6940, label %6581, !dx.controlflow.hints !107

; <label>:6581                                    ; preds = %6546
  %6582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.f32 %6582, 0
  %6584 = extractvalue %dx.types.CBufRet.f32 %6582, 1
  %6585 = extractvalue %dx.types.CBufRet.f32 %6582, 2
  %6586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.i32 %6586, 2
  %6588 = uitofp i32 %6587 to float
  %6589 = extractvalue %dx.types.CBufRet.i32 %6586, 3
  %6590 = uitofp i32 %6589 to float
  %6591 = extractvalue %dx.types.CBufRet.f32 %6582, 3
  %6592 = fmul fast float %6591, 2.000000e+00
  %6593 = fsub fast float %6565, %6583
  %6594 = fsub fast float %6569, %6584
  %6595 = fmul fast float %6592, %6593
  %6596 = fmul fast float %6592, %6594
  %6597 = fdiv fast float 1.000000e+00, %6371
  %6598 = fmul fast float %6596, %6597
  %6599 = call float @dx.op.unary.f32(i32 6, float %6598)  ; FAbs(value)
  %6600 = fmul fast float %6585, %6390
  %6601 = fmul fast float %6600, %6592
  %6602 = call float @dx.op.unary.f32(i32 6, float %6601)  ; FAbs(value)
  %6603 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6604 = call float @dx.op.binary.f32(i32 35, float %6602, float %6599)  ; FMax(a,b)
  %6605 = call float @dx.op.binary.f32(i32 35, float %6603, float %6604)  ; FMax(a,b)
  %6606 = fmul fast float %6605, 2.000000e+00
  %6607 = call float @dx.op.unary.f32(i32 23, float %6606)  ; Log(value)
  %6608 = call float @dx.op.binary.f32(i32 35, float %6607, float %6588)  ; FMax(a,b)
  %6609 = call float @dx.op.unary.f32(i32 22, float %6608)  ; Frc(value)
  %6610 = fadd fast float %6609, 0xBFEA666660000000
  %6611 = fmul fast float %6610, 8.000000e+00
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = call float @dx.op.unary.f32(i32 27, float %6608)  ; Round_ni(value)
  %6614 = fadd fast float %6613, %6612
  %6615 = call float @dx.op.binary.f32(i32 36, float %6614, float %6590)  ; FMin(a,b)
  %6616 = call float @dx.op.unary.f32(i32 27, float %6615)  ; Round_ni(value)
  %6617 = fsub fast float -0.000000e+00, %6616
  %6618 = call float @dx.op.unary.f32(i32 21, float %6617)  ; Exp(value)
  %6619 = fmul fast float %6618, %6592
  %6620 = fmul fast float %6619, %6565
  %6621 = fmul fast float %6619, %6569
  %6622 = fmul fast float %6620, 2.500000e-01
  %6623 = fmul fast float %6621, 2.500000e-01
  %6624 = fadd fast float %6622, 5.000000e-01
  %6625 = fadd fast float %6623, 5.000000e-01
  %6626 = fsub fast float %6590, %6588
  %6627 = fptoui float %6626 to i32
  %6628 = add i32 %6627, 320
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6628)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 0
  %6631 = extractvalue %dx.types.CBufRet.f32 %6629, 1
  %6632 = fcmp fast une float %6615, %6590
  %6633 = fsub fast float %6565, %6630
  %6634 = fsub fast float %6569, %6631
  %6635 = call float @dx.op.unary.f32(i32 6, float %6633)  ; FAbs(value)
  %6636 = call float @dx.op.unary.f32(i32 6, float %6634)  ; FAbs(value)
  %6637 = fmul fast float %6635, %6619
  %6638 = fmul fast float %6636, %6619
  %6639 = fcmp fast olt float %6637, 1.000000e+00
  %6640 = fcmp fast olt float %6638, 1.000000e+00
  %6641 = and i1 %6639, %6640
  %6642 = or i1 %6632, %6641
  br i1 %6642, label %6643, label %6940, !dx.controlflow.hints !108

; <label>:6643                                    ; preds = %6581
  %6644 = fmul fast float %6621, 5.000000e-01
  %6645 = fmul fast float %6620, 5.000000e-01
  %6646 = fadd fast float %6644, 5.000000e-01
  %6647 = fadd fast float %6645, 5.000000e-01
  %6648 = sitofp i32 %6587 to float
  %6649 = fsub fast float %6615, %6648
  %6650 = call float @dx.op.unary.f32(i32 27, float %6649)  ; Round_ni(value)
  %6651 = call float @dx.op.unary.f32(i32 22, float %6615)  ; Frc(value)
  %6652 = call float @dx.op.unary.f32(i32 22, float %6647)  ; Frc(value)
  %6653 = call float @dx.op.unary.f32(i32 22, float %6646)  ; Frc(value)
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6652, float %6653, float %6650, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = extractvalue %dx.types.ResRet.f32 %6654, 1
  %6657 = extractvalue %dx.types.ResRet.f32 %6654, 2
  %6658 = extractvalue %dx.types.ResRet.f32 %6654, 3
  %6659 = fcmp fast ogt float %6651, 0.000000e+00
  br i1 %6659, label %6660, label %6681, !dx.controlflow.hints !109

; <label>:6660                                    ; preds = %6643
  %6661 = fadd fast float %6650, 1.000000e+00
  %6662 = call float @dx.op.unary.f32(i32 22, float %6624)  ; Frc(value)
  %6663 = call float @dx.op.unary.f32(i32 22, float %6625)  ; Frc(value)
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6662, float %6663, float %6661, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 1
  %6667 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6668 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6669 = fsub fast float %6665, %6655
  %6670 = fsub fast float %6666, %6656
  %6671 = fsub fast float %6667, %6657
  %6672 = fsub fast float %6668, %6658
  %6673 = fmul fast float %6669, %6651
  %6674 = fmul fast float %6670, %6651
  %6675 = fmul fast float %6671, %6651
  %6676 = fmul fast float %6672, %6651
  %6677 = fadd fast float %6673, %6655
  %6678 = fadd fast float %6674, %6656
  %6679 = fadd fast float %6675, %6657
  %6680 = fadd fast float %6676, %6658
  br label %6681

; <label>:6681                                    ; preds = %6660, %6643
  %6682 = phi float [ %6677, %6660 ], [ %6655, %6643 ]
  %6683 = phi float [ %6678, %6660 ], [ %6656, %6643 ]
  %6684 = phi float [ %6679, %6660 ], [ %6657, %6643 ]
  %6685 = phi float [ %6680, %6660 ], [ %6658, %6643 ]
  %6686 = fadd fast float %6682, -5.000000e-01
  %6687 = fadd fast float %6684, -5.000000e-01
  %6688 = fmul fast float %6686, 0xBFD5555560000000
  %6689 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6687, float %6688)  ; FMad(a,b,c)
  %6690 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6683, float 0.000000e+00)  ; FMad(a,b,c)
  %6691 = fadd fast float %6690, %6685
  %6692 = fmul fast float %6686, -7.500000e-01
  %6693 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6687, float %6692)  ; FMad(a,b,c)
  %6694 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6683, float 0.000000e+00)  ; FMad(a,b,c)
  %6695 = fadd fast float %6694, %6685
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.CBufRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.CBufRet.f32 %6698, 2
  %6702 = extractvalue %dx.types.CBufRet.f32 %6698, 3
  %6703 = fsub fast float %6699, %6689
  %6704 = fsub fast float %6700, %6691
  %6705 = fsub fast float %6701, %6693
  %6706 = fsub fast float %6702, %6695
  %6707 = fmul fast float %6703, %6697
  %6708 = fmul fast float %6704, %6697
  %6709 = fmul fast float %6705, %6697
  %6710 = fmul fast float %6706, %6697
  %6711 = fadd fast float %6707, %6689
  %6712 = fadd fast float %6708, %6691
  %6713 = fadd fast float %6709, %6693
  %6714 = fadd fast float %6710, %6695
  %6715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6716 = extractvalue %dx.types.ResRet.i32 %6715, 0
  %6717 = and i32 %6716, 536870911
  %6718 = uitofp i32 %6717 to float
  %6719 = fmul fast float %6718, %6565
  %6720 = fmul fast float %6718, %6569
  %6721 = fptoui float %6719 to i32
  %6722 = fptoui float %6720 to i32
  %6723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6724 = extractvalue %dx.types.ResRet.i32 %6723, 0
  %6725 = and i32 %6724, 31
  %6726 = lshr i32 %6721, %6725
  %6727 = lshr i32 %6722, %6725
  %6728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6729 = extractvalue %dx.types.ResRet.i32 %6728, 0
  %6730 = and i32 %6729, 31
  %6731 = shl i32 1, %6730
  %6732 = call i32 @dx.op.binary.i32(i32 40, i32 %6731, i32 4)  ; UMin(a,b)
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = extractvalue %dx.types.ResRet.i32 %6733, 1
  %6736 = icmp eq i32 %6732, 0
  br i1 %6736, label %6778, label %6737

; <label>:6737                                    ; preds = %6681
  br label %6738

; <label>:6738                                    ; preds = %6766, %6737
  %6739 = phi i32 [ %6769, %6766 ], [ 0, %6737 ]
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = lshr i32 %6741, 16
  %6743 = and i32 %6742, 31
  %6744 = shl i32 %6727, %6743
  %6745 = add i32 %6744, %6726
  %6746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6747 = extractvalue %dx.types.ResRet.i32 %6746, 0
  %6748 = and i32 %6747, 31
  %6749 = shl i32 %6745, %6748
  %6750 = add i32 %6749, %6739
  %6751 = shl i32 %6750, 2
  %6752 = add i32 %6751, 32
  %6753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6752, i32 undef)  ; BufferLoad(srv,index,wot)
  %6754 = extractvalue %dx.types.ResRet.i32 %6753, 0
  %6755 = icmp slt i32 %6754, 0
  %6756 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6739
  %6757 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6739
  %6758 = bitcast float* %6756 to i32*
  %6759 = bitcast float* %6757 to i32*
  br i1 %6755, label %6760, label %6766

; <label>:6760                                    ; preds = %6738
  %6761 = and i32 %6754, 1073741823
  %6762 = add nuw nsw i32 %6761, 20
  %6763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6762, i32 undef)  ; BufferLoad(srv,index,wot)
  %6764 = extractvalue %dx.types.ResRet.i32 %6763, 0
  %6765 = extractvalue %dx.types.ResRet.i32 %6763, 1
  br label %6766

; <label>:6766                                    ; preds = %6760, %6738
  %6767 = phi i32 [ %6764, %6760 ], [ %6734, %6738 ]
  %6768 = phi i32 [ %6765, %6760 ], [ %6735, %6738 ]
  store i32 %6767, i32* %6758, align 4
  store i32 %6768, i32* %6759, align 4
  %6769 = add nuw i32 %6739, 1
  %6770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.i32 %6770, 2
  %6772 = icmp eq i32 %6771, 0
  %6773 = icmp ugt i32 %6754, -1073741825
  %6774 = and i1 %6773, %6772
  %6775 = icmp ult i32 %6769, %6732
  %6776 = and i1 %6774, %6775
  br i1 %6776, label %6738, label %6777

; <label>:6777                                    ; preds = %6766
  br label %6778

; <label>:6778                                    ; preds = %6777, %6681
  %6779 = phi i32 [ 0, %6681 ], [ %6769, %6777 ]
  %6780 = extractvalue %dx.types.CBufRet.f32 %6543, 2
  %6781 = fptoui float %6780 to i32
  %6782 = icmp eq i32 %6781, 0
  br i1 %6782, label %6834, label %6783

; <label>:6783                                    ; preds = %6778
  br label %6784

; <label>:6784                                    ; preds = %6829, %6783
  %6785 = phi i32 [ %6830, %6829 ], [ %6779, %6783 ]
  %6786 = phi i32 [ %6831, %6829 ], [ 0, %6783 ]
  %6787 = lshr i32 %6786, 2
  %6788 = and i32 %6786, 3
  %6789 = add nuw nsw i32 %6787, 83
  %6790 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6789)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.i32 %6790, 0
  %6792 = extractvalue %dx.types.CBufRet.i32 %6790, 1
  %6793 = extractvalue %dx.types.CBufRet.i32 %6790, 2
  %6794 = extractvalue %dx.types.CBufRet.i32 %6790, 3
  %6795 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6791, i32* %6795, align 4
  %6796 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6792, i32* %6796, align 4
  %6797 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6793, i32* %6797, align 4
  %6798 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6794, i32* %6798, align 4
  %6799 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6788
  %6800 = load i32, i32* %6799, align 4, !tbaa !110, !noalias !114
  %6801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6802 = extractvalue %dx.types.ResRet.i32 %6801, 0
  %6803 = lshr i32 %6802, 16
  %6804 = and i32 %6803, 31
  %6805 = shl i32 %6727, %6804
  %6806 = add i32 %6805, %6726
  %6807 = shl i32 %6806, 2
  %6808 = add i32 %6807, %6800
  %6809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6808, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.i32 %6809, 0
  %6811 = icmp eq i32 %6810, 0
  br i1 %6811, label %6829, label %6812

; <label>:6812                                    ; preds = %6784
  %6813 = icmp slt i32 %6810, 0
  %6814 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6785
  %6815 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6785
  %6816 = bitcast float* %6814 to i32*
  %6817 = bitcast float* %6815 to i32*
  br i1 %6813, label %6818, label %6825

; <label>:6818                                    ; preds = %6812
  %6819 = and i32 %6810, 1073741823
  %6820 = add i32 %6800, 20
  %6821 = add i32 %6820, %6819
  %6822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6821, i32 undef)  ; BufferLoad(srv,index,wot)
  %6823 = extractvalue %dx.types.ResRet.i32 %6822, 0
  %6824 = extractvalue %dx.types.ResRet.i32 %6822, 1
  br label %6825

; <label>:6825                                    ; preds = %6818, %6812
  %6826 = phi i32 [ %6823, %6818 ], [ %6734, %6812 ]
  %6827 = phi i32 [ %6824, %6818 ], [ %6735, %6812 ]
  store i32 %6826, i32* %6816, align 4
  store i32 %6827, i32* %6817, align 4
  %6828 = add i32 %6785, 1
  br label %6829

; <label>:6829                                    ; preds = %6825, %6784
  %6830 = phi i32 [ %6785, %6784 ], [ %6828, %6825 ]
  %6831 = add nuw i32 %6786, 1
  %6832 = icmp eq i32 %6831, %6781
  br i1 %6832, label %6833, label %6784

; <label>:6833                                    ; preds = %6829
  br label %6834

; <label>:6834                                    ; preds = %6833, %6778
  %6835 = phi i32 [ %6779, %6778 ], [ %6830, %6833 ]
  %6836 = icmp eq i32 %6835, 1
  %6837 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6838 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6836, label %6839, label %6842

; <label>:6839                                    ; preds = %6834
  %6840 = load float, float* %6837, align 4
  %6841 = load float, float* %6838, align 4
  br label %6869

; <label>:6842                                    ; preds = %6834
  %6843 = load float, float* %6837, align 4
  %6844 = load float, float* %6838, align 4
  %6845 = fdiv fast float 1.000000e+00, %6844
  %6846 = fsub fast float %6843, %6845
  %6847 = icmp ugt i32 %6835, 1
  br i1 %6847, label %6848, label %6864

; <label>:6848                                    ; preds = %6842
  br label %6849

; <label>:6849                                    ; preds = %6849, %6848
  %6850 = phi float [ %6859, %6849 ], [ %6846, %6848 ]
  %6851 = phi float [ %6860, %6849 ], [ %6843, %6848 ]
  %6852 = phi i32 [ %6861, %6849 ], [ 1, %6848 ]
  %6853 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6852
  %6854 = load float, float* %6853, align 4
  %6855 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6852
  %6856 = load float, float* %6855, align 4
  %6857 = fdiv fast float 1.000000e+00, %6856
  %6858 = fsub fast float %6854, %6857
  %6859 = call float @dx.op.binary.f32(i32 36, float %6850, float %6858)  ; FMin(a,b)
  %6860 = call float @dx.op.binary.f32(i32 35, float %6851, float %6854)  ; FMax(a,b)
  %6861 = add nuw i32 %6852, 1
  %6862 = icmp eq i32 %6861, %6835
  br i1 %6862, label %6863, label %6849

; <label>:6863                                    ; preds = %6849
  br label %6864

; <label>:6864                                    ; preds = %6863, %6842
  %6865 = phi float [ %6846, %6842 ], [ %6859, %6863 ]
  %6866 = phi float [ %6843, %6842 ], [ %6860, %6863 ]
  %6867 = fsub fast float %6866, %6865
  %6868 = fdiv fast float 1.000000e+00, %6867
  br label %6869

; <label>:6869                                    ; preds = %6864, %6839
  %6870 = phi float [ %6840, %6839 ], [ %6866, %6864 ]
  %6871 = phi float [ %6841, %6839 ], [ %6868, %6864 ]
  %6872 = fadd fast float %6573, %6870
  %6873 = fmul fast float %6872, %6871
  %6874 = call float @dx.op.unary.f32(i32 7, float %6873)  ; Saturate(value)
  %6875 = fmul fast float %6874, 2.000000e+00
  %6876 = fsub fast float 1.000000e+00, %6875
  %6877 = fmul fast float %6711, %6711
  %6878 = fsub fast float %6712, %6877
  %6879 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6878)  ; FMax(a,b)
  %6880 = fdiv fast float 1.000000e+00, %6879
  %6881 = fmul fast float %6712, %6711
  %6882 = fsub fast float %6713, %6881
  %6883 = fsub fast float %6876, %6711
  %6884 = fmul fast float %6876, %6876
  %6885 = fsub fast float %6884, %6712
  %6886 = fmul fast float %6880, %6882
  %6887 = fmul fast float %6886, %6883
  %6888 = fsub fast float %6885, %6887
  %6889 = fmul fast float %6712, %6712
  %6890 = fsub fast float %6714, %6889
  %6891 = fmul fast float %6882, %6882
  %6892 = fmul fast float %6891, %6880
  %6893 = fsub fast float %6890, %6892
  %6894 = fdiv fast float %6888, %6893
  %6895 = fmul fast float %6894, %6882
  %6896 = fsub fast float %6883, %6895
  %6897 = fmul fast float %6896, %6880
  %6898 = fmul fast float %6897, %6711
  %6899 = fsub fast float 1.000000e+00, %6898
  %6900 = fmul fast float %6894, %6712
  %6901 = fsub fast float %6899, %6900
  %6902 = fmul fast float %6897, %6897
  %6903 = fmul fast float %6894, 4.000000e+00
  %6904 = fmul fast float %6903, %6901
  %6905 = fsub fast float %6902, %6904
  %6906 = call float @dx.op.unary.f32(i32 24, float %6905)  ; Sqrt(value)
  %6907 = fcmp fast oge float %6897, 0.000000e+00
  %6908 = fsub fast float -0.000000e+00, %6906
  %6909 = select i1 %6907, float %6908, float %6906
  %6910 = fsub fast float %6909, %6897
  %6911 = fdiv fast float %6910, %6894
  %6912 = fdiv fast float %6901, %6910
  %6913 = fmul fast float %6911, 5.000000e-01
  %6914 = fmul fast float %6912, 2.000000e+00
  %6915 = select i1 %6907, float %6913, float %6914
  %6916 = select i1 %6907, float %6914, float %6913
  %6917 = call float @dx.op.binary.f32(i32 35, float %6915, float %6916)  ; FMax(a,b)
  %6918 = call float @dx.op.binary.f32(i32 36, float %6915, float %6916)  ; FMin(a,b)
  %6919 = fcmp fast ogt float %6876, %6917
  %6920 = fsub fast float %6876, %6918
  %6921 = fsub fast float %6876, %6917
  %6922 = fsub fast float %6917, %6918
  %6923 = select i1 %6919, float %6921, float %6922
  %6924 = fmul float %6920, %6923
  %6925 = select i1 %6919, float %6918, float %6876
  %6926 = fcmp fast ogt float %6876, %6918
  %6927 = fmul fast float %6925, %6917
  %6928 = fadd fast float %6925, %6917
  %6929 = fmul fast float %6928, %6711
  %6930 = fadd fast float %6927, %6712
  %6931 = fsub fast float %6930, %6929
  %6932 = fdiv fast float %6931, %6924
  %6933 = select i1 %6926, float %6932, float 0.000000e+00
  %6934 = fsub fast float 1.000000e+00, %6933
  %6935 = select i1 %6919, float %6934, float %6933
  %6936 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6938 = fmul fast float %6937, %6936
  %6939 = fsub fast float 1.000000e+00, %6938
  br label %6940

; <label>:6940                                    ; preds = %6869, %6581, %6546, %6542, %6506
  %6941 = phi float [ 1.000000e+00, %6506 ], [ %6939, %6869 ], [ 1.000000e+00, %6546 ], [ 1.000000e+00, %6581 ], [ 1.000000e+00, %6542 ]
  %6942 = fcmp fast ogt float %6538, 0.000000e+00
  br i1 %6942, label %6943, label %7107, !dx.controlflow.hints !123

; <label>:6943                                    ; preds = %6940
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = fadd fast float %6945, %6419
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %6949 = extractvalue %dx.types.CBufRet.f32 %6947, 3
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6952 = call float @dx.op.binary.f32(i32 35, float %6946, float 0.000000e+00)  ; FMax(a,b)
  %6953 = fadd fast float %6952, 0x3F10000000000000
  %6954 = fcmp fast oeq float %6951, 0.000000e+00
  br i1 %6954, label %6955, label %7022

; <label>:6955                                    ; preds = %6943
  %6956 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6958 = fmul fast float %6957, %6437
  %6959 = fmul fast float %6956, %6438
  %6960 = fadd fast float %6958, 5.000000e-01
  %6961 = call float @dx.op.unary.f32(i32 27, float %6960)  ; Round_ni(value)
  %6962 = fadd fast float %6959, 5.000000e-01
  %6963 = call float @dx.op.unary.f32(i32 27, float %6962)  ; Round_ni(value)
  %6964 = fsub fast float %6960, %6961
  %6965 = fsub fast float %6962, %6963
  %6966 = fadd fast float %6961, -5.000000e-01
  %6967 = fadd fast float %6963, -5.000000e-01
  %6968 = fmul fast float %6964, 2.000000e+00
  %6969 = fsub fast float 3.000000e+00, %6968
  %6970 = fadd fast float %6968, 1.000000e+00
  %6971 = fsub fast float 2.000000e+00, %6964
  %6972 = bitcast float %6969 to i32
  %6973 = sub nsw i32 2129859010, %6972
  %6974 = bitcast i32 %6973 to float
  %6975 = fmul fast float %6974, %6971
  %6976 = fadd fast float %6975, -1.000000e+00
  %6977 = bitcast float %6970 to i32
  %6978 = sub nsw i32 2129859010, %6977
  %6979 = bitcast i32 %6978 to float
  %6980 = fmul fast float %6979, %6964
  %6981 = fadd fast float %6980, 1.000000e+00
  %6982 = fmul fast float %6965, 2.000000e+00
  %6983 = fsub fast float 3.000000e+00, %6982
  %6984 = fadd fast float %6982, 1.000000e+00
  %6985 = fsub fast float 2.000000e+00, %6965
  %6986 = bitcast float %6983 to i32
  %6987 = sub nsw i32 2129859010, %6986
  %6988 = bitcast i32 %6987 to float
  %6989 = fmul fast float %6988, %6985
  %6990 = fadd fast float %6989, -1.000000e+00
  %6991 = bitcast float %6984 to i32
  %6992 = sub nsw i32 2129859010, %6991
  %6993 = bitcast i32 %6992 to float
  %6994 = fmul fast float %6993, %6965
  %6995 = fadd fast float %6994, 1.000000e+00
  %6996 = fadd fast float %6976, %6966
  %6997 = fmul fast float %6996, %6948
  %6998 = fadd fast float %6990, %6967
  %6999 = fmul fast float %6998, %6949
  %7000 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6997, float %6999, float undef, float undef, i32 0, i32 0, i32 undef, float %6953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7001 = extractvalue %dx.types.ResRet.f32 %7000, 0
  %7002 = fmul fast float %7001, %6969
  %7003 = fadd fast float %6981, %6966
  %7004 = fmul fast float %7003, %6948
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7004, float %6999, float undef, float undef, i32 0, i32 0, i32 undef, float %6953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = fmul fast float %7006, %6970
  %7008 = fadd fast float %6995, %6967
  %7009 = fmul fast float %7008, %6949
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6997, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float %6953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = fmul fast float %7011, %6969
  %7013 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7004, float %7009, float undef, float undef, i32 0, i32 0, i32 undef, float %6953)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7014 = extractvalue %dx.types.ResRet.f32 %7013, 0
  %7015 = fmul fast float %7014, %6970
  %7016 = fadd fast float %7015, %7012
  %7017 = fmul fast float %7016, %6984
  %7018 = fadd fast float %7007, %7002
  %7019 = fmul fast float %7018, %6983
  %7020 = fadd fast float %7019, %7017
  %7021 = fmul fast float %7020, 6.250000e-02
  br label %7107

; <label>:7022                                    ; preds = %6943
  %7023 = fmul fast float %271, 0x401921FB60000000
  %7024 = call float @dx.op.unary.f32(i32 13, float %7023)  ; Sin(value)
  %7025 = call float @dx.op.unary.f32(i32 12, float %7023)  ; Cos(value)
  %7026 = fsub fast float -0.000000e+00, %7024
  br label %7027

; <label>:7027                                    ; preds = %7076, %7022
  %7028 = phi float [ 0.000000e+00, %7022 ], [ %7071, %7076 ]
  %7029 = phi float [ 0.000000e+00, %7022 ], [ %7073, %7076 ]
  %7030 = phi i32 [ 0, %7022 ], [ %7077, %7076 ]
  %7031 = mul i32 %7030, 2
  %7032 = add i32 0, %7031
  %7033 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7032
  %7034 = load float, float* %7033, align 4
  %7035 = mul i32 %7030, 2
  %7036 = add i32 1, %7035
  %7037 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7036
  %7038 = load float, float* %7037, align 4
  %7039 = fmul fast float %7034, %7025
  %7040 = call float @dx.op.tertiary.f32(i32 46, float %7038, float %7026, float %7039)  ; FMad(a,b,c)
  %7041 = fmul fast float %7034, %7024
  %7042 = call float @dx.op.tertiary.f32(i32 46, float %7038, float %7025, float %7041)  ; FMad(a,b,c)
  %7043 = fmul fast float %7040, %6951
  %7044 = fmul fast float %7042, %6951
  %7045 = fadd fast float %7043, %6437
  %7046 = fadd fast float %7044, %6438
  %7047 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7045, float %7046, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7048 = extractvalue %dx.types.ResRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.ResRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.ResRet.f32 %7047, 2
  %7051 = extractvalue %dx.types.ResRet.f32 %7047, 3
  %7052 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7048, float* %7052, align 4
  %7053 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7049, float* %7053, align 4
  %7054 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7050, float* %7054, align 4
  %7055 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7051, float* %7055, align 4
  %7056 = fsub fast float %7048, %6953
  %7057 = fcmp fast olt float %7056, 0.000000e+00
  %7058 = select i1 %7057, float 0.000000e+00, float 1.000000e+00
  %7059 = fadd fast float %7058, %7028
  %7060 = fmul fast float %7058, %7056
  %7061 = fadd fast float %7060, %7029
  br label %7062

; <label>:7062                                    ; preds = %7062, %7027
  %7063 = phi i32 [ 1, %7027 ], [ %7074, %7062 ]
  %7064 = phi float [ %7061, %7027 ], [ %7073, %7062 ]
  %7065 = phi float [ %7059, %7027 ], [ %7071, %7062 ]
  %7066 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7063
  %7067 = load float, float* %7066, align 4, !tbaa !124, !noalias !114
  %7068 = fsub fast float %7067, %6953
  %7069 = fcmp fast olt float %7068, 0.000000e+00
  %7070 = select i1 %7069, float 0.000000e+00, float 1.000000e+00
  %7071 = fadd fast float %7070, %7065
  %7072 = fmul fast float %7070, %7068
  %7073 = fadd fast float %7072, %7064
  %7074 = add nuw nsw i32 %7063, 1
  %7075 = icmp eq i32 %7074, 4
  br i1 %7075, label %7076, label %7062, !llvm.loop !126

; <label>:7076                                    ; preds = %7062
  %7077 = add nuw nsw i32 %7030, 1
  %7078 = icmp eq i32 %7077, 8
  br i1 %7078, label %7079, label %7027, !llvm.loop !127

; <label>:7079                                    ; preds = %7076
  %7080 = fdiv fast float 1.000000e+00, %7071
  %7081 = fmul fast float %7080, %7073
  %7082 = fdiv fast float 1.000000e+00, %6953
  %7083 = fmul fast float %7081, %7082
  %7084 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7085 = call float @dx.op.binary.f32(i32 35, float %7084, float 0.000000e+00)  ; FMax(a,b)
  %7086 = fmul fast float %7071, 3.125000e-02
  %7087 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7088 = fmul fast float %7087, 2.000000e+00
  %7089 = fadd fast float %7088, -1.000000e+00
  %7090 = fcmp fast ogt float %7089, 0.000000e+00
  %7091 = fcmp fast olt float %7089, 0.000000e+00
  %7092 = zext i1 %7090 to i32
  %7093 = zext i1 %7091 to i32
  %7094 = sub nsw i32 %7092, %7093
  %7095 = sitofp i32 %7094 to float
  %7096 = fmul fast float %7095, %7089
  %7097 = fsub fast float 1.000000e+00, %7096
  %7098 = fmul fast float %7097, %7097
  %7099 = fmul fast float %7098, %7097
  %7100 = fsub fast float %7097, %7099
  %7101 = fmul fast float %7100, %7085
  %7102 = fsub fast float 1.000000e+00, %7099
  %7103 = fsub fast float %7102, %7101
  %7104 = fmul fast float %7095, 5.000000e-01
  %7105 = fmul fast float %7104, %7103
  %7106 = fsub fast float 5.000000e-01, %7105
  br label %7107

; <label>:7107                                    ; preds = %7079, %6955, %6940
  %7108 = phi float [ 1.000000e+00, %6940 ], [ %7021, %6955 ], [ %7106, %7079 ]
  %7109 = fcmp fast ogt float %6536, 0.000000e+00
  br i1 %7109, label %7110, label %7274, !dx.controlflow.hints !128

; <label>:7110                                    ; preds = %7107
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %7113 = fadd fast float %7112, %6419
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %7116 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7119 = call float @dx.op.binary.f32(i32 35, float %7113, float 0.000000e+00)  ; FMax(a,b)
  %7120 = fadd fast float %7119, 0x3F10000000000000
  %7121 = fcmp fast oeq float %7118, 0.000000e+00
  br i1 %7121, label %7122, label %7189

; <label>:7122                                    ; preds = %7110
  %7123 = extractvalue %dx.types.CBufRet.f32 %7114, 1
  %7124 = extractvalue %dx.types.CBufRet.f32 %7114, 0
  %7125 = fmul fast float %7124, %6429
  %7126 = fmul fast float %7123, %6430
  %7127 = fadd fast float %7125, 5.000000e-01
  %7128 = call float @dx.op.unary.f32(i32 27, float %7127)  ; Round_ni(value)
  %7129 = fadd fast float %7126, 5.000000e-01
  %7130 = call float @dx.op.unary.f32(i32 27, float %7129)  ; Round_ni(value)
  %7131 = fsub fast float %7127, %7128
  %7132 = fsub fast float %7129, %7130
  %7133 = fadd fast float %7128, -5.000000e-01
  %7134 = fadd fast float %7130, -5.000000e-01
  %7135 = fmul fast float %7131, 2.000000e+00
  %7136 = fsub fast float 3.000000e+00, %7135
  %7137 = fadd fast float %7135, 1.000000e+00
  %7138 = fsub fast float 2.000000e+00, %7131
  %7139 = bitcast float %7136 to i32
  %7140 = sub nsw i32 2129859010, %7139
  %7141 = bitcast i32 %7140 to float
  %7142 = fmul fast float %7141, %7138
  %7143 = fadd fast float %7142, -1.000000e+00
  %7144 = bitcast float %7137 to i32
  %7145 = sub nsw i32 2129859010, %7144
  %7146 = bitcast i32 %7145 to float
  %7147 = fmul fast float %7146, %7131
  %7148 = fadd fast float %7147, 1.000000e+00
  %7149 = fmul fast float %7132, 2.000000e+00
  %7150 = fsub fast float 3.000000e+00, %7149
  %7151 = fadd fast float %7149, 1.000000e+00
  %7152 = fsub fast float 2.000000e+00, %7132
  %7153 = bitcast float %7150 to i32
  %7154 = sub nsw i32 2129859010, %7153
  %7155 = bitcast i32 %7154 to float
  %7156 = fmul fast float %7155, %7152
  %7157 = fadd fast float %7156, -1.000000e+00
  %7158 = bitcast float %7151 to i32
  %7159 = sub nsw i32 2129859010, %7158
  %7160 = bitcast i32 %7159 to float
  %7161 = fmul fast float %7160, %7132
  %7162 = fadd fast float %7161, 1.000000e+00
  %7163 = fadd fast float %7143, %7133
  %7164 = fmul fast float %7163, %7115
  %7165 = fadd fast float %7157, %7134
  %7166 = fmul fast float %7165, %7116
  %7167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7164, float %7166, float undef, float undef, i32 0, i32 0, i32 undef, float %7120)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7168 = extractvalue %dx.types.ResRet.f32 %7167, 0
  %7169 = fmul fast float %7168, %7136
  %7170 = fadd fast float %7148, %7133
  %7171 = fmul fast float %7170, %7115
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7171, float %7166, float undef, float undef, i32 0, i32 0, i32 undef, float %7120)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7137
  %7175 = fadd fast float %7162, %7134
  %7176 = fmul fast float %7175, %7116
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7164, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float %7120)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = fmul fast float %7178, %7136
  %7180 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7171, float %7176, float undef, float undef, i32 0, i32 0, i32 undef, float %7120)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7181 = extractvalue %dx.types.ResRet.f32 %7180, 0
  %7182 = fmul fast float %7181, %7137
  %7183 = fadd fast float %7182, %7179
  %7184 = fmul fast float %7183, %7151
  %7185 = fadd fast float %7174, %7169
  %7186 = fmul fast float %7185, %7150
  %7187 = fadd fast float %7186, %7184
  %7188 = fmul fast float %7187, 6.250000e-02
  br label %7274

; <label>:7189                                    ; preds = %7110
  %7190 = fmul fast float %271, 0x401921FB60000000
  %7191 = call float @dx.op.unary.f32(i32 13, float %7190)  ; Sin(value)
  %7192 = call float @dx.op.unary.f32(i32 12, float %7190)  ; Cos(value)
  %7193 = fsub fast float -0.000000e+00, %7191
  br label %7194

; <label>:7194                                    ; preds = %7243, %7189
  %7195 = phi float [ 0.000000e+00, %7189 ], [ %7238, %7243 ]
  %7196 = phi float [ 0.000000e+00, %7189 ], [ %7240, %7243 ]
  %7197 = phi i32 [ 0, %7189 ], [ %7244, %7243 ]
  %7198 = mul i32 %7197, 2
  %7199 = add i32 0, %7198
  %7200 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7199
  %7201 = load float, float* %7200, align 4
  %7202 = mul i32 %7197, 2
  %7203 = add i32 1, %7202
  %7204 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7203
  %7205 = load float, float* %7204, align 4
  %7206 = fmul fast float %7201, %7192
  %7207 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7193, float %7206)  ; FMad(a,b,c)
  %7208 = fmul fast float %7201, %7191
  %7209 = call float @dx.op.tertiary.f32(i32 46, float %7205, float %7192, float %7208)  ; FMad(a,b,c)
  %7210 = fmul fast float %7207, %7118
  %7211 = fmul fast float %7209, %7118
  %7212 = fadd fast float %7210, %6429
  %7213 = fadd fast float %7211, %6430
  %7214 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7212, float %7213, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7215 = extractvalue %dx.types.ResRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.ResRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.ResRet.f32 %7214, 2
  %7218 = extractvalue %dx.types.ResRet.f32 %7214, 3
  %7219 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7215, float* %7219, align 4
  %7220 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7216, float* %7220, align 4
  %7221 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7217, float* %7221, align 4
  %7222 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7218, float* %7222, align 4
  %7223 = fsub fast float %7215, %7120
  %7224 = fcmp fast olt float %7223, 0.000000e+00
  %7225 = select i1 %7224, float 0.000000e+00, float 1.000000e+00
  %7226 = fadd fast float %7225, %7195
  %7227 = fmul fast float %7225, %7223
  %7228 = fadd fast float %7227, %7196
  br label %7229

; <label>:7229                                    ; preds = %7229, %7194
  %7230 = phi i32 [ 1, %7194 ], [ %7241, %7229 ]
  %7231 = phi float [ %7228, %7194 ], [ %7240, %7229 ]
  %7232 = phi float [ %7226, %7194 ], [ %7238, %7229 ]
  %7233 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7230
  %7234 = load float, float* %7233, align 4, !tbaa !124, !noalias !114
  %7235 = fsub fast float %7234, %7120
  %7236 = fcmp fast olt float %7235, 0.000000e+00
  %7237 = select i1 %7236, float 0.000000e+00, float 1.000000e+00
  %7238 = fadd fast float %7237, %7232
  %7239 = fmul fast float %7237, %7235
  %7240 = fadd fast float %7239, %7231
  %7241 = add nuw nsw i32 %7230, 1
  %7242 = icmp eq i32 %7241, 4
  br i1 %7242, label %7243, label %7229, !llvm.loop !126

; <label>:7243                                    ; preds = %7229
  %7244 = add nuw nsw i32 %7197, 1
  %7245 = icmp eq i32 %7244, 8
  br i1 %7245, label %7246, label %7194, !llvm.loop !127

; <label>:7246                                    ; preds = %7243
  %7247 = fdiv fast float 1.000000e+00, %7238
  %7248 = fmul fast float %7247, %7240
  %7249 = fdiv fast float 1.000000e+00, %7120
  %7250 = fmul fast float %7248, %7249
  %7251 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  %7252 = call float @dx.op.binary.f32(i32 35, float %7251, float 0.000000e+00)  ; FMax(a,b)
  %7253 = fmul fast float %7238, 3.125000e-02
  %7254 = call float @dx.op.unary.f32(i32 7, float %7253)  ; Saturate(value)
  %7255 = fmul fast float %7254, 2.000000e+00
  %7256 = fadd fast float %7255, -1.000000e+00
  %7257 = fcmp fast ogt float %7256, 0.000000e+00
  %7258 = fcmp fast olt float %7256, 0.000000e+00
  %7259 = zext i1 %7257 to i32
  %7260 = zext i1 %7258 to i32
  %7261 = sub nsw i32 %7259, %7260
  %7262 = sitofp i32 %7261 to float
  %7263 = fmul fast float %7262, %7256
  %7264 = fsub fast float 1.000000e+00, %7263
  %7265 = fmul fast float %7264, %7264
  %7266 = fmul fast float %7265, %7264
  %7267 = fsub fast float %7264, %7266
  %7268 = fmul fast float %7267, %7252
  %7269 = fsub fast float 1.000000e+00, %7266
  %7270 = fsub fast float %7269, %7268
  %7271 = fmul fast float %7262, 5.000000e-01
  %7272 = fmul fast float %7271, %7270
  %7273 = fsub fast float 5.000000e-01, %7272
  br label %7274

; <label>:7274                                    ; preds = %7246, %7122, %7107
  %7275 = phi float [ 1.000000e+00, %7107 ], [ %7188, %7122 ], [ %7273, %7246 ]
  %7276 = fcmp fast ogt float %6535, 0.000000e+00
  br i1 %7276, label %7277, label %7595, !dx.controlflow.hints !129

; <label>:7277                                    ; preds = %7274
  %7278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7279 = extractvalue %dx.types.CBufRet.f32 %7278, 0
  %7280 = fadd fast float %7279, %6419
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 2
  %7283 = extractvalue %dx.types.CBufRet.f32 %7281, 3
  %7284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7285 = extractvalue %dx.types.CBufRet.f32 %7284, 0
  %7286 = call float @dx.op.binary.f32(i32 35, float %7280, float 0.000000e+00)  ; FMax(a,b)
  %7287 = fadd fast float %7286, 0x3F10000000000000
  %7288 = fcmp fast oeq float %7285, 0.000000e+00
  br i1 %6422, label %7289, label %7442, !dx.controlflow.hints !130

; <label>:7289                                    ; preds = %7277
  br i1 %7288, label %7290, label %7357

; <label>:7290                                    ; preds = %7289
  %7291 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7292 = extractvalue %dx.types.CBufRet.f32 %7281, 0
  %7293 = fmul fast float %7292, %6411
  %7294 = fmul fast float %7291, %6415
  %7295 = fadd fast float %7293, 5.000000e-01
  %7296 = call float @dx.op.unary.f32(i32 27, float %7295)  ; Round_ni(value)
  %7297 = fadd fast float %7294, 5.000000e-01
  %7298 = call float @dx.op.unary.f32(i32 27, float %7297)  ; Round_ni(value)
  %7299 = fsub fast float %7295, %7296
  %7300 = fsub fast float %7297, %7298
  %7301 = fadd fast float %7296, -5.000000e-01
  %7302 = fadd fast float %7298, -5.000000e-01
  %7303 = fmul fast float %7299, 2.000000e+00
  %7304 = fsub fast float 3.000000e+00, %7303
  %7305 = fadd fast float %7303, 1.000000e+00
  %7306 = fsub fast float 2.000000e+00, %7299
  %7307 = bitcast float %7304 to i32
  %7308 = sub nsw i32 2129859010, %7307
  %7309 = bitcast i32 %7308 to float
  %7310 = fmul fast float %7309, %7306
  %7311 = fadd fast float %7310, -1.000000e+00
  %7312 = bitcast float %7305 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7299
  %7316 = fadd fast float %7315, 1.000000e+00
  %7317 = fmul fast float %7300, 2.000000e+00
  %7318 = fsub fast float 3.000000e+00, %7317
  %7319 = fadd fast float %7317, 1.000000e+00
  %7320 = fsub fast float 2.000000e+00, %7300
  %7321 = bitcast float %7318 to i32
  %7322 = sub nsw i32 2129859010, %7321
  %7323 = bitcast i32 %7322 to float
  %7324 = fmul fast float %7323, %7320
  %7325 = fadd fast float %7324, -1.000000e+00
  %7326 = bitcast float %7319 to i32
  %7327 = sub nsw i32 2129859010, %7326
  %7328 = bitcast i32 %7327 to float
  %7329 = fmul fast float %7328, %7300
  %7330 = fadd fast float %7329, 1.000000e+00
  %7331 = fadd fast float %7311, %7301
  %7332 = fmul fast float %7331, %7282
  %7333 = fadd fast float %7325, %7302
  %7334 = fmul fast float %7333, %7283
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7332, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = fmul fast float %7336, %7304
  %7338 = fadd fast float %7316, %7301
  %7339 = fmul fast float %7338, %7282
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7339, float %7334, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = fmul fast float %7341, %7305
  %7343 = fadd fast float %7330, %7302
  %7344 = fmul fast float %7343, %7283
  %7345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7332, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7304
  %7348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7339, float %7344, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7349 = extractvalue %dx.types.ResRet.f32 %7348, 0
  %7350 = fmul fast float %7349, %7305
  %7351 = fadd fast float %7350, %7347
  %7352 = fmul fast float %7351, %7319
  %7353 = fadd fast float %7342, %7337
  %7354 = fmul fast float %7353, %7318
  %7355 = fadd fast float %7354, %7352
  %7356 = fmul fast float %7355, 6.250000e-02
  br label %7595

; <label>:7357                                    ; preds = %7289
  %7358 = fmul fast float %271, 0x401921FB60000000
  %7359 = call float @dx.op.unary.f32(i32 13, float %7358)  ; Sin(value)
  %7360 = call float @dx.op.unary.f32(i32 12, float %7358)  ; Cos(value)
  %7361 = fsub fast float -0.000000e+00, %7359
  br label %7362

; <label>:7362                                    ; preds = %7411, %7357
  %7363 = phi float [ 0.000000e+00, %7357 ], [ %7406, %7411 ]
  %7364 = phi float [ 0.000000e+00, %7357 ], [ %7408, %7411 ]
  %7365 = phi i32 [ 0, %7357 ], [ %7412, %7411 ]
  %7366 = mul i32 %7365, 2
  %7367 = add i32 0, %7366
  %7368 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7367
  %7369 = load float, float* %7368, align 4
  %7370 = mul i32 %7365, 2
  %7371 = add i32 1, %7370
  %7372 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7371
  %7373 = load float, float* %7372, align 4
  %7374 = fmul fast float %7369, %7360
  %7375 = call float @dx.op.tertiary.f32(i32 46, float %7373, float %7361, float %7374)  ; FMad(a,b,c)
  %7376 = fmul fast float %7369, %7359
  %7377 = call float @dx.op.tertiary.f32(i32 46, float %7373, float %7360, float %7376)  ; FMad(a,b,c)
  %7378 = fmul fast float %7375, %7285
  %7379 = fmul fast float %7377, %7285
  %7380 = fadd fast float %7378, %6411
  %7381 = fadd fast float %7379, %6415
  %7382 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7380, float %7381, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7383 = extractvalue %dx.types.ResRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.ResRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.ResRet.f32 %7382, 2
  %7386 = extractvalue %dx.types.ResRet.f32 %7382, 3
  %7387 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7383, float* %7387, align 4
  %7388 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7384, float* %7388, align 4
  %7389 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7385, float* %7389, align 4
  %7390 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7386, float* %7390, align 4
  %7391 = fsub fast float %7383, %7287
  %7392 = fcmp fast olt float %7391, 0.000000e+00
  %7393 = select i1 %7392, float 0.000000e+00, float 1.000000e+00
  %7394 = fadd fast float %7393, %7363
  %7395 = fmul fast float %7393, %7391
  %7396 = fadd fast float %7395, %7364
  br label %7397

; <label>:7397                                    ; preds = %7397, %7362
  %7398 = phi i32 [ 1, %7362 ], [ %7409, %7397 ]
  %7399 = phi float [ %7396, %7362 ], [ %7408, %7397 ]
  %7400 = phi float [ %7394, %7362 ], [ %7406, %7397 ]
  %7401 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7398
  %7402 = load float, float* %7401, align 4, !tbaa !124, !noalias !114
  %7403 = fsub fast float %7402, %7287
  %7404 = fcmp fast olt float %7403, 0.000000e+00
  %7405 = select i1 %7404, float 0.000000e+00, float 1.000000e+00
  %7406 = fadd fast float %7405, %7400
  %7407 = fmul fast float %7405, %7403
  %7408 = fadd fast float %7407, %7399
  %7409 = add nuw nsw i32 %7398, 1
  %7410 = icmp eq i32 %7409, 4
  br i1 %7410, label %7411, label %7397, !llvm.loop !126

; <label>:7411                                    ; preds = %7397
  %7412 = add nuw nsw i32 %7365, 1
  %7413 = icmp eq i32 %7412, 8
  br i1 %7413, label %7414, label %7362, !llvm.loop !127

; <label>:7414                                    ; preds = %7411
  %7415 = fdiv fast float 1.000000e+00, %7406
  %7416 = fmul fast float %7415, %7408
  %7417 = fdiv fast float 1.000000e+00, %7287
  %7418 = fmul fast float %7416, %7417
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = call float @dx.op.binary.f32(i32 35, float %7419, float 0.000000e+00)  ; FMax(a,b)
  %7421 = fmul fast float %7406, 3.125000e-02
  %7422 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7423 = fmul fast float %7422, 2.000000e+00
  %7424 = fadd fast float %7423, -1.000000e+00
  %7425 = fcmp fast ogt float %7424, 0.000000e+00
  %7426 = fcmp fast olt float %7424, 0.000000e+00
  %7427 = zext i1 %7425 to i32
  %7428 = zext i1 %7426 to i32
  %7429 = sub nsw i32 %7427, %7428
  %7430 = sitofp i32 %7429 to float
  %7431 = fmul fast float %7430, %7424
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %7432, %7432
  %7434 = fmul fast float %7433, %7432
  %7435 = fsub fast float %7432, %7434
  %7436 = fmul fast float %7435, %7420
  %7437 = fsub fast float 1.000000e+00, %7434
  %7438 = fsub fast float %7437, %7436
  %7439 = fmul fast float %7430, 5.000000e-01
  %7440 = fmul fast float %7439, %7438
  %7441 = fsub fast float 5.000000e-01, %7440
  br label %7595

; <label>:7442                                    ; preds = %7277
  br i1 %7288, label %7443, label %7510

; <label>:7443                                    ; preds = %7442
  %7444 = extractvalue %dx.types.CBufRet.f32 %7281, 1
  %7445 = extractvalue %dx.types.CBufRet.f32 %7281, 0
  %7446 = fmul fast float %7445, %6411
  %7447 = fmul fast float %7444, %6415
  %7448 = fadd fast float %7446, 5.000000e-01
  %7449 = call float @dx.op.unary.f32(i32 27, float %7448)  ; Round_ni(value)
  %7450 = fadd fast float %7447, 5.000000e-01
  %7451 = call float @dx.op.unary.f32(i32 27, float %7450)  ; Round_ni(value)
  %7452 = fsub fast float %7448, %7449
  %7453 = fsub fast float %7450, %7451
  %7454 = fadd fast float %7449, -5.000000e-01
  %7455 = fadd fast float %7451, -5.000000e-01
  %7456 = fmul fast float %7452, 2.000000e+00
  %7457 = fsub fast float 3.000000e+00, %7456
  %7458 = fadd fast float %7456, 1.000000e+00
  %7459 = fsub fast float 2.000000e+00, %7452
  %7460 = bitcast float %7457 to i32
  %7461 = sub nsw i32 2129859010, %7460
  %7462 = bitcast i32 %7461 to float
  %7463 = fmul fast float %7462, %7459
  %7464 = fadd fast float %7463, -1.000000e+00
  %7465 = bitcast float %7458 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7452
  %7469 = fadd fast float %7468, 1.000000e+00
  %7470 = fmul fast float %7453, 2.000000e+00
  %7471 = fsub fast float 3.000000e+00, %7470
  %7472 = fadd fast float %7470, 1.000000e+00
  %7473 = fsub fast float 2.000000e+00, %7453
  %7474 = bitcast float %7471 to i32
  %7475 = sub nsw i32 2129859010, %7474
  %7476 = bitcast i32 %7475 to float
  %7477 = fmul fast float %7476, %7473
  %7478 = fadd fast float %7477, -1.000000e+00
  %7479 = bitcast float %7472 to i32
  %7480 = sub nsw i32 2129859010, %7479
  %7481 = bitcast i32 %7480 to float
  %7482 = fmul fast float %7481, %7453
  %7483 = fadd fast float %7482, 1.000000e+00
  %7484 = fadd fast float %7464, %7454
  %7485 = fmul fast float %7484, %7282
  %7486 = fadd fast float %7478, %7455
  %7487 = fmul fast float %7486, %7283
  %7488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7485, float %7487, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = fmul fast float %7489, %7457
  %7491 = fadd fast float %7469, %7454
  %7492 = fmul fast float %7491, %7282
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7492, float %7487, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = fmul fast float %7494, %7458
  %7496 = fadd fast float %7483, %7455
  %7497 = fmul fast float %7496, %7283
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7485, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7457
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7492, float %7497, float undef, float undef, i32 0, i32 0, i32 undef, float %7287)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = fmul fast float %7502, %7458
  %7504 = fadd fast float %7503, %7500
  %7505 = fmul fast float %7504, %7472
  %7506 = fadd fast float %7495, %7490
  %7507 = fmul fast float %7506, %7471
  %7508 = fadd fast float %7507, %7505
  %7509 = fmul fast float %7508, 6.250000e-02
  br label %7595

; <label>:7510                                    ; preds = %7442
  %7511 = fmul fast float %271, 0x401921FB60000000
  %7512 = call float @dx.op.unary.f32(i32 13, float %7511)  ; Sin(value)
  %7513 = call float @dx.op.unary.f32(i32 12, float %7511)  ; Cos(value)
  %7514 = fsub fast float -0.000000e+00, %7512
  br label %7515

; <label>:7515                                    ; preds = %7564, %7510
  %7516 = phi float [ 0.000000e+00, %7510 ], [ %7559, %7564 ]
  %7517 = phi float [ 0.000000e+00, %7510 ], [ %7561, %7564 ]
  %7518 = phi i32 [ 0, %7510 ], [ %7565, %7564 ]
  %7519 = mul i32 %7518, 2
  %7520 = add i32 0, %7519
  %7521 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7520
  %7522 = load float, float* %7521, align 4
  %7523 = mul i32 %7518, 2
  %7524 = add i32 1, %7523
  %7525 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7524
  %7526 = load float, float* %7525, align 4
  %7527 = fmul fast float %7522, %7513
  %7528 = call float @dx.op.tertiary.f32(i32 46, float %7526, float %7514, float %7527)  ; FMad(a,b,c)
  %7529 = fmul fast float %7522, %7512
  %7530 = call float @dx.op.tertiary.f32(i32 46, float %7526, float %7513, float %7529)  ; FMad(a,b,c)
  %7531 = fmul fast float %7528, %7285
  %7532 = fmul fast float %7530, %7285
  %7533 = fadd fast float %7531, %6411
  %7534 = fadd fast float %7532, %6415
  %7535 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7533, float %7534, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.ResRet.f32 %7535, 2
  %7539 = extractvalue %dx.types.ResRet.f32 %7535, 3
  %7540 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7536, float* %7540, align 4
  %7541 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7537, float* %7541, align 4
  %7542 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7538, float* %7542, align 4
  %7543 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7539, float* %7543, align 4
  %7544 = fsub fast float %7536, %7287
  %7545 = fcmp fast olt float %7544, 0.000000e+00
  %7546 = select i1 %7545, float 0.000000e+00, float 1.000000e+00
  %7547 = fadd fast float %7546, %7516
  %7548 = fmul fast float %7546, %7544
  %7549 = fadd fast float %7548, %7517
  br label %7550

; <label>:7550                                    ; preds = %7550, %7515
  %7551 = phi i32 [ 1, %7515 ], [ %7562, %7550 ]
  %7552 = phi float [ %7549, %7515 ], [ %7561, %7550 ]
  %7553 = phi float [ %7547, %7515 ], [ %7559, %7550 ]
  %7554 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7551
  %7555 = load float, float* %7554, align 4, !tbaa !124, !noalias !114
  %7556 = fsub fast float %7555, %7287
  %7557 = fcmp fast olt float %7556, 0.000000e+00
  %7558 = select i1 %7557, float 0.000000e+00, float 1.000000e+00
  %7559 = fadd fast float %7558, %7553
  %7560 = fmul fast float %7558, %7556
  %7561 = fadd fast float %7560, %7552
  %7562 = add nuw nsw i32 %7551, 1
  %7563 = icmp eq i32 %7562, 4
  br i1 %7563, label %7564, label %7550, !llvm.loop !126

; <label>:7564                                    ; preds = %7550
  %7565 = add nuw nsw i32 %7518, 1
  %7566 = icmp eq i32 %7565, 8
  br i1 %7566, label %7567, label %7515, !llvm.loop !127

; <label>:7567                                    ; preds = %7564
  %7568 = fdiv fast float 1.000000e+00, %7559
  %7569 = fmul fast float %7568, %7561
  %7570 = fdiv fast float 1.000000e+00, %7287
  %7571 = fmul fast float %7569, %7570
  %7572 = call float @dx.op.unary.f32(i32 7, float %7571)  ; Saturate(value)
  %7573 = call float @dx.op.binary.f32(i32 35, float %7572, float 0.000000e+00)  ; FMax(a,b)
  %7574 = fmul fast float %7559, 3.125000e-02
  %7575 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7576 = fmul fast float %7575, 2.000000e+00
  %7577 = fadd fast float %7576, -1.000000e+00
  %7578 = fcmp fast ogt float %7577, 0.000000e+00
  %7579 = fcmp fast olt float %7577, 0.000000e+00
  %7580 = zext i1 %7578 to i32
  %7581 = zext i1 %7579 to i32
  %7582 = sub nsw i32 %7580, %7581
  %7583 = sitofp i32 %7582 to float
  %7584 = fmul fast float %7583, %7577
  %7585 = fsub fast float 1.000000e+00, %7584
  %7586 = fmul fast float %7585, %7585
  %7587 = fmul fast float %7586, %7585
  %7588 = fsub fast float %7585, %7587
  %7589 = fmul fast float %7588, %7573
  %7590 = fsub fast float 1.000000e+00, %7587
  %7591 = fsub fast float %7590, %7589
  %7592 = fmul fast float %7583, 5.000000e-01
  %7593 = fmul fast float %7592, %7591
  %7594 = fsub fast float 5.000000e-01, %7593
  br label %7595

; <label>:7595                                    ; preds = %7567, %7443, %7414, %7290, %7274
  %7596 = phi float [ 1.000000e+00, %7274 ], [ %7356, %7290 ], [ %7441, %7414 ], [ %7509, %7443 ], [ %7594, %7567 ]
  %7597 = fsub fast float %7108, %6941
  %7598 = fmul fast float %7597, %6508
  %7599 = fadd fast float %7598, %6941
  %7600 = fsub fast float %7275, %7599
  %7601 = fmul fast float %7600, %6507
  %7602 = fadd fast float %7601, %7599
  %7603 = fsub fast float %7596, %7602
  %7604 = fmul fast float %7603, %6535
  %7605 = fadd fast float %7604, %7602
  %7606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7607 = extractvalue %dx.types.CBufRet.f32 %7606, 2
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  br i1 %7608, label %7609, label %7649, !dx.controlflow.hints !131

; <label>:7609                                    ; preds = %7595
  %7610 = fcmp fast ugt float %7607, 0.000000e+00
  br i1 %7610, label %7611, label %7646

; <label>:7611                                    ; preds = %7609
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.CBufRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.CBufRet.f32 %7612, 2
  %7616 = extractvalue %dx.types.CBufRet.f32 %7612, 3
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7622 = extractvalue %dx.types.CBufRet.f32 %7606, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7606, 1
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.CBufRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.CBufRet.f32 %7624, 2
  %7628 = fadd fast float %7625, %6388
  %7629 = fadd fast float %7626, %6389
  %7630 = fadd fast float %7627, %6390
  %7631 = fmul fast float %7628, %7613
  %7632 = call float @dx.op.tertiary.f32(i32 46, float %7614, float %7629, float %7631)  ; FMad(a,b,c)
  %7633 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7630, float %7632)  ; FMad(a,b,c)
  %7634 = fadd fast float %7633, %7616
  %7635 = fmul fast float %7628, %7618
  %7636 = call float @dx.op.tertiary.f32(i32 46, float %7619, float %7629, float %7635)  ; FMad(a,b,c)
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7630, float %7636)  ; FMad(a,b,c)
  %7638 = fadd fast float %7637, %7621
  %7639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7634, float %7638, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = fmul fast float %7640, %7623
  %7642 = fadd fast float %7641, %7622
  %7643 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7644 = fmul fast float %7643, %7607
  %7645 = fsub fast float 1.000000e+00, %7644
  br label %7646

; <label>:7646                                    ; preds = %7611, %7609
  %7647 = phi float [ %7645, %7611 ], [ 1.000000e+00, %7609 ]
  %7648 = fmul fast float %7647, %7605
  br label %7649

; <label>:7649                                    ; preds = %7646, %7595, %6368
  %7650 = phi float [ 1.000000e+00, %6368 ], [ %7648, %7646 ], [ %7605, %7595 ]
  %7651 = call float @dx.op.binary.f32(i32 36, float %7650, float %7650)  ; FMin(a,b)
  %7652 = call float @dx.op.binary.f32(i32 36, float %7650, float %7651)  ; FMin(a,b)
  %7653 = fcmp fast ogt float %7652, 0.000000e+00
  br i1 %7653, label %7654, label %7819, !dx.controlflow.hints !132

; <label>:7654                                    ; preds = %7649
  %7655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7655, 0
  %7657 = extractvalue %dx.types.CBufRet.f32 %7655, 1
  %7658 = extractvalue %dx.types.CBufRet.f32 %7655, 2
  %7659 = extractvalue %dx.types.CBufRet.f32 %7655, 3
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7663 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %7664 = extractvalue %dx.types.CBufRet.f32 %7660, 3
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7670 = fmul fast float %7656, %6388
  %7671 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7657, float %7670)  ; FMad(a,b,c)
  %7672 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7658, float %7671)  ; FMad(a,b,c)
  %7673 = fadd fast float %7672, %7659
  %7674 = fmul fast float %7661, %6388
  %7675 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7662, float %7674)  ; FMad(a,b,c)
  %7676 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7663, float %7675)  ; FMad(a,b,c)
  %7677 = fadd fast float %7676, %7664
  %7678 = fmul fast float %7666, %6388
  %7679 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7667, float %7678)  ; FMad(a,b,c)
  %7680 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7668, float %7679)  ; FMad(a,b,c)
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7684 = extractvalue %dx.types.CBufRet.f32 %7681, 3
  %7685 = fmul fast float %7684, %7673
  %7686 = fmul fast float %7684, %7677
  %7687 = fadd fast float %7685, %7682
  %7688 = fadd fast float %7686, %7683
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7692 = fsub fast float %7687, %7690
  %7693 = fsub fast float %7688, %7691
  %7694 = fcmp fast olt float %7692, 0.000000e+00
  %7695 = fcmp fast olt float %7693, 0.000000e+00
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.CBufRet.f32 %7696, 3
  %7701 = select i1 %7694, float %7697, float %7699
  %7702 = select i1 %7695, float %7698, float %7700
  %7703 = fmul fast float %7701, %7692
  %7704 = fmul fast float %7702, %7693
  %7705 = call float @dx.op.unary.f32(i32 6, float %7703)  ; FAbs(value)
  %7706 = call float @dx.op.unary.f32(i32 6, float %7704)  ; FAbs(value)
  %7707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7707, 0
  %7709 = call float @dx.op.binary.f32(i32 35, float %7705, float %7706)  ; FMax(a,b)
  %7710 = fsub fast float %7708, %7709
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7712 = fcmp fast ogt float %7711, 0.000000e+00
  br i1 %7712, label %7713, label %7754, !dx.controlflow.hints !133

; <label>:7713                                    ; preds = %7654
  %7714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7687, float %7688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7715 = extractvalue %dx.types.ResRet.f32 %7714, 1
  %7716 = fcmp fast ogt float %7715, 0.000000e+00
  br i1 %7716, label %7717, label %7749

; <label>:7717                                    ; preds = %7713
  %7718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7687, float %7688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7719 = extractvalue %dx.types.ResRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.ResRet.f32 %7718, 1
  %7721 = extractvalue %dx.types.ResRet.f32 %7718, 2
  %7722 = extractvalue %dx.types.ResRet.f32 %7718, 3
  %7723 = fsub fast float 1.000000e+00, %7669
  %7724 = fsub fast float %7723, %7680
  %7725 = fmul fast float %7724, 0x400921FB60000000
  %7726 = fadd fast float %7725, 0x3FF921FB60000000
  %7727 = call float @dx.op.unary.f32(i32 13, float %7726)  ; Sin(value)
  %7728 = fadd fast float %7727, -1.000000e+00
  %7729 = fmul fast float %7728, 0x3FD45F3060000000
  %7730 = fmul fast float %7724, 0x401921FB60000000
  %7731 = fadd fast float %7730, 0x400921FB60000000
  %7732 = call float @dx.op.unary.f32(i32 13, float %7731)  ; Sin(value)
  %7733 = fadd fast float %7732, 0x3E7777A5C0000000
  %7734 = fmul fast float %7733, 0x3FC45F3060000000
  %7735 = fmul fast float %7724, 0x4022D97C80000000
  %7736 = fadd fast float %7735, 0x4012D97C80000000
  %7737 = call float @dx.op.unary.f32(i32 13, float %7736)  ; Sin(value)
  %7738 = fadd fast float %7737, 1.000000e+00
  %7739 = fmul fast float %7738, 0x3FBB2995E0000000
  %7740 = fmul fast float %7724, 0x402921FB60000000
  %7741 = fadd fast float %7740, 0x401921FB60000000
  %7742 = call float @dx.op.unary.f32(i32 13, float %7741)  ; Sin(value)
  %7743 = fadd fast float %7742, 0xBE8777A5C0000000
  %7744 = fmul fast float %7743, 0x3FB45F3060000000
  %7745 = call float @dx.op.dot4.f32(i32 56, float %7719, float %7720, float %7721, float %7722, float %7729, float %7734, float %7739, float %7744)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7746 = fmul fast float %7745, 0xBFF7154760000000
  %7747 = call float @dx.op.unary.f32(i32 21, float %7746)  ; Exp(value)
  %7748 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  br label %7749

; <label>:7749                                    ; preds = %7717, %7713
  %7750 = phi float [ %7748, %7717 ], [ 1.000000e+00, %7713 ]
  %7751 = fadd fast float %7750, -1.000000e+00
  %7752 = fmul fast float %7751, %7711
  %7753 = fadd fast float %7752, 1.000000e+00
  br label %7754

; <label>:7754                                    ; preds = %7749, %7654
  %7755 = phi float [ %7753, %7749 ], [ 1.000000e+00, %7654 ]
  %7756 = fmul fast float %7755, %7650
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.CBufRet.f32 %7757, 2
  %7761 = fadd fast float %7758, %201
  %7762 = fadd fast float %7759, %202
  %7763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7764 = extractvalue %dx.types.CBufRet.f32 %7763, 1
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7769 = fsub fast float -0.000000e+00, %7761
  %7770 = fsub fast float -0.000000e+00, %7762
  %7771 = fsub fast float %5612, %7760
  %7772 = fadd fast float %7771, %7764
  %7773 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7769, float %7770, float %7772)  ; Dot3(ax,ay,az,bx,by,bz)
  %7774 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7766, float %7767, float %7768)  ; Dot3(ax,ay,az,bx,by,bz)
  %7775 = fdiv fast float 1.000000e+00, %7774
  %7776 = fmul fast float %7775, %7773
  %7777 = fmul fast float %7766, %7776
  %7778 = fmul fast float %7767, %7776
  %7779 = fadd fast float %7777, %7761
  %7780 = fadd fast float %7778, %7762
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.CBufRet.f32 %7781, 1
  %7784 = fsub fast float %7779, %7782
  %7785 = fsub fast float %7780, %7783
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 3
  %7789 = fmul fast float %7784, %7787
  %7790 = fmul fast float %7785, %7788
  %7791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.i32 %7791, 3
  %7793 = icmp eq i32 %7792, 0
  br i1 %7793, label %7799, label %7794

; <label>:7794                                    ; preds = %7754
  %7795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7789, float %7790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7796 = extractvalue %dx.types.ResRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.ResRet.f32 %7795, 1
  %7798 = extractvalue %dx.types.ResRet.f32 %7795, 2
  br label %7804

; <label>:7799                                    ; preds = %7754
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7789, float %7790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  br label %7804

; <label>:7804                                    ; preds = %7799, %7794
  %7805 = phi float [ %7796, %7794 ], [ %7801, %7799 ]
  %7806 = phi float [ %7797, %7794 ], [ %7802, %7799 ]
  %7807 = phi float [ %7798, %7794 ], [ %7803, %7799 ]
  %7808 = extractvalue %dx.types.CBufRet.f32 %7763, 2
  %7809 = fmul fast float %7808, %7805
  %7810 = extractvalue %dx.types.CBufRet.f32 %7763, 0
  %7811 = fsub fast float %7776, %7810
  %7812 = fsub fast float %7811, %7809
  %7813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7812)  ; FMax(a,b)
  %7814 = fmul fast float %7813, %7806
  %7815 = call float @dx.op.binary.f32(i32 36, float %7807, float %7814)  ; FMin(a,b)
  %7816 = fmul fast float %7815, 0xBFF7154760000000
  %7817 = call float @dx.op.unary.f32(i32 21, float %7816)  ; Exp(value)
  %7818 = fmul fast float %7756, %7817
  br label %7819

; <label>:7819                                    ; preds = %7804, %7649
  %7820 = phi float [ %7818, %7804 ], [ %7650, %7649 ]
  %7821 = call float @dx.op.binary.f32(i32 36, float %7820, float %7820)  ; FMin(a,b)
  %7822 = call float @dx.op.binary.f32(i32 36, float %7820, float %7821)  ; FMin(a,b)
  %7823 = fcmp fast ogt float %7822, 0.000000e+00
  br i1 %7823, label %7824, label %8084, !dx.controlflow.hints !134

; <label>:7824                                    ; preds = %7819
  %7825 = fmul fast float %7820, %6380
  %7826 = fmul fast float %7820, %6381
  %7827 = fmul fast float %7820, %6382
  %7828 = fsub fast float %203, %4811
  %7829 = fcmp fast ogt float %7828, 0.000000e+00
  %7830 = fmul fast float %6369, 5.120000e+02
  %7831 = fmul fast float %6370, 5.120000e+02
  %7832 = fmul fast float %6371, 5.120000e+02
  %7833 = fadd fast float %7832, %203
  %7834 = fsub fast float %4811, %7833
  %7835 = fmul fast float %7834, 2.000000e+00
  %7836 = fadd fast float %7835, %7833
  %7837 = select i1 %7829, float %7836, float %7833
  %7838 = fsub fast float %7837, %203
  %7839 = call float @dx.op.dot3.f32(i32 55, float %7830, float %7831, float %7838, float %7830, float %7831, float %7838)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = call float @dx.op.unary.f32(i32 25, float %7839)  ; Rsqrt(value)
  %7841 = fmul fast float %7840, %7830
  %7842 = fmul fast float %7840, %7831
  %7843 = fmul fast float %7840, %7838
  %7844 = fsub fast float %4811, %203
  %7845 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7844)  ; Dot3(ax,ay,az,bx,by,bz)
  %7846 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7841, float %7842, float %7843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = fdiv fast float 1.000000e+00, %7846
  %7848 = fmul fast float %7847, %7845
  %7849 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7828, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7850 = fcmp fast ogt float %7849, 0.000000e+00
  %7851 = fcmp fast olt float %7849, 0.000000e+00
  %7852 = zext i1 %7850 to i32
  %7853 = zext i1 %7851 to i32
  %7854 = sub nsw i32 %7852, %7853
  %7855 = sitofp i32 %7854 to float
  %7856 = fsub fast float %7837, %4811
  %7857 = call float @dx.op.dot3.f32(i32 55, float %7830, float %7831, float %7856, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = fcmp fast ogt float %7857, 0.000000e+00
  %7859 = fcmp fast olt float %7857, 0.000000e+00
  %7860 = zext i1 %7858 to i32
  %7861 = zext i1 %7859 to i32
  %7862 = sub nsw i32 %7860, %7861
  %7863 = sitofp i32 %7862 to float
  %7864 = fcmp fast une float %7855, %7863
  br i1 %7864, label %7865, label %7875

; <label>:7865                                    ; preds = %7824
  %7866 = fmul fast float %7848, %7843
  %7867 = fmul fast float %7848, %7842
  %7868 = fmul fast float %7848, %7841
  %7869 = fmul fast float %7868, %7868
  %7870 = fmul fast float %7867, %7867
  %7871 = fadd fast float %7869, %7870
  %7872 = fmul fast float %7866, %7866
  %7873 = fadd fast float %7871, %7872
  %7874 = call float @dx.op.unary.f32(i32 24, float %7873)  ; Sqrt(value)
  br label %7885

; <label>:7875                                    ; preds = %7824
  %7876 = icmp slt i32 %7854, 0
  br i1 %7876, label %7877, label %7885

; <label>:7877                                    ; preds = %7875
  %7878 = fsub fast float %203, %7837
  %7879 = fmul fast float %7830, %7830
  %7880 = fmul fast float %7831, %7831
  %7881 = fadd fast float %7879, %7880
  %7882 = fmul fast float %7878, %7878
  %7883 = fadd fast float %7881, %7882
  %7884 = call float @dx.op.unary.f32(i32 24, float %7883)  ; Sqrt(value)
  br label %7885

; <label>:7885                                    ; preds = %7877, %7875, %7865
  %7886 = phi float [ %7874, %7865 ], [ %7884, %7877 ], [ 0.000000e+00, %7875 ]
  %7887 = fsub fast float -0.000000e+00, %7886
  %7888 = select i1 %7829, float -0.000000e+00, float %7887
  %7889 = fmul fast float %4808, 0x3FF7154760000000
  %7890 = fmul fast float %7889, %7888
  %7891 = fmul fast float %4809, 0x3FF7154760000000
  %7892 = fmul fast float %7891, %7888
  %7893 = fmul fast float %4810, 0x3FF7154760000000
  %7894 = fmul fast float %7893, %7888
  %7895 = call float @dx.op.unary.f32(i32 21, float %7890)  ; Exp(value)
  %7896 = call float @dx.op.unary.f32(i32 21, float %7892)  ; Exp(value)
  %7897 = call float @dx.op.unary.f32(i32 21, float %7894)  ; Exp(value)
  %7898 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7899 = call float @dx.op.unary.f32(i32 7, float %7896)  ; Saturate(value)
  %7900 = call float @dx.op.unary.f32(i32 7, float %7897)  ; Saturate(value)
  %7901 = fmul fast float %7825, %7898
  %7902 = fmul fast float %7826, %7899
  %7903 = fmul fast float %7827, %7900
  %7904 = fsub fast float %6369, %5600
  %7905 = fsub fast float %6370, %5599
  %7906 = fsub fast float %6371, %5598
  %7907 = call float @dx.op.dot3.f32(i32 55, float %7904, float %7905, float %7906, float %7904, float %7905, float %7906)  ; Dot3(ax,ay,az,bx,by,bz)
  %7908 = call float @dx.op.unary.f32(i32 25, float %7907)  ; Rsqrt(value)
  %7909 = fmul fast float %7908, %7904
  %7910 = fmul fast float %7908, %7905
  %7911 = fmul fast float %7908, %7906
  %7912 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6371, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5596, float %5595, float %7909, float %7910, float %7911)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = call float @dx.op.unary.f32(i32 7, float %7912)  ; Saturate(value)
  %7915 = bitcast i32 %5639 to float
  %7916 = fmul fast float %7914, %7914
  %7917 = fmul fast float %7916, %7915
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = fmul fast float %7918, %7914
  %7920 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %7909, float %7910, float %7911)  ; Dot3(ax,ay,az,bx,by,bz)
  %7921 = fmul fast float %7920, %7920
  %7922 = call float @dx.op.unary.f32(i32 6, float %7912)  ; FAbs(value)
  %7923 = fsub fast float 1.000000e+00, %5633
  %7924 = fmul fast float %5615, %5615
  %7925 = fmul fast float %7924, %7923
  %7926 = fadd fast float %7925, %5633
  %7927 = bitcast float %7926 to i32
  %7928 = ashr i32 %7927, 1
  %7929 = add nsw i32 %7928, 532487669
  %7930 = bitcast i32 %7929 to float
  %7931 = fadd fast float %7930, %5615
  %7932 = fmul fast float %5633, %7921
  %7933 = fsub fast float 1.000000e+00, %7921
  %7934 = fadd fast float %7933, %7932
  %7935 = fmul fast float %7922, %7922
  %7936 = fmul fast float %7935, %7923
  %7937 = fadd fast float %7936, %5633
  %7938 = bitcast float %7937 to i32
  %7939 = ashr i32 %7938, 1
  %7940 = add nsw i32 %7939, 532487669
  %7941 = bitcast i32 %7940 to float
  %7942 = fadd fast float %7941, %7922
  %7943 = fmul fast float %7934, %7934
  %7944 = fmul fast float %7943, %7931
  %7945 = fmul fast float %7944, %7942
  %7946 = fdiv fast float 0x3FF0A00000000000, %7945
  %7947 = fmul fast float %7946, %5633
  %7948 = fmul fast float %5739, 0x3FF9999980000000
  %7949 = fsub fast float 5.000000e+00, %7948
  %7950 = call float @dx.op.unary.f32(i32 6, float %7913)  ; FAbs(value)
  %7951 = fsub fast float 1.000000e+00, %7950
  %7952 = fmul fast float %5739, 0x41D9660740000000
  %7953 = fadd fast float %7952, 0xC1EFBF8940000000
  %7954 = bitcast float %7951 to i32
  %7955 = sitofp i32 %7954 to float
  %7956 = fmul fast float %7955, %7949
  %7957 = fadd fast float %7953, %7956
  %7958 = fptosi float %7957 to i32
  %7959 = bitcast i32 %7958 to float
  %7960 = fsub fast float 1.000000e+00, %5604
  %7961 = fsub fast float 1.000000e+00, %5605
  %7962 = fsub fast float 1.000000e+00, %5613
  %7963 = fmul fast float %7959, %7960
  %7964 = fmul fast float %7959, %7961
  %7965 = fmul fast float %7959, %7962
  %7966 = fadd fast float %7963, %5604
  %7967 = fadd fast float %7964, %5605
  %7968 = fadd fast float %7965, %5613
  br i1 %5762, label %7969, label %7992

; <label>:7969                                    ; preds = %7885
  %7970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4404, float %7950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7971 = extractvalue %dx.types.ResRet.f32 %7970, 0
  %7972 = extractvalue %dx.types.ResRet.f32 %7970, 1
  %7973 = extractvalue %dx.types.ResRet.f32 %7970, 2
  %7974 = fadd fast float %7971, -5.000000e-01
  %7975 = fadd fast float %7972, -5.000000e-01
  %7976 = fadd fast float %7973, -5.000000e-01
  %7977 = fmul fast float %5604, 4.000000e+00
  %7978 = fmul fast float %7977, %7960
  %7979 = fmul fast float %7978, %7974
  %7980 = fmul fast float %5605, 4.000000e+00
  %7981 = fmul fast float %7980, %7961
  %7982 = fmul fast float %7981, %7975
  %7983 = fmul fast float %5613, 4.000000e+00
  %7984 = fmul fast float %7983, %7962
  %7985 = fmul fast float %7984, %7976
  %7986 = fadd fast float %7979, %7966
  %7987 = fadd fast float %7982, %7967
  %7988 = fadd fast float %7985, %7968
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7991 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  br label %7992

; <label>:7992                                    ; preds = %7969, %7885
  %7993 = phi float [ %7989, %7969 ], [ %7966, %7885 ]
  %7994 = phi float [ %7990, %7969 ], [ %7967, %7885 ]
  %7995 = phi float [ %7991, %7969 ], [ %7968, %7885 ]
  %7996 = fmul fast float %7912, 9.843750e-01
  %7997 = fadd fast float %7996, 7.812500e-03
  %7998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7997, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7999 = extractvalue %dx.types.ResRet.f32 %7998, 0
  %8000 = extractvalue %dx.types.ResRet.f32 %7998, 1
  %8001 = extractvalue %dx.types.ResRet.f32 %7998, 2
  %8002 = extractvalue %dx.types.ResRet.f32 %7998, 3
  %8003 = fsub fast float %8001, %7999
  %8004 = fsub fast float %8002, %8000
  %8005 = fmul fast float %8003, %5749
  %8006 = fmul fast float %8004, %5749
  %8007 = fadd fast float %8005, %7999
  %8008 = fadd fast float %8006, %8000
  %8009 = fmul fast float %8007, %5604
  %8010 = fmul fast float %8007, %5605
  %8011 = fmul fast float %8007, %5613
  %8012 = fadd fast float %8009, %8008
  %8013 = fadd fast float %8010, %8008
  %8014 = fadd fast float %8011, %8008
  br i1 %5762, label %8015, label %8038

; <label>:8015                                    ; preds = %7992
  %8016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4404, float %7912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8017 = extractvalue %dx.types.ResRet.f32 %8016, 0
  %8018 = extractvalue %dx.types.ResRet.f32 %8016, 1
  %8019 = extractvalue %dx.types.ResRet.f32 %8016, 2
  %8020 = fadd fast float %8017, -5.000000e-01
  %8021 = fadd fast float %8018, -5.000000e-01
  %8022 = fadd fast float %8019, -5.000000e-01
  %8023 = fmul fast float %5604, 4.000000e+00
  %8024 = fmul fast float %8023, %7960
  %8025 = fmul fast float %8024, %8020
  %8026 = fmul fast float %5605, 4.000000e+00
  %8027 = fmul fast float %8026, %7961
  %8028 = fmul fast float %8027, %8021
  %8029 = fmul fast float %5613, 4.000000e+00
  %8030 = fmul fast float %8029, %7962
  %8031 = fmul fast float %8030, %8022
  %8032 = fadd fast float %8025, %8012
  %8033 = fadd fast float %8028, %8013
  %8034 = fadd fast float %8031, %8014
  %8035 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8036 = call float @dx.op.unary.f32(i32 7, float %8033)  ; Saturate(value)
  %8037 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  br label %8038

; <label>:8038                                    ; preds = %8015, %7992
  %8039 = phi float [ %8035, %8015 ], [ %8012, %7992 ]
  %8040 = phi float [ %8036, %8015 ], [ %8013, %7992 ]
  %8041 = phi float [ %8037, %8015 ], [ %8014, %7992 ]
  %8042 = call float @dx.op.binary.f32(i32 35, float %8040, float %8041)  ; FMax(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float %8039, float %8042)  ; FMax(a,b)
  %8044 = fsub fast float 1.000000e+00, %8043
  %8045 = fmul fast float %7993, %7947
  %8046 = fmul fast float %7994, %7947
  %8047 = fmul fast float %7995, %7947
  %8048 = fsub fast float 1.000000e+00, %7913
  %8049 = bitcast float %8048 to i32
  %8050 = sitofp i32 %8049 to float
  %8051 = fmul fast float %8050, 5.000000e+00
  %8052 = fadd fast float %8051, 0xC1EFBF8940000000
  %8053 = fptosi float %8052 to i32
  %8054 = bitcast i32 %8053 to float
  %8055 = fmul fast float %8054, %4405
  %8056 = fmul fast float %8044, %8055
  %8057 = fmul fast float %8056, %6304
  %8058 = fmul fast float %8056, %6305
  %8059 = fmul fast float %8056, %6306
  %8060 = fadd fast float %8057, %8045
  %8061 = fadd fast float %8058, %8046
  %8062 = fadd fast float %8059, %8047
  %8063 = fmul fast float %7919, %7901
  %8064 = fmul fast float %8063, %8044
  %8065 = fmul fast float %7919, %7902
  %8066 = fmul fast float %8065, %8044
  %8067 = fmul fast float %7919, %7903
  %8068 = fmul fast float %8067, %8044
  %8069 = fmul fast float %8063, %8060
  %8070 = fmul fast float %8065, %8061
  %8071 = fmul fast float %8067, %8062
  %8072 = fadd fast float %8064, %6288
  %8073 = fmul fast float %8072, %4401
  %8074 = fadd fast float %8066, %6289
  %8075 = fmul fast float %8074, %4401
  %8076 = fadd fast float %8068, %6290
  %8077 = fmul fast float %8076, %4401
  %8078 = fadd fast float %8069, %6357
  %8079 = fmul fast float %8078, %4401
  %8080 = fadd fast float %8070, %6360
  %8081 = fmul fast float %8080, %4401
  %8082 = fadd fast float %8071, %6363
  %8083 = fmul fast float %8082, %4401
  br label %8084

; <label>:8084                                    ; preds = %8038, %7819, %6284
  %8085 = phi float [ %6358, %6284 ], [ %6358, %7819 ], [ %8079, %8038 ]
  %8086 = phi float [ %6361, %6284 ], [ %6361, %7819 ], [ %8081, %8038 ]
  %8087 = phi float [ %6364, %6284 ], [ %6364, %7819 ], [ %8083, %8038 ]
  %8088 = phi float [ %6353, %6284 ], [ %6353, %7819 ], [ %8073, %8038 ]
  %8089 = phi float [ %6354, %6284 ], [ %6354, %7819 ], [ %8075, %8038 ]
  %8090 = phi float [ %6355, %6284 ], [ %6355, %7819 ], [ %8077, %8038 ]
  %8091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.i32 %8091, 0
  %8093 = icmp eq i32 %8092, 0
  br i1 %8093, label %8769, label %8094

; <label>:8094                                    ; preds = %8084
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8097 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8098 = fmul fast float %8096, %114
  %8099 = fmul fast float %8097, %115
  %8100 = fptoui float %8098 to i32
  %8101 = fptoui float %8099 to i32
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 0
  %8104 = extractvalue %dx.types.CBufRet.f32 %8102, 2
  %8105 = extractvalue %dx.types.CBufRet.f32 %8102, 3
  %8106 = fadd fast float %101, -4.000000e+00
  %8107 = call float @dx.op.binary.f32(i32 35, float %8106, float 0.000000e+00)  ; FMax(a,b)
  %8108 = fadd fast float %8107, %8103
  %8109 = fmul fast float %8108, %8104
  %8110 = call float @dx.op.unary.f32(i32 23, float %8109)  ; Log(value)
  %8111 = fmul fast float %8110, %8105
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 2
  %8114 = fmul fast float %8111, %8113
  %8115 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8117 = extractvalue %dx.types.CBufRet.i32 %8116, 1
  %8118 = add i32 %8117, -1
  %8119 = uitofp i32 %8117 to float
  %8120 = fmul fast float %8119, %8115
  %8121 = fptoui float %8120 to i32
  %8122 = call i32 @dx.op.binary.i32(i32 40, i32 %8121, i32 %8118)  ; UMin(a,b)
  %8123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.i32 %8123, 2
  %8125 = extractvalue %dx.types.CBufRet.i32 %8123, 3
  %8126 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8101, i32 %8124, i32 %8100)  ; UMad(a,b,c)
  %8127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8122, i32 %8125, i32 %8126)  ; UMad(a,b,c)
  %8128 = add nsw i32 %8092, -1
  %8129 = call i32 @dx.op.binary.i32(i32 37, i32 %8128, i32 0)  ; IMax(a,b)
  %8130 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %8131 = fptoui float %8130 to i32
  %8132 = lshr i32 %8131, 5
  %8133 = call i32 @dx.op.binary.i32(i32 40, i32 %8132, i32 8191)  ; UMin(a,b)
  %8134 = shl i32 %8133, 2
  %8135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8134, i32 undef)  ; BufferLoad(srv,index,wot)
  %8136 = extractvalue %dx.types.ResRet.i32 %8135, 0
  %8137 = lshr i32 %8136, 16
  %8138 = and i32 %8136, 65535
  %8139 = lshr i32 %8136, 21
  %8140 = lshr i32 %8138, 5
  %8141 = call i32 @dx.op.binary.i32(i32 40, i32 %8140, i32 %8129)  ; UMin(a,b)
  %8142 = icmp ugt i32 %8139, %8141
  br i1 %8142, label %8769, label %8143

; <label>:8143                                    ; preds = %8094
  br label %8144

; <label>:8144                                    ; preds = %8759, %8143
  %8145 = phi i32 [ %8766, %8759 ], [ %8139, %8143 ]
  %8146 = phi float [ %8760, %8759 ], [ %8085, %8143 ]
  %8147 = phi float [ %8761, %8759 ], [ %8086, %8143 ]
  %8148 = phi float [ %8762, %8759 ], [ %8087, %8143 ]
  %8149 = phi float [ %8763, %8759 ], [ %8088, %8143 ]
  %8150 = phi float [ %8764, %8759 ], [ %8089, %8143 ]
  %8151 = phi float [ %8765, %8759 ], [ %8090, %8143 ]
  %8152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.i32 %8152, 0
  %8154 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8127, i32 %8153, i32 %8145)  ; UMad(a,b,c)
  %8155 = shl i32 %8154, 2
  %8156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8155, i32 undef)  ; BufferLoad(srv,index,wot)
  %8157 = extractvalue %dx.types.ResRet.i32 %8156, 0
  %8158 = shl i32 %8145, 5
  %8159 = sub nsw i32 %8137, %8158
  %8160 = call i32 @dx.op.binary.i32(i32 37, i32 %8159, i32 0)  ; IMax(a,b)
  %8161 = call i32 @dx.op.binary.i32(i32 38, i32 %8160, i32 31)  ; IMin(a,b)
  %8162 = sub nsw i32 1, %8137
  %8163 = add nsw i32 %8162, %8138
  %8164 = call i32 @dx.op.binary.i32(i32 37, i32 %8163, i32 0)  ; IMax(a,b)
  %8165 = call i32 @dx.op.binary.i32(i32 38, i32 %8164, i32 32)  ; IMin(a,b)
  %8166 = and i32 %8165, 31
  %8167 = shl i32 -1, %8166
  %8168 = xor i32 %8167, -1
  %8169 = and i32 %8161, 31
  %8170 = shl i32 %8168, %8169
  %8171 = icmp eq i32 %8165, 32
  %8172 = select i1 %8171, i32 -1, i32 %8170
  %8173 = and i32 %8172, %8157
  %8174 = icmp eq i32 %8173, 0
  br i1 %8174, label %8759, label %8175

; <label>:8175                                    ; preds = %8144
  br label %8176

; <label>:8176                                    ; preds = %8310, %8175
  %8177 = phi i32 [ %8188, %8310 ], [ %8173, %8175 ]
  %8178 = phi float [ %8311, %8310 ], [ %8146, %8175 ]
  %8179 = phi float [ %8312, %8310 ], [ %8147, %8175 ]
  %8180 = phi float [ %8313, %8310 ], [ %8148, %8175 ]
  %8181 = phi float [ %8314, %8310 ], [ %8149, %8175 ]
  %8182 = phi float [ %8315, %8310 ], [ %8150, %8175 ]
  %8183 = phi float [ %8316, %8310 ], [ %8151, %8175 ]
  %8184 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8177)  ; FirstbitLo(value)
  %8185 = add i32 %8184, %8158
  %8186 = and i32 %8184, 31
  %8187 = shl i32 1, %8186
  %8188 = xor i32 %8187, %8177
  %8189 = mul i32 %8185, 112
  %8190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8189, i32 undef)  ; BufferLoad(srv,index,wot)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.ResRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.ResRet.f32 %8190, 2
  %8194 = or i32 %8189, 12
  %8195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8194, i32 undef)  ; BufferLoad(srv,index,wot)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = add i32 %8189, 16
  %8198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8197, i32 undef)  ; BufferLoad(srv,index,wot)
  %8199 = extractvalue %dx.types.ResRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.ResRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.ResRet.f32 %8198, 2
  %8202 = add i32 %8189, 28
  %8203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8202, i32 undef)  ; BufferLoad(srv,index,wot)
  %8204 = extractvalue %dx.types.ResRet.i32 %8203, 0
  %8205 = add i32 %8189, 44
  %8206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8205, i32 undef)  ; BufferLoad(srv,index,wot)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = add i32 %8189, 48
  %8209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8208, i32 undef)  ; BufferLoad(srv,index,wot)
  %8210 = extractvalue %dx.types.ResRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.ResRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.ResRet.f32 %8209, 2
  %8213 = extractvalue %dx.types.ResRet.f32 %8209, 3
  %8214 = add i32 %8189, 64
  %8215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8214, i32 undef)  ; BufferLoad(srv,index,wot)
  %8216 = extractvalue %dx.types.ResRet.f32 %8215, 0
  %8217 = extractvalue %dx.types.ResRet.f32 %8215, 1
  %8218 = extractvalue %dx.types.ResRet.f32 %8215, 2
  %8219 = extractvalue %dx.types.ResRet.f32 %8215, 3
  %8220 = add i32 %8189, 80
  %8221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8220, i32 undef)  ; BufferLoad(srv,index,wot)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8224 = add i32 %8189, 92
  %8225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8224, i32 undef)  ; BufferLoad(srv,index,wot)
  %8226 = extractvalue %dx.types.ResRet.i32 %8225, 0
  %8227 = call float @dx.op.dot3.f32(i32 55, float %8191, float %8192, float %8193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8228 = select i1 %260, float %8222, float %8191
  %8229 = select i1 %260, float %8227, float %8192
  %8230 = select i1 %260, float %8223, float %8193
  %8231 = and i32 %8226, 65535
  %8232 = uitofp i32 %8231 to float
  %8233 = lshr i32 %8226, 16
  %8234 = uitofp i32 %8233 to float
  %8235 = and i32 %8204, 65535
  %8236 = and i32 %8204, 50331648
  %8237 = icmp eq i32 %8236, 33554432
  %8238 = fsub fast float %8210, %201
  %8239 = fsub fast float %8211, %202
  %8240 = fsub fast float %8212, %203
  %8241 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8240, float %8238, float %8239, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8242 = call float @dx.op.unary.f32(i32 24, float %8241)  ; Sqrt(value)
  %8243 = fdiv fast float 1.000000e+00, %8242
  %8244 = fmul fast float %8243, %8238
  %8245 = fmul fast float %8243, %8239
  %8246 = fmul fast float %8243, %8240
  %8247 = fadd fast float %8242, %8196
  %8248 = fdiv fast float 1.000000e+00, %8247
  %8249 = fmul float %8207, %8248
  %8250 = fmul float %8249, %8249
  %8251 = call float @dx.op.unary.f32(i32 7, float %8250)  ; Saturate(value)
  br i1 %8237, label %8252, label %8273

; <label>:8252                                    ; preds = %8176
  %8253 = fmul fast float %8218, %8199
  %8254 = fmul fast float %8218, %8200
  %8255 = fmul fast float %8218, %8201
  %8256 = fadd fast float %8238, %8253
  %8257 = fadd fast float %8239, %8254
  %8258 = fadd fast float %8240, %8255
  %8259 = call float @dx.op.dot3.f32(i32 55, float %8256, float %8257, float %8258, float %8256, float %8257, float %8258)  ; Dot3(ax,ay,az,bx,by,bz)
  %8260 = call float @dx.op.unary.f32(i32 25, float %8259)  ; Rsqrt(value)
  %8261 = fmul fast float %8260, %8256
  %8262 = fmul fast float %8260, %8257
  %8263 = fmul fast float %8260, %8258
  %8264 = fsub fast float %201, %8210
  %8265 = fsub fast float %202, %8211
  %8266 = fsub fast float %203, %8212
  %8267 = fsub fast float -0.000000e+00, %8264
  %8268 = fsub fast float -0.000000e+00, %8265
  %8269 = fsub fast float -0.000000e+00, %8266
  %8270 = call float @dx.op.dot3.f32(i32 55, float %8267, float %8268, float %8269, float %8199, float %8200, float %8201)  ; Dot3(ax,ay,az,bx,by,bz)
  %8271 = fcmp fast ogt float %8270, 0.000000e+00
  %8272 = uitofp i1 %8271 to float
  br label %8273

; <label>:8273                                    ; preds = %8252, %8176
  %8274 = phi float [ %8272, %8252 ], [ 1.000000e+00, %8176 ]
  %8275 = phi float [ %8261, %8252 ], [ %8244, %8176 ]
  %8276 = phi float [ %8262, %8252 ], [ %8245, %8176 ]
  %8277 = phi float [ %8263, %8252 ], [ %8246, %8176 ]
  %8278 = call float @dx.op.dot3.f32(i32 55, float %8199, float %8200, float %8201, float %8275, float %8276, float %8277)  ; Dot3(ax,ay,az,bx,by,bz)
  %8279 = fmul fast float %8278, %8278
  %8280 = call float @dx.op.unary.f32(i32 7, float %8279)  ; Saturate(value)
  %8281 = fsub fast float 1.000000e+00, %8280
  %8282 = fmul fast float %8281, 5.000000e-01
  %8283 = fcmp fast ogt float %8278, 0.000000e+00
  %8284 = fsub fast float 1.000000e+00, %8282
  %8285 = select i1 %8283, float %8282, float %8284
  %8286 = fmul fast float %8285, %8234
  %8287 = fadd fast float %8286, %8232
  %8288 = fmul fast float %8287, 0x3EF0001000000000
  %8289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8288, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8290 = extractvalue %dx.types.ResRet.f32 %8289, 0
  %8291 = fmul fast float %8278, %8216
  %8292 = fadd fast float %8291, %8217
  %8293 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8294 = select i1 %8237, float 1.000000e+00, float %8293
  %8295 = select i1 %8237, float %8293, float 1.000000e+00
  %8296 = fmul fast float %8242, %8213
  %8297 = fsub fast float 1.000000e+00, %8296
  %8298 = fmul fast float %8297, %8219
  %8299 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8300 = fmul fast float %8299, %8295
  %8301 = fmul fast float %8300, 2.000000e+00
  %8302 = fsub fast float 3.000000e+00, %8301
  %8303 = fmul fast float %8290, %8274
  %8304 = fmul fast float %8300, %8300
  %8305 = fmul fast float %8304, %8303
  %8306 = fmul fast float %8305, %8302
  %8307 = call float @dx.op.binary.f32(i32 36, float %8306, float %8306)  ; FMin(a,b)
  %8308 = call float @dx.op.binary.f32(i32 36, float %8306, float %8307)  ; FMin(a,b)
  %8309 = fcmp fast ogt float %8308, 0.000000e+00
  br i1 %8309, label %8318, label %8310, !dx.controlflow.hints !135

; <label>:8310                                    ; preds = %8715, %8464, %8273
  %8311 = phi float [ %8178, %8464 ], [ %8178, %8273 ], [ %8755, %8715 ]
  %8312 = phi float [ %8179, %8464 ], [ %8179, %8273 ], [ %8756, %8715 ]
  %8313 = phi float [ %8180, %8464 ], [ %8180, %8273 ], [ %8757, %8715 ]
  %8314 = phi float [ %8181, %8464 ], [ %8181, %8273 ], [ %8749, %8715 ]
  %8315 = phi float [ %8182, %8464 ], [ %8182, %8273 ], [ %8750, %8715 ]
  %8316 = phi float [ %8183, %8464 ], [ %8183, %8273 ], [ %8751, %8715 ]
  %8317 = icmp eq i32 %8177, %8187
  br i1 %8317, label %8758, label %8176

; <label>:8318                                    ; preds = %8273
  %8319 = icmp eq i32 %8235, 255
  br i1 %8319, label %8464, label %8320, !dx.controlflow.hints !136

; <label>:8320                                    ; preds = %8318
  %8321 = mul nuw nsw i32 %8235, 176
  %8322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8321, i32 undef)  ; BufferLoad(srv,index,wot)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = extractvalue %dx.types.ResRet.f32 %8322, 3
  %8327 = add nuw nsw i32 %8321, 16
  %8328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8327, i32 undef)  ; BufferLoad(srv,index,wot)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.ResRet.f32 %8328, 1
  %8331 = add nuw nsw i32 %8321, 32
  %8332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8331, i32 undef)  ; BufferLoad(srv,index,wot)
  %8333 = extractvalue %dx.types.ResRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.ResRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.ResRet.f32 %8332, 2
  %8336 = add nuw nsw i32 %8321, 48
  %8337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8336, i32 undef)  ; BufferLoad(srv,index,wot)
  %8338 = extractvalue %dx.types.ResRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.ResRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.ResRet.f32 %8337, 2
  %8341 = extractvalue %dx.types.ResRet.f32 %8337, 3
  %8342 = add nuw nsw i32 %8321, 64
  %8343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8342, i32 undef)  ; BufferLoad(srv,index,wot)
  %8344 = extractvalue %dx.types.ResRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.ResRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.ResRet.f32 %8343, 2
  %8347 = extractvalue %dx.types.ResRet.f32 %8343, 3
  %8348 = add nuw nsw i32 %8321, 80
  %8349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8348, i32 undef)  ; BufferLoad(srv,index,wot)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.ResRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.ResRet.f32 %8349, 2
  %8353 = extractvalue %dx.types.ResRet.f32 %8349, 3
  %8354 = add nuw nsw i32 %8321, 96
  %8355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8354, i32 undef)  ; BufferLoad(srv,index,wot)
  %8356 = extractvalue %dx.types.ResRet.f32 %8355, 0
  %8357 = extractvalue %dx.types.ResRet.f32 %8355, 1
  %8358 = extractvalue %dx.types.ResRet.f32 %8355, 2
  %8359 = extractvalue %dx.types.ResRet.f32 %8355, 3
  %8360 = bitcast float %8330 to i32
  %8361 = fmul fast float %8335, %121
  %8362 = fmul fast float %8335, %122
  %8363 = fmul fast float %8335, %123
  %8364 = fadd fast float %8361, %201
  %8365 = fadd fast float %8362, %202
  %8366 = fadd fast float %8363, %203
  %8367 = fmul fast float %8364, %8338
  %8368 = call float @dx.op.tertiary.f32(i32 46, float %8365, float %8344, float %8367)  ; FMad(a,b,c)
  %8369 = call float @dx.op.tertiary.f32(i32 46, float %8366, float %8350, float %8368)  ; FMad(a,b,c)
  %8370 = fadd fast float %8369, %8356
  %8371 = fmul fast float %8364, %8339
  %8372 = call float @dx.op.tertiary.f32(i32 46, float %8365, float %8345, float %8371)  ; FMad(a,b,c)
  %8373 = call float @dx.op.tertiary.f32(i32 46, float %8366, float %8351, float %8372)  ; FMad(a,b,c)
  %8374 = fadd fast float %8373, %8357
  %8375 = fmul fast float %8364, %8340
  %8376 = call float @dx.op.tertiary.f32(i32 46, float %8365, float %8346, float %8375)  ; FMad(a,b,c)
  %8377 = call float @dx.op.tertiary.f32(i32 46, float %8366, float %8352, float %8376)  ; FMad(a,b,c)
  %8378 = fadd fast float %8377, %8358
  %8379 = fmul fast float %8364, %8341
  %8380 = call float @dx.op.tertiary.f32(i32 46, float %8365, float %8347, float %8379)  ; FMad(a,b,c)
  %8381 = call float @dx.op.tertiary.f32(i32 46, float %8366, float %8353, float %8380)  ; FMad(a,b,c)
  %8382 = fadd fast float %8381, %8359
  %8383 = fdiv fast float %8370, %8382
  %8384 = fdiv fast float %8374, %8382
  %8385 = fdiv fast float %8378, %8382
  %8386 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8385)  ; FMax(a,b)
  %8387 = fmul fast float %271, 0x401921FB60000000
  %8388 = call float @dx.op.unary.f32(i32 13, float %8387)  ; Sin(value)
  %8389 = call float @dx.op.unary.f32(i32 12, float %8387)  ; Cos(value)
  %8390 = fmul fast float %8389, %8334
  %8391 = call float @dx.op.tertiary.f32(i32 46, float %8388, float %8334, float 0.000000e+00)  ; FMad(a,b,c)
  %8392 = fmul fast float %8334, %8388
  %8393 = fsub fast float -0.000000e+00, %8392
  %8394 = call float @dx.op.tertiary.f32(i32 46, float %8389, float %8334, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8395

; <label>:8395                                    ; preds = %8395, %8320
  %8396 = phi float [ 0.000000e+00, %8320 ], [ %8428, %8395 ]
  %8397 = phi float [ 0.000000e+00, %8320 ], [ %8430, %8395 ]
  %8398 = phi i32 [ 0, %8320 ], [ %8431, %8395 ]
  %8399 = mul i32 %8398, 2
  %8400 = add i32 0, %8399
  %8401 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8400
  %8402 = load float, float* %8401, align 4
  %8403 = mul i32 %8398, 2
  %8404 = add i32 1, %8403
  %8405 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8404
  %8406 = load float, float* %8405, align 4
  %8407 = fmul fast float %8390, %8402
  %8408 = call float @dx.op.tertiary.f32(i32 46, float %8406, float %8393, float %8407)  ; FMad(a,b,c)
  %8409 = fmul fast float %8402, %8391
  %8410 = call float @dx.op.tertiary.f32(i32 46, float %8406, float %8394, float %8409)  ; FMad(a,b,c)
  %8411 = fadd fast float %8408, %8383
  %8412 = fadd fast float %8410, %8384
  %8413 = fmul fast float %8411, %8329
  %8414 = fmul fast float %8412, %8329
  %8415 = call float @dx.op.binary.f32(i32 35, float %8413, float %8325)  ; FMax(a,b)
  %8416 = call float @dx.op.binary.f32(i32 35, float %8414, float %8325)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 36, float %8415, float %8326)  ; FMin(a,b)
  %8418 = call float @dx.op.binary.f32(i32 36, float %8416, float %8326)  ; FMin(a,b)
  %8419 = fadd fast float %8417, %8323
  %8420 = fadd fast float %8418, %8324
  %8421 = uitofp i32 %8360 to float
  %8422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8419, float %8420, float %8421, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8423 = extractvalue %dx.types.ResRet.f32 %8422, 0
  %8424 = fsub fast float %8423, %8386
  %8425 = fsub fast float %8424, %8333
  %8426 = fcmp fast ogt float %8425, 0.000000e+00
  %8427 = select i1 %8426, float 1.000000e+00, float 0.000000e+00
  %8428 = fadd fast float %8427, %8396
  %8429 = select i1 %8426, float %8425, float 0.000000e+00
  %8430 = fadd fast float %8429, %8397
  %8431 = add nuw nsw i32 %8398, 1
  %8432 = icmp eq i32 %8431, 8
  br i1 %8432, label %8433, label %8395

; <label>:8433                                    ; preds = %8395
  %8434 = fdiv fast float 1.000000e+00, %8428
  %8435 = fmul fast float %8434, %8430
  %8436 = fdiv fast float 1.000000e+00, %8386
  %8437 = fmul fast float %8435, %8436
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8438, float 0.000000e+00)  ; FMax(a,b)
  %8440 = fmul fast float %8428, 1.250000e-01
  %8441 = call float @dx.op.unary.f32(i32 7, float %8440)  ; Saturate(value)
  %8442 = fmul fast float %8441, 2.000000e+00
  %8443 = fadd fast float %8442, -1.000000e+00
  %8444 = fcmp fast ogt float %8443, 0.000000e+00
  %8445 = fcmp fast olt float %8443, 0.000000e+00
  %8446 = zext i1 %8444 to i32
  %8447 = zext i1 %8445 to i32
  %8448 = sub nsw i32 %8446, %8447
  %8449 = sitofp i32 %8448 to float
  %8450 = fmul fast float %8449, %8443
  %8451 = fsub fast float 1.000000e+00, %8450
  %8452 = fmul fast float %8451, %8451
  %8453 = fmul fast float %8452, %8451
  %8454 = fsub fast float %8451, %8453
  %8455 = fmul fast float %8454, %8439
  %8456 = fsub fast float 1.000000e+00, %8453
  %8457 = fsub fast float %8456, %8455
  %8458 = fmul fast float %8449, 5.000000e-01
  %8459 = fmul fast float %8458, %8457
  %8460 = fsub fast float -5.000000e-01, %8459
  %8461 = fmul fast float %8460, %8294
  %8462 = fadd fast float %8461, 1.000000e+00
  %8463 = fmul fast float %8462, %8306
  br label %8464

; <label>:8464                                    ; preds = %8433, %8318
  %8465 = phi float [ %8463, %8433 ], [ %8306, %8318 ]
  %8466 = call float @dx.op.binary.f32(i32 36, float %8465, float %8465)  ; FMin(a,b)
  %8467 = call float @dx.op.binary.f32(i32 36, float %8465, float %8466)  ; FMin(a,b)
  %8468 = fcmp fast ogt float %8467, 0.000000e+00
  br i1 %8468, label %8469, label %8310, !dx.controlflow.hints !137

; <label>:8469                                    ; preds = %8464
  %8470 = fmul fast float %8465, %8228
  %8471 = fmul fast float %8465, %8229
  %8472 = fmul fast float %8465, %8230
  %8473 = fsub fast float %8212, %4811
  %8474 = fcmp fast ogt float %8473, 0.000000e+00
  %8475 = fsub fast float %203, %4811
  %8476 = fcmp fast ogt float %8475, 0.000000e+00
  %8477 = xor i1 %8476, %8474
  %8478 = fsub fast float %4811, %8212
  %8479 = fmul fast float %8478, 2.000000e+00
  %8480 = fadd fast float %8479, %8212
  %8481 = select i1 %8477, float %8212, float %8480
  %8482 = fsub fast float %8481, %203
  %8483 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8482, float %8238, float %8239, float %8482)  ; Dot3(ax,ay,az,bx,by,bz)
  %8484 = call float @dx.op.unary.f32(i32 25, float %8483)  ; Rsqrt(value)
  %8485 = fmul fast float %8484, %8238
  %8486 = fmul fast float %8484, %8239
  %8487 = fmul fast float %8484, %8482
  %8488 = fsub fast float %4811, %203
  %8489 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8488)  ; Dot3(ax,ay,az,bx,by,bz)
  %8490 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8485, float %8486, float %8487)  ; Dot3(ax,ay,az,bx,by,bz)
  %8491 = fdiv fast float 1.000000e+00, %8490
  %8492 = fmul fast float %8491, %8489
  %8493 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8475, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8494 = fcmp fast ogt float %8493, 0.000000e+00
  %8495 = fcmp fast olt float %8493, 0.000000e+00
  %8496 = zext i1 %8494 to i32
  %8497 = zext i1 %8495 to i32
  %8498 = sub nsw i32 %8496, %8497
  %8499 = sitofp i32 %8498 to float
  %8500 = fsub fast float %8481, %4811
  %8501 = call float @dx.op.dot3.f32(i32 55, float %8238, float %8239, float %8500, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8502 = fcmp fast ogt float %8501, 0.000000e+00
  %8503 = fcmp fast olt float %8501, 0.000000e+00
  %8504 = zext i1 %8502 to i32
  %8505 = zext i1 %8503 to i32
  %8506 = sub nsw i32 %8504, %8505
  %8507 = sitofp i32 %8506 to float
  %8508 = fcmp fast une float %8499, %8507
  br i1 %8508, label %8509, label %8519

; <label>:8509                                    ; preds = %8469
  %8510 = fmul fast float %8492, %8487
  %8511 = fmul fast float %8492, %8486
  %8512 = fmul fast float %8492, %8485
  %8513 = fmul fast float %8512, %8512
  %8514 = fmul fast float %8511, %8511
  %8515 = fadd fast float %8513, %8514
  %8516 = fmul fast float %8510, %8510
  %8517 = fadd fast float %8515, %8516
  %8518 = call float @dx.op.unary.f32(i32 24, float %8517)  ; Sqrt(value)
  br label %8531

; <label>:8519                                    ; preds = %8469
  %8520 = icmp slt i32 %8498, 0
  br i1 %8520, label %8521, label %8531

; <label>:8521                                    ; preds = %8519
  %8522 = fsub fast float %201, %8210
  %8523 = fsub fast float %202, %8211
  %8524 = fsub fast float %203, %8481
  %8525 = fmul fast float %8522, %8522
  %8526 = fmul fast float %8523, %8523
  %8527 = fadd fast float %8525, %8526
  %8528 = fmul fast float %8524, %8524
  %8529 = fadd fast float %8527, %8528
  %8530 = call float @dx.op.unary.f32(i32 24, float %8529)  ; Sqrt(value)
  br label %8531

; <label>:8531                                    ; preds = %8521, %8519, %8509
  %8532 = phi float [ %8518, %8509 ], [ %8530, %8521 ], [ 0.000000e+00, %8519 ]
  %8533 = and i1 %8476, %8474
  %8534 = fsub fast float -0.000000e+00, %8532
  %8535 = select i1 %8533, float -0.000000e+00, float %8534
  %8536 = fmul fast float %4808, 0x3FF7154760000000
  %8537 = fmul fast float %8536, %8535
  %8538 = fmul fast float %4809, 0x3FF7154760000000
  %8539 = fmul fast float %8538, %8535
  %8540 = fmul fast float %4810, 0x3FF7154760000000
  %8541 = fmul fast float %8540, %8535
  %8542 = call float @dx.op.unary.f32(i32 21, float %8537)  ; Exp(value)
  %8543 = call float @dx.op.unary.f32(i32 21, float %8539)  ; Exp(value)
  %8544 = call float @dx.op.unary.f32(i32 21, float %8541)  ; Exp(value)
  %8545 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8546 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8547 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8548 = fmul fast float %8470, %8545
  %8549 = fmul fast float %8471, %8546
  %8550 = fmul fast float %8472, %8547
  %8551 = fsub fast float %8244, %5600
  %8552 = fsub fast float %8245, %5599
  %8553 = fsub fast float %8246, %5598
  %8554 = call float @dx.op.dot3.f32(i32 55, float %8551, float %8552, float %8553, float %8551, float %8552, float %8553)  ; Dot3(ax,ay,az,bx,by,bz)
  %8555 = call float @dx.op.unary.f32(i32 25, float %8554)  ; Rsqrt(value)
  %8556 = fmul fast float %8555, %8551
  %8557 = fmul fast float %8555, %8552
  %8558 = fmul fast float %8555, %8553
  %8559 = call float @dx.op.dot3.f32(i32 55, float %8244, float %8245, float %8246, float %5607, float %5608, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %8560 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5596, float %5595, float %8556, float %8557, float %8558)  ; Dot3(ax,ay,az,bx,by,bz)
  %8561 = call float @dx.op.unary.f32(i32 7, float %8559)  ; Saturate(value)
  %8562 = fmul fast float %8561, %8251
  %8563 = bitcast i32 %5639 to float
  %8564 = fmul fast float %8561, %8561
  %8565 = fmul fast float %8564, %8563
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fmul fast float %8562, %8566
  %8568 = bitcast float %8241 to i32
  %8569 = ashr i32 %8568, 1
  %8570 = sub nsw i32 1597463007, %8569
  %8571 = bitcast i32 %8570 to float
  %8572 = fmul fast float %8571, %8238
  %8573 = fmul fast float %8571, %8239
  %8574 = fmul fast float %8571, %8240
  %8575 = fsub fast float %8572, %5600
  %8576 = fsub fast float %8573, %5599
  %8577 = fsub fast float %8574, %5598
  %8578 = call float @dx.op.dot3.f32(i32 55, float %8575, float %8576, float %8577, float %8575, float %8576, float %8577)  ; Dot3(ax,ay,az,bx,by,bz)
  %8579 = call float @dx.op.unary.f32(i32 25, float %8578)  ; Rsqrt(value)
  %8580 = fmul fast float %8575, %8579
  %8581 = fmul fast float %8576, %8579
  %8582 = fmul fast float %8577, %8579
  %8583 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %8580, float %8581, float %8582)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = fmul fast float %8583, %8583
  %8585 = call float @dx.op.unary.f32(i32 6, float %8559)  ; FAbs(value)
  %8586 = fsub fast float 1.000000e+00, %5633
  %8587 = fmul fast float %5615, %5615
  %8588 = fmul fast float %8587, %8586
  %8589 = fadd fast float %8588, %5633
  %8590 = bitcast float %8589 to i32
  %8591 = ashr i32 %8590, 1
  %8592 = add nsw i32 %8591, 532487669
  %8593 = bitcast i32 %8592 to float
  %8594 = fadd fast float %8593, %5615
  %8595 = fmul fast float %5633, %8584
  %8596 = fsub fast float 1.000000e+00, %8584
  %8597 = fadd fast float %8596, %8595
  %8598 = fmul fast float %8585, %8585
  %8599 = fmul fast float %8598, %8586
  %8600 = fadd fast float %8599, %5633
  %8601 = bitcast float %8600 to i32
  %8602 = ashr i32 %8601, 1
  %8603 = add nsw i32 %8602, 532487669
  %8604 = bitcast i32 %8603 to float
  %8605 = fadd fast float %8604, %8585
  %8606 = fmul fast float %8597, %8597
  %8607 = fmul fast float %8606, %8594
  %8608 = fmul fast float %8607, %8605
  %8609 = fdiv fast float 1.000000e+00, %8608
  %8610 = bitcast float %5633 to i32
  %8611 = sitofp i32 %8610 to float
  %8612 = fmul fast float %8611, 0x3FE7F73180000000
  %8613 = fadd fast float %8612, 0x41AFE27C40000000
  %8614 = fptosi float %8613 to i32
  %8615 = bitcast i32 %8614 to float
  %8616 = fmul fast float %8207, 0x3FD80E9D60000000
  %8617 = fmul fast float %8616, %8571
  %8618 = fadd fast float %8615, %8617
  %8619 = bitcast float %8618 to i32
  %8620 = sub nsw i32 2129859010, %8619
  %8621 = bitcast i32 %8620 to float
  %8622 = fmul fast float %5633, %8609
  %8623 = fmul fast float %8622, %8615
  %8624 = fmul fast float %8623, %8621
  %8625 = fmul fast float %5739, 0x3FF9999980000000
  %8626 = fsub fast float 5.000000e+00, %8625
  %8627 = call float @dx.op.unary.f32(i32 6, float %8560)  ; FAbs(value)
  %8628 = fsub fast float 1.000000e+00, %8627
  %8629 = fmul fast float %5739, 0x41D9660740000000
  %8630 = fadd fast float %8629, 0xC1EFBF8940000000
  %8631 = bitcast float %8628 to i32
  %8632 = sitofp i32 %8631 to float
  %8633 = fmul fast float %8632, %8626
  %8634 = fadd fast float %8630, %8633
  %8635 = fptosi float %8634 to i32
  %8636 = bitcast i32 %8635 to float
  %8637 = fsub fast float 1.000000e+00, %5604
  %8638 = fsub fast float 1.000000e+00, %5605
  %8639 = fsub fast float 1.000000e+00, %5613
  %8640 = fmul fast float %8636, %8637
  %8641 = fmul fast float %8636, %8638
  %8642 = fmul fast float %8636, %8639
  %8643 = fadd fast float %8640, %5604
  %8644 = fadd fast float %8641, %5605
  %8645 = fadd fast float %8642, %5613
  br i1 %5762, label %8646, label %8669

; <label>:8646                                    ; preds = %8531
  %8647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4404, float %8627, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8648 = extractvalue %dx.types.ResRet.f32 %8647, 0
  %8649 = extractvalue %dx.types.ResRet.f32 %8647, 1
  %8650 = extractvalue %dx.types.ResRet.f32 %8647, 2
  %8651 = fadd fast float %8648, -5.000000e-01
  %8652 = fadd fast float %8649, -5.000000e-01
  %8653 = fadd fast float %8650, -5.000000e-01
  %8654 = fmul fast float %5604, 4.000000e+00
  %8655 = fmul fast float %8654, %8637
  %8656 = fmul fast float %8655, %8651
  %8657 = fmul fast float %5605, 4.000000e+00
  %8658 = fmul fast float %8657, %8638
  %8659 = fmul fast float %8658, %8652
  %8660 = fmul fast float %5613, 4.000000e+00
  %8661 = fmul fast float %8660, %8639
  %8662 = fmul fast float %8661, %8653
  %8663 = fadd fast float %8656, %8643
  %8664 = fadd fast float %8659, %8644
  %8665 = fadd fast float %8662, %8645
  %8666 = call float @dx.op.unary.f32(i32 7, float %8663)  ; Saturate(value)
  %8667 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8668 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  br label %8669

; <label>:8669                                    ; preds = %8646, %8531
  %8670 = phi float [ %8666, %8646 ], [ %8643, %8531 ]
  %8671 = phi float [ %8667, %8646 ], [ %8644, %8531 ]
  %8672 = phi float [ %8668, %8646 ], [ %8645, %8531 ]
  %8673 = fmul fast float %8559, 9.843750e-01
  %8674 = fadd fast float %8673, 7.812500e-03
  %8675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8674, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8676 = extractvalue %dx.types.ResRet.f32 %8675, 0
  %8677 = extractvalue %dx.types.ResRet.f32 %8675, 1
  %8678 = extractvalue %dx.types.ResRet.f32 %8675, 2
  %8679 = extractvalue %dx.types.ResRet.f32 %8675, 3
  %8680 = fsub fast float %8678, %8676
  %8681 = fsub fast float %8679, %8677
  %8682 = fmul fast float %8680, %5749
  %8683 = fmul fast float %8681, %5749
  %8684 = fadd fast float %8682, %8676
  %8685 = fadd fast float %8683, %8677
  %8686 = fmul fast float %8684, %5604
  %8687 = fmul fast float %8684, %5605
  %8688 = fmul fast float %8684, %5613
  %8689 = fadd fast float %8686, %8685
  %8690 = fadd fast float %8687, %8685
  %8691 = fadd fast float %8688, %8685
  br i1 %5762, label %8692, label %8715

; <label>:8692                                    ; preds = %8669
  %8693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4404, float %8559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8694 = extractvalue %dx.types.ResRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.ResRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.ResRet.f32 %8693, 2
  %8697 = fadd fast float %8694, -5.000000e-01
  %8698 = fadd fast float %8695, -5.000000e-01
  %8699 = fadd fast float %8696, -5.000000e-01
  %8700 = fmul fast float %5604, 4.000000e+00
  %8701 = fmul fast float %8700, %8637
  %8702 = fmul fast float %8701, %8697
  %8703 = fmul fast float %5605, 4.000000e+00
  %8704 = fmul fast float %8703, %8638
  %8705 = fmul fast float %8704, %8698
  %8706 = fmul fast float %5613, 4.000000e+00
  %8707 = fmul fast float %8706, %8639
  %8708 = fmul fast float %8707, %8699
  %8709 = fadd fast float %8702, %8689
  %8710 = fadd fast float %8705, %8690
  %8711 = fadd fast float %8708, %8691
  %8712 = call float @dx.op.unary.f32(i32 7, float %8709)  ; Saturate(value)
  %8713 = call float @dx.op.unary.f32(i32 7, float %8710)  ; Saturate(value)
  %8714 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  br label %8715

; <label>:8715                                    ; preds = %8692, %8669
  %8716 = phi float [ %8712, %8692 ], [ %8689, %8669 ]
  %8717 = phi float [ %8713, %8692 ], [ %8690, %8669 ]
  %8718 = phi float [ %8714, %8692 ], [ %8691, %8669 ]
  %8719 = call float @dx.op.binary.f32(i32 35, float %8717, float %8718)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 35, float %8716, float %8719)  ; FMax(a,b)
  %8721 = fsub fast float 1.000000e+00, %8720
  %8722 = fmul fast float %8670, %8624
  %8723 = fmul fast float %8671, %8624
  %8724 = fmul fast float %8672, %8624
  %8725 = fsub fast float 1.000000e+00, %8560
  %8726 = bitcast float %8725 to i32
  %8727 = sitofp i32 %8726 to float
  %8728 = fmul fast float %8727, 5.000000e+00
  %8729 = fadd fast float %8728, 0xC1EFBF8940000000
  %8730 = fptosi float %8729 to i32
  %8731 = bitcast i32 %8730 to float
  %8732 = fmul fast float %8731, %4405
  %8733 = fmul fast float %8721, %8732
  %8734 = fmul fast float %8733, %6304
  %8735 = fmul fast float %8733, %6305
  %8736 = fmul fast float %8733, %6306
  %8737 = fadd fast float %8734, %8722
  %8738 = fadd fast float %8735, %8723
  %8739 = fadd fast float %8736, %8724
  %8740 = fmul fast float %8548, %4401
  %8741 = fmul fast float %8740, %8567
  %8742 = fmul fast float %8741, %8721
  %8743 = fmul fast float %8549, %4401
  %8744 = fmul fast float %8743, %8567
  %8745 = fmul fast float %8744, %8721
  %8746 = fmul fast float %8550, %4401
  %8747 = fmul fast float %8746, %8567
  %8748 = fmul fast float %8747, %8721
  %8749 = fadd fast float %8742, %8181
  %8750 = fadd fast float %8745, %8182
  %8751 = fadd fast float %8748, %8183
  %8752 = fmul fast float %8741, %8737
  %8753 = fmul fast float %8744, %8738
  %8754 = fmul fast float %8747, %8739
  %8755 = fadd fast float %8752, %8178
  %8756 = fadd fast float %8753, %8179
  %8757 = fadd fast float %8754, %8180
  br label %8310

; <label>:8758                                    ; preds = %8310
  br label %8759

; <label>:8759                                    ; preds = %8758, %8144
  %8760 = phi float [ %8146, %8144 ], [ %8311, %8758 ]
  %8761 = phi float [ %8147, %8144 ], [ %8312, %8758 ]
  %8762 = phi float [ %8148, %8144 ], [ %8313, %8758 ]
  %8763 = phi float [ %8149, %8144 ], [ %8314, %8758 ]
  %8764 = phi float [ %8150, %8144 ], [ %8315, %8758 ]
  %8765 = phi float [ %8151, %8144 ], [ %8316, %8758 ]
  %8766 = add i32 %8145, 1
  %8767 = icmp ugt i32 %8766, %8141
  br i1 %8767, label %8768, label %8144

; <label>:8768                                    ; preds = %8759
  br label %8769

; <label>:8769                                    ; preds = %8768, %8094, %8084
  %8770 = phi float [ %8085, %8084 ], [ %8085, %8094 ], [ %8760, %8768 ]
  %8771 = phi float [ %8086, %8084 ], [ %8086, %8094 ], [ %8761, %8768 ]
  %8772 = phi float [ %8087, %8084 ], [ %8087, %8094 ], [ %8762, %8768 ]
  %8773 = phi float [ %8088, %8084 ], [ %8088, %8094 ], [ %8763, %8768 ]
  %8774 = phi float [ %8089, %8084 ], [ %8089, %8094 ], [ %8764, %8768 ]
  %8775 = phi float [ %8090, %8084 ], [ %8090, %8094 ], [ %8765, %8768 ]
  %8776 = fmul fast float %4401, %4401
  %8777 = fmul fast float %8776, %6330
  %8778 = fsub fast float -0.000000e+00, %8777
  %8779 = fmul fast float %8776, %6331
  %8780 = fsub fast float -0.000000e+00, %8779
  %8781 = fmul fast float %8776, %6332
  %8782 = fsub fast float -0.000000e+00, %8781
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 0
  %8785 = fmul fast float %8784, %6336
  %8786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8787 = extractvalue %dx.types.CBufRet.f32 %8786, 3
  %8788 = fsub fast float 1.000000e+00, %4408
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fadd fast float %8775, %4407
  %8791 = fmul fast float %8790, %4408
  %8792 = fmul fast float %8789, %8787
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8795 = fmul fast float %8773, %5601
  %8796 = fmul fast float %8774, %5602
  %8797 = fmul fast float %8775, %5603
  %8798 = fcmp fast ogt float %101, %223
  %8799 = and i1 %8798, %4814
  %8800 = or i1 %4820, %8799
  %8801 = icmp eq i32 %4813, 2
  %8802 = fcmp fast ole float %101, %223
  %8803 = and i1 %8802, %8801
  %8804 = or i1 %8803, %8800
  br i1 %8799, label %8805, label %9062

; <label>:8805                                    ; preds = %8769
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8809 = fmul fast float %8807, %114
  %8810 = fmul fast float %8808, %115
  %8811 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8812 = call float @dx.op.unary.f32(i32 7, float %8810)  ; Saturate(value)
  %8813 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8811, float %8812, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8814 = extractvalue %dx.types.ResRet.f32 %8813, 0
  %8815 = extractvalue %dx.types.ResRet.f32 %8813, 1
  %8816 = extractvalue %dx.types.ResRet.f32 %8813, 2
  %8817 = extractvalue %dx.types.ResRet.f32 %8813, 3
  %8818 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8811, float %8812, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8819 = extractvalue %dx.types.ResRet.f32 %8818, 0
  %8820 = extractvalue %dx.types.ResRet.f32 %8818, 1
  %8821 = extractvalue %dx.types.ResRet.f32 %8818, 2
  %8822 = extractvalue %dx.types.ResRet.f32 %8818, 3
  %8823 = call float @dx.op.binary.f32(i32 35, float %8815, float %8816)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 35, float %8814, float %8823)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 35, float %8824, float %8817)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 36, float %8820, float %8821)  ; FMin(a,b)
  %8827 = call float @dx.op.binary.f32(i32 36, float %8819, float %8826)  ; FMin(a,b)
  %8828 = call float @dx.op.binary.f32(i32 36, float %8827, float %8822)  ; FMin(a,b)
  %8829 = fmul fast float %8825, 2.550000e+02
  %8830 = fadd fast float %8829, 0x3F70101020000000
  %8831 = fptoui float %8830 to i32
  %8832 = fmul fast float %8828, 2.550000e+02
  %8833 = fadd fast float %8832, 0x3F70101020000000
  %8834 = fptoui float %8833 to i32
  %8835 = icmp ult i32 %8831, %8834
  br i1 %8835, label %8836, label %9004

; <label>:8836                                    ; preds = %8805
  %8837 = fcmp fast ogt float %100, 9.843750e-01
  %8838 = fadd fast float %101, -4.000000e+00
  %8839 = select i1 %8837, float -4.000000e+00, float %8838
  %8840 = call float @dx.op.binary.f32(i32 35, float %8839, float 0.000000e+00)  ; FMax(a,b)
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 0
  %8843 = fadd fast float %8842, %8840
  %8844 = extractvalue %dx.types.CBufRet.f32 %8841, 2
  %8845 = fmul fast float %8843, %8844
  %8846 = call float @dx.op.unary.f32(i32 23, float %8845)  ; Log(value)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8841, 3
  %8848 = fmul fast float %8847, %8846
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8851 = fmul fast float %8848, %8850
  %8852 = call float @dx.op.unary.f32(i32 7, float %8851)  ; Saturate(value)
  %8853 = uitofp i32 %8831 to float
  %8854 = uitofp i32 %8834 to float
  %8855 = fadd fast float %8853, 5.000000e-01
  %8856 = fadd fast float %8854, 5.000000e-01
  %8857 = fmul fast float %8850, %8855
  %8858 = fmul fast float %8850, %8856
  %8859 = fadd fast float %8857, 0x3F0FFB4800000000
  %8860 = fadd fast float %8858, 0xBF0FFB4800000000
  %8861 = call float @dx.op.binary.f32(i32 35, float %8852, float %8859)  ; FMax(a,b)
  %8862 = call float @dx.op.binary.f32(i32 36, float %8861, float %8860)  ; FMin(a,b)
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8863, 0
  %8867 = fmul fast float %8864, %8862
  %8868 = fadd fast float %8866, %8867
  %8869 = fadd fast float %8866, %8865
  %8870 = fsub fast float %8864, %8865
  %8871 = fadd fast float %8870, %8866
  %8872 = call float @dx.op.binary.f32(i32 35, float %8868, float %8869)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8872, float %8871)  ; FMin(a,b)
  %8874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8811, float %8812, float %8873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8875 = extractvalue %dx.types.ResRet.f32 %8874, 0
  %8876 = extractvalue %dx.types.ResRet.f32 %8874, 1
  %8877 = extractvalue %dx.types.ResRet.f32 %8874, 2
  %8878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.i32 %8878, 0
  %8880 = extractvalue %dx.types.CBufRet.i32 %8878, 1
  %8881 = uitofp i32 %8879 to float
  %8882 = uitofp i32 %8880 to float
  %8883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8884 = extractvalue %dx.types.CBufRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.CBufRet.f32 %8883, 1
  %8886 = fmul fast float %8881, %8811
  %8887 = fmul fast float %8882, %8812
  %8888 = fadd fast float %8886, -5.000000e-01
  %8889 = fadd fast float %8887, -5.000000e-01
  %8890 = call float @dx.op.unary.f32(i32 22, float %8888)  ; Frc(value)
  %8891 = call float @dx.op.unary.f32(i32 22, float %8889)  ; Frc(value)
  %8892 = fmul fast float %8890, %8890
  %8893 = fmul fast float %8892, %8890
  %8894 = fsub fast float 3.000000e+00, %8890
  %8895 = fmul fast float %8892, %8894
  %8896 = fmul fast float %8890, 3.000000e+00
  %8897 = fmul fast float %8893, 3.000000e+00
  %8898 = fmul fast float %8892, 6.000000e+00
  %8899 = fsub fast float %8897, %8898
  %8900 = fadd fast float %8899, 4.000000e+00
  %8901 = fmul fast float %8900, 0x3FC5555560000000
  %8902 = fmul fast float %8893, -3.000000e+00
  %8903 = fadd fast float %8892, %8890
  %8904 = fmul fast float %8903, 3.000000e+00
  %8905 = fadd fast float %8902, 1.000000e+00
  %8906 = fadd fast float %8905, %8904
  %8907 = fmul fast float %8893, 0x3FC5555560000000
  %8908 = fmul fast float %8891, %8891
  %8909 = fmul fast float %8908, %8891
  %8910 = fsub fast float 3.000000e+00, %8891
  %8911 = fmul fast float %8908, %8910
  %8912 = fmul fast float %8891, 3.000000e+00
  %8913 = fmul fast float %8909, 3.000000e+00
  %8914 = fmul fast float %8908, 6.000000e+00
  %8915 = fsub fast float %8913, %8914
  %8916 = fadd fast float %8915, 4.000000e+00
  %8917 = fmul fast float %8916, 0x3FC5555560000000
  %8918 = fmul fast float %8909, -3.000000e+00
  %8919 = fadd fast float %8908, %8891
  %8920 = fmul fast float %8919, 3.000000e+00
  %8921 = fadd fast float %8918, 1.000000e+00
  %8922 = fadd fast float %8921, %8920
  %8923 = fmul fast float %8909, 0x3FC5555560000000
  %8924 = fadd fast float %8890, 1.000000e+00
  %8925 = fsub fast float 1.000000e+00, %8896
  %8926 = fadd fast float %8925, %8895
  %8927 = fadd fast float %8926, %8900
  %8928 = fmul fast float %8927, 0x3FC5555560000000
  %8929 = fdiv fast float %8901, %8928
  %8930 = fsub fast float %8924, %8929
  %8931 = fsub fast float 1.000000e+00, %8890
  %8932 = fadd fast float %8906, %8893
  %8933 = fmul fast float %8932, 0x3FC5555560000000
  %8934 = fdiv fast float %8907, %8933
  %8935 = fadd fast float %8931, %8934
  %8936 = fadd fast float %8891, 1.000000e+00
  %8937 = fsub fast float 1.000000e+00, %8912
  %8938 = fadd fast float %8937, %8911
  %8939 = fadd fast float %8938, %8916
  %8940 = fmul fast float %8939, 0x3FC5555560000000
  %8941 = fdiv fast float %8917, %8940
  %8942 = fsub fast float %8936, %8941
  %8943 = fsub fast float 1.000000e+00, %8891
  %8944 = fadd fast float %8922, %8909
  %8945 = fmul fast float %8944, 0x3FC5555560000000
  %8946 = fdiv fast float %8923, %8945
  %8947 = fadd fast float %8946, %8943
  %8948 = fmul fast float %8930, %8884
  %8949 = fsub fast float %8811, %8948
  %8950 = fmul fast float %8935, %8884
  %8951 = fadd fast float %8950, %8811
  %8952 = fmul fast float %8947, %8885
  %8953 = fadd fast float %8952, %8812
  %8954 = fmul fast float %8942, %8885
  %8955 = fsub fast float %8812, %8954
  %8956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8949, float %8955, float %8873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8957 = extractvalue %dx.types.ResRet.f32 %8956, 0
  %8958 = extractvalue %dx.types.ResRet.f32 %8956, 1
  %8959 = extractvalue %dx.types.ResRet.f32 %8956, 2
  %8960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8951, float %8955, float %8873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8961 = extractvalue %dx.types.ResRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.ResRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.ResRet.f32 %8960, 2
  %8964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8949, float %8953, float %8873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8965 = extractvalue %dx.types.ResRet.f32 %8964, 0
  %8966 = extractvalue %dx.types.ResRet.f32 %8964, 1
  %8967 = extractvalue %dx.types.ResRet.f32 %8964, 2
  %8968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8951, float %8953, float %8873, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8969 = extractvalue %dx.types.ResRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.ResRet.f32 %8968, 1
  %8971 = extractvalue %dx.types.ResRet.f32 %8968, 2
  %8972 = fsub fast float %8965, %8957
  %8973 = fsub fast float %8966, %8958
  %8974 = fsub fast float %8967, %8959
  %8975 = fmul fast float %8972, %8945
  %8976 = fmul fast float %8973, %8945
  %8977 = fmul fast float %8974, %8945
  %8978 = fadd fast float %8975, %8957
  %8979 = fadd fast float %8976, %8958
  %8980 = fadd fast float %8977, %8959
  %8981 = fsub fast float %8969, %8961
  %8982 = fsub fast float %8970, %8962
  %8983 = fsub fast float %8971, %8963
  %8984 = fmul fast float %8981, %8945
  %8985 = fmul fast float %8982, %8945
  %8986 = fmul fast float %8983, %8945
  %8987 = fsub fast float %8961, %8978
  %8988 = fadd fast float %8987, %8984
  %8989 = fsub fast float %8962, %8979
  %8990 = fadd fast float %8989, %8985
  %8991 = fsub fast float %8963, %8980
  %8992 = fadd fast float %8991, %8986
  %8993 = fmul fast float %8988, %8933
  %8994 = fmul fast float %8990, %8933
  %8995 = fmul fast float %8992, %8933
  %8996 = fadd fast float %8993, %8978
  %8997 = fadd fast float %8994, %8979
  %8998 = fadd fast float %8995, %8980
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 1
  %9001 = fmul fast float %8996, %9000
  %9002 = fmul fast float %8997, %9000
  %9003 = fmul fast float %8998, %9000
  br label %9004

; <label>:9004                                    ; preds = %8836, %8805
  %9005 = phi float [ %8875, %8836 ], [ 1.000000e+00, %8805 ]
  %9006 = phi float [ %8876, %8836 ], [ 1.000000e+00, %8805 ]
  %9007 = phi float [ %8877, %8836 ], [ 1.000000e+00, %8805 ]
  %9008 = phi float [ %9001, %8836 ], [ 0.000000e+00, %8805 ]
  %9009 = phi float [ %9002, %8836 ], [ 0.000000e+00, %8805 ]
  %9010 = phi float [ %9003, %8836 ], [ 0.000000e+00, %8805 ]
  %9011 = fmul fast float %9008, %8778
  %9012 = fmul fast float %9009, %8780
  %9013 = fmul fast float %9010, %8782
  %9014 = call float @dx.op.dot3.f32(i32 55, float %9005, float %9006, float %9007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9015 = call float @dx.op.dot3.f32(i32 55, float %9011, float %9012, float %9013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9016 = select i1 %260, float %9014, float %9005
  %9017 = select i1 %260, float %9014, float %9006
  %9018 = select i1 %260, float 1.000000e+00, float %9007
  %9019 = select i1 %260, float %9015, float %9011
  %9020 = select i1 %260, float 0.000000e+00, float %9012
  %9021 = select i1 %260, float 0.000000e+00, float %9013
  %9022 = fmul fast float %9016, %8795
  %9023 = fmul fast float %9017, %8796
  %9024 = fmul fast float %9018, %8797
  %9025 = fadd fast float %9022, %9019
  %9026 = fadd fast float %9023, %9020
  %9027 = fadd fast float %9021, %9024
  %9028 = fmul fast float %9016, %8770
  %9029 = fmul fast float %9017, %8771
  %9030 = fmul fast float %9018, %8772
  %9031 = fmul fast float %150, %8807
  %9032 = fmul fast float %152, %8808
  %9033 = fsub fast float 1.000000e+00, %9031
  %9034 = fsub fast float 1.000000e+00, %9032
  %9035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9035, 0
  %9037 = extractvalue %dx.types.CBufRet.f32 %9035, 1
  %9038 = extractvalue %dx.types.CBufRet.f32 %9035, 2
  %9039 = fmul fast float %9033, %9036
  %9040 = fmul fast float %9033, %9037
  %9041 = fmul fast float %9033, %9038
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9046 = fmul fast float %9034, %9043
  %9047 = fmul fast float %9034, %9044
  %9048 = fmul fast float %9034, %9045
  %9049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9050 = extractvalue %dx.types.CBufRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.CBufRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.CBufRet.f32 %9049, 2
  %9053 = fadd fast float %9046, %9050
  %9054 = fadd fast float %9053, %9039
  %9055 = fadd fast float %9047, %9051
  %9056 = fadd fast float %9055, %9040
  %9057 = fadd fast float %9048, %9052
  %9058 = fadd fast float %9057, %9041
  %9059 = fmul fast float %9054, %223
  %9060 = fmul fast float %9056, %223
  %9061 = fmul fast float %9058, %223
  br label %9062

; <label>:9062                                    ; preds = %9004, %8769
  %9063 = phi float [ %9059, %9004 ], [ %201, %8769 ]
  %9064 = phi float [ %9060, %9004 ], [ %202, %8769 ]
  %9065 = phi float [ %9061, %9004 ], [ %203, %8769 ]
  %9066 = phi float [ %223, %9004 ], [ %101, %8769 ]
  %9067 = phi float [ %9025, %9004 ], [ %8795, %8769 ]
  %9068 = phi float [ %9026, %9004 ], [ %8796, %8769 ]
  %9069 = phi float [ %9027, %9004 ], [ %8797, %8769 ]
  %9070 = phi float [ %9028, %9004 ], [ %8770, %8769 ]
  %9071 = phi float [ %9029, %9004 ], [ %8771, %8769 ]
  %9072 = phi float [ %9030, %9004 ], [ %8772, %8769 ]
  %9073 = phi float [ %9005, %9004 ], [ 1.000000e+00, %8769 ]
  br i1 %8804, label %10228, label %9074

; <label>:9074                                    ; preds = %9062
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 0
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 1
  %9078 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9079 = extractvalue %dx.types.CBufRet.f32 %9075, 3
  %9080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9081 = extractvalue %dx.types.CBufRet.f32 %9080, 0
  %9082 = extractvalue %dx.types.CBufRet.f32 %9080, 1
  %9083 = extractvalue %dx.types.CBufRet.f32 %9080, 2
  %9084 = extractvalue %dx.types.CBufRet.f32 %9080, 3
  %9085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9086 = extractvalue %dx.types.CBufRet.f32 %9085, 0
  %9087 = extractvalue %dx.types.CBufRet.f32 %9085, 1
  %9088 = extractvalue %dx.types.CBufRet.f32 %9085, 2
  %9089 = extractvalue %dx.types.CBufRet.f32 %9085, 3
  %9090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9091 = extractvalue %dx.types.CBufRet.f32 %9090, 0
  %9092 = extractvalue %dx.types.CBufRet.f32 %9090, 1
  %9093 = extractvalue %dx.types.CBufRet.f32 %9090, 2
  %9094 = extractvalue %dx.types.CBufRet.f32 %9090, 3
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 3
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9102 = fcmp fast olt float %9101, -5.000000e-01
  %9103 = call float @dx.op.dot3.f32(i32 55, float %9063, float %9064, float %9065, float %9063, float %9064, float %9065)  ; Dot3(ax,ay,az,bx,by,bz)
  %9104 = call float @dx.op.unary.f32(i32 25, float %9103)  ; Rsqrt(value)
  %9105 = fmul fast float %9104, %9103
  %9106 = fmul fast float %9104, %9063
  %9107 = fmul fast float %9104, %9064
  %9108 = fmul fast float %9104, %9065
  %9109 = fadd fast float %9105, %9079
  %9110 = call float @dx.op.dot3.f32(i32 55, float %9106, float %9107, float %9108, float %9076, float %9077, float %9078)  ; Dot3(ax,ay,az,bx,by,bz)
  %9111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9112 = extractvalue %dx.types.CBufRet.i32 %9111, 1
  %9113 = and i32 %9112, 1
  %9114 = icmp ne i32 %9113, 0
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9117 = fcmp fast ogt float %9116, 0.000000e+00
  %9118 = and i1 %9114, %9117
  br i1 %9118, label %9119, label %9525, !dx.controlflow.hints !138

; <label>:9119                                    ; preds = %9074
  %9120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9121 = extractvalue %dx.types.CBufRet.f32 %9120, 3
  %9122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.f32 %9122, 2
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 2
  %9126 = fsub fast float %9123, %9125
  %9127 = and i32 %9112, 2
  %9128 = extractvalue %dx.types.CBufRet.i32 %9111, 0
  %9129 = call i32 @dx.op.binary.i32(i32 40, i32 %9128, i32 3)  ; UMin(a,b)
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9124, 0
  %9134 = extractvalue %dx.types.CBufRet.f32 %9124, 1
  %9135 = fsub fast float %9131, %9133
  %9136 = fsub fast float %9132, %9134
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = fcmp fast ogt float %9138, 0.000000e+00
  %9140 = fsub fast float -0.000000e+00, %9135
  %9141 = fsub fast float -0.000000e+00, %9136
  %9142 = call float @dx.op.dot2.f32(i32 54, float %9106, float %9107, float %9106, float %9107)  ; Dot2(ax,ay,bx,by)
  %9143 = call float @dx.op.dot2.f32(i32 54, float %9106, float %9107, float %9140, float %9141)  ; Dot2(ax,ay,bx,by)
  %9144 = fmul fast float %9143, 2.000000e+00
  %9145 = call float @dx.op.dot2.f32(i32 54, float %9140, float %9141, float %9140, float %9141)  ; Dot2(ax,ay,bx,by)
  %9146 = fmul fast float %9138, %9138
  %9147 = fsub fast float %9145, %9146
  %9148 = fmul fast float %9144, %9144
  %9149 = fmul fast float %9142, 4.000000e+00
  %9150 = fmul fast float %9149, %9147
  %9151 = fsub fast float %9148, %9150
  %9152 = fcmp fast ogt float %9151, 0.000000e+00
  br i1 %9152, label %9153, label %9168

; <label>:9153                                    ; preds = %9119
  %9154 = fcmp fast ogt float %9144, 0.000000e+00
  %9155 = call float @dx.op.unary.f32(i32 24, float %9151)  ; Sqrt(value)
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = select i1 %9154, float %9155, float %9156
  %9158 = fadd fast float %9157, %9144
  %9159 = fmul float %9158, -5.000000e-01
  %9160 = fdiv fast float %9159, %9142
  %9161 = call float @dx.op.binary.f32(i32 35, float %9160, float 0.000000e+00)  ; FMax(a,b)
  %9162 = call float @dx.op.binary.f32(i32 36, float %9105, float %9161)  ; FMin(a,b)
  %9163 = fdiv fast float %9147, %9159
  %9164 = call float @dx.op.binary.f32(i32 35, float %9163, float 0.000000e+00)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 36, float %9105, float %9164)  ; FMin(a,b)
  %9166 = call float @dx.op.binary.f32(i32 36, float %9162, float %9165)  ; FMin(a,b)
  %9167 = call float @dx.op.binary.f32(i32 35, float %9162, float %9165)  ; FMax(a,b)
  br label %9168

; <label>:9168                                    ; preds = %9153, %9119
  %9169 = phi float [ %9167, %9153 ], [ -1.000000e+00, %9119 ]
  %9170 = phi float [ %9166, %9153 ], [ -1.000000e+00, %9119 ]
  %9171 = phi i1 [ true, %9153 ], [ false, %9119 ]
  %9172 = and i1 %9139, %9171
  br i1 %9172, label %9173, label %9175

; <label>:9173                                    ; preds = %9168
  %9174 = fcmp fast oeq float %9170, %9169
  br i1 %9174, label %9478, label %9176

; <label>:9175                                    ; preds = %9168
  br i1 %9139, label %9478, label %9176

; <label>:9176                                    ; preds = %9175, %9173
  %9177 = phi float [ %9105, %9175 ], [ %9169, %9173 ]
  %9178 = phi float [ 0.000000e+00, %9175 ], [ %9170, %9173 ]
  %9179 = icmp ne i32 %9127, 0
  %9180 = fmul fast float %9177, %9108
  %9181 = fadd fast float %9180, %9121
  %9182 = fmul fast float %9181, %9177
  %9183 = select i1 %9179, float 0.000000e+00, float %9182
  %9184 = fcmp fast oeq float %9108, 0.000000e+00
  %9185 = fdiv fast float %9126, %9108
  %9186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9185)  ; FMax(a,b)
  %9187 = select i1 %9184, float %9177, float %9186
  %9188 = call float @dx.op.binary.f32(i32 36, float %9177, float %9187)  ; FMin(a,b)
  %9189 = fcmp fast ogt float %9108, 0.000000e+00
  %9190 = fcmp fast olt float %9126, 0.000000e+00
  br i1 %9189, label %9191, label %9248

; <label>:9191                                    ; preds = %9176
  %9192 = icmp eq i32 %9127, 0
  br i1 %9190, label %9193, label %9237

; <label>:9193                                    ; preds = %9191
  %9194 = select i1 %9192, float %9177, float 0.000000e+00
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = call float @dx.op.unary.f32(i32 6, float %9195)  ; FAbs(value)
  %9197 = fmul fast float %9194, %9108
  %9198 = fadd fast float %9197, %9121
  %9199 = fmul fast float %9196, %9198
  %9200 = fsub fast float %9183, %9199
  %9201 = fsub fast float %9177, %9196
  %9202 = select i1 %9192, float %9201, float 0.000000e+00
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 0
  %9205 = extractvalue %dx.types.CBufRet.f32 %9203, 1
  %9206 = extractvalue %dx.types.CBufRet.f32 %9203, 2
  %9207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9207, 0
  %9209 = extractvalue %dx.types.CBufRet.f32 %9207, 1
  %9210 = extractvalue %dx.types.CBufRet.f32 %9207, 2
  %9211 = extractvalue %dx.types.CBufRet.f32 %9207, 3
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 3
  %9214 = call float @dx.op.binary.f32(i32 36, float %9200, float %9213)  ; FMin(a,b)
  %9215 = fmul fast float %9211, %9202
  %9216 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9217 = fsub fast float %9208, %9204
  %9218 = fsub fast float %9209, %9205
  %9219 = fsub fast float %9210, %9206
  %9220 = fmul fast float %9216, %9217
  %9221 = fmul fast float %9216, %9218
  %9222 = fmul fast float %9216, %9219
  %9223 = fadd fast float %9220, %9204
  %9224 = fadd fast float %9221, %9205
  %9225 = fadd fast float %9222, %9206
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = fadd fast float %9228, %9227
  %9230 = call float @dx.op.unary.f32(i32 7, float %9229)  ; Saturate(value)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9232 = extractvalue %dx.types.CBufRet.f32 %9226, 3
  %9233 = fadd fast float %9232, %9231
  %9234 = call float @dx.op.unary.f32(i32 7, float %9233)  ; Saturate(value)
  %9235 = fmul fast float %9230, %9214
  %9236 = fmul fast float %9235, %9234
  br label %9478

; <label>:9237                                    ; preds = %9191
  br i1 %9192, label %9238, label %9259

; <label>:9238                                    ; preds = %9237
  %9239 = call float @dx.op.binary.f32(i32 36, float %9188, float %9178)  ; FMin(a,b)
  %9240 = fsub fast float %9188, %9239
  %9241 = fsub fast float %9240, %9177
  %9242 = call float @dx.op.unary.f32(i32 6, float %9241)  ; FAbs(value)
  %9243 = fadd fast float %9240, %9177
  %9244 = fmul fast float %9243, %9108
  %9245 = fadd fast float %9244, %9121
  %9246 = fmul fast float %9245, %9242
  %9247 = fsub fast float %9183, %9246
  br label %9259

; <label>:9248                                    ; preds = %9176
  br i1 %9190, label %9249, label %9259

; <label>:9249                                    ; preds = %9248
  %9250 = call float @dx.op.binary.f32(i32 35, float %9178, float %9188)  ; FMax(a,b)
  %9251 = icmp eq i32 %9127, 0
  %9252 = select i1 %9251, float %9188, float 0.000000e+00
  %9253 = fsub fast float -0.000000e+00, %9252
  %9254 = call float @dx.op.unary.f32(i32 6, float %9253)  ; FAbs(value)
  %9255 = fmul fast float %9252, %9108
  %9256 = fadd fast float %9255, %9121
  %9257 = fmul fast float %9254, %9256
  %9258 = fsub fast float %9183, %9257
  br label %9259

; <label>:9259                                    ; preds = %9249, %9248, %9238, %9237
  %9260 = phi float [ %9178, %9237 ], [ %9178, %9238 ], [ %9250, %9249 ], [ %9178, %9248 ]
  %9261 = phi float [ 0.000000e+00, %9237 ], [ %9242, %9238 ], [ %9254, %9249 ], [ 0.000000e+00, %9248 ]
  %9262 = phi float [ %9183, %9237 ], [ %9247, %9238 ], [ %9258, %9249 ], [ %9183, %9248 ]
  %9263 = phi float [ %9188, %9237 ], [ %9188, %9238 ], [ %9177, %9249 ], [ %9177, %9248 ]
  %9264 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %9264, align 4, !tbaa !124, !noalias !139
  %9265 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %9265, align 4, !tbaa !124, !noalias !139
  %9266 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %9266, align 4, !tbaa !124, !noalias !139
  %9267 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %9267, align 4, !tbaa !124, !noalias !139
  %9268 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %9268, align 4, !tbaa !124, !noalias !139
  %9269 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %9269, align 4, !tbaa !124, !noalias !139
  %9270 = icmp sgt i32 %9129, 0
  br i1 %9270, label %9271, label %9332

; <label>:9271                                    ; preds = %9259
  br label %9272

; <label>:9272                                    ; preds = %9321, %9271
  %9273 = phi i32 [ %9322, %9321 ], [ 0, %9271 ]
  %9274 = phi i32 [ %9323, %9321 ], [ 0, %9271 ]
  %9275 = add nuw i32 %9274, 171
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9275)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.CBufRet.f32 %9276, 1
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 0
  %9281 = extractvalue %dx.types.CBufRet.f32 %9279, 1
  %9282 = fsub fast float %9277, %9280
  %9283 = fsub fast float %9278, %9281
  %9284 = extractvalue %dx.types.CBufRet.f32 %9276, 2
  %9285 = fsub fast float -0.000000e+00, %9282
  %9286 = fsub fast float -0.000000e+00, %9283
  %9287 = call float @dx.op.dot2.f32(i32 54, float %9106, float %9107, float %9285, float %9286)  ; Dot2(ax,ay,bx,by)
  %9288 = fmul fast float %9287, 2.000000e+00
  %9289 = call float @dx.op.dot2.f32(i32 54, float %9285, float %9286, float %9285, float %9286)  ; Dot2(ax,ay,bx,by)
  %9290 = fmul fast float %9284, %9284
  %9291 = fsub fast float %9289, %9290
  %9292 = fmul fast float %9288, %9288
  %9293 = fmul fast float %9149, %9291
  %9294 = fsub fast float %9292, %9293
  %9295 = fcmp fast ogt float %9294, 0.000000e+00
  br i1 %9295, label %9296, label %9311

; <label>:9296                                    ; preds = %9272
  %9297 = fcmp fast ogt float %9288, 0.000000e+00
  %9298 = call float @dx.op.unary.f32(i32 24, float %9294)  ; Sqrt(value)
  %9299 = fsub fast float -0.000000e+00, %9298
  %9300 = select i1 %9297, float %9298, float %9299
  %9301 = fadd fast float %9300, %9288
  %9302 = fmul float %9301, -5.000000e-01
  %9303 = fdiv fast float %9302, %9142
  %9304 = call float @dx.op.binary.f32(i32 35, float %9303, float 0.000000e+00)  ; FMax(a,b)
  %9305 = call float @dx.op.binary.f32(i32 36, float %9177, float %9304)  ; FMin(a,b)
  %9306 = fdiv fast float %9291, %9302
  %9307 = call float @dx.op.binary.f32(i32 35, float %9306, float 0.000000e+00)  ; FMax(a,b)
  %9308 = call float @dx.op.binary.f32(i32 36, float %9177, float %9307)  ; FMin(a,b)
  %9309 = call float @dx.op.binary.f32(i32 36, float %9305, float %9308)  ; FMin(a,b)
  %9310 = call float @dx.op.binary.f32(i32 35, float %9305, float %9308)  ; FMax(a,b)
  br label %9311

; <label>:9311                                    ; preds = %9296, %9272
  %9312 = phi float [ %9310, %9296 ], [ -1.000000e+00, %9272 ]
  %9313 = phi float [ %9309, %9296 ], [ -1.000000e+00, %9272 ]
  %9314 = phi i1 [ true, %9296 ], [ false, %9272 ]
  br i1 %9314, label %9315, label %9321

; <label>:9315                                    ; preds = %9311
  %9316 = call float @dx.op.binary.f32(i32 35, float %9260, float %9313)  ; FMax(a,b)
  %9317 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9274
  store float %9316, float* %9317, align 4, !tbaa !124, !noalias !139
  %9318 = call float @dx.op.binary.f32(i32 35, float %9260, float %9312)  ; FMax(a,b)
  %9319 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9274
  store float %9318, float* %9319, align 4, !tbaa !124, !noalias !139
  %9320 = add nsw i32 %9273, 1
  br label %9321

; <label>:9321                                    ; preds = %9315, %9311
  %9322 = phi i32 [ %9320, %9315 ], [ %9273, %9311 ]
  %9323 = add nuw nsw i32 %9274, 1
  %9324 = icmp eq i32 %9323, %9129
  br i1 %9324, label %9325, label %9272

; <label>:9325                                    ; preds = %9321
  %9326 = load float, float* %9266, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %9327 = load float, float* %9265, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  %9328 = load float, float* %9264, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  %9329 = load float, float* %9269, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %9330 = load float, float* %9268, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  %9331 = load float, float* %9267, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  br label %9332

; <label>:9332                                    ; preds = %9325, %9259
  %9333 = phi float [ -1.000000e+00, %9259 ], [ %9331, %9325 ]
  %9334 = phi float [ -1.000000e+00, %9259 ], [ %9330, %9325 ]
  %9335 = phi float [ -1.000000e+00, %9259 ], [ %9329, %9325 ]
  %9336 = phi float [ -1.000000e+00, %9259 ], [ %9328, %9325 ]
  %9337 = phi float [ -1.000000e+00, %9259 ], [ %9327, %9325 ]
  %9338 = phi float [ -1.000000e+00, %9259 ], [ %9326, %9325 ]
  %9339 = phi i32 [ 0, %9259 ], [ %9322, %9325 ]
  %9340 = call float @dx.op.binary.f32(i32 36, float %9337, float %9338)  ; FMin(a,b)
  %9341 = call float @dx.op.binary.f32(i32 36, float %9336, float %9340)  ; FMin(a,b)
  %9342 = call float @dx.op.binary.f32(i32 35, float %9336, float %9337)  ; FMax(a,b)
  %9343 = call float @dx.op.binary.f32(i32 36, float %9342, float %9338)  ; FMin(a,b)
  %9344 = call float @dx.op.binary.f32(i32 36, float %9336, float %9337)  ; FMin(a,b)
  %9345 = call float @dx.op.binary.f32(i32 35, float %9344, float %9343)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 35, float %9337, float %9338)  ; FMax(a,b)
  %9347 = call float @dx.op.binary.f32(i32 35, float %9336, float %9346)  ; FMax(a,b)
  store float %9341, float* %9264, align 4, !tbaa !124, !alias.scope !163, !noalias !164
  store float %9345, float* %9265, align 4, !tbaa !124, !alias.scope !161, !noalias !162
  store float %9347, float* %9266, align 4, !tbaa !124, !alias.scope !155, !noalias !158
  %9348 = call float @dx.op.binary.f32(i32 36, float %9334, float %9335)  ; FMin(a,b)
  %9349 = call float @dx.op.binary.f32(i32 36, float %9333, float %9348)  ; FMin(a,b)
  %9350 = call float @dx.op.binary.f32(i32 35, float %9333, float %9334)  ; FMax(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9350, float %9335)  ; FMin(a,b)
  %9352 = call float @dx.op.binary.f32(i32 36, float %9333, float %9334)  ; FMin(a,b)
  %9353 = call float @dx.op.binary.f32(i32 35, float %9352, float %9351)  ; FMax(a,b)
  %9354 = call float @dx.op.binary.f32(i32 35, float %9334, float %9335)  ; FMax(a,b)
  %9355 = call float @dx.op.binary.f32(i32 35, float %9333, float %9354)  ; FMax(a,b)
  store float %9349, float* %9267, align 4, !tbaa !124, !alias.scope !173, !noalias !174
  store float %9353, float* %9268, align 4, !tbaa !124, !alias.scope !171, !noalias !172
  store float %9355, float* %9269, align 4, !tbaa !124, !alias.scope !165, !noalias !168
  %9356 = sub nsw i32 3, %9339
  %9357 = icmp sgt i32 %9356, 2
  br i1 %9357, label %9358, label %9396

; <label>:9358                                    ; preds = %9332
  %9359 = icmp eq i32 %9127, 0
  %9360 = fsub fast float %9177, %9261
  %9361 = select i1 %9359, float %9360, float %9261
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9367 = extractvalue %dx.types.CBufRet.f32 %9366, 0
  %9368 = extractvalue %dx.types.CBufRet.f32 %9366, 1
  %9369 = extractvalue %dx.types.CBufRet.f32 %9366, 2
  %9370 = extractvalue %dx.types.CBufRet.f32 %9366, 3
  %9371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.f32 %9371, 3
  %9373 = call float @dx.op.binary.f32(i32 36, float %9262, float %9372)  ; FMin(a,b)
  %9374 = fmul fast float %9370, %9361
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fsub fast float %9367, %9363
  %9377 = fsub fast float %9368, %9364
  %9378 = fsub fast float %9369, %9365
  %9379 = fmul fast float %9375, %9376
  %9380 = fmul fast float %9375, %9377
  %9381 = fmul fast float %9375, %9378
  %9382 = fadd fast float %9379, %9363
  %9383 = fadd fast float %9380, %9364
  %9384 = fadd fast float %9381, %9365
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 0
  %9387 = extractvalue %dx.types.CBufRet.f32 %9385, 1
  %9388 = fadd fast float %9387, %9386
  %9389 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9385, 2
  %9391 = extractvalue %dx.types.CBufRet.f32 %9385, 3
  %9392 = fadd fast float %9391, %9390
  %9393 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9394 = fmul fast float %9389, %9373
  %9395 = fmul fast float %9394, %9393
  br label %9478

; <label>:9396                                    ; preds = %9332
  %9397 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9356
  %9398 = load float, float* %9397, align 4, !tbaa !124, !noalias !139
  %9399 = fcmp fast olt float %9398, %9263
  %9400 = icmp sgt i32 %9339, 0
  %9401 = and i1 %9400, %9399
  br i1 %9401, label %9402, label %9439

; <label>:9402                                    ; preds = %9396
  br label %9403

; <label>:9403                                    ; preds = %9432, %9402
  %9404 = phi float [ %9433, %9432 ], [ %9261, %9402 ]
  %9405 = phi float [ %9434, %9432 ], [ %9262, %9402 ]
  %9406 = phi float [ %9414, %9432 ], [ %9398, %9402 ]
  %9407 = phi i32 [ %9411, %9432 ], [ %9356, %9402 ]
  %9408 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9407
  %9409 = load float, float* %9408, align 4, !tbaa !124, !noalias !139
  %9410 = icmp slt i32 %9407, 2
  %9411 = add nsw i32 %9407, 1
  %9412 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9411
  %9413 = load float, float* %9412, align 4, !tbaa !124, !noalias !139
  %9414 = select i1 %9410, float %9413, float %9177
  %9415 = call float @dx.op.binary.f32(i32 36, float %9414, float %9409)  ; FMin(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9263, float %9415)  ; FMin(a,b)
  %9417 = icmp eq i32 %9127, 0
  %9418 = fadd fast float %9416, %9406
  %9419 = fmul fast float %9418, %9108
  %9420 = fadd fast float %9419, %9121
  br i1 %9417, label %9426, label %9421

; <label>:9421                                    ; preds = %9403
  %9422 = fsub fast float %9416, %9406
  %9423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9422)  ; FMax(a,b)
  %9424 = fmul fast float %9423, %9420
  %9425 = fadd fast float %9424, %9405
  br label %9432

; <label>:9426                                    ; preds = %9403
  %9427 = fsub fast float %9406, %9416
  %9428 = call float @dx.op.unary.f32(i32 6, float %9427)  ; FAbs(value)
  %9429 = fadd fast float %9428, %9404
  %9430 = fmul fast float %9428, %9420
  %9431 = fsub fast float %9405, %9430
  br label %9432

; <label>:9432                                    ; preds = %9426, %9421
  %9433 = phi float [ %9423, %9421 ], [ %9429, %9426 ]
  %9434 = phi float [ %9425, %9421 ], [ %9431, %9426 ]
  %9435 = fcmp fast olt float %9414, %9263
  %9436 = icmp slt i32 %9411, 3
  %9437 = and i1 %9436, %9435
  br i1 %9437, label %9403, label %9438

; <label>:9438                                    ; preds = %9432
  br label %9439

; <label>:9439                                    ; preds = %9438, %9396
  %9440 = phi float [ %9261, %9396 ], [ %9433, %9438 ]
  %9441 = phi float [ %9262, %9396 ], [ %9434, %9438 ]
  %9442 = fsub fast float %9177, %9440
  %9443 = select i1 %9179, float %9440, float %9442
  %9444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9445 = extractvalue %dx.types.CBufRet.f32 %9444, 0
  %9446 = extractvalue %dx.types.CBufRet.f32 %9444, 1
  %9447 = extractvalue %dx.types.CBufRet.f32 %9444, 2
  %9448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9449 = extractvalue %dx.types.CBufRet.f32 %9448, 0
  %9450 = extractvalue %dx.types.CBufRet.f32 %9448, 1
  %9451 = extractvalue %dx.types.CBufRet.f32 %9448, 2
  %9452 = extractvalue %dx.types.CBufRet.f32 %9448, 3
  %9453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9454 = extractvalue %dx.types.CBufRet.f32 %9453, 3
  %9455 = call float @dx.op.binary.f32(i32 36, float %9441, float %9454)  ; FMin(a,b)
  %9456 = fmul fast float %9452, %9443
  %9457 = call float @dx.op.unary.f32(i32 7, float %9456)  ; Saturate(value)
  %9458 = fsub fast float %9449, %9445
  %9459 = fsub fast float %9450, %9446
  %9460 = fsub fast float %9451, %9447
  %9461 = fmul fast float %9457, %9458
  %9462 = fmul fast float %9457, %9459
  %9463 = fmul fast float %9457, %9460
  %9464 = fadd fast float %9461, %9445
  %9465 = fadd fast float %9462, %9446
  %9466 = fadd fast float %9463, %9447
  %9467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9468 = extractvalue %dx.types.CBufRet.f32 %9467, 0
  %9469 = extractvalue %dx.types.CBufRet.f32 %9467, 1
  %9470 = fadd fast float %9469, %9468
  %9471 = call float @dx.op.unary.f32(i32 7, float %9470)  ; Saturate(value)
  %9472 = extractvalue %dx.types.CBufRet.f32 %9467, 2
  %9473 = extractvalue %dx.types.CBufRet.f32 %9467, 3
  %9474 = fadd fast float %9473, %9472
  %9475 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9476 = fmul fast float %9471, %9455
  %9477 = fmul fast float %9476, %9475
  br label %9478

; <label>:9478                                    ; preds = %9439, %9358, %9193, %9175, %9173
  %9479 = phi float [ %9202, %9193 ], [ %9361, %9358 ], [ %9443, %9439 ], [ 0.000000e+00, %9173 ], [ 0.000000e+00, %9175 ]
  %9480 = phi float [ %9236, %9193 ], [ %9395, %9358 ], [ %9477, %9439 ], [ 0.000000e+00, %9173 ], [ 0.000000e+00, %9175 ]
  %9481 = phi float [ %9223, %9193 ], [ %9382, %9358 ], [ %9464, %9439 ], [ 0.000000e+00, %9173 ], [ 0.000000e+00, %9175 ]
  %9482 = phi float [ %9224, %9193 ], [ %9383, %9358 ], [ %9465, %9439 ], [ 0.000000e+00, %9173 ], [ 0.000000e+00, %9175 ]
  %9483 = phi float [ %9225, %9193 ], [ %9384, %9358 ], [ %9466, %9439 ], [ 0.000000e+00, %9173 ], [ 0.000000e+00, %9175 ]
  %9484 = fmul fast float %9116, %9480
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 2
  %9487 = fsub fast float %9123, %9486
  %9488 = fcmp fast olt float %9484, -2.000000e+01
  %9489 = call float @dx.op.unary.f32(i32 21, float %9484)  ; Exp(value)
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 3
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9495 = fmul fast float %9492, %9487
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9497 = fsub fast float 1.000000e+00, %9496
  %9498 = fmul fast float %9108, 5.000000e-01
  %9499 = fadd fast float %9498, 5.000000e-01
  %9500 = call float @dx.op.unary.f32(i32 7, float %9499)  ; Saturate(value)
  %9501 = fsub fast float 1.000000e+00, %9500
  %9502 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9497)  ; FMax(a,b)
  %9503 = fdiv fast float %9501, %9502
  %9504 = fsub fast float %9487, %9065
  %9505 = call float @dx.op.unary.f32(i32 6, float %9504)  ; FAbs(value)
  %9506 = fmul fast float %9505, %9491
  %9507 = call float @dx.op.unary.f32(i32 7, float %9503)  ; Saturate(value)
  %9508 = fsub fast float 1.000000e+00, %9506
  %9509 = fmul fast float %9508, %9507
  %9510 = fadd fast float %9509, %9506
  %9511 = fmul fast float %9494, %9487
  %9512 = call float @dx.op.unary.f32(i32 7, float %9511)  ; Saturate(value)
  %9513 = fsub fast float 1.000000e+00, %9510
  %9514 = fmul fast float %9513, %9512
  %9515 = fadd fast float %9514, %9510
  %9516 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9517 = fadd fast float %9489, -1.000000e+00
  %9518 = select i1 %9488, float -1.000000e+00, float %9517
  %9519 = fmul fast float %9516, %9518
  %9520 = fadd fast float %9519, 1.000000e+00
  %9521 = fsub fast float -0.000000e+00, %9519
  %9522 = fmul fast float %9481, %9521
  %9523 = fmul fast float %9482, %9521
  %9524 = fmul fast float %9483, %9521
  br label %9525

; <label>:9525                                    ; preds = %9478, %9074
  %9526 = phi float [ %9479, %9478 ], [ 0.000000e+00, %9074 ]
  %9527 = phi float [ %9520, %9478 ], [ 1.000000e+00, %9074 ]
  %9528 = phi float [ %9522, %9478 ], [ 0.000000e+00, %9074 ]
  %9529 = phi float [ %9523, %9478 ], [ 0.000000e+00, %9074 ]
  %9530 = phi float [ %9524, %9478 ], [ 0.000000e+00, %9074 ]
  %9531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9532 = extractvalue %dx.types.CBufRet.f32 %9531, 1
  %9533 = fsub fast float 1.000000e+00, %9527
  %9534 = fmul fast float %9533, %9109
  %9535 = fmul fast float %9534, %9532
  %9536 = fsub fast float %9109, %9535
  br i1 %9102, label %9537, label %9566, !dx.controlflow.hints !175

; <label>:9537                                    ; preds = %9525
  %9538 = fmul fast float %9110, %9099
  %9539 = fadd fast float %9538, %9100
  %9540 = call float @dx.op.unary.f32(i32 7, float %9539)  ; Saturate(value)
  %9541 = fmul fast float %9081, %9536
  %9542 = fsub fast float -0.000000e+00, %9541
  %9543 = fmul fast float %9082, %9536
  %9544 = fsub fast float -0.000000e+00, %9543
  %9545 = call float @dx.op.unary.f32(i32 21, float %9542)  ; Exp(value)
  %9546 = call float @dx.op.unary.f32(i32 21, float %9544)  ; Exp(value)
  %9547 = call float @dx.op.binary.f32(i32 35, float %9089, float %9545)  ; FMax(a,b)
  %9548 = call float @dx.op.binary.f32(i32 35, float %9089, float %9546)  ; FMax(a,b)
  %9549 = fsub fast float %9548, %9547
  %9550 = fmul fast float %9549, %9540
  %9551 = fadd fast float %9550, %9547
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fsub fast float %9086, %9091
  %9554 = fsub fast float %9087, %9092
  %9555 = fsub fast float %9088, %9093
  %9556 = fmul fast float %9540, %9553
  %9557 = fmul fast float %9540, %9554
  %9558 = fmul fast float %9540, %9555
  %9559 = fadd fast float %9556, %9091
  %9560 = fadd fast float %9557, %9092
  %9561 = fadd fast float %9558, %9093
  %9562 = fsub fast float 1.000000e+00, %9552
  %9563 = fmul fast float %9562, %9559
  %9564 = fmul fast float %9562, %9560
  %9565 = fmul fast float %9562, %9561
  br label %9625

; <label>:9566                                    ; preds = %9525
  %9567 = fmul fast float %9536, %9098
  %9568 = call float @dx.op.unary.f32(i32 7, float %9567)  ; Saturate(value)
  %9569 = fsub fast float 2.000000e+00, %9568
  %9570 = fmul fast float %9568, 9.921875e-01
  %9571 = fmul fast float %9570, %9569
  %9572 = fadd fast float %9571, 3.906250e-03
  %9573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9572, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9574 = extractvalue %dx.types.ResRet.f32 %9573, 0
  %9575 = fsub fast float %9568, %9574
  %9576 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9575)  ; FMax(a,b)
  %9577 = fmul fast float %9084, %9065
  %9578 = call float @dx.op.unary.f32(i32 6, float %9577)  ; FAbs(value)
  %9579 = fcmp fast ogt float %9578, 0x3EB0C6F7A0000000
  br i1 %9579, label %9580, label %9586, !dx.controlflow.hints !176

; <label>:9580                                    ; preds = %9566
  %9581 = fmul fast float %9577, 0xBFF7154760000000
  %9582 = call float @dx.op.unary.f32(i32 21, float %9581)  ; Exp(value)
  %9583 = fsub fast float 1.000000e+00, %9582
  %9584 = fdiv fast float %9583, %9577
  %9585 = fmul fast float %9584, %9094
  br label %9586

; <label>:9586                                    ; preds = %9580, %9566
  %9587 = phi float [ %9585, %9580 ], [ %9094, %9566 ]
  %9588 = fadd fast float %9587, %9096
  %9589 = fmul fast float %9588, %9576
  %9590 = fmul fast float %9081, %9589
  %9591 = fsub fast float -0.000000e+00, %9590
  %9592 = fmul fast float %9082, %9589
  %9593 = fsub fast float -0.000000e+00, %9592
  %9594 = fmul fast float %9083, %9589
  %9595 = fsub fast float -0.000000e+00, %9594
  %9596 = call float @dx.op.unary.f32(i32 21, float %9591)  ; Exp(value)
  %9597 = call float @dx.op.unary.f32(i32 21, float %9593)  ; Exp(value)
  %9598 = call float @dx.op.unary.f32(i32 21, float %9595)  ; Exp(value)
  %9599 = fmul fast float %9110, %9110
  %9600 = fadd fast float %9599, 1.000000e+00
  %9601 = fmul fast float %9600, 0x3FAE8EC8A0000000
  %9602 = fmul fast float %9601, %9091
  %9603 = fmul fast float %9601, %9092
  %9604 = fmul fast float %9601, %9093
  %9605 = fmul fast float %9110, %9089
  %9606 = fsub fast float 1.000000e+00, %9605
  %9607 = fmul fast float %9089, %9089
  %9608 = fsub fast float 1.000000e+00, %9607
  %9609 = fmul fast float %9608, 0x3FB45F3060000000
  %9610 = fmul fast float %9606, %9606
  %9611 = fdiv fast float 1.000000e+00, %9610
  %9612 = fmul fast float %9609, %9611
  %9613 = fmul fast float %9612, %9086
  %9614 = fmul fast float %9612, %9087
  %9615 = fmul fast float %9612, %9088
  %9616 = fadd fast float %9613, %9602
  %9617 = fadd fast float %9614, %9603
  %9618 = fadd fast float %9615, %9604
  %9619 = fsub fast float 1.000000e+00, %9596
  %9620 = fsub fast float 1.000000e+00, %9597
  %9621 = fsub fast float 1.000000e+00, %9598
  %9622 = fmul fast float %9616, %9619
  %9623 = fmul fast float %9617, %9620
  %9624 = fmul fast float %9618, %9621
  br label %9625

; <label>:9625                                    ; preds = %9586, %9537
  %9626 = phi float [ %9563, %9537 ], [ %9622, %9586 ]
  %9627 = phi float [ %9564, %9537 ], [ %9623, %9586 ]
  %9628 = phi float [ %9565, %9537 ], [ %9624, %9586 ]
  %9629 = phi float [ %9552, %9537 ], [ %9596, %9586 ]
  %9630 = phi float [ %9552, %9537 ], [ %9597, %9586 ]
  %9631 = phi float [ %9552, %9537 ], [ %9598, %9586 ]
  br i1 %9118, label %9632, label %9830, !dx.controlflow.hints !177

; <label>:9632                                    ; preds = %9625
  %9633 = extractvalue %dx.types.CBufRet.f32 %9531, 0
  %9634 = fmul fast float %9633, %9533
  %9635 = fsub fast float %9528, %9626
  %9636 = fsub fast float %9529, %9627
  %9637 = fsub fast float %9530, %9628
  %9638 = fmul fast float %9634, %9635
  %9639 = fmul fast float %9634, %9636
  %9640 = fmul fast float %9634, %9637
  %9641 = fadd fast float %9638, %9626
  %9642 = fadd fast float %9639, %9627
  %9643 = fadd fast float %9640, %9628
  %9644 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9629)  ; FMax(a,b)
  %9645 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9630)  ; FMax(a,b)
  %9646 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9631)  ; FMax(a,b)
  %9647 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9527)  ; FMax(a,b)
  %9648 = call float @dx.op.binary.f32(i32 35, float %9526, float %9536)  ; FMax(a,b)
  %9649 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9648)  ; FMax(a,b)
  %9650 = fdiv fast float %9526, %9649
  %9651 = call float @dx.op.unary.f32(i32 7, float %9650)  ; Saturate(value)
  %9652 = fdiv fast float %9536, %9649
  %9653 = call float @dx.op.unary.f32(i32 7, float %9652)  ; Saturate(value)
  %9654 = fcmp fast une float %9647, 1.000000e+00
  br i1 %9654, label %9655, label %9668, !dx.controlflow.hints !178

; <label>:9655                                    ; preds = %9632
  %9656 = call float @dx.op.unary.f32(i32 23, float %9647)  ; Log(value)
  %9657 = fmul fast float %9656, 0x3FE62E4300000000
  %9658 = fmul fast float %9528, %9657
  %9659 = fsub fast float -0.000000e+00, %9658
  %9660 = fmul fast float %9529, %9657
  %9661 = fsub fast float -0.000000e+00, %9660
  %9662 = fmul fast float %9530, %9657
  %9663 = fsub fast float -0.000000e+00, %9662
  %9664 = fsub fast float 1.000000e+00, %9647
  %9665 = fdiv fast float %9659, %9664
  %9666 = fdiv fast float %9661, %9664
  %9667 = fdiv fast float %9663, %9664
  br label %9668

; <label>:9668                                    ; preds = %9655, %9632
  %9669 = phi float [ %9665, %9655 ], [ %9528, %9632 ]
  %9670 = phi float [ %9666, %9655 ], [ %9529, %9632 ]
  %9671 = phi float [ %9667, %9655 ], [ %9530, %9632 ]
  %9672 = phi float [ %9657, %9655 ], [ 0.000000e+00, %9632 ]
  %9673 = fcmp fast une float %9644, 1.000000e+00
  br i1 %9673, label %9674, label %9681, !dx.controlflow.hints !179

; <label>:9674                                    ; preds = %9668
  %9675 = call float @dx.op.unary.f32(i32 23, float %9644)  ; Log(value)
  %9676 = fmul fast float %9675, 0x3FE62E4300000000
  %9677 = fmul fast float %9641, %9676
  %9678 = fsub fast float -0.000000e+00, %9677
  %9679 = fsub fast float 1.000000e+00, %9644
  %9680 = fdiv fast float %9678, %9679
  br label %9681

; <label>:9681                                    ; preds = %9674, %9668
  %9682 = phi float [ %9680, %9674 ], [ %9641, %9668 ]
  %9683 = phi float [ %9676, %9674 ], [ 0.000000e+00, %9668 ]
  %9684 = fcmp fast une float %9645, 1.000000e+00
  br i1 %9684, label %9685, label %9692, !dx.controlflow.hints !179

; <label>:9685                                    ; preds = %9681
  %9686 = call float @dx.op.unary.f32(i32 23, float %9645)  ; Log(value)
  %9687 = fmul fast float %9686, 0x3FE62E4300000000
  %9688 = fmul fast float %9642, %9687
  %9689 = fsub fast float -0.000000e+00, %9688
  %9690 = fsub fast float 1.000000e+00, %9645
  %9691 = fdiv fast float %9689, %9690
  br label %9692

; <label>:9692                                    ; preds = %9685, %9681
  %9693 = phi float [ %9691, %9685 ], [ %9642, %9681 ]
  %9694 = phi float [ %9687, %9685 ], [ 0.000000e+00, %9681 ]
  %9695 = fcmp fast une float %9646, 1.000000e+00
  br i1 %9695, label %9696, label %9703, !dx.controlflow.hints !179

; <label>:9696                                    ; preds = %9692
  %9697 = call float @dx.op.unary.f32(i32 23, float %9646)  ; Log(value)
  %9698 = fmul fast float %9697, 0x3FE62E4300000000
  %9699 = fmul fast float %9643, %9698
  %9700 = fsub fast float -0.000000e+00, %9699
  %9701 = fsub fast float 1.000000e+00, %9646
  %9702 = fdiv fast float %9700, %9701
  br label %9703

; <label>:9703                                    ; preds = %9696, %9692
  %9704 = phi float [ %9702, %9696 ], [ %9643, %9692 ]
  %9705 = phi float [ %9698, %9696 ], [ 0.000000e+00, %9692 ]
  %9706 = fmul fast float %9669, %9653
  %9707 = fmul fast float %9670, %9653
  %9708 = fmul fast float %9671, %9653
  %9709 = fmul fast float %9672, %9653
  %9710 = fmul fast float %9682, %9651
  %9711 = fmul fast float %9693, %9651
  %9712 = fmul fast float %9704, %9651
  %9713 = fmul fast float %9683, %9651
  %9714 = fmul fast float %9694, %9651
  %9715 = fmul fast float %9705, %9651
  %9716 = fadd fast float %9710, %9706
  %9717 = fadd fast float %9711, %9707
  %9718 = fadd fast float %9712, %9708
  %9719 = fadd fast float %9713, %9709
  %9720 = fadd fast float %9714, %9709
  %9721 = fadd fast float %9715, %9709
  %9722 = fcmp fast une float %9719, 0.000000e+00
  br i1 %9722, label %9723, label %9730, !dx.controlflow.hints !180

; <label>:9723                                    ; preds = %9703
  %9724 = fmul fast float %9719, 0x3FF7154760000000
  %9725 = call float @dx.op.unary.f32(i32 21, float %9724)  ; Exp(value)
  %9726 = fsub fast float 1.000000e+00, %9725
  %9727 = fmul fast float %9716, %9726
  %9728 = fsub fast float -0.000000e+00, %9727
  %9729 = fdiv fast float %9728, %9719
  br label %9730

; <label>:9730                                    ; preds = %9723, %9703
  %9731 = phi float [ %9725, %9723 ], [ 1.000000e+00, %9703 ]
  %9732 = phi float [ %9729, %9723 ], [ %9716, %9703 ]
  %9733 = fcmp fast une float %9720, 0.000000e+00
  br i1 %9733, label %9734, label %9741, !dx.controlflow.hints !180

; <label>:9734                                    ; preds = %9730
  %9735 = fmul fast float %9720, 0x3FF7154760000000
  %9736 = call float @dx.op.unary.f32(i32 21, float %9735)  ; Exp(value)
  %9737 = fsub fast float 1.000000e+00, %9736
  %9738 = fmul fast float %9717, %9737
  %9739 = fsub fast float -0.000000e+00, %9738
  %9740 = fdiv fast float %9739, %9720
  br label %9741

; <label>:9741                                    ; preds = %9734, %9730
  %9742 = phi float [ %9736, %9734 ], [ 1.000000e+00, %9730 ]
  %9743 = phi float [ %9740, %9734 ], [ %9717, %9730 ]
  %9744 = fcmp fast une float %9721, 0.000000e+00
  br i1 %9744, label %9745, label %9752, !dx.controlflow.hints !180

; <label>:9745                                    ; preds = %9741
  %9746 = fmul fast float %9721, 0x3FF7154760000000
  %9747 = call float @dx.op.unary.f32(i32 21, float %9746)  ; Exp(value)
  %9748 = fsub fast float 1.000000e+00, %9747
  %9749 = fmul fast float %9718, %9748
  %9750 = fsub fast float -0.000000e+00, %9749
  %9751 = fdiv fast float %9750, %9721
  br label %9752

; <label>:9752                                    ; preds = %9745, %9741
  %9753 = phi float [ %9747, %9745 ], [ 1.000000e+00, %9741 ]
  %9754 = phi float [ %9751, %9745 ], [ %9718, %9741 ]
  %9755 = fcmp fast ogt float %9651, %9653
  br i1 %9755, label %9756, label %9776

; <label>:9756                                    ; preds = %9752
  %9757 = fsub fast float 1.000000e+00, %9653
  %9758 = fmul fast float %9669, %9757
  %9759 = fmul fast float %9670, %9757
  %9760 = fmul fast float %9671, %9757
  %9761 = fmul fast float %9672, %9757
  %9762 = fcmp fast une float %9761, 0.000000e+00
  br i1 %9762, label %9763, label %9814, !dx.controlflow.hints !181

; <label>:9763                                    ; preds = %9756
  %9764 = fmul fast float %9761, 0x3FF7154760000000
  %9765 = call float @dx.op.unary.f32(i32 21, float %9764)  ; Exp(value)
  %9766 = fsub fast float 1.000000e+00, %9765
  %9767 = fmul fast float %9758, %9766
  %9768 = fsub fast float -0.000000e+00, %9767
  %9769 = fmul fast float %9759, %9766
  %9770 = fsub fast float -0.000000e+00, %9769
  %9771 = fmul fast float %9760, %9766
  %9772 = fsub fast float -0.000000e+00, %9771
  %9773 = fdiv fast float %9768, %9761
  %9774 = fdiv fast float %9770, %9761
  %9775 = fdiv fast float %9772, %9761
  br label %9814

; <label>:9776                                    ; preds = %9752
  %9777 = fsub fast float 1.000000e+00, %9651
  %9778 = fmul fast float %9682, %9777
  %9779 = fmul fast float %9693, %9777
  %9780 = fmul fast float %9704, %9777
  %9781 = fmul fast float %9683, %9777
  %9782 = fmul fast float %9694, %9777
  %9783 = fmul fast float %9705, %9777
  %9784 = fcmp fast une float %9781, 0.000000e+00
  br i1 %9784, label %9785, label %9792, !dx.controlflow.hints !180

; <label>:9785                                    ; preds = %9776
  %9786 = fmul fast float %9781, 0x3FF7154760000000
  %9787 = call float @dx.op.unary.f32(i32 21, float %9786)  ; Exp(value)
  %9788 = fsub fast float 1.000000e+00, %9787
  %9789 = fmul fast float %9778, %9788
  %9790 = fsub fast float -0.000000e+00, %9789
  %9791 = fdiv fast float %9790, %9781
  br label %9792

; <label>:9792                                    ; preds = %9785, %9776
  %9793 = phi float [ %9791, %9785 ], [ %9778, %9776 ]
  %9794 = phi float [ %9787, %9785 ], [ 1.000000e+00, %9776 ]
  %9795 = fcmp fast une float %9782, 0.000000e+00
  br i1 %9795, label %9796, label %9803, !dx.controlflow.hints !180

; <label>:9796                                    ; preds = %9792
  %9797 = fmul fast float %9782, 0x3FF7154760000000
  %9798 = call float @dx.op.unary.f32(i32 21, float %9797)  ; Exp(value)
  %9799 = fsub fast float 1.000000e+00, %9798
  %9800 = fmul fast float %9779, %9799
  %9801 = fsub fast float -0.000000e+00, %9800
  %9802 = fdiv fast float %9801, %9782
  br label %9803

; <label>:9803                                    ; preds = %9796, %9792
  %9804 = phi float [ %9802, %9796 ], [ %9779, %9792 ]
  %9805 = phi float [ %9798, %9796 ], [ 1.000000e+00, %9792 ]
  %9806 = fcmp fast une float %9783, 0.000000e+00
  br i1 %9806, label %9807, label %9814, !dx.controlflow.hints !180

; <label>:9807                                    ; preds = %9803
  %9808 = fmul fast float %9783, 0x3FF7154760000000
  %9809 = call float @dx.op.unary.f32(i32 21, float %9808)  ; Exp(value)
  %9810 = fsub fast float 1.000000e+00, %9809
  %9811 = fmul fast float %9780, %9810
  %9812 = fsub fast float -0.000000e+00, %9811
  %9813 = fdiv fast float %9812, %9783
  br label %9814

; <label>:9814                                    ; preds = %9807, %9803, %9763, %9756
  %9815 = phi float [ %9813, %9807 ], [ %9775, %9763 ], [ %9760, %9756 ], [ %9780, %9803 ]
  %9816 = phi float [ %9804, %9807 ], [ %9774, %9763 ], [ %9759, %9756 ], [ %9804, %9803 ]
  %9817 = phi float [ %9793, %9807 ], [ %9773, %9763 ], [ %9758, %9756 ], [ %9793, %9803 ]
  %9818 = phi float [ %9809, %9807 ], [ %9765, %9763 ], [ 1.000000e+00, %9756 ], [ 1.000000e+00, %9803 ]
  %9819 = phi float [ %9805, %9807 ], [ %9765, %9763 ], [ 1.000000e+00, %9756 ], [ %9805, %9803 ]
  %9820 = phi float [ %9794, %9807 ], [ %9765, %9763 ], [ 1.000000e+00, %9756 ], [ %9794, %9803 ]
  %9821 = fmul fast float %9820, %9732
  %9822 = fmul fast float %9819, %9743
  %9823 = fmul fast float %9818, %9754
  %9824 = fadd fast float %9821, %9817
  %9825 = fadd fast float %9822, %9816
  %9826 = fadd fast float %9823, %9815
  %9827 = fmul fast float %9820, %9731
  %9828 = fmul fast float %9819, %9742
  %9829 = fmul fast float %9818, %9753
  br label %9830

; <label>:9830                                    ; preds = %9814, %9625
  %9831 = phi float [ %9829, %9814 ], [ %9631, %9625 ]
  %9832 = phi float [ %9828, %9814 ], [ %9630, %9625 ]
  %9833 = phi float [ %9827, %9814 ], [ %9629, %9625 ]
  %9834 = phi float [ %9826, %9814 ], [ %9628, %9625 ]
  %9835 = phi float [ %9825, %9814 ], [ %9627, %9625 ]
  %9836 = phi float [ %9824, %9814 ], [ %9626, %9625 ]
  %9837 = fmul fast float %9836, %8778
  %9838 = fmul fast float %9835, %8780
  %9839 = fmul fast float %9834, %8782
  %9840 = fmul fast float %9833, %9073
  %9841 = call float @dx.op.dot3.f32(i32 55, float %9833, float %9832, float %9831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9842 = call float @dx.op.dot3.f32(i32 55, float %9837, float %9838, float %9839, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9843 = select i1 %260, float %9841, float %9833
  %9844 = select i1 %260, float %9841, float %9832
  %9845 = select i1 %260, float 1.000000e+00, float %9831
  %9846 = select i1 %260, float %9842, float %9837
  %9847 = select i1 %260, float 0.000000e+00, float %9838
  %9848 = select i1 %260, float 0.000000e+00, float %9839
  %9849 = fmul fast float %9843, %9067
  %9850 = fmul fast float %9844, %9068
  %9851 = fmul fast float %9845, %9069
  %9852 = fadd fast float %9849, %9846
  %9853 = fadd fast float %9850, %9847
  %9854 = fadd fast float %9848, %9851
  %9855 = fmul fast float %9843, %9070
  %9856 = fmul fast float %9844, %9071
  %9857 = fmul fast float %9845, %9072
  %9858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9859 = extractvalue %dx.types.CBufRet.i32 %9858, 0
  %9860 = icmp eq i32 %9859, 0
  br i1 %9860, label %10228, label %9861, !dx.controlflow.hints !182

; <label>:9861                                    ; preds = %9830
  %9862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9863 = extractvalue %dx.types.CBufRet.f32 %9862, 2
  %9864 = extractvalue %dx.types.CBufRet.f32 %9862, 3
  %9865 = fmul fast float %9863, %114
  %9866 = fmul fast float %9864, %115
  %9867 = fmul fast float %9865, 2.000000e+00
  %9868 = fmul fast float %9866, 2.000000e+00
  %9869 = fsub fast float 1.000000e+00, %9867
  %9870 = fsub fast float 1.000000e+00, %9868
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 0
  %9873 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9874 = extractvalue %dx.types.CBufRet.f32 %9871, 2
  %9875 = fmul fast float %9869, %9872
  %9876 = fmul fast float %9869, %9873
  %9877 = fmul fast float %9869, %9874
  %9878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9879 = extractvalue %dx.types.CBufRet.f32 %9878, 0
  %9880 = extractvalue %dx.types.CBufRet.f32 %9878, 1
  %9881 = extractvalue %dx.types.CBufRet.f32 %9878, 2
  %9882 = fmul fast float %9870, %9879
  %9883 = fmul fast float %9870, %9880
  %9884 = fmul fast float %9870, %9881
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 0
  %9887 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9888 = extractvalue %dx.types.CBufRet.f32 %9885, 2
  %9889 = fadd fast float %9882, %9886
  %9890 = fadd fast float %9889, %9875
  %9891 = fadd fast float %9883, %9887
  %9892 = fadd fast float %9891, %9876
  %9893 = fadd fast float %9884, %9888
  %9894 = fadd fast float %9893, %9877
  %9895 = fmul fast float %9890, %9066
  %9896 = fmul fast float %9892, %9066
  %9897 = fmul fast float %9894, %9066
  %9898 = fmul fast float %9895, %9895
  %9899 = fmul fast float %9896, %9896
  %9900 = fadd fast float %9898, %9899
  %9901 = fmul fast float %9897, %9897
  %9902 = fadd fast float %9900, %9901
  %9903 = call float @dx.op.unary.f32(i32 24, float %9902)  ; Sqrt(value)
  %9904 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %9905 = fsub fast float %9903, %9904
  %9906 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %9907 = fmul fast float %9905, %9906
  %9908 = call float @dx.op.unary.f32(i32 7, float %9907)  ; Saturate(value)
  %9909 = fadd fast float %9908, -5.000000e-01
  %9910 = fmul fast float %9909, 2.000000e+00
  %9911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9912 = extractvalue %dx.types.CBufRet.f32 %9911, 2
  %9913 = call float @dx.op.binary.f32(i32 36, float %9912, float %9910)  ; FMin(a,b)
  %9914 = fsub fast float -0.000000e+00, %9912
  %9915 = fcmp fast ogt float %9913, %9914
  br i1 %9915, label %9916, label %10228, !dx.controlflow.hints !183

; <label>:9916                                    ; preds = %9861
  %9917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9918 = extractvalue %dx.types.CBufRet.f32 %9917, 3
  %9919 = fcmp fast ogt float %9918, 0.000000e+00
  br i1 %9919, label %9920, label %9995, !dx.controlflow.hints !184

; <label>:9920                                    ; preds = %9916
  %9921 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9922 = extractvalue %dx.types.Dimensions %9921, 0
  %9923 = sitofp i32 %9922 to float
  %9924 = extractvalue %dx.types.Dimensions %9921, 1
  %9925 = sitofp i32 %9924 to float
  %9926 = fmul fast float %9865, %9923
  %9927 = fmul fast float %9866, %9925
  %9928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9929 = extractvalue %dx.types.CBufRet.f32 %9928, 1
  %9930 = fsub fast float -0.000000e+00, %9929
  %9931 = fptoui float %9930 to i32
  %9932 = fptoui float %9926 to i32
  %9933 = fptoui float %9927 to i32
  %9934 = and i32 %9931, 31
  %9935 = lshr i32 %9932, %9934
  %9936 = lshr i32 %9933, %9934
  %9937 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9931, i32 %9935, i32 %9936, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9938 = extractvalue %dx.types.ResRet.f32 %9937, 0
  %9939 = fcmp fast olt float %9938, -1.000000e+00
  %9940 = fcmp fast ogt float %9938, -1.000000e+00
  %9941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9942 = extractvalue %dx.types.CBufRet.f32 %9941, 1
  %9943 = select i1 %9940, float %9942, float 1.000000e+00
  %9944 = fadd fast float %9938, 1.000000e+00
  %9945 = fmul fast float %9943, %9944
  %9946 = call float @dx.op.unary.f32(i32 6, float %9945)  ; FAbs(value)
  %9947 = extractvalue %dx.types.CBufRet.f32 %9941, 3
  %9948 = fcmp fast oge float %9946, %9947
  %9949 = select i1 %9948, float 0x4197782600000000, float %9946
  %9950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9951 = extractvalue %dx.types.CBufRet.f32 %9950, 0
  %9952 = extractvalue %dx.types.CBufRet.f32 %9950, 1
  %9953 = extractvalue %dx.types.CBufRet.f32 %9950, 2
  %9954 = select i1 %9939, float %9951, float %9872
  %9955 = select i1 %9939, float %9952, float %9873
  %9956 = select i1 %9939, float %9953, float %9874
  %9957 = fmul fast float %9954, %9869
  %9958 = fmul fast float %9955, %9869
  %9959 = fmul fast float %9956, %9869
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 0
  %9962 = extractvalue %dx.types.CBufRet.f32 %9960, 1
  %9963 = extractvalue %dx.types.CBufRet.f32 %9960, 2
  %9964 = select i1 %9939, float %9961, float %9879
  %9965 = select i1 %9939, float %9962, float %9880
  %9966 = select i1 %9939, float %9963, float %9881
  %9967 = fmul fast float %9964, %9870
  %9968 = fmul fast float %9965, %9870
  %9969 = fmul fast float %9966, %9870
  %9970 = fadd fast float %9967, %9957
  %9971 = fadd fast float %9968, %9958
  %9972 = fadd fast float %9969, %9959
  %9973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9974 = extractvalue %dx.types.CBufRet.f32 %9973, 0
  %9975 = extractvalue %dx.types.CBufRet.f32 %9973, 1
  %9976 = extractvalue %dx.types.CBufRet.f32 %9973, 2
  %9977 = select i1 %9939, float %9974, float %9886
  %9978 = select i1 %9939, float %9975, float %9887
  %9979 = select i1 %9939, float %9976, float %9888
  %9980 = fadd fast float %9970, %9977
  %9981 = fadd fast float %9971, %9978
  %9982 = fadd fast float %9972, %9979
  %9983 = fmul fast float %9980, %9949
  %9984 = fmul fast float %9981, %9949
  %9985 = fmul fast float %9982, %9949
  %9986 = fmul fast float %9983, %9983
  %9987 = fmul fast float %9984, %9984
  %9988 = fadd fast float %9986, %9987
  %9989 = fmul fast float %9985, %9985
  %9990 = fadd fast float %9988, %9989
  %9991 = call float @dx.op.unary.f32(i32 24, float %9990)  ; Sqrt(value)
  %9992 = fsub fast float %9991, %9904
  %9993 = fmul fast float %9992, %9906
  %9994 = call float @dx.op.unary.f32(i32 7, float %9993)  ; Saturate(value)
  br label %9995

; <label>:9995                                    ; preds = %9920, %9916
  %9996 = phi float [ %9994, %9920 ], [ 1.000000e+00, %9916 ]
  %9997 = fmul fast float %9913, 5.000000e-01
  %9998 = fadd fast float %9997, 5.000000e-01
  %9999 = call float @dx.op.unary.f32(i32 22, float %9998)  ; Frc(value)
  %10000 = call float @dx.op.unary.f32(i32 27, float %9999)  ; Round_ni(value)
  %10001 = call float @dx.op.unary.f32(i32 22, float %9999)  ; Frc(value)
  %10002 = fmul fast float %10001, 2.000000e+00
  %10003 = fadd fast float %10002, -1.000000e+00
  %10004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9865, float %9866, float %10000, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10005 = extractvalue %dx.types.ResRet.f32 %10004, 0
  %10006 = extractvalue %dx.types.ResRet.f32 %10004, 1
  %10007 = extractvalue %dx.types.ResRet.f32 %10004, 2
  %10008 = extractvalue %dx.types.ResRet.f32 %10004, 3
  %10009 = fadd fast float %10005, -5.000000e-01
  %10010 = fadd fast float %10007, -5.000000e-01
  %10011 = fmul fast float %10009, 0xBFD5555560000000
  %10012 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10010, float %10011)  ; FMad(a,b,c)
  %10013 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10006, float 0.000000e+00)  ; FMad(a,b,c)
  %10014 = fadd fast float %10013, %10008
  %10015 = fmul fast float %10009, -7.500000e-01
  %10016 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10010, float %10015)  ; FMad(a,b,c)
  %10017 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10006, float 0.000000e+00)  ; FMad(a,b,c)
  %10018 = fadd fast float %10017, %10008
  %10019 = call float @dx.op.binary.f32(i32 35, float %10012, float -1.000000e+00)  ; FMax(a,b)
  %10020 = call float @dx.op.binary.f32(i32 35, float %10014, float -1.000000e+00)  ; FMax(a,b)
  %10021 = call float @dx.op.binary.f32(i32 35, float %10016, float -1.000000e+00)  ; FMax(a,b)
  %10022 = call float @dx.op.binary.f32(i32 35, float %10018, float -1.000000e+00)  ; FMax(a,b)
  %10023 = call float @dx.op.binary.f32(i32 36, float %10019, float 1.000000e+00)  ; FMin(a,b)
  %10024 = call float @dx.op.binary.f32(i32 36, float %10020, float 1.000000e+00)  ; FMin(a,b)
  %10025 = call float @dx.op.binary.f32(i32 36, float %10021, float 1.000000e+00)  ; FMin(a,b)
  %10026 = call float @dx.op.binary.f32(i32 36, float %10022, float 1.000000e+00)  ; FMin(a,b)
  %10027 = fcmp fast olt float %10023, 0x3FEFFF8020000000
  br i1 %10027, label %10028, label %10143, !dx.controlflow.hints !185

; <label>:10028                                   ; preds = %9995
  %10029 = extractvalue %dx.types.CBufRet.f32 %9911, 3
  %10030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10031 = extractvalue %dx.types.CBufRet.f32 %10030, 0
  %10032 = extractvalue %dx.types.CBufRet.f32 %10030, 1
  %10033 = extractvalue %dx.types.CBufRet.f32 %10030, 2
  %10034 = extractvalue %dx.types.CBufRet.f32 %10030, 3
  %10035 = fsub fast float %10031, %10023
  %10036 = fsub fast float %10032, %10024
  %10037 = fsub fast float %10033, %10025
  %10038 = fsub fast float %10034, %10026
  %10039 = fmul fast float %10035, %10029
  %10040 = fmul fast float %10036, %10029
  %10041 = fmul fast float %10037, %10029
  %10042 = fmul fast float %10038, %10029
  %10043 = fadd fast float %10039, %10023
  %10044 = fadd fast float %10040, %10024
  %10045 = fsub fast float -0.000000e+00, %10044
  %10046 = fadd fast float %10041, %10025
  %10047 = fadd fast float %10042, %10026
  %10048 = fmul fast float %10043, %10043
  %10049 = fsub fast float %10044, %10048
  %10050 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10049)  ; FMax(a,b)
  %10051 = fdiv fast float 1.000000e+00, %10050
  %10052 = fmul fast float %10044, %10043
  %10053 = fsub fast float %10046, %10052
  %10054 = fsub fast float %10003, %10043
  %10055 = fmul fast float %10003, %10003
  %10056 = fsub fast float %10055, %10044
  %10057 = fmul fast float %10054, %10051
  %10058 = fmul fast float %10057, %10053
  %10059 = fsub fast float %10056, %10058
  %10060 = fmul fast float %10044, %10044
  %10061 = fsub fast float %10047, %10060
  %10062 = fmul fast float %10053, %10053
  %10063 = fmul fast float %10062, %10051
  %10064 = fsub fast float %10061, %10063
  %10065 = fdiv fast float %10059, %10064
  %10066 = fmul fast float %10053, %10065
  %10067 = fsub fast float %10054, %10066
  %10068 = fmul fast float %10067, %10051
  %10069 = fmul fast float %10068, %10043
  %10070 = fsub fast float 1.000000e+00, %10069
  %10071 = fmul fast float %10044, %10065
  %10072 = fsub fast float %10070, %10071
  %10073 = fmul fast float %10068, %10068
  %10074 = fmul fast float %10065, 4.000000e+00
  %10075 = fmul fast float %10074, %10072
  %10076 = fsub fast float %10073, %10075
  %10077 = call float @dx.op.unary.f32(i32 24, float %10076)  ; Sqrt(value)
  %10078 = fcmp fast oge float %10068, 0.000000e+00
  %10079 = fsub fast float -0.000000e+00, %10077
  %10080 = select i1 %10078, float %10079, float %10077
  %10081 = fsub fast float %10080, %10068
  %10082 = fdiv fast float %10081, %10065
  %10083 = fdiv fast float %10072, %10081
  %10084 = fmul fast float %10082, 5.000000e-01
  %10085 = fmul fast float %10083, 2.000000e+00
  %10086 = select i1 %10078, float %10084, float %10085
  %10087 = select i1 %10078, float %10085, float %10084
  %10088 = call float @dx.op.binary.f32(i32 35, float %10086, float %10087)  ; FMax(a,b)
  %10089 = call float @dx.op.binary.f32(i32 36, float %10086, float %10087)  ; FMin(a,b)
  %10090 = fcmp fast ogt float %10003, %10089
  br i1 %10090, label %10091, label %10101

; <label>:10091                                   ; preds = %10028
  %10092 = fsub fast float %10003, %10089
  %10093 = fsub fast float %10088, %10089
  %10094 = fmul fast float %10092, %10093
  %10095 = fmul fast float %10088, %10003
  %10096 = fadd fast float %10088, %10003
  %10097 = fmul fast float %10096, %10043
  %10098 = fadd fast float %10095, %10044
  %10099 = fsub fast float %10098, %10097
  %10100 = fdiv fast float %10099, %10094
  br label %10101

; <label>:10101                                   ; preds = %10091, %10028
  %10102 = phi float [ %10100, %10091 ], [ 0.000000e+00, %10028 ]
  %10103 = fcmp fast ogt float %10003, %10088
  %10104 = fsub fast float %10003, %10088
  br i1 %10103, label %10105, label %10115

; <label>:10105                                   ; preds = %10101
  %10106 = fsub fast float %10088, %10089
  %10107 = fmul fast float %10106, %10104
  %10108 = fmul fast float %10089, %10003
  %10109 = fadd fast float %10089, %10003
  %10110 = fmul fast float %10109, %10043
  %10111 = fsub fast float %10045, %10108
  %10112 = fadd fast float %10111, %10110
  %10113 = fdiv fast float %10112, %10107
  %10114 = fadd fast float %10113, %10102
  br label %10115

; <label>:10115                                   ; preds = %10105, %10101
  %10116 = phi float [ %10114, %10105 ], [ %10102, %10101 ]
  %10117 = fsub fast float %10003, %10089
  %10118 = fmul fast float %10117, %10104
  %10119 = fmul fast float %10089, %10088
  %10120 = fadd fast float %10089, %10088
  %10121 = fmul fast float %10120, %10043
  %10122 = fadd fast float %10119, %10044
  %10123 = fsub fast float %10122, %10121
  %10124 = fdiv fast float %10123, %10118
  %10125 = call float @dx.op.unary.f32(i32 7, float %10116)  ; Saturate(value)
  %10126 = fcmp fast oeq float %8794, 0.000000e+00
  %10127 = extractvalue %dx.types.CBufRet.f32 %9911, 0
  %10128 = fcmp fast oeq float %10127, 0.000000e+00
  %10129 = or i1 %10126, %10128
  %10130 = fmul fast float %10127, 2.000000e+00
  %10131 = fadd fast float %9912, %9913
  %10132 = fdiv fast float %10131, %10130
  %10133 = call float @dx.op.unary.f32(i32 7, float %10132)  ; Saturate(value)
  %10134 = fmul fast float %10133, 2.000000e+00
  %10135 = fsub fast float 3.000000e+00, %10134
  %10136 = fmul fast float %10133, %10133
  %10137 = fmul fast float %10136, %10135
  %10138 = select i1 %10129, float 1.000000e+00, float %10137
  %10139 = fmul fast float %10124, %8794
  %10140 = fadd fast float %10125, %10139
  %10141 = call float @dx.op.unary.f32(i32 7, float %10140)  ; Saturate(value)
  %10142 = fmul fast float %10138, %10141
  br label %10143

; <label>:10143                                   ; preds = %10115, %9995
  %10144 = phi float [ %10142, %10115 ], [ 0.000000e+00, %9995 ]
  %10145 = fsub fast float 1.000000e+00, %10144
  %10146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9865, float %9866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10147 = extractvalue %dx.types.ResRet.f32 %10146, 0
  %10148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10149 = extractvalue %dx.types.CBufRet.i32 %10148, 2
  %10150 = icmp eq i32 %10149, 0
  br i1 %10150, label %10156, label %10151

; <label>:10151                                   ; preds = %10143
  %10152 = call float @dx.op.unary.f32(i32 7, float %10144)  ; Saturate(value)
  %10153 = fadd fast float %10147, -1.000000e+00
  %10154 = fmul fast float %10152, %10153
  %10155 = fadd fast float %10154, 1.000000e+00
  br label %10156

; <label>:10156                                   ; preds = %10151, %10143
  %10157 = phi float [ %10155, %10151 ], [ %10145, %10143 ]
  br i1 %9919, label %10158, label %10176

; <label>:10158                                   ; preds = %10156
  %10159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.f32 %10159, 1
  %10161 = fsub fast float %9996, %10160
  %10162 = call float @dx.op.unary.f32(i32 7, float %10161)  ; Saturate(value)
  %10163 = fsub fast float %9996, %9918
  %10164 = call float @dx.op.unary.f32(i32 7, float %10163)  ; Saturate(value)
  %10165 = fsub fast float %10162, %10164
  %10166 = fsub fast float %9998, %10164
  %10167 = fdiv fast float %10166, %10165
  %10168 = call float @dx.op.unary.f32(i32 7, float %10167)  ; Saturate(value)
  %10169 = fmul fast float %10168, 2.000000e+00
  %10170 = fsub fast float 3.000000e+00, %10169
  %10171 = fsub fast float %10147, %10157
  %10172 = fmul fast float %10168, %10168
  %10173 = fmul fast float %10172, %10171
  %10174 = fmul fast float %10173, %10170
  %10175 = fadd fast float %10174, %10157
  br label %10176

; <label>:10176                                   ; preds = %10158, %10156
  %10177 = phi float [ %10175, %10158 ], [ %10157, %10156 ]
  %10178 = call float @dx.op.binary.f32(i32 35, float %10147, float %10177)  ; FMax(a,b)
  %10179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10180 = extractvalue %dx.types.CBufRet.i32 %10179, 2
  %10181 = and i32 %10180, 1
  %10182 = icmp eq i32 %10181, 0
  %10183 = fcmp fast une float %10178, 1.000000e+00
  %10184 = and i1 %10183, %10182
  br i1 %10184, label %10185, label %10204

; <label>:10185                                   ; preds = %10176
  %10186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9865, float %9866, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10187 = extractvalue %dx.types.ResRet.f32 %10186, 0
  %10188 = extractvalue %dx.types.ResRet.f32 %10186, 1
  %10189 = extractvalue %dx.types.ResRet.f32 %10186, 2
  %10190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10191 = extractvalue %dx.types.CBufRet.f32 %10190, 1
  %10192 = fmul fast float %10191, %10187
  %10193 = fmul fast float %10191, %10188
  %10194 = fmul fast float %10191, %10189
  %10195 = fcmp fast ogt float %10147, 0x3FEFFF2E40000000
  %10196 = fsub fast float 1.000000e+00, %10178
  %10197 = fsub fast float 1.000000e+00, %10147
  %10198 = fdiv fast float %10196, %10197
  %10199 = call float @dx.op.unary.f32(i32 7, float %10198)  ; Saturate(value)
  %10200 = select i1 %10195, float 0.000000e+00, float %10199
  %10201 = fmul fast float %10192, %10200
  %10202 = fmul fast float %10193, %10200
  %10203 = fmul fast float %10194, %10200
  br label %10204

; <label>:10204                                   ; preds = %10185, %10176
  %10205 = phi float [ 0.000000e+00, %10176 ], [ %10201, %10185 ]
  %10206 = phi float [ 0.000000e+00, %10176 ], [ %10202, %10185 ]
  %10207 = phi float [ 0.000000e+00, %10176 ], [ %10203, %10185 ]
  %10208 = fmul fast float %10205, %8778
  %10209 = fmul fast float %10206, %8780
  %10210 = fmul fast float %10207, %8782
  %10211 = fmul fast float %10178, %9840
  %10212 = call float @dx.op.dot3.f32(i32 55, float %10178, float %10178, float %10178, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10213 = call float @dx.op.dot3.f32(i32 55, float %10208, float %10209, float %10210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10214 = select i1 %260, float %10212, float %10178
  %10215 = select i1 %260, float 1.000000e+00, float %10178
  %10216 = select i1 %260, float %10213, float %10208
  %10217 = select i1 %260, float 0.000000e+00, float %10209
  %10218 = select i1 %260, float 0.000000e+00, float %10210
  %10219 = fmul fast float %10214, %9852
  %10220 = fmul fast float %10214, %9853
  %10221 = fmul fast float %10215, %9854
  %10222 = fadd fast float %10219, %10216
  %10223 = fadd fast float %10220, %10217
  %10224 = fadd fast float %10218, %10221
  %10225 = fmul fast float %10214, %9855
  %10226 = fmul fast float %10214, %9856
  %10227 = fmul fast float %10215, %9857
  br label %10228

; <label>:10228                                   ; preds = %10204, %9861, %9830, %9062
  %10229 = phi float [ %9067, %9062 ], [ %9852, %9830 ], [ %10222, %10204 ], [ %9852, %9861 ]
  %10230 = phi float [ %9068, %9062 ], [ %9853, %9830 ], [ %10223, %10204 ], [ %9853, %9861 ]
  %10231 = phi float [ %9069, %9062 ], [ %9854, %9830 ], [ %10224, %10204 ], [ %9854, %9861 ]
  %10232 = phi float [ %9070, %9062 ], [ %9855, %9830 ], [ %10225, %10204 ], [ %9855, %9861 ]
  %10233 = phi float [ %9071, %9062 ], [ %9856, %9830 ], [ %10226, %10204 ], [ %9856, %9861 ]
  %10234 = phi float [ %9072, %9062 ], [ %9857, %9830 ], [ %10227, %10204 ], [ %9857, %9861 ]
  %10235 = phi float [ %9073, %9062 ], [ %9840, %9830 ], [ %10211, %10204 ], [ %9840, %9861 ]
  %10236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10237 = extractvalue %dx.types.CBufRet.f32 %10236, 2
  %10238 = extractvalue %dx.types.CBufRet.f32 %10236, 3
  %10239 = fmul fast float %10237, %114
  %10240 = fmul fast float %10238, %115
  %10241 = call float @dx.op.unary.f32(i32 7, float %10239)  ; Saturate(value)
  %10242 = call float @dx.op.unary.f32(i32 7, float %10240)  ; Saturate(value)
  %10243 = select i1 %8804, i32 2, i32 0
  %10244 = or i32 %10243, 1
  %10245 = uitofp i32 %10244 to float
  %10246 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10241, float %10242, float %10245, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10247 = extractvalue %dx.types.ResRet.f32 %10246, 0
  %10248 = extractvalue %dx.types.ResRet.f32 %10246, 1
  %10249 = extractvalue %dx.types.ResRet.f32 %10246, 2
  %10250 = extractvalue %dx.types.ResRet.f32 %10246, 3
  %10251 = add nuw nsw i32 %10243, 2
  %10252 = uitofp i32 %10251 to float
  %10253 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10241, float %10242, float %10252, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10254 = extractvalue %dx.types.ResRet.f32 %10253, 0
  %10255 = extractvalue %dx.types.ResRet.f32 %10253, 1
  %10256 = extractvalue %dx.types.ResRet.f32 %10253, 2
  %10257 = extractvalue %dx.types.ResRet.f32 %10253, 3
  %10258 = call float @dx.op.binary.f32(i32 35, float %10248, float %10249)  ; FMax(a,b)
  %10259 = call float @dx.op.binary.f32(i32 35, float %10247, float %10258)  ; FMax(a,b)
  %10260 = call float @dx.op.binary.f32(i32 35, float %10259, float %10250)  ; FMax(a,b)
  %10261 = call float @dx.op.binary.f32(i32 36, float %10255, float %10256)  ; FMin(a,b)
  %10262 = call float @dx.op.binary.f32(i32 36, float %10254, float %10261)  ; FMin(a,b)
  %10263 = call float @dx.op.binary.f32(i32 36, float %10262, float %10257)  ; FMin(a,b)
  %10264 = fmul fast float %10260, 2.550000e+02
  %10265 = fadd fast float %10264, 0x3F70101020000000
  %10266 = fptoui float %10265 to i32
  %10267 = fmul fast float %10263, 2.550000e+02
  %10268 = fadd fast float %10267, 0x3F70101020000000
  %10269 = fptoui float %10268 to i32
  %10270 = icmp ult i32 %10266, %10269
  br i1 %10270, label %10271, label %10440

; <label>:10271                                   ; preds = %10228
  %10272 = fcmp fast ogt float %100, 9.843750e-01
  %10273 = fadd fast float %9066, -4.000000e+00
  %10274 = select i1 %10272, float -4.000000e+00, float %10273
  %10275 = call float @dx.op.binary.f32(i32 35, float %10274, float 0.000000e+00)  ; FMax(a,b)
  %10276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10277 = extractvalue %dx.types.CBufRet.f32 %10276, 0
  %10278 = fadd fast float %10277, %10275
  %10279 = extractvalue %dx.types.CBufRet.f32 %10276, 2
  %10280 = fmul fast float %10278, %10279
  %10281 = call float @dx.op.unary.f32(i32 23, float %10280)  ; Log(value)
  %10282 = extractvalue %dx.types.CBufRet.f32 %10276, 3
  %10283 = fmul fast float %10282, %10281
  %10284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10285 = extractvalue %dx.types.CBufRet.f32 %10284, 2
  %10286 = fmul fast float %10283, %10285
  %10287 = call float @dx.op.unary.f32(i32 7, float %10286)  ; Saturate(value)
  %10288 = uitofp i32 %10266 to float
  %10289 = uitofp i32 %10269 to float
  %10290 = fadd fast float %10288, 5.000000e-01
  %10291 = fadd fast float %10289, 5.000000e-01
  %10292 = fmul fast float %10285, %10290
  %10293 = fmul fast float %10285, %10291
  %10294 = fadd fast float %10292, 0x3F0FFB4800000000
  %10295 = fadd fast float %10293, 0xBF0FFB4800000000
  %10296 = call float @dx.op.binary.f32(i32 35, float %10287, float %10294)  ; FMax(a,b)
  %10297 = call float @dx.op.binary.f32(i32 36, float %10296, float %10295)  ; FMin(a,b)
  %10298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10299 = extractvalue %dx.types.CBufRet.f32 %10298, 1
  %10300 = extractvalue %dx.types.CBufRet.f32 %10298, 2
  %10301 = extractvalue %dx.types.CBufRet.f32 %10298, 0
  %10302 = select i1 %8804, float %10301, float 0.000000e+00
  %10303 = fmul fast float %10299, %10297
  %10304 = fadd fast float %10302, %10303
  %10305 = fadd fast float %10302, %10300
  %10306 = fsub fast float %10299, %10300
  %10307 = fadd fast float %10306, %10302
  %10308 = call float @dx.op.binary.f32(i32 35, float %10304, float %10305)  ; FMax(a,b)
  %10309 = call float @dx.op.binary.f32(i32 36, float %10308, float %10307)  ; FMin(a,b)
  %10310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10241, float %10242, float %10309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10311 = extractvalue %dx.types.ResRet.f32 %10310, 0
  %10312 = extractvalue %dx.types.ResRet.f32 %10310, 1
  %10313 = extractvalue %dx.types.ResRet.f32 %10310, 2
  %10314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10315 = extractvalue %dx.types.CBufRet.i32 %10314, 0
  %10316 = extractvalue %dx.types.CBufRet.i32 %10314, 1
  %10317 = uitofp i32 %10315 to float
  %10318 = uitofp i32 %10316 to float
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 0
  %10321 = extractvalue %dx.types.CBufRet.f32 %10319, 1
  %10322 = fmul fast float %10317, %10241
  %10323 = fmul fast float %10318, %10242
  %10324 = fadd fast float %10322, -5.000000e-01
  %10325 = fadd fast float %10323, -5.000000e-01
  %10326 = call float @dx.op.unary.f32(i32 22, float %10324)  ; Frc(value)
  %10327 = call float @dx.op.unary.f32(i32 22, float %10325)  ; Frc(value)
  %10328 = fmul fast float %10326, %10326
  %10329 = fmul fast float %10328, %10326
  %10330 = fsub fast float 3.000000e+00, %10326
  %10331 = fmul fast float %10328, %10330
  %10332 = fmul fast float %10326, 3.000000e+00
  %10333 = fmul fast float %10329, 3.000000e+00
  %10334 = fmul fast float %10328, 6.000000e+00
  %10335 = fsub fast float %10333, %10334
  %10336 = fadd fast float %10335, 4.000000e+00
  %10337 = fmul fast float %10336, 0x3FC5555560000000
  %10338 = fmul fast float %10329, -3.000000e+00
  %10339 = fadd fast float %10328, %10326
  %10340 = fmul fast float %10339, 3.000000e+00
  %10341 = fadd fast float %10338, 1.000000e+00
  %10342 = fadd fast float %10341, %10340
  %10343 = fmul fast float %10329, 0x3FC5555560000000
  %10344 = fmul fast float %10327, %10327
  %10345 = fmul fast float %10344, %10327
  %10346 = fsub fast float 3.000000e+00, %10327
  %10347 = fmul fast float %10344, %10346
  %10348 = fmul fast float %10327, 3.000000e+00
  %10349 = fmul fast float %10345, 3.000000e+00
  %10350 = fmul fast float %10344, 6.000000e+00
  %10351 = fsub fast float %10349, %10350
  %10352 = fadd fast float %10351, 4.000000e+00
  %10353 = fmul fast float %10352, 0x3FC5555560000000
  %10354 = fmul fast float %10345, -3.000000e+00
  %10355 = fadd fast float %10344, %10327
  %10356 = fmul fast float %10355, 3.000000e+00
  %10357 = fadd fast float %10354, 1.000000e+00
  %10358 = fadd fast float %10357, %10356
  %10359 = fmul fast float %10345, 0x3FC5555560000000
  %10360 = fadd fast float %10326, 1.000000e+00
  %10361 = fsub fast float 1.000000e+00, %10332
  %10362 = fadd fast float %10361, %10331
  %10363 = fadd fast float %10362, %10336
  %10364 = fmul fast float %10363, 0x3FC5555560000000
  %10365 = fdiv fast float %10337, %10364
  %10366 = fsub fast float %10360, %10365
  %10367 = fsub fast float 1.000000e+00, %10326
  %10368 = fadd fast float %10342, %10329
  %10369 = fmul fast float %10368, 0x3FC5555560000000
  %10370 = fdiv fast float %10343, %10369
  %10371 = fadd fast float %10367, %10370
  %10372 = fadd fast float %10327, 1.000000e+00
  %10373 = fsub fast float 1.000000e+00, %10348
  %10374 = fadd fast float %10373, %10347
  %10375 = fadd fast float %10374, %10352
  %10376 = fmul fast float %10375, 0x3FC5555560000000
  %10377 = fdiv fast float %10353, %10376
  %10378 = fsub fast float %10372, %10377
  %10379 = fsub fast float 1.000000e+00, %10327
  %10380 = fadd fast float %10358, %10345
  %10381 = fmul fast float %10380, 0x3FC5555560000000
  %10382 = fdiv fast float %10359, %10381
  %10383 = fadd fast float %10382, %10379
  %10384 = fmul fast float %10366, %10320
  %10385 = fsub fast float %10241, %10384
  %10386 = fmul fast float %10371, %10320
  %10387 = fadd fast float %10386, %10241
  %10388 = fmul fast float %10383, %10321
  %10389 = fadd fast float %10388, %10242
  %10390 = fmul fast float %10378, %10321
  %10391 = fsub fast float %10242, %10390
  %10392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10385, float %10391, float %10309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10393 = extractvalue %dx.types.ResRet.f32 %10392, 0
  %10394 = extractvalue %dx.types.ResRet.f32 %10392, 1
  %10395 = extractvalue %dx.types.ResRet.f32 %10392, 2
  %10396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10387, float %10391, float %10309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10397 = extractvalue %dx.types.ResRet.f32 %10396, 0
  %10398 = extractvalue %dx.types.ResRet.f32 %10396, 1
  %10399 = extractvalue %dx.types.ResRet.f32 %10396, 2
  %10400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10385, float %10389, float %10309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10401 = extractvalue %dx.types.ResRet.f32 %10400, 0
  %10402 = extractvalue %dx.types.ResRet.f32 %10400, 1
  %10403 = extractvalue %dx.types.ResRet.f32 %10400, 2
  %10404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10387, float %10389, float %10309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10405 = extractvalue %dx.types.ResRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.ResRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.ResRet.f32 %10404, 2
  %10408 = fsub fast float %10401, %10393
  %10409 = fsub fast float %10402, %10394
  %10410 = fsub fast float %10403, %10395
  %10411 = fmul fast float %10408, %10381
  %10412 = fmul fast float %10409, %10381
  %10413 = fmul fast float %10410, %10381
  %10414 = fadd fast float %10411, %10393
  %10415 = fadd fast float %10412, %10394
  %10416 = fadd fast float %10413, %10395
  %10417 = fsub fast float %10405, %10397
  %10418 = fsub fast float %10406, %10398
  %10419 = fsub fast float %10407, %10399
  %10420 = fmul fast float %10417, %10381
  %10421 = fmul fast float %10418, %10381
  %10422 = fmul fast float %10419, %10381
  %10423 = fsub fast float %10397, %10414
  %10424 = fadd fast float %10423, %10420
  %10425 = fsub fast float %10398, %10415
  %10426 = fadd fast float %10425, %10421
  %10427 = fsub fast float %10399, %10416
  %10428 = fadd fast float %10427, %10422
  %10429 = fmul fast float %10424, %10369
  %10430 = fmul fast float %10426, %10369
  %10431 = fmul fast float %10428, %10369
  %10432 = fadd fast float %10429, %10414
  %10433 = fadd fast float %10430, %10415
  %10434 = fadd fast float %10431, %10416
  %10435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10436 = extractvalue %dx.types.CBufRet.f32 %10435, 1
  %10437 = fmul fast float %10432, %10436
  %10438 = fmul fast float %10433, %10436
  %10439 = fmul fast float %10434, %10436
  br label %10440

; <label>:10440                                   ; preds = %10271, %10228
  %10441 = phi float [ %10311, %10271 ], [ 1.000000e+00, %10228 ]
  %10442 = phi float [ %10312, %10271 ], [ 1.000000e+00, %10228 ]
  %10443 = phi float [ %10313, %10271 ], [ 1.000000e+00, %10228 ]
  %10444 = phi float [ %10437, %10271 ], [ 0.000000e+00, %10228 ]
  %10445 = phi float [ %10438, %10271 ], [ 0.000000e+00, %10228 ]
  %10446 = phi float [ %10439, %10271 ], [ 0.000000e+00, %10228 ]
  %10447 = fmul fast float %10444, %8778
  %10448 = fmul fast float %10445, %8780
  %10449 = fmul fast float %10446, %8782
  %10450 = fmul fast float %10441, %10235
  %10451 = call float @dx.op.dot3.f32(i32 55, float %10441, float %10442, float %10443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10452 = call float @dx.op.dot3.f32(i32 55, float %10447, float %10448, float %10449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10453 = select i1 %260, float %10451, float %10441
  %10454 = select i1 %260, float %10451, float %10442
  %10455 = select i1 %260, float 1.000000e+00, float %10443
  %10456 = select i1 %260, float %10452, float %10447
  %10457 = select i1 %260, float 0.000000e+00, float %10448
  %10458 = select i1 %260, float 0.000000e+00, float %10449
  %10459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10460 = extractvalue %dx.types.CBufRet.i32 %10459, 3
  %10461 = and i32 %10460, 3
  %10462 = icmp ne i32 %10461, 0
  %10463 = and i32 %10460, 4
  %10464 = icmp ne i32 %10463, 0
  %10465 = and i1 %10462, %10464
  %10466 = and i1 %260, %10465
  br i1 %10466, label %10467, label %10473

; <label>:10467                                   ; preds = %10440
  %10468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10469 = extractvalue %dx.types.CBufRet.f32 %10468, 1
  %10470 = fadd fast float %10450, -1.000000e+00
  %10471 = fmul fast float %10469, %10470
  %10472 = fadd fast float %10471, 1.000000e+00
  br label %10473

; <label>:10473                                   ; preds = %10467, %10440
  %10474 = phi float [ %10472, %10467 ], [ %10450, %10440 ]
  %10475 = fadd fast float %10232, %10229
  %10476 = fmul fast float %10453, %10475
  %10477 = fadd fast float %10476, %10456
  %10478 = fadd fast float %10233, %10230
  %10479 = fmul fast float %10454, %10478
  %10480 = fadd fast float %10479, %10457
  %10481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10482 = extractvalue %dx.types.CBufRet.f32 %10481, 0
  br i1 %260, label %10483, label %10498

; <label>:10483                                   ; preds = %10473
  %10484 = fadd fast float %10477, %10480
  %10485 = fmul fast float %10482, %10484
  %10486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10487 = extractvalue %dx.types.CBufRet.f32 %10486, 3
  %10488 = extractvalue %dx.types.CBufRet.f32 %8786, 1
  %10489 = fsub fast float %8791, %8785
  %10490 = fadd fast float %10489, %8792
  %10491 = fsub fast float %10490, %10488
  %10492 = extractvalue %dx.types.CBufRet.f32 %8786, 2
  %10493 = fmul fast float %10491, %10492
  %10494 = call float @dx.op.unary.f32(i32 7, float %10493)  ; Saturate(value)
  %10495 = fsub fast float %10494, %10487
  %10496 = fmul fast float %10495, %10474
  %10497 = fadd fast float %10496, %10487
  br label %10524

; <label>:10498                                   ; preds = %10473
  %10499 = fadd fast float %10234, %10231
  %10500 = fmul fast float %10455, %10499
  %10501 = fadd fast float %10500, %10458
  %10502 = fmul fast float %10482, %10477
  %10503 = fmul fast float %10482, %10480
  %10504 = fmul fast float %10482, %10501
  %10505 = call float @dx.op.binary.f32(i32 35, float %10503, float %10504)  ; FMax(a,b)
  %10506 = call float @dx.op.binary.f32(i32 35, float %10502, float %10505)  ; FMax(a,b)
  %10507 = call float @dx.op.binary.f32(i32 35, float %8780, float %8782)  ; FMax(a,b)
  %10508 = call float @dx.op.binary.f32(i32 35, float %8778, float %10507)  ; FMax(a,b)
  %10509 = call float @dx.op.binary.f32(i32 35, float %10506, float %10508)  ; FMax(a,b)
  %10510 = fcmp fast ugt float %10509, 0x3F10000000000000
  br i1 %10510, label %10512, label %10511

; <label>:10511                                   ; preds = %10498
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10512

; <label>:10512                                   ; preds = %10511, %10498
  %10513 = add i32 %60, 356
  %10514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10513, i32 undef)  ; BufferLoad(srv,index,wot)
  %10515 = extractvalue %dx.types.ResRet.i32 %10514, 0
  %10516 = and i32 %10515, 32
  %10517 = icmp eq i32 %10516, 0
  br i1 %10517, label %10524, label %10518

; <label>:10518                                   ; preds = %10512
  %10519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10520 = extractvalue %dx.types.CBufRet.f32 %10519, 0
  %10521 = fmul fast float %10520, 0x3FE99999A0000000
  %10522 = fadd fast float %10520, %10502
  %10523 = fadd fast float %10521, %10504
  br label %10524

; <label>:10524                                   ; preds = %10518, %10512, %10483
  %10525 = phi float [ 1.000000e+00, %10483 ], [ %8780, %10518 ], [ %8780, %10512 ]
  %10526 = phi float [ 1.000000e+00, %10483 ], [ %8782, %10518 ], [ %8782, %10512 ]
  %10527 = phi float [ %10485, %10483 ], [ %10522, %10518 ], [ %10502, %10512 ]
  %10528 = phi float [ %10497, %10483 ], [ %10503, %10518 ], [ %10503, %10512 ]
  %10529 = phi float [ 1.000000e+00, %10483 ], [ %10523, %10518 ], [ %10504, %10512 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10530 = call float @dx.op.binary.f32(i32 36, float %10527, float 3.225500e+04)  ; FMin(a,b)
  %10531 = call float @dx.op.binary.f32(i32 36, float %10528, float 3.225500e+04)  ; FMin(a,b)
  %10532 = call float @dx.op.binary.f32(i32 36, float %10529, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10530)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10531)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10533 = call float @dx.op.binary.f32(i32 36, float %8778, float 3.225500e+04)  ; FMin(a,b)
  %10534 = call float @dx.op.binary.f32(i32 36, float %10525, float 3.225500e+04)  ; FMin(a,b)
  %10535 = call float @dx.op.binary.f32(i32 36, float %10526, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10535)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!73}
!dx.entryPoints = !{!74}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !62, !65}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!32 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!33 = !{i32 26, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !34}
!34 = !{i32 0, i32 5}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !47}
!47 = !{i32 0, i32 14}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!56 = !{i32 47, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!57 = !{i32 48, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!58 = !{i32 49, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!59 = !{i32 50, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !47}
!60 = !{i32 51, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!62 = !{!63, !64}
!63 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!64 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!65 = !{!66, !67, !68, !69, !70, !71, !72}
!66 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!67 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!68 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!69 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!70 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!71 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!72 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!73 = !{[58 x i32] [i32 56, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !101}
!75 = !{!76, !97, null}
!76 = !{!77, !80, !81, !83, !85, !86, !87, !88, !89, !90, !91, !92, !93, !95, !96}
!77 = !{i32 0, !"SV_Position", i8 9, i8 3, !78, i8 4, i32 1, i8 4, i32 0, i8 0, !79}
!78 = !{i32 0}
!79 = !{i32 3, i32 15}
!80 = !{i32 1, !"COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 1, i8 0, !79}
!81 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 2, i8 0, !82}
!82 = !{i32 3, i32 3}
!83 = !{i32 3, !"NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 3, i8 0, !84}
!84 = !{i32 3, i32 7}
!85 = !{i32 4, !"TANGENT", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 4, i8 0, !79}
!86 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 5, i8 0, !84}
!87 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 6, i8 0, !79}
!88 = !{i32 7, !"WGV_TEXCOORD", i8 9, i8 0, !78, i8 2, i32 1, i8 3, i32 7, i8 0, !84}
!89 = !{i32 8, !"WGV_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 8, i8 0, !79}
!90 = !{i32 9, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !78, i8 2, i32 1, i8 2, i32 9, i8 0, !82}
!91 = !{i32 10, !"SCEONDARY_NORMAL", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 10, i8 0, !79}
!92 = !{i32 11, !"OBJECT_POSITION", i8 9, i8 0, !78, i8 2, i32 1, i8 4, i32 11, i8 0, !84}
!93 = !{i32 12, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !78, i8 1, i32 1, i8 1, i32 12, i8 0, !94}
!94 = !{i32 3, i32 1}
!95 = !{i32 13, !"PACKED_TRI_DATA", i8 5, i8 0, !78, i8 1, i32 1, i8 4, i32 13, i8 0, !94}
!96 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !78, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98, !99}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!99 = !{i32 1, !"SV_Target", i8 9, i8 16, !100, i8 0, i32 1, i8 4, i32 1, i8 0, !79}
!100 = !{i32 1}
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
!145 = distinct !{!145, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!146 = distinct !{!146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!147 = distinct !{!147, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!148 = distinct !{!148, !146, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!149 = distinct !{!149, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!150 = distinct !{!150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!151 = distinct !{!151, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!152 = distinct !{!152, !150, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

