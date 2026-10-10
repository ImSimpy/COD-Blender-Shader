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
;
; shader hash: fb896357d8f4ba8440c5c69d93d4ba02
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
; Number of inputs: 56, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 30, 32, 33, 34, 35, 36, 37, 40, 41, 42, 43, 44, 45, 46, 48, 52 }
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
  br i1 %3841, label %4391, label %3842

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
  br i1 %3903, label %4356, label %3904

; <label>:3904                                    ; preds = %3842
  br label %3905

; <label>:3905                                    ; preds = %4030, %3904
  %3906 = phi i32 [ %3932, %4030 ], [ %3902, %3904 ]
  %3907 = phi float [ %4031, %4030 ], [ 0.000000e+00, %3904 ]
  %3908 = phi float [ %4032, %4030 ], [ %1142, %3904 ]
  %3909 = phi float [ %4033, %4030 ], [ %3812, %3904 ]
  %3910 = phi float [ %4034, %4030 ], [ %3810, %3904 ]
  %3911 = phi float [ %4035, %4030 ], [ %3803, %3904 ]
  %3912 = phi float [ %4036, %4030 ], [ %3804, %3904 ]
  %3913 = phi float [ %4037, %4030 ], [ %3805, %3904 ]
  %3914 = phi float [ %4038, %4030 ], [ 0.000000e+00, %3904 ]
  %3915 = phi float [ %4039, %4030 ], [ 0.000000e+00, %3904 ]
  %3916 = phi float [ %4040, %4030 ], [ %3800, %3904 ]
  %3917 = phi float [ %4041, %4030 ], [ %3801, %3904 ]
  %3918 = phi float [ %4042, %4030 ], [ %3802, %3904 ]
  %3919 = phi float [ %4043, %4030 ], [ %3838, %3904 ]
  %3920 = phi float [ %4044, %4030 ], [ %3839, %3904 ]
  %3921 = phi float [ %4045, %4030 ], [ %3840, %3904 ]
  %3922 = phi float [ %4046, %4030 ], [ %3808, %3904 ]
  %3923 = phi float [ %4047, %4030 ], [ %3807, %3904 ]
  %3924 = phi float [ %4048, %4030 ], [ 0.000000e+00, %3904 ]
  %3925 = phi float [ %4049, %4030 ], [ %3806, %3904 ]
  %3926 = phi float [ %4050, %4030 ], [ %3797, %3904 ]
  %3927 = phi float [ %4051, %4030 ], [ %3798, %3904 ]
  %3928 = phi float [ %4052, %4030 ], [ %3799, %3904 ]
  %3929 = shl nuw nsw i32 %3906, 2
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = lshr i32 %3931, 16
  %3933 = shl i32 %3931, 8
  %3934 = and i32 %3933, 16776960
  %3935 = or i32 %3934, 48
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = or i32 %3934, 64
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.i32 %3941, 1
  %3944 = or i32 %3934, 80
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 3
  %3948 = or i32 %3934, 96
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = or i32 %3934, 112
  %3955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3957 = or i32 %3934, 128
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3963 = or i32 %3934, 144
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = or i32 %3934, 160
  %3970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.ResRet.f32 %3970, 3
  %3975 = or i32 %3934, 192
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = or i32 %3934, 208
  %3979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3978, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.f32 %3979, 0
  %3981 = or i32 %3934, 248
  %3982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.f32 %3982, 1
  %3985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = extractvalue %dx.types.ResRet.f32 %3985, 3
  %3990 = call float @dx.op.dot4.f32(i32 56, float %3986, float %3987, float %3988, float %3989, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3991 = or i32 %3934, 16
  %3992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.f32 %3992, 1
  %3995 = extractvalue %dx.types.ResRet.f32 %3992, 2
  %3996 = extractvalue %dx.types.ResRet.f32 %3992, 3
  %3997 = call float @dx.op.dot4.f32(i32 56, float %3993, float %3994, float %3995, float %3996, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3998 = or i32 %3934, 32
  %3999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3998, i32 undef)  ; BufferLoad(srv,index,wot)
  %4000 = extractvalue %dx.types.ResRet.f32 %3999, 0
  %4001 = extractvalue %dx.types.ResRet.f32 %3999, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3999, 2
  %4003 = extractvalue %dx.types.ResRet.f32 %3999, 3
  %4004 = call float @dx.op.dot4.f32(i32 56, float %4000, float %4001, float %4002, float %4003, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4005 = call float @dx.op.unary.f32(i32 27, float %3990)  ; Round_ni(value)
  %4006 = call float @dx.op.unary.f32(i32 6, float %4005)  ; FAbs(value)
  %4007 = call float @dx.op.unary.f32(i32 27, float %3997)  ; Round_ni(value)
  %4008 = call float @dx.op.unary.f32(i32 6, float %4007)  ; FAbs(value)
  %4009 = call float @dx.op.unary.f32(i32 6, float %4004)  ; FAbs(value)
  %4010 = call float @dx.op.unary.f32(i32 27, float %4009)  ; Round_ni(value)
  %4011 = fadd fast float %4008, %4006
  %4012 = fadd fast float %4011, %4010
  %4013 = fcmp fast oeq float %4012, 0.000000e+00
  %4014 = call float @dx.op.dot4.f32(i32 56, float %3986, float %3987, float %3988, float %3989, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4015 = call float @dx.op.dot4.f32(i32 56, float %3993, float %3994, float %3995, float %3996, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4016 = call float @dx.op.dot4.f32(i32 56, float %3986, float %3987, float %3988, float %3989, float %3852, float %3853, float %3854, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4017 = call float @dx.op.dot4.f32(i32 56, float %3993, float %3994, float %3995, float %3996, float %3852, float %3853, float %3854, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4018 = fsub fast float %4014, %3990
  %4019 = fsub fast float %4016, %3990
  %4020 = fsub fast float %4015, %3997
  %4021 = fsub fast float %4017, %3997
  %4022 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3939, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 2
  %4025 = fadd fast float %4024, %4022
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4028 = fcmp fast ogt float %4026, %4027
  %4029 = and i1 %4013, %4028
  br i1 %4029, label %4054, label %4030

; <label>:4030                                    ; preds = %4342, %4137, %4054, %3905
  %4031 = phi float [ %3907, %4054 ], [ %4140, %4137 ], [ %4140, %4342 ], [ %3907, %3905 ]
  %4032 = phi float [ %3908, %4054 ], [ %3908, %4137 ], [ %4318, %4342 ], [ %3908, %3905 ]
  %4033 = phi float [ %3909, %4054 ], [ %3909, %4137 ], [ %4317, %4342 ], [ %3909, %3905 ]
  %4034 = phi float [ %3910, %4054 ], [ %3910, %4137 ], [ %4315, %4342 ], [ %3910, %3905 ]
  %4035 = phi float [ %3911, %4054 ], [ %3911, %4137 ], [ %4293, %4342 ], [ %3911, %3905 ]
  %4036 = phi float [ %3912, %4054 ], [ %3912, %4137 ], [ %4294, %4342 ], [ %3912, %3905 ]
  %4037 = phi float [ %3913, %4054 ], [ %3913, %4137 ], [ %4295, %4342 ], [ %3913, %3905 ]
  %4038 = phi float [ %3914, %4054 ], [ %3914, %4137 ], [ %4264, %4342 ], [ %3914, %3905 ]
  %4039 = phi float [ %3915, %4054 ], [ %3915, %4137 ], [ %4262, %4342 ], [ %3915, %3905 ]
  %4040 = phi float [ %3916, %4054 ], [ %3916, %4137 ], [ %4352, %4342 ], [ %3916, %3905 ]
  %4041 = phi float [ %3917, %4054 ], [ %3917, %4137 ], [ %4353, %4342 ], [ %3917, %3905 ]
  %4042 = phi float [ %3918, %4054 ], [ %3918, %4137 ], [ %4354, %4342 ], [ %3918, %3905 ]
  %4043 = phi float [ %3919, %4054 ], [ %3919, %4137 ], [ %4243, %4342 ], [ %3919, %3905 ]
  %4044 = phi float [ %3920, %4054 ], [ %3920, %4137 ], [ %4244, %4342 ], [ %3920, %3905 ]
  %4045 = phi float [ %3921, %4054 ], [ %3921, %4137 ], [ %4245, %4342 ], [ %3921, %3905 ]
  %4046 = phi float [ %3922, %4054 ], [ %3922, %4137 ], [ %4273, %4342 ], [ %3922, %3905 ]
  %4047 = phi float [ %3923, %4054 ], [ %3923, %4137 ], [ %4270, %4342 ], [ %3923, %3905 ]
  %4048 = phi float [ %3924, %4054 ], [ %3924, %4137 ], [ %4267, %4342 ], [ %3924, %3905 ]
  %4049 = phi float [ %3925, %4054 ], [ %3925, %4137 ], [ %4260, %4342 ], [ %3925, %3905 ]
  %4050 = phi float [ %3926, %4054 ], [ %3926, %4137 ], [ %4255, %4342 ], [ %3926, %3905 ]
  %4051 = phi float [ %3927, %4054 ], [ %3927, %4137 ], [ %4256, %4342 ], [ %3927, %3905 ]
  %4052 = phi float [ %3928, %4054 ], [ %3928, %4137 ], [ %4257, %4342 ], [ %3928, %3905 ]
  %4053 = icmp eq i32 %3932, 0
  br i1 %4053, label %4355, label %3905

; <label>:4054                                    ; preds = %3905
  %4055 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %4056 = extractvalue %dx.types.ResRet.f32 %3955, 3
  %4057 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %4059 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %4060 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %4061 = extractvalue %dx.types.ResRet.i32 %3941, 3
  %4062 = extractvalue %dx.types.ResRet.i32 %3941, 2
  %4063 = bitcast float %4055 to i32
  %4064 = add i32 %4061, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4064, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4067 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4065, %dx.types.Handle %4066, float %3990, float %3997, float undef, float undef, i32 0, i32 0, i32 undef, float %4018, float %4020, float undef, float %4019, float %4021, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = fmul fast float %4068, %4060
  %4070 = fadd fast float %4069, %4059
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = fmul fast float %3990, %3950
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %3951, float %3997, float %4072)  ; FMad(a,b,c)
  %4074 = fadd fast float %4073, %4058
  %4075 = fmul fast float %3990, %3952
  %4076 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %3997, float %4075)  ; FMad(a,b,c)
  %4077 = fadd fast float %4076, %4057
  %4078 = fmul fast float %4018, %3950
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %3951, float %4020, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4018, %3952
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %4020, float %4080)  ; FMad(a,b,c)
  %4082 = fmul fast float %4019, %3950
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %3951, float %4021, float %4082)  ; FMad(a,b,c)
  %4084 = fmul fast float %4019, %3952
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %3953, float %4021, float %4084)  ; FMad(a,b,c)
  %4086 = add i32 %4062, 0
  %4087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4086, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4088 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4087, %dx.types.Handle %4066, float %4074, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4079, float %4081, float undef, float %4083, float %4085, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4089 = extractvalue %dx.types.ResRet.f32 %4088, 0
  %4090 = and i32 %4063, 1024
  %4091 = icmp ne i32 %4090, 0
  %4092 = fcmp fast ogt float %4089, 0x3FE0101020000000
  %4093 = uitofp i1 %4092 to float
  %4094 = select i1 %4091, float %4093, float %4089
  %4095 = and i32 %4063, 8192
  %4096 = icmp ne i32 %4095, 0
  %4097 = select i1 %4096, float %4056, float 1.000000e+00
  %4098 = fmul fast float %3990, 2.000000e+00
  %4099 = fadd fast float %4098, -1.000000e+00
  %4100 = call float @dx.op.unary.f32(i32 6, float %4099)  ; FAbs(value)
  %4101 = fmul fast float %4100, %3983
  %4102 = fsub fast float %4101, %3983
  %4103 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4104 = fmul fast float %3997, 2.000000e+00
  %4105 = fadd fast float %4104, -1.000000e+00
  %4106 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4107 = fmul fast float %4106, %3984
  %4108 = fsub fast float %4107, %3984
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = fmul fast float %4009, %3946
  %4111 = fsub fast float %4110, %3946
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = fmul fast float %4071, %4097
  %4114 = fmul fast float %4113, %4068
  %4115 = fmul fast float %4114, %4103
  %4116 = fmul fast float %4115, %4094
  %4117 = fmul fast float %4116, %4109
  %4118 = fmul fast float %4117, %4112
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4121 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4122 = fsub fast float %4026, %4121
  %4123 = fmul fast float %4122, %4120
  %4124 = call float @dx.op.unary.f32(i32 7, float %4123)  ; Saturate(value)
  %4125 = fmul fast float %4118, %3947
  %4126 = fadd fast float %4118, %3947
  %4127 = fmul fast float %4126, %3956
  %4128 = fsub fast float %4127, %3956
  %4129 = call float @dx.op.unary.f32(i32 7, float %4128)  ; Saturate(value)
  %4130 = and i32 %4063, 128
  %4131 = icmp ne i32 %4130, 0
  %4132 = select i1 %4131, float %4129, float %4125
  %4133 = fmul fast float %4132, %4124
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = fcmp fast ugt float %4133, %4135
  br i1 %4136, label %4137, label %4030

; <label>:4137                                    ; preds = %4054
  %4138 = select i1 %4096, float %4133, float 0.000000e+00
  %4139 = fadd fast float %4138, %3907
  %4140 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  br i1 %4096, label %4030, label %4141

; <label>:4141                                    ; preds = %4137
  %4142 = and i32 %4063, 4
  %4143 = and i32 %4063, 8
  %4144 = add i32 %3942, 0
  %4145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4144, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4145, %dx.types.Handle %4146, float %4074, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4079, float %4081, float undef, float %4083, float %4085, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = extractvalue %dx.types.ResRet.f32 %4147, 3
  %4152 = bitcast float %3968 to i32
  %4153 = and i32 %4152, 255
  %4154 = uitofp i32 %4153 to float
  %4155 = lshr i32 %4152, 8
  %4156 = and i32 %4155, 255
  %4157 = uitofp i32 %4156 to float
  %4158 = fmul fast float %4151, %4154
  %4159 = fadd fast float %4158, %4157
  %4160 = fmul fast float %4159, 0x3F70101000000000
  %4161 = add i32 %3943, 0
  %4162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4161, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4163 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4162, %dx.types.Handle %4146, float %4074, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4079, float %4081, float undef, float %4083, float %4085, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4168 = bitcast float %3962 to i32
  %4169 = and i32 %4168, 255
  %4170 = uitofp i32 %4169 to float
  %4171 = lshr i32 %4168, 8
  %4172 = and i32 %4171, 255
  %4173 = uitofp i32 %4172 to float
  %4174 = lshr i32 %4168, 16
  %4175 = and i32 %4174, 255
  %4176 = uitofp i32 %4175 to float
  %4177 = fmul fast float %4176, 0x3F70101000000000
  %4178 = fmul fast float %4164, %4170
  %4179 = fadd fast float %4178, %4173
  %4180 = fmul fast float %4179, 0x3F70101000000000
  %4181 = fadd fast float %4165, -5.000000e-01
  %4182 = fadd fast float %4167, -5.000000e-01
  %4183 = fmul fast float %4181, %4177
  %4184 = fmul fast float %4182, %4177
  %4185 = fadd fast float %4183, 5.000000e-01
  %4186 = fadd fast float %4184, 5.000000e-01
  %4187 = fmul fast float %4148, %3971
  %4188 = fmul fast float %4149, %3972
  %4189 = fmul fast float %4150, %3973
  %4190 = fmul fast float %4185, 2.000000e+00
  %4191 = fadd fast float %4190, -1.000000e+00
  %4192 = fmul fast float %4186, 2.000000e+00
  %4193 = fadd fast float %4192, -1.000000e+00
  %4194 = fadd fast float %4191, %4193
  %4195 = fmul fast float %4194, 5.000000e-01
  %4196 = fsub fast float %4191, %4193
  %4197 = fmul fast float %4196, 5.000000e-01
  %4198 = call float @dx.op.unary.f32(i32 6, float %4195)  ; FAbs(value)
  %4199 = fsub fast float 1.000000e+00, %4198
  %4200 = call float @dx.op.unary.f32(i32 6, float %4197)  ; FAbs(value)
  %4201 = fsub fast float %4199, %4200
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4195, float %4197, float %4201, float %4195, float %4197, float %4201)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = call float @dx.op.unary.f32(i32 25, float %4202)  ; Rsqrt(value)
  %4204 = fmul fast float %4195, %4203
  %4205 = fmul fast float %4197, %4203
  %4206 = fmul fast float %4203, %4201
  %4207 = fmul fast float %4206, %3937
  %4208 = fmul fast float %4206, %3938
  %4209 = fmul fast float %4206, %3939
  %4210 = fmul fast float %4204, %3959
  %4211 = fmul fast float %4204, %3960
  %4212 = fmul fast float %4204, %3961
  %4213 = fadd fast float %4210, %4207
  %4214 = fadd fast float %4211, %4208
  %4215 = fadd fast float %4212, %4209
  %4216 = fmul fast float %4205, %3965
  %4217 = fmul fast float %4205, %3966
  %4218 = fmul fast float %4205, %3967
  %4219 = fadd fast float %4213, %4216
  %4220 = fadd fast float %4214, %4217
  %4221 = fadd fast float %4215, %4218
  %4222 = call float @dx.op.dot3.f32(i32 55, float %4219, float %4220, float %4221, float %4219, float %4220, float %4221)  ; Dot3(ax,ay,az,bx,by,bz)
  %4223 = call float @dx.op.unary.f32(i32 25, float %4222)  ; Rsqrt(value)
  %4224 = fmul fast float %4219, %4223
  %4225 = fmul fast float %4220, %4223
  %4226 = fmul fast float %4221, %4223
  %4227 = icmp ne i32 %4143, 0
  %4228 = select i1 %4227, float 1.000000e+00, float 0.000000e+00
  %4229 = fmul fast float %4133, %4228
  %4230 = and i32 %4063, 1
  %4231 = icmp eq i32 %4230, 0
  br i1 %4231, label %4232, label %4236

; <label>:4232                                    ; preds = %4141
  %4233 = fsub fast float %4224, %3919
  %4234 = fsub fast float %4225, %3920
  %4235 = fsub fast float %4226, %3921
  br label %4236

; <label>:4236                                    ; preds = %4232, %4141
  %4237 = phi float [ %4233, %4232 ], [ %4224, %4141 ]
  %4238 = phi float [ %4234, %4232 ], [ %4225, %4141 ]
  %4239 = phi float [ %4235, %4232 ], [ %4226, %4141 ]
  %4240 = fmul float %4239, %4229
  %4241 = fmul float %4238, %4229
  %4242 = fmul float %4237, %4229
  %4243 = fadd fast float %4242, %3919
  %4244 = fadd fast float %4241, %3920
  %4245 = fadd fast float %4240, %3921
  %4246 = icmp ne i32 %4142, 0
  %4247 = select i1 %4246, float 1.000000e+00, float 0.000000e+00
  %4248 = fmul fast float %4133, %4247
  %4249 = fsub fast float %4187, %3926
  %4250 = fsub fast float %4188, %3927
  %4251 = fsub fast float %4189, %3928
  %4252 = fmul fast float %4249, %4248
  %4253 = fmul fast float %4250, %4248
  %4254 = fmul fast float %4251, %4248
  %4255 = fadd fast float %4252, %3926
  %4256 = fadd fast float %4253, %3927
  %4257 = fadd fast float %4254, %3928
  %4258 = fsub fast float %4160, %3925
  %4259 = fmul fast float %4258, %4248
  %4260 = fadd fast float %4259, %3925
  %4261 = fmul fast float %4248, %3915
  %4262 = fsub fast float %3915, %4261
  %4263 = fmul fast float %4248, %3914
  %4264 = fsub fast float %3914, %4263
  %4265 = bitcast float %3980 to i32
  %4266 = fadd fast float %4133, %3924
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = fsub fast float %4180, %3923
  %4269 = fmul fast float %4268, %4229
  %4270 = fadd fast float %4269, %3923
  %4271 = fsub fast float %4166, %3922
  %4272 = fmul fast float %4271, %4229
  %4273 = fadd fast float %4272, %3922
  br i1 %4231, label %4282, label %4274

; <label>:4274                                    ; preds = %4236
  %4275 = and i32 %4063, 32768
  %4276 = icmp eq i32 %4275, 0
  br i1 %4276, label %4292, label %4277

; <label>:4277                                    ; preds = %4274
  %4278 = fmul fast float %4229, 1.270000e+02
  %4279 = fadd fast float %4278, %3911
  %4280 = fadd fast float %4278, %3912
  %4281 = fadd fast float %4278, %3913
  br label %4292

; <label>:4282                                    ; preds = %4236
  %4283 = fsub fast float 1.270000e+02, %3911
  %4284 = fsub fast float 1.270000e+02, %3912
  %4285 = fsub fast float 1.270000e+02, %3913
  %4286 = fmul fast float %4229, %4283
  %4287 = fmul fast float %4229, %4284
  %4288 = fmul fast float %4229, %4285
  %4289 = fadd fast float %4286, %3911
  %4290 = fadd fast float %4287, %3912
  %4291 = fadd fast float %4288, %3913
  br label %4292

; <label>:4292                                    ; preds = %4282, %4277, %4274
  %4293 = phi float [ %4279, %4277 ], [ %3911, %4274 ], [ %4289, %4282 ]
  %4294 = phi float [ %4280, %4277 ], [ %3912, %4274 ], [ %4290, %4282 ]
  %4295 = phi float [ %4281, %4277 ], [ %3913, %4274 ], [ %4291, %4282 ]
  %4296 = call float @dx.op.dot3.f32(i32 55, float %4187, float %4188, float %4189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4300 = fmul fast float %4299, %4296
  %4301 = fadd fast float %4300, %4298
  %4302 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4303 = bitcast float %3974 to i32
  %4304 = and i32 %4303, 65535
  %4305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4304)  ; LegacyF16ToF32(value)
  %4306 = lshr i32 %4303, 16
  %4307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4306)  ; LegacyF16ToF32(value)
  %4308 = fcmp fast oge float %4305, 0.000000e+00
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = select i1 %4308, float %4305, float %4310
  %4312 = fadd fast float %4311, %4307
  %4313 = fsub fast float %4302, %3910
  %4314 = fmul fast float %4313, %4133
  %4315 = fadd fast float %4314, %3910
  %4316 = fmul fast float %4312, %4133
  %4317 = call float @dx.op.binary.f32(i32 35, float %3909, float %4316)  ; FMax(a,b)
  %4318 = call float @dx.op.binary.f32(i32 35, float %3908, float %4133)  ; FMax(a,b)
  %4319 = and i32 %4063, 16
  %4320 = icmp eq i32 %4319, 0
  br i1 %4320, label %4342, label %4321

; <label>:4321                                    ; preds = %4292
  %4322 = add i32 %3977, 0
  %4323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4324 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4323, %dx.types.Handle %4146, float %4074, float %4077, float undef, float undef, i32 0, i32 0, i32 undef, float %4079, float %4081, float undef, float %4083, float %4085, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.ResRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.ResRet.f32 %4324, 2
  %4328 = and i32 %4265, 65535
  %4329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4328)  ; LegacyF16ToF32(value)
  %4330 = fmul fast float %4325, %3971
  %4331 = fmul fast float %4326, %3972
  %4332 = fmul fast float %4327, %3973
  %4333 = and i32 %4063, 16384
  %4334 = icmp ne i32 %4333, 0
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = select i1 %4334, float %4336, float 1.000000e+00
  %4338 = fmul fast float %4337, %4329
  %4339 = fmul fast float %4330, %4338
  %4340 = fmul fast float %4331, %4338
  %4341 = fmul fast float %4332, %4338
  br label %4342

; <label>:4342                                    ; preds = %4321, %4292
  %4343 = phi float [ %4339, %4321 ], [ 0.000000e+00, %4292 ]
  %4344 = phi float [ %4340, %4321 ], [ 0.000000e+00, %4292 ]
  %4345 = phi float [ %4341, %4321 ], [ 0.000000e+00, %4292 ]
  %4346 = fsub fast float %4343, %3916
  %4347 = fsub fast float %4344, %3917
  %4348 = fsub fast float %4345, %3918
  %4349 = fmul fast float %4346, %4133
  %4350 = fmul fast float %4347, %4133
  %4351 = fmul fast float %4348, %4133
  %4352 = fadd fast float %4349, %3916
  %4353 = fadd fast float %4350, %3917
  %4354 = fadd fast float %4351, %3918
  br label %4030

; <label>:4355                                    ; preds = %4030
  br label %4356

; <label>:4356                                    ; preds = %4355, %3842
  %4357 = phi float [ 0.000000e+00, %3842 ], [ %4031, %4355 ]
  %4358 = phi float [ %1142, %3842 ], [ %4032, %4355 ]
  %4359 = phi float [ %3812, %3842 ], [ %4033, %4355 ]
  %4360 = phi float [ %3810, %3842 ], [ %4034, %4355 ]
  %4361 = phi float [ %3803, %3842 ], [ %4035, %4355 ]
  %4362 = phi float [ %3804, %3842 ], [ %4036, %4355 ]
  %4363 = phi float [ %3805, %3842 ], [ %4037, %4355 ]
  %4364 = phi float [ 0.000000e+00, %3842 ], [ %4038, %4355 ]
  %4365 = phi float [ 0.000000e+00, %3842 ], [ %4039, %4355 ]
  %4366 = phi float [ %3800, %3842 ], [ %4040, %4355 ]
  %4367 = phi float [ %3801, %3842 ], [ %4041, %4355 ]
  %4368 = phi float [ %3802, %3842 ], [ %4042, %4355 ]
  %4369 = phi float [ %3838, %3842 ], [ %4043, %4355 ]
  %4370 = phi float [ %3839, %3842 ], [ %4044, %4355 ]
  %4371 = phi float [ %3840, %3842 ], [ %4045, %4355 ]
  %4372 = phi float [ %3808, %3842 ], [ %4046, %4355 ]
  %4373 = phi float [ %3807, %3842 ], [ %4047, %4355 ]
  %4374 = phi float [ 0.000000e+00, %3842 ], [ %4048, %4355 ]
  %4375 = phi float [ %3806, %3842 ], [ %4049, %4355 ]
  %4376 = phi float [ %3797, %3842 ], [ %4050, %4355 ]
  %4377 = phi float [ %3798, %3842 ], [ %4051, %4355 ]
  %4378 = phi float [ %3799, %3842 ], [ %4052, %4355 ]
  %4379 = call float @dx.op.dot3.f32(i32 55, float %4369, float %4370, float %4371, float %4369, float %4370, float %4371)  ; Dot3(ax,ay,az,bx,by,bz)
  %4380 = call float @dx.op.unary.f32(i32 25, float %4379)  ; Rsqrt(value)
  %4381 = fmul fast float %4380, %4369
  %4382 = fmul fast float %4380, %4370
  %4383 = fmul fast float %4380, %4371
  %4384 = fadd fast float %4374, %1142
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = call float @dx.op.dot3.f32(i32 55, float %4381, float %4382, float %4383, float %4381, float %4382, float %4383)  ; Dot3(ax,ay,az,bx,by,bz)
  %4387 = call float @dx.op.unary.f32(i32 25, float %4386)  ; Rsqrt(value)
  %4388 = fmul fast float %4387, %4381
  %4389 = fmul fast float %4387, %4382
  %4390 = fmul fast float %4387, %4383
  br label %4391

; <label>:4391                                    ; preds = %4356, %3794
  %4392 = phi float [ %4388, %4356 ], [ %3838, %3794 ]
  %4393 = phi float [ %4389, %4356 ], [ %3839, %3794 ]
  %4394 = phi float [ %4390, %4356 ], [ %3840, %3794 ]
  %4395 = phi float [ %4376, %4356 ], [ %3797, %3794 ]
  %4396 = phi float [ %4377, %4356 ], [ %3798, %3794 ]
  %4397 = phi float [ %4378, %4356 ], [ %3799, %3794 ]
  %4398 = phi float [ %4366, %4356 ], [ %3800, %3794 ]
  %4399 = phi float [ %4367, %4356 ], [ %3801, %3794 ]
  %4400 = phi float [ %4368, %4356 ], [ %3802, %3794 ]
  %4401 = phi float [ %4361, %4356 ], [ %3803, %3794 ]
  %4402 = phi float [ %4362, %4356 ], [ %3804, %3794 ]
  %4403 = phi float [ %4363, %4356 ], [ %3805, %3794 ]
  %4404 = phi float [ %4375, %4356 ], [ %3806, %3794 ]
  %4405 = phi float [ %4385, %4356 ], [ %1142, %3794 ]
  %4406 = phi float [ %4373, %4356 ], [ %3807, %3794 ]
  %4407 = phi float [ %4372, %4356 ], [ %3808, %3794 ]
  %4408 = phi float [ %4365, %4356 ], [ 0.000000e+00, %3794 ]
  %4409 = phi float [ %4364, %4356 ], [ 0.000000e+00, %3794 ]
  %4410 = phi float [ %4357, %4356 ], [ 0.000000e+00, %3794 ]
  %4411 = phi float [ %4359, %4356 ], [ %3812, %3794 ]
  %4412 = phi float [ %4358, %4356 ], [ %1142, %3794 ]
  %4413 = phi float [ %4360, %4356 ], [ %3810, %3794 ]
  %4414 = fadd fast float %4404, 0xBFB99999A0000000
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4415, 0x3FF1C71C80000000
  %4417 = call float @dx.op.binary.f32(i32 36, float %4404, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4418 = fsub fast float 1.000000e+00, %4416
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fmul fast float %4419, %4395
  %4421 = fmul fast float %4419, %4396
  %4422 = fmul fast float %4419, %4397
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4426 = fmul fast float %4416, %4395
  %4427 = fmul fast float %4416, %4396
  %4428 = fmul fast float %4416, %4397
  %4429 = fadd fast float %4426, %4417
  %4430 = fadd fast float %4427, %4417
  %4431 = fadd fast float %4428, %4417
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4436 = call float @dx.op.binary.f32(i32 36, float %4401, float 1.270000e+02)  ; FMin(a,b)
  %4437 = call float @dx.op.binary.f32(i32 36, float %4402, float 1.270000e+02)  ; FMin(a,b)
  %4438 = call float @dx.op.binary.f32(i32 36, float %4403, float 1.270000e+02)  ; FMin(a,b)
  %4439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.i32 %4439, 3
  %4441 = and i32 %4440, 8
  %4442 = icmp ne i32 %4441, 0
  %4443 = call float @dx.op.binary.f32(i32 35, float %4423, float %4395)  ; FMax(a,b)
  %4444 = call float @dx.op.binary.f32(i32 35, float %4424, float %4395)  ; FMax(a,b)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4425, float %4395)  ; FMax(a,b)
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4423, float %4424, float %4425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = select i1 %260, float %4395, float %4423
  %4448 = select i1 %260, float %4446, float %4424
  %4449 = select i1 %260, float 1.000000e+00, float %4425
  %4450 = select i1 %4442, float %4443, float %4447
  %4451 = select i1 %4442, float %4444, float %4448
  %4452 = select i1 %4442, float %4445, float %4449
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.CBufRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.CBufRet.f32 %4453, 2
  %4457 = fadd fast float %4454, %201
  %4458 = fadd fast float %4455, %202
  %4459 = fadd fast float %4456, %203
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4462 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4463 = fsub fast float %4457, %4461
  %4464 = fsub fast float %4458, %4462
  %4465 = fmul fast float %4463, %4463
  %4466 = fmul fast float %4464, %4464
  %4467 = fadd fast float %4465, %4466
  %4468 = call float @dx.op.unary.f32(i32 24, float %4467)  ; Sqrt(value)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4460, 2
  %4470 = fcmp fast olt float %4468, %4469
  br i1 %4470, label %4471, label %4538

; <label>:4471                                    ; preds = %4391
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 0
  %4478 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4479 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4480 = extractvalue %dx.types.CBufRet.f32 %4476, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4482 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4483 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4484 = fadd fast float %4481, %4457
  %4485 = fadd fast float %4482, %4458
  %4486 = fadd fast float %4483, %4459
  %4487 = fmul fast float %4484, %4473
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4475, float %4487)  ; FMad(a,b,c)
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4486, float %4477, float %4488)  ; FMad(a,b,c)
  %4490 = fmul fast float %4484, %4478
  %4491 = call float @dx.op.tertiary.f32(i32 46, float %4485, float %4479, float %4490)  ; FMad(a,b,c)
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4486, float %4480, float %4491)  ; FMad(a,b,c)
  %4493 = fsub fast float %4489, %4481
  %4494 = fsub fast float %4492, %4482
  %4495 = fsub fast float %4493, %4461
  %4496 = fadd fast float %4495, %4469
  %4497 = fsub fast float %4494, %4462
  %4498 = fadd fast float %4497, %4469
  %4499 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4500 = fmul fast float %4496, %4499
  %4501 = fmul fast float %4498, %4499
  %4502 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4504 = fsub fast float 1.000000e+00, %4502
  %4505 = fsub fast float 1.000000e+00, %4503
  %4506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4504, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = fcmp fast ugt float %4507, 0.000000e+00
  br i1 %4508, label %4509, label %4812

; <label>:4509                                    ; preds = %4471
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4512 = fmul fast float %4511, %4507
  %4513 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4514 = fadd fast float %4513, %4512
  %4515 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4516 = fadd fast float %4514, %4483
  %4517 = fmul fast float %4489, %4477
  %4518 = call float @dx.op.tertiary.f32(i32 46, float %4492, float %4480, float %4517)  ; FMad(a,b,c)
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4516, float %4515, float %4518)  ; FMad(a,b,c)
  %4520 = fsub fast float %4519, %4483
  %4521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.f32 %4521, 2
  %4523 = fsub fast float %4520, %4522
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4504, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.ResRet.f32 %4524, 1
  %4527 = extractvalue %dx.types.ResRet.f32 %4524, 2
  %4528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4504, float %4505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4529 = extractvalue %dx.types.ResRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.ResRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.ResRet.f32 %4528, 2
  %4532 = fadd fast float %4529, %4525
  %4533 = fmul fast float %4532, 0x3F847AE140000000
  %4534 = fadd fast float %4530, %4526
  %4535 = fmul fast float %4534, 0x3F847AE140000000
  %4536 = fadd fast float %4531, %4527
  %4537 = fmul fast float %4536, 0x3F847AE140000000
  br label %4812

; <label>:4538                                    ; preds = %4391
  %4539 = and i32 %239, 1
  %4540 = icmp eq i32 %4539, 0
  br i1 %4540, label %4812, label %4541

; <label>:4541                                    ; preds = %4538
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 0
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 0
  %4548 = extractvalue %dx.types.CBufRet.f32 %4542, 1
  %4549 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4550 = extractvalue %dx.types.CBufRet.f32 %4546, 1
  %4551 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4552 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4553 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4554 = fadd fast float %4551, %4457
  %4555 = fadd fast float %4552, %4458
  %4556 = fadd fast float %4553, %4459
  %4557 = fmul fast float %4554, %4543
  %4558 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4545, float %4557)  ; FMad(a,b,c)
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4547, float %4558)  ; FMad(a,b,c)
  %4560 = fmul fast float %4554, %4548
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4549, float %4560)  ; FMad(a,b,c)
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4550, float %4561)  ; FMad(a,b,c)
  %4563 = fsub fast float %4559, %4551
  %4564 = fsub fast float %4562, %4552
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.CBufRet.f32 %4565, 2
  %4569 = extractvalue %dx.types.CBufRet.f32 %4565, 3
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.i32 %4572, 0
  %4574 = extractvalue %dx.types.CBufRet.i32 %4572, 1
  %4575 = udiv i32 %4574, %4573
  %4576 = fsub fast float %4563, %4566
  %4577 = fsub fast float %4564, %4567
  %4578 = call float @dx.op.binary.f32(i32 35, float %4576, float 0.000000e+00)  ; FMax(a,b)
  %4579 = call float @dx.op.binary.f32(i32 35, float %4577, float 0.000000e+00)  ; FMax(a,b)
  %4580 = call float @dx.op.binary.f32(i32 36, float %4578, float %4568)  ; FMin(a,b)
  %4581 = call float @dx.op.binary.f32(i32 36, float %4579, float %4569)  ; FMin(a,b)
  %4582 = add i32 %4573, -1
  %4583 = add i32 %4575, -1
  %4584 = fmul fast float %4580, %4571
  %4585 = fmul fast float %4581, %4571
  %4586 = fptoui float %4584 to i32
  %4587 = fptoui float %4585 to i32
  %4588 = call i32 @dx.op.binary.i32(i32 40, i32 %4586, i32 %4582)  ; UMin(a,b)
  %4589 = call i32 @dx.op.binary.i32(i32 40, i32 %4587, i32 %4583)  ; UMin(a,b)
  %4590 = mul i32 %4589, %4573
  %4591 = add i32 %4590, %4588
  %4592 = shl i32 %4591, 2
  %4593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.i32 %4593, 0
  %4595 = icmp eq i32 %4594, -1
  br i1 %4595, label %4812, label %4596

; <label>:4596                                    ; preds = %4541
  %4597 = mul i32 %4594, 148
  %4598 = add i32 %4597, 4
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = add i32 %4597, 8
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = add i32 %4597, 36
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = add i32 %4597, 60
  %4608 = add i32 %4597, 92
  %4609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4608, i32 undef)  ; BufferLoad(srv,index,wot)
  %4610 = extractvalue %dx.types.ResRet.i32 %4609, 0
  %4611 = add i32 %4597, 116
  %4612 = fsub fast float %4563, %4600
  %4613 = fsub fast float %4564, %4603
  %4614 = fmul fast float %4571, %4612
  %4615 = fmul fast float %4571, %4613
  %4616 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4618 = fsub fast float 1.000000e+00, %4617
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4621 = call float @dx.op.unary.f32(i32 83, float %4616)  ; DerivCoarseX(value)
  %4622 = call float @dx.op.unary.f32(i32 83, float %4618)  ; DerivCoarseX(value)
  %4623 = call float @dx.op.unary.f32(i32 84, float %4616)  ; DerivCoarseY(value)
  %4624 = call float @dx.op.unary.f32(i32 84, float %4618)  ; DerivCoarseY(value)
  %4625 = fmul fast float %4621, %4620
  %4626 = fmul fast float %4622, %4620
  %4627 = fmul fast float %4623, %4620
  %4628 = fmul fast float %4624, %4620
  %4629 = call float @dx.op.dot2.f32(i32 54, float %4627, float %4628, float %4627, float %4628)  ; Dot2(ax,ay,bx,by)
  %4630 = call float @dx.op.dot2.f32(i32 54, float %4625, float %4626, float %4625, float %4626)  ; Dot2(ax,ay,bx,by)
  %4631 = call float @dx.op.binary.f32(i32 35, float %4630, float %4629)  ; FMax(a,b)
  %4632 = call float @dx.op.unary.f32(i32 23, float %4631)  ; Log(value)
  %4633 = fmul fast float %4632, 5.000000e-01
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4636 = fadd fast float %4635, %4633
  %4637 = call float @dx.op.binary.f32(i32 35, float %4636, float 0.000000e+00)  ; FMax(a,b)
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4640 = fadd fast float %4639, %4637
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4643 = fadd fast float %4640, %4642
  %4644 = add i32 %4610, 0
  %4645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4644, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4646 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4645, i32 0)  ; GetDimensions(handle,mipLevel)
  %4647 = extractvalue %dx.types.Dimensions %4646, 0
  %4648 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4647)  ; FirstbitLo(value)
  %4649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.i32 %4649, 1
  %4651 = sub nsw i32 %4650, %4648
  %4652 = sitofp i32 %4651 to float
  %4653 = fsub fast float %4643, %4652
  %4654 = call float @dx.op.binary.f32(i32 35, float %4653, float 0.000000e+00)  ; FMax(a,b)
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4645, %dx.types.Handle %52, float %4616, float %4618, float %4606, float undef, i32 0, i32 0, i32 undef, float %4654)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = fcmp ule float %4656, 0x3FE0101020000000
  %4658 = extractvalue %dx.types.CBufRet.i32 %4649, 0
  %4659 = and i32 %4658, 128
  %4660 = icmp ne i32 %4659, 0
  %4661 = and i1 %4657, %4660
  br i1 %4661, label %4812, label %4662

; <label>:4662                                    ; preds = %4596
  %4663 = add i32 %4597, 20
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = add i32 %4597, 24
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = add i32 %4597, 40
  %4670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = add i32 %4597, 96
  %4673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4672, i32 undef)  ; BufferLoad(srv,index,wot)
  %4674 = extractvalue %dx.types.ResRet.i32 %4673, 0
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4677 = fmul fast float %4676, %4616
  %4678 = fmul fast float %4676, %4618
  %4679 = extractvalue %dx.types.CBufRet.f32 %4675, 3
  %4680 = fadd fast float %4677, %4679
  %4681 = fadd fast float %4678, %4679
  %4682 = add i32 %4674, 0
  %4683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4682, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4684 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4683, i32 0)  ; GetDimensions(handle,mipLevel)
  %4685 = extractvalue %dx.types.Dimensions %4684, 0
  %4686 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4685)  ; FirstbitLo(value)
  %4687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.i32 %4687, 1
  %4689 = sub nsw i32 %4688, %4686
  %4690 = sitofp i32 %4689 to float
  %4691 = fsub fast float %4640, %4690
  %4692 = call float @dx.op.binary.f32(i32 35, float %4691, float 0.000000e+00)  ; FMax(a,b)
  %4693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4683, %dx.types.Handle %52, float %4680, float %4681, float %4671, float undef, i32 0, i32 0, i32 undef, float %4692)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = fmul fast float %4694, %4665
  %4696 = fadd fast float %4695, %4668
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.CBufRet.f32 %4697, 2
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4705 = extractvalue %dx.types.CBufRet.f32 %4697, 3
  %4706 = fadd fast float %4702, %4563
  %4707 = fadd fast float %4704, %4564
  %4708 = fadd fast float %4696, %4705
  %4709 = fmul fast float %4706, %4698
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4707, float %4699, float %4709)  ; FMad(a,b,c)
  %4711 = call float @dx.op.tertiary.f32(i32 46, float %4708, float %4700, float %4710)  ; FMad(a,b,c)
  %4712 = fsub fast float %4711, %4705
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4715 = fsub fast float %4712, %4714
  %4716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.i32 %4716, 0
  %4718 = call i32 @dx.op.binary.i32(i32 40, i32 %4594, i32 %4717)  ; UMin(a,b)
  %4719 = mul i32 %4718, 36
  %4720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4719, i32 undef)  ; BufferLoad(srv,index,wot)
  %4721 = extractvalue %dx.types.ResRet.i32 %4720, 0
  %4722 = add i32 %4719, 4
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = fmul fast float %4724, %4616
  %4726 = fmul fast float %4724, %4618
  %4727 = extractvalue %dx.types.CBufRet.f32 %4723, 1
  %4728 = fadd fast float %4725, %4727
  %4729 = fadd fast float %4726, %4727
  %4730 = icmp eq i32 %4721, 0
  br i1 %4730, label %4799, label %4731

; <label>:4731                                    ; preds = %4662
  br label %4732

; <label>:4732                                    ; preds = %4789, %4731
  %4733 = phi float [ %4790, %4789 ], [ 0.000000e+00, %4731 ]
  %4734 = phi float [ %4791, %4789 ], [ 0.000000e+00, %4731 ]
  %4735 = phi float [ %4792, %4789 ], [ 0.000000e+00, %4731 ]
  %4736 = phi float [ %4793, %4789 ], [ 0.000000e+00, %4731 ]
  %4737 = phi float [ %4794, %4789 ], [ 0.000000e+00, %4731 ]
  %4738 = phi float [ %4795, %4789 ], [ 0.000000e+00, %4731 ]
  %4739 = phi i32 [ %4796, %4789 ], [ 0, %4731 ]
  %4740 = shl i32 %4739, 2
  %4741 = add i32 %4607, %4740
  %4742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4741, i32 undef)  ; BufferLoad(srv,index,wot)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = add i32 %4611, %4740
  %4745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4744, i32 undef)  ; BufferLoad(srv,index,wot)
  %4746 = extractvalue %dx.types.ResRet.i32 %4745, 0
  %4747 = add i32 %4746, 0
  %4748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4747, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4749 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4748, i32 0)  ; GetDimensions(handle,mipLevel)
  %4750 = extractvalue %dx.types.Dimensions %4749, 0
  %4751 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4750)  ; FirstbitLo(value)
  %4752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.i32 %4752, 1
  %4754 = sub nsw i32 %4753, %4751
  %4755 = sitofp i32 %4754 to float
  %4756 = fsub fast float %4640, %4755
  %4757 = call float @dx.op.binary.f32(i32 35, float %4756, float 0.000000e+00)  ; FMax(a,b)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4748, %dx.types.Handle %52, float %4728, float %4729, float %4743, float undef, i32 0, i32 0, i32 undef, float %4757)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = fcmp fast ogt float %4759, 0.000000e+00
  br i1 %4760, label %4761, label %4789

; <label>:4761                                    ; preds = %4732
  %4762 = add i32 %4722, %4740
  %4763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4762, i32 undef)  ; BufferLoad(srv,index,wot)
  %4764 = extractvalue %dx.types.ResRet.i32 %4763, 0
  %4765 = and i32 %4764, 32767
  %4766 = mul nuw nsw i32 %4765, 928
  %4767 = add nuw nsw i32 %4766, 48
  %4768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4767, i32 undef)  ; BufferLoad(srv,index,wot)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = add nuw nsw i32 %4766, 60
  %4773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = fmul fast float %4769, %4759
  %4778 = fmul fast float %4770, %4759
  %4779 = fmul fast float %4771, %4759
  %4780 = fadd fast float %4777, %4733
  %4781 = fadd fast float %4778, %4734
  %4782 = fadd fast float %4779, %4735
  %4783 = fmul fast float %4774, %4759
  %4784 = fmul fast float %4775, %4759
  %4785 = fmul fast float %4776, %4759
  %4786 = fadd fast float %4783, %4736
  %4787 = fadd fast float %4784, %4737
  %4788 = fadd fast float %4785, %4738
  br label %4789

; <label>:4789                                    ; preds = %4761, %4732
  %4790 = phi float [ %4780, %4761 ], [ %4733, %4732 ]
  %4791 = phi float [ %4781, %4761 ], [ %4734, %4732 ]
  %4792 = phi float [ %4782, %4761 ], [ %4735, %4732 ]
  %4793 = phi float [ %4786, %4761 ], [ %4736, %4732 ]
  %4794 = phi float [ %4787, %4761 ], [ %4737, %4732 ]
  %4795 = phi float [ %4788, %4761 ], [ %4738, %4732 ]
  %4796 = add nuw i32 %4739, 1
  %4797 = icmp eq i32 %4796, %4721
  br i1 %4797, label %4798, label %4732

; <label>:4798                                    ; preds = %4789
  br label %4799

; <label>:4799                                    ; preds = %4798, %4662
  %4800 = phi float [ 0.000000e+00, %4662 ], [ %4790, %4798 ]
  %4801 = phi float [ 0.000000e+00, %4662 ], [ %4791, %4798 ]
  %4802 = phi float [ 0.000000e+00, %4662 ], [ %4792, %4798 ]
  %4803 = phi float [ 0.000000e+00, %4662 ], [ %4793, %4798 ]
  %4804 = phi float [ 0.000000e+00, %4662 ], [ %4794, %4798 ]
  %4805 = phi float [ 0.000000e+00, %4662 ], [ %4795, %4798 ]
  %4806 = fadd fast float %4803, %4800
  %4807 = fmul fast float %4806, 0x3F847AE140000000
  %4808 = fadd fast float %4804, %4801
  %4809 = fmul fast float %4808, 0x3F847AE140000000
  %4810 = fadd fast float %4805, %4802
  %4811 = fmul fast float %4810, 0x3F847AE140000000
  br label %4812

; <label>:4812                                    ; preds = %4799, %4596, %4541, %4538, %4509, %4471
  %4813 = phi float [ %4533, %4509 ], [ 0.000000e+00, %4471 ], [ %4807, %4799 ], [ 0.000000e+00, %4541 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4538 ]
  %4814 = phi float [ %4535, %4509 ], [ 0.000000e+00, %4471 ], [ %4809, %4799 ], [ 0.000000e+00, %4541 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4538 ]
  %4815 = phi float [ %4537, %4509 ], [ 0.000000e+00, %4471 ], [ %4811, %4799 ], [ 0.000000e+00, %4541 ], [ 0.000000e+00, %4596 ], [ 0.000000e+00, %4538 ]
  %4816 = phi float [ %4523, %4509 ], [ -1.310720e+05, %4471 ], [ %4715, %4799 ], [ -1.310720e+05, %4541 ], [ -1.310720e+05, %4596 ], [ -1.310720e+05, %4538 ]
  %4817 = phi i1 [ true, %4509 ], [ false, %4471 ], [ true, %4799 ], [ false, %4541 ], [ false, %4596 ], [ false, %4538 ]
  %4818 = and i32 %239, 3
  %4819 = icmp eq i32 %4818, 1
  %4820 = select i1 %4819, float 1.000000e+00, float 0.000000e+00
  %4821 = fsub fast float %4816, %203
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = select i1 %4817, float %4822, float 1.000000e+00
  %4824 = fmul fast float %4823, %4820
  %4825 = icmp eq i32 %4818, 3
  %4826 = select i1 %4825, float 1.000000e+00, float %4824
  %4827 = call float @dx.op.binary.f32(i32 35, float %4410, float %4826)  ; FMax(a,b)
  %4828 = fcmp fast olt float %4826, 1.000000e+00
  %4829 = fcmp uge float %75, 0.000000e+00
  %4830 = and i1 %4829, %4828
  br i1 %4830, label %4831, label %4841

; <label>:4831                                    ; preds = %4812
  %4832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4833 = extractvalue %dx.types.ResRet.f32 %4832, 0
  %4834 = extractvalue %dx.types.ResRet.f32 %4832, 1
  %4835 = extractvalue %dx.types.ResRet.f32 %4832, 2
  %4836 = fadd fast float %4833, %4827
  %4837 = fcmp ule float %74, 0.000000e+00
  %4838 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = select i1 %4837, float %4838, float 1.000000e+00
  %4840 = fmul fast float %4839, %4835
  br label %4841

; <label>:4841                                    ; preds = %4831, %4812
  %4842 = phi float [ %4836, %4831 ], [ %4827, %4812 ]
  %4843 = phi float [ %4834, %4831 ], [ 0.000000e+00, %4812 ]
  %4844 = phi float [ %4840, %4831 ], [ 0.000000e+00, %4812 ]
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4848 = fcmp fast une float %4846, 0.000000e+00
  %4849 = fcmp fast une float %4847, 0.000000e+00
  %4850 = or i1 %4848, %4849
  br i1 %4850, label %4851, label %5410

; <label>:4851                                    ; preds = %4841
  br i1 %4848, label %4852, label %5125

; <label>:4852                                    ; preds = %4851
  %4853 = call float @dx.op.unary.f32(i32 23, float %4407)  ; Log(value)
  %4854 = fmul fast float %4853, 4.000000e+00
  %4855 = call float @dx.op.unary.f32(i32 21, float %4854)  ; Exp(value)
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = fmul fast float %4857, %62
  %4859 = fmul fast float %4857, %63
  %4860 = fmul fast float %4857, %64
  %4861 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4862 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4863 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4864 = call float @dx.op.unary.f32(i32 23, float %4861)  ; Log(value)
  %4865 = call float @dx.op.unary.f32(i32 23, float %4862)  ; Log(value)
  %4866 = call float @dx.op.unary.f32(i32 23, float %4863)  ; Log(value)
  %4867 = fmul fast float %4864, 4.000000e+00
  %4868 = fmul fast float %4865, 4.000000e+00
  %4869 = fmul fast float %4866, 4.000000e+00
  %4870 = call float @dx.op.unary.f32(i32 21, float %4867)  ; Exp(value)
  %4871 = call float @dx.op.unary.f32(i32 21, float %4868)  ; Exp(value)
  %4872 = call float @dx.op.unary.f32(i32 21, float %4869)  ; Exp(value)
  %4873 = fadd fast float %4871, %4870
  %4874 = fadd fast float %4873, %4872
  %4875 = fdiv fast float 1.000000e+00, %4874
  %4876 = fmul fast float %4875, %4870
  %4877 = fcmp fast ogt float %71, 0.000000e+00
  %4878 = fcmp fast ogt float %72, 0.000000e+00
  %4879 = fcmp fast ogt float %73, 0.000000e+00
  %4880 = fcmp fast olt float %71, 0.000000e+00
  %4881 = fcmp fast olt float %72, 0.000000e+00
  %4882 = fcmp fast olt float %73, 0.000000e+00
  %4883 = zext i1 %4877 to i32
  %4884 = zext i1 %4878 to i32
  %4885 = zext i1 %4879 to i32
  %4886 = zext i1 %4880 to i32
  %4887 = zext i1 %4881 to i32
  %4888 = zext i1 %4882 to i32
  %4889 = sub nsw i32 %4883, %4886
  %4890 = sub nsw i32 %4884, %4887
  %4891 = sub nsw i32 %4885, %4888
  %4892 = call float @dx.op.unary.f32(i32 83, float %4858)  ; DerivCoarseX(value)
  %4893 = call float @dx.op.unary.f32(i32 83, float %4859)  ; DerivCoarseX(value)
  %4894 = call float @dx.op.unary.f32(i32 83, float %4860)  ; DerivCoarseX(value)
  %4895 = call float @dx.op.unary.f32(i32 84, float %4858)  ; DerivCoarseY(value)
  %4896 = call float @dx.op.unary.f32(i32 84, float %4859)  ; DerivCoarseY(value)
  %4897 = call float @dx.op.unary.f32(i32 84, float %4860)  ; DerivCoarseY(value)
  %4898 = fcmp fast ole float %271, %4876
  %4899 = fmul fast float %4875, %4873
  %4900 = fcmp fast ole float %271, %4899
  %4901 = select i1 %4900, float %4860, float %4858
  %4902 = select i1 %4900, float %4858, float %4859
  %4903 = select i1 %4898, float %4859, float %4901
  %4904 = select i1 %4898, float %4860, float %4902
  %4905 = select i1 %4900, float %4894, float %4892
  %4906 = select i1 %4900, float %4892, float %4893
  %4907 = select i1 %4898, float %4893, float %4905
  %4908 = select i1 %4898, float %4894, float %4906
  %4909 = select i1 %4900, float %4897, float %4895
  %4910 = select i1 %4900, float %4895, float %4896
  %4911 = select i1 %4898, float %4896, float %4909
  %4912 = select i1 %4898, float %4897, float %4910
  %4913 = call float @dx.op.unary.f32(i32 27, float %4903)  ; Round_ni(value)
  %4914 = call float @dx.op.unary.f32(i32 27, float %4904)  ; Round_ni(value)
  %4915 = fptosi float %4913 to i32
  %4916 = fptosi float %4914 to i32
  %4917 = xor i32 %4916, %4915
  %4918 = sitofp i32 %4917 to float
  %4919 = fptosi float %4918 to i32
  %4920 = sitofp i32 %4919 to float
  %4921 = fmul fast float %4920, 0x3FE3C6EF40000000
  %4922 = frem fast float %4913, 2.560000e+02
  %4923 = frem fast float %4914, 2.560000e+02
  %4924 = fptoui float %4922 to i32
  %4925 = fptoui float %4923 to i32
  %4926 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4924, i32 %4925, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4927 = extractvalue %dx.types.ResRet.f32 %4926, 0
  %4928 = extractvalue %dx.types.ResRet.f32 %4926, 1
  %4929 = extractvalue %dx.types.ResRet.f32 %4926, 2
  %4930 = fadd fast float %4927, %4921
  %4931 = fadd fast float %4928, %4921
  %4932 = fadd fast float %4929, %4921
  %4933 = call float @dx.op.unary.f32(i32 22, float %4930)  ; Frc(value)
  %4934 = call float @dx.op.unary.f32(i32 22, float %4931)  ; Frc(value)
  %4935 = call float @dx.op.unary.f32(i32 22, float %4932)  ; Frc(value)
  %4936 = fmul fast float %4935, 0x401921FB60000000
  %4937 = call float @dx.op.unary.f32(i32 13, float %4936)  ; Sin(value)
  %4938 = call float @dx.op.unary.f32(i32 12, float %4936)  ; Cos(value)
  %4939 = fsub fast float -0.000000e+00, %4938
  %4940 = fmul fast float %4938, %4903
  %4941 = call float @dx.op.tertiary.f32(i32 46, float %4937, float %4904, float %4940)  ; FMad(a,b,c)
  %4942 = fmul fast float %4937, %4903
  %4943 = call float @dx.op.tertiary.f32(i32 46, float %4939, float %4904, float %4942)  ; FMad(a,b,c)
  %4944 = fadd fast float %4941, %4933
  %4945 = fadd fast float %4943, %4934
  %4946 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4947 = bitcast float %4946 to i32
  %4948 = icmp eq i32 %4947, 0
  br i1 %4948, label %4987, label %4949

; <label>:4949                                    ; preds = %4852
  %4950 = add i32 %4947, 0
  %4951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4952 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4951, %dx.types.Handle %111, float %4944, float %4945, float undef, float undef, i32 0, i32 0, i32 undef, float %4907, float %4908, float undef, float %4911, float %4912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 1
  %4956 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %4957 = fsub fast float 1.000000e+00, %4846
  %4958 = call float @dx.op.binary.f32(i32 35, float %4957, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4959 = bitcast float %4846 to i32
  %4960 = sitofp i32 %4959 to float
  %4961 = fadd fast float %4960, 0xC1CFBF8940000000
  %4962 = fmul fast float %4956, %4961
  %4963 = fadd fast float %4962, 0x41CFBF8940000000
  %4964 = fptosi float %4963 to i32
  %4965 = bitcast i32 %4964 to float
  %4966 = bitcast float %4958 to i32
  %4967 = sitofp i32 %4966 to float
  %4968 = fadd fast float %4967, 0xC1CFBF8940000000
  %4969 = fmul fast float %4968, %4956
  %4970 = fadd fast float %4969, 0x41CFBF8940000000
  %4971 = fptosi float %4970 to i32
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4965, %4955
  %4974 = fmul fast float %4972, %4955
  %4975 = fsub fast float %4958, %4973
  %4976 = fadd fast float %4974, %4958
  %4977 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4979 = fsub fast float %4953, %4977
  %4980 = fsub fast float %4978, %4977
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %4979
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fcmp fast olt float %4985, 0x3F70101020000000
  br i1 %4986, label %5125, label %4987

; <label>:4987                                    ; preds = %4949, %4852
  %4988 = phi float [ %4985, %4949 ], [ %4846, %4852 ]
  %4989 = fmul fast float %4988, %4855
  %4990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.i32 %4990, 1
  %4992 = extractvalue %dx.types.CBufRet.i32 %4990, 0
  %4993 = add i32 %4992, 0
  %4994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4994, %dx.types.Handle %110, float %4944, float %4945, float undef, float undef, i32 0, i32 0, i32 undef, float %4907, float %4908, float undef, float %4911, float %4912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.ResRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.ResRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.ResRet.f32 %4995, 3
  %5000 = and i32 %4991, 255
  %5001 = uitofp i32 %5000 to float
  %5002 = lshr i32 %4991, 8
  %5003 = and i32 %5002, 255
  %5004 = uitofp i32 %5003 to float
  %5005 = fmul fast float %4999, %5001
  %5006 = fadd fast float %5005, %5004
  %5007 = fmul fast float %5006, 0x3F70101000000000
  %5008 = fadd fast float %5007, 0xBFB99999A0000000
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = fmul fast float %5009, 0x3FF1C71C80000000
  %5011 = call float @dx.op.binary.f32(i32 36, float %5007, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5012 = fsub fast float 1.000000e+00, %5010
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = fmul fast float %5013, %4996
  %5015 = fmul fast float %5013, %4997
  %5016 = fmul fast float %5013, %4998
  %5017 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5018 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5020 = fmul fast float %5010, %4996
  %5021 = fmul fast float %5010, %4997
  %5022 = fmul fast float %5010, %4998
  %5023 = fadd fast float %5020, %5011
  %5024 = fadd fast float %5021, %5011
  %5025 = fadd fast float %5022, %5011
  %5026 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5027 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.i32 %5029, 3
  %5031 = extractvalue %dx.types.CBufRet.i32 %5029, 2
  %5032 = add i32 %5031, 0
  %5033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5032, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5033, %dx.types.Handle %110, float %4944, float %4945, float undef, float undef, i32 0, i32 0, i32 undef, float %4907, float %4908, float undef, float %4911, float %4912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = extractvalue %dx.types.ResRet.f32 %5034, 3
  %5039 = and i32 %5030, 255
  %5040 = uitofp i32 %5039 to float
  %5041 = lshr i32 %5030, 8
  %5042 = and i32 %5041, 255
  %5043 = uitofp i32 %5042 to float
  %5044 = lshr i32 %5030, 16
  %5045 = and i32 %5044, 255
  %5046 = uitofp i32 %5045 to float
  %5047 = fmul fast float %5046, 0x3F70101000000000
  %5048 = fmul fast float %5035, %5040
  %5049 = fadd fast float %5048, %5043
  %5050 = fmul fast float %5049, 0x3F70101000000000
  %5051 = fadd fast float %5036, -5.000000e-01
  %5052 = fadd fast float %5038, -5.000000e-01
  %5053 = fmul fast float %5051, %5047
  %5054 = fmul fast float %5052, %5047
  %5055 = fadd fast float %5053, 5.000000e-01
  %5056 = fadd fast float %5054, 5.000000e-01
  %5057 = fmul fast float %5055, 2.000000e+00
  %5058 = fadd fast float %5057, -1.000000e+00
  %5059 = fmul fast float %5056, 2.000000e+00
  %5060 = fadd fast float %5059, -1.000000e+00
  %5061 = fadd fast float %5058, %5060
  %5062 = fmul fast float %5061, 5.000000e-01
  %5063 = fsub fast float %5058, %5060
  %5064 = fmul fast float %5063, 5.000000e-01
  %5065 = call float @dx.op.unary.f32(i32 6, float %5062)  ; FAbs(value)
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = call float @dx.op.unary.f32(i32 6, float %5064)  ; FAbs(value)
  %5068 = fsub fast float %5066, %5067
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5064, float %5068, float %5062, float %5064, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5062, %5070
  %5072 = fmul fast float %5064, %5070
  %5073 = select i1 %4900, i32 %4890, i32 %4891
  %5074 = select i1 %4898, i32 %4889, i32 %5073
  %5075 = sitofp i32 %5074 to float
  %5076 = fmul fast float %5068, %5075
  %5077 = fmul fast float %5076, %5070
  %5078 = select i1 %4900, float %5077, float %5072
  %5079 = select i1 %4900, float %5072, float %5077
  %5080 = select i1 %4898, float %5077, float %5071
  %5081 = select i1 %4898, float %5072, float %5078
  %5082 = select i1 %4898, float %5071, float %5079
  %5083 = fsub fast float %5017, %4450
  %5084 = fsub fast float %5018, %4451
  %5085 = fsub fast float %5019, %4452
  %5086 = fmul fast float %5083, %4989
  %5087 = fmul fast float %5084, %4989
  %5088 = fmul fast float %5085, %4989
  %5089 = fadd fast float %5086, %4450
  %5090 = fadd fast float %5087, %4451
  %5091 = fadd fast float %5088, %4452
  %5092 = fsub fast float %5026, %4432
  %5093 = fsub fast float %5027, %4433
  %5094 = fsub fast float %5028, %4434
  %5095 = fmul fast float %5092, %4989
  %5096 = fmul fast float %5093, %4989
  %5097 = fmul fast float %5094, %4989
  %5098 = fadd fast float %5095, %4432
  %5099 = fadd fast float %5096, %4433
  %5100 = fadd fast float %5097, %4434
  %5101 = fadd fast float %5080, %4392
  %5102 = fadd fast float %5081, %4393
  %5103 = fadd fast float %5082, %4394
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5102, float %5103, float %5101, float %5102, float %5103)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 25, float %5104)  ; Rsqrt(value)
  %5106 = fmul fast float %5101, %5105
  %5107 = fmul fast float %5102, %5105
  %5108 = fmul fast float %5103, %5105
  %5109 = fsub fast float %5106, %4392
  %5110 = fsub fast float %5107, %4393
  %5111 = fsub fast float %5108, %4394
  %5112 = fmul fast float %5109, %4989
  %5113 = fmul fast float %5110, %4989
  %5114 = fmul fast float %5111, %4989
  %5115 = fadd fast float %5112, %4392
  %5116 = fadd fast float %5113, %4393
  %5117 = fadd fast float %5114, %4394
  %5118 = call float @dx.op.binary.f32(i32 36, float %4407, float %5037)  ; FMin(a,b)
  %5119 = fsub fast float %5118, %4407
  %5120 = fmul fast float %5119, %4989
  %5121 = fadd fast float %5120, %4407
  %5122 = fsub fast float %5050, %4435
  %5123 = fmul fast float %5122, %4989
  %5124 = fadd fast float %5123, %4435
  br label %5125

; <label>:5125                                    ; preds = %4987, %4949, %4851
  %5126 = phi float [ %5089, %4987 ], [ %4450, %4949 ], [ %4450, %4851 ]
  %5127 = phi float [ %5090, %4987 ], [ %4451, %4949 ], [ %4451, %4851 ]
  %5128 = phi float [ %5091, %4987 ], [ %4452, %4949 ], [ %4452, %4851 ]
  %5129 = phi float [ %5098, %4987 ], [ %4432, %4949 ], [ %4432, %4851 ]
  %5130 = phi float [ %5099, %4987 ], [ %4433, %4949 ], [ %4433, %4851 ]
  %5131 = phi float [ %5100, %4987 ], [ %4434, %4949 ], [ %4434, %4851 ]
  %5132 = phi float [ %5115, %4987 ], [ %4392, %4949 ], [ %4392, %4851 ]
  %5133 = phi float [ %5116, %4987 ], [ %4393, %4949 ], [ %4393, %4851 ]
  %5134 = phi float [ %5117, %4987 ], [ %4394, %4949 ], [ %4394, %4851 ]
  %5135 = phi float [ %5124, %4987 ], [ %4435, %4949 ], [ %4435, %4851 ]
  %5136 = phi float [ %5121, %4987 ], [ %4407, %4949 ], [ %4407, %4851 ]
  br i1 %4849, label %5137, label %5410

; <label>:5137                                    ; preds = %5125
  %5138 = call float @dx.op.unary.f32(i32 23, float %5136)  ; Log(value)
  %5139 = fmul fast float %5138, 4.000000e+00
  %5140 = call float @dx.op.unary.f32(i32 21, float %5139)  ; Exp(value)
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = fmul fast float %5142, %62
  %5144 = fmul fast float %5142, %63
  %5145 = fmul fast float %5142, %64
  %5146 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5147 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5148 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5149 = call float @dx.op.unary.f32(i32 23, float %5146)  ; Log(value)
  %5150 = call float @dx.op.unary.f32(i32 23, float %5147)  ; Log(value)
  %5151 = call float @dx.op.unary.f32(i32 23, float %5148)  ; Log(value)
  %5152 = fmul fast float %5149, 4.000000e+00
  %5153 = fmul fast float %5150, 4.000000e+00
  %5154 = fmul fast float %5151, 4.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 21, float %5152)  ; Exp(value)
  %5156 = call float @dx.op.unary.f32(i32 21, float %5153)  ; Exp(value)
  %5157 = call float @dx.op.unary.f32(i32 21, float %5154)  ; Exp(value)
  %5158 = fadd fast float %5156, %5155
  %5159 = fadd fast float %5158, %5157
  %5160 = fdiv fast float 1.000000e+00, %5159
  %5161 = fmul fast float %5160, %5155
  %5162 = fcmp fast ogt float %71, 0.000000e+00
  %5163 = fcmp fast ogt float %72, 0.000000e+00
  %5164 = fcmp fast ogt float %73, 0.000000e+00
  %5165 = fcmp fast olt float %71, 0.000000e+00
  %5166 = fcmp fast olt float %72, 0.000000e+00
  %5167 = fcmp fast olt float %73, 0.000000e+00
  %5168 = zext i1 %5162 to i32
  %5169 = zext i1 %5163 to i32
  %5170 = zext i1 %5164 to i32
  %5171 = zext i1 %5165 to i32
  %5172 = zext i1 %5166 to i32
  %5173 = zext i1 %5167 to i32
  %5174 = sub nsw i32 %5168, %5171
  %5175 = sub nsw i32 %5169, %5172
  %5176 = sub nsw i32 %5170, %5173
  %5177 = call float @dx.op.unary.f32(i32 83, float %5143)  ; DerivCoarseX(value)
  %5178 = call float @dx.op.unary.f32(i32 83, float %5144)  ; DerivCoarseX(value)
  %5179 = call float @dx.op.unary.f32(i32 83, float %5145)  ; DerivCoarseX(value)
  %5180 = call float @dx.op.unary.f32(i32 84, float %5143)  ; DerivCoarseY(value)
  %5181 = call float @dx.op.unary.f32(i32 84, float %5144)  ; DerivCoarseY(value)
  %5182 = call float @dx.op.unary.f32(i32 84, float %5145)  ; DerivCoarseY(value)
  %5183 = fcmp fast ole float %271, %5161
  %5184 = fmul fast float %5160, %5158
  %5185 = fcmp fast ole float %271, %5184
  %5186 = select i1 %5185, float %5145, float %5143
  %5187 = select i1 %5185, float %5143, float %5144
  %5188 = select i1 %5183, float %5144, float %5186
  %5189 = select i1 %5183, float %5145, float %5187
  %5190 = select i1 %5185, float %5179, float %5177
  %5191 = select i1 %5185, float %5177, float %5178
  %5192 = select i1 %5183, float %5178, float %5190
  %5193 = select i1 %5183, float %5179, float %5191
  %5194 = select i1 %5185, float %5182, float %5180
  %5195 = select i1 %5185, float %5180, float %5181
  %5196 = select i1 %5183, float %5181, float %5194
  %5197 = select i1 %5183, float %5182, float %5195
  %5198 = call float @dx.op.unary.f32(i32 27, float %5188)  ; Round_ni(value)
  %5199 = call float @dx.op.unary.f32(i32 27, float %5189)  ; Round_ni(value)
  %5200 = fptosi float %5198 to i32
  %5201 = fptosi float %5199 to i32
  %5202 = xor i32 %5201, %5200
  %5203 = sitofp i32 %5202 to float
  %5204 = fptosi float %5203 to i32
  %5205 = sitofp i32 %5204 to float
  %5206 = fmul fast float %5205, 0x3FE3C6EF40000000
  %5207 = frem fast float %5198, 2.560000e+02
  %5208 = frem fast float %5199, 2.560000e+02
  %5209 = fptoui float %5207 to i32
  %5210 = fptoui float %5208 to i32
  %5211 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5209, i32 %5210, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5212 = extractvalue %dx.types.ResRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.ResRet.f32 %5211, 1
  %5214 = extractvalue %dx.types.ResRet.f32 %5211, 2
  %5215 = fadd fast float %5212, %5206
  %5216 = fadd fast float %5213, %5206
  %5217 = fadd fast float %5214, %5206
  %5218 = call float @dx.op.unary.f32(i32 22, float %5215)  ; Frc(value)
  %5219 = call float @dx.op.unary.f32(i32 22, float %5216)  ; Frc(value)
  %5220 = call float @dx.op.unary.f32(i32 22, float %5217)  ; Frc(value)
  %5221 = fmul fast float %5220, 0x401921FB60000000
  %5222 = call float @dx.op.unary.f32(i32 13, float %5221)  ; Sin(value)
  %5223 = call float @dx.op.unary.f32(i32 12, float %5221)  ; Cos(value)
  %5224 = fsub fast float -0.000000e+00, %5223
  %5225 = fmul fast float %5223, %5188
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5222, float %5189, float %5225)  ; FMad(a,b,c)
  %5227 = fmul fast float %5222, %5188
  %5228 = call float @dx.op.tertiary.f32(i32 46, float %5224, float %5189, float %5227)  ; FMad(a,b,c)
  %5229 = fadd fast float %5226, %5218
  %5230 = fadd fast float %5228, %5219
  %5231 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5232 = bitcast float %5231 to i32
  %5233 = icmp eq i32 %5232, 0
  br i1 %5233, label %5272, label %5234

; <label>:5234                                    ; preds = %5137
  %5235 = add i32 %5232, 0
  %5236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5237 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5236, %dx.types.Handle %111, float %5229, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float %5192, float %5193, float undef, float %5196, float %5197, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5242 = fsub fast float 1.000000e+00, %4847
  %5243 = call float @dx.op.binary.f32(i32 35, float %5242, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5244 = bitcast float %4847 to i32
  %5245 = sitofp i32 %5244 to float
  %5246 = fadd fast float %5245, 0xC1CFBF8940000000
  %5247 = fmul fast float %5241, %5246
  %5248 = fadd fast float %5247, 0x41CFBF8940000000
  %5249 = fptosi float %5248 to i32
  %5250 = bitcast i32 %5249 to float
  %5251 = bitcast float %5243 to i32
  %5252 = sitofp i32 %5251 to float
  %5253 = fadd fast float %5252, 0xC1CFBF8940000000
  %5254 = fmul fast float %5253, %5241
  %5255 = fadd fast float %5254, 0x41CFBF8940000000
  %5256 = fptosi float %5255 to i32
  %5257 = bitcast i32 %5256 to float
  %5258 = fmul fast float %5250, %5240
  %5259 = fmul fast float %5257, %5240
  %5260 = fsub fast float %5243, %5258
  %5261 = fadd fast float %5259, %5243
  %5262 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5264 = fsub fast float %5238, %5262
  %5265 = fsub fast float %5263, %5262
  %5266 = bitcast float %5265 to i32
  %5267 = sub nsw i32 2129859010, %5266
  %5268 = bitcast i32 %5267 to float
  %5269 = fmul fast float %5268, %5264
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = fcmp fast olt float %5270, 0x3F70101020000000
  br i1 %5271, label %5410, label %5272

; <label>:5272                                    ; preds = %5234, %5137
  %5273 = phi float [ %5270, %5234 ], [ %4847, %5137 ]
  %5274 = fmul fast float %5273, %5140
  %5275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.i32 %5275, 1
  %5277 = extractvalue %dx.types.CBufRet.i32 %5275, 0
  %5278 = add i32 %5277, 0
  %5279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5280 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5279, %dx.types.Handle %110, float %5229, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float %5192, float %5193, float undef, float %5196, float %5197, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = extractvalue %dx.types.ResRet.f32 %5280, 2
  %5284 = extractvalue %dx.types.ResRet.f32 %5280, 3
  %5285 = and i32 %5276, 255
  %5286 = uitofp i32 %5285 to float
  %5287 = lshr i32 %5276, 8
  %5288 = and i32 %5287, 255
  %5289 = uitofp i32 %5288 to float
  %5290 = fmul fast float %5284, %5286
  %5291 = fadd fast float %5290, %5289
  %5292 = fmul fast float %5291, 0x3F70101000000000
  %5293 = fadd fast float %5292, 0xBFB99999A0000000
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = fmul fast float %5294, 0x3FF1C71C80000000
  %5296 = call float @dx.op.binary.f32(i32 36, float %5292, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5297 = fsub fast float 1.000000e+00, %5295
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5298, %5281
  %5300 = fmul fast float %5298, %5282
  %5301 = fmul fast float %5298, %5283
  %5302 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5304 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5305 = fmul fast float %5295, %5281
  %5306 = fmul fast float %5295, %5282
  %5307 = fmul fast float %5295, %5283
  %5308 = fadd fast float %5305, %5296
  %5309 = fadd fast float %5306, %5296
  %5310 = fadd fast float %5307, %5296
  %5311 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5312 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.i32 %5314, 3
  %5316 = extractvalue %dx.types.CBufRet.i32 %5314, 2
  %5317 = add i32 %5316, 0
  %5318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5319 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5318, %dx.types.Handle %110, float %5229, float %5230, float undef, float undef, i32 0, i32 0, i32 undef, float %5192, float %5193, float undef, float %5196, float %5197, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = extractvalue %dx.types.ResRet.f32 %5319, 3
  %5324 = and i32 %5315, 255
  %5325 = uitofp i32 %5324 to float
  %5326 = lshr i32 %5315, 8
  %5327 = and i32 %5326, 255
  %5328 = uitofp i32 %5327 to float
  %5329 = lshr i32 %5315, 16
  %5330 = and i32 %5329, 255
  %5331 = uitofp i32 %5330 to float
  %5332 = fmul fast float %5331, 0x3F70101000000000
  %5333 = fmul fast float %5320, %5325
  %5334 = fadd fast float %5333, %5328
  %5335 = fmul fast float %5334, 0x3F70101000000000
  %5336 = fadd fast float %5321, -5.000000e-01
  %5337 = fadd fast float %5323, -5.000000e-01
  %5338 = fmul fast float %5336, %5332
  %5339 = fmul fast float %5337, %5332
  %5340 = fadd fast float %5338, 5.000000e-01
  %5341 = fadd fast float %5339, 5.000000e-01
  %5342 = fmul fast float %5340, 2.000000e+00
  %5343 = fadd fast float %5342, -1.000000e+00
  %5344 = fmul fast float %5341, 2.000000e+00
  %5345 = fadd fast float %5344, -1.000000e+00
  %5346 = fadd fast float %5343, %5345
  %5347 = fmul fast float %5346, 5.000000e-01
  %5348 = fsub fast float %5343, %5345
  %5349 = fmul fast float %5348, 5.000000e-01
  %5350 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5353 = fsub fast float %5351, %5352
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5349, float %5353, float %5347, float %5349, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = call float @dx.op.unary.f32(i32 25, float %5354)  ; Rsqrt(value)
  %5356 = fmul fast float %5347, %5355
  %5357 = fmul fast float %5349, %5355
  %5358 = select i1 %5185, i32 %5175, i32 %5176
  %5359 = select i1 %5183, i32 %5174, i32 %5358
  %5360 = sitofp i32 %5359 to float
  %5361 = fmul fast float %5353, %5360
  %5362 = fmul fast float %5361, %5355
  %5363 = select i1 %5185, float %5362, float %5357
  %5364 = select i1 %5185, float %5357, float %5362
  %5365 = select i1 %5183, float %5362, float %5356
  %5366 = select i1 %5183, float %5357, float %5363
  %5367 = select i1 %5183, float %5356, float %5364
  %5368 = fsub fast float %5302, %5126
  %5369 = fsub fast float %5303, %5127
  %5370 = fsub fast float %5304, %5128
  %5371 = fmul fast float %5368, %5274
  %5372 = fmul fast float %5369, %5274
  %5373 = fmul fast float %5370, %5274
  %5374 = fadd fast float %5371, %5126
  %5375 = fadd fast float %5372, %5127
  %5376 = fadd fast float %5373, %5128
  %5377 = fsub fast float %5311, %5129
  %5378 = fsub fast float %5312, %5130
  %5379 = fsub fast float %5313, %5131
  %5380 = fmul fast float %5377, %5274
  %5381 = fmul fast float %5378, %5274
  %5382 = fmul fast float %5379, %5274
  %5383 = fadd fast float %5380, %5129
  %5384 = fadd fast float %5381, %5130
  %5385 = fadd fast float %5382, %5131
  %5386 = fadd fast float %5365, %5132
  %5387 = fadd fast float %5366, %5133
  %5388 = fadd fast float %5367, %5134
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5386, float %5387, float %5388, float %5386, float %5387, float %5388)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = call float @dx.op.unary.f32(i32 25, float %5389)  ; Rsqrt(value)
  %5391 = fmul fast float %5386, %5390
  %5392 = fmul fast float %5387, %5390
  %5393 = fmul fast float %5388, %5390
  %5394 = fsub fast float %5391, %5132
  %5395 = fsub fast float %5392, %5133
  %5396 = fsub fast float %5393, %5134
  %5397 = fmul fast float %5394, %5274
  %5398 = fmul fast float %5395, %5274
  %5399 = fmul fast float %5396, %5274
  %5400 = fadd fast float %5397, %5132
  %5401 = fadd fast float %5398, %5133
  %5402 = fadd fast float %5399, %5134
  %5403 = call float @dx.op.binary.f32(i32 36, float %5136, float %5322)  ; FMin(a,b)
  %5404 = fsub fast float %5403, %5136
  %5405 = fmul fast float %5404, %5274
  %5406 = fadd fast float %5405, %5136
  %5407 = fsub fast float %5335, %5135
  %5408 = fmul fast float %5407, %5274
  %5409 = fadd fast float %5408, %5135
  br label %5410

; <label>:5410                                    ; preds = %5272, %5234, %5125, %4841
  %5411 = phi float [ %5374, %5272 ], [ %5126, %5234 ], [ %5126, %5125 ], [ %4450, %4841 ]
  %5412 = phi float [ %5375, %5272 ], [ %5127, %5234 ], [ %5127, %5125 ], [ %4451, %4841 ]
  %5413 = phi float [ %5376, %5272 ], [ %5128, %5234 ], [ %5128, %5125 ], [ %4452, %4841 ]
  %5414 = phi float [ %5383, %5272 ], [ %5129, %5234 ], [ %5129, %5125 ], [ %4432, %4841 ]
  %5415 = phi float [ %5384, %5272 ], [ %5130, %5234 ], [ %5130, %5125 ], [ %4433, %4841 ]
  %5416 = phi float [ %5385, %5272 ], [ %5131, %5234 ], [ %5131, %5125 ], [ %4434, %4841 ]
  %5417 = phi float [ %5400, %5272 ], [ %5132, %5234 ], [ %5132, %5125 ], [ %4392, %4841 ]
  %5418 = phi float [ %5401, %5272 ], [ %5133, %5234 ], [ %5133, %5125 ], [ %4393, %4841 ]
  %5419 = phi float [ %5402, %5272 ], [ %5134, %5234 ], [ %5134, %5125 ], [ %4394, %4841 ]
  %5420 = phi float [ %5409, %5272 ], [ %5135, %5234 ], [ %5135, %5125 ], [ %4435, %4841 ]
  %5421 = phi float [ %5406, %5272 ], [ %5136, %5234 ], [ %5136, %5125 ], [ %4407, %4841 ]
  %5422 = fcmp fast une float %4845, 0.000000e+00
  %5423 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = call float @dx.op.unary.f32(i32 25, float %5423)  ; Rsqrt(value)
  br i1 %5422, label %5432, label %5425

; <label>:5425                                    ; preds = %5410
  %5426 = fmul fast float %5424, %201
  %5427 = fmul fast float %5424, %202
  %5428 = fmul fast float %5424, %203
  %5429 = fsub fast float -0.000000e+00, %5426
  %5430 = fsub fast float -0.000000e+00, %5427
  %5431 = fsub fast float -0.000000e+00, %5428
  br label %5599

; <label>:5432                                    ; preds = %5410
  %5433 = fmul fast float %201, %5424
  %5434 = fsub fast float -0.000000e+00, %5433
  %5435 = fmul fast float %202, %5424
  %5436 = fsub fast float -0.000000e+00, %5435
  %5437 = fmul fast float %203, %5424
  %5438 = fsub fast float -0.000000e+00, %5437
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5434, float %5436, float %5438, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fmul fast float %4845, 2.500000e+00
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fmul fast float %4845, 0x4013FFFFE0000000
  %5443 = fadd fast float %5442, 0xBFFFFFFFE0000000
  %5444 = call float @dx.op.unary.f32(i32 7, float %5443)  ; Saturate(value)
  %5445 = fmul fast float %4845, 0x4004000020000000
  %5446 = fadd fast float %5445, 0xBFF8000040000000
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = fmul fast float %4414, 1.000000e+01
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = fmul fast float %5449, 2.000000e+00
  %5451 = fsub fast float 3.000000e+00, %5450
  %5452 = fmul fast float %5449, %5449
  %5453 = fmul fast float %5452, %5451
  %5454 = fsub fast float 1.000000e+00, %5453
  %5455 = fsub fast float 0x3FE3333340000000, %5420
  %5456 = fmul fast float %5455, 0x400AAAAAA0000000
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = fmul fast float %5454, %5457
  %5459 = fmul fast float %5411, 0x3FEA2B8620000000
  %5460 = fmul fast float %5412, 0x3FEA2B8620000000
  %5461 = fmul fast float %5413, 0x3FEA2B8620000000
  %5462 = fadd fast float %5459, 0x3FC81DFBA0000000
  %5463 = fmul fast float %5462, %5411
  %5464 = fadd fast float %5463, 0x3F910E6020000000
  %5465 = fadd fast float %5460, 0x3FC81DFBA0000000
  %5466 = fmul fast float %5465, %5412
  %5467 = fadd fast float %5466, 0x3F910E6020000000
  %5468 = fadd fast float %5461, 0x3FC81DFBA0000000
  %5469 = fmul fast float %5468, %5413
  %5470 = fadd fast float %5469, 0x3F910E6020000000
  %5471 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5474 = fsub fast float %5471, %5411
  %5475 = fsub fast float %5472, %5412
  %5476 = fsub fast float %5473, %5413
  %5477 = fmul fast float %5474, %5441
  %5478 = fmul fast float %5477, %5458
  %5479 = fmul fast float %5475, %5441
  %5480 = fmul fast float %5479, %5458
  %5481 = fmul fast float %5476, %5441
  %5482 = fmul fast float %5481, %5458
  %5483 = fadd fast float %5478, %5411
  %5484 = fadd fast float %5480, %5412
  %5485 = fadd fast float %5482, %5413
  %5486 = fmul fast float %5421, %5421
  %5487 = fmul fast float %5486, %5486
  %5488 = fadd fast float %5444, 1.000000e+00
  %5489 = fsub fast float %5488, %5458
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = fsub fast float 1.000000e+00, %5487
  %5494 = call float @dx.op.binary.f32(i32 36, float %5490, float %5493)  ; FMin(a,b)
  %5495 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5496 = call float @dx.op.binary.f32(i32 35, float %5494, float %5495)  ; FMax(a,b)
  %5497 = fadd fast float %5492, 0xBFE4CCCCC0000000
  %5498 = fmul fast float %5497, 0x4006DB6DA0000000
  %5499 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5500 = fmul fast float %5499, 2.000000e+00
  %5501 = fsub fast float 3.000000e+00, %5500
  %5502 = bitcast float %5414 to i32
  %5503 = ashr i32 %5502, 1
  %5504 = add nsw i32 %5503, 532487669
  %5505 = bitcast i32 %5504 to float
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = bitcast float %5506 to i32
  %5508 = sub nsw i32 2129859010, %5507
  %5509 = bitcast i32 %5508 to float
  %5510 = fmul fast float %5509, 2.000000e+00
  %5511 = bitcast float %5415 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = sub nsw i32 2129859010, %5516
  %5518 = bitcast i32 %5517 to float
  %5519 = fmul fast float %5518, 2.000000e+00
  %5520 = bitcast float %5416 to i32
  %5521 = ashr i32 %5520, 1
  %5522 = add nsw i32 %5521, 532487669
  %5523 = bitcast i32 %5522 to float
  %5524 = fsub fast float 1.000000e+00, %5523
  %5525 = bitcast float %5524 to i32
  %5526 = sub nsw i32 2129859010, %5525
  %5527 = bitcast i32 %5526 to float
  %5528 = fmul fast float %5527, 2.000000e+00
  %5529 = fsub fast float 0x4002A9FBE0000000, %5510
  %5530 = fadd fast float %5510, 0x3FD54FDF00000000
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %5533, %5529
  %5535 = fmul fast float %5534, %5534
  %5536 = fsub fast float 0x4002A9FBE0000000, %5519
  %5537 = fadd fast float %5519, 0x3FD54FDF00000000
  %5538 = bitcast float %5537 to i32
  %5539 = sub nsw i32 2129859010, %5538
  %5540 = bitcast i32 %5539 to float
  %5541 = fmul fast float %5540, %5536
  %5542 = fmul fast float %5541, %5541
  %5543 = fsub fast float 0x4002A9FBE0000000, %5528
  %5544 = fadd fast float %5528, 0x3FD54FDF00000000
  %5545 = bitcast float %5544 to i32
  %5546 = sub nsw i32 2129859010, %5545
  %5547 = bitcast i32 %5546 to float
  %5548 = fmul fast float %5547, %5543
  %5549 = fmul fast float %5548, %5548
  %5550 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5535)  ; FMax(a,b)
  %5551 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5542)  ; FMax(a,b)
  %5552 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5549)  ; FMax(a,b)
  %5553 = fsub fast float 1.000000e+00, %5439
  %5554 = fadd fast float %5553, %5454
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fsub fast float 1.000000e+00, %4826
  %5557 = fmul fast float %5496, %5556
  %5558 = fmul fast float %5499, %5499
  %5559 = fmul fast float %5558, %5557
  %5560 = fmul fast float %5559, %5501
  %5561 = fmul fast float %5556, 0xBFE99999A0000000
  %5562 = fmul fast float %5561, %5441
  %5563 = fmul fast float %5562, %5458
  %5564 = fadd fast float %5563, 1.000000e+00
  %5565 = fadd fast float %5420, -1.000000e+00
  %5566 = fmul fast float %5564, %5565
  %5567 = fadd fast float %5566, 1.000000e+00
  %5568 = fsub fast float %5550, %5414
  %5569 = fsub fast float %5551, %5415
  %5570 = fsub fast float %5552, %5416
  %5571 = fmul fast float %5560, %5568
  %5572 = fmul fast float %5560, %5569
  %5573 = fmul fast float %5560, %5570
  %5574 = fadd fast float %5571, %5414
  %5575 = fadd fast float %5572, %5415
  %5576 = fadd fast float %5573, %5416
  %5577 = fsub fast float %121, %5417
  %5578 = fsub fast float %122, %5418
  %5579 = fsub fast float %123, %5419
  %5580 = fmul fast float %5560, %5577
  %5581 = fmul fast float %5560, %5578
  %5582 = fmul fast float %5560, %5579
  %5583 = fadd fast float %5580, %5417
  %5584 = fadd fast float %5581, %5418
  %5585 = fadd fast float %5582, %5419
  %5586 = fmul fast float %5560, %5555
  %5587 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5588 = fsub fast float 1.000000e+00, %5587
  %5589 = fmul fast float %5586, %5588
  %5590 = fadd fast float %5589, %5587
  %5591 = fsub fast float 1.000000e+00, %5421
  %5592 = fmul fast float %5560, %5591
  %5593 = fadd fast float %5592, %5421
  %5594 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5595 = call float @dx.op.unary.f32(i32 25, float %5594)  ; Rsqrt(value)
  %5596 = fmul fast float %5583, %5595
  %5597 = fmul fast float %5584, %5595
  %5598 = fmul fast float %5585, %5595
  br label %5599

; <label>:5599                                    ; preds = %5432, %5425
  %5600 = phi float [ %5431, %5425 ], [ %5438, %5432 ]
  %5601 = phi float [ %5430, %5425 ], [ %5436, %5432 ]
  %5602 = phi float [ %5429, %5425 ], [ %5434, %5432 ]
  %5603 = phi float [ %5428, %5425 ], [ %5437, %5432 ]
  %5604 = phi float [ %5427, %5425 ], [ %5435, %5432 ]
  %5605 = phi float [ %5426, %5425 ], [ %5433, %5432 ]
  %5606 = phi float [ %5411, %5425 ], [ %5483, %5432 ]
  %5607 = phi float [ %5412, %5425 ], [ %5484, %5432 ]
  %5608 = phi float [ %5413, %5425 ], [ %5485, %5432 ]
  %5609 = phi float [ %5414, %5425 ], [ %5574, %5432 ]
  %5610 = phi float [ %5415, %5425 ], [ %5575, %5432 ]
  %5611 = phi float [ %5416, %5425 ], [ %5576, %5432 ]
  %5612 = phi float [ %5417, %5425 ], [ %5596, %5432 ]
  %5613 = phi float [ %5418, %5425 ], [ %5597, %5432 ]
  %5614 = phi float [ %5419, %5425 ], [ %5598, %5432 ]
  %5615 = phi float [ %5420, %5425 ], [ %5590, %5432 ]
  %5616 = phi float [ %5421, %5425 ], [ %5593, %5432 ]
  %5617 = fsub fast float -0.000000e+00, %203
  %5618 = select i1 %260, float 0.000000e+00, float %5611
  %5619 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5602, float %5601, float %5600)  ; Dot3(ax,ay,az,bx,by,bz)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5604, float %5603, float %5612, float %5613, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = fmul fast float %5621, 2.000000e+00
  %5623 = fmul fast float %5622, %5612
  %5624 = fmul fast float %5622, %5613
  %5625 = fmul fast float %5622, %5614
  %5626 = fsub fast float %5605, %5623
  %5627 = fsub fast float %5604, %5624
  %5628 = fsub fast float %5603, %5625
  %5629 = call float @dx.op.binary.f32(i32 36, float %5616, float 1.000000e+00)  ; FMin(a,b)
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = bitcast float %5630 to i32
  %5632 = ashr i32 %5631, 1
  %5633 = add nsw i32 %5632, 532487669
  %5634 = bitcast i32 %5633 to float
  %5635 = fsub fast float 1.000000e+00, %5615
  %5636 = call float @dx.op.binary.f32(i32 35, float %5635, float 0x3F847AE140000000)  ; FMax(a,b)
  %5637 = fmul fast float %5636, %5636
  %5638 = fmul fast float %5637, %5637
  %5639 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5634, float %5638, float %5639, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = fsub fast float 1.000000e+00, %5616
  %5643 = bitcast float %5642 to i32
  %5644 = sub nsw i32 2129859010, %5643
  %5645 = fsub fast float 1.000000e+00, %81
  %5646 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5646, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5648 = fdiv fast float %5645, %5647
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5650, 5.000000e-01
  %5652 = fadd fast float %5651, 5.000000e-01
  %5653 = fmul fast float %5652, %81
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fmul fast float %5655, %5648
  %5657 = fadd fast float %5653, %5656
  %5658 = fsub fast float 5.000000e-01, %5651
  %5659 = fmul fast float %5658, %5606
  %5660 = fmul fast float %5658, %5607
  %5661 = fmul fast float %5658, %5608
  %5662 = fadd fast float %5657, %5659
  %5663 = fadd fast float %5657, %5660
  %5664 = fadd fast float %5657, %5661
  %5665 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5666, 5.000000e-01
  %5668 = fadd fast float %5667, 5.000000e-01
  %5669 = fmul fast float %5668, %81
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fmul fast float %5671, %5648
  %5673 = fadd fast float %5669, %5672
  %5674 = fsub fast float 5.000000e-01, %5667
  %5675 = fmul fast float %5674, %5606
  %5676 = fmul fast float %5674, %5607
  %5677 = fmul fast float %5674, %5608
  %5678 = fadd fast float %5673, %5675
  %5679 = fadd fast float %5673, %5676
  %5680 = fadd fast float %5673, %5677
  %5681 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.f32 %5682, 0
  %5684 = call float @dx.op.binary.f32(i32 36, float %5606, float %5683)  ; FMin(a,b)
  %5685 = fmul fast float %5684, %5630
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = bitcast float %5686 to i32
  %5688 = sub nsw i32 2129859010, %5687
  %5689 = bitcast i32 %5688 to float
  %5690 = call float @dx.op.binary.f32(i32 36, float %5607, float %5683)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5630
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = call float @dx.op.binary.f32(i32 36, float %5608, float %5683)  ; FMin(a,b)
  %5697 = fmul fast float %5696, %5630
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sub nsw i32 2129859010, %5699
  %5701 = bitcast i32 %5700 to float
  %5702 = fmul fast float %5629, %82
  %5703 = fmul fast float %5702, %5662
  %5704 = fmul fast float %5703, %5689
  %5705 = fmul fast float %5629, %83
  %5706 = fmul fast float %5705, %5663
  %5707 = fmul fast float %5706, %5695
  %5708 = fmul fast float %5629, %84
  %5709 = fmul fast float %5708, %5664
  %5710 = fmul fast float %5709, %5701
  %5711 = call float @dx.op.binary.f32(i32 36, float %5609, float %5683)  ; FMin(a,b)
  %5712 = fmul fast float %5711, %5630
  %5713 = fsub fast float 1.000000e+00, %5712
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = call float @dx.op.binary.f32(i32 36, float %5610, float %5683)  ; FMin(a,b)
  %5718 = fmul fast float %5717, %5630
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = bitcast float %5719 to i32
  %5721 = sub nsw i32 2129859010, %5720
  %5722 = bitcast i32 %5721 to float
  %5723 = call float @dx.op.binary.f32(i32 36, float %5618, float %5683)  ; FMin(a,b)
  %5724 = fmul fast float %5723, %5630
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = bitcast float %5725 to i32
  %5727 = sub nsw i32 2129859010, %5726
  %5728 = bitcast i32 %5727 to float
  %5729 = fmul fast float %5702, %5678
  %5730 = fmul fast float %5729, %5716
  %5731 = fmul fast float %5705, %5679
  %5732 = fmul fast float %5731, %5722
  %5733 = fmul fast float %5708, %5680
  %5734 = fmul fast float %5733, %5728
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5707, float %5710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = select i1 %260, float 0.000000e+00, float %5704
  %5737 = select i1 %260, float %5735, float %5707
  %5738 = select i1 %260, float 0.000000e+00, float %5710
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5732, float %5734, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = select i1 %260, float 0.000000e+00, float %5730
  %5741 = select i1 %260, float %5739, float %5732
  %5742 = select i1 %260, float 0.000000e+00, float %5734
  %5743 = fmul fast float %3809, %3809
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = fmul fast float %5620, 9.843750e-01
  %5746 = fmul fast float %5615, 9.843750e-01
  %5747 = fadd fast float %5745, 7.812500e-03
  %5748 = fadd fast float %5746, 7.812500e-03
  %5749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5747, float %5748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.ResRet.f32 %5749, 2
  %5753 = extractvalue %dx.types.ResRet.f32 %5749, 3
  %5754 = fsub fast float 1.000000e+00, %5744
  %5755 = fsub fast float %5752, %5750
  %5756 = fsub fast float %5753, %5751
  %5757 = fmul fast float %5755, %5754
  %5758 = fmul fast float %5756, %5754
  %5759 = fadd fast float %5757, %5750
  %5760 = fadd fast float %5758, %5751
  %5761 = fmul fast float %5759, %5609
  %5762 = fmul fast float %5759, %5610
  %5763 = fmul fast float %5759, %5618
  %5764 = fadd fast float %5761, %5760
  %5765 = fadd fast float %5762, %5760
  %5766 = fadd fast float %5763, %5760
  %5767 = fcmp fast ogt float %4408, 0.000000e+00
  br i1 %5767, label %5768, label %5794

; <label>:5768                                    ; preds = %5599
  %5769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4408, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5770 = extractvalue %dx.types.ResRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.ResRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.ResRet.f32 %5769, 2
  %5773 = fadd fast float %5770, -5.000000e-01
  %5774 = fadd fast float %5771, -5.000000e-01
  %5775 = fadd fast float %5772, -5.000000e-01
  %5776 = fsub fast float 1.000000e+00, %5609
  %5777 = fsub fast float 1.000000e+00, %5610
  %5778 = fsub fast float 1.000000e+00, %5618
  %5779 = fmul fast float %5609, 4.000000e+00
  %5780 = fmul fast float %5779, %5776
  %5781 = fmul fast float %5780, %5773
  %5782 = fmul fast float %5610, 4.000000e+00
  %5783 = fmul fast float %5782, %5777
  %5784 = fmul fast float %5783, %5774
  %5785 = fmul fast float %5618, 4.000000e+00
  %5786 = fmul fast float %5785, %5778
  %5787 = fmul fast float %5786, %5775
  %5788 = fadd fast float %5781, %5764
  %5789 = fadd fast float %5784, %5765
  %5790 = fadd fast float %5787, %5766
  %5791 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5792 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5793 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  br label %5794

; <label>:5794                                    ; preds = %5768, %5599
  %5795 = phi float [ %5791, %5768 ], [ %5764, %5599 ]
  %5796 = phi float [ %5792, %5768 ], [ %5765, %5599 ]
  %5797 = phi float [ %5793, %5768 ], [ %5766, %5599 ]
  %5798 = call float @dx.op.binary.f32(i32 35, float %5796, float %5797)  ; FMax(a,b)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5795, float %5798)  ; FMax(a,b)
  %5800 = fsub fast float 1.000000e+00, %5799
  %5801 = fmul fast float %5799, %5615
  %5802 = fadd fast float %5801, %5615
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 3
  %5806 = fmul fast float %5802, %5804
  %5807 = fadd fast float %5806, %5805
  %5808 = call float @dx.op.unary.f32(i32 7, float %5807)  ; Saturate(value)
  %5809 = fsub fast float 1.000000e+00, %5641
  %5810 = fadd fast float %5809, %5808
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fcmp fast olt float %5811, 1.000000e+00
  br i1 %5812, label %5813, label %6289

; <label>:5813                                    ; preds = %5794
  %5814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5815 = extractvalue %dx.types.CBufRet.f32 %5814, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5814, 3
  %5817 = fmul fast float %5815, %114
  %5818 = fmul fast float %5816, %115
  %5819 = fptoui float %5817 to i32
  %5820 = fptoui float %5818 to i32
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.CBufRet.f32 %5821, 2
  %5824 = extractvalue %dx.types.CBufRet.f32 %5821, 3
  %5825 = fadd fast float %101, -4.000000e+00
  %5826 = call float @dx.op.binary.f32(i32 35, float %5825, float 0.000000e+00)  ; FMax(a,b)
  %5827 = fadd fast float %5826, %5822
  %5828 = fmul fast float %5827, %5823
  %5829 = call float @dx.op.unary.f32(i32 23, float %5828)  ; Log(value)
  %5830 = fmul fast float %5829, %5824
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5833 = fmul fast float %5830, %5832
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.i32 %5835, 1
  %5837 = add i32 %5836, -1
  %5838 = uitofp i32 %5836 to float
  %5839 = fmul fast float %5838, %5834
  %5840 = fptoui float %5839 to i32
  %5841 = call i32 @dx.op.binary.i32(i32 40, i32 %5840, i32 %5837)  ; UMin(a,b)
  %5842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.i32 %5842, 2
  %5844 = extractvalue %dx.types.CBufRet.i32 %5842, 3
  %5845 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5820, i32 %5843, i32 %5819)  ; UMad(a,b,c)
  %5846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5841, i32 %5844, i32 %5845)  ; UMad(a,b,c)
  %5847 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fptoui float %5847 to i32
  %5849 = lshr i32 %5848, 5
  %5850 = call i32 @dx.op.binary.i32(i32 40, i32 %5849, i32 8191)  ; UMin(a,b)
  %5851 = fsub fast float %4816, %203
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = fcmp fast ogt float %5852, 0.000000e+00
  %5854 = fcmp fast ogt float %5628, 0.000000e+00
  %5855 = and i1 %5854, %5853
  br i1 %5855, label %5856, label %5885

; <label>:5856                                    ; preds = %5813
  %5857 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5857, float -1.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 36, float %5858, float 1.000000e+00)  ; FMin(a,b)
  %5860 = fmul fast float %5859, %5859
  %5861 = fsub fast float 1.000000e+00, %5860
  %5862 = fmul fast float %5861, 0x3FFC6E2300000000
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = fcmp fast ogt float %5863, 0.000000e+00
  %5865 = call float @dx.op.unary.f32(i32 24, float %5863)  ; Sqrt(value)
  %5866 = fsub fast float 1.000000e+00, %5865
  %5867 = call float @dx.op.unary.f32(i32 23, float %5866)  ; Log(value)
  %5868 = fmul fast float %5867, 5.000000e+00
  %5869 = call float @dx.op.unary.f32(i32 21, float %5868)  ; Exp(value)
  %5870 = fmul fast float %5869, 0x3FEF591A60000000
  %5871 = fadd fast float %5870, 0x3F94DCB540000000
  %5872 = select i1 %5864, float %5871, float 1.000000e+00
  %5873 = fcmp fast oge float %5872, 1.000000e+00
  %5874 = fmul fast float %5857, 2.000000e+00
  %5875 = fadd fast float %5874, %5628
  %5876 = select i1 %5873, float %5875, float %5628
  %5877 = fsub fast float %5876, %5628
  %5878 = fmul fast float %5877, %5852
  %5879 = fadd fast float %5878, %5628
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5879, float %5626, float %5627, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.unary.f32(i32 25, float %5880)  ; Rsqrt(value)
  %5882 = fmul fast float %5881, %5626
  %5883 = fmul fast float %5881, %5627
  %5884 = fmul fast float %5879, %5881
  br label %5885

; <label>:5885                                    ; preds = %5856, %5813
  %5886 = phi float [ %5882, %5856 ], [ %5626, %5813 ]
  %5887 = phi float [ %5883, %5856 ], [ %5627, %5813 ]
  %5888 = phi float [ %5884, %5856 ], [ %5628, %5813 ]
  %5889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.i32 %5889, 2
  %5891 = add nsw i32 %5890, -1
  %5892 = call i32 @dx.op.binary.i32(i32 37, i32 %5891, i32 0)  ; IMax(a,b)
  %5893 = shl i32 %5850, 2
  %5894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.i32 %5894, 0
  %5896 = lshr i32 %5895, 16
  %5897 = and i32 %5895, 65535
  %5898 = lshr i32 %5895, 21
  %5899 = lshr i32 %5897, 5
  %5900 = call i32 @dx.op.binary.i32(i32 40, i32 %5899, i32 %5892)  ; UMin(a,b)
  %5901 = icmp ugt i32 %5898, %5900
  br i1 %5901, label %6265, label %5902

; <label>:5902                                    ; preds = %5885
  br label %5903

; <label>:5903                                    ; preds = %6257, %5902
  %5904 = phi float [ %6258, %6257 ], [ 0.000000e+00, %5902 ]
  %5905 = phi float [ %6259, %6257 ], [ 0.000000e+00, %5902 ]
  %5906 = phi float [ %6260, %6257 ], [ 0.000000e+00, %5902 ]
  %5907 = phi float [ %6261, %6257 ], [ 1.000000e+00, %5902 ]
  %5908 = phi i32 [ %6262, %6257 ], [ %5898, %5902 ]
  %5909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.i32 %5909, 2
  %5911 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5846, i32 %5910, i32 %5908)  ; UMad(a,b,c)
  %5912 = shl i32 %5911, 2
  %5913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5912, i32 undef)  ; BufferLoad(srv,index,wot)
  %5914 = extractvalue %dx.types.ResRet.i32 %5913, 0
  %5915 = shl i32 %5908, 5
  %5916 = sub nsw i32 %5896, %5915
  %5917 = call i32 @dx.op.binary.i32(i32 37, i32 %5916, i32 0)  ; IMax(a,b)
  %5918 = call i32 @dx.op.binary.i32(i32 38, i32 %5917, i32 31)  ; IMin(a,b)
  %5919 = sub nsw i32 1, %5896
  %5920 = add nsw i32 %5919, %5897
  %5921 = call i32 @dx.op.binary.i32(i32 37, i32 %5920, i32 0)  ; IMax(a,b)
  %5922 = call i32 @dx.op.binary.i32(i32 38, i32 %5921, i32 32)  ; IMin(a,b)
  %5923 = and i32 %5922, 31
  %5924 = shl i32 -1, %5923
  %5925 = xor i32 %5924, -1
  %5926 = and i32 %5918, 31
  %5927 = shl i32 %5925, %5926
  %5928 = icmp eq i32 %5922, 32
  %5929 = select i1 %5928, i32 -1, i32 %5927
  %5930 = and i32 %5929, %5914
  %5931 = icmp eq i32 %5930, 0
  br i1 %5931, label %6257, label %5932

; <label>:5932                                    ; preds = %5903
  br label %5933

; <label>:5933                                    ; preds = %6040, %5932
  %5934 = phi float [ %6041, %6040 ], [ %5904, %5932 ]
  %5935 = phi float [ %6042, %6040 ], [ %5905, %5932 ]
  %5936 = phi float [ %6043, %6040 ], [ %5906, %5932 ]
  %5937 = phi float [ %6044, %6040 ], [ %5907, %5932 ]
  %5938 = phi i32 [ %5943, %6040 ], [ %5930, %5932 ]
  %5939 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5938)  ; FirstbitLo(value)
  %5940 = add i32 %5939, %5915
  %5941 = and i32 %5939, 31
  %5942 = shl i32 1, %5941
  %5943 = xor i32 %5942, %5938
  %5944 = mul i32 %5940, 72
  %5945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5944, i32 undef)  ; BufferLoad(srv,index,wot)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.ResRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.ResRet.f32 %5945, 2
  %5949 = add i32 %5944, 12
  %5950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5949, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.i32 %5950, 0
  %5952 = add i32 %5944, 16
  %5953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5952, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.ResRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.ResRet.f32 %5953, 2
  %5957 = add i32 %5944, 28
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = add i32 %5944, 32
  %5961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5960, i32 undef)  ; BufferLoad(srv,index,wot)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.ResRet.f32 %5961, 3
  %5966 = add i32 %5944, 48
  %5967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.f32 %5967, 1
  %5970 = add i32 %5944, 56
  %5971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5970, i32 undef)  ; BufferLoad(srv,index,wot)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = add i32 %5944, 64
  %5975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5974, i32 undef)  ; BufferLoad(srv,index,wot)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = mul i32 %5940, 60
  %5979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = add i32 %5978, 12
  %5984 = add i32 %5978, 48
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = and i32 %5951, 32767
  %5990 = bitcast float %5946 to i32
  %5991 = icmp eq i32 %5990, -1
  %5992 = bitcast float %5947 to i32
  %5993 = and i32 %5951, 32768
  %5994 = icmp ne i32 %5993, 0
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.CBufRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.CBufRet.f32 %5995, 2
  %5999 = fsub fast float %5980, %5996
  %6000 = fsub fast float %5981, %5997
  %6001 = fsub fast float %5982, %5998
  %6002 = fsub fast float %201, %5999
  %6003 = fsub fast float %202, %6000
  %6004 = fsub fast float %203, %6001
  %6005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5983, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.ResRet.f32 %6005, 2
  %6009 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = add i32 %5978, 24
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6012, float %6013, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = add i32 %5978, 36
  %6017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6016, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.ResRet.f32 %6017, 2
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6023 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6024 = call float @dx.op.unary.f32(i32 6, float %6021)  ; FAbs(value)
  %6025 = fsub fast float %5986, %6022
  %6026 = fsub fast float %5987, %6023
  %6027 = fsub fast float %5988, %6024
  %6028 = fmul fast float %6025, %5954
  %6029 = fmul fast float %6026, %5955
  %6030 = fmul fast float %6027, %5956
  %6031 = call float @dx.op.binary.f32(i32 36, float %6029, float %6030)  ; FMin(a,b)
  %6032 = call float @dx.op.binary.f32(i32 36, float %6028, float %6031)  ; FMin(a,b)
  %6033 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6034 = call float @dx.op.binary.f32(i32 36, float %5937, float %6033)  ; FMin(a,b)
  %6035 = uitofp i1 %5994 to float
  %6036 = fadd fast float %5852, 1.000000e+00
  %6037 = fsub fast float %6036, %6035
  %6038 = fmul fast float %6034, %6037
  %6039 = fcmp fast ogt float %6038, 0.000000e+00
  br i1 %6039, label %6046, label %6040

; <label>:6040                                    ; preds = %6188, %5933
  %6041 = phi float [ %6252, %6188 ], [ %5934, %5933 ]
  %6042 = phi float [ %6253, %6188 ], [ %5935, %5933 ]
  %6043 = phi float [ %6254, %6188 ], [ %5936, %5933 ]
  %6044 = phi float [ %6255, %6188 ], [ %5937, %5933 ]
  %6045 = icmp eq i32 %5938, %5942
  br i1 %6045, label %6256, label %5933

; <label>:6046                                    ; preds = %5933
  br i1 %5991, label %6104, label %6047

; <label>:6047                                    ; preds = %6046
  %6048 = fsub fast float -0.000000e+00, %6006
  %6049 = fsub fast float -0.000000e+00, %6007
  %6050 = fsub fast float -0.000000e+00, %6008
  %6051 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float %6048, float %6049, float %6050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fsub fast float -0.000000e+00, %6051
  %6053 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6048, float %6049, float %6050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = fadd fast float %6053, %5969
  %6055 = fadd fast float %5968, %6053
  %6056 = fsub fast float -0.000000e+00, %6055
  %6057 = fcmp ogt float %6051, -0.000000e+00
  %6058 = select i1 %6057, float %6056, float %6054
  %6059 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6060 = fdiv fast float 1.000000e+00, %6059
  %6061 = fmul fast float %6058, %6060
  %6062 = call float @dx.op.binary.f32(i32 35, float %6061, float 0.000000e+00)  ; FMax(a,b)
  %6063 = fsub fast float -0.000000e+00, %6012
  %6064 = fsub fast float -0.000000e+00, %6013
  %6065 = fsub fast float -0.000000e+00, %6014
  %6066 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = fsub fast float -0.000000e+00, %6066
  %6068 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = fadd fast float %6068, %5973
  %6070 = fadd fast float %5972, %6068
  %6071 = fsub fast float -0.000000e+00, %6070
  %6072 = fcmp ogt float %6066, -0.000000e+00
  %6073 = select i1 %6072, float %6071, float %6069
  %6074 = call float @dx.op.unary.f32(i32 6, float %6067)  ; FAbs(value)
  %6075 = fdiv fast float 1.000000e+00, %6074
  %6076 = fmul fast float %6073, %6075
  %6077 = call float @dx.op.binary.f32(i32 35, float %6076, float 0.000000e+00)  ; FMax(a,b)
  %6078 = fsub fast float -0.000000e+00, %6018
  %6079 = fsub fast float -0.000000e+00, %6019
  %6080 = fsub fast float -0.000000e+00, %6020
  %6081 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = fsub fast float -0.000000e+00, %6081
  %6083 = call float @dx.op.dot3.f32(i32 55, float %6002, float %6003, float %6004, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6084 = fadd fast float %6083, %5977
  %6085 = fadd fast float %5976, %6083
  %6086 = fsub fast float -0.000000e+00, %6085
  %6087 = fcmp ogt float %6081, -0.000000e+00
  %6088 = select i1 %6087, float %6086, float %6084
  %6089 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6090 = fdiv fast float 1.000000e+00, %6089
  %6091 = fmul fast float %6088, %6090
  %6092 = call float @dx.op.binary.f32(i32 35, float %6091, float 0.000000e+00)  ; FMax(a,b)
  %6093 = call float @dx.op.binary.f32(i32 36, float %6077, float %6092)  ; FMin(a,b)
  %6094 = call float @dx.op.binary.f32(i32 36, float %6062, float %6093)  ; FMin(a,b)
  %6095 = fmul fast float %6094, %5886
  %6096 = fmul fast float %6094, %5887
  %6097 = fmul fast float %6094, %5888
  %6098 = fadd fast float %6095, %201
  %6099 = fadd fast float %6096, %202
  %6100 = fadd fast float %6097, %203
  %6101 = fsub fast float %6098, %5946
  %6102 = fsub fast float %6099, %5947
  %6103 = fsub fast float %6100, %5948
  br label %6111

; <label>:6104                                    ; preds = %6046
  %6105 = fmul fast float %5886, 8.096000e+03
  %6106 = fmul fast float %5887, 8.096000e+03
  %6107 = fmul fast float %5888, 8.096000e+03
  %6108 = fadd fast float %6105, %201
  %6109 = fadd fast float %6106, %202
  %6110 = fadd fast float %6107, %203
  br label %6111

; <label>:6111                                    ; preds = %6104, %6047
  %6112 = phi float [ %5886, %6104 ], [ %6101, %6047 ]
  %6113 = phi float [ %5887, %6104 ], [ %6102, %6047 ]
  %6114 = phi float [ %5888, %6104 ], [ %6103, %6047 ]
  %6115 = phi float [ %6108, %6104 ], [ %6098, %6047 ]
  %6116 = phi float [ %6109, %6104 ], [ %6099, %6047 ]
  %6117 = phi float [ %6110, %6104 ], [ %6100, %6047 ]
  %6118 = fcmp fast olt float %5965, 1.000000e+00
  br i1 %6118, label %6119, label %6150, !dx.controlflow.hints !100

; <label>:6119                                    ; preds = %6111
  %6120 = fmul fast float %6114, %5963
  %6121 = fmul fast float %6113, %5964
  %6122 = fsub fast float %6120, %6121
  %6123 = fmul fast float %6112, %5964
  %6124 = fmul fast float %6114, %5962
  %6125 = fsub fast float %6123, %6124
  %6126 = fmul fast float %6113, %5962
  %6127 = fmul fast float %6112, %5963
  %6128 = fsub fast float %6126, %6127
  %6129 = fmul fast float %6122, 2.000000e+00
  %6130 = fmul fast float %6125, 2.000000e+00
  %6131 = fmul fast float %6128, 2.000000e+00
  %6132 = fmul fast float %6129, %5965
  %6133 = fmul fast float %6130, %5965
  %6134 = fmul fast float %6131, %5965
  %6135 = fmul fast float %6131, %5963
  %6136 = fmul fast float %6130, %5964
  %6137 = fmul fast float %6129, %5964
  %6138 = fmul fast float %6131, %5962
  %6139 = fmul fast float %6130, %5962
  %6140 = fmul fast float %6129, %5963
  %6141 = fadd fast float %6135, %6112
  %6142 = fadd fast float %6141, %6132
  %6143 = fsub fast float %6142, %6136
  %6144 = fsub fast float %6113, %6138
  %6145 = fadd fast float %6144, %6133
  %6146 = fadd fast float %6145, %6137
  %6147 = fadd fast float %6134, %6114
  %6148 = fsub fast float %6147, %6140
  %6149 = fadd fast float %6148, %6139
  br label %6150

; <label>:6150                                    ; preds = %6119, %6111
  %6151 = phi float [ %6143, %6119 ], [ %6112, %6111 ]
  %6152 = phi float [ %6146, %6119 ], [ %6113, %6111 ]
  %6153 = phi float [ %6149, %6119 ], [ %6114, %6111 ]
  br i1 %5991, label %6185, label %6154

; <label>:6154                                    ; preds = %6150
  %6155 = fmul fast float %5615, 0x400187C840000000
  %6156 = fadd fast float %6155, 0xC00EFC2120000000
  %6157 = fmul fast float %6156, %5615
  %6158 = fadd fast float %6157, 0x3FE5D16340000000
  %6159 = fmul fast float %6158, %5615
  %6160 = fadd fast float %6159, 1.000000e+00
  %6161 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6162 = fsub fast float %6115, %201
  %6163 = fsub fast float %6116, %202
  %6164 = fsub fast float %6117, %203
  %6165 = fsub fast float %6115, %5946
  %6166 = fsub fast float %6116, %5947
  %6167 = fsub fast float %6117, %5948
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6162, float %6163, float %6164, float %6162, float %6163, float %6164)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.dot3.f32(i32 55, float %6165, float %6166, float %6167, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fadd fast float %6169, 0x3EE4F8B580000000
  %6171 = fdiv fast float %6168, %6170
  %6172 = bitcast float %6171 to i32
  %6173 = ashr i32 %6172, 1
  %6174 = add nsw i32 %6173, 532487669
  %6175 = bitcast i32 %6174 to float
  %6176 = fmul fast float %6175, %6161
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6178 = fmul fast float %6177, 0x4009981AE0000000
  %6179 = fsub fast float 0x40111BBD80000000, %6178
  %6180 = fmul fast float %6179, %6177
  %6181 = fadd fast float %6180, 0xC0009F6020000000
  %6182 = fmul fast float %6181, %6177
  %6183 = fadd fast float %6182, 1.000000e+00
  %6184 = call float @dx.op.unary.f32(i32 7, float %6183)  ; Saturate(value)
  br label %6188

; <label>:6185                                    ; preds = %6150
  %6186 = icmp ne i32 %5992, -1
  %6187 = zext i1 %6186 to i32
  br label %6188

; <label>:6188                                    ; preds = %6185, %6154
  %6189 = phi float [ %5615, %6185 ], [ %6184, %6154 ]
  %6190 = phi i32 [ %6187, %6185 ], [ 0, %6154 ]
  %6191 = fmul float %6189, 5.000000e+00
  %6192 = fsub float 5.000000e+00, %6191
  %6193 = icmp ne i32 %6190, 0
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6196 = fadd fast float %6195, %6192
  %6197 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6196)  ; FMax(a,b)
  %6198 = call float @dx.op.unary.f32(i32 6, float %6151)  ; FAbs(value)
  %6199 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6200 = fadd fast float %6199, %6198
  %6201 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6202 = fadd fast float %6200, %6201
  %6203 = fcmp fast oeq float %6202, 0.000000e+00
  %6204 = fdiv fast float 1.000000e+00, %6202
  %6205 = select i1 %6203, float 1.000000e+00, float %6204
  %6206 = fmul fast float %6205, %6151
  %6207 = fmul fast float %6205, %6152
  %6208 = call float @dx.op.unary.f32(i32 6, float %6207)  ; FAbs(value)
  %6209 = call float @dx.op.unary.f32(i32 6, float %6206)  ; FAbs(value)
  %6210 = fsub fast float 1.000000e+00, %6208
  %6211 = fsub fast float 1.000000e+00, %6209
  %6212 = fcmp fast oge float %6206, 0.000000e+00
  %6213 = fcmp fast oge float %6207, 0.000000e+00
  %6214 = select i1 %6212, float 1.000000e+00, float -1.000000e+00
  %6215 = select i1 %6213, float 1.000000e+00, float -1.000000e+00
  %6216 = fcmp fast ole float %6153, 0.000000e+00
  %6217 = fmul fast float %6214, %6210
  %6218 = fmul fast float %6215, %6211
  %6219 = select i1 %6216, float %6217, float %6206
  %6220 = select i1 %6216, float %6218, float %6207
  %6221 = fmul fast float %6219, 5.000000e-01
  %6222 = fmul fast float %6220, 5.000000e-01
  %6223 = fadd fast float %6221, 5.000000e-01
  %6224 = fadd fast float %6222, 5.000000e-01
  %6225 = uitofp i32 %5989 to float
  %6226 = call float @dx.op.binary.f32(i32 36, float %6197, float 3.000000e+00)  ; FMin(a,b)
  %6227 = fadd fast float %6226, 2.000000e+00
  %6228 = call float @dx.op.unary.f32(i32 21, float %6227)  ; Exp(value)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6230 = fmul fast float %6229, %6228
  %6231 = fmul fast float %6230, 2.000000e+00
  %6232 = fsub fast float 1.000000e+00, %6231
  %6233 = fmul fast float %6223, %6232
  %6234 = fmul fast float %6224, %6232
  %6235 = fadd fast float %6233, %6230
  %6236 = fadd fast float %6234, %6230
  %6237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6235, float %6236, float %6225, float undef, i32 0, i32 0, i32 undef, float %6197)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.ResRet.f32 %6237, 2
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6243 = fmul fast float %6242, %5959
  %6244 = call float @dx.op.binary.f32(i32 36, float %5681, float %6243)  ; FMin(a,b)
  %6245 = select i1 %6193, float %6244, float %6243
  %6246 = fmul fast float %6238, %6038
  %6247 = fmul fast float %6246, %6245
  %6248 = fmul fast float %6239, %6038
  %6249 = fmul fast float %6248, %6245
  %6250 = fmul fast float %6240, %6038
  %6251 = fmul fast float %6250, %6245
  %6252 = fadd fast float %6247, %5934
  %6253 = fadd fast float %6249, %5935
  %6254 = fadd fast float %6251, %5936
  %6255 = fsub fast float %5937, %6038
  br label %6040

; <label>:6256                                    ; preds = %6040
  br label %6257

; <label>:6257                                    ; preds = %6256, %5903
  %6258 = phi float [ %5904, %5903 ], [ %6041, %6256 ]
  %6259 = phi float [ %5905, %5903 ], [ %6042, %6256 ]
  %6260 = phi float [ %5906, %5903 ], [ %6043, %6256 ]
  %6261 = phi float [ %5907, %5903 ], [ %6044, %6256 ]
  %6262 = add i32 %5908, 1
  %6263 = icmp ugt i32 %6262, %5900
  br i1 %6263, label %6264, label %5903, !llvm.loop !101

; <label>:6264                                    ; preds = %6257
  br label %6265

; <label>:6265                                    ; preds = %6264, %5885
  %6266 = phi float [ 0.000000e+00, %5885 ], [ %6258, %6264 ]
  %6267 = phi float [ 0.000000e+00, %5885 ], [ %6259, %6264 ]
  %6268 = phi float [ 0.000000e+00, %5885 ], [ %6260, %6264 ]
  %6269 = call float @dx.op.dot3.f32(i32 55, float %6266, float %6267, float %6268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6270 = select i1 %260, float 0.000000e+00, float %6266
  %6271 = select i1 %260, float %6269, float %6267
  %6272 = select i1 %260, float 0.000000e+00, float %6268
  %6273 = fcmp fast olt float %5811, 0.000000e+00
  %6274 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %6275 = fmul fast float %6274, %5740
  %6276 = fmul fast float %6274, %5741
  %6277 = fmul fast float %6274, %5742
  %6278 = select i1 %6273, float %5740, float %6275
  %6279 = select i1 %6273, float %5741, float %6276
  %6280 = select i1 %6273, float %5742, float %6277
  %6281 = fsub fast float 1.000000e+00, %6274
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = fmul fast float %6282, %6270
  %6284 = fmul fast float %6282, %6271
  %6285 = fmul fast float %6282, %6272
  %6286 = fadd fast float %6278, %6283
  %6287 = fadd fast float %6279, %6284
  %6288 = fadd fast float %6280, %6285
  br label %6289

; <label>:6289                                    ; preds = %6265, %5794
  %6290 = phi float [ %5740, %5794 ], [ %6286, %6265 ]
  %6291 = phi float [ %5741, %5794 ], [ %6287, %6265 ]
  %6292 = phi float [ %5742, %5794 ], [ %6288, %6265 ]
  %6293 = fmul fast float %5800, %5736
  %6294 = fmul fast float %5800, %5737
  %6295 = fmul fast float %5800, %5738
  %6296 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = fcmp fast ogt float %6296, 0x3E7FF19E20000000
  %6298 = fdiv fast float 1.000000e+00, %6296
  %6299 = select i1 %6297, float %6298, float 0.000000e+00
  %6300 = fmul fast float %6299, %5606
  %6301 = fmul fast float %6299, %5607
  %6302 = fmul fast float %6299, %5608
  %6303 = fadd fast float %6300, -1.000000e+00
  %6304 = fadd fast float %6301, -1.000000e+00
  %6305 = fadd fast float %6302, -1.000000e+00
  %6306 = fmul fast float %6303, 5.000000e-01
  %6307 = fmul fast float %6304, 5.000000e-01
  %6308 = fmul fast float %6305, 5.000000e-01
  %6309 = fadd fast float %6306, 1.000000e+00
  %6310 = fadd fast float %6307, 1.000000e+00
  %6311 = fadd fast float %6308, 1.000000e+00
  %6312 = call float @dx.op.binary.f32(i32 35, float %5620, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6313 = fdiv fast float %3809, %6312
  %6314 = fcmp fast olt float %4436, 1.270000e+02
  %6315 = fcmp fast olt float %4437, 1.270000e+02
  %6316 = fcmp fast olt float %4438, 1.270000e+02
  %6317 = fmul fast float %4436, 0xBFF7154760000000
  %6318 = fmul fast float %6317, %6313
  %6319 = fmul fast float %4437, 0xBFF7154760000000
  %6320 = fmul fast float %6319, %6313
  %6321 = fmul fast float %4438, 0xBFF7154760000000
  %6322 = fmul fast float %6321, %6313
  %6323 = call float @dx.op.unary.f32(i32 21, float %6318)  ; Exp(value)
  %6324 = call float @dx.op.unary.f32(i32 21, float %6320)  ; Exp(value)
  %6325 = call float @dx.op.unary.f32(i32 21, float %6322)  ; Exp(value)
  %6326 = call float @dx.op.unary.f32(i32 7, float %6323)  ; Saturate(value)
  %6327 = call float @dx.op.unary.f32(i32 7, float %6324)  ; Saturate(value)
  %6328 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6329 = select i1 %6314, float %6326, float 0.000000e+00
  %6330 = select i1 %6315, float %6327, float 0.000000e+00
  %6331 = select i1 %6316, float %6328, float 0.000000e+00
  %6332 = fmul fast float %6329, %5800
  %6333 = fmul fast float %6330, %5800
  %6334 = fmul fast float %6331, %5800
  %6335 = fadd fast float %6332, -1.000000e+00
  %6336 = fadd fast float %6333, -1.000000e+00
  %6337 = fadd fast float %6334, -1.000000e+00
  %6338 = fmul fast float %6290, %5795
  %6339 = fmul fast float %6291, %5796
  %6340 = fmul fast float %6292, %5797
  %6341 = fsub fast float 1.000000e+00, %5620
  %6342 = bitcast float %6341 to i32
  %6343 = sitofp i32 %6342 to float
  %6344 = fmul fast float %6343, 5.000000e+00
  %6345 = fadd fast float %6344, 0xC1EFBF8940000000
  %6346 = fptosi float %6345 to i32
  %6347 = bitcast i32 %6346 to float
  %6348 = fmul fast float %6347, %4409
  %6349 = fmul fast float %5736, %6348
  %6350 = fmul fast float %6349, %5800
  %6351 = fmul fast float %6350, %6309
  %6352 = fmul fast float %5737, %6348
  %6353 = fmul fast float %6352, %5800
  %6354 = fmul fast float %6353, %6310
  %6355 = fmul fast float %5738, %6348
  %6356 = fmul fast float %6355, %5800
  %6357 = fmul fast float %6356, %6311
  %6358 = fmul fast float %6293, %4405
  %6359 = fmul fast float %6294, %4405
  %6360 = fmul fast float %6295, %4405
  %6361 = fadd fast float %6338, %4398
  %6362 = fadd fast float %6361, %6351
  %6363 = fmul fast float %6362, %4405
  %6364 = fadd fast float %6339, %4399
  %6365 = fadd fast float %6364, %6354
  %6366 = fmul fast float %6365, %4405
  %6367 = fadd fast float %6340, %4400
  %6368 = fadd fast float %6367, %6357
  %6369 = fmul fast float %6368, %4405
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 3
  %6372 = fcmp fast oeq float %6371, 0.000000e+00
  br i1 %6372, label %8089, label %6373

; <label>:6373                                    ; preds = %6289
  %6374 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6370, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.CBufRet.f32 %6377, 2
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6380, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = select i1 %260, float %6382, float %6378
  %6386 = select i1 %260, float %6384, float %6379
  %6387 = select i1 %260, float %6383, float %6380
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6390 = fmul fast float %6389, %121
  %6391 = fmul fast float %6389, %122
  %6392 = fmul fast float %6389, %123
  %6393 = fadd fast float %6390, %201
  %6394 = fadd fast float %6391, %202
  %6395 = fadd fast float %6392, %203
  %6396 = fcmp fast olt float %6371, 0.000000e+00
  br i1 %6396, label %7654, label %6397

; <label>:6397                                    ; preds = %6373
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = fmul fast float %6399, %6393
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6400, float %6413)  ; FMad(a,b,c)
  %6415 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6401, float %6414)  ; FMad(a,b,c)
  %6416 = fadd fast float %6415, %6402
  %6417 = fmul fast float %6404, %6393
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6405, float %6417)  ; FMad(a,b,c)
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6406, float %6418)  ; FMad(a,b,c)
  %6420 = fadd fast float %6419, %6407
  %6421 = fmul fast float %6409, %6393
  %6422 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6410, float %6421)  ; FMad(a,b,c)
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6411, float %6422)  ; FMad(a,b,c)
  %6424 = fadd fast float %6423, %6412
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = fcmp fast une float %6426, 0.000000e+00
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6428, 3
  %6432 = fmul fast float %6431, %6416
  %6433 = fmul fast float %6431, %6420
  %6434 = fadd fast float %6432, %6429
  %6435 = fadd fast float %6433, %6430
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6440 = fmul fast float %6439, %6416
  %6441 = fmul fast float %6439, %6420
  %6442 = fadd fast float %6440, %6437
  %6443 = fadd fast float %6441, %6438
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6446 = fsub fast float %6445, %6424
  %6447 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6448 = fmul fast float %6446, %6447
  %6449 = fsub fast float 1.000000e+00, %6448
  %6450 = call float @dx.op.unary.f32(i32 7, float %6449)  ; Saturate(value)
  br i1 %6427, label %6511, label %6451

; <label>:6451                                    ; preds = %6397
  %6452 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6455 = fadd fast float %6454, %6452
  %6456 = fcmp fast ogt float %6455, 0.000000e+00
  br i1 %6456, label %6457, label %6481

; <label>:6457                                    ; preds = %6451
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = extractvalue %dx.types.CBufRet.f32 %6458, 1
  %6461 = fsub fast float %6442, %6459
  %6462 = fsub fast float %6443, %6460
  %6463 = fcmp fast olt float %6461, 0.000000e+00
  %6464 = fcmp fast olt float %6462, 0.000000e+00
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6468 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6469 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6470 = select i1 %6463, float %6466, float %6468
  %6471 = select i1 %6464, float %6467, float %6469
  %6472 = fmul fast float %6470, %6461
  %6473 = fmul fast float %6471, %6462
  %6474 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6475 = call float @dx.op.unary.f32(i32 6, float %6473)  ; FAbs(value)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6477 = call float @dx.op.binary.f32(i32 35, float %6474, float %6475)  ; FMax(a,b)
  %6478 = fsub fast float %6476, %6477
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = fmul fast float %6479, %6450
  br label %6481

; <label>:6481                                    ; preds = %6457, %6451
  %6482 = phi float [ %6480, %6457 ], [ 0.000000e+00, %6451 ]
  %6483 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6484 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6485 = fadd fast float %6484, %6483
  %6486 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6486, label %6487, label %6511

; <label>:6487                                    ; preds = %6481
  %6488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6489 = extractvalue %dx.types.CBufRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.CBufRet.f32 %6488, 1
  %6491 = fsub fast float %6434, %6489
  %6492 = fsub fast float %6435, %6490
  %6493 = fcmp fast olt float %6491, 0.000000e+00
  %6494 = fcmp fast olt float %6492, 0.000000e+00
  %6495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6496 = extractvalue %dx.types.CBufRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.CBufRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.CBufRet.f32 %6495, 2
  %6499 = extractvalue %dx.types.CBufRet.f32 %6495, 3
  %6500 = select i1 %6493, float %6496, float %6498
  %6501 = select i1 %6494, float %6497, float %6499
  %6502 = fmul fast float %6500, %6491
  %6503 = fmul fast float %6501, %6492
  %6504 = call float @dx.op.unary.f32(i32 6, float %6502)  ; FAbs(value)
  %6505 = call float @dx.op.unary.f32(i32 6, float %6503)  ; FAbs(value)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6507 = call float @dx.op.binary.f32(i32 35, float %6504, float %6505)  ; FMax(a,b)
  %6508 = fsub fast float %6506, %6507
  %6509 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6510 = fmul fast float %6509, %6450
  br label %6511

; <label>:6511                                    ; preds = %6487, %6481, %6397
  %6512 = phi float [ 0.000000e+00, %6397 ], [ %6510, %6487 ], [ 0.000000e+00, %6481 ]
  %6513 = phi float [ 0.000000e+00, %6397 ], [ %6482, %6487 ], [ %6482, %6481 ]
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6516 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 1
  %6520 = fsub fast float %6416, %6518
  %6521 = fsub fast float %6420, %6519
  %6522 = fcmp fast olt float %6520, 0.000000e+00
  %6523 = fcmp fast olt float %6521, 0.000000e+00
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6529 = select i1 %6522, float %6525, float %6527
  %6530 = select i1 %6523, float %6526, float %6528
  %6531 = fmul fast float %6529, %6520
  %6532 = fmul fast float %6530, %6521
  %6533 = call float @dx.op.unary.f32(i32 6, float %6531)  ; FAbs(value)
  %6534 = call float @dx.op.unary.f32(i32 6, float %6532)  ; FAbs(value)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6536 = call float @dx.op.binary.f32(i32 35, float %6533, float %6534)  ; FMax(a,b)
  %6537 = fsub fast float %6535, %6536
  %6538 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6539 = call float @dx.op.binary.f32(i32 36, float %6538, float %6516)  ; FMin(a,b)
  %6540 = fmul fast float %6539, %6450
  %6541 = fsub fast float %6512, %6540
  %6542 = fsub fast float %6513, %6512
  %6543 = fsub fast float %6542, %6540
  %6544 = call float @dx.op.binary.f32(i32 35, float %6512, float %6513)  ; FMax(a,b)
  %6545 = call float @dx.op.binary.f32(i32 35, float %6540, float %6544)  ; FMax(a,b)
  %6546 = fcmp fast olt float %6545, 1.000000e+00
  br i1 %6546, label %6547, label %6945, !dx.controlflow.hints !103

; <label>:6547                                    ; preds = %6511
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = fcmp fast une float %6549, 0.000000e+00
  br i1 %6550, label %6551, label %6945, !dx.controlflow.hints !104

; <label>:6551                                    ; preds = %6547
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6567 = fmul fast float %6553, %6393
  %6568 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6554, float %6567)  ; FMad(a,b,c)
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6555, float %6568)  ; FMad(a,b,c)
  %6570 = fadd fast float %6569, %6556
  %6571 = fmul fast float %6558, %6393
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6559, float %6571)  ; FMad(a,b,c)
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6560, float %6572)  ; FMad(a,b,c)
  %6574 = fadd fast float %6573, %6561
  %6575 = fmul fast float %6563, %6393
  %6576 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %6564, float %6575)  ; FMad(a,b,c)
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %6565, float %6576)  ; FMad(a,b,c)
  %6578 = fadd fast float %6577, %6566
  %6579 = fcmp fast oge float %6570, 1.000000e+00
  %6580 = fcmp fast oge float %6574, 1.000000e+00
  %6581 = or i1 %6579, %6580
  %6582 = fcmp fast olt float %6570, 0.000000e+00
  %6583 = fcmp fast olt float %6574, 0.000000e+00
  %6584 = or i1 %6582, %6583
  %6585 = or i1 %6581, %6584
  br i1 %6585, label %6945, label %6586, !dx.controlflow.hints !105

; <label>:6586                                    ; preds = %6551
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.CBufRet.f32 %6587, 2
  %6591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.i32 %6591, 2
  %6593 = uitofp i32 %6592 to float
  %6594 = extractvalue %dx.types.CBufRet.i32 %6591, 3
  %6595 = uitofp i32 %6594 to float
  %6596 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6597 = fmul fast float %6596, 2.000000e+00
  %6598 = fsub fast float %6570, %6588
  %6599 = fsub fast float %6574, %6589
  %6600 = fmul fast float %6597, %6598
  %6601 = fmul fast float %6597, %6599
  %6602 = fdiv fast float 1.000000e+00, %6376
  %6603 = fmul fast float %6601, %6602
  %6604 = call float @dx.op.unary.f32(i32 6, float %6603)  ; FAbs(value)
  %6605 = fmul fast float %6590, %6395
  %6606 = fmul fast float %6605, %6597
  %6607 = call float @dx.op.unary.f32(i32 6, float %6606)  ; FAbs(value)
  %6608 = call float @dx.op.unary.f32(i32 6, float %6600)  ; FAbs(value)
  %6609 = call float @dx.op.binary.f32(i32 35, float %6607, float %6604)  ; FMax(a,b)
  %6610 = call float @dx.op.binary.f32(i32 35, float %6608, float %6609)  ; FMax(a,b)
  %6611 = fmul fast float %6610, 2.000000e+00
  %6612 = call float @dx.op.unary.f32(i32 23, float %6611)  ; Log(value)
  %6613 = call float @dx.op.binary.f32(i32 35, float %6612, float %6593)  ; FMax(a,b)
  %6614 = call float @dx.op.unary.f32(i32 22, float %6613)  ; Frc(value)
  %6615 = fadd fast float %6614, 0xBFEA666660000000
  %6616 = fmul fast float %6615, 8.000000e+00
  %6617 = call float @dx.op.unary.f32(i32 7, float %6616)  ; Saturate(value)
  %6618 = call float @dx.op.unary.f32(i32 27, float %6613)  ; Round_ni(value)
  %6619 = fadd fast float %6618, %6617
  %6620 = call float @dx.op.binary.f32(i32 36, float %6619, float %6595)  ; FMin(a,b)
  %6621 = call float @dx.op.unary.f32(i32 27, float %6620)  ; Round_ni(value)
  %6622 = fsub fast float -0.000000e+00, %6621
  %6623 = call float @dx.op.unary.f32(i32 21, float %6622)  ; Exp(value)
  %6624 = fmul fast float %6623, %6597
  %6625 = fmul fast float %6624, %6570
  %6626 = fmul fast float %6624, %6574
  %6627 = fmul fast float %6625, 2.500000e-01
  %6628 = fmul fast float %6626, 2.500000e-01
  %6629 = fadd fast float %6627, 5.000000e-01
  %6630 = fadd fast float %6628, 5.000000e-01
  %6631 = fsub fast float %6595, %6593
  %6632 = fptoui float %6631 to i32
  %6633 = add i32 %6632, 320
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6633)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6637 = fcmp fast une float %6620, %6595
  %6638 = fsub fast float %6570, %6635
  %6639 = fsub fast float %6574, %6636
  %6640 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6641 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6642 = fmul fast float %6640, %6624
  %6643 = fmul fast float %6641, %6624
  %6644 = fcmp fast olt float %6642, 1.000000e+00
  %6645 = fcmp fast olt float %6643, 1.000000e+00
  %6646 = and i1 %6644, %6645
  %6647 = or i1 %6637, %6646
  br i1 %6647, label %6648, label %6945, !dx.controlflow.hints !106

; <label>:6648                                    ; preds = %6586
  %6649 = fmul fast float %6626, 5.000000e-01
  %6650 = fmul fast float %6625, 5.000000e-01
  %6651 = fadd fast float %6649, 5.000000e-01
  %6652 = fadd fast float %6650, 5.000000e-01
  %6653 = sitofp i32 %6592 to float
  %6654 = fsub fast float %6620, %6653
  %6655 = call float @dx.op.unary.f32(i32 27, float %6654)  ; Round_ni(value)
  %6656 = call float @dx.op.unary.f32(i32 22, float %6620)  ; Frc(value)
  %6657 = call float @dx.op.unary.f32(i32 22, float %6652)  ; Frc(value)
  %6658 = call float @dx.op.unary.f32(i32 22, float %6651)  ; Frc(value)
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6657, float %6658, float %6655, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.ResRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.ResRet.f32 %6659, 3
  %6664 = fcmp fast ogt float %6656, 0.000000e+00
  br i1 %6664, label %6665, label %6686, !dx.controlflow.hints !107

; <label>:6665                                    ; preds = %6648
  %6666 = fadd fast float %6655, 1.000000e+00
  %6667 = call float @dx.op.unary.f32(i32 22, float %6629)  ; Frc(value)
  %6668 = call float @dx.op.unary.f32(i32 22, float %6630)  ; Frc(value)
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6667, float %6668, float %6666, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6669, 3
  %6674 = fsub fast float %6670, %6660
  %6675 = fsub fast float %6671, %6661
  %6676 = fsub fast float %6672, %6662
  %6677 = fsub fast float %6673, %6663
  %6678 = fmul fast float %6674, %6656
  %6679 = fmul fast float %6675, %6656
  %6680 = fmul fast float %6676, %6656
  %6681 = fmul fast float %6677, %6656
  %6682 = fadd fast float %6678, %6660
  %6683 = fadd fast float %6679, %6661
  %6684 = fadd fast float %6680, %6662
  %6685 = fadd fast float %6681, %6663
  br label %6686

; <label>:6686                                    ; preds = %6665, %6648
  %6687 = phi float [ %6682, %6665 ], [ %6660, %6648 ]
  %6688 = phi float [ %6683, %6665 ], [ %6661, %6648 ]
  %6689 = phi float [ %6684, %6665 ], [ %6662, %6648 ]
  %6690 = phi float [ %6685, %6665 ], [ %6663, %6648 ]
  %6691 = fadd fast float %6687, -5.000000e-01
  %6692 = fadd fast float %6689, -5.000000e-01
  %6693 = fmul fast float %6691, 0xBFD5555560000000
  %6694 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6692, float %6693)  ; FMad(a,b,c)
  %6695 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6688, float 0.000000e+00)  ; FMad(a,b,c)
  %6696 = fadd fast float %6695, %6690
  %6697 = fmul fast float %6691, -7.500000e-01
  %6698 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6692, float %6697)  ; FMad(a,b,c)
  %6699 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6688, float 0.000000e+00)  ; FMad(a,b,c)
  %6700 = fadd fast float %6699, %6690
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6707 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6708 = fsub fast float %6704, %6694
  %6709 = fsub fast float %6705, %6696
  %6710 = fsub fast float %6706, %6698
  %6711 = fsub fast float %6707, %6700
  %6712 = fmul fast float %6708, %6702
  %6713 = fmul fast float %6709, %6702
  %6714 = fmul fast float %6710, %6702
  %6715 = fmul fast float %6711, %6702
  %6716 = fadd fast float %6712, %6694
  %6717 = fadd fast float %6713, %6696
  %6718 = fadd fast float %6714, %6698
  %6719 = fadd fast float %6715, %6700
  %6720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6721 = extractvalue %dx.types.ResRet.i32 %6720, 0
  %6722 = and i32 %6721, 536870911
  %6723 = uitofp i32 %6722 to float
  %6724 = fmul fast float %6723, %6570
  %6725 = fmul fast float %6723, %6574
  %6726 = fptoui float %6724 to i32
  %6727 = fptoui float %6725 to i32
  %6728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6729 = extractvalue %dx.types.ResRet.i32 %6728, 0
  %6730 = and i32 %6729, 31
  %6731 = lshr i32 %6726, %6730
  %6732 = lshr i32 %6727, %6730
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = and i32 %6734, 31
  %6736 = shl i32 1, %6735
  %6737 = call i32 @dx.op.binary.i32(i32 40, i32 %6736, i32 4)  ; UMin(a,b)
  %6738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6739 = extractvalue %dx.types.ResRet.i32 %6738, 0
  %6740 = extractvalue %dx.types.ResRet.i32 %6738, 1
  %6741 = icmp eq i32 %6737, 0
  br i1 %6741, label %6783, label %6742

; <label>:6742                                    ; preds = %6686
  br label %6743

; <label>:6743                                    ; preds = %6771, %6742
  %6744 = phi i32 [ %6774, %6771 ], [ 0, %6742 ]
  %6745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6746 = extractvalue %dx.types.ResRet.i32 %6745, 0
  %6747 = lshr i32 %6746, 16
  %6748 = and i32 %6747, 31
  %6749 = shl i32 %6732, %6748
  %6750 = add i32 %6749, %6731
  %6751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.i32 %6751, 0
  %6753 = and i32 %6752, 31
  %6754 = shl i32 %6750, %6753
  %6755 = add i32 %6754, %6744
  %6756 = shl i32 %6755, 2
  %6757 = add i32 %6756, 32
  %6758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6757, i32 undef)  ; BufferLoad(srv,index,wot)
  %6759 = extractvalue %dx.types.ResRet.i32 %6758, 0
  %6760 = icmp slt i32 %6759, 0
  %6761 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6744
  %6762 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6744
  %6763 = bitcast float* %6761 to i32*
  %6764 = bitcast float* %6762 to i32*
  br i1 %6760, label %6765, label %6771

; <label>:6765                                    ; preds = %6743
  %6766 = and i32 %6759, 1073741823
  %6767 = add nuw nsw i32 %6766, 20
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.i32 %6768, 1
  br label %6771

; <label>:6771                                    ; preds = %6765, %6743
  %6772 = phi i32 [ %6769, %6765 ], [ %6739, %6743 ]
  %6773 = phi i32 [ %6770, %6765 ], [ %6740, %6743 ]
  store i32 %6772, i32* %6763, align 4
  store i32 %6773, i32* %6764, align 4
  %6774 = add nuw i32 %6744, 1
  %6775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.i32 %6775, 2
  %6777 = icmp eq i32 %6776, 0
  %6778 = icmp ugt i32 %6759, -1073741825
  %6779 = and i1 %6778, %6777
  %6780 = icmp ult i32 %6774, %6737
  %6781 = and i1 %6779, %6780
  br i1 %6781, label %6743, label %6782

; <label>:6782                                    ; preds = %6771
  br label %6783

; <label>:6783                                    ; preds = %6782, %6686
  %6784 = phi i32 [ 0, %6686 ], [ %6774, %6782 ]
  %6785 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6786 = fptoui float %6785 to i32
  %6787 = icmp eq i32 %6786, 0
  br i1 %6787, label %6839, label %6788

; <label>:6788                                    ; preds = %6783
  br label %6789

; <label>:6789                                    ; preds = %6834, %6788
  %6790 = phi i32 [ %6835, %6834 ], [ %6784, %6788 ]
  %6791 = phi i32 [ %6836, %6834 ], [ 0, %6788 ]
  %6792 = lshr i32 %6791, 2
  %6793 = and i32 %6791, 3
  %6794 = add nuw nsw i32 %6792, 83
  %6795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6794)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.i32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.i32 %6795, 1
  %6798 = extractvalue %dx.types.CBufRet.i32 %6795, 2
  %6799 = extractvalue %dx.types.CBufRet.i32 %6795, 3
  %6800 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6796, i32* %6800, align 4
  %6801 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6797, i32* %6801, align 4
  %6802 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6798, i32* %6802, align 4
  %6803 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6799, i32* %6803, align 4
  %6804 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6793
  %6805 = load i32, i32* %6804, align 4, !tbaa !108, !noalias !112
  %6806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6807 = extractvalue %dx.types.ResRet.i32 %6806, 0
  %6808 = lshr i32 %6807, 16
  %6809 = and i32 %6808, 31
  %6810 = shl i32 %6732, %6809
  %6811 = add i32 %6810, %6731
  %6812 = shl i32 %6811, 2
  %6813 = add i32 %6812, %6805
  %6814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6813, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.i32 %6814, 0
  %6816 = icmp eq i32 %6815, 0
  br i1 %6816, label %6834, label %6817

; <label>:6817                                    ; preds = %6789
  %6818 = icmp slt i32 %6815, 0
  %6819 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6790
  %6820 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6790
  %6821 = bitcast float* %6819 to i32*
  %6822 = bitcast float* %6820 to i32*
  br i1 %6818, label %6823, label %6830

; <label>:6823                                    ; preds = %6817
  %6824 = and i32 %6815, 1073741823
  %6825 = add i32 %6805, 20
  %6826 = add i32 %6825, %6824
  %6827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6826, i32 undef)  ; BufferLoad(srv,index,wot)
  %6828 = extractvalue %dx.types.ResRet.i32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.i32 %6827, 1
  br label %6830

; <label>:6830                                    ; preds = %6823, %6817
  %6831 = phi i32 [ %6828, %6823 ], [ %6739, %6817 ]
  %6832 = phi i32 [ %6829, %6823 ], [ %6740, %6817 ]
  store i32 %6831, i32* %6821, align 4
  store i32 %6832, i32* %6822, align 4
  %6833 = add i32 %6790, 1
  br label %6834

; <label>:6834                                    ; preds = %6830, %6789
  %6835 = phi i32 [ %6790, %6789 ], [ %6833, %6830 ]
  %6836 = add nuw i32 %6791, 1
  %6837 = icmp eq i32 %6836, %6786
  br i1 %6837, label %6838, label %6789

; <label>:6838                                    ; preds = %6834
  br label %6839

; <label>:6839                                    ; preds = %6838, %6783
  %6840 = phi i32 [ %6784, %6783 ], [ %6835, %6838 ]
  %6841 = icmp eq i32 %6840, 1
  %6842 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6843 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6841, label %6844, label %6847

; <label>:6844                                    ; preds = %6839
  %6845 = load float, float* %6842, align 4
  %6846 = load float, float* %6843, align 4
  br label %6874

; <label>:6847                                    ; preds = %6839
  %6848 = load float, float* %6842, align 4
  %6849 = load float, float* %6843, align 4
  %6850 = fdiv fast float 1.000000e+00, %6849
  %6851 = fsub fast float %6848, %6850
  %6852 = icmp ugt i32 %6840, 1
  br i1 %6852, label %6853, label %6869

; <label>:6853                                    ; preds = %6847
  br label %6854

; <label>:6854                                    ; preds = %6854, %6853
  %6855 = phi float [ %6864, %6854 ], [ %6851, %6853 ]
  %6856 = phi float [ %6865, %6854 ], [ %6848, %6853 ]
  %6857 = phi i32 [ %6866, %6854 ], [ 1, %6853 ]
  %6858 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6857
  %6859 = load float, float* %6858, align 4
  %6860 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6857
  %6861 = load float, float* %6860, align 4
  %6862 = fdiv fast float 1.000000e+00, %6861
  %6863 = fsub fast float %6859, %6862
  %6864 = call float @dx.op.binary.f32(i32 36, float %6855, float %6863)  ; FMin(a,b)
  %6865 = call float @dx.op.binary.f32(i32 35, float %6856, float %6859)  ; FMax(a,b)
  %6866 = add nuw i32 %6857, 1
  %6867 = icmp eq i32 %6866, %6840
  br i1 %6867, label %6868, label %6854

; <label>:6868                                    ; preds = %6854
  br label %6869

; <label>:6869                                    ; preds = %6868, %6847
  %6870 = phi float [ %6851, %6847 ], [ %6864, %6868 ]
  %6871 = phi float [ %6848, %6847 ], [ %6865, %6868 ]
  %6872 = fsub fast float %6871, %6870
  %6873 = fdiv fast float 1.000000e+00, %6872
  br label %6874

; <label>:6874                                    ; preds = %6869, %6844
  %6875 = phi float [ %6845, %6844 ], [ %6871, %6869 ]
  %6876 = phi float [ %6846, %6844 ], [ %6873, %6869 ]
  %6877 = fadd fast float %6578, %6875
  %6878 = fmul fast float %6877, %6876
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = fmul fast float %6879, 2.000000e+00
  %6881 = fsub fast float 1.000000e+00, %6880
  %6882 = fmul fast float %6716, %6716
  %6883 = fsub fast float %6717, %6882
  %6884 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6883)  ; FMax(a,b)
  %6885 = fdiv fast float 1.000000e+00, %6884
  %6886 = fmul fast float %6717, %6716
  %6887 = fsub fast float %6718, %6886
  %6888 = fsub fast float %6881, %6716
  %6889 = fmul fast float %6881, %6881
  %6890 = fsub fast float %6889, %6717
  %6891 = fmul fast float %6885, %6887
  %6892 = fmul fast float %6891, %6888
  %6893 = fsub fast float %6890, %6892
  %6894 = fmul fast float %6717, %6717
  %6895 = fsub fast float %6719, %6894
  %6896 = fmul fast float %6887, %6887
  %6897 = fmul fast float %6896, %6885
  %6898 = fsub fast float %6895, %6897
  %6899 = fdiv fast float %6893, %6898
  %6900 = fmul fast float %6899, %6887
  %6901 = fsub fast float %6888, %6900
  %6902 = fmul fast float %6901, %6885
  %6903 = fmul fast float %6902, %6716
  %6904 = fsub fast float 1.000000e+00, %6903
  %6905 = fmul fast float %6899, %6717
  %6906 = fsub fast float %6904, %6905
  %6907 = fmul fast float %6902, %6902
  %6908 = fmul fast float %6899, 4.000000e+00
  %6909 = fmul fast float %6908, %6906
  %6910 = fsub fast float %6907, %6909
  %6911 = call float @dx.op.unary.f32(i32 24, float %6910)  ; Sqrt(value)
  %6912 = fcmp fast oge float %6902, 0.000000e+00
  %6913 = fsub fast float -0.000000e+00, %6911
  %6914 = select i1 %6912, float %6913, float %6911
  %6915 = fsub fast float %6914, %6902
  %6916 = fdiv fast float %6915, %6899
  %6917 = fdiv fast float %6906, %6915
  %6918 = fmul fast float %6916, 5.000000e-01
  %6919 = fmul fast float %6917, 2.000000e+00
  %6920 = select i1 %6912, float %6918, float %6919
  %6921 = select i1 %6912, float %6919, float %6918
  %6922 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6923 = call float @dx.op.binary.f32(i32 36, float %6920, float %6921)  ; FMin(a,b)
  %6924 = fcmp fast ogt float %6881, %6922
  %6925 = fsub fast float %6881, %6923
  %6926 = fsub fast float %6881, %6922
  %6927 = fsub fast float %6922, %6923
  %6928 = select i1 %6924, float %6926, float %6927
  %6929 = fmul float %6925, %6928
  %6930 = select i1 %6924, float %6923, float %6881
  %6931 = fcmp fast ogt float %6881, %6923
  %6932 = fmul fast float %6930, %6922
  %6933 = fadd fast float %6930, %6922
  %6934 = fmul fast float %6933, %6716
  %6935 = fadd fast float %6932, %6717
  %6936 = fsub fast float %6935, %6934
  %6937 = fdiv fast float %6936, %6929
  %6938 = select i1 %6931, float %6937, float 0.000000e+00
  %6939 = fsub fast float 1.000000e+00, %6938
  %6940 = select i1 %6924, float %6939, float %6938
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6943 = fmul fast float %6942, %6941
  %6944 = fsub fast float 1.000000e+00, %6943
  br label %6945

; <label>:6945                                    ; preds = %6874, %6586, %6551, %6547, %6511
  %6946 = phi float [ 1.000000e+00, %6511 ], [ %6944, %6874 ], [ 1.000000e+00, %6551 ], [ 1.000000e+00, %6586 ], [ 1.000000e+00, %6547 ]
  %6947 = fcmp fast ogt float %6543, 0.000000e+00
  br i1 %6947, label %6948, label %7112, !dx.controlflow.hints !121

; <label>:6948                                    ; preds = %6945
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6951 = fadd fast float %6950, %6424
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6957 = call float @dx.op.binary.f32(i32 35, float %6951, float 0.000000e+00)  ; FMax(a,b)
  %6958 = fadd fast float %6957, 0x3F10000000000000
  %6959 = fcmp fast oeq float %6956, 0.000000e+00
  br i1 %6959, label %6960, label %7027

; <label>:6960                                    ; preds = %6948
  %6961 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6962 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6963 = fmul fast float %6962, %6442
  %6964 = fmul fast float %6961, %6443
  %6965 = fadd fast float %6963, 5.000000e-01
  %6966 = call float @dx.op.unary.f32(i32 27, float %6965)  ; Round_ni(value)
  %6967 = fadd fast float %6964, 5.000000e-01
  %6968 = call float @dx.op.unary.f32(i32 27, float %6967)  ; Round_ni(value)
  %6969 = fsub fast float %6965, %6966
  %6970 = fsub fast float %6967, %6968
  %6971 = fadd fast float %6966, -5.000000e-01
  %6972 = fadd fast float %6968, -5.000000e-01
  %6973 = fmul fast float %6969, 2.000000e+00
  %6974 = fsub fast float 3.000000e+00, %6973
  %6975 = fadd fast float %6973, 1.000000e+00
  %6976 = fsub fast float 2.000000e+00, %6969
  %6977 = bitcast float %6974 to i32
  %6978 = sub nsw i32 2129859010, %6977
  %6979 = bitcast i32 %6978 to float
  %6980 = fmul fast float %6979, %6976
  %6981 = fadd fast float %6980, -1.000000e+00
  %6982 = bitcast float %6975 to i32
  %6983 = sub nsw i32 2129859010, %6982
  %6984 = bitcast i32 %6983 to float
  %6985 = fmul fast float %6984, %6969
  %6986 = fadd fast float %6985, 1.000000e+00
  %6987 = fmul fast float %6970, 2.000000e+00
  %6988 = fsub fast float 3.000000e+00, %6987
  %6989 = fadd fast float %6987, 1.000000e+00
  %6990 = fsub fast float 2.000000e+00, %6970
  %6991 = bitcast float %6988 to i32
  %6992 = sub nsw i32 2129859010, %6991
  %6993 = bitcast i32 %6992 to float
  %6994 = fmul fast float %6993, %6990
  %6995 = fadd fast float %6994, -1.000000e+00
  %6996 = bitcast float %6989 to i32
  %6997 = sub nsw i32 2129859010, %6996
  %6998 = bitcast i32 %6997 to float
  %6999 = fmul fast float %6998, %6970
  %7000 = fadd fast float %6999, 1.000000e+00
  %7001 = fadd fast float %6981, %6971
  %7002 = fmul fast float %7001, %6953
  %7003 = fadd fast float %6995, %6972
  %7004 = fmul fast float %7003, %6954
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7002, float %7004, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = fmul fast float %7006, %6974
  %7008 = fadd fast float %6986, %6971
  %7009 = fmul fast float %7008, %6953
  %7010 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7009, float %7004, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7011 = extractvalue %dx.types.ResRet.f32 %7010, 0
  %7012 = fmul fast float %7011, %6975
  %7013 = fadd fast float %7000, %6972
  %7014 = fmul fast float %7013, %6954
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7002, float %7014, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = fmul fast float %7016, %6974
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7009, float %7014, float undef, float undef, i32 0, i32 0, i32 undef, float %6958)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = fmul fast float %7019, %6975
  %7021 = fadd fast float %7020, %7017
  %7022 = fmul fast float %7021, %6989
  %7023 = fadd fast float %7012, %7007
  %7024 = fmul fast float %7023, %6988
  %7025 = fadd fast float %7024, %7022
  %7026 = fmul fast float %7025, 6.250000e-02
  br label %7112

; <label>:7027                                    ; preds = %6948
  %7028 = fmul fast float %271, 0x401921FB60000000
  %7029 = call float @dx.op.unary.f32(i32 13, float %7028)  ; Sin(value)
  %7030 = call float @dx.op.unary.f32(i32 12, float %7028)  ; Cos(value)
  %7031 = fsub fast float -0.000000e+00, %7029
  br label %7032

; <label>:7032                                    ; preds = %7081, %7027
  %7033 = phi float [ 0.000000e+00, %7027 ], [ %7076, %7081 ]
  %7034 = phi float [ 0.000000e+00, %7027 ], [ %7078, %7081 ]
  %7035 = phi i32 [ 0, %7027 ], [ %7082, %7081 ]
  %7036 = mul i32 %7035, 2
  %7037 = add i32 0, %7036
  %7038 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7037
  %7039 = load float, float* %7038, align 4
  %7040 = mul i32 %7035, 2
  %7041 = add i32 1, %7040
  %7042 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7041
  %7043 = load float, float* %7042, align 4
  %7044 = fmul fast float %7039, %7030
  %7045 = call float @dx.op.tertiary.f32(i32 46, float %7043, float %7031, float %7044)  ; FMad(a,b,c)
  %7046 = fmul fast float %7039, %7029
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %7043, float %7030, float %7046)  ; FMad(a,b,c)
  %7048 = fmul fast float %7045, %6956
  %7049 = fmul fast float %7047, %6956
  %7050 = fadd fast float %7048, %6442
  %7051 = fadd fast float %7049, %6443
  %7052 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7050, float %7051, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.ResRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.ResRet.f32 %7052, 3
  %7057 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7053, float* %7057, align 4
  %7058 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7054, float* %7058, align 4
  %7059 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7055, float* %7059, align 4
  %7060 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7056, float* %7060, align 4
  %7061 = fsub fast float %7053, %6958
  %7062 = fcmp fast olt float %7061, 0.000000e+00
  %7063 = select i1 %7062, float 0.000000e+00, float 1.000000e+00
  %7064 = fadd fast float %7063, %7033
  %7065 = fmul fast float %7063, %7061
  %7066 = fadd fast float %7065, %7034
  br label %7067

; <label>:7067                                    ; preds = %7067, %7032
  %7068 = phi i32 [ 1, %7032 ], [ %7079, %7067 ]
  %7069 = phi float [ %7066, %7032 ], [ %7078, %7067 ]
  %7070 = phi float [ %7064, %7032 ], [ %7076, %7067 ]
  %7071 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7068
  %7072 = load float, float* %7071, align 4, !tbaa !122, !noalias !112
  %7073 = fsub fast float %7072, %6958
  %7074 = fcmp fast olt float %7073, 0.000000e+00
  %7075 = select i1 %7074, float 0.000000e+00, float 1.000000e+00
  %7076 = fadd fast float %7075, %7070
  %7077 = fmul fast float %7075, %7073
  %7078 = fadd fast float %7077, %7069
  %7079 = add nuw nsw i32 %7068, 1
  %7080 = icmp eq i32 %7079, 4
  br i1 %7080, label %7081, label %7067, !llvm.loop !124

; <label>:7081                                    ; preds = %7067
  %7082 = add nuw nsw i32 %7035, 1
  %7083 = icmp eq i32 %7082, 8
  br i1 %7083, label %7084, label %7032, !llvm.loop !125

; <label>:7084                                    ; preds = %7081
  %7085 = fdiv fast float 1.000000e+00, %7076
  %7086 = fmul fast float %7085, %7078
  %7087 = fdiv fast float 1.000000e+00, %6958
  %7088 = fmul fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = call float @dx.op.binary.f32(i32 35, float %7089, float 0.000000e+00)  ; FMax(a,b)
  %7091 = fmul fast float %7076, 3.125000e-02
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = fmul fast float %7092, 2.000000e+00
  %7094 = fadd fast float %7093, -1.000000e+00
  %7095 = fcmp fast ogt float %7094, 0.000000e+00
  %7096 = fcmp fast olt float %7094, 0.000000e+00
  %7097 = zext i1 %7095 to i32
  %7098 = zext i1 %7096 to i32
  %7099 = sub nsw i32 %7097, %7098
  %7100 = sitofp i32 %7099 to float
  %7101 = fmul fast float %7100, %7094
  %7102 = fsub fast float 1.000000e+00, %7101
  %7103 = fmul fast float %7102, %7102
  %7104 = fmul fast float %7103, %7102
  %7105 = fsub fast float %7102, %7104
  %7106 = fmul fast float %7105, %7090
  %7107 = fsub fast float 1.000000e+00, %7104
  %7108 = fsub fast float %7107, %7106
  %7109 = fmul fast float %7100, 5.000000e-01
  %7110 = fmul fast float %7109, %7108
  %7111 = fsub fast float 5.000000e-01, %7110
  br label %7112

; <label>:7112                                    ; preds = %7084, %6960, %6945
  %7113 = phi float [ 1.000000e+00, %6945 ], [ %7026, %6960 ], [ %7111, %7084 ]
  %7114 = fcmp fast ogt float %6541, 0.000000e+00
  br i1 %7114, label %7115, label %7279, !dx.controlflow.hints !126

; <label>:7115                                    ; preds = %7112
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7118 = fadd fast float %7117, %6424
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 3
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7124 = call float @dx.op.binary.f32(i32 35, float %7118, float 0.000000e+00)  ; FMax(a,b)
  %7125 = fadd fast float %7124, 0x3F10000000000000
  %7126 = fcmp fast oeq float %7123, 0.000000e+00
  br i1 %7126, label %7127, label %7194

; <label>:7127                                    ; preds = %7115
  %7128 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7129 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7130 = fmul fast float %7129, %6434
  %7131 = fmul fast float %7128, %6435
  %7132 = fadd fast float %7130, 5.000000e-01
  %7133 = call float @dx.op.unary.f32(i32 27, float %7132)  ; Round_ni(value)
  %7134 = fadd fast float %7131, 5.000000e-01
  %7135 = call float @dx.op.unary.f32(i32 27, float %7134)  ; Round_ni(value)
  %7136 = fsub fast float %7132, %7133
  %7137 = fsub fast float %7134, %7135
  %7138 = fadd fast float %7133, -5.000000e-01
  %7139 = fadd fast float %7135, -5.000000e-01
  %7140 = fmul fast float %7136, 2.000000e+00
  %7141 = fsub fast float 3.000000e+00, %7140
  %7142 = fadd fast float %7140, 1.000000e+00
  %7143 = fsub fast float 2.000000e+00, %7136
  %7144 = bitcast float %7141 to i32
  %7145 = sub nsw i32 2129859010, %7144
  %7146 = bitcast i32 %7145 to float
  %7147 = fmul fast float %7146, %7143
  %7148 = fadd fast float %7147, -1.000000e+00
  %7149 = bitcast float %7142 to i32
  %7150 = sub nsw i32 2129859010, %7149
  %7151 = bitcast i32 %7150 to float
  %7152 = fmul fast float %7151, %7136
  %7153 = fadd fast float %7152, 1.000000e+00
  %7154 = fmul fast float %7137, 2.000000e+00
  %7155 = fsub fast float 3.000000e+00, %7154
  %7156 = fadd fast float %7154, 1.000000e+00
  %7157 = fsub fast float 2.000000e+00, %7137
  %7158 = bitcast float %7155 to i32
  %7159 = sub nsw i32 2129859010, %7158
  %7160 = bitcast i32 %7159 to float
  %7161 = fmul fast float %7160, %7157
  %7162 = fadd fast float %7161, -1.000000e+00
  %7163 = bitcast float %7156 to i32
  %7164 = sub nsw i32 2129859010, %7163
  %7165 = bitcast i32 %7164 to float
  %7166 = fmul fast float %7165, %7137
  %7167 = fadd fast float %7166, 1.000000e+00
  %7168 = fadd fast float %7148, %7138
  %7169 = fmul fast float %7168, %7120
  %7170 = fadd fast float %7162, %7139
  %7171 = fmul fast float %7170, %7121
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7169, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7141
  %7175 = fadd fast float %7153, %7138
  %7176 = fmul fast float %7175, %7120
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7176, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = fmul fast float %7178, %7142
  %7180 = fadd fast float %7167, %7139
  %7181 = fmul fast float %7180, %7121
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7169, float %7181, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = fmul fast float %7183, %7141
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7176, float %7181, float undef, float undef, i32 0, i32 0, i32 undef, float %7125)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = fmul fast float %7186, %7142
  %7188 = fadd fast float %7187, %7184
  %7189 = fmul fast float %7188, %7156
  %7190 = fadd fast float %7179, %7174
  %7191 = fmul fast float %7190, %7155
  %7192 = fadd fast float %7191, %7189
  %7193 = fmul fast float %7192, 6.250000e-02
  br label %7279

; <label>:7194                                    ; preds = %7115
  %7195 = fmul fast float %271, 0x401921FB60000000
  %7196 = call float @dx.op.unary.f32(i32 13, float %7195)  ; Sin(value)
  %7197 = call float @dx.op.unary.f32(i32 12, float %7195)  ; Cos(value)
  %7198 = fsub fast float -0.000000e+00, %7196
  br label %7199

; <label>:7199                                    ; preds = %7248, %7194
  %7200 = phi float [ 0.000000e+00, %7194 ], [ %7243, %7248 ]
  %7201 = phi float [ 0.000000e+00, %7194 ], [ %7245, %7248 ]
  %7202 = phi i32 [ 0, %7194 ], [ %7249, %7248 ]
  %7203 = mul i32 %7202, 2
  %7204 = add i32 0, %7203
  %7205 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7204
  %7206 = load float, float* %7205, align 4
  %7207 = mul i32 %7202, 2
  %7208 = add i32 1, %7207
  %7209 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7208
  %7210 = load float, float* %7209, align 4
  %7211 = fmul fast float %7206, %7197
  %7212 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7198, float %7211)  ; FMad(a,b,c)
  %7213 = fmul fast float %7206, %7196
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %7210, float %7197, float %7213)  ; FMad(a,b,c)
  %7215 = fmul fast float %7212, %7123
  %7216 = fmul fast float %7214, %7123
  %7217 = fadd fast float %7215, %6434
  %7218 = fadd fast float %7216, %6435
  %7219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7220 = extractvalue %dx.types.ResRet.f32 %7219, 0
  %7221 = extractvalue %dx.types.ResRet.f32 %7219, 1
  %7222 = extractvalue %dx.types.ResRet.f32 %7219, 2
  %7223 = extractvalue %dx.types.ResRet.f32 %7219, 3
  %7224 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7220, float* %7224, align 4
  %7225 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7221, float* %7225, align 4
  %7226 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7222, float* %7226, align 4
  %7227 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7223, float* %7227, align 4
  %7228 = fsub fast float %7220, %7125
  %7229 = fcmp fast olt float %7228, 0.000000e+00
  %7230 = select i1 %7229, float 0.000000e+00, float 1.000000e+00
  %7231 = fadd fast float %7230, %7200
  %7232 = fmul fast float %7230, %7228
  %7233 = fadd fast float %7232, %7201
  br label %7234

; <label>:7234                                    ; preds = %7234, %7199
  %7235 = phi i32 [ 1, %7199 ], [ %7246, %7234 ]
  %7236 = phi float [ %7233, %7199 ], [ %7245, %7234 ]
  %7237 = phi float [ %7231, %7199 ], [ %7243, %7234 ]
  %7238 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7235
  %7239 = load float, float* %7238, align 4, !tbaa !122, !noalias !112
  %7240 = fsub fast float %7239, %7125
  %7241 = fcmp fast olt float %7240, 0.000000e+00
  %7242 = select i1 %7241, float 0.000000e+00, float 1.000000e+00
  %7243 = fadd fast float %7242, %7237
  %7244 = fmul fast float %7242, %7240
  %7245 = fadd fast float %7244, %7236
  %7246 = add nuw nsw i32 %7235, 1
  %7247 = icmp eq i32 %7246, 4
  br i1 %7247, label %7248, label %7234, !llvm.loop !124

; <label>:7248                                    ; preds = %7234
  %7249 = add nuw nsw i32 %7202, 1
  %7250 = icmp eq i32 %7249, 8
  br i1 %7250, label %7251, label %7199, !llvm.loop !125

; <label>:7251                                    ; preds = %7248
  %7252 = fdiv fast float 1.000000e+00, %7243
  %7253 = fmul fast float %7252, %7245
  %7254 = fdiv fast float 1.000000e+00, %7125
  %7255 = fmul fast float %7253, %7254
  %7256 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7257 = call float @dx.op.binary.f32(i32 35, float %7256, float 0.000000e+00)  ; FMax(a,b)
  %7258 = fmul fast float %7243, 3.125000e-02
  %7259 = call float @dx.op.unary.f32(i32 7, float %7258)  ; Saturate(value)
  %7260 = fmul fast float %7259, 2.000000e+00
  %7261 = fadd fast float %7260, -1.000000e+00
  %7262 = fcmp fast ogt float %7261, 0.000000e+00
  %7263 = fcmp fast olt float %7261, 0.000000e+00
  %7264 = zext i1 %7262 to i32
  %7265 = zext i1 %7263 to i32
  %7266 = sub nsw i32 %7264, %7265
  %7267 = sitofp i32 %7266 to float
  %7268 = fmul fast float %7267, %7261
  %7269 = fsub fast float 1.000000e+00, %7268
  %7270 = fmul fast float %7269, %7269
  %7271 = fmul fast float %7270, %7269
  %7272 = fsub fast float %7269, %7271
  %7273 = fmul fast float %7272, %7257
  %7274 = fsub fast float 1.000000e+00, %7271
  %7275 = fsub fast float %7274, %7273
  %7276 = fmul fast float %7267, 5.000000e-01
  %7277 = fmul fast float %7276, %7275
  %7278 = fsub fast float 5.000000e-01, %7277
  br label %7279

; <label>:7279                                    ; preds = %7251, %7127, %7112
  %7280 = phi float [ 1.000000e+00, %7112 ], [ %7193, %7127 ], [ %7278, %7251 ]
  %7281 = fcmp fast ogt float %6540, 0.000000e+00
  br i1 %7281, label %7282, label %7600, !dx.controlflow.hints !127

; <label>:7282                                    ; preds = %7279
  %7283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.f32 %7283, 0
  %7285 = fadd fast float %7284, %6424
  %7286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7286, 2
  %7288 = extractvalue %dx.types.CBufRet.f32 %7286, 3
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = call float @dx.op.binary.f32(i32 35, float %7285, float 0.000000e+00)  ; FMax(a,b)
  %7292 = fadd fast float %7291, 0x3F10000000000000
  %7293 = fcmp fast oeq float %7290, 0.000000e+00
  br i1 %6427, label %7294, label %7447, !dx.controlflow.hints !128

; <label>:7294                                    ; preds = %7282
  br i1 %7293, label %7295, label %7362

; <label>:7295                                    ; preds = %7294
  %7296 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7297 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7298 = fmul fast float %7297, %6416
  %7299 = fmul fast float %7296, %6420
  %7300 = fadd fast float %7298, 5.000000e-01
  %7301 = call float @dx.op.unary.f32(i32 27, float %7300)  ; Round_ni(value)
  %7302 = fadd fast float %7299, 5.000000e-01
  %7303 = call float @dx.op.unary.f32(i32 27, float %7302)  ; Round_ni(value)
  %7304 = fsub fast float %7300, %7301
  %7305 = fsub fast float %7302, %7303
  %7306 = fadd fast float %7301, -5.000000e-01
  %7307 = fadd fast float %7303, -5.000000e-01
  %7308 = fmul fast float %7304, 2.000000e+00
  %7309 = fsub fast float 3.000000e+00, %7308
  %7310 = fadd fast float %7308, 1.000000e+00
  %7311 = fsub fast float 2.000000e+00, %7304
  %7312 = bitcast float %7309 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7311
  %7316 = fadd fast float %7315, -1.000000e+00
  %7317 = bitcast float %7310 to i32
  %7318 = sub nsw i32 2129859010, %7317
  %7319 = bitcast i32 %7318 to float
  %7320 = fmul fast float %7319, %7304
  %7321 = fadd fast float %7320, 1.000000e+00
  %7322 = fmul fast float %7305, 2.000000e+00
  %7323 = fsub fast float 3.000000e+00, %7322
  %7324 = fadd fast float %7322, 1.000000e+00
  %7325 = fsub fast float 2.000000e+00, %7305
  %7326 = bitcast float %7323 to i32
  %7327 = sub nsw i32 2129859010, %7326
  %7328 = bitcast i32 %7327 to float
  %7329 = fmul fast float %7328, %7325
  %7330 = fadd fast float %7329, -1.000000e+00
  %7331 = bitcast float %7324 to i32
  %7332 = sub nsw i32 2129859010, %7331
  %7333 = bitcast i32 %7332 to float
  %7334 = fmul fast float %7333, %7305
  %7335 = fadd fast float %7334, 1.000000e+00
  %7336 = fadd fast float %7316, %7306
  %7337 = fmul fast float %7336, %7287
  %7338 = fadd fast float %7330, %7307
  %7339 = fmul fast float %7338, %7288
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7337, float %7339, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = fmul fast float %7341, %7309
  %7343 = fadd fast float %7321, %7306
  %7344 = fmul fast float %7343, %7287
  %7345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7344, float %7339, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7346 = extractvalue %dx.types.ResRet.f32 %7345, 0
  %7347 = fmul fast float %7346, %7310
  %7348 = fadd fast float %7335, %7307
  %7349 = fmul fast float %7348, %7288
  %7350 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7337, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = fmul fast float %7351, %7309
  %7353 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7344, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7354 = extractvalue %dx.types.ResRet.f32 %7353, 0
  %7355 = fmul fast float %7354, %7310
  %7356 = fadd fast float %7355, %7352
  %7357 = fmul fast float %7356, %7324
  %7358 = fadd fast float %7347, %7342
  %7359 = fmul fast float %7358, %7323
  %7360 = fadd fast float %7359, %7357
  %7361 = fmul fast float %7360, 6.250000e-02
  br label %7600

; <label>:7362                                    ; preds = %7294
  %7363 = fmul fast float %271, 0x401921FB60000000
  %7364 = call float @dx.op.unary.f32(i32 13, float %7363)  ; Sin(value)
  %7365 = call float @dx.op.unary.f32(i32 12, float %7363)  ; Cos(value)
  %7366 = fsub fast float -0.000000e+00, %7364
  br label %7367

; <label>:7367                                    ; preds = %7416, %7362
  %7368 = phi float [ 0.000000e+00, %7362 ], [ %7411, %7416 ]
  %7369 = phi float [ 0.000000e+00, %7362 ], [ %7413, %7416 ]
  %7370 = phi i32 [ 0, %7362 ], [ %7417, %7416 ]
  %7371 = mul i32 %7370, 2
  %7372 = add i32 0, %7371
  %7373 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7372
  %7374 = load float, float* %7373, align 4
  %7375 = mul i32 %7370, 2
  %7376 = add i32 1, %7375
  %7377 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7376
  %7378 = load float, float* %7377, align 4
  %7379 = fmul fast float %7374, %7365
  %7380 = call float @dx.op.tertiary.f32(i32 46, float %7378, float %7366, float %7379)  ; FMad(a,b,c)
  %7381 = fmul fast float %7374, %7364
  %7382 = call float @dx.op.tertiary.f32(i32 46, float %7378, float %7365, float %7381)  ; FMad(a,b,c)
  %7383 = fmul fast float %7380, %7290
  %7384 = fmul fast float %7382, %7290
  %7385 = fadd fast float %7383, %6416
  %7386 = fadd fast float %7384, %6420
  %7387 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7385, float %7386, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.ResRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.ResRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.ResRet.f32 %7387, 3
  %7392 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7388, float* %7392, align 4
  %7393 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7389, float* %7393, align 4
  %7394 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7390, float* %7394, align 4
  %7395 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7391, float* %7395, align 4
  %7396 = fsub fast float %7388, %7292
  %7397 = fcmp fast olt float %7396, 0.000000e+00
  %7398 = select i1 %7397, float 0.000000e+00, float 1.000000e+00
  %7399 = fadd fast float %7398, %7368
  %7400 = fmul fast float %7398, %7396
  %7401 = fadd fast float %7400, %7369
  br label %7402

; <label>:7402                                    ; preds = %7402, %7367
  %7403 = phi i32 [ 1, %7367 ], [ %7414, %7402 ]
  %7404 = phi float [ %7401, %7367 ], [ %7413, %7402 ]
  %7405 = phi float [ %7399, %7367 ], [ %7411, %7402 ]
  %7406 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7403
  %7407 = load float, float* %7406, align 4, !tbaa !122, !noalias !112
  %7408 = fsub fast float %7407, %7292
  %7409 = fcmp fast olt float %7408, 0.000000e+00
  %7410 = select i1 %7409, float 0.000000e+00, float 1.000000e+00
  %7411 = fadd fast float %7410, %7405
  %7412 = fmul fast float %7410, %7408
  %7413 = fadd fast float %7412, %7404
  %7414 = add nuw nsw i32 %7403, 1
  %7415 = icmp eq i32 %7414, 4
  br i1 %7415, label %7416, label %7402, !llvm.loop !124

; <label>:7416                                    ; preds = %7402
  %7417 = add nuw nsw i32 %7370, 1
  %7418 = icmp eq i32 %7417, 8
  br i1 %7418, label %7419, label %7367, !llvm.loop !125

; <label>:7419                                    ; preds = %7416
  %7420 = fdiv fast float 1.000000e+00, %7411
  %7421 = fmul fast float %7420, %7413
  %7422 = fdiv fast float 1.000000e+00, %7292
  %7423 = fmul fast float %7421, %7422
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = call float @dx.op.binary.f32(i32 35, float %7424, float 0.000000e+00)  ; FMax(a,b)
  %7426 = fmul fast float %7411, 3.125000e-02
  %7427 = call float @dx.op.unary.f32(i32 7, float %7426)  ; Saturate(value)
  %7428 = fmul fast float %7427, 2.000000e+00
  %7429 = fadd fast float %7428, -1.000000e+00
  %7430 = fcmp fast ogt float %7429, 0.000000e+00
  %7431 = fcmp fast olt float %7429, 0.000000e+00
  %7432 = zext i1 %7430 to i32
  %7433 = zext i1 %7431 to i32
  %7434 = sub nsw i32 %7432, %7433
  %7435 = sitofp i32 %7434 to float
  %7436 = fmul fast float %7435, %7429
  %7437 = fsub fast float 1.000000e+00, %7436
  %7438 = fmul fast float %7437, %7437
  %7439 = fmul fast float %7438, %7437
  %7440 = fsub fast float %7437, %7439
  %7441 = fmul fast float %7440, %7425
  %7442 = fsub fast float 1.000000e+00, %7439
  %7443 = fsub fast float %7442, %7441
  %7444 = fmul fast float %7435, 5.000000e-01
  %7445 = fmul fast float %7444, %7443
  %7446 = fsub fast float 5.000000e-01, %7445
  br label %7600

; <label>:7447                                    ; preds = %7282
  br i1 %7293, label %7448, label %7515

; <label>:7448                                    ; preds = %7447
  %7449 = extractvalue %dx.types.CBufRet.f32 %7286, 1
  %7450 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7451 = fmul fast float %7450, %6416
  %7452 = fmul fast float %7449, %6420
  %7453 = fadd fast float %7451, 5.000000e-01
  %7454 = call float @dx.op.unary.f32(i32 27, float %7453)  ; Round_ni(value)
  %7455 = fadd fast float %7452, 5.000000e-01
  %7456 = call float @dx.op.unary.f32(i32 27, float %7455)  ; Round_ni(value)
  %7457 = fsub fast float %7453, %7454
  %7458 = fsub fast float %7455, %7456
  %7459 = fadd fast float %7454, -5.000000e-01
  %7460 = fadd fast float %7456, -5.000000e-01
  %7461 = fmul fast float %7457, 2.000000e+00
  %7462 = fsub fast float 3.000000e+00, %7461
  %7463 = fadd fast float %7461, 1.000000e+00
  %7464 = fsub fast float 2.000000e+00, %7457
  %7465 = bitcast float %7462 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7464
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = bitcast float %7463 to i32
  %7471 = sub nsw i32 2129859010, %7470
  %7472 = bitcast i32 %7471 to float
  %7473 = fmul fast float %7472, %7457
  %7474 = fadd fast float %7473, 1.000000e+00
  %7475 = fmul fast float %7458, 2.000000e+00
  %7476 = fsub fast float 3.000000e+00, %7475
  %7477 = fadd fast float %7475, 1.000000e+00
  %7478 = fsub fast float 2.000000e+00, %7458
  %7479 = bitcast float %7476 to i32
  %7480 = sub nsw i32 2129859010, %7479
  %7481 = bitcast i32 %7480 to float
  %7482 = fmul fast float %7481, %7478
  %7483 = fadd fast float %7482, -1.000000e+00
  %7484 = bitcast float %7477 to i32
  %7485 = sub nsw i32 2129859010, %7484
  %7486 = bitcast i32 %7485 to float
  %7487 = fmul fast float %7486, %7458
  %7488 = fadd fast float %7487, 1.000000e+00
  %7489 = fadd fast float %7469, %7459
  %7490 = fmul fast float %7489, %7287
  %7491 = fadd fast float %7483, %7460
  %7492 = fmul fast float %7491, %7288
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7490, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = fmul fast float %7494, %7462
  %7496 = fadd fast float %7474, %7459
  %7497 = fmul fast float %7496, %7287
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7497, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7463
  %7501 = fadd fast float %7488, %7460
  %7502 = fmul fast float %7501, %7288
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7490, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = fmul fast float %7504, %7462
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7497, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float %7292)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7463
  %7509 = fadd fast float %7508, %7505
  %7510 = fmul fast float %7509, %7477
  %7511 = fadd fast float %7500, %7495
  %7512 = fmul fast float %7511, %7476
  %7513 = fadd fast float %7512, %7510
  %7514 = fmul fast float %7513, 6.250000e-02
  br label %7600

; <label>:7515                                    ; preds = %7447
  %7516 = fmul fast float %271, 0x401921FB60000000
  %7517 = call float @dx.op.unary.f32(i32 13, float %7516)  ; Sin(value)
  %7518 = call float @dx.op.unary.f32(i32 12, float %7516)  ; Cos(value)
  %7519 = fsub fast float -0.000000e+00, %7517
  br label %7520

; <label>:7520                                    ; preds = %7569, %7515
  %7521 = phi float [ 0.000000e+00, %7515 ], [ %7564, %7569 ]
  %7522 = phi float [ 0.000000e+00, %7515 ], [ %7566, %7569 ]
  %7523 = phi i32 [ 0, %7515 ], [ %7570, %7569 ]
  %7524 = mul i32 %7523, 2
  %7525 = add i32 0, %7524
  %7526 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7525
  %7527 = load float, float* %7526, align 4
  %7528 = mul i32 %7523, 2
  %7529 = add i32 1, %7528
  %7530 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7529
  %7531 = load float, float* %7530, align 4
  %7532 = fmul fast float %7527, %7518
  %7533 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7519, float %7532)  ; FMad(a,b,c)
  %7534 = fmul fast float %7527, %7517
  %7535 = call float @dx.op.tertiary.f32(i32 46, float %7531, float %7518, float %7534)  ; FMad(a,b,c)
  %7536 = fmul fast float %7533, %7290
  %7537 = fmul fast float %7535, %7290
  %7538 = fadd fast float %7536, %6416
  %7539 = fadd fast float %7537, %6420
  %7540 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7538, float %7539, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7541 = extractvalue %dx.types.ResRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.ResRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.ResRet.f32 %7540, 2
  %7544 = extractvalue %dx.types.ResRet.f32 %7540, 3
  %7545 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7541, float* %7545, align 4
  %7546 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7542, float* %7546, align 4
  %7547 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7543, float* %7547, align 4
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7544, float* %7548, align 4
  %7549 = fsub fast float %7541, %7292
  %7550 = fcmp fast olt float %7549, 0.000000e+00
  %7551 = select i1 %7550, float 0.000000e+00, float 1.000000e+00
  %7552 = fadd fast float %7551, %7521
  %7553 = fmul fast float %7551, %7549
  %7554 = fadd fast float %7553, %7522
  br label %7555

; <label>:7555                                    ; preds = %7555, %7520
  %7556 = phi i32 [ 1, %7520 ], [ %7567, %7555 ]
  %7557 = phi float [ %7554, %7520 ], [ %7566, %7555 ]
  %7558 = phi float [ %7552, %7520 ], [ %7564, %7555 ]
  %7559 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7556
  %7560 = load float, float* %7559, align 4, !tbaa !122, !noalias !112
  %7561 = fsub fast float %7560, %7292
  %7562 = fcmp fast olt float %7561, 0.000000e+00
  %7563 = select i1 %7562, float 0.000000e+00, float 1.000000e+00
  %7564 = fadd fast float %7563, %7558
  %7565 = fmul fast float %7563, %7561
  %7566 = fadd fast float %7565, %7557
  %7567 = add nuw nsw i32 %7556, 1
  %7568 = icmp eq i32 %7567, 4
  br i1 %7568, label %7569, label %7555, !llvm.loop !124

; <label>:7569                                    ; preds = %7555
  %7570 = add nuw nsw i32 %7523, 1
  %7571 = icmp eq i32 %7570, 8
  br i1 %7571, label %7572, label %7520, !llvm.loop !125

; <label>:7572                                    ; preds = %7569
  %7573 = fdiv fast float 1.000000e+00, %7564
  %7574 = fmul fast float %7573, %7566
  %7575 = fdiv fast float 1.000000e+00, %7292
  %7576 = fmul fast float %7574, %7575
  %7577 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7578 = call float @dx.op.binary.f32(i32 35, float %7577, float 0.000000e+00)  ; FMax(a,b)
  %7579 = fmul fast float %7564, 3.125000e-02
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = fmul fast float %7580, 2.000000e+00
  %7582 = fadd fast float %7581, -1.000000e+00
  %7583 = fcmp fast ogt float %7582, 0.000000e+00
  %7584 = fcmp fast olt float %7582, 0.000000e+00
  %7585 = zext i1 %7583 to i32
  %7586 = zext i1 %7584 to i32
  %7587 = sub nsw i32 %7585, %7586
  %7588 = sitofp i32 %7587 to float
  %7589 = fmul fast float %7588, %7582
  %7590 = fsub fast float 1.000000e+00, %7589
  %7591 = fmul fast float %7590, %7590
  %7592 = fmul fast float %7591, %7590
  %7593 = fsub fast float %7590, %7592
  %7594 = fmul fast float %7593, %7578
  %7595 = fsub fast float 1.000000e+00, %7592
  %7596 = fsub fast float %7595, %7594
  %7597 = fmul fast float %7588, 5.000000e-01
  %7598 = fmul fast float %7597, %7596
  %7599 = fsub fast float 5.000000e-01, %7598
  br label %7600

; <label>:7600                                    ; preds = %7572, %7448, %7419, %7295, %7279
  %7601 = phi float [ 1.000000e+00, %7279 ], [ %7361, %7295 ], [ %7446, %7419 ], [ %7514, %7448 ], [ %7599, %7572 ]
  %7602 = fsub fast float %7113, %6946
  %7603 = fmul fast float %7602, %6513
  %7604 = fadd fast float %7603, %6946
  %7605 = fsub fast float %7280, %7604
  %7606 = fmul fast float %7605, %6512
  %7607 = fadd fast float %7606, %7604
  %7608 = fsub fast float %7601, %7607
  %7609 = fmul fast float %7608, %6540
  %7610 = fadd fast float %7609, %7607
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  br i1 %7613, label %7614, label %7654, !dx.controlflow.hints !129

; <label>:7614                                    ; preds = %7600
  %7615 = fcmp fast ugt float %7612, 0.000000e+00
  br i1 %7615, label %7616, label %7651

; <label>:7616                                    ; preds = %7614
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7621 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.CBufRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.CBufRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.CBufRet.f32 %7622, 3
  %7627 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7628 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7630 = extractvalue %dx.types.CBufRet.f32 %7629, 0
  %7631 = extractvalue %dx.types.CBufRet.f32 %7629, 1
  %7632 = extractvalue %dx.types.CBufRet.f32 %7629, 2
  %7633 = fadd fast float %7630, %6393
  %7634 = fadd fast float %7631, %6394
  %7635 = fadd fast float %7632, %6395
  %7636 = fmul fast float %7633, %7618
  %7637 = call float @dx.op.tertiary.f32(i32 46, float %7619, float %7634, float %7636)  ; FMad(a,b,c)
  %7638 = call float @dx.op.tertiary.f32(i32 46, float %7620, float %7635, float %7637)  ; FMad(a,b,c)
  %7639 = fadd fast float %7638, %7621
  %7640 = fmul fast float %7633, %7623
  %7641 = call float @dx.op.tertiary.f32(i32 46, float %7624, float %7634, float %7640)  ; FMad(a,b,c)
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7635, float %7641)  ; FMad(a,b,c)
  %7643 = fadd fast float %7642, %7626
  %7644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7639, float %7643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7645 = extractvalue %dx.types.ResRet.f32 %7644, 0
  %7646 = fmul fast float %7645, %7628
  %7647 = fadd fast float %7646, %7627
  %7648 = call float @dx.op.unary.f32(i32 7, float %7647)  ; Saturate(value)
  %7649 = fmul fast float %7648, %7612
  %7650 = fsub fast float 1.000000e+00, %7649
  br label %7651

; <label>:7651                                    ; preds = %7616, %7614
  %7652 = phi float [ %7650, %7616 ], [ 1.000000e+00, %7614 ]
  %7653 = fmul fast float %7652, %7610
  br label %7654

; <label>:7654                                    ; preds = %7651, %7600, %6373
  %7655 = phi float [ 1.000000e+00, %6373 ], [ %7653, %7651 ], [ %7610, %7600 ]
  %7656 = call float @dx.op.binary.f32(i32 36, float %7655, float %7655)  ; FMin(a,b)
  %7657 = call float @dx.op.binary.f32(i32 36, float %7655, float %7656)  ; FMin(a,b)
  %7658 = fcmp fast ogt float %7657, 0.000000e+00
  br i1 %7658, label %7659, label %7824, !dx.controlflow.hints !130

; <label>:7659                                    ; preds = %7654
  %7660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7661 = extractvalue %dx.types.CBufRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.CBufRet.f32 %7660, 1
  %7663 = extractvalue %dx.types.CBufRet.f32 %7660, 2
  %7664 = extractvalue %dx.types.CBufRet.f32 %7660, 3
  %7665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.CBufRet.f32 %7665, 1
  %7668 = extractvalue %dx.types.CBufRet.f32 %7665, 2
  %7669 = extractvalue %dx.types.CBufRet.f32 %7665, 3
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7675 = fmul fast float %7661, %6393
  %7676 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7662, float %7675)  ; FMad(a,b,c)
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7663, float %7676)  ; FMad(a,b,c)
  %7678 = fadd fast float %7677, %7664
  %7679 = fmul fast float %7666, %6393
  %7680 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7667, float %7679)  ; FMad(a,b,c)
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7668, float %7680)  ; FMad(a,b,c)
  %7682 = fadd fast float %7681, %7669
  %7683 = fmul fast float %7671, %6393
  %7684 = call float @dx.op.tertiary.f32(i32 46, float %6394, float %7672, float %7683)  ; FMad(a,b,c)
  %7685 = call float @dx.op.tertiary.f32(i32 46, float %6395, float %7673, float %7684)  ; FMad(a,b,c)
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.CBufRet.f32 %7686, 3
  %7690 = fmul fast float %7689, %7678
  %7691 = fmul fast float %7689, %7682
  %7692 = fadd fast float %7690, %7687
  %7693 = fadd fast float %7691, %7688
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.CBufRet.f32 %7694, 1
  %7697 = fsub fast float %7692, %7695
  %7698 = fsub fast float %7693, %7696
  %7699 = fcmp fast olt float %7697, 0.000000e+00
  %7700 = fcmp fast olt float %7698, 0.000000e+00
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7706 = select i1 %7699, float %7702, float %7704
  %7707 = select i1 %7700, float %7703, float %7705
  %7708 = fmul fast float %7706, %7697
  %7709 = fmul fast float %7707, %7698
  %7710 = call float @dx.op.unary.f32(i32 6, float %7708)  ; FAbs(value)
  %7711 = call float @dx.op.unary.f32(i32 6, float %7709)  ; FAbs(value)
  %7712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7713 = extractvalue %dx.types.CBufRet.f32 %7712, 0
  %7714 = call float @dx.op.binary.f32(i32 35, float %7710, float %7711)  ; FMax(a,b)
  %7715 = fsub fast float %7713, %7714
  %7716 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7717 = fcmp fast ogt float %7716, 0.000000e+00
  br i1 %7717, label %7718, label %7759, !dx.controlflow.hints !131

; <label>:7718                                    ; preds = %7659
  %7719 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7692, float %7693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7720 = extractvalue %dx.types.ResRet.f32 %7719, 1
  %7721 = fcmp fast ogt float %7720, 0.000000e+00
  br i1 %7721, label %7722, label %7754

; <label>:7722                                    ; preds = %7718
  %7723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7692, float %7693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7724 = extractvalue %dx.types.ResRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.ResRet.f32 %7723, 1
  %7726 = extractvalue %dx.types.ResRet.f32 %7723, 2
  %7727 = extractvalue %dx.types.ResRet.f32 %7723, 3
  %7728 = fsub fast float 1.000000e+00, %7674
  %7729 = fsub fast float %7728, %7685
  %7730 = fmul fast float %7729, 0x400921FB60000000
  %7731 = fadd fast float %7730, 0x3FF921FB60000000
  %7732 = call float @dx.op.unary.f32(i32 13, float %7731)  ; Sin(value)
  %7733 = fadd fast float %7732, -1.000000e+00
  %7734 = fmul fast float %7733, 0x3FD45F3060000000
  %7735 = fmul fast float %7729, 0x401921FB60000000
  %7736 = fadd fast float %7735, 0x400921FB60000000
  %7737 = call float @dx.op.unary.f32(i32 13, float %7736)  ; Sin(value)
  %7738 = fadd fast float %7737, 0x3E7777A5C0000000
  %7739 = fmul fast float %7738, 0x3FC45F3060000000
  %7740 = fmul fast float %7729, 0x4022D97C80000000
  %7741 = fadd fast float %7740, 0x4012D97C80000000
  %7742 = call float @dx.op.unary.f32(i32 13, float %7741)  ; Sin(value)
  %7743 = fadd fast float %7742, 1.000000e+00
  %7744 = fmul fast float %7743, 0x3FBB2995E0000000
  %7745 = fmul fast float %7729, 0x402921FB60000000
  %7746 = fadd fast float %7745, 0x401921FB60000000
  %7747 = call float @dx.op.unary.f32(i32 13, float %7746)  ; Sin(value)
  %7748 = fadd fast float %7747, 0xBE8777A5C0000000
  %7749 = fmul fast float %7748, 0x3FB45F3060000000
  %7750 = call float @dx.op.dot4.f32(i32 56, float %7724, float %7725, float %7726, float %7727, float %7734, float %7739, float %7744, float %7749)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7751 = fmul fast float %7750, 0xBFF7154760000000
  %7752 = call float @dx.op.unary.f32(i32 21, float %7751)  ; Exp(value)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7752)  ; Saturate(value)
  br label %7754

; <label>:7754                                    ; preds = %7722, %7718
  %7755 = phi float [ %7753, %7722 ], [ 1.000000e+00, %7718 ]
  %7756 = fadd fast float %7755, -1.000000e+00
  %7757 = fmul fast float %7756, %7716
  %7758 = fadd fast float %7757, 1.000000e+00
  br label %7759

; <label>:7759                                    ; preds = %7754, %7659
  %7760 = phi float [ %7758, %7754 ], [ 1.000000e+00, %7659 ]
  %7761 = fmul fast float %7760, %7655
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7766 = fadd fast float %7763, %201
  %7767 = fadd fast float %7764, %202
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 1
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7774 = fsub fast float -0.000000e+00, %7766
  %7775 = fsub fast float -0.000000e+00, %7767
  %7776 = fsub fast float %5617, %7765
  %7777 = fadd fast float %7776, %7769
  %7778 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7774, float %7775, float %7777)  ; Dot3(ax,ay,az,bx,by,bz)
  %7779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7771, float %7772, float %7773)  ; Dot3(ax,ay,az,bx,by,bz)
  %7780 = fdiv fast float 1.000000e+00, %7779
  %7781 = fmul fast float %7780, %7778
  %7782 = fmul fast float %7771, %7781
  %7783 = fmul fast float %7772, %7781
  %7784 = fadd fast float %7782, %7766
  %7785 = fadd fast float %7783, %7767
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = fsub fast float %7784, %7787
  %7790 = fsub fast float %7785, %7788
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 3
  %7794 = fmul fast float %7789, %7792
  %7795 = fmul fast float %7790, %7793
  %7796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.i32 %7796, 3
  %7798 = icmp eq i32 %7797, 0
  br i1 %7798, label %7804, label %7799

; <label>:7799                                    ; preds = %7759
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7794, float %7795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  br label %7809

; <label>:7804                                    ; preds = %7759
  %7805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7794, float %7795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7806 = extractvalue %dx.types.ResRet.f32 %7805, 0
  %7807 = extractvalue %dx.types.ResRet.f32 %7805, 1
  %7808 = extractvalue %dx.types.ResRet.f32 %7805, 2
  br label %7809

; <label>:7809                                    ; preds = %7804, %7799
  %7810 = phi float [ %7801, %7799 ], [ %7806, %7804 ]
  %7811 = phi float [ %7802, %7799 ], [ %7807, %7804 ]
  %7812 = phi float [ %7803, %7799 ], [ %7808, %7804 ]
  %7813 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7814 = fmul fast float %7813, %7810
  %7815 = extractvalue %dx.types.CBufRet.f32 %7768, 0
  %7816 = fsub fast float %7781, %7815
  %7817 = fsub fast float %7816, %7814
  %7818 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7817)  ; FMax(a,b)
  %7819 = fmul fast float %7818, %7811
  %7820 = call float @dx.op.binary.f32(i32 36, float %7812, float %7819)  ; FMin(a,b)
  %7821 = fmul fast float %7820, 0xBFF7154760000000
  %7822 = call float @dx.op.unary.f32(i32 21, float %7821)  ; Exp(value)
  %7823 = fmul fast float %7761, %7822
  br label %7824

; <label>:7824                                    ; preds = %7809, %7654
  %7825 = phi float [ %7823, %7809 ], [ %7655, %7654 ]
  %7826 = call float @dx.op.binary.f32(i32 36, float %7825, float %7825)  ; FMin(a,b)
  %7827 = call float @dx.op.binary.f32(i32 36, float %7825, float %7826)  ; FMin(a,b)
  %7828 = fcmp fast ogt float %7827, 0.000000e+00
  br i1 %7828, label %7829, label %8089, !dx.controlflow.hints !132

; <label>:7829                                    ; preds = %7824
  %7830 = fmul fast float %7825, %6385
  %7831 = fmul fast float %7825, %6386
  %7832 = fmul fast float %7825, %6387
  %7833 = fsub fast float %203, %4816
  %7834 = fcmp fast ogt float %7833, 0.000000e+00
  %7835 = fmul fast float %6374, 5.120000e+02
  %7836 = fmul fast float %6375, 5.120000e+02
  %7837 = fmul fast float %6376, 5.120000e+02
  %7838 = fadd fast float %7837, %203
  %7839 = fsub fast float %4816, %7838
  %7840 = fmul fast float %7839, 2.000000e+00
  %7841 = fadd fast float %7840, %7838
  %7842 = select i1 %7834, float %7841, float %7838
  %7843 = fsub fast float %7842, %203
  %7844 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7843, float %7835, float %7836, float %7843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = call float @dx.op.unary.f32(i32 25, float %7844)  ; Rsqrt(value)
  %7846 = fmul fast float %7845, %7835
  %7847 = fmul fast float %7845, %7836
  %7848 = fmul fast float %7845, %7843
  %7849 = fsub fast float %4816, %203
  %7850 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7846, float %7847, float %7848)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = fdiv fast float 1.000000e+00, %7851
  %7853 = fmul fast float %7852, %7850
  %7854 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7833, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  %7856 = fcmp fast olt float %7854, 0.000000e+00
  %7857 = zext i1 %7855 to i32
  %7858 = zext i1 %7856 to i32
  %7859 = sub nsw i32 %7857, %7858
  %7860 = sitofp i32 %7859 to float
  %7861 = fsub fast float %7842, %4816
  %7862 = call float @dx.op.dot3.f32(i32 55, float %7835, float %7836, float %7861, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7863 = fcmp fast ogt float %7862, 0.000000e+00
  %7864 = fcmp fast olt float %7862, 0.000000e+00
  %7865 = zext i1 %7863 to i32
  %7866 = zext i1 %7864 to i32
  %7867 = sub nsw i32 %7865, %7866
  %7868 = sitofp i32 %7867 to float
  %7869 = fcmp fast une float %7860, %7868
  br i1 %7869, label %7870, label %7880

; <label>:7870                                    ; preds = %7829
  %7871 = fmul fast float %7853, %7848
  %7872 = fmul fast float %7853, %7847
  %7873 = fmul fast float %7853, %7846
  %7874 = fmul fast float %7873, %7873
  %7875 = fmul fast float %7872, %7872
  %7876 = fadd fast float %7874, %7875
  %7877 = fmul fast float %7871, %7871
  %7878 = fadd fast float %7876, %7877
  %7879 = call float @dx.op.unary.f32(i32 24, float %7878)  ; Sqrt(value)
  br label %7890

; <label>:7880                                    ; preds = %7829
  %7881 = icmp slt i32 %7859, 0
  br i1 %7881, label %7882, label %7890

; <label>:7882                                    ; preds = %7880
  %7883 = fsub fast float %203, %7842
  %7884 = fmul fast float %7835, %7835
  %7885 = fmul fast float %7836, %7836
  %7886 = fadd fast float %7884, %7885
  %7887 = fmul fast float %7883, %7883
  %7888 = fadd fast float %7886, %7887
  %7889 = call float @dx.op.unary.f32(i32 24, float %7888)  ; Sqrt(value)
  br label %7890

; <label>:7890                                    ; preds = %7882, %7880, %7870
  %7891 = phi float [ %7879, %7870 ], [ %7889, %7882 ], [ 0.000000e+00, %7880 ]
  %7892 = fsub fast float -0.000000e+00, %7891
  %7893 = select i1 %7834, float -0.000000e+00, float %7892
  %7894 = fmul fast float %4813, 0x3FF7154760000000
  %7895 = fmul fast float %7894, %7893
  %7896 = fmul fast float %4814, 0x3FF7154760000000
  %7897 = fmul fast float %7896, %7893
  %7898 = fmul fast float %4815, 0x3FF7154760000000
  %7899 = fmul fast float %7898, %7893
  %7900 = call float @dx.op.unary.f32(i32 21, float %7895)  ; Exp(value)
  %7901 = call float @dx.op.unary.f32(i32 21, float %7897)  ; Exp(value)
  %7902 = call float @dx.op.unary.f32(i32 21, float %7899)  ; Exp(value)
  %7903 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7904 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7905 = call float @dx.op.unary.f32(i32 7, float %7902)  ; Saturate(value)
  %7906 = fmul fast float %7830, %7903
  %7907 = fmul fast float %7831, %7904
  %7908 = fmul fast float %7832, %7905
  %7909 = fsub fast float %6374, %5605
  %7910 = fsub fast float %6375, %5604
  %7911 = fsub fast float %6376, %5603
  %7912 = call float @dx.op.dot3.f32(i32 55, float %7909, float %7910, float %7911, float %7909, float %7910, float %7911)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = call float @dx.op.unary.f32(i32 25, float %7912)  ; Rsqrt(value)
  %7914 = fmul fast float %7913, %7909
  %7915 = fmul fast float %7913, %7910
  %7916 = fmul fast float %7913, %7911
  %7917 = call float @dx.op.dot3.f32(i32 55, float %6374, float %6375, float %6376, float %5612, float %5613, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %7918 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5601, float %5600, float %7914, float %7915, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7919 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7920 = bitcast i32 %5644 to float
  %7921 = fmul fast float %7919, %7919
  %7922 = fmul fast float %7921, %7920
  %7923 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7924 = fmul fast float %7923, %7919
  %7925 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %7914, float %7915, float %7916)  ; Dot3(ax,ay,az,bx,by,bz)
  %7926 = fmul fast float %7925, %7925
  %7927 = call float @dx.op.unary.f32(i32 6, float %7917)  ; FAbs(value)
  %7928 = fsub fast float 1.000000e+00, %5638
  %7929 = fmul fast float %5620, %5620
  %7930 = fmul fast float %7929, %7928
  %7931 = fadd fast float %7930, %5638
  %7932 = bitcast float %7931 to i32
  %7933 = ashr i32 %7932, 1
  %7934 = add nsw i32 %7933, 532487669
  %7935 = bitcast i32 %7934 to float
  %7936 = fadd fast float %7935, %5620
  %7937 = fmul fast float %5638, %7926
  %7938 = fsub fast float 1.000000e+00, %7926
  %7939 = fadd fast float %7938, %7937
  %7940 = fmul fast float %7927, %7927
  %7941 = fmul fast float %7940, %7928
  %7942 = fadd fast float %7941, %5638
  %7943 = bitcast float %7942 to i32
  %7944 = ashr i32 %7943, 1
  %7945 = add nsw i32 %7944, 532487669
  %7946 = bitcast i32 %7945 to float
  %7947 = fadd fast float %7946, %7927
  %7948 = fmul fast float %7939, %7939
  %7949 = fmul fast float %7948, %7936
  %7950 = fmul fast float %7949, %7947
  %7951 = fdiv fast float 0x3FF0A00000000000, %7950
  %7952 = fmul fast float %7951, %5638
  %7953 = fmul fast float %5744, 0x3FF9999980000000
  %7954 = fsub fast float 5.000000e+00, %7953
  %7955 = call float @dx.op.unary.f32(i32 6, float %7918)  ; FAbs(value)
  %7956 = fsub fast float 1.000000e+00, %7955
  %7957 = fmul fast float %5744, 0x41D9660740000000
  %7958 = fadd fast float %7957, 0xC1EFBF8940000000
  %7959 = bitcast float %7956 to i32
  %7960 = sitofp i32 %7959 to float
  %7961 = fmul fast float %7960, %7954
  %7962 = fadd fast float %7958, %7961
  %7963 = fptosi float %7962 to i32
  %7964 = bitcast i32 %7963 to float
  %7965 = fsub fast float 1.000000e+00, %5609
  %7966 = fsub fast float 1.000000e+00, %5610
  %7967 = fsub fast float 1.000000e+00, %5618
  %7968 = fmul fast float %7964, %7965
  %7969 = fmul fast float %7964, %7966
  %7970 = fmul fast float %7964, %7967
  %7971 = fadd fast float %7968, %5609
  %7972 = fadd fast float %7969, %5610
  %7973 = fadd fast float %7970, %5618
  br i1 %5767, label %7974, label %7997

; <label>:7974                                    ; preds = %7890
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4408, float %7955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.ResRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.ResRet.f32 %7975, 2
  %7979 = fadd fast float %7976, -5.000000e-01
  %7980 = fadd fast float %7977, -5.000000e-01
  %7981 = fadd fast float %7978, -5.000000e-01
  %7982 = fmul fast float %5609, 4.000000e+00
  %7983 = fmul fast float %7982, %7965
  %7984 = fmul fast float %7983, %7979
  %7985 = fmul fast float %5610, 4.000000e+00
  %7986 = fmul fast float %7985, %7966
  %7987 = fmul fast float %7986, %7980
  %7988 = fmul fast float %5618, 4.000000e+00
  %7989 = fmul fast float %7988, %7967
  %7990 = fmul fast float %7989, %7981
  %7991 = fadd fast float %7984, %7971
  %7992 = fadd fast float %7987, %7972
  %7993 = fadd fast float %7990, %7973
  %7994 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7995 = call float @dx.op.unary.f32(i32 7, float %7992)  ; Saturate(value)
  %7996 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  br label %7997

; <label>:7997                                    ; preds = %7974, %7890
  %7998 = phi float [ %7994, %7974 ], [ %7971, %7890 ]
  %7999 = phi float [ %7995, %7974 ], [ %7972, %7890 ]
  %8000 = phi float [ %7996, %7974 ], [ %7973, %7890 ]
  %8001 = fmul fast float %7917, 9.843750e-01
  %8002 = fadd fast float %8001, 7.812500e-03
  %8003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8002, float %5748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8004 = extractvalue %dx.types.ResRet.f32 %8003, 0
  %8005 = extractvalue %dx.types.ResRet.f32 %8003, 1
  %8006 = extractvalue %dx.types.ResRet.f32 %8003, 2
  %8007 = extractvalue %dx.types.ResRet.f32 %8003, 3
  %8008 = fsub fast float %8006, %8004
  %8009 = fsub fast float %8007, %8005
  %8010 = fmul fast float %8008, %5754
  %8011 = fmul fast float %8009, %5754
  %8012 = fadd fast float %8010, %8004
  %8013 = fadd fast float %8011, %8005
  %8014 = fmul fast float %8012, %5609
  %8015 = fmul fast float %8012, %5610
  %8016 = fmul fast float %8012, %5618
  %8017 = fadd fast float %8014, %8013
  %8018 = fadd fast float %8015, %8013
  %8019 = fadd fast float %8016, %8013
  br i1 %5767, label %8020, label %8043

; <label>:8020                                    ; preds = %7997
  %8021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4408, float %7917, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = fadd fast float %8022, -5.000000e-01
  %8026 = fadd fast float %8023, -5.000000e-01
  %8027 = fadd fast float %8024, -5.000000e-01
  %8028 = fmul fast float %5609, 4.000000e+00
  %8029 = fmul fast float %8028, %7965
  %8030 = fmul fast float %8029, %8025
  %8031 = fmul fast float %5610, 4.000000e+00
  %8032 = fmul fast float %8031, %7966
  %8033 = fmul fast float %8032, %8026
  %8034 = fmul fast float %5618, 4.000000e+00
  %8035 = fmul fast float %8034, %7967
  %8036 = fmul fast float %8035, %8027
  %8037 = fadd fast float %8030, %8017
  %8038 = fadd fast float %8033, %8018
  %8039 = fadd fast float %8036, %8019
  %8040 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  br label %8043

; <label>:8043                                    ; preds = %8020, %7997
  %8044 = phi float [ %8040, %8020 ], [ %8017, %7997 ]
  %8045 = phi float [ %8041, %8020 ], [ %8018, %7997 ]
  %8046 = phi float [ %8042, %8020 ], [ %8019, %7997 ]
  %8047 = call float @dx.op.binary.f32(i32 35, float %8045, float %8046)  ; FMax(a,b)
  %8048 = call float @dx.op.binary.f32(i32 35, float %8044, float %8047)  ; FMax(a,b)
  %8049 = fsub fast float 1.000000e+00, %8048
  %8050 = fmul fast float %7998, %7952
  %8051 = fmul fast float %7999, %7952
  %8052 = fmul fast float %8000, %7952
  %8053 = fsub fast float 1.000000e+00, %7918
  %8054 = bitcast float %8053 to i32
  %8055 = sitofp i32 %8054 to float
  %8056 = fmul fast float %8055, 5.000000e+00
  %8057 = fadd fast float %8056, 0xC1EFBF8940000000
  %8058 = fptosi float %8057 to i32
  %8059 = bitcast i32 %8058 to float
  %8060 = fmul fast float %8059, %4409
  %8061 = fmul fast float %8049, %8060
  %8062 = fmul fast float %8061, %6309
  %8063 = fmul fast float %8061, %6310
  %8064 = fmul fast float %8061, %6311
  %8065 = fadd fast float %8062, %8050
  %8066 = fadd fast float %8063, %8051
  %8067 = fadd fast float %8064, %8052
  %8068 = fmul fast float %7924, %7906
  %8069 = fmul fast float %8068, %8049
  %8070 = fmul fast float %7924, %7907
  %8071 = fmul fast float %8070, %8049
  %8072 = fmul fast float %7924, %7908
  %8073 = fmul fast float %8072, %8049
  %8074 = fmul fast float %8068, %8065
  %8075 = fmul fast float %8070, %8066
  %8076 = fmul fast float %8072, %8067
  %8077 = fadd fast float %8069, %6293
  %8078 = fmul fast float %8077, %4405
  %8079 = fadd fast float %8071, %6294
  %8080 = fmul fast float %8079, %4405
  %8081 = fadd fast float %8073, %6295
  %8082 = fmul fast float %8081, %4405
  %8083 = fadd fast float %8074, %6362
  %8084 = fmul fast float %8083, %4405
  %8085 = fadd fast float %8075, %6365
  %8086 = fmul fast float %8085, %4405
  %8087 = fadd fast float %8076, %6368
  %8088 = fmul fast float %8087, %4405
  br label %8089

; <label>:8089                                    ; preds = %8043, %7824, %6289
  %8090 = phi float [ %6363, %6289 ], [ %6363, %7824 ], [ %8084, %8043 ]
  %8091 = phi float [ %6366, %6289 ], [ %6366, %7824 ], [ %8086, %8043 ]
  %8092 = phi float [ %6369, %6289 ], [ %6369, %7824 ], [ %8088, %8043 ]
  %8093 = phi float [ %6358, %6289 ], [ %6358, %7824 ], [ %8078, %8043 ]
  %8094 = phi float [ %6359, %6289 ], [ %6359, %7824 ], [ %8080, %8043 ]
  %8095 = phi float [ %6360, %6289 ], [ %6360, %7824 ], [ %8082, %8043 ]
  %8096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.i32 %8096, 0
  %8098 = icmp eq i32 %8097, 0
  br i1 %8098, label %8774, label %8099

; <label>:8099                                    ; preds = %8089
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8103 = fmul fast float %8101, %114
  %8104 = fmul fast float %8102, %115
  %8105 = fptoui float %8103 to i32
  %8106 = fptoui float %8104 to i32
  %8107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8108 = extractvalue %dx.types.CBufRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.CBufRet.f32 %8107, 2
  %8110 = extractvalue %dx.types.CBufRet.f32 %8107, 3
  %8111 = fadd fast float %101, -4.000000e+00
  %8112 = call float @dx.op.binary.f32(i32 35, float %8111, float 0.000000e+00)  ; FMax(a,b)
  %8113 = fadd fast float %8112, %8108
  %8114 = fmul fast float %8113, %8109
  %8115 = call float @dx.op.unary.f32(i32 23, float %8114)  ; Log(value)
  %8116 = fmul fast float %8115, %8110
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8119 = fmul fast float %8116, %8118
  %8120 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8122 = extractvalue %dx.types.CBufRet.i32 %8121, 1
  %8123 = add i32 %8122, -1
  %8124 = uitofp i32 %8122 to float
  %8125 = fmul fast float %8124, %8120
  %8126 = fptoui float %8125 to i32
  %8127 = call i32 @dx.op.binary.i32(i32 40, i32 %8126, i32 %8123)  ; UMin(a,b)
  %8128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8129 = extractvalue %dx.types.CBufRet.i32 %8128, 2
  %8130 = extractvalue %dx.types.CBufRet.i32 %8128, 3
  %8131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8106, i32 %8129, i32 %8105)  ; UMad(a,b,c)
  %8132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8127, i32 %8130, i32 %8131)  ; UMad(a,b,c)
  %8133 = add nsw i32 %8097, -1
  %8134 = call i32 @dx.op.binary.i32(i32 37, i32 %8133, i32 0)  ; IMax(a,b)
  %8135 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %8136 = fptoui float %8135 to i32
  %8137 = lshr i32 %8136, 5
  %8138 = call i32 @dx.op.binary.i32(i32 40, i32 %8137, i32 8191)  ; UMin(a,b)
  %8139 = shl i32 %8138, 2
  %8140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8139, i32 undef)  ; BufferLoad(srv,index,wot)
  %8141 = extractvalue %dx.types.ResRet.i32 %8140, 0
  %8142 = lshr i32 %8141, 16
  %8143 = and i32 %8141, 65535
  %8144 = lshr i32 %8141, 21
  %8145 = lshr i32 %8143, 5
  %8146 = call i32 @dx.op.binary.i32(i32 40, i32 %8145, i32 %8134)  ; UMin(a,b)
  %8147 = icmp ugt i32 %8144, %8146
  br i1 %8147, label %8774, label %8148

; <label>:8148                                    ; preds = %8099
  br label %8149

; <label>:8149                                    ; preds = %8764, %8148
  %8150 = phi i32 [ %8771, %8764 ], [ %8144, %8148 ]
  %8151 = phi float [ %8765, %8764 ], [ %8090, %8148 ]
  %8152 = phi float [ %8766, %8764 ], [ %8091, %8148 ]
  %8153 = phi float [ %8767, %8764 ], [ %8092, %8148 ]
  %8154 = phi float [ %8768, %8764 ], [ %8093, %8148 ]
  %8155 = phi float [ %8769, %8764 ], [ %8094, %8148 ]
  %8156 = phi float [ %8770, %8764 ], [ %8095, %8148 ]
  %8157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.i32 %8157, 0
  %8159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8132, i32 %8158, i32 %8150)  ; UMad(a,b,c)
  %8160 = shl i32 %8159, 2
  %8161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8160, i32 undef)  ; BufferLoad(srv,index,wot)
  %8162 = extractvalue %dx.types.ResRet.i32 %8161, 0
  %8163 = shl i32 %8150, 5
  %8164 = sub nsw i32 %8142, %8163
  %8165 = call i32 @dx.op.binary.i32(i32 37, i32 %8164, i32 0)  ; IMax(a,b)
  %8166 = call i32 @dx.op.binary.i32(i32 38, i32 %8165, i32 31)  ; IMin(a,b)
  %8167 = sub nsw i32 1, %8142
  %8168 = add nsw i32 %8167, %8143
  %8169 = call i32 @dx.op.binary.i32(i32 37, i32 %8168, i32 0)  ; IMax(a,b)
  %8170 = call i32 @dx.op.binary.i32(i32 38, i32 %8169, i32 32)  ; IMin(a,b)
  %8171 = and i32 %8170, 31
  %8172 = shl i32 -1, %8171
  %8173 = xor i32 %8172, -1
  %8174 = and i32 %8166, 31
  %8175 = shl i32 %8173, %8174
  %8176 = icmp eq i32 %8170, 32
  %8177 = select i1 %8176, i32 -1, i32 %8175
  %8178 = and i32 %8177, %8162
  %8179 = icmp eq i32 %8178, 0
  br i1 %8179, label %8764, label %8180

; <label>:8180                                    ; preds = %8149
  br label %8181

; <label>:8181                                    ; preds = %8315, %8180
  %8182 = phi i32 [ %8193, %8315 ], [ %8178, %8180 ]
  %8183 = phi float [ %8316, %8315 ], [ %8151, %8180 ]
  %8184 = phi float [ %8317, %8315 ], [ %8152, %8180 ]
  %8185 = phi float [ %8318, %8315 ], [ %8153, %8180 ]
  %8186 = phi float [ %8319, %8315 ], [ %8154, %8180 ]
  %8187 = phi float [ %8320, %8315 ], [ %8155, %8180 ]
  %8188 = phi float [ %8321, %8315 ], [ %8156, %8180 ]
  %8189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8182)  ; FirstbitLo(value)
  %8190 = add i32 %8189, %8163
  %8191 = and i32 %8189, 31
  %8192 = shl i32 1, %8191
  %8193 = xor i32 %8192, %8182
  %8194 = mul i32 %8190, 112
  %8195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8194, i32 undef)  ; BufferLoad(srv,index,wot)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = extractvalue %dx.types.ResRet.f32 %8195, 1
  %8198 = extractvalue %dx.types.ResRet.f32 %8195, 2
  %8199 = or i32 %8194, 12
  %8200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8199, i32 undef)  ; BufferLoad(srv,index,wot)
  %8201 = extractvalue %dx.types.ResRet.f32 %8200, 0
  %8202 = add i32 %8194, 16
  %8203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8202, i32 undef)  ; BufferLoad(srv,index,wot)
  %8204 = extractvalue %dx.types.ResRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.ResRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.ResRet.f32 %8203, 2
  %8207 = add i32 %8194, 28
  %8208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8207, i32 undef)  ; BufferLoad(srv,index,wot)
  %8209 = extractvalue %dx.types.ResRet.i32 %8208, 0
  %8210 = add i32 %8194, 44
  %8211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8210, i32 undef)  ; BufferLoad(srv,index,wot)
  %8212 = extractvalue %dx.types.ResRet.f32 %8211, 0
  %8213 = add i32 %8194, 48
  %8214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8213, i32 undef)  ; BufferLoad(srv,index,wot)
  %8215 = extractvalue %dx.types.ResRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.ResRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.ResRet.f32 %8214, 2
  %8218 = extractvalue %dx.types.ResRet.f32 %8214, 3
  %8219 = add i32 %8194, 64
  %8220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8219, i32 undef)  ; BufferLoad(srv,index,wot)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.ResRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.ResRet.f32 %8220, 3
  %8225 = add i32 %8194, 80
  %8226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8225, i32 undef)  ; BufferLoad(srv,index,wot)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8229 = add i32 %8194, 92
  %8230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8229, i32 undef)  ; BufferLoad(srv,index,wot)
  %8231 = extractvalue %dx.types.ResRet.i32 %8230, 0
  %8232 = call float @dx.op.dot3.f32(i32 55, float %8196, float %8197, float %8198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = select i1 %260, float %8227, float %8196
  %8234 = select i1 %260, float %8232, float %8197
  %8235 = select i1 %260, float %8228, float %8198
  %8236 = and i32 %8231, 65535
  %8237 = uitofp i32 %8236 to float
  %8238 = lshr i32 %8231, 16
  %8239 = uitofp i32 %8238 to float
  %8240 = and i32 %8209, 65535
  %8241 = and i32 %8209, 50331648
  %8242 = icmp eq i32 %8241, 33554432
  %8243 = fsub fast float %8215, %201
  %8244 = fsub fast float %8216, %202
  %8245 = fsub fast float %8217, %203
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8245, float %8243, float %8244, float %8245)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = call float @dx.op.unary.f32(i32 24, float %8246)  ; Sqrt(value)
  %8248 = fdiv fast float 1.000000e+00, %8247
  %8249 = fmul fast float %8248, %8243
  %8250 = fmul fast float %8248, %8244
  %8251 = fmul fast float %8248, %8245
  %8252 = fadd fast float %8247, %8201
  %8253 = fdiv fast float 1.000000e+00, %8252
  %8254 = fmul float %8212, %8253
  %8255 = fmul float %8254, %8254
  %8256 = call float @dx.op.unary.f32(i32 7, float %8255)  ; Saturate(value)
  br i1 %8242, label %8257, label %8278

; <label>:8257                                    ; preds = %8181
  %8258 = fmul fast float %8223, %8204
  %8259 = fmul fast float %8223, %8205
  %8260 = fmul fast float %8223, %8206
  %8261 = fadd fast float %8243, %8258
  %8262 = fadd fast float %8244, %8259
  %8263 = fadd fast float %8245, %8260
  %8264 = call float @dx.op.dot3.f32(i32 55, float %8261, float %8262, float %8263, float %8261, float %8262, float %8263)  ; Dot3(ax,ay,az,bx,by,bz)
  %8265 = call float @dx.op.unary.f32(i32 25, float %8264)  ; Rsqrt(value)
  %8266 = fmul fast float %8265, %8261
  %8267 = fmul fast float %8265, %8262
  %8268 = fmul fast float %8265, %8263
  %8269 = fsub fast float %201, %8215
  %8270 = fsub fast float %202, %8216
  %8271 = fsub fast float %203, %8217
  %8272 = fsub fast float -0.000000e+00, %8269
  %8273 = fsub fast float -0.000000e+00, %8270
  %8274 = fsub fast float -0.000000e+00, %8271
  %8275 = call float @dx.op.dot3.f32(i32 55, float %8272, float %8273, float %8274, float %8204, float %8205, float %8206)  ; Dot3(ax,ay,az,bx,by,bz)
  %8276 = fcmp fast ogt float %8275, 0.000000e+00
  %8277 = uitofp i1 %8276 to float
  br label %8278

; <label>:8278                                    ; preds = %8257, %8181
  %8279 = phi float [ %8277, %8257 ], [ 1.000000e+00, %8181 ]
  %8280 = phi float [ %8266, %8257 ], [ %8249, %8181 ]
  %8281 = phi float [ %8267, %8257 ], [ %8250, %8181 ]
  %8282 = phi float [ %8268, %8257 ], [ %8251, %8181 ]
  %8283 = call float @dx.op.dot3.f32(i32 55, float %8204, float %8205, float %8206, float %8280, float %8281, float %8282)  ; Dot3(ax,ay,az,bx,by,bz)
  %8284 = fmul fast float %8283, %8283
  %8285 = call float @dx.op.unary.f32(i32 7, float %8284)  ; Saturate(value)
  %8286 = fsub fast float 1.000000e+00, %8285
  %8287 = fmul fast float %8286, 5.000000e-01
  %8288 = fcmp fast ogt float %8283, 0.000000e+00
  %8289 = fsub fast float 1.000000e+00, %8287
  %8290 = select i1 %8288, float %8287, float %8289
  %8291 = fmul fast float %8290, %8239
  %8292 = fadd fast float %8291, %8237
  %8293 = fmul fast float %8292, 0x3EF0001000000000
  %8294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8293, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8295 = extractvalue %dx.types.ResRet.f32 %8294, 0
  %8296 = fmul fast float %8283, %8221
  %8297 = fadd fast float %8296, %8222
  %8298 = call float @dx.op.unary.f32(i32 7, float %8297)  ; Saturate(value)
  %8299 = select i1 %8242, float 1.000000e+00, float %8298
  %8300 = select i1 %8242, float %8298, float 1.000000e+00
  %8301 = fmul fast float %8247, %8218
  %8302 = fsub fast float 1.000000e+00, %8301
  %8303 = fmul fast float %8302, %8224
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8305 = fmul fast float %8304, %8300
  %8306 = fmul fast float %8305, 2.000000e+00
  %8307 = fsub fast float 3.000000e+00, %8306
  %8308 = fmul fast float %8295, %8279
  %8309 = fmul fast float %8305, %8305
  %8310 = fmul fast float %8309, %8308
  %8311 = fmul fast float %8310, %8307
  %8312 = call float @dx.op.binary.f32(i32 36, float %8311, float %8311)  ; FMin(a,b)
  %8313 = call float @dx.op.binary.f32(i32 36, float %8311, float %8312)  ; FMin(a,b)
  %8314 = fcmp fast ogt float %8313, 0.000000e+00
  br i1 %8314, label %8323, label %8315, !dx.controlflow.hints !133

; <label>:8315                                    ; preds = %8720, %8469, %8278
  %8316 = phi float [ %8183, %8469 ], [ %8183, %8278 ], [ %8760, %8720 ]
  %8317 = phi float [ %8184, %8469 ], [ %8184, %8278 ], [ %8761, %8720 ]
  %8318 = phi float [ %8185, %8469 ], [ %8185, %8278 ], [ %8762, %8720 ]
  %8319 = phi float [ %8186, %8469 ], [ %8186, %8278 ], [ %8754, %8720 ]
  %8320 = phi float [ %8187, %8469 ], [ %8187, %8278 ], [ %8755, %8720 ]
  %8321 = phi float [ %8188, %8469 ], [ %8188, %8278 ], [ %8756, %8720 ]
  %8322 = icmp eq i32 %8182, %8192
  br i1 %8322, label %8763, label %8181

; <label>:8323                                    ; preds = %8278
  %8324 = icmp eq i32 %8240, 255
  br i1 %8324, label %8469, label %8325, !dx.controlflow.hints !134

; <label>:8325                                    ; preds = %8323
  %8326 = mul nuw nsw i32 %8240, 176
  %8327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8326, i32 undef)  ; BufferLoad(srv,index,wot)
  %8328 = extractvalue %dx.types.ResRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.ResRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.ResRet.f32 %8327, 2
  %8331 = extractvalue %dx.types.ResRet.f32 %8327, 3
  %8332 = add nuw nsw i32 %8326, 16
  %8333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8332, i32 undef)  ; BufferLoad(srv,index,wot)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = add nuw nsw i32 %8326, 32
  %8337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8336, i32 undef)  ; BufferLoad(srv,index,wot)
  %8338 = extractvalue %dx.types.ResRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.ResRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.ResRet.f32 %8337, 2
  %8341 = add nuw nsw i32 %8326, 48
  %8342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8341, i32 undef)  ; BufferLoad(srv,index,wot)
  %8343 = extractvalue %dx.types.ResRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.ResRet.f32 %8342, 1
  %8345 = extractvalue %dx.types.ResRet.f32 %8342, 2
  %8346 = extractvalue %dx.types.ResRet.f32 %8342, 3
  %8347 = add nuw nsw i32 %8326, 64
  %8348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8347, i32 undef)  ; BufferLoad(srv,index,wot)
  %8349 = extractvalue %dx.types.ResRet.f32 %8348, 0
  %8350 = extractvalue %dx.types.ResRet.f32 %8348, 1
  %8351 = extractvalue %dx.types.ResRet.f32 %8348, 2
  %8352 = extractvalue %dx.types.ResRet.f32 %8348, 3
  %8353 = add nuw nsw i32 %8326, 80
  %8354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8353, i32 undef)  ; BufferLoad(srv,index,wot)
  %8355 = extractvalue %dx.types.ResRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.ResRet.f32 %8354, 1
  %8357 = extractvalue %dx.types.ResRet.f32 %8354, 2
  %8358 = extractvalue %dx.types.ResRet.f32 %8354, 3
  %8359 = add nuw nsw i32 %8326, 96
  %8360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8359, i32 undef)  ; BufferLoad(srv,index,wot)
  %8361 = extractvalue %dx.types.ResRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.ResRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.ResRet.f32 %8360, 2
  %8364 = extractvalue %dx.types.ResRet.f32 %8360, 3
  %8365 = bitcast float %8335 to i32
  %8366 = fmul fast float %8340, %121
  %8367 = fmul fast float %8340, %122
  %8368 = fmul fast float %8340, %123
  %8369 = fadd fast float %8366, %201
  %8370 = fadd fast float %8367, %202
  %8371 = fadd fast float %8368, %203
  %8372 = fmul fast float %8369, %8343
  %8373 = call float @dx.op.tertiary.f32(i32 46, float %8370, float %8349, float %8372)  ; FMad(a,b,c)
  %8374 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8355, float %8373)  ; FMad(a,b,c)
  %8375 = fadd fast float %8374, %8361
  %8376 = fmul fast float %8369, %8344
  %8377 = call float @dx.op.tertiary.f32(i32 46, float %8370, float %8350, float %8376)  ; FMad(a,b,c)
  %8378 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8356, float %8377)  ; FMad(a,b,c)
  %8379 = fadd fast float %8378, %8362
  %8380 = fmul fast float %8369, %8345
  %8381 = call float @dx.op.tertiary.f32(i32 46, float %8370, float %8351, float %8380)  ; FMad(a,b,c)
  %8382 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8357, float %8381)  ; FMad(a,b,c)
  %8383 = fadd fast float %8382, %8363
  %8384 = fmul fast float %8369, %8346
  %8385 = call float @dx.op.tertiary.f32(i32 46, float %8370, float %8352, float %8384)  ; FMad(a,b,c)
  %8386 = call float @dx.op.tertiary.f32(i32 46, float %8371, float %8358, float %8385)  ; FMad(a,b,c)
  %8387 = fadd fast float %8386, %8364
  %8388 = fdiv fast float %8375, %8387
  %8389 = fdiv fast float %8379, %8387
  %8390 = fdiv fast float %8383, %8387
  %8391 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8390)  ; FMax(a,b)
  %8392 = fmul fast float %271, 0x401921FB60000000
  %8393 = call float @dx.op.unary.f32(i32 13, float %8392)  ; Sin(value)
  %8394 = call float @dx.op.unary.f32(i32 12, float %8392)  ; Cos(value)
  %8395 = fmul fast float %8394, %8339
  %8396 = call float @dx.op.tertiary.f32(i32 46, float %8393, float %8339, float 0.000000e+00)  ; FMad(a,b,c)
  %8397 = fmul fast float %8339, %8393
  %8398 = fsub fast float -0.000000e+00, %8397
  %8399 = call float @dx.op.tertiary.f32(i32 46, float %8394, float %8339, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8400

; <label>:8400                                    ; preds = %8400, %8325
  %8401 = phi float [ 0.000000e+00, %8325 ], [ %8433, %8400 ]
  %8402 = phi float [ 0.000000e+00, %8325 ], [ %8435, %8400 ]
  %8403 = phi i32 [ 0, %8325 ], [ %8436, %8400 ]
  %8404 = mul i32 %8403, 2
  %8405 = add i32 0, %8404
  %8406 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8405
  %8407 = load float, float* %8406, align 4
  %8408 = mul i32 %8403, 2
  %8409 = add i32 1, %8408
  %8410 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8409
  %8411 = load float, float* %8410, align 4
  %8412 = fmul fast float %8395, %8407
  %8413 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8398, float %8412)  ; FMad(a,b,c)
  %8414 = fmul fast float %8407, %8396
  %8415 = call float @dx.op.tertiary.f32(i32 46, float %8411, float %8399, float %8414)  ; FMad(a,b,c)
  %8416 = fadd fast float %8413, %8388
  %8417 = fadd fast float %8415, %8389
  %8418 = fmul fast float %8416, %8334
  %8419 = fmul fast float %8417, %8334
  %8420 = call float @dx.op.binary.f32(i32 35, float %8418, float %8330)  ; FMax(a,b)
  %8421 = call float @dx.op.binary.f32(i32 35, float %8419, float %8330)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 36, float %8420, float %8331)  ; FMin(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8421, float %8331)  ; FMin(a,b)
  %8424 = fadd fast float %8422, %8328
  %8425 = fadd fast float %8423, %8329
  %8426 = uitofp i32 %8365 to float
  %8427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8424, float %8425, float %8426, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8428 = extractvalue %dx.types.ResRet.f32 %8427, 0
  %8429 = fsub fast float %8428, %8391
  %8430 = fsub fast float %8429, %8338
  %8431 = fcmp fast ogt float %8430, 0.000000e+00
  %8432 = select i1 %8431, float 1.000000e+00, float 0.000000e+00
  %8433 = fadd fast float %8432, %8401
  %8434 = select i1 %8431, float %8430, float 0.000000e+00
  %8435 = fadd fast float %8434, %8402
  %8436 = add nuw nsw i32 %8403, 1
  %8437 = icmp eq i32 %8436, 8
  br i1 %8437, label %8438, label %8400

; <label>:8438                                    ; preds = %8400
  %8439 = fdiv fast float 1.000000e+00, %8433
  %8440 = fmul fast float %8439, %8435
  %8441 = fdiv fast float 1.000000e+00, %8391
  %8442 = fmul fast float %8440, %8441
  %8443 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8444 = call float @dx.op.binary.f32(i32 35, float %8443, float 0.000000e+00)  ; FMax(a,b)
  %8445 = fmul fast float %8433, 1.250000e-01
  %8446 = call float @dx.op.unary.f32(i32 7, float %8445)  ; Saturate(value)
  %8447 = fmul fast float %8446, 2.000000e+00
  %8448 = fadd fast float %8447, -1.000000e+00
  %8449 = fcmp fast ogt float %8448, 0.000000e+00
  %8450 = fcmp fast olt float %8448, 0.000000e+00
  %8451 = zext i1 %8449 to i32
  %8452 = zext i1 %8450 to i32
  %8453 = sub nsw i32 %8451, %8452
  %8454 = sitofp i32 %8453 to float
  %8455 = fmul fast float %8454, %8448
  %8456 = fsub fast float 1.000000e+00, %8455
  %8457 = fmul fast float %8456, %8456
  %8458 = fmul fast float %8457, %8456
  %8459 = fsub fast float %8456, %8458
  %8460 = fmul fast float %8459, %8444
  %8461 = fsub fast float 1.000000e+00, %8458
  %8462 = fsub fast float %8461, %8460
  %8463 = fmul fast float %8454, 5.000000e-01
  %8464 = fmul fast float %8463, %8462
  %8465 = fsub fast float -5.000000e-01, %8464
  %8466 = fmul fast float %8465, %8299
  %8467 = fadd fast float %8466, 1.000000e+00
  %8468 = fmul fast float %8467, %8311
  br label %8469

; <label>:8469                                    ; preds = %8438, %8323
  %8470 = phi float [ %8468, %8438 ], [ %8311, %8323 ]
  %8471 = call float @dx.op.binary.f32(i32 36, float %8470, float %8470)  ; FMin(a,b)
  %8472 = call float @dx.op.binary.f32(i32 36, float %8470, float %8471)  ; FMin(a,b)
  %8473 = fcmp fast ogt float %8472, 0.000000e+00
  br i1 %8473, label %8474, label %8315, !dx.controlflow.hints !135

; <label>:8474                                    ; preds = %8469
  %8475 = fmul fast float %8470, %8233
  %8476 = fmul fast float %8470, %8234
  %8477 = fmul fast float %8470, %8235
  %8478 = fsub fast float %8217, %4816
  %8479 = fcmp fast ogt float %8478, 0.000000e+00
  %8480 = fsub fast float %203, %4816
  %8481 = fcmp fast ogt float %8480, 0.000000e+00
  %8482 = xor i1 %8481, %8479
  %8483 = fsub fast float %4816, %8217
  %8484 = fmul fast float %8483, 2.000000e+00
  %8485 = fadd fast float %8484, %8217
  %8486 = select i1 %8482, float %8217, float %8485
  %8487 = fsub fast float %8486, %203
  %8488 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8487, float %8243, float %8244, float %8487)  ; Dot3(ax,ay,az,bx,by,bz)
  %8489 = call float @dx.op.unary.f32(i32 25, float %8488)  ; Rsqrt(value)
  %8490 = fmul fast float %8489, %8243
  %8491 = fmul fast float %8489, %8244
  %8492 = fmul fast float %8489, %8487
  %8493 = fsub fast float %4816, %203
  %8494 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8493)  ; Dot3(ax,ay,az,bx,by,bz)
  %8495 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8490, float %8491, float %8492)  ; Dot3(ax,ay,az,bx,by,bz)
  %8496 = fdiv fast float 1.000000e+00, %8495
  %8497 = fmul fast float %8496, %8494
  %8498 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8480, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8499 = fcmp fast ogt float %8498, 0.000000e+00
  %8500 = fcmp fast olt float %8498, 0.000000e+00
  %8501 = zext i1 %8499 to i32
  %8502 = zext i1 %8500 to i32
  %8503 = sub nsw i32 %8501, %8502
  %8504 = sitofp i32 %8503 to float
  %8505 = fsub fast float %8486, %4816
  %8506 = call float @dx.op.dot3.f32(i32 55, float %8243, float %8244, float %8505, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8507 = fcmp fast ogt float %8506, 0.000000e+00
  %8508 = fcmp fast olt float %8506, 0.000000e+00
  %8509 = zext i1 %8507 to i32
  %8510 = zext i1 %8508 to i32
  %8511 = sub nsw i32 %8509, %8510
  %8512 = sitofp i32 %8511 to float
  %8513 = fcmp fast une float %8504, %8512
  br i1 %8513, label %8514, label %8524

; <label>:8514                                    ; preds = %8474
  %8515 = fmul fast float %8497, %8492
  %8516 = fmul fast float %8497, %8491
  %8517 = fmul fast float %8497, %8490
  %8518 = fmul fast float %8517, %8517
  %8519 = fmul fast float %8516, %8516
  %8520 = fadd fast float %8518, %8519
  %8521 = fmul fast float %8515, %8515
  %8522 = fadd fast float %8520, %8521
  %8523 = call float @dx.op.unary.f32(i32 24, float %8522)  ; Sqrt(value)
  br label %8536

; <label>:8524                                    ; preds = %8474
  %8525 = icmp slt i32 %8503, 0
  br i1 %8525, label %8526, label %8536

; <label>:8526                                    ; preds = %8524
  %8527 = fsub fast float %201, %8215
  %8528 = fsub fast float %202, %8216
  %8529 = fsub fast float %203, %8486
  %8530 = fmul fast float %8527, %8527
  %8531 = fmul fast float %8528, %8528
  %8532 = fadd fast float %8530, %8531
  %8533 = fmul fast float %8529, %8529
  %8534 = fadd fast float %8532, %8533
  %8535 = call float @dx.op.unary.f32(i32 24, float %8534)  ; Sqrt(value)
  br label %8536

; <label>:8536                                    ; preds = %8526, %8524, %8514
  %8537 = phi float [ %8523, %8514 ], [ %8535, %8526 ], [ 0.000000e+00, %8524 ]
  %8538 = and i1 %8481, %8479
  %8539 = fsub fast float -0.000000e+00, %8537
  %8540 = select i1 %8538, float -0.000000e+00, float %8539
  %8541 = fmul fast float %4813, 0x3FF7154760000000
  %8542 = fmul fast float %8541, %8540
  %8543 = fmul fast float %4814, 0x3FF7154760000000
  %8544 = fmul fast float %8543, %8540
  %8545 = fmul fast float %4815, 0x3FF7154760000000
  %8546 = fmul fast float %8545, %8540
  %8547 = call float @dx.op.unary.f32(i32 21, float %8542)  ; Exp(value)
  %8548 = call float @dx.op.unary.f32(i32 21, float %8544)  ; Exp(value)
  %8549 = call float @dx.op.unary.f32(i32 21, float %8546)  ; Exp(value)
  %8550 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8551 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8552 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8553 = fmul fast float %8475, %8550
  %8554 = fmul fast float %8476, %8551
  %8555 = fmul fast float %8477, %8552
  %8556 = fsub fast float %8249, %5605
  %8557 = fsub fast float %8250, %5604
  %8558 = fsub fast float %8251, %5603
  %8559 = call float @dx.op.dot3.f32(i32 55, float %8556, float %8557, float %8558, float %8556, float %8557, float %8558)  ; Dot3(ax,ay,az,bx,by,bz)
  %8560 = call float @dx.op.unary.f32(i32 25, float %8559)  ; Rsqrt(value)
  %8561 = fmul fast float %8560, %8556
  %8562 = fmul fast float %8560, %8557
  %8563 = fmul fast float %8560, %8558
  %8564 = call float @dx.op.dot3.f32(i32 55, float %8249, float %8250, float %8251, float %5612, float %5613, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %8565 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5601, float %5600, float %8561, float %8562, float %8563)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8567 = fmul fast float %8566, %8256
  %8568 = bitcast i32 %5644 to float
  %8569 = fmul fast float %8566, %8566
  %8570 = fmul fast float %8569, %8568
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = fmul fast float %8567, %8571
  %8573 = bitcast float %8246 to i32
  %8574 = ashr i32 %8573, 1
  %8575 = sub nsw i32 1597463007, %8574
  %8576 = bitcast i32 %8575 to float
  %8577 = fmul fast float %8576, %8243
  %8578 = fmul fast float %8576, %8244
  %8579 = fmul fast float %8576, %8245
  %8580 = fsub fast float %8577, %5605
  %8581 = fsub fast float %8578, %5604
  %8582 = fsub fast float %8579, %5603
  %8583 = call float @dx.op.dot3.f32(i32 55, float %8580, float %8581, float %8582, float %8580, float %8581, float %8582)  ; Dot3(ax,ay,az,bx,by,bz)
  %8584 = call float @dx.op.unary.f32(i32 25, float %8583)  ; Rsqrt(value)
  %8585 = fmul fast float %8580, %8584
  %8586 = fmul fast float %8581, %8584
  %8587 = fmul fast float %8582, %8584
  %8588 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %8585, float %8586, float %8587)  ; Dot3(ax,ay,az,bx,by,bz)
  %8589 = fmul fast float %8588, %8588
  %8590 = call float @dx.op.unary.f32(i32 6, float %8564)  ; FAbs(value)
  %8591 = fsub fast float 1.000000e+00, %5638
  %8592 = fmul fast float %5620, %5620
  %8593 = fmul fast float %8592, %8591
  %8594 = fadd fast float %8593, %5638
  %8595 = bitcast float %8594 to i32
  %8596 = ashr i32 %8595, 1
  %8597 = add nsw i32 %8596, 532487669
  %8598 = bitcast i32 %8597 to float
  %8599 = fadd fast float %8598, %5620
  %8600 = fmul fast float %5638, %8589
  %8601 = fsub fast float 1.000000e+00, %8589
  %8602 = fadd fast float %8601, %8600
  %8603 = fmul fast float %8590, %8590
  %8604 = fmul fast float %8603, %8591
  %8605 = fadd fast float %8604, %5638
  %8606 = bitcast float %8605 to i32
  %8607 = ashr i32 %8606, 1
  %8608 = add nsw i32 %8607, 532487669
  %8609 = bitcast i32 %8608 to float
  %8610 = fadd fast float %8609, %8590
  %8611 = fmul fast float %8602, %8602
  %8612 = fmul fast float %8611, %8599
  %8613 = fmul fast float %8612, %8610
  %8614 = fdiv fast float 1.000000e+00, %8613
  %8615 = bitcast float %5638 to i32
  %8616 = sitofp i32 %8615 to float
  %8617 = fmul fast float %8616, 0x3FE7F73180000000
  %8618 = fadd fast float %8617, 0x41AFE27C40000000
  %8619 = fptosi float %8618 to i32
  %8620 = bitcast i32 %8619 to float
  %8621 = fmul fast float %8212, 0x3FD80E9D60000000
  %8622 = fmul fast float %8621, %8576
  %8623 = fadd fast float %8620, %8622
  %8624 = bitcast float %8623 to i32
  %8625 = sub nsw i32 2129859010, %8624
  %8626 = bitcast i32 %8625 to float
  %8627 = fmul fast float %5638, %8614
  %8628 = fmul fast float %8627, %8620
  %8629 = fmul fast float %8628, %8626
  %8630 = fmul fast float %5744, 0x3FF9999980000000
  %8631 = fsub fast float 5.000000e+00, %8630
  %8632 = call float @dx.op.unary.f32(i32 6, float %8565)  ; FAbs(value)
  %8633 = fsub fast float 1.000000e+00, %8632
  %8634 = fmul fast float %5744, 0x41D9660740000000
  %8635 = fadd fast float %8634, 0xC1EFBF8940000000
  %8636 = bitcast float %8633 to i32
  %8637 = sitofp i32 %8636 to float
  %8638 = fmul fast float %8637, %8631
  %8639 = fadd fast float %8635, %8638
  %8640 = fptosi float %8639 to i32
  %8641 = bitcast i32 %8640 to float
  %8642 = fsub fast float 1.000000e+00, %5609
  %8643 = fsub fast float 1.000000e+00, %5610
  %8644 = fsub fast float 1.000000e+00, %5618
  %8645 = fmul fast float %8641, %8642
  %8646 = fmul fast float %8641, %8643
  %8647 = fmul fast float %8641, %8644
  %8648 = fadd fast float %8645, %5609
  %8649 = fadd fast float %8646, %5610
  %8650 = fadd fast float %8647, %5618
  br i1 %5767, label %8651, label %8674

; <label>:8651                                    ; preds = %8536
  %8652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4408, float %8632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8653 = extractvalue %dx.types.ResRet.f32 %8652, 0
  %8654 = extractvalue %dx.types.ResRet.f32 %8652, 1
  %8655 = extractvalue %dx.types.ResRet.f32 %8652, 2
  %8656 = fadd fast float %8653, -5.000000e-01
  %8657 = fadd fast float %8654, -5.000000e-01
  %8658 = fadd fast float %8655, -5.000000e-01
  %8659 = fmul fast float %5609, 4.000000e+00
  %8660 = fmul fast float %8659, %8642
  %8661 = fmul fast float %8660, %8656
  %8662 = fmul fast float %5610, 4.000000e+00
  %8663 = fmul fast float %8662, %8643
  %8664 = fmul fast float %8663, %8657
  %8665 = fmul fast float %5618, 4.000000e+00
  %8666 = fmul fast float %8665, %8644
  %8667 = fmul fast float %8666, %8658
  %8668 = fadd fast float %8661, %8648
  %8669 = fadd fast float %8664, %8649
  %8670 = fadd fast float %8667, %8650
  %8671 = call float @dx.op.unary.f32(i32 7, float %8668)  ; Saturate(value)
  %8672 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8673 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  br label %8674

; <label>:8674                                    ; preds = %8651, %8536
  %8675 = phi float [ %8671, %8651 ], [ %8648, %8536 ]
  %8676 = phi float [ %8672, %8651 ], [ %8649, %8536 ]
  %8677 = phi float [ %8673, %8651 ], [ %8650, %8536 ]
  %8678 = fmul fast float %8564, 9.843750e-01
  %8679 = fadd fast float %8678, 7.812500e-03
  %8680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8679, float %5748, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8681 = extractvalue %dx.types.ResRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.ResRet.f32 %8680, 1
  %8683 = extractvalue %dx.types.ResRet.f32 %8680, 2
  %8684 = extractvalue %dx.types.ResRet.f32 %8680, 3
  %8685 = fsub fast float %8683, %8681
  %8686 = fsub fast float %8684, %8682
  %8687 = fmul fast float %8685, %5754
  %8688 = fmul fast float %8686, %5754
  %8689 = fadd fast float %8687, %8681
  %8690 = fadd fast float %8688, %8682
  %8691 = fmul fast float %8689, %5609
  %8692 = fmul fast float %8689, %5610
  %8693 = fmul fast float %8689, %5618
  %8694 = fadd fast float %8691, %8690
  %8695 = fadd fast float %8692, %8690
  %8696 = fadd fast float %8693, %8690
  br i1 %5767, label %8697, label %8720

; <label>:8697                                    ; preds = %8674
  %8698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4408, float %8564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8699 = extractvalue %dx.types.ResRet.f32 %8698, 0
  %8700 = extractvalue %dx.types.ResRet.f32 %8698, 1
  %8701 = extractvalue %dx.types.ResRet.f32 %8698, 2
  %8702 = fadd fast float %8699, -5.000000e-01
  %8703 = fadd fast float %8700, -5.000000e-01
  %8704 = fadd fast float %8701, -5.000000e-01
  %8705 = fmul fast float %5609, 4.000000e+00
  %8706 = fmul fast float %8705, %8642
  %8707 = fmul fast float %8706, %8702
  %8708 = fmul fast float %5610, 4.000000e+00
  %8709 = fmul fast float %8708, %8643
  %8710 = fmul fast float %8709, %8703
  %8711 = fmul fast float %5618, 4.000000e+00
  %8712 = fmul fast float %8711, %8644
  %8713 = fmul fast float %8712, %8704
  %8714 = fadd fast float %8707, %8694
  %8715 = fadd fast float %8710, %8695
  %8716 = fadd fast float %8713, %8696
  %8717 = call float @dx.op.unary.f32(i32 7, float %8714)  ; Saturate(value)
  %8718 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8719 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  br label %8720

; <label>:8720                                    ; preds = %8697, %8674
  %8721 = phi float [ %8717, %8697 ], [ %8694, %8674 ]
  %8722 = phi float [ %8718, %8697 ], [ %8695, %8674 ]
  %8723 = phi float [ %8719, %8697 ], [ %8696, %8674 ]
  %8724 = call float @dx.op.binary.f32(i32 35, float %8722, float %8723)  ; FMax(a,b)
  %8725 = call float @dx.op.binary.f32(i32 35, float %8721, float %8724)  ; FMax(a,b)
  %8726 = fsub fast float 1.000000e+00, %8725
  %8727 = fmul fast float %8675, %8629
  %8728 = fmul fast float %8676, %8629
  %8729 = fmul fast float %8677, %8629
  %8730 = fsub fast float 1.000000e+00, %8565
  %8731 = bitcast float %8730 to i32
  %8732 = sitofp i32 %8731 to float
  %8733 = fmul fast float %8732, 5.000000e+00
  %8734 = fadd fast float %8733, 0xC1EFBF8940000000
  %8735 = fptosi float %8734 to i32
  %8736 = bitcast i32 %8735 to float
  %8737 = fmul fast float %8736, %4409
  %8738 = fmul fast float %8726, %8737
  %8739 = fmul fast float %8738, %6309
  %8740 = fmul fast float %8738, %6310
  %8741 = fmul fast float %8738, %6311
  %8742 = fadd fast float %8739, %8727
  %8743 = fadd fast float %8740, %8728
  %8744 = fadd fast float %8741, %8729
  %8745 = fmul fast float %8553, %4405
  %8746 = fmul fast float %8745, %8572
  %8747 = fmul fast float %8746, %8726
  %8748 = fmul fast float %8554, %4405
  %8749 = fmul fast float %8748, %8572
  %8750 = fmul fast float %8749, %8726
  %8751 = fmul fast float %8555, %4405
  %8752 = fmul fast float %8751, %8572
  %8753 = fmul fast float %8752, %8726
  %8754 = fadd fast float %8747, %8186
  %8755 = fadd fast float %8750, %8187
  %8756 = fadd fast float %8753, %8188
  %8757 = fmul fast float %8746, %8742
  %8758 = fmul fast float %8749, %8743
  %8759 = fmul fast float %8752, %8744
  %8760 = fadd fast float %8757, %8183
  %8761 = fadd fast float %8758, %8184
  %8762 = fadd fast float %8759, %8185
  br label %8315

; <label>:8763                                    ; preds = %8315
  br label %8764

; <label>:8764                                    ; preds = %8763, %8149
  %8765 = phi float [ %8151, %8149 ], [ %8316, %8763 ]
  %8766 = phi float [ %8152, %8149 ], [ %8317, %8763 ]
  %8767 = phi float [ %8153, %8149 ], [ %8318, %8763 ]
  %8768 = phi float [ %8154, %8149 ], [ %8319, %8763 ]
  %8769 = phi float [ %8155, %8149 ], [ %8320, %8763 ]
  %8770 = phi float [ %8156, %8149 ], [ %8321, %8763 ]
  %8771 = add i32 %8150, 1
  %8772 = icmp ugt i32 %8771, %8146
  br i1 %8772, label %8773, label %8149

; <label>:8773                                    ; preds = %8764
  br label %8774

; <label>:8774                                    ; preds = %8773, %8099, %8089
  %8775 = phi float [ %8090, %8089 ], [ %8090, %8099 ], [ %8765, %8773 ]
  %8776 = phi float [ %8091, %8089 ], [ %8091, %8099 ], [ %8766, %8773 ]
  %8777 = phi float [ %8092, %8089 ], [ %8092, %8099 ], [ %8767, %8773 ]
  %8778 = phi float [ %8093, %8089 ], [ %8093, %8099 ], [ %8768, %8773 ]
  %8779 = phi float [ %8094, %8089 ], [ %8094, %8099 ], [ %8769, %8773 ]
  %8780 = phi float [ %8095, %8089 ], [ %8095, %8099 ], [ %8770, %8773 ]
  %8781 = fmul fast float %4405, %4405
  %8782 = fmul fast float %8781, %6335
  %8783 = fmul fast float %8781, %6336
  %8784 = fmul fast float %8781, %6337
  %8785 = fadd fast float %8782, 1.000000e+00
  %8786 = fadd fast float %8783, 1.000000e+00
  %8787 = fadd fast float %8784, 1.000000e+00
  %8788 = call float @dx.op.dot3.f32(i32 55, float %8785, float %8786, float %8787, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8789 = fsub fast float 1.000000e+00, %8788
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %8792 = fmul fast float %8791, %6341
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 3
  %8795 = fsub fast float 1.000000e+00, %4413
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = fadd fast float %8780, %4411
  %8798 = fmul fast float %8797, %4413
  %8799 = fmul fast float %8796, %8794
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 3
  %8802 = fmul fast float %8778, %5606
  %8803 = fmul fast float %8779, %5607
  %8804 = fmul fast float %8780, %5608
  %8805 = fcmp fast ogt float %101, %223
  %8806 = and i1 %8805, %4819
  %8807 = or i1 %4825, %8806
  %8808 = icmp eq i32 %4818, 2
  %8809 = fcmp fast ole float %101, %223
  %8810 = and i1 %8809, %8808
  %8811 = or i1 %8810, %8807
  br i1 %8806, label %8812, label %9069

; <label>:8812                                    ; preds = %8774
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 2
  %8815 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8816 = fmul fast float %8814, %114
  %8817 = fmul fast float %8815, %115
  %8818 = call float @dx.op.unary.f32(i32 7, float %8816)  ; Saturate(value)
  %8819 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8818, float %8819, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8821 = extractvalue %dx.types.ResRet.f32 %8820, 0
  %8822 = extractvalue %dx.types.ResRet.f32 %8820, 1
  %8823 = extractvalue %dx.types.ResRet.f32 %8820, 2
  %8824 = extractvalue %dx.types.ResRet.f32 %8820, 3
  %8825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8818, float %8819, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8826 = extractvalue %dx.types.ResRet.f32 %8825, 0
  %8827 = extractvalue %dx.types.ResRet.f32 %8825, 1
  %8828 = extractvalue %dx.types.ResRet.f32 %8825, 2
  %8829 = extractvalue %dx.types.ResRet.f32 %8825, 3
  %8830 = call float @dx.op.binary.f32(i32 35, float %8822, float %8823)  ; FMax(a,b)
  %8831 = call float @dx.op.binary.f32(i32 35, float %8821, float %8830)  ; FMax(a,b)
  %8832 = call float @dx.op.binary.f32(i32 35, float %8831, float %8824)  ; FMax(a,b)
  %8833 = call float @dx.op.binary.f32(i32 36, float %8827, float %8828)  ; FMin(a,b)
  %8834 = call float @dx.op.binary.f32(i32 36, float %8826, float %8833)  ; FMin(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8834, float %8829)  ; FMin(a,b)
  %8836 = fmul fast float %8832, 2.550000e+02
  %8837 = fadd fast float %8836, 0x3F70101020000000
  %8838 = fptoui float %8837 to i32
  %8839 = fmul fast float %8835, 2.550000e+02
  %8840 = fadd fast float %8839, 0x3F70101020000000
  %8841 = fptoui float %8840 to i32
  %8842 = icmp ult i32 %8838, %8841
  br i1 %8842, label %8843, label %9011

; <label>:8843                                    ; preds = %8812
  %8844 = fcmp fast ogt float %100, 9.843750e-01
  %8845 = fadd fast float %101, -4.000000e+00
  %8846 = select i1 %8844, float -4.000000e+00, float %8845
  %8847 = call float @dx.op.binary.f32(i32 35, float %8846, float 0.000000e+00)  ; FMax(a,b)
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 0
  %8850 = fadd fast float %8849, %8847
  %8851 = extractvalue %dx.types.CBufRet.f32 %8848, 2
  %8852 = fmul fast float %8850, %8851
  %8853 = call float @dx.op.unary.f32(i32 23, float %8852)  ; Log(value)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8848, 3
  %8855 = fmul fast float %8854, %8853
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 2
  %8858 = fmul fast float %8855, %8857
  %8859 = call float @dx.op.unary.f32(i32 7, float %8858)  ; Saturate(value)
  %8860 = uitofp i32 %8838 to float
  %8861 = uitofp i32 %8841 to float
  %8862 = fadd fast float %8860, 5.000000e-01
  %8863 = fadd fast float %8861, 5.000000e-01
  %8864 = fmul fast float %8857, %8862
  %8865 = fmul fast float %8857, %8863
  %8866 = fadd fast float %8864, 0x3F0FFB4800000000
  %8867 = fadd fast float %8865, 0xBF0FFB4800000000
  %8868 = call float @dx.op.binary.f32(i32 35, float %8859, float %8866)  ; FMax(a,b)
  %8869 = call float @dx.op.binary.f32(i32 36, float %8868, float %8867)  ; FMin(a,b)
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 1
  %8872 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8873 = extractvalue %dx.types.CBufRet.f32 %8870, 0
  %8874 = fmul fast float %8871, %8869
  %8875 = fadd fast float %8873, %8874
  %8876 = fadd fast float %8873, %8872
  %8877 = fsub fast float %8871, %8872
  %8878 = fadd fast float %8877, %8873
  %8879 = call float @dx.op.binary.f32(i32 35, float %8875, float %8876)  ; FMax(a,b)
  %8880 = call float @dx.op.binary.f32(i32 36, float %8879, float %8878)  ; FMin(a,b)
  %8881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8818, float %8819, float %8880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8882 = extractvalue %dx.types.ResRet.f32 %8881, 0
  %8883 = extractvalue %dx.types.ResRet.f32 %8881, 1
  %8884 = extractvalue %dx.types.ResRet.f32 %8881, 2
  %8885 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.i32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.i32 %8885, 1
  %8888 = uitofp i32 %8886 to float
  %8889 = uitofp i32 %8887 to float
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8892 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8893 = fmul fast float %8888, %8818
  %8894 = fmul fast float %8889, %8819
  %8895 = fadd fast float %8893, -5.000000e-01
  %8896 = fadd fast float %8894, -5.000000e-01
  %8897 = call float @dx.op.unary.f32(i32 22, float %8895)  ; Frc(value)
  %8898 = call float @dx.op.unary.f32(i32 22, float %8896)  ; Frc(value)
  %8899 = fmul fast float %8897, %8897
  %8900 = fmul fast float %8899, %8897
  %8901 = fsub fast float 3.000000e+00, %8897
  %8902 = fmul fast float %8899, %8901
  %8903 = fmul fast float %8897, 3.000000e+00
  %8904 = fmul fast float %8900, 3.000000e+00
  %8905 = fmul fast float %8899, 6.000000e+00
  %8906 = fsub fast float %8904, %8905
  %8907 = fadd fast float %8906, 4.000000e+00
  %8908 = fmul fast float %8907, 0x3FC5555560000000
  %8909 = fmul fast float %8900, -3.000000e+00
  %8910 = fadd fast float %8899, %8897
  %8911 = fmul fast float %8910, 3.000000e+00
  %8912 = fadd fast float %8909, 1.000000e+00
  %8913 = fadd fast float %8912, %8911
  %8914 = fmul fast float %8900, 0x3FC5555560000000
  %8915 = fmul fast float %8898, %8898
  %8916 = fmul fast float %8915, %8898
  %8917 = fsub fast float 3.000000e+00, %8898
  %8918 = fmul fast float %8915, %8917
  %8919 = fmul fast float %8898, 3.000000e+00
  %8920 = fmul fast float %8916, 3.000000e+00
  %8921 = fmul fast float %8915, 6.000000e+00
  %8922 = fsub fast float %8920, %8921
  %8923 = fadd fast float %8922, 4.000000e+00
  %8924 = fmul fast float %8923, 0x3FC5555560000000
  %8925 = fmul fast float %8916, -3.000000e+00
  %8926 = fadd fast float %8915, %8898
  %8927 = fmul fast float %8926, 3.000000e+00
  %8928 = fadd fast float %8925, 1.000000e+00
  %8929 = fadd fast float %8928, %8927
  %8930 = fmul fast float %8916, 0x3FC5555560000000
  %8931 = fadd fast float %8897, 1.000000e+00
  %8932 = fsub fast float 1.000000e+00, %8903
  %8933 = fadd fast float %8932, %8902
  %8934 = fadd fast float %8933, %8907
  %8935 = fmul fast float %8934, 0x3FC5555560000000
  %8936 = fdiv fast float %8908, %8935
  %8937 = fsub fast float %8931, %8936
  %8938 = fsub fast float 1.000000e+00, %8897
  %8939 = fadd fast float %8913, %8900
  %8940 = fmul fast float %8939, 0x3FC5555560000000
  %8941 = fdiv fast float %8914, %8940
  %8942 = fadd fast float %8938, %8941
  %8943 = fadd fast float %8898, 1.000000e+00
  %8944 = fsub fast float 1.000000e+00, %8919
  %8945 = fadd fast float %8944, %8918
  %8946 = fadd fast float %8945, %8923
  %8947 = fmul fast float %8946, 0x3FC5555560000000
  %8948 = fdiv fast float %8924, %8947
  %8949 = fsub fast float %8943, %8948
  %8950 = fsub fast float 1.000000e+00, %8898
  %8951 = fadd fast float %8929, %8916
  %8952 = fmul fast float %8951, 0x3FC5555560000000
  %8953 = fdiv fast float %8930, %8952
  %8954 = fadd fast float %8953, %8950
  %8955 = fmul fast float %8937, %8891
  %8956 = fsub fast float %8818, %8955
  %8957 = fmul fast float %8942, %8891
  %8958 = fadd fast float %8957, %8818
  %8959 = fmul fast float %8954, %8892
  %8960 = fadd fast float %8959, %8819
  %8961 = fmul fast float %8949, %8892
  %8962 = fsub fast float %8819, %8961
  %8963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8956, float %8962, float %8880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8964 = extractvalue %dx.types.ResRet.f32 %8963, 0
  %8965 = extractvalue %dx.types.ResRet.f32 %8963, 1
  %8966 = extractvalue %dx.types.ResRet.f32 %8963, 2
  %8967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8958, float %8962, float %8880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8968 = extractvalue %dx.types.ResRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.ResRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.ResRet.f32 %8967, 2
  %8971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8956, float %8960, float %8880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8972 = extractvalue %dx.types.ResRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.ResRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.ResRet.f32 %8971, 2
  %8975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8958, float %8960, float %8880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.ResRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.ResRet.f32 %8975, 2
  %8979 = fsub fast float %8972, %8964
  %8980 = fsub fast float %8973, %8965
  %8981 = fsub fast float %8974, %8966
  %8982 = fmul fast float %8979, %8952
  %8983 = fmul fast float %8980, %8952
  %8984 = fmul fast float %8981, %8952
  %8985 = fadd fast float %8982, %8964
  %8986 = fadd fast float %8983, %8965
  %8987 = fadd fast float %8984, %8966
  %8988 = fsub fast float %8976, %8968
  %8989 = fsub fast float %8977, %8969
  %8990 = fsub fast float %8978, %8970
  %8991 = fmul fast float %8988, %8952
  %8992 = fmul fast float %8989, %8952
  %8993 = fmul fast float %8990, %8952
  %8994 = fsub fast float %8968, %8985
  %8995 = fadd fast float %8994, %8991
  %8996 = fsub fast float %8969, %8986
  %8997 = fadd fast float %8996, %8992
  %8998 = fsub fast float %8970, %8987
  %8999 = fadd fast float %8998, %8993
  %9000 = fmul fast float %8995, %8940
  %9001 = fmul fast float %8997, %8940
  %9002 = fmul fast float %8999, %8940
  %9003 = fadd fast float %9000, %8985
  %9004 = fadd fast float %9001, %8986
  %9005 = fadd fast float %9002, %8987
  %9006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9007 = extractvalue %dx.types.CBufRet.f32 %9006, 1
  %9008 = fmul fast float %9003, %9007
  %9009 = fmul fast float %9004, %9007
  %9010 = fmul fast float %9005, %9007
  br label %9011

; <label>:9011                                    ; preds = %8843, %8812
  %9012 = phi float [ %8882, %8843 ], [ 1.000000e+00, %8812 ]
  %9013 = phi float [ %8883, %8843 ], [ 1.000000e+00, %8812 ]
  %9014 = phi float [ %8884, %8843 ], [ 1.000000e+00, %8812 ]
  %9015 = phi float [ %9008, %8843 ], [ 0.000000e+00, %8812 ]
  %9016 = phi float [ %9009, %8843 ], [ 0.000000e+00, %8812 ]
  %9017 = phi float [ %9010, %8843 ], [ 0.000000e+00, %8812 ]
  %9018 = fmul fast float %9015, %8789
  %9019 = fmul fast float %9016, %8789
  %9020 = fmul fast float %9017, %8789
  %9021 = call float @dx.op.dot3.f32(i32 55, float %9012, float %9013, float %9014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9022 = call float @dx.op.dot3.f32(i32 55, float %9018, float %9019, float %9020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9023 = select i1 %260, float %9021, float %9012
  %9024 = select i1 %260, float %9021, float %9013
  %9025 = select i1 %260, float 1.000000e+00, float %9014
  %9026 = select i1 %260, float %9022, float %9018
  %9027 = select i1 %260, float 0.000000e+00, float %9019
  %9028 = select i1 %260, float 0.000000e+00, float %9020
  %9029 = fmul fast float %9023, %8802
  %9030 = fmul fast float %9024, %8803
  %9031 = fmul fast float %9025, %8804
  %9032 = fadd fast float %9029, %9026
  %9033 = fadd fast float %9030, %9027
  %9034 = fadd fast float %9028, %9031
  %9035 = fmul fast float %9023, %8775
  %9036 = fmul fast float %9024, %8776
  %9037 = fmul fast float %9025, %8777
  %9038 = fmul fast float %150, %8814
  %9039 = fmul fast float %152, %8815
  %9040 = fsub fast float 1.000000e+00, %9038
  %9041 = fsub fast float 1.000000e+00, %9039
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9046 = fmul fast float %9040, %9043
  %9047 = fmul fast float %9040, %9044
  %9048 = fmul fast float %9040, %9045
  %9049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9050 = extractvalue %dx.types.CBufRet.f32 %9049, 0
  %9051 = extractvalue %dx.types.CBufRet.f32 %9049, 1
  %9052 = extractvalue %dx.types.CBufRet.f32 %9049, 2
  %9053 = fmul fast float %9041, %9050
  %9054 = fmul fast float %9041, %9051
  %9055 = fmul fast float %9041, %9052
  %9056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9057 = extractvalue %dx.types.CBufRet.f32 %9056, 0
  %9058 = extractvalue %dx.types.CBufRet.f32 %9056, 1
  %9059 = extractvalue %dx.types.CBufRet.f32 %9056, 2
  %9060 = fadd fast float %9053, %9057
  %9061 = fadd fast float %9060, %9046
  %9062 = fadd fast float %9054, %9058
  %9063 = fadd fast float %9062, %9047
  %9064 = fadd fast float %9055, %9059
  %9065 = fadd fast float %9064, %9048
  %9066 = fmul fast float %9061, %223
  %9067 = fmul fast float %9063, %223
  %9068 = fmul fast float %9065, %223
  br label %9069

; <label>:9069                                    ; preds = %9011, %8774
  %9070 = phi float [ %9066, %9011 ], [ %201, %8774 ]
  %9071 = phi float [ %9067, %9011 ], [ %202, %8774 ]
  %9072 = phi float [ %9068, %9011 ], [ %203, %8774 ]
  %9073 = phi float [ %223, %9011 ], [ %101, %8774 ]
  %9074 = phi float [ %9032, %9011 ], [ %8802, %8774 ]
  %9075 = phi float [ %9033, %9011 ], [ %8803, %8774 ]
  %9076 = phi float [ %9034, %9011 ], [ %8804, %8774 ]
  %9077 = phi float [ %9035, %9011 ], [ %8775, %8774 ]
  %9078 = phi float [ %9036, %9011 ], [ %8776, %8774 ]
  %9079 = phi float [ %9037, %9011 ], [ %8777, %8774 ]
  %9080 = phi float [ %9012, %9011 ], [ 1.000000e+00, %8774 ]
  br i1 %8811, label %10235, label %9081

; <label>:9081                                    ; preds = %9069
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.CBufRet.f32 %9082, 2
  %9086 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.CBufRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.CBufRet.f32 %9087, 2
  %9091 = extractvalue %dx.types.CBufRet.f32 %9087, 3
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 0
  %9094 = extractvalue %dx.types.CBufRet.f32 %9092, 1
  %9095 = extractvalue %dx.types.CBufRet.f32 %9092, 2
  %9096 = extractvalue %dx.types.CBufRet.f32 %9092, 3
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9100 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9101 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9102, 3
  %9104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9104, 3
  %9106 = extractvalue %dx.types.CBufRet.f32 %9104, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9104, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9104, 2
  %9109 = fcmp fast olt float %9108, -5.000000e-01
  %9110 = call float @dx.op.dot3.f32(i32 55, float %9070, float %9071, float %9072, float %9070, float %9071, float %9072)  ; Dot3(ax,ay,az,bx,by,bz)
  %9111 = call float @dx.op.unary.f32(i32 25, float %9110)  ; Rsqrt(value)
  %9112 = fmul fast float %9111, %9110
  %9113 = fmul fast float %9111, %9070
  %9114 = fmul fast float %9111, %9071
  %9115 = fmul fast float %9111, %9072
  %9116 = fadd fast float %9112, %9086
  %9117 = call float @dx.op.dot3.f32(i32 55, float %9113, float %9114, float %9115, float %9083, float %9084, float %9085)  ; Dot3(ax,ay,az,bx,by,bz)
  %9118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9119 = extractvalue %dx.types.CBufRet.i32 %9118, 1
  %9120 = and i32 %9119, 1
  %9121 = icmp ne i32 %9120, 0
  %9122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.f32 %9122, 2
  %9124 = fcmp fast ogt float %9123, 0.000000e+00
  %9125 = and i1 %9121, %9124
  br i1 %9125, label %9126, label %9532, !dx.controlflow.hints !136

; <label>:9126                                    ; preds = %9081
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 3
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 2
  %9133 = fsub fast float %9130, %9132
  %9134 = and i32 %9119, 2
  %9135 = extractvalue %dx.types.CBufRet.i32 %9118, 0
  %9136 = call i32 @dx.op.binary.i32(i32 40, i32 %9135, i32 3)  ; UMin(a,b)
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9140 = extractvalue %dx.types.CBufRet.f32 %9131, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9131, 1
  %9142 = fsub fast float %9138, %9140
  %9143 = fsub fast float %9139, %9141
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = fcmp fast ogt float %9145, 0.000000e+00
  %9147 = fsub fast float -0.000000e+00, %9142
  %9148 = fsub fast float -0.000000e+00, %9143
  %9149 = call float @dx.op.dot2.f32(i32 54, float %9113, float %9114, float %9113, float %9114)  ; Dot2(ax,ay,bx,by)
  %9150 = call float @dx.op.dot2.f32(i32 54, float %9113, float %9114, float %9147, float %9148)  ; Dot2(ax,ay,bx,by)
  %9151 = fmul fast float %9150, 2.000000e+00
  %9152 = call float @dx.op.dot2.f32(i32 54, float %9147, float %9148, float %9147, float %9148)  ; Dot2(ax,ay,bx,by)
  %9153 = fmul fast float %9145, %9145
  %9154 = fsub fast float %9152, %9153
  %9155 = fmul fast float %9151, %9151
  %9156 = fmul fast float %9149, 4.000000e+00
  %9157 = fmul fast float %9156, %9154
  %9158 = fsub fast float %9155, %9157
  %9159 = fcmp fast ogt float %9158, 0.000000e+00
  br i1 %9159, label %9160, label %9175

; <label>:9160                                    ; preds = %9126
  %9161 = fcmp fast ogt float %9151, 0.000000e+00
  %9162 = call float @dx.op.unary.f32(i32 24, float %9158)  ; Sqrt(value)
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = select i1 %9161, float %9162, float %9163
  %9165 = fadd fast float %9164, %9151
  %9166 = fmul float %9165, -5.000000e-01
  %9167 = fdiv fast float %9166, %9149
  %9168 = call float @dx.op.binary.f32(i32 35, float %9167, float 0.000000e+00)  ; FMax(a,b)
  %9169 = call float @dx.op.binary.f32(i32 36, float %9112, float %9168)  ; FMin(a,b)
  %9170 = fdiv fast float %9154, %9166
  %9171 = call float @dx.op.binary.f32(i32 35, float %9170, float 0.000000e+00)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 36, float %9112, float %9171)  ; FMin(a,b)
  %9173 = call float @dx.op.binary.f32(i32 36, float %9169, float %9172)  ; FMin(a,b)
  %9174 = call float @dx.op.binary.f32(i32 35, float %9169, float %9172)  ; FMax(a,b)
  br label %9175

; <label>:9175                                    ; preds = %9160, %9126
  %9176 = phi float [ %9174, %9160 ], [ -1.000000e+00, %9126 ]
  %9177 = phi float [ %9173, %9160 ], [ -1.000000e+00, %9126 ]
  %9178 = phi i1 [ true, %9160 ], [ false, %9126 ]
  %9179 = and i1 %9146, %9178
  br i1 %9179, label %9180, label %9182

; <label>:9180                                    ; preds = %9175
  %9181 = fcmp fast oeq float %9177, %9176
  br i1 %9181, label %9485, label %9183

; <label>:9182                                    ; preds = %9175
  br i1 %9146, label %9485, label %9183

; <label>:9183                                    ; preds = %9182, %9180
  %9184 = phi float [ %9112, %9182 ], [ %9176, %9180 ]
  %9185 = phi float [ 0.000000e+00, %9182 ], [ %9177, %9180 ]
  %9186 = icmp ne i32 %9134, 0
  %9187 = fmul fast float %9184, %9115
  %9188 = fadd fast float %9187, %9128
  %9189 = fmul fast float %9188, %9184
  %9190 = select i1 %9186, float 0.000000e+00, float %9189
  %9191 = fcmp fast oeq float %9115, 0.000000e+00
  %9192 = fdiv fast float %9133, %9115
  %9193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9192)  ; FMax(a,b)
  %9194 = select i1 %9191, float %9184, float %9193
  %9195 = call float @dx.op.binary.f32(i32 36, float %9184, float %9194)  ; FMin(a,b)
  %9196 = fcmp fast ogt float %9115, 0.000000e+00
  %9197 = fcmp fast olt float %9133, 0.000000e+00
  br i1 %9196, label %9198, label %9255

; <label>:9198                                    ; preds = %9183
  %9199 = icmp eq i32 %9134, 0
  br i1 %9197, label %9200, label %9244

; <label>:9200                                    ; preds = %9198
  %9201 = select i1 %9199, float %9184, float 0.000000e+00
  %9202 = fsub fast float -0.000000e+00, %9201
  %9203 = call float @dx.op.unary.f32(i32 6, float %9202)  ; FAbs(value)
  %9204 = fmul fast float %9201, %9115
  %9205 = fadd fast float %9204, %9128
  %9206 = fmul fast float %9203, %9205
  %9207 = fsub fast float %9190, %9206
  %9208 = fsub fast float %9184, %9203
  %9209 = select i1 %9199, float %9208, float 0.000000e+00
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 0
  %9216 = extractvalue %dx.types.CBufRet.f32 %9214, 1
  %9217 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %9218 = extractvalue %dx.types.CBufRet.f32 %9214, 3
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 3
  %9221 = call float @dx.op.binary.f32(i32 36, float %9207, float %9220)  ; FMin(a,b)
  %9222 = fmul fast float %9218, %9209
  %9223 = call float @dx.op.unary.f32(i32 7, float %9222)  ; Saturate(value)
  %9224 = fsub fast float %9215, %9211
  %9225 = fsub fast float %9216, %9212
  %9226 = fsub fast float %9217, %9213
  %9227 = fmul fast float %9223, %9224
  %9228 = fmul fast float %9223, %9225
  %9229 = fmul fast float %9223, %9226
  %9230 = fadd fast float %9227, %9211
  %9231 = fadd fast float %9228, %9212
  %9232 = fadd fast float %9229, %9213
  %9233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9234 = extractvalue %dx.types.CBufRet.f32 %9233, 0
  %9235 = extractvalue %dx.types.CBufRet.f32 %9233, 1
  %9236 = fadd fast float %9235, %9234
  %9237 = call float @dx.op.unary.f32(i32 7, float %9236)  ; Saturate(value)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9233, 2
  %9239 = extractvalue %dx.types.CBufRet.f32 %9233, 3
  %9240 = fadd fast float %9239, %9238
  %9241 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9242 = fmul fast float %9237, %9221
  %9243 = fmul fast float %9242, %9241
  br label %9485

; <label>:9244                                    ; preds = %9198
  br i1 %9199, label %9245, label %9266

; <label>:9245                                    ; preds = %9244
  %9246 = call float @dx.op.binary.f32(i32 36, float %9195, float %9185)  ; FMin(a,b)
  %9247 = fsub fast float %9195, %9246
  %9248 = fsub fast float %9247, %9184
  %9249 = call float @dx.op.unary.f32(i32 6, float %9248)  ; FAbs(value)
  %9250 = fadd fast float %9247, %9184
  %9251 = fmul fast float %9250, %9115
  %9252 = fadd fast float %9251, %9128
  %9253 = fmul fast float %9252, %9249
  %9254 = fsub fast float %9190, %9253
  br label %9266

; <label>:9255                                    ; preds = %9183
  br i1 %9197, label %9256, label %9266

; <label>:9256                                    ; preds = %9255
  %9257 = call float @dx.op.binary.f32(i32 35, float %9185, float %9195)  ; FMax(a,b)
  %9258 = icmp eq i32 %9134, 0
  %9259 = select i1 %9258, float %9195, float 0.000000e+00
  %9260 = fsub fast float -0.000000e+00, %9259
  %9261 = call float @dx.op.unary.f32(i32 6, float %9260)  ; FAbs(value)
  %9262 = fmul fast float %9259, %9115
  %9263 = fadd fast float %9262, %9128
  %9264 = fmul fast float %9261, %9263
  %9265 = fsub fast float %9190, %9264
  br label %9266

; <label>:9266                                    ; preds = %9256, %9255, %9245, %9244
  %9267 = phi float [ %9185, %9244 ], [ %9185, %9245 ], [ %9257, %9256 ], [ %9185, %9255 ]
  %9268 = phi float [ 0.000000e+00, %9244 ], [ %9249, %9245 ], [ %9261, %9256 ], [ 0.000000e+00, %9255 ]
  %9269 = phi float [ %9190, %9244 ], [ %9254, %9245 ], [ %9265, %9256 ], [ %9190, %9255 ]
  %9270 = phi float [ %9195, %9244 ], [ %9195, %9245 ], [ %9184, %9256 ], [ %9184, %9255 ]
  %9271 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %9271, align 4, !tbaa !122, !noalias !137
  %9272 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %9272, align 4, !tbaa !122, !noalias !137
  %9273 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %9273, align 4, !tbaa !122, !noalias !137
  %9274 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %9274, align 4, !tbaa !122, !noalias !137
  %9275 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %9275, align 4, !tbaa !122, !noalias !137
  %9276 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %9276, align 4, !tbaa !122, !noalias !137
  %9277 = icmp sgt i32 %9136, 0
  br i1 %9277, label %9278, label %9339

; <label>:9278                                    ; preds = %9266
  br label %9279

; <label>:9279                                    ; preds = %9328, %9278
  %9280 = phi i32 [ %9329, %9328 ], [ 0, %9278 ]
  %9281 = phi i32 [ %9330, %9328 ], [ 0, %9278 ]
  %9282 = add nuw i32 %9281, 171
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9282)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 0
  %9288 = extractvalue %dx.types.CBufRet.f32 %9286, 1
  %9289 = fsub fast float %9284, %9287
  %9290 = fsub fast float %9285, %9288
  %9291 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9292 = fsub fast float -0.000000e+00, %9289
  %9293 = fsub fast float -0.000000e+00, %9290
  %9294 = call float @dx.op.dot2.f32(i32 54, float %9113, float %9114, float %9292, float %9293)  ; Dot2(ax,ay,bx,by)
  %9295 = fmul fast float %9294, 2.000000e+00
  %9296 = call float @dx.op.dot2.f32(i32 54, float %9292, float %9293, float %9292, float %9293)  ; Dot2(ax,ay,bx,by)
  %9297 = fmul fast float %9291, %9291
  %9298 = fsub fast float %9296, %9297
  %9299 = fmul fast float %9295, %9295
  %9300 = fmul fast float %9156, %9298
  %9301 = fsub fast float %9299, %9300
  %9302 = fcmp fast ogt float %9301, 0.000000e+00
  br i1 %9302, label %9303, label %9318

; <label>:9303                                    ; preds = %9279
  %9304 = fcmp fast ogt float %9295, 0.000000e+00
  %9305 = call float @dx.op.unary.f32(i32 24, float %9301)  ; Sqrt(value)
  %9306 = fsub fast float -0.000000e+00, %9305
  %9307 = select i1 %9304, float %9305, float %9306
  %9308 = fadd fast float %9307, %9295
  %9309 = fmul float %9308, -5.000000e-01
  %9310 = fdiv fast float %9309, %9149
  %9311 = call float @dx.op.binary.f32(i32 35, float %9310, float 0.000000e+00)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9184, float %9311)  ; FMin(a,b)
  %9313 = fdiv fast float %9298, %9309
  %9314 = call float @dx.op.binary.f32(i32 35, float %9313, float 0.000000e+00)  ; FMax(a,b)
  %9315 = call float @dx.op.binary.f32(i32 36, float %9184, float %9314)  ; FMin(a,b)
  %9316 = call float @dx.op.binary.f32(i32 36, float %9312, float %9315)  ; FMin(a,b)
  %9317 = call float @dx.op.binary.f32(i32 35, float %9312, float %9315)  ; FMax(a,b)
  br label %9318

; <label>:9318                                    ; preds = %9303, %9279
  %9319 = phi float [ %9317, %9303 ], [ -1.000000e+00, %9279 ]
  %9320 = phi float [ %9316, %9303 ], [ -1.000000e+00, %9279 ]
  %9321 = phi i1 [ true, %9303 ], [ false, %9279 ]
  br i1 %9321, label %9322, label %9328

; <label>:9322                                    ; preds = %9318
  %9323 = call float @dx.op.binary.f32(i32 35, float %9267, float %9320)  ; FMax(a,b)
  %9324 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9281
  store float %9323, float* %9324, align 4, !tbaa !122, !noalias !137
  %9325 = call float @dx.op.binary.f32(i32 35, float %9267, float %9319)  ; FMax(a,b)
  %9326 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9281
  store float %9325, float* %9326, align 4, !tbaa !122, !noalias !137
  %9327 = add nsw i32 %9280, 1
  br label %9328

; <label>:9328                                    ; preds = %9322, %9318
  %9329 = phi i32 [ %9327, %9322 ], [ %9280, %9318 ]
  %9330 = add nuw nsw i32 %9281, 1
  %9331 = icmp eq i32 %9330, %9136
  br i1 %9331, label %9332, label %9279

; <label>:9332                                    ; preds = %9328
  %9333 = load float, float* %9273, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9334 = load float, float* %9272, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %9335 = load float, float* %9271, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %9336 = load float, float* %9276, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9337 = load float, float* %9275, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %9338 = load float, float* %9274, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %9339

; <label>:9339                                    ; preds = %9332, %9266
  %9340 = phi float [ -1.000000e+00, %9266 ], [ %9338, %9332 ]
  %9341 = phi float [ -1.000000e+00, %9266 ], [ %9337, %9332 ]
  %9342 = phi float [ -1.000000e+00, %9266 ], [ %9336, %9332 ]
  %9343 = phi float [ -1.000000e+00, %9266 ], [ %9335, %9332 ]
  %9344 = phi float [ -1.000000e+00, %9266 ], [ %9334, %9332 ]
  %9345 = phi float [ -1.000000e+00, %9266 ], [ %9333, %9332 ]
  %9346 = phi i32 [ 0, %9266 ], [ %9329, %9332 ]
  %9347 = call float @dx.op.binary.f32(i32 36, float %9344, float %9345)  ; FMin(a,b)
  %9348 = call float @dx.op.binary.f32(i32 36, float %9343, float %9347)  ; FMin(a,b)
  %9349 = call float @dx.op.binary.f32(i32 35, float %9343, float %9344)  ; FMax(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9349, float %9345)  ; FMin(a,b)
  %9351 = call float @dx.op.binary.f32(i32 36, float %9343, float %9344)  ; FMin(a,b)
  %9352 = call float @dx.op.binary.f32(i32 35, float %9351, float %9350)  ; FMax(a,b)
  %9353 = call float @dx.op.binary.f32(i32 35, float %9344, float %9345)  ; FMax(a,b)
  %9354 = call float @dx.op.binary.f32(i32 35, float %9343, float %9353)  ; FMax(a,b)
  store float %9348, float* %9271, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %9352, float* %9272, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %9354, float* %9273, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9355 = call float @dx.op.binary.f32(i32 36, float %9341, float %9342)  ; FMin(a,b)
  %9356 = call float @dx.op.binary.f32(i32 36, float %9340, float %9355)  ; FMin(a,b)
  %9357 = call float @dx.op.binary.f32(i32 35, float %9340, float %9341)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9357, float %9342)  ; FMin(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9340, float %9341)  ; FMin(a,b)
  %9360 = call float @dx.op.binary.f32(i32 35, float %9359, float %9358)  ; FMax(a,b)
  %9361 = call float @dx.op.binary.f32(i32 35, float %9341, float %9342)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 35, float %9340, float %9361)  ; FMax(a,b)
  store float %9356, float* %9274, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %9360, float* %9275, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %9362, float* %9276, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9363 = sub nsw i32 3, %9346
  %9364 = icmp sgt i32 %9363, 2
  br i1 %9364, label %9365, label %9403

; <label>:9365                                    ; preds = %9339
  %9366 = icmp eq i32 %9134, 0
  %9367 = fsub fast float %9184, %9268
  %9368 = select i1 %9366, float %9367, float %9268
  %9369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9369, 0
  %9371 = extractvalue %dx.types.CBufRet.f32 %9369, 1
  %9372 = extractvalue %dx.types.CBufRet.f32 %9369, 2
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = extractvalue %dx.types.CBufRet.f32 %9373, 3
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 3
  %9380 = call float @dx.op.binary.f32(i32 36, float %9269, float %9379)  ; FMin(a,b)
  %9381 = fmul fast float %9377, %9368
  %9382 = call float @dx.op.unary.f32(i32 7, float %9381)  ; Saturate(value)
  %9383 = fsub fast float %9374, %9370
  %9384 = fsub fast float %9375, %9371
  %9385 = fsub fast float %9376, %9372
  %9386 = fmul fast float %9382, %9383
  %9387 = fmul fast float %9382, %9384
  %9388 = fmul fast float %9382, %9385
  %9389 = fadd fast float %9386, %9370
  %9390 = fadd fast float %9387, %9371
  %9391 = fadd fast float %9388, %9372
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.CBufRet.f32 %9392, 1
  %9395 = fadd fast float %9394, %9393
  %9396 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9398 = extractvalue %dx.types.CBufRet.f32 %9392, 3
  %9399 = fadd fast float %9398, %9397
  %9400 = call float @dx.op.unary.f32(i32 7, float %9399)  ; Saturate(value)
  %9401 = fmul fast float %9396, %9380
  %9402 = fmul fast float %9401, %9400
  br label %9485

; <label>:9403                                    ; preds = %9339
  %9404 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9363
  %9405 = load float, float* %9404, align 4, !tbaa !122, !noalias !137
  %9406 = fcmp fast olt float %9405, %9270
  %9407 = icmp sgt i32 %9346, 0
  %9408 = and i1 %9407, %9406
  br i1 %9408, label %9409, label %9446

; <label>:9409                                    ; preds = %9403
  br label %9410

; <label>:9410                                    ; preds = %9439, %9409
  %9411 = phi float [ %9440, %9439 ], [ %9268, %9409 ]
  %9412 = phi float [ %9441, %9439 ], [ %9269, %9409 ]
  %9413 = phi float [ %9421, %9439 ], [ %9405, %9409 ]
  %9414 = phi i32 [ %9418, %9439 ], [ %9363, %9409 ]
  %9415 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9414
  %9416 = load float, float* %9415, align 4, !tbaa !122, !noalias !137
  %9417 = icmp slt i32 %9414, 2
  %9418 = add nsw i32 %9414, 1
  %9419 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9418
  %9420 = load float, float* %9419, align 4, !tbaa !122, !noalias !137
  %9421 = select i1 %9417, float %9420, float %9184
  %9422 = call float @dx.op.binary.f32(i32 36, float %9421, float %9416)  ; FMin(a,b)
  %9423 = call float @dx.op.binary.f32(i32 36, float %9270, float %9422)  ; FMin(a,b)
  %9424 = icmp eq i32 %9134, 0
  %9425 = fadd fast float %9423, %9413
  %9426 = fmul fast float %9425, %9115
  %9427 = fadd fast float %9426, %9128
  br i1 %9424, label %9433, label %9428

; <label>:9428                                    ; preds = %9410
  %9429 = fsub fast float %9423, %9413
  %9430 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9429)  ; FMax(a,b)
  %9431 = fmul fast float %9430, %9427
  %9432 = fadd fast float %9431, %9412
  br label %9439

; <label>:9433                                    ; preds = %9410
  %9434 = fsub fast float %9413, %9423
  %9435 = call float @dx.op.unary.f32(i32 6, float %9434)  ; FAbs(value)
  %9436 = fadd fast float %9435, %9411
  %9437 = fmul fast float %9435, %9427
  %9438 = fsub fast float %9412, %9437
  br label %9439

; <label>:9439                                    ; preds = %9433, %9428
  %9440 = phi float [ %9430, %9428 ], [ %9436, %9433 ]
  %9441 = phi float [ %9432, %9428 ], [ %9438, %9433 ]
  %9442 = fcmp fast olt float %9421, %9270
  %9443 = icmp slt i32 %9418, 3
  %9444 = and i1 %9443, %9442
  br i1 %9444, label %9410, label %9445

; <label>:9445                                    ; preds = %9439
  br label %9446

; <label>:9446                                    ; preds = %9445, %9403
  %9447 = phi float [ %9268, %9403 ], [ %9440, %9445 ]
  %9448 = phi float [ %9269, %9403 ], [ %9441, %9445 ]
  %9449 = fsub fast float %9184, %9447
  %9450 = select i1 %9186, float %9447, float %9449
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.CBufRet.f32 %9455, 2
  %9459 = extractvalue %dx.types.CBufRet.f32 %9455, 3
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 3
  %9462 = call float @dx.op.binary.f32(i32 36, float %9448, float %9461)  ; FMin(a,b)
  %9463 = fmul fast float %9459, %9450
  %9464 = call float @dx.op.unary.f32(i32 7, float %9463)  ; Saturate(value)
  %9465 = fsub fast float %9456, %9452
  %9466 = fsub fast float %9457, %9453
  %9467 = fsub fast float %9458, %9454
  %9468 = fmul fast float %9464, %9465
  %9469 = fmul fast float %9464, %9466
  %9470 = fmul fast float %9464, %9467
  %9471 = fadd fast float %9468, %9452
  %9472 = fadd fast float %9469, %9453
  %9473 = fadd fast float %9470, %9454
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 0
  %9476 = extractvalue %dx.types.CBufRet.f32 %9474, 1
  %9477 = fadd fast float %9476, %9475
  %9478 = call float @dx.op.unary.f32(i32 7, float %9477)  ; Saturate(value)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9474, 2
  %9480 = extractvalue %dx.types.CBufRet.f32 %9474, 3
  %9481 = fadd fast float %9480, %9479
  %9482 = call float @dx.op.unary.f32(i32 7, float %9481)  ; Saturate(value)
  %9483 = fmul fast float %9478, %9462
  %9484 = fmul fast float %9483, %9482
  br label %9485

; <label>:9485                                    ; preds = %9446, %9365, %9200, %9182, %9180
  %9486 = phi float [ %9209, %9200 ], [ %9368, %9365 ], [ %9450, %9446 ], [ 0.000000e+00, %9180 ], [ 0.000000e+00, %9182 ]
  %9487 = phi float [ %9243, %9200 ], [ %9402, %9365 ], [ %9484, %9446 ], [ 0.000000e+00, %9180 ], [ 0.000000e+00, %9182 ]
  %9488 = phi float [ %9230, %9200 ], [ %9389, %9365 ], [ %9471, %9446 ], [ 0.000000e+00, %9180 ], [ 0.000000e+00, %9182 ]
  %9489 = phi float [ %9231, %9200 ], [ %9390, %9365 ], [ %9472, %9446 ], [ 0.000000e+00, %9180 ], [ 0.000000e+00, %9182 ]
  %9490 = phi float [ %9232, %9200 ], [ %9391, %9365 ], [ %9473, %9446 ], [ 0.000000e+00, %9180 ], [ 0.000000e+00, %9182 ]
  %9491 = fmul fast float %9123, %9487
  %9492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9493 = extractvalue %dx.types.CBufRet.f32 %9492, 2
  %9494 = fsub fast float %9130, %9493
  %9495 = fcmp fast olt float %9491, -2.000000e+01
  %9496 = call float @dx.op.unary.f32(i32 21, float %9491)  ; Exp(value)
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 3
  %9500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9501 = extractvalue %dx.types.CBufRet.f32 %9500, 2
  %9502 = fmul fast float %9499, %9494
  %9503 = call float @dx.op.unary.f32(i32 7, float %9502)  ; Saturate(value)
  %9504 = fsub fast float 1.000000e+00, %9503
  %9505 = fmul fast float %9115, 5.000000e-01
  %9506 = fadd fast float %9505, 5.000000e-01
  %9507 = call float @dx.op.unary.f32(i32 7, float %9506)  ; Saturate(value)
  %9508 = fsub fast float 1.000000e+00, %9507
  %9509 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9504)  ; FMax(a,b)
  %9510 = fdiv fast float %9508, %9509
  %9511 = fsub fast float %9494, %9072
  %9512 = call float @dx.op.unary.f32(i32 6, float %9511)  ; FAbs(value)
  %9513 = fmul fast float %9512, %9498
  %9514 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9515 = fsub fast float 1.000000e+00, %9513
  %9516 = fmul fast float %9515, %9514
  %9517 = fadd fast float %9516, %9513
  %9518 = fmul fast float %9501, %9494
  %9519 = call float @dx.op.unary.f32(i32 7, float %9518)  ; Saturate(value)
  %9520 = fsub fast float 1.000000e+00, %9517
  %9521 = fmul fast float %9520, %9519
  %9522 = fadd fast float %9521, %9517
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fadd fast float %9496, -1.000000e+00
  %9525 = select i1 %9495, float -1.000000e+00, float %9524
  %9526 = fmul fast float %9523, %9525
  %9527 = fadd fast float %9526, 1.000000e+00
  %9528 = fsub fast float -0.000000e+00, %9526
  %9529 = fmul fast float %9488, %9528
  %9530 = fmul fast float %9489, %9528
  %9531 = fmul fast float %9490, %9528
  br label %9532

; <label>:9532                                    ; preds = %9485, %9081
  %9533 = phi float [ %9486, %9485 ], [ 0.000000e+00, %9081 ]
  %9534 = phi float [ %9527, %9485 ], [ 1.000000e+00, %9081 ]
  %9535 = phi float [ %9529, %9485 ], [ 0.000000e+00, %9081 ]
  %9536 = phi float [ %9530, %9485 ], [ 0.000000e+00, %9081 ]
  %9537 = phi float [ %9531, %9485 ], [ 0.000000e+00, %9081 ]
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9540 = fsub fast float 1.000000e+00, %9534
  %9541 = fmul fast float %9540, %9116
  %9542 = fmul fast float %9541, %9539
  %9543 = fsub fast float %9116, %9542
  br i1 %9109, label %9544, label %9573, !dx.controlflow.hints !173

; <label>:9544                                    ; preds = %9532
  %9545 = fmul fast float %9117, %9106
  %9546 = fadd fast float %9545, %9107
  %9547 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9548 = fmul fast float %9088, %9543
  %9549 = fsub fast float -0.000000e+00, %9548
  %9550 = fmul fast float %9089, %9543
  %9551 = fsub fast float -0.000000e+00, %9550
  %9552 = call float @dx.op.unary.f32(i32 21, float %9549)  ; Exp(value)
  %9553 = call float @dx.op.unary.f32(i32 21, float %9551)  ; Exp(value)
  %9554 = call float @dx.op.binary.f32(i32 35, float %9096, float %9552)  ; FMax(a,b)
  %9555 = call float @dx.op.binary.f32(i32 35, float %9096, float %9553)  ; FMax(a,b)
  %9556 = fsub fast float %9555, %9554
  %9557 = fmul fast float %9556, %9547
  %9558 = fadd fast float %9557, %9554
  %9559 = call float @dx.op.unary.f32(i32 7, float %9558)  ; Saturate(value)
  %9560 = fsub fast float %9093, %9098
  %9561 = fsub fast float %9094, %9099
  %9562 = fsub fast float %9095, %9100
  %9563 = fmul fast float %9547, %9560
  %9564 = fmul fast float %9547, %9561
  %9565 = fmul fast float %9547, %9562
  %9566 = fadd fast float %9563, %9098
  %9567 = fadd fast float %9564, %9099
  %9568 = fadd fast float %9565, %9100
  %9569 = fsub fast float 1.000000e+00, %9559
  %9570 = fmul fast float %9569, %9566
  %9571 = fmul fast float %9569, %9567
  %9572 = fmul fast float %9569, %9568
  br label %9632

; <label>:9573                                    ; preds = %9532
  %9574 = fmul fast float %9543, %9105
  %9575 = call float @dx.op.unary.f32(i32 7, float %9574)  ; Saturate(value)
  %9576 = fsub fast float 2.000000e+00, %9575
  %9577 = fmul fast float %9575, 9.921875e-01
  %9578 = fmul fast float %9577, %9576
  %9579 = fadd fast float %9578, 3.906250e-03
  %9580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9579, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9581 = extractvalue %dx.types.ResRet.f32 %9580, 0
  %9582 = fsub fast float %9575, %9581
  %9583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9582)  ; FMax(a,b)
  %9584 = fmul fast float %9091, %9072
  %9585 = call float @dx.op.unary.f32(i32 6, float %9584)  ; FAbs(value)
  %9586 = fcmp fast ogt float %9585, 0x3EB0C6F7A0000000
  br i1 %9586, label %9587, label %9593, !dx.controlflow.hints !174

; <label>:9587                                    ; preds = %9573
  %9588 = fmul fast float %9584, 0xBFF7154760000000
  %9589 = call float @dx.op.unary.f32(i32 21, float %9588)  ; Exp(value)
  %9590 = fsub fast float 1.000000e+00, %9589
  %9591 = fdiv fast float %9590, %9584
  %9592 = fmul fast float %9591, %9101
  br label %9593

; <label>:9593                                    ; preds = %9587, %9573
  %9594 = phi float [ %9592, %9587 ], [ %9101, %9573 ]
  %9595 = fadd fast float %9594, %9103
  %9596 = fmul fast float %9595, %9583
  %9597 = fmul fast float %9088, %9596
  %9598 = fsub fast float -0.000000e+00, %9597
  %9599 = fmul fast float %9089, %9596
  %9600 = fsub fast float -0.000000e+00, %9599
  %9601 = fmul fast float %9090, %9596
  %9602 = fsub fast float -0.000000e+00, %9601
  %9603 = call float @dx.op.unary.f32(i32 21, float %9598)  ; Exp(value)
  %9604 = call float @dx.op.unary.f32(i32 21, float %9600)  ; Exp(value)
  %9605 = call float @dx.op.unary.f32(i32 21, float %9602)  ; Exp(value)
  %9606 = fmul fast float %9117, %9117
  %9607 = fadd fast float %9606, 1.000000e+00
  %9608 = fmul fast float %9607, 0x3FAE8EC8A0000000
  %9609 = fmul fast float %9608, %9098
  %9610 = fmul fast float %9608, %9099
  %9611 = fmul fast float %9608, %9100
  %9612 = fmul fast float %9117, %9096
  %9613 = fsub fast float 1.000000e+00, %9612
  %9614 = fmul fast float %9096, %9096
  %9615 = fsub fast float 1.000000e+00, %9614
  %9616 = fmul fast float %9615, 0x3FB45F3060000000
  %9617 = fmul fast float %9613, %9613
  %9618 = fdiv fast float 1.000000e+00, %9617
  %9619 = fmul fast float %9616, %9618
  %9620 = fmul fast float %9619, %9093
  %9621 = fmul fast float %9619, %9094
  %9622 = fmul fast float %9619, %9095
  %9623 = fadd fast float %9620, %9609
  %9624 = fadd fast float %9621, %9610
  %9625 = fadd fast float %9622, %9611
  %9626 = fsub fast float 1.000000e+00, %9603
  %9627 = fsub fast float 1.000000e+00, %9604
  %9628 = fsub fast float 1.000000e+00, %9605
  %9629 = fmul fast float %9623, %9626
  %9630 = fmul fast float %9624, %9627
  %9631 = fmul fast float %9625, %9628
  br label %9632

; <label>:9632                                    ; preds = %9593, %9544
  %9633 = phi float [ %9570, %9544 ], [ %9629, %9593 ]
  %9634 = phi float [ %9571, %9544 ], [ %9630, %9593 ]
  %9635 = phi float [ %9572, %9544 ], [ %9631, %9593 ]
  %9636 = phi float [ %9559, %9544 ], [ %9603, %9593 ]
  %9637 = phi float [ %9559, %9544 ], [ %9604, %9593 ]
  %9638 = phi float [ %9559, %9544 ], [ %9605, %9593 ]
  br i1 %9125, label %9639, label %9837, !dx.controlflow.hints !175

; <label>:9639                                    ; preds = %9632
  %9640 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9641 = fmul fast float %9640, %9540
  %9642 = fsub fast float %9535, %9633
  %9643 = fsub fast float %9536, %9634
  %9644 = fsub fast float %9537, %9635
  %9645 = fmul fast float %9641, %9642
  %9646 = fmul fast float %9641, %9643
  %9647 = fmul fast float %9641, %9644
  %9648 = fadd fast float %9645, %9633
  %9649 = fadd fast float %9646, %9634
  %9650 = fadd fast float %9647, %9635
  %9651 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9636)  ; FMax(a,b)
  %9652 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9637)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9638)  ; FMax(a,b)
  %9654 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9534)  ; FMax(a,b)
  %9655 = call float @dx.op.binary.f32(i32 35, float %9533, float %9543)  ; FMax(a,b)
  %9656 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9655)  ; FMax(a,b)
  %9657 = fdiv fast float %9533, %9656
  %9658 = call float @dx.op.unary.f32(i32 7, float %9657)  ; Saturate(value)
  %9659 = fdiv fast float %9543, %9656
  %9660 = call float @dx.op.unary.f32(i32 7, float %9659)  ; Saturate(value)
  %9661 = fcmp fast une float %9654, 1.000000e+00
  br i1 %9661, label %9662, label %9675, !dx.controlflow.hints !176

; <label>:9662                                    ; preds = %9639
  %9663 = call float @dx.op.unary.f32(i32 23, float %9654)  ; Log(value)
  %9664 = fmul fast float %9663, 0x3FE62E4300000000
  %9665 = fmul fast float %9535, %9664
  %9666 = fsub fast float -0.000000e+00, %9665
  %9667 = fmul fast float %9536, %9664
  %9668 = fsub fast float -0.000000e+00, %9667
  %9669 = fmul fast float %9537, %9664
  %9670 = fsub fast float -0.000000e+00, %9669
  %9671 = fsub fast float 1.000000e+00, %9654
  %9672 = fdiv fast float %9666, %9671
  %9673 = fdiv fast float %9668, %9671
  %9674 = fdiv fast float %9670, %9671
  br label %9675

; <label>:9675                                    ; preds = %9662, %9639
  %9676 = phi float [ %9672, %9662 ], [ %9535, %9639 ]
  %9677 = phi float [ %9673, %9662 ], [ %9536, %9639 ]
  %9678 = phi float [ %9674, %9662 ], [ %9537, %9639 ]
  %9679 = phi float [ %9664, %9662 ], [ 0.000000e+00, %9639 ]
  %9680 = fcmp fast une float %9651, 1.000000e+00
  br i1 %9680, label %9681, label %9688, !dx.controlflow.hints !177

; <label>:9681                                    ; preds = %9675
  %9682 = call float @dx.op.unary.f32(i32 23, float %9651)  ; Log(value)
  %9683 = fmul fast float %9682, 0x3FE62E4300000000
  %9684 = fmul fast float %9648, %9683
  %9685 = fsub fast float -0.000000e+00, %9684
  %9686 = fsub fast float 1.000000e+00, %9651
  %9687 = fdiv fast float %9685, %9686
  br label %9688

; <label>:9688                                    ; preds = %9681, %9675
  %9689 = phi float [ %9687, %9681 ], [ %9648, %9675 ]
  %9690 = phi float [ %9683, %9681 ], [ 0.000000e+00, %9675 ]
  %9691 = fcmp fast une float %9652, 1.000000e+00
  br i1 %9691, label %9692, label %9699, !dx.controlflow.hints !177

; <label>:9692                                    ; preds = %9688
  %9693 = call float @dx.op.unary.f32(i32 23, float %9652)  ; Log(value)
  %9694 = fmul fast float %9693, 0x3FE62E4300000000
  %9695 = fmul fast float %9649, %9694
  %9696 = fsub fast float -0.000000e+00, %9695
  %9697 = fsub fast float 1.000000e+00, %9652
  %9698 = fdiv fast float %9696, %9697
  br label %9699

; <label>:9699                                    ; preds = %9692, %9688
  %9700 = phi float [ %9698, %9692 ], [ %9649, %9688 ]
  %9701 = phi float [ %9694, %9692 ], [ 0.000000e+00, %9688 ]
  %9702 = fcmp fast une float %9653, 1.000000e+00
  br i1 %9702, label %9703, label %9710, !dx.controlflow.hints !177

; <label>:9703                                    ; preds = %9699
  %9704 = call float @dx.op.unary.f32(i32 23, float %9653)  ; Log(value)
  %9705 = fmul fast float %9704, 0x3FE62E4300000000
  %9706 = fmul fast float %9650, %9705
  %9707 = fsub fast float -0.000000e+00, %9706
  %9708 = fsub fast float 1.000000e+00, %9653
  %9709 = fdiv fast float %9707, %9708
  br label %9710

; <label>:9710                                    ; preds = %9703, %9699
  %9711 = phi float [ %9709, %9703 ], [ %9650, %9699 ]
  %9712 = phi float [ %9705, %9703 ], [ 0.000000e+00, %9699 ]
  %9713 = fmul fast float %9676, %9660
  %9714 = fmul fast float %9677, %9660
  %9715 = fmul fast float %9678, %9660
  %9716 = fmul fast float %9679, %9660
  %9717 = fmul fast float %9689, %9658
  %9718 = fmul fast float %9700, %9658
  %9719 = fmul fast float %9711, %9658
  %9720 = fmul fast float %9690, %9658
  %9721 = fmul fast float %9701, %9658
  %9722 = fmul fast float %9712, %9658
  %9723 = fadd fast float %9717, %9713
  %9724 = fadd fast float %9718, %9714
  %9725 = fadd fast float %9719, %9715
  %9726 = fadd fast float %9720, %9716
  %9727 = fadd fast float %9721, %9716
  %9728 = fadd fast float %9722, %9716
  %9729 = fcmp fast une float %9726, 0.000000e+00
  br i1 %9729, label %9730, label %9737, !dx.controlflow.hints !178

; <label>:9730                                    ; preds = %9710
  %9731 = fmul fast float %9726, 0x3FF7154760000000
  %9732 = call float @dx.op.unary.f32(i32 21, float %9731)  ; Exp(value)
  %9733 = fsub fast float 1.000000e+00, %9732
  %9734 = fmul fast float %9723, %9733
  %9735 = fsub fast float -0.000000e+00, %9734
  %9736 = fdiv fast float %9735, %9726
  br label %9737

; <label>:9737                                    ; preds = %9730, %9710
  %9738 = phi float [ %9732, %9730 ], [ 1.000000e+00, %9710 ]
  %9739 = phi float [ %9736, %9730 ], [ %9723, %9710 ]
  %9740 = fcmp fast une float %9727, 0.000000e+00
  br i1 %9740, label %9741, label %9748, !dx.controlflow.hints !178

; <label>:9741                                    ; preds = %9737
  %9742 = fmul fast float %9727, 0x3FF7154760000000
  %9743 = call float @dx.op.unary.f32(i32 21, float %9742)  ; Exp(value)
  %9744 = fsub fast float 1.000000e+00, %9743
  %9745 = fmul fast float %9724, %9744
  %9746 = fsub fast float -0.000000e+00, %9745
  %9747 = fdiv fast float %9746, %9727
  br label %9748

; <label>:9748                                    ; preds = %9741, %9737
  %9749 = phi float [ %9743, %9741 ], [ 1.000000e+00, %9737 ]
  %9750 = phi float [ %9747, %9741 ], [ %9724, %9737 ]
  %9751 = fcmp fast une float %9728, 0.000000e+00
  br i1 %9751, label %9752, label %9759, !dx.controlflow.hints !178

; <label>:9752                                    ; preds = %9748
  %9753 = fmul fast float %9728, 0x3FF7154760000000
  %9754 = call float @dx.op.unary.f32(i32 21, float %9753)  ; Exp(value)
  %9755 = fsub fast float 1.000000e+00, %9754
  %9756 = fmul fast float %9725, %9755
  %9757 = fsub fast float -0.000000e+00, %9756
  %9758 = fdiv fast float %9757, %9728
  br label %9759

; <label>:9759                                    ; preds = %9752, %9748
  %9760 = phi float [ %9754, %9752 ], [ 1.000000e+00, %9748 ]
  %9761 = phi float [ %9758, %9752 ], [ %9725, %9748 ]
  %9762 = fcmp fast ogt float %9658, %9660
  br i1 %9762, label %9763, label %9783

; <label>:9763                                    ; preds = %9759
  %9764 = fsub fast float 1.000000e+00, %9660
  %9765 = fmul fast float %9676, %9764
  %9766 = fmul fast float %9677, %9764
  %9767 = fmul fast float %9678, %9764
  %9768 = fmul fast float %9679, %9764
  %9769 = fcmp fast une float %9768, 0.000000e+00
  br i1 %9769, label %9770, label %9821, !dx.controlflow.hints !179

; <label>:9770                                    ; preds = %9763
  %9771 = fmul fast float %9768, 0x3FF7154760000000
  %9772 = call float @dx.op.unary.f32(i32 21, float %9771)  ; Exp(value)
  %9773 = fsub fast float 1.000000e+00, %9772
  %9774 = fmul fast float %9765, %9773
  %9775 = fsub fast float -0.000000e+00, %9774
  %9776 = fmul fast float %9766, %9773
  %9777 = fsub fast float -0.000000e+00, %9776
  %9778 = fmul fast float %9767, %9773
  %9779 = fsub fast float -0.000000e+00, %9778
  %9780 = fdiv fast float %9775, %9768
  %9781 = fdiv fast float %9777, %9768
  %9782 = fdiv fast float %9779, %9768
  br label %9821

; <label>:9783                                    ; preds = %9759
  %9784 = fsub fast float 1.000000e+00, %9658
  %9785 = fmul fast float %9689, %9784
  %9786 = fmul fast float %9700, %9784
  %9787 = fmul fast float %9711, %9784
  %9788 = fmul fast float %9690, %9784
  %9789 = fmul fast float %9701, %9784
  %9790 = fmul fast float %9712, %9784
  %9791 = fcmp fast une float %9788, 0.000000e+00
  br i1 %9791, label %9792, label %9799, !dx.controlflow.hints !178

; <label>:9792                                    ; preds = %9783
  %9793 = fmul fast float %9788, 0x3FF7154760000000
  %9794 = call float @dx.op.unary.f32(i32 21, float %9793)  ; Exp(value)
  %9795 = fsub fast float 1.000000e+00, %9794
  %9796 = fmul fast float %9785, %9795
  %9797 = fsub fast float -0.000000e+00, %9796
  %9798 = fdiv fast float %9797, %9788
  br label %9799

; <label>:9799                                    ; preds = %9792, %9783
  %9800 = phi float [ %9798, %9792 ], [ %9785, %9783 ]
  %9801 = phi float [ %9794, %9792 ], [ 1.000000e+00, %9783 ]
  %9802 = fcmp fast une float %9789, 0.000000e+00
  br i1 %9802, label %9803, label %9810, !dx.controlflow.hints !178

; <label>:9803                                    ; preds = %9799
  %9804 = fmul fast float %9789, 0x3FF7154760000000
  %9805 = call float @dx.op.unary.f32(i32 21, float %9804)  ; Exp(value)
  %9806 = fsub fast float 1.000000e+00, %9805
  %9807 = fmul fast float %9786, %9806
  %9808 = fsub fast float -0.000000e+00, %9807
  %9809 = fdiv fast float %9808, %9789
  br label %9810

; <label>:9810                                    ; preds = %9803, %9799
  %9811 = phi float [ %9809, %9803 ], [ %9786, %9799 ]
  %9812 = phi float [ %9805, %9803 ], [ 1.000000e+00, %9799 ]
  %9813 = fcmp fast une float %9790, 0.000000e+00
  br i1 %9813, label %9814, label %9821, !dx.controlflow.hints !178

; <label>:9814                                    ; preds = %9810
  %9815 = fmul fast float %9790, 0x3FF7154760000000
  %9816 = call float @dx.op.unary.f32(i32 21, float %9815)  ; Exp(value)
  %9817 = fsub fast float 1.000000e+00, %9816
  %9818 = fmul fast float %9787, %9817
  %9819 = fsub fast float -0.000000e+00, %9818
  %9820 = fdiv fast float %9819, %9790
  br label %9821

; <label>:9821                                    ; preds = %9814, %9810, %9770, %9763
  %9822 = phi float [ %9820, %9814 ], [ %9782, %9770 ], [ %9767, %9763 ], [ %9787, %9810 ]
  %9823 = phi float [ %9811, %9814 ], [ %9781, %9770 ], [ %9766, %9763 ], [ %9811, %9810 ]
  %9824 = phi float [ %9800, %9814 ], [ %9780, %9770 ], [ %9765, %9763 ], [ %9800, %9810 ]
  %9825 = phi float [ %9816, %9814 ], [ %9772, %9770 ], [ 1.000000e+00, %9763 ], [ 1.000000e+00, %9810 ]
  %9826 = phi float [ %9812, %9814 ], [ %9772, %9770 ], [ 1.000000e+00, %9763 ], [ %9812, %9810 ]
  %9827 = phi float [ %9801, %9814 ], [ %9772, %9770 ], [ 1.000000e+00, %9763 ], [ %9801, %9810 ]
  %9828 = fmul fast float %9827, %9739
  %9829 = fmul fast float %9826, %9750
  %9830 = fmul fast float %9825, %9761
  %9831 = fadd fast float %9828, %9824
  %9832 = fadd fast float %9829, %9823
  %9833 = fadd fast float %9830, %9822
  %9834 = fmul fast float %9827, %9738
  %9835 = fmul fast float %9826, %9749
  %9836 = fmul fast float %9825, %9760
  br label %9837

; <label>:9837                                    ; preds = %9821, %9632
  %9838 = phi float [ %9836, %9821 ], [ %9638, %9632 ]
  %9839 = phi float [ %9835, %9821 ], [ %9637, %9632 ]
  %9840 = phi float [ %9834, %9821 ], [ %9636, %9632 ]
  %9841 = phi float [ %9833, %9821 ], [ %9635, %9632 ]
  %9842 = phi float [ %9832, %9821 ], [ %9634, %9632 ]
  %9843 = phi float [ %9831, %9821 ], [ %9633, %9632 ]
  %9844 = fmul fast float %9843, %8789
  %9845 = fmul fast float %9842, %8789
  %9846 = fmul fast float %9841, %8789
  %9847 = fmul fast float %9840, %9080
  %9848 = call float @dx.op.dot3.f32(i32 55, float %9840, float %9839, float %9838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9849 = call float @dx.op.dot3.f32(i32 55, float %9844, float %9845, float %9846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9850 = select i1 %260, float %9848, float %9840
  %9851 = select i1 %260, float %9848, float %9839
  %9852 = select i1 %260, float 1.000000e+00, float %9838
  %9853 = select i1 %260, float %9849, float %9844
  %9854 = select i1 %260, float 0.000000e+00, float %9845
  %9855 = select i1 %260, float 0.000000e+00, float %9846
  %9856 = fmul fast float %9850, %9074
  %9857 = fmul fast float %9851, %9075
  %9858 = fmul fast float %9852, %9076
  %9859 = fadd fast float %9856, %9853
  %9860 = fadd fast float %9857, %9854
  %9861 = fadd fast float %9855, %9858
  %9862 = fmul fast float %9850, %9077
  %9863 = fmul fast float %9851, %9078
  %9864 = fmul fast float %9852, %9079
  %9865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9866 = extractvalue %dx.types.CBufRet.i32 %9865, 0
  %9867 = icmp eq i32 %9866, 0
  br i1 %9867, label %10235, label %9868, !dx.controlflow.hints !180

; <label>:9868                                    ; preds = %9837
  %9869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9870 = extractvalue %dx.types.CBufRet.f32 %9869, 2
  %9871 = extractvalue %dx.types.CBufRet.f32 %9869, 3
  %9872 = fmul fast float %9870, %114
  %9873 = fmul fast float %9871, %115
  %9874 = fmul fast float %9872, 2.000000e+00
  %9875 = fmul fast float %9873, 2.000000e+00
  %9876 = fsub fast float 1.000000e+00, %9874
  %9877 = fsub fast float 1.000000e+00, %9875
  %9878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9879 = extractvalue %dx.types.CBufRet.f32 %9878, 0
  %9880 = extractvalue %dx.types.CBufRet.f32 %9878, 1
  %9881 = extractvalue %dx.types.CBufRet.f32 %9878, 2
  %9882 = fmul fast float %9876, %9879
  %9883 = fmul fast float %9876, %9880
  %9884 = fmul fast float %9876, %9881
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 0
  %9887 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9888 = extractvalue %dx.types.CBufRet.f32 %9885, 2
  %9889 = fmul fast float %9877, %9886
  %9890 = fmul fast float %9877, %9887
  %9891 = fmul fast float %9877, %9888
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9895 = extractvalue %dx.types.CBufRet.f32 %9892, 2
  %9896 = fadd fast float %9889, %9893
  %9897 = fadd fast float %9896, %9882
  %9898 = fadd fast float %9890, %9894
  %9899 = fadd fast float %9898, %9883
  %9900 = fadd fast float %9891, %9895
  %9901 = fadd fast float %9900, %9884
  %9902 = fmul fast float %9897, %9073
  %9903 = fmul fast float %9899, %9073
  %9904 = fmul fast float %9901, %9073
  %9905 = fmul fast float %9902, %9902
  %9906 = fmul fast float %9903, %9903
  %9907 = fadd fast float %9905, %9906
  %9908 = fmul fast float %9904, %9904
  %9909 = fadd fast float %9907, %9908
  %9910 = call float @dx.op.unary.f32(i32 24, float %9909)  ; Sqrt(value)
  %9911 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %9912 = fsub fast float %9910, %9911
  %9913 = extractvalue %dx.types.CBufRet.f32 %8800, 2
  %9914 = fmul fast float %9912, %9913
  %9915 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9916 = fadd fast float %9915, -5.000000e-01
  %9917 = fmul fast float %9916, 2.000000e+00
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 2
  %9920 = call float @dx.op.binary.f32(i32 36, float %9919, float %9917)  ; FMin(a,b)
  %9921 = fsub fast float -0.000000e+00, %9919
  %9922 = fcmp fast ogt float %9920, %9921
  br i1 %9922, label %9923, label %10235, !dx.controlflow.hints !181

; <label>:9923                                    ; preds = %9868
  %9924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9925 = extractvalue %dx.types.CBufRet.f32 %9924, 3
  %9926 = fcmp fast ogt float %9925, 0.000000e+00
  br i1 %9926, label %9927, label %10002, !dx.controlflow.hints !182

; <label>:9927                                    ; preds = %9923
  %9928 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9929 = extractvalue %dx.types.Dimensions %9928, 0
  %9930 = sitofp i32 %9929 to float
  %9931 = extractvalue %dx.types.Dimensions %9928, 1
  %9932 = sitofp i32 %9931 to float
  %9933 = fmul fast float %9872, %9930
  %9934 = fmul fast float %9873, %9932
  %9935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9936 = extractvalue %dx.types.CBufRet.f32 %9935, 1
  %9937 = fsub fast float -0.000000e+00, %9936
  %9938 = fptoui float %9937 to i32
  %9939 = fptoui float %9933 to i32
  %9940 = fptoui float %9934 to i32
  %9941 = and i32 %9938, 31
  %9942 = lshr i32 %9939, %9941
  %9943 = lshr i32 %9940, %9941
  %9944 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9938, i32 %9942, i32 %9943, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9945 = extractvalue %dx.types.ResRet.f32 %9944, 0
  %9946 = fcmp fast olt float %9945, -1.000000e+00
  %9947 = fcmp fast ogt float %9945, -1.000000e+00
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 1
  %9950 = select i1 %9947, float %9949, float 1.000000e+00
  %9951 = fadd fast float %9945, 1.000000e+00
  %9952 = fmul fast float %9950, %9951
  %9953 = call float @dx.op.unary.f32(i32 6, float %9952)  ; FAbs(value)
  %9954 = extractvalue %dx.types.CBufRet.f32 %9948, 3
  %9955 = fcmp fast oge float %9953, %9954
  %9956 = select i1 %9955, float 0x4197782600000000, float %9953
  %9957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9958 = extractvalue %dx.types.CBufRet.f32 %9957, 0
  %9959 = extractvalue %dx.types.CBufRet.f32 %9957, 1
  %9960 = extractvalue %dx.types.CBufRet.f32 %9957, 2
  %9961 = select i1 %9946, float %9958, float %9879
  %9962 = select i1 %9946, float %9959, float %9880
  %9963 = select i1 %9946, float %9960, float %9881
  %9964 = fmul fast float %9961, %9876
  %9965 = fmul fast float %9962, %9876
  %9966 = fmul fast float %9963, %9876
  %9967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9968 = extractvalue %dx.types.CBufRet.f32 %9967, 0
  %9969 = extractvalue %dx.types.CBufRet.f32 %9967, 1
  %9970 = extractvalue %dx.types.CBufRet.f32 %9967, 2
  %9971 = select i1 %9946, float %9968, float %9886
  %9972 = select i1 %9946, float %9969, float %9887
  %9973 = select i1 %9946, float %9970, float %9888
  %9974 = fmul fast float %9971, %9877
  %9975 = fmul fast float %9972, %9877
  %9976 = fmul fast float %9973, %9877
  %9977 = fadd fast float %9974, %9964
  %9978 = fadd fast float %9975, %9965
  %9979 = fadd fast float %9976, %9966
  %9980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9981 = extractvalue %dx.types.CBufRet.f32 %9980, 0
  %9982 = extractvalue %dx.types.CBufRet.f32 %9980, 1
  %9983 = extractvalue %dx.types.CBufRet.f32 %9980, 2
  %9984 = select i1 %9946, float %9981, float %9893
  %9985 = select i1 %9946, float %9982, float %9894
  %9986 = select i1 %9946, float %9983, float %9895
  %9987 = fadd fast float %9977, %9984
  %9988 = fadd fast float %9978, %9985
  %9989 = fadd fast float %9979, %9986
  %9990 = fmul fast float %9987, %9956
  %9991 = fmul fast float %9988, %9956
  %9992 = fmul fast float %9989, %9956
  %9993 = fmul fast float %9990, %9990
  %9994 = fmul fast float %9991, %9991
  %9995 = fadd fast float %9993, %9994
  %9996 = fmul fast float %9992, %9992
  %9997 = fadd fast float %9995, %9996
  %9998 = call float @dx.op.unary.f32(i32 24, float %9997)  ; Sqrt(value)
  %9999 = fsub fast float %9998, %9911
  %10000 = fmul fast float %9999, %9913
  %10001 = call float @dx.op.unary.f32(i32 7, float %10000)  ; Saturate(value)
  br label %10002

; <label>:10002                                   ; preds = %9927, %9923
  %10003 = phi float [ %10001, %9927 ], [ 1.000000e+00, %9923 ]
  %10004 = fmul fast float %9920, 5.000000e-01
  %10005 = fadd fast float %10004, 5.000000e-01
  %10006 = call float @dx.op.unary.f32(i32 22, float %10005)  ; Frc(value)
  %10007 = call float @dx.op.unary.f32(i32 27, float %10006)  ; Round_ni(value)
  %10008 = call float @dx.op.unary.f32(i32 22, float %10006)  ; Frc(value)
  %10009 = fmul fast float %10008, 2.000000e+00
  %10010 = fadd fast float %10009, -1.000000e+00
  %10011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9872, float %9873, float %10007, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10012 = extractvalue %dx.types.ResRet.f32 %10011, 0
  %10013 = extractvalue %dx.types.ResRet.f32 %10011, 1
  %10014 = extractvalue %dx.types.ResRet.f32 %10011, 2
  %10015 = extractvalue %dx.types.ResRet.f32 %10011, 3
  %10016 = fadd fast float %10012, -5.000000e-01
  %10017 = fadd fast float %10014, -5.000000e-01
  %10018 = fmul fast float %10016, 0xBFD5555560000000
  %10019 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10017, float %10018)  ; FMad(a,b,c)
  %10020 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10013, float 0.000000e+00)  ; FMad(a,b,c)
  %10021 = fadd fast float %10020, %10015
  %10022 = fmul fast float %10016, -7.500000e-01
  %10023 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10017, float %10022)  ; FMad(a,b,c)
  %10024 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10013, float 0.000000e+00)  ; FMad(a,b,c)
  %10025 = fadd fast float %10024, %10015
  %10026 = call float @dx.op.binary.f32(i32 35, float %10019, float -1.000000e+00)  ; FMax(a,b)
  %10027 = call float @dx.op.binary.f32(i32 35, float %10021, float -1.000000e+00)  ; FMax(a,b)
  %10028 = call float @dx.op.binary.f32(i32 35, float %10023, float -1.000000e+00)  ; FMax(a,b)
  %10029 = call float @dx.op.binary.f32(i32 35, float %10025, float -1.000000e+00)  ; FMax(a,b)
  %10030 = call float @dx.op.binary.f32(i32 36, float %10026, float 1.000000e+00)  ; FMin(a,b)
  %10031 = call float @dx.op.binary.f32(i32 36, float %10027, float 1.000000e+00)  ; FMin(a,b)
  %10032 = call float @dx.op.binary.f32(i32 36, float %10028, float 1.000000e+00)  ; FMin(a,b)
  %10033 = call float @dx.op.binary.f32(i32 36, float %10029, float 1.000000e+00)  ; FMin(a,b)
  %10034 = fcmp fast olt float %10030, 0x3FEFFF8020000000
  br i1 %10034, label %10035, label %10150, !dx.controlflow.hints !183

; <label>:10035                                   ; preds = %10002
  %10036 = extractvalue %dx.types.CBufRet.f32 %9918, 3
  %10037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10038 = extractvalue %dx.types.CBufRet.f32 %10037, 0
  %10039 = extractvalue %dx.types.CBufRet.f32 %10037, 1
  %10040 = extractvalue %dx.types.CBufRet.f32 %10037, 2
  %10041 = extractvalue %dx.types.CBufRet.f32 %10037, 3
  %10042 = fsub fast float %10038, %10030
  %10043 = fsub fast float %10039, %10031
  %10044 = fsub fast float %10040, %10032
  %10045 = fsub fast float %10041, %10033
  %10046 = fmul fast float %10042, %10036
  %10047 = fmul fast float %10043, %10036
  %10048 = fmul fast float %10044, %10036
  %10049 = fmul fast float %10045, %10036
  %10050 = fadd fast float %10046, %10030
  %10051 = fadd fast float %10047, %10031
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fadd fast float %10048, %10032
  %10054 = fadd fast float %10049, %10033
  %10055 = fmul fast float %10050, %10050
  %10056 = fsub fast float %10051, %10055
  %10057 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10056)  ; FMax(a,b)
  %10058 = fdiv fast float 1.000000e+00, %10057
  %10059 = fmul fast float %10051, %10050
  %10060 = fsub fast float %10053, %10059
  %10061 = fsub fast float %10010, %10050
  %10062 = fmul fast float %10010, %10010
  %10063 = fsub fast float %10062, %10051
  %10064 = fmul fast float %10061, %10058
  %10065 = fmul fast float %10064, %10060
  %10066 = fsub fast float %10063, %10065
  %10067 = fmul fast float %10051, %10051
  %10068 = fsub fast float %10054, %10067
  %10069 = fmul fast float %10060, %10060
  %10070 = fmul fast float %10069, %10058
  %10071 = fsub fast float %10068, %10070
  %10072 = fdiv fast float %10066, %10071
  %10073 = fmul fast float %10060, %10072
  %10074 = fsub fast float %10061, %10073
  %10075 = fmul fast float %10074, %10058
  %10076 = fmul fast float %10075, %10050
  %10077 = fsub fast float 1.000000e+00, %10076
  %10078 = fmul fast float %10051, %10072
  %10079 = fsub fast float %10077, %10078
  %10080 = fmul fast float %10075, %10075
  %10081 = fmul fast float %10072, 4.000000e+00
  %10082 = fmul fast float %10081, %10079
  %10083 = fsub fast float %10080, %10082
  %10084 = call float @dx.op.unary.f32(i32 24, float %10083)  ; Sqrt(value)
  %10085 = fcmp fast oge float %10075, 0.000000e+00
  %10086 = fsub fast float -0.000000e+00, %10084
  %10087 = select i1 %10085, float %10086, float %10084
  %10088 = fsub fast float %10087, %10075
  %10089 = fdiv fast float %10088, %10072
  %10090 = fdiv fast float %10079, %10088
  %10091 = fmul fast float %10089, 5.000000e-01
  %10092 = fmul fast float %10090, 2.000000e+00
  %10093 = select i1 %10085, float %10091, float %10092
  %10094 = select i1 %10085, float %10092, float %10091
  %10095 = call float @dx.op.binary.f32(i32 35, float %10093, float %10094)  ; FMax(a,b)
  %10096 = call float @dx.op.binary.f32(i32 36, float %10093, float %10094)  ; FMin(a,b)
  %10097 = fcmp fast ogt float %10010, %10096
  br i1 %10097, label %10098, label %10108

; <label>:10098                                   ; preds = %10035
  %10099 = fsub fast float %10010, %10096
  %10100 = fsub fast float %10095, %10096
  %10101 = fmul fast float %10099, %10100
  %10102 = fmul fast float %10095, %10010
  %10103 = fadd fast float %10095, %10010
  %10104 = fmul fast float %10103, %10050
  %10105 = fadd fast float %10102, %10051
  %10106 = fsub fast float %10105, %10104
  %10107 = fdiv fast float %10106, %10101
  br label %10108

; <label>:10108                                   ; preds = %10098, %10035
  %10109 = phi float [ %10107, %10098 ], [ 0.000000e+00, %10035 ]
  %10110 = fcmp fast ogt float %10010, %10095
  %10111 = fsub fast float %10010, %10095
  br i1 %10110, label %10112, label %10122

; <label>:10112                                   ; preds = %10108
  %10113 = fsub fast float %10095, %10096
  %10114 = fmul fast float %10113, %10111
  %10115 = fmul fast float %10096, %10010
  %10116 = fadd fast float %10096, %10010
  %10117 = fmul fast float %10116, %10050
  %10118 = fsub fast float %10052, %10115
  %10119 = fadd fast float %10118, %10117
  %10120 = fdiv fast float %10119, %10114
  %10121 = fadd fast float %10120, %10109
  br label %10122

; <label>:10122                                   ; preds = %10112, %10108
  %10123 = phi float [ %10121, %10112 ], [ %10109, %10108 ]
  %10124 = fsub fast float %10010, %10096
  %10125 = fmul fast float %10124, %10111
  %10126 = fmul fast float %10096, %10095
  %10127 = fadd fast float %10096, %10095
  %10128 = fmul fast float %10127, %10050
  %10129 = fadd fast float %10126, %10051
  %10130 = fsub fast float %10129, %10128
  %10131 = fdiv fast float %10130, %10125
  %10132 = call float @dx.op.unary.f32(i32 7, float %10123)  ; Saturate(value)
  %10133 = fcmp fast oeq float %8801, 0.000000e+00
  %10134 = extractvalue %dx.types.CBufRet.f32 %9918, 0
  %10135 = fcmp fast oeq float %10134, 0.000000e+00
  %10136 = or i1 %10133, %10135
  %10137 = fmul fast float %10134, 2.000000e+00
  %10138 = fadd fast float %9919, %9920
  %10139 = fdiv fast float %10138, %10137
  %10140 = call float @dx.op.unary.f32(i32 7, float %10139)  ; Saturate(value)
  %10141 = fmul fast float %10140, 2.000000e+00
  %10142 = fsub fast float 3.000000e+00, %10141
  %10143 = fmul fast float %10140, %10140
  %10144 = fmul fast float %10143, %10142
  %10145 = select i1 %10136, float 1.000000e+00, float %10144
  %10146 = fmul fast float %10131, %8801
  %10147 = fadd fast float %10132, %10146
  %10148 = call float @dx.op.unary.f32(i32 7, float %10147)  ; Saturate(value)
  %10149 = fmul fast float %10145, %10148
  br label %10150

; <label>:10150                                   ; preds = %10122, %10002
  %10151 = phi float [ %10149, %10122 ], [ 0.000000e+00, %10002 ]
  %10152 = fsub fast float 1.000000e+00, %10151
  %10153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9872, float %9873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10154 = extractvalue %dx.types.ResRet.f32 %10153, 0
  %10155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10156 = extractvalue %dx.types.CBufRet.i32 %10155, 2
  %10157 = icmp eq i32 %10156, 0
  br i1 %10157, label %10163, label %10158

; <label>:10158                                   ; preds = %10150
  %10159 = call float @dx.op.unary.f32(i32 7, float %10151)  ; Saturate(value)
  %10160 = fadd fast float %10154, -1.000000e+00
  %10161 = fmul fast float %10159, %10160
  %10162 = fadd fast float %10161, 1.000000e+00
  br label %10163

; <label>:10163                                   ; preds = %10158, %10150
  %10164 = phi float [ %10162, %10158 ], [ %10152, %10150 ]
  br i1 %9926, label %10165, label %10183

; <label>:10165                                   ; preds = %10163
  %10166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10167 = extractvalue %dx.types.CBufRet.f32 %10166, 1
  %10168 = fsub fast float %10003, %10167
  %10169 = call float @dx.op.unary.f32(i32 7, float %10168)  ; Saturate(value)
  %10170 = fsub fast float %10003, %9925
  %10171 = call float @dx.op.unary.f32(i32 7, float %10170)  ; Saturate(value)
  %10172 = fsub fast float %10169, %10171
  %10173 = fsub fast float %10005, %10171
  %10174 = fdiv fast float %10173, %10172
  %10175 = call float @dx.op.unary.f32(i32 7, float %10174)  ; Saturate(value)
  %10176 = fmul fast float %10175, 2.000000e+00
  %10177 = fsub fast float 3.000000e+00, %10176
  %10178 = fsub fast float %10154, %10164
  %10179 = fmul fast float %10175, %10175
  %10180 = fmul fast float %10179, %10178
  %10181 = fmul fast float %10180, %10177
  %10182 = fadd fast float %10181, %10164
  br label %10183

; <label>:10183                                   ; preds = %10165, %10163
  %10184 = phi float [ %10182, %10165 ], [ %10164, %10163 ]
  %10185 = call float @dx.op.binary.f32(i32 35, float %10154, float %10184)  ; FMax(a,b)
  %10186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10187 = extractvalue %dx.types.CBufRet.i32 %10186, 2
  %10188 = and i32 %10187, 1
  %10189 = icmp eq i32 %10188, 0
  %10190 = fcmp fast une float %10185, 1.000000e+00
  %10191 = and i1 %10190, %10189
  br i1 %10191, label %10192, label %10211

; <label>:10192                                   ; preds = %10183
  %10193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9872, float %9873, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10194 = extractvalue %dx.types.ResRet.f32 %10193, 0
  %10195 = extractvalue %dx.types.ResRet.f32 %10193, 1
  %10196 = extractvalue %dx.types.ResRet.f32 %10193, 2
  %10197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10198 = extractvalue %dx.types.CBufRet.f32 %10197, 1
  %10199 = fmul fast float %10198, %10194
  %10200 = fmul fast float %10198, %10195
  %10201 = fmul fast float %10198, %10196
  %10202 = fcmp fast ogt float %10154, 0x3FEFFF2E40000000
  %10203 = fsub fast float 1.000000e+00, %10185
  %10204 = fsub fast float 1.000000e+00, %10154
  %10205 = fdiv fast float %10203, %10204
  %10206 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10207 = select i1 %10202, float 0.000000e+00, float %10206
  %10208 = fmul fast float %10199, %10207
  %10209 = fmul fast float %10200, %10207
  %10210 = fmul fast float %10201, %10207
  br label %10211

; <label>:10211                                   ; preds = %10192, %10183
  %10212 = phi float [ 0.000000e+00, %10183 ], [ %10208, %10192 ]
  %10213 = phi float [ 0.000000e+00, %10183 ], [ %10209, %10192 ]
  %10214 = phi float [ 0.000000e+00, %10183 ], [ %10210, %10192 ]
  %10215 = fmul fast float %10212, %8789
  %10216 = fmul fast float %10213, %8789
  %10217 = fmul fast float %10214, %8789
  %10218 = fmul fast float %10185, %9847
  %10219 = call float @dx.op.dot3.f32(i32 55, float %10185, float %10185, float %10185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10220 = call float @dx.op.dot3.f32(i32 55, float %10215, float %10216, float %10217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10221 = select i1 %260, float %10219, float %10185
  %10222 = select i1 %260, float 1.000000e+00, float %10185
  %10223 = select i1 %260, float %10220, float %10215
  %10224 = select i1 %260, float 0.000000e+00, float %10216
  %10225 = select i1 %260, float 0.000000e+00, float %10217
  %10226 = fmul fast float %10221, %9859
  %10227 = fmul fast float %10221, %9860
  %10228 = fmul fast float %10222, %9861
  %10229 = fadd fast float %10226, %10223
  %10230 = fadd fast float %10227, %10224
  %10231 = fadd fast float %10225, %10228
  %10232 = fmul fast float %10221, %9862
  %10233 = fmul fast float %10221, %9863
  %10234 = fmul fast float %10222, %9864
  br label %10235

; <label>:10235                                   ; preds = %10211, %9868, %9837, %9069
  %10236 = phi float [ %9074, %9069 ], [ %9859, %9837 ], [ %10229, %10211 ], [ %9859, %9868 ]
  %10237 = phi float [ %9075, %9069 ], [ %9860, %9837 ], [ %10230, %10211 ], [ %9860, %9868 ]
  %10238 = phi float [ %9076, %9069 ], [ %9861, %9837 ], [ %10231, %10211 ], [ %9861, %9868 ]
  %10239 = phi float [ %9077, %9069 ], [ %9862, %9837 ], [ %10232, %10211 ], [ %9862, %9868 ]
  %10240 = phi float [ %9078, %9069 ], [ %9863, %9837 ], [ %10233, %10211 ], [ %9863, %9868 ]
  %10241 = phi float [ %9079, %9069 ], [ %9864, %9837 ], [ %10234, %10211 ], [ %9864, %9868 ]
  %10242 = phi float [ %9080, %9069 ], [ %9847, %9837 ], [ %10218, %10211 ], [ %9847, %9868 ]
  %10243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10244 = extractvalue %dx.types.CBufRet.f32 %10243, 2
  %10245 = extractvalue %dx.types.CBufRet.f32 %10243, 3
  %10246 = fmul fast float %10244, %114
  %10247 = fmul fast float %10245, %115
  %10248 = call float @dx.op.unary.f32(i32 7, float %10246)  ; Saturate(value)
  %10249 = call float @dx.op.unary.f32(i32 7, float %10247)  ; Saturate(value)
  %10250 = select i1 %8811, i32 2, i32 0
  %10251 = or i32 %10250, 1
  %10252 = uitofp i32 %10251 to float
  %10253 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10248, float %10249, float %10252, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10254 = extractvalue %dx.types.ResRet.f32 %10253, 0
  %10255 = extractvalue %dx.types.ResRet.f32 %10253, 1
  %10256 = extractvalue %dx.types.ResRet.f32 %10253, 2
  %10257 = extractvalue %dx.types.ResRet.f32 %10253, 3
  %10258 = add nuw nsw i32 %10250, 2
  %10259 = uitofp i32 %10258 to float
  %10260 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10248, float %10249, float %10259, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10261 = extractvalue %dx.types.ResRet.f32 %10260, 0
  %10262 = extractvalue %dx.types.ResRet.f32 %10260, 1
  %10263 = extractvalue %dx.types.ResRet.f32 %10260, 2
  %10264 = extractvalue %dx.types.ResRet.f32 %10260, 3
  %10265 = call float @dx.op.binary.f32(i32 35, float %10255, float %10256)  ; FMax(a,b)
  %10266 = call float @dx.op.binary.f32(i32 35, float %10254, float %10265)  ; FMax(a,b)
  %10267 = call float @dx.op.binary.f32(i32 35, float %10266, float %10257)  ; FMax(a,b)
  %10268 = call float @dx.op.binary.f32(i32 36, float %10262, float %10263)  ; FMin(a,b)
  %10269 = call float @dx.op.binary.f32(i32 36, float %10261, float %10268)  ; FMin(a,b)
  %10270 = call float @dx.op.binary.f32(i32 36, float %10269, float %10264)  ; FMin(a,b)
  %10271 = fmul fast float %10267, 2.550000e+02
  %10272 = fadd fast float %10271, 0x3F70101020000000
  %10273 = fptoui float %10272 to i32
  %10274 = fmul fast float %10270, 2.550000e+02
  %10275 = fadd fast float %10274, 0x3F70101020000000
  %10276 = fptoui float %10275 to i32
  %10277 = icmp ult i32 %10273, %10276
  br i1 %10277, label %10278, label %10447

; <label>:10278                                   ; preds = %10235
  %10279 = fcmp fast ogt float %100, 9.843750e-01
  %10280 = fadd fast float %9073, -4.000000e+00
  %10281 = select i1 %10279, float -4.000000e+00, float %10280
  %10282 = call float @dx.op.binary.f32(i32 35, float %10281, float 0.000000e+00)  ; FMax(a,b)
  %10283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10284 = extractvalue %dx.types.CBufRet.f32 %10283, 0
  %10285 = fadd fast float %10284, %10282
  %10286 = extractvalue %dx.types.CBufRet.f32 %10283, 2
  %10287 = fmul fast float %10285, %10286
  %10288 = call float @dx.op.unary.f32(i32 23, float %10287)  ; Log(value)
  %10289 = extractvalue %dx.types.CBufRet.f32 %10283, 3
  %10290 = fmul fast float %10289, %10288
  %10291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10292 = extractvalue %dx.types.CBufRet.f32 %10291, 2
  %10293 = fmul fast float %10290, %10292
  %10294 = call float @dx.op.unary.f32(i32 7, float %10293)  ; Saturate(value)
  %10295 = uitofp i32 %10273 to float
  %10296 = uitofp i32 %10276 to float
  %10297 = fadd fast float %10295, 5.000000e-01
  %10298 = fadd fast float %10296, 5.000000e-01
  %10299 = fmul fast float %10292, %10297
  %10300 = fmul fast float %10292, %10298
  %10301 = fadd fast float %10299, 0x3F0FFB4800000000
  %10302 = fadd fast float %10300, 0xBF0FFB4800000000
  %10303 = call float @dx.op.binary.f32(i32 35, float %10294, float %10301)  ; FMax(a,b)
  %10304 = call float @dx.op.binary.f32(i32 36, float %10303, float %10302)  ; FMin(a,b)
  %10305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10306 = extractvalue %dx.types.CBufRet.f32 %10305, 1
  %10307 = extractvalue %dx.types.CBufRet.f32 %10305, 2
  %10308 = extractvalue %dx.types.CBufRet.f32 %10305, 0
  %10309 = select i1 %8811, float %10308, float 0.000000e+00
  %10310 = fmul fast float %10306, %10304
  %10311 = fadd fast float %10309, %10310
  %10312 = fadd fast float %10309, %10307
  %10313 = fsub fast float %10306, %10307
  %10314 = fadd fast float %10313, %10309
  %10315 = call float @dx.op.binary.f32(i32 35, float %10311, float %10312)  ; FMax(a,b)
  %10316 = call float @dx.op.binary.f32(i32 36, float %10315, float %10314)  ; FMin(a,b)
  %10317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10248, float %10249, float %10316, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10318 = extractvalue %dx.types.ResRet.f32 %10317, 0
  %10319 = extractvalue %dx.types.ResRet.f32 %10317, 1
  %10320 = extractvalue %dx.types.ResRet.f32 %10317, 2
  %10321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10322 = extractvalue %dx.types.CBufRet.i32 %10321, 0
  %10323 = extractvalue %dx.types.CBufRet.i32 %10321, 1
  %10324 = uitofp i32 %10322 to float
  %10325 = uitofp i32 %10323 to float
  %10326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10327 = extractvalue %dx.types.CBufRet.f32 %10326, 0
  %10328 = extractvalue %dx.types.CBufRet.f32 %10326, 1
  %10329 = fmul fast float %10324, %10248
  %10330 = fmul fast float %10325, %10249
  %10331 = fadd fast float %10329, -5.000000e-01
  %10332 = fadd fast float %10330, -5.000000e-01
  %10333 = call float @dx.op.unary.f32(i32 22, float %10331)  ; Frc(value)
  %10334 = call float @dx.op.unary.f32(i32 22, float %10332)  ; Frc(value)
  %10335 = fmul fast float %10333, %10333
  %10336 = fmul fast float %10335, %10333
  %10337 = fsub fast float 3.000000e+00, %10333
  %10338 = fmul fast float %10335, %10337
  %10339 = fmul fast float %10333, 3.000000e+00
  %10340 = fmul fast float %10336, 3.000000e+00
  %10341 = fmul fast float %10335, 6.000000e+00
  %10342 = fsub fast float %10340, %10341
  %10343 = fadd fast float %10342, 4.000000e+00
  %10344 = fmul fast float %10343, 0x3FC5555560000000
  %10345 = fmul fast float %10336, -3.000000e+00
  %10346 = fadd fast float %10335, %10333
  %10347 = fmul fast float %10346, 3.000000e+00
  %10348 = fadd fast float %10345, 1.000000e+00
  %10349 = fadd fast float %10348, %10347
  %10350 = fmul fast float %10336, 0x3FC5555560000000
  %10351 = fmul fast float %10334, %10334
  %10352 = fmul fast float %10351, %10334
  %10353 = fsub fast float 3.000000e+00, %10334
  %10354 = fmul fast float %10351, %10353
  %10355 = fmul fast float %10334, 3.000000e+00
  %10356 = fmul fast float %10352, 3.000000e+00
  %10357 = fmul fast float %10351, 6.000000e+00
  %10358 = fsub fast float %10356, %10357
  %10359 = fadd fast float %10358, 4.000000e+00
  %10360 = fmul fast float %10359, 0x3FC5555560000000
  %10361 = fmul fast float %10352, -3.000000e+00
  %10362 = fadd fast float %10351, %10334
  %10363 = fmul fast float %10362, 3.000000e+00
  %10364 = fadd fast float %10361, 1.000000e+00
  %10365 = fadd fast float %10364, %10363
  %10366 = fmul fast float %10352, 0x3FC5555560000000
  %10367 = fadd fast float %10333, 1.000000e+00
  %10368 = fsub fast float 1.000000e+00, %10339
  %10369 = fadd fast float %10368, %10338
  %10370 = fadd fast float %10369, %10343
  %10371 = fmul fast float %10370, 0x3FC5555560000000
  %10372 = fdiv fast float %10344, %10371
  %10373 = fsub fast float %10367, %10372
  %10374 = fsub fast float 1.000000e+00, %10333
  %10375 = fadd fast float %10349, %10336
  %10376 = fmul fast float %10375, 0x3FC5555560000000
  %10377 = fdiv fast float %10350, %10376
  %10378 = fadd fast float %10374, %10377
  %10379 = fadd fast float %10334, 1.000000e+00
  %10380 = fsub fast float 1.000000e+00, %10355
  %10381 = fadd fast float %10380, %10354
  %10382 = fadd fast float %10381, %10359
  %10383 = fmul fast float %10382, 0x3FC5555560000000
  %10384 = fdiv fast float %10360, %10383
  %10385 = fsub fast float %10379, %10384
  %10386 = fsub fast float 1.000000e+00, %10334
  %10387 = fadd fast float %10365, %10352
  %10388 = fmul fast float %10387, 0x3FC5555560000000
  %10389 = fdiv fast float %10366, %10388
  %10390 = fadd fast float %10389, %10386
  %10391 = fmul fast float %10373, %10327
  %10392 = fsub fast float %10248, %10391
  %10393 = fmul fast float %10378, %10327
  %10394 = fadd fast float %10393, %10248
  %10395 = fmul fast float %10390, %10328
  %10396 = fadd fast float %10395, %10249
  %10397 = fmul fast float %10385, %10328
  %10398 = fsub fast float %10249, %10397
  %10399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10392, float %10398, float %10316, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10400 = extractvalue %dx.types.ResRet.f32 %10399, 0
  %10401 = extractvalue %dx.types.ResRet.f32 %10399, 1
  %10402 = extractvalue %dx.types.ResRet.f32 %10399, 2
  %10403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10394, float %10398, float %10316, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10404 = extractvalue %dx.types.ResRet.f32 %10403, 0
  %10405 = extractvalue %dx.types.ResRet.f32 %10403, 1
  %10406 = extractvalue %dx.types.ResRet.f32 %10403, 2
  %10407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10392, float %10396, float %10316, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10408 = extractvalue %dx.types.ResRet.f32 %10407, 0
  %10409 = extractvalue %dx.types.ResRet.f32 %10407, 1
  %10410 = extractvalue %dx.types.ResRet.f32 %10407, 2
  %10411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10394, float %10396, float %10316, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10412 = extractvalue %dx.types.ResRet.f32 %10411, 0
  %10413 = extractvalue %dx.types.ResRet.f32 %10411, 1
  %10414 = extractvalue %dx.types.ResRet.f32 %10411, 2
  %10415 = fsub fast float %10408, %10400
  %10416 = fsub fast float %10409, %10401
  %10417 = fsub fast float %10410, %10402
  %10418 = fmul fast float %10415, %10388
  %10419 = fmul fast float %10416, %10388
  %10420 = fmul fast float %10417, %10388
  %10421 = fadd fast float %10418, %10400
  %10422 = fadd fast float %10419, %10401
  %10423 = fadd fast float %10420, %10402
  %10424 = fsub fast float %10412, %10404
  %10425 = fsub fast float %10413, %10405
  %10426 = fsub fast float %10414, %10406
  %10427 = fmul fast float %10424, %10388
  %10428 = fmul fast float %10425, %10388
  %10429 = fmul fast float %10426, %10388
  %10430 = fsub fast float %10404, %10421
  %10431 = fadd fast float %10430, %10427
  %10432 = fsub fast float %10405, %10422
  %10433 = fadd fast float %10432, %10428
  %10434 = fsub fast float %10406, %10423
  %10435 = fadd fast float %10434, %10429
  %10436 = fmul fast float %10431, %10376
  %10437 = fmul fast float %10433, %10376
  %10438 = fmul fast float %10435, %10376
  %10439 = fadd fast float %10436, %10421
  %10440 = fadd fast float %10437, %10422
  %10441 = fadd fast float %10438, %10423
  %10442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10443 = extractvalue %dx.types.CBufRet.f32 %10442, 1
  %10444 = fmul fast float %10439, %10443
  %10445 = fmul fast float %10440, %10443
  %10446 = fmul fast float %10441, %10443
  br label %10447

; <label>:10447                                   ; preds = %10278, %10235
  %10448 = phi float [ %10318, %10278 ], [ 1.000000e+00, %10235 ]
  %10449 = phi float [ %10319, %10278 ], [ 1.000000e+00, %10235 ]
  %10450 = phi float [ %10320, %10278 ], [ 1.000000e+00, %10235 ]
  %10451 = phi float [ %10444, %10278 ], [ 0.000000e+00, %10235 ]
  %10452 = phi float [ %10445, %10278 ], [ 0.000000e+00, %10235 ]
  %10453 = phi float [ %10446, %10278 ], [ 0.000000e+00, %10235 ]
  %10454 = fmul fast float %10451, %8789
  %10455 = fmul fast float %10452, %8789
  %10456 = fmul fast float %10453, %8789
  %10457 = fmul fast float %10448, %10242
  %10458 = call float @dx.op.dot3.f32(i32 55, float %10448, float %10449, float %10450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10459 = call float @dx.op.dot3.f32(i32 55, float %10454, float %10455, float %10456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10460 = select i1 %260, float %10458, float %10448
  %10461 = select i1 %260, float %10458, float %10449
  %10462 = select i1 %260, float 1.000000e+00, float %10450
  %10463 = select i1 %260, float %10459, float %10454
  %10464 = select i1 %260, float 0.000000e+00, float %10455
  %10465 = select i1 %260, float 0.000000e+00, float %10456
  %10466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10467 = extractvalue %dx.types.CBufRet.i32 %10466, 3
  %10468 = and i32 %10467, 3
  %10469 = icmp ne i32 %10468, 0
  %10470 = and i32 %10467, 4
  %10471 = icmp ne i32 %10470, 0
  %10472 = and i1 %10469, %10471
  %10473 = and i1 %260, %10472
  br i1 %10473, label %10474, label %10480

; <label>:10474                                   ; preds = %10447
  %10475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10476 = extractvalue %dx.types.CBufRet.f32 %10475, 1
  %10477 = fadd fast float %10457, -1.000000e+00
  %10478 = fmul fast float %10476, %10477
  %10479 = fadd fast float %10478, 1.000000e+00
  br label %10480

; <label>:10480                                   ; preds = %10474, %10447
  %10481 = phi float [ %10479, %10474 ], [ %10457, %10447 ]
  %10482 = fadd fast float %10239, %10236
  %10483 = fmul fast float %10460, %10482
  %10484 = fadd fast float %10483, %10463
  %10485 = fadd fast float %10240, %10237
  %10486 = fmul fast float %10461, %10485
  %10487 = fadd fast float %10486, %10464
  %10488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10489 = extractvalue %dx.types.CBufRet.f32 %10488, 0
  br i1 %260, label %10490, label %10514

; <label>:10490                                   ; preds = %10480
  %10491 = fadd fast float %10484, %10487
  %10492 = fmul fast float %10489, %10491
  %10493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10494 = extractvalue %dx.types.CBufRet.f32 %10493, 3
  %10495 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %10496 = fsub fast float %8798, %8792
  %10497 = fadd fast float %10496, %8799
  %10498 = fsub fast float %10497, %10495
  %10499 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %10500 = fmul fast float %10498, %10499
  %10501 = call float @dx.op.unary.f32(i32 7, float %10500)  ; Saturate(value)
  %10502 = fsub fast float %10501, %10494
  %10503 = fmul fast float %10502, %10481
  %10504 = fadd fast float %10503, %10494
  %10505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10506 = extractvalue %dx.types.CBufRet.f32 %10505, 0
  %10507 = fsub fast float %10504, %10506
  %10508 = fmul fast float %10507, 1.000000e+01
  %10509 = call float @dx.op.unary.f32(i32 7, float %10508)  ; Saturate(value)
  %10510 = fsub fast float %4412, %8789
  %10511 = fmul fast float %10509, %10510
  %10512 = fadd fast float %10511, %8789
  %10513 = fmul fast float %10512, %10504
  br label %10538

; <label>:10514                                   ; preds = %10480
  %10515 = fadd fast float %10241, %10238
  %10516 = fmul fast float %10462, %10515
  %10517 = fadd fast float %10516, %10465
  %10518 = fmul fast float %10489, %10484
  %10519 = fmul fast float %10489, %10487
  %10520 = fmul fast float %10489, %10517
  %10521 = call float @dx.op.binary.f32(i32 35, float %10519, float %10520)  ; FMax(a,b)
  %10522 = call float @dx.op.binary.f32(i32 35, float %10518, float %10521)  ; FMax(a,b)
  %10523 = call float @dx.op.binary.f32(i32 35, float %10522, float %8789)  ; FMax(a,b)
  %10524 = fcmp fast ugt float %10523, 0x3F10000000000000
  br i1 %10524, label %10526, label %10525

; <label>:10525                                   ; preds = %10514
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10526

; <label>:10526                                   ; preds = %10525, %10514
  %10527 = add i32 %60, 356
  %10528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10527, i32 undef)  ; BufferLoad(srv,index,wot)
  %10529 = extractvalue %dx.types.ResRet.i32 %10528, 0
  %10530 = and i32 %10529, 32
  %10531 = icmp eq i32 %10530, 0
  br i1 %10531, label %10538, label %10532

; <label>:10532                                   ; preds = %10526
  %10533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10534 = extractvalue %dx.types.CBufRet.f32 %10533, 0
  %10535 = fmul fast float %10534, 0x3FE99999A0000000
  %10536 = fadd fast float %10534, %10518
  %10537 = fadd fast float %10535, %10520
  br label %10538

; <label>:10538                                   ; preds = %10532, %10526, %10490
  %10539 = phi float [ %10492, %10490 ], [ %10536, %10532 ], [ %10518, %10526 ]
  %10540 = phi float [ %10513, %10490 ], [ %10519, %10532 ], [ %10519, %10526 ]
  %10541 = phi float [ %10512, %10490 ], [ %10537, %10532 ], [ %10520, %10526 ]
  %10542 = phi float [ %10512, %10490 ], [ %8789, %10532 ], [ %8789, %10526 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10543 = call float @dx.op.binary.f32(i32 36, float %10539, float 3.225500e+04)  ; FMin(a,b)
  %10544 = call float @dx.op.binary.f32(i32 36, float %10540, float 3.225500e+04)  ; FMin(a,b)
  %10545 = call float @dx.op.binary.f32(i32 36, float %10541, float 3.225500e+04)  ; FMin(a,b)
  %10546 = call float @dx.op.binary.f32(i32 36, float %10542, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10543)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10544)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!73 = !{[58 x i32] [i32 56, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0, i32 15, i32 0, i32 0, i32 0]}
!74 = !{void ()* @ps_main, !"ps_main", !75, !4, !99}
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
!97 = !{!98}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !78, i8 0, i32 1, i8 4, i32 0, i8 0, !79}
!99 = !{i32 0, i64 16}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"int", !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !{!113, !115, !117, !119}
!113 = distinct !{!113, !114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!114 = distinct !{!114, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!115 = distinct !{!115, !116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!116 = distinct !{!116, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!117 = distinct !{!117, !118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!118 = distinct !{!118, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!119 = distinct !{!119, !120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!120 = distinct !{!120, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !110, i64 0}
!124 = distinct !{!124, !102}
!125 = distinct !{!125, !102}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = !{!138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!138 = distinct !{!138, !139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!139 = distinct !{!139, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!140 = distinct !{!140, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!141 = distinct !{!141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!142 = distinct !{!142, !141, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!143 = distinct !{!143, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!144 = distinct !{!144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!145 = distinct !{!145, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!146 = distinct !{!146, !144, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!147 = distinct !{!147, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!148 = distinct !{!148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!149 = distinct !{!149, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!150 = distinct !{!150, !148, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!151 = distinct !{!151, !152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!152 = distinct !{!152, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!161 = !{!157}
!162 = !{!158, !154, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!163 = !{!164}
!164 = distinct !{!164, !165, !"\01?sort@@YAXAIAM00@Z: %c"}
!165 = distinct !{!165, !"\01?sort@@YAXAIAM00@Z"}
!166 = !{!167, !168, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!167 = distinct !{!167, !165, !"\01?sort@@YAXAIAM00@Z: %a"}
!168 = distinct !{!168, !165, !"\01?sort@@YAXAIAM00@Z: %b"}
!169 = !{!168}
!170 = !{!167, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!171 = !{!167}
!172 = !{!168, !164, !138, !140, !142, !143, !145, !146, !147, !149, !150, !151}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 2}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}
!183 = distinct !{!183, !"dx.controlflow.hints", i32 1}

