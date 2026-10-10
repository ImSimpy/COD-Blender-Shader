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
; shader hash: d8cfaa22e3296dbc49202453d09d5f0e
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
  %454 = add i32 %60, 492
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
  br i1 %510, label %1045, label %511

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
  %615 = add i32 %60, 440
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
  %667 = add i32 %60, 424
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
  %691 = add i32 %60, 376
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
  %714 = add i32 %60, 460
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
  %912 = add i32 %60, 392
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
  %996 = add i32 %60, 408
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
  %1032 = add i32 %60, 96
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = lshr i32 %1034, 8
  %1038 = and i32 %1037, 255
  %1039 = uitofp i32 %1038 to float
  %1040 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = fmul fast float %1039, %1040
  %1042 = fadd fast float %1041, %1036
  %1043 = fmul fast float %1042, 0x3F70101020000000
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  br label %1045

; <label>:1045                                    ; preds = %1028, %496
  %1046 = phi float [ 0.000000e+00, %496 ], [ %982, %1028 ]
  %1047 = phi float [ 0.000000e+00, %496 ], [ %983, %1028 ]
  %1048 = phi float [ 0.000000e+00, %496 ], [ %1029, %1028 ]
  %1049 = phi float [ 0.000000e+00, %496 ], [ %1030, %1028 ]
  %1050 = phi float [ 0.000000e+00, %496 ], [ %1031, %1028 ]
  %1051 = phi float [ 0.000000e+00, %496 ], [ %901, %1028 ]
  %1052 = phi float [ 0.000000e+00, %496 ], [ %902, %1028 ]
  %1053 = phi float [ 0.000000e+00, %496 ], [ %903, %1028 ]
  %1054 = phi float [ 0.000000e+00, %496 ], [ %887, %1028 ]
  %1055 = phi float [ 0.000000e+00, %496 ], [ %683, %1028 ]
  %1056 = phi float [ 0.000000e+00, %496 ], [ %981, %1028 ]
  %1057 = phi float [ 0.000000e+00, %496 ], [ %984, %1028 ]
  %1058 = phi float [ 0.000000e+00, %496 ], [ %1044, %1028 ]
  br i1 %444, label %1785, label %1059

; <label>:1059                                    ; preds = %1045
  %1060 = icmp ult i32 %502, 2
  %1061 = add i32 %60, 40
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %60, 44
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = or i32 %1066, %1063
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1785, label %1069

; <label>:1069                                    ; preds = %1059
  %1070 = and i32 %1063, 262144
  %1071 = icmp ne i32 %1070, 0
  %1072 = select i1 %1071, float %65, float 1.000000e+00
  %1073 = select i1 %1071, float %66, float 0.000000e+00
  %1074 = select i1 %1071, float %67, float 0.000000e+00
  %1075 = select i1 %1071, float %68, float 1.000000e+00
  %1076 = select i1 %1071, float %69, float %92
  %1077 = select i1 %1071, float %70, float %93
  %1078 = add i32 %60, 300
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = lshr i32 %1080, 16
  %1082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1081)  ; LegacyF16ToF32(value)
  %1083 = fmul fast float %1082, 0x3F50624DE0000000
  %1084 = add i32 %60, 104
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = lshr i32 %1086, 16
  %1088 = and i32 %1087, 255
  %1089 = lshr i32 %1086, 24
  %1090 = add i32 %60, 308
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 65535
  %1094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1093)  ; LegacyF16ToF32(value)
  %1095 = lshr i32 %1092, 16
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = add i32 %60, 48
  %1098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1111 = fmul fast float %1110, 1.000000e+03
  %1112 = fmul fast float %354, %1111
  %1113 = call float @dx.op.unary.f32(i32 22, float %1112)  ; Frc(value)
  %1114 = fadd fast float %1113, %344
  %1115 = fmul fast float %355, %1111
  %1116 = call float @dx.op.unary.f32(i32 22, float %1115)  ; Frc(value)
  %1117 = fadd fast float %1116, %346
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
  %1143 = add i32 %60, 244
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1173 = add i32 %60, 444
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1177, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = add i32 %60, 116
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = shl i32 %1182, 4
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1182, 7
  %1187 = and i32 %1186, 32752
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = fsub fast float 1.000000e+00, %499
  %1190 = call float @dx.op.binary.f32(i32 35, float %1189, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1191 = bitcast float %499 to i32
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
  %1219 = phi float [ %1217, %1172 ], [ %499, %1167 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 128
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1240, label %1224

; <label>:1224                                    ; preds = %1218
  %1225 = add i32 %60, 428
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = add i32 %1227, 0
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1229, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1242, label %1785, label %1243

; <label>:1243                                    ; preds = %1240
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 16
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1446, label %1248

; <label>:1248                                    ; preds = %1243
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = add i32 %60, 380
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %1253, 0
  %1255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1255, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = and i32 %1250, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = lshr i32 %1250, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1260, %1262
  %1267 = fadd fast float %1266, %1265
  %1268 = fmul fast float %1267, 0x3F70101000000000
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 512
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1281, label %1273

; <label>:1273                                    ; preds = %1248
  %1274 = add i32 %60, 464
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = add i32 %1276, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1278, %dx.types.Handle %111, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  br label %1281

; <label>:1281                                    ; preds = %1273, %1248
  %1282 = phi float [ %1280, %1273 ], [ 1.000000e+00, %1248 ]
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 33554432
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1393, label %1287

; <label>:1287                                    ; preds = %1281
  %1288 = add i32 %60, 240
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1290, 16
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = add i32 %60, 244
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 65535
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = lshr i32 %1301, 24
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = and i32 %1301, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1301, 8
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = lshr i32 %1301, 16
  %1313 = and i32 %1312, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = add i32 %60, 236
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = lshr i32 %1318, 24
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = and i32 %1318, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1318, 8
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1318, 16
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = bitcast float %1257 to i32
  %1334 = ashr i32 %1333, 1
  %1335 = sub nsw i32 1597463174, %1334
  %1336 = bitcast i32 %1335 to float
  %1337 = fmul fast float %1257, 5.000000e-01
  %1338 = fmul fast float %1336, %1336
  %1339 = fmul fast float %1338, %1337
  %1340 = fsub fast float 1.500000e+00, %1339
  %1341 = fmul fast float %1336, %1257
  %1342 = fmul fast float %1341, %1340
  %1343 = bitcast float %1258 to i32
  %1344 = ashr i32 %1343, 1
  %1345 = sub nsw i32 1597463174, %1344
  %1346 = bitcast i32 %1345 to float
  %1347 = fmul fast float %1258, 5.000000e-01
  %1348 = fmul fast float %1346, %1346
  %1349 = fmul fast float %1348, %1347
  %1350 = fsub fast float 1.500000e+00, %1349
  %1351 = fmul fast float %1346, %1258
  %1352 = fmul fast float %1351, %1350
  %1353 = bitcast float %1259 to i32
  %1354 = ashr i32 %1353, 1
  %1355 = sub nsw i32 1597463174, %1354
  %1356 = bitcast i32 %1355 to float
  %1357 = fmul fast float %1259, 5.000000e-01
  %1358 = fmul fast float %1356, %1356
  %1359 = fmul fast float %1358, %1357
  %1360 = fsub fast float 1.500000e+00, %1359
  %1361 = fmul fast float %1356, %1259
  %1362 = fmul fast float %1361, %1360
  %1363 = fsub fast float %1342, %1324
  %1364 = fsub fast float %1352, %1328
  %1365 = fsub fast float %1362, %1332
  %1366 = fmul fast float %1363, %1292
  %1367 = fmul fast float %1364, %1294
  %1368 = fmul fast float %1365, %1299
  %1369 = fadd fast float %1366, %1307
  %1370 = fadd fast float %1367, %1311
  %1371 = fadd fast float %1368, %1315
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1374 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1375 = fmul fast float %1372, %1372
  %1376 = fmul fast float %1373, %1373
  %1377 = fmul fast float %1374, %1374
  %1378 = fsub fast float %1375, %1257
  %1379 = fsub fast float %1376, %1258
  %1380 = fsub fast float %1377, %1259
  %1381 = fmul fast float %1378, %1282
  %1382 = fmul fast float %1379, %1282
  %1383 = fmul fast float %1380, %1282
  %1384 = fadd fast float %1381, %1257
  %1385 = fadd fast float %1382, %1258
  %1386 = fadd fast float %1383, %1259
  %1387 = fadd fast float %1304, %1268
  %1388 = fsub fast float %1387, %1321
  %1389 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1390 = fsub fast float %1389, %1268
  %1391 = fmul fast float %1390, %1282
  %1392 = fadd fast float %1391, %1268
  br label %1446

; <label>:1393                                    ; preds = %1281
  %1394 = and i32 %1284, 134217728
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1430, label %1396

; <label>:1396                                    ; preds = %1393
  %1397 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1398 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1399 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1400 = fadd fast float %1397, -5.000000e-01
  %1401 = fadd fast float %1398, -5.000000e-01
  %1402 = fadd fast float %1399, -5.000000e-01
  %1403 = fmul fast float %1400, %1282
  %1404 = fmul fast float %1401, %1282
  %1405 = fmul fast float %1402, %1282
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = fadd fast float %1405, 5.000000e-01
  %1409 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1410 = call float @dx.op.unary.f32(i32 24, float %1258)  ; Sqrt(value)
  %1411 = call float @dx.op.unary.f32(i32 24, float %1259)  ; Sqrt(value)
  %1412 = fmul fast float %1406, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1409
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1409
  %1417 = fmul fast float %1407, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1410
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1410
  %1422 = fmul fast float %1408, 2.000000e+00
  %1423 = fsub fast float 1.000000e+00, %1422
  %1424 = fmul fast float %1423, %1411
  %1425 = fadd fast float %1424, %1422
  %1426 = fmul fast float %1425, %1411
  %1427 = fmul fast float %1416, %1416
  %1428 = fmul fast float %1421, %1421
  %1429 = fmul fast float %1426, %1426
  br label %1446

; <label>:1430                                    ; preds = %1393
  %1431 = fmul fast float %331, %331
  %1432 = fmul fast float %335, %335
  %1433 = fmul fast float %339, %339
  %1434 = fadd fast float %1431, -1.000000e+00
  %1435 = fadd fast float %1432, -1.000000e+00
  %1436 = fadd fast float %1433, -1.000000e+00
  %1437 = fmul fast float %1282, %1434
  %1438 = fmul fast float %1282, %1435
  %1439 = fmul fast float %1282, %1436
  %1440 = fadd fast float %1437, 1.000000e+00
  %1441 = fadd fast float %1438, 1.000000e+00
  %1442 = fadd fast float %1439, 1.000000e+00
  %1443 = fmul fast float %1440, %1257
  %1444 = fmul fast float %1441, %1258
  %1445 = fmul fast float %1442, %1259
  br label %1446

; <label>:1446                                    ; preds = %1430, %1396, %1287, %1243
  %1447 = phi float [ %1392, %1287 ], [ %1268, %1396 ], [ %1268, %1430 ], [ 0x3FA23C0BE0000000, %1243 ]
  %1448 = phi float [ %1384, %1287 ], [ %1427, %1396 ], [ %1443, %1430 ], [ 1.000000e+00, %1243 ]
  %1449 = phi float [ %1385, %1287 ], [ %1428, %1396 ], [ %1444, %1430 ], [ 1.000000e+00, %1243 ]
  %1450 = phi float [ %1386, %1287 ], [ %1429, %1396 ], [ %1445, %1430 ], [ 1.000000e+00, %1243 ]
  %1451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.i32 %1451, 1
  %1453 = and i32 %1452, 1
  %1454 = icmp ne i32 %1453, 0
  %1455 = add i32 %60, 356
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp ne i32 %1458, 0
  %1460 = and i1 %1454, %1459
  %1461 = select i1 %1460, float 1.000000e+00, float %1448
  %1462 = select i1 %1460, float 0x3FD3333340000000, float %1449
  %1463 = select i1 %1460, float 0x3FD3333340000000, float %1450
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 32
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1540, label %1468

; <label>:1468                                    ; preds = %1446
  %1469 = add i32 %60, 108
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %60, 396
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1472, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = add i32 %1474, 0
  %1476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1476, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1478 = extractvalue %dx.types.ResRet.f32 %1477, 0
  %1479 = extractvalue %dx.types.ResRet.f32 %1477, 1
  %1480 = extractvalue %dx.types.ResRet.f32 %1477, 2
  %1481 = extractvalue %dx.types.ResRet.f32 %1477, 3
  %1482 = and i32 %1471, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1471, 8
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = lshr i32 %1471, 16
  %1488 = and i32 %1487, 255
  %1489 = uitofp i32 %1488 to float
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = fmul fast float %1478, %1483
  %1492 = fadd fast float %1491, %1486
  %1493 = fmul fast float %1492, 0x3F70101000000000
  %1494 = fadd fast float %1479, -5.000000e-01
  %1495 = fadd fast float %1481, -5.000000e-01
  %1496 = fmul fast float %1494, %1490
  %1497 = fmul fast float %1495, %1490
  %1498 = fadd fast float %1496, 5.000000e-01
  %1499 = fadd fast float %1497, 5.000000e-01
  %1500 = fmul fast float %1498, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fmul fast float %1499, 2.000000e+00
  %1503 = fadd fast float %1502, -1.000000e+00
  %1504 = fadd fast float %1501, %1503
  %1505 = fmul fast float %1504, 5.000000e-01
  %1506 = fsub fast float %1501, %1503
  %1507 = fmul fast float %1506, 5.000000e-01
  %1508 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = call float @dx.op.unary.f32(i32 6, float %1507)  ; FAbs(value)
  %1511 = fsub fast float %1509, %1510
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1505, float %1507, float %1511, float %1505, float %1507, float %1511)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = call float @dx.op.unary.f32(i32 25, float %1512)  ; Rsqrt(value)
  %1514 = fmul fast float %1505, %1513
  %1515 = fmul fast float %1507, %1513
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 67108864
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1536, label %1520

; <label>:1520                                    ; preds = %1468
  %1521 = add i32 %60, 296
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 65535
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 65535
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = lshr i32 %1523, 16
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = fsub fast float %1493, %1531
  %1533 = fmul fast float %1532, %1525
  %1534 = fadd fast float %1533, %1529
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  br label %1536

; <label>:1536                                    ; preds = %1520, %1468
  %1537 = phi float [ %1535, %1520 ], [ %1493, %1468 ]
  %1538 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1515, float %1072, float %1073)  ; Dot2(ax,ay,bx,by)
  %1539 = call float @dx.op.dot2.f32(i32 54, float %1514, float %1515, float %1074, float %1075)  ; Dot2(ax,ay,bx,by)
  br label %1540

; <label>:1540                                    ; preds = %1536, %1446
  %1541 = phi float [ %1537, %1536 ], [ 0x3FD6666660000000, %1446 ]
  %1542 = phi float [ %1538, %1536 ], [ 0.000000e+00, %1446 ]
  %1543 = phi float [ %1539, %1536 ], [ 0.000000e+00, %1446 ]
  %1544 = phi float [ %1480, %1536 ], [ 1.000000e+00, %1446 ]
  %1545 = add i32 %60, 176
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = lshr i32 %1547, 22
  %1549 = shl nuw nsw i32 %1548, 5
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = and i32 %1552, 64
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1588, label %1555

; <label>:1555                                    ; preds = %1540
  %1556 = add i32 %60, 412
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 131072
  %1564 = icmp eq i32 %1563, 0
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %110, float %1168, float %1169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = extractvalue %dx.types.ResRet.f32 %1565, 1
  %1568 = extractvalue %dx.types.ResRet.f32 %1565, 2
  %1569 = fmul fast float %1566, %319
  %1570 = fmul fast float %1567, %322
  %1571 = fmul fast float %1568, %325
  br i1 %1564, label %1578, label %1572

; <label>:1572                                    ; preds = %1555
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = fmul fast float %1574, %1569
  %1576 = fmul fast float %1574, %1570
  %1577 = fmul fast float %1574, %1571
  br label %1578

; <label>:1578                                    ; preds = %1572, %1555
  %1579 = phi float [ %1575, %1572 ], [ %1569, %1555 ]
  %1580 = phi float [ %1576, %1572 ], [ %1570, %1555 ]
  %1581 = phi float [ %1577, %1572 ], [ %1571, %1555 ]
  %1582 = fmul fast float %1579, %1550
  %1583 = select i1 %260, float %1582, float %1579
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1580, float %1581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = select i1 %260, float 0.000000e+00, float %1579
  %1586 = select i1 %260, float %1584, float %1580
  %1587 = select i1 %260, float 0.000000e+00, float %1581
  br label %1588

; <label>:1588                                    ; preds = %1578, %1540
  %1589 = phi float [ %1585, %1578 ], [ 0.000000e+00, %1540 ]
  %1590 = phi float [ %1586, %1578 ], [ 0.000000e+00, %1540 ]
  %1591 = phi float [ %1587, %1578 ], [ 0.000000e+00, %1540 ]
  %1592 = add i32 %60, 112
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = lshr i32 %1594, 8
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = fmul fast float %1599, %1600
  %1602 = fadd fast float %1601, %1596
  %1603 = fmul fast float %1602, 0x3F70101020000000
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  br i1 %1060, label %1605, label %1613

; <label>:1605                                    ; preds = %1588
  %1606 = fsub fast float 1.000000e+00, %1241
  %1607 = fmul fast float %1606, %1051
  %1608 = fmul fast float %1606, %1052
  %1609 = fmul fast float %1606, %1053
  %1610 = fmul fast float %1606, %1048
  %1611 = fmul fast float %1606, %1049
  %1612 = fmul fast float %1606, %1050
  br label %1613

; <label>:1613                                    ; preds = %1605, %1588
  %1614 = phi float [ %1610, %1605 ], [ %1048, %1588 ]
  %1615 = phi float [ %1611, %1605 ], [ %1049, %1588 ]
  %1616 = phi float [ %1612, %1605 ], [ %1050, %1588 ]
  %1617 = phi float [ %1607, %1605 ], [ %1051, %1588 ]
  %1618 = phi float [ %1608, %1605 ], [ %1052, %1588 ]
  %1619 = phi float [ %1609, %1605 ], [ %1053, %1588 ]
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 3
  %1623 = icmp eq i32 %1622, 3
  br i1 %1623, label %1702, label %1624

; <label>:1624                                    ; preds = %1613
  %1625 = and i32 %1621, 16
  %1626 = icmp ne i32 %1625, 0
  %1627 = select i1 %1626, float %1241, float 0.000000e+00
  %1628 = icmp eq i32 %1622, 0
  br i1 %1628, label %1629, label %1657

; <label>:1629                                    ; preds = %1624
  %1630 = and i32 %1621, 64
  %1631 = icmp ne i32 %1630, 0
  %1632 = select i1 %1631, float %1241, float 0.000000e+00
  %1633 = fsub fast float %1461, %1617
  %1634 = fsub fast float %1462, %1618
  %1635 = fsub fast float %1463, %1619
  %1636 = fmul fast float %1627, %1633
  %1637 = fmul fast float %1627, %1634
  %1638 = fmul fast float %1627, %1635
  %1639 = fadd fast float %1636, %1617
  %1640 = fadd fast float %1637, %1618
  %1641 = fadd fast float %1638, %1619
  %1642 = fsub fast float %1447, %1054
  %1643 = fmul fast float %1627, %1642
  %1644 = fadd fast float %1643, %1054
  %1645 = fsub fast float %1589, %1614
  %1646 = fsub fast float %1590, %1615
  %1647 = fsub fast float %1591, %1616
  %1648 = fmul fast float %1632, %1645
  %1649 = fmul fast float %1632, %1646
  %1650 = fmul fast float %1632, %1647
  %1651 = fadd fast float %1648, %1614
  %1652 = fadd fast float %1649, %1615
  %1653 = fadd fast float %1650, %1616
  %1654 = fsub fast float %1604, %1058
  %1655 = fmul fast float %1627, %1654
  %1656 = fadd fast float %1655, %1058
  br label %1702

; <label>:1657                                    ; preds = %1624
  %1658 = icmp eq i32 %1622, 1
  br i1 %1658, label %1659, label %1672

; <label>:1659                                    ; preds = %1657
  %1660 = fadd fast float %1461, -1.000000e+00
  %1661 = fadd fast float %1462, -1.000000e+00
  %1662 = fadd fast float %1463, -1.000000e+00
  %1663 = fmul fast float %1627, %1660
  %1664 = fmul fast float %1627, %1661
  %1665 = fmul fast float %1627, %1662
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fadd fast float %1665, 1.000000e+00
  %1669 = fmul fast float %1666, %1617
  %1670 = fmul fast float %1667, %1618
  %1671 = fmul fast float %1668, %1619
  br label %1702

; <label>:1672                                    ; preds = %1657
  %1673 = icmp eq i32 %1622, 2
  br i1 %1673, label %1674, label %1702

; <label>:1674                                    ; preds = %1672
  %1675 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1462)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %1463)  ; Sqrt(value)
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1678, %1627
  %1682 = fmul fast float %1679, %1627
  %1683 = fmul fast float %1680, %1627
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fmul fast float %1684, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1617
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1617
  %1692 = fmul fast float %1685, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1618
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1618
  %1697 = fmul fast float %1686, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1619
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1619
  br label %1702

; <label>:1702                                    ; preds = %1674, %1672, %1659, %1629, %1613
  %1703 = phi float [ %1614, %1613 ], [ %1614, %1674 ], [ %1614, %1672 ], [ %1614, %1659 ], [ %1651, %1629 ]
  %1704 = phi float [ %1615, %1613 ], [ %1615, %1674 ], [ %1615, %1672 ], [ %1615, %1659 ], [ %1652, %1629 ]
  %1705 = phi float [ %1616, %1613 ], [ %1616, %1674 ], [ %1616, %1672 ], [ %1616, %1659 ], [ %1653, %1629 ]
  %1706 = phi float [ %1617, %1613 ], [ %1691, %1674 ], [ %1617, %1672 ], [ %1669, %1659 ], [ %1639, %1629 ]
  %1707 = phi float [ %1618, %1613 ], [ %1696, %1674 ], [ %1618, %1672 ], [ %1670, %1659 ], [ %1640, %1629 ]
  %1708 = phi float [ %1619, %1613 ], [ %1701, %1674 ], [ %1619, %1672 ], [ %1671, %1659 ], [ %1641, %1629 ]
  %1709 = phi float [ %1054, %1613 ], [ %1054, %1674 ], [ %1054, %1672 ], [ %1054, %1659 ], [ %1644, %1629 ]
  %1710 = phi float [ %1058, %1613 ], [ %1058, %1674 ], [ %1058, %1672 ], [ %1058, %1659 ], [ %1656, %1629 ]
  %1711 = and i32 %1621, 12
  %1712 = icmp eq i32 %1711, 12
  br i1 %1712, label %1785, label %1713

; <label>:1713                                    ; preds = %1702
  %1714 = and i32 %1621, 2097184
  %1715 = icmp eq i32 %1714, 2097184
  %1716 = select i1 %1715, float %1241, float 0.000000e+00
  %1717 = and i32 %1621, 4194336
  %1718 = icmp eq i32 %1717, 4194336
  %1719 = select i1 %1718, float %1241, float 0.000000e+00
  %1720 = and i32 %1621, 8388640
  %1721 = icmp eq i32 %1720, 8388640
  %1722 = select i1 %1721, float %1241, float 0.000000e+00
  %1723 = icmp eq i32 %1711, 0
  br i1 %1723, label %1724, label %1737

; <label>:1724                                    ; preds = %1713
  %1725 = fsub fast float %1542, %1046
  %1726 = fsub fast float %1543, %1047
  %1727 = fmul fast float %1716, %1725
  %1728 = fmul fast float %1716, %1726
  %1729 = fadd fast float %1727, %1046
  %1730 = fadd fast float %1728, %1047
  %1731 = fsub fast float %1544, %1057
  %1732 = fmul fast float %1719, %1731
  %1733 = fadd fast float %1732, %1057
  %1734 = fsub fast float %1541, %1056
  %1735 = fmul fast float %1722, %1734
  %1736 = fadd fast float %1735, %1056
  br label %1785

; <label>:1737                                    ; preds = %1713
  %1738 = icmp eq i32 %1711, 4
  br i1 %1738, label %1739, label %1771

; <label>:1739                                    ; preds = %1737
  %1740 = fmul fast float %1716, %1542
  %1741 = fmul fast float %1716, %1543
  %1742 = fadd fast float %1740, %1046
  %1743 = fadd fast float %1741, %1047
  %1744 = call float @dx.op.binary.f32(i32 36, float %1057, float %1544)  ; FMin(a,b)
  %1745 = fsub fast float %1744, %1057
  %1746 = fmul fast float %1745, %1719
  %1747 = fadd fast float %1746, %1057
  %1748 = fadd fast float %1541, %1056
  %1749 = fmul fast float %1748, 0x3FF337FAE0000000
  %1750 = fmul fast float %1056, %1056
  %1751 = fmul fast float %1541, %1541
  %1752 = fadd fast float %1751, %1750
  %1753 = fmul fast float %1752, 0x3FE5152B00000000
  %1754 = fmul fast float %1056, 0xBFCC1F85E0000000
  %1755 = fmul fast float %1754, %1541
  %1756 = fadd fast float %1755, 0xBFE1363700000000
  %1757 = fadd fast float %1756, %1749
  %1758 = fsub fast float %1757, %1753
  %1759 = fmul fast float %1748, 0x3FBA6F0D00000000
  %1760 = fmul fast float %1752, 0x3FD0432880000000
  %1761 = fmul fast float %1056, 0xBFEF110800000000
  %1762 = fmul fast float %1761, %1541
  %1763 = fadd fast float %1762, 1.000000e+00
  %1764 = fsub fast float %1763, %1759
  %1765 = fadd fast float %1764, %1760
  %1766 = fdiv fast float %1758, %1765
  %1767 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1768 = fsub fast float %1767, %1056
  %1769 = fmul fast float %1768, %1722
  %1770 = fadd fast float %1769, %1056
  br label %1785

; <label>:1771                                    ; preds = %1737
  %1772 = icmp eq i32 %1711, 8
  br i1 %1772, label %1773, label %1785

; <label>:1773                                    ; preds = %1771
  %1774 = fmul fast float %1716, %1542
  %1775 = fmul fast float %1716, %1543
  %1776 = fadd fast float %1774, %1046
  %1777 = fadd fast float %1775, %1047
  %1778 = call float @dx.op.binary.f32(i32 36, float %1057, float %1544)  ; FMin(a,b)
  %1779 = fsub fast float %1778, %1057
  %1780 = fmul fast float %1779, %1719
  %1781 = fadd fast float %1780, %1057
  %1782 = fsub fast float %1541, %1056
  %1783 = fmul fast float %1722, %1782
  %1784 = fadd fast float %1783, %1056
  br label %1785

; <label>:1785                                    ; preds = %1773, %1771, %1739, %1724, %1702, %1240, %1059, %1045
  %1786 = phi float [ %1046, %1702 ], [ %1046, %1240 ], [ %1046, %1045 ], [ %1776, %1773 ], [ %1046, %1771 ], [ %1742, %1739 ], [ %1729, %1724 ], [ %1046, %1059 ]
  %1787 = phi float [ %1047, %1702 ], [ %1047, %1240 ], [ %1047, %1045 ], [ %1777, %1773 ], [ %1047, %1771 ], [ %1743, %1739 ], [ %1730, %1724 ], [ %1047, %1059 ]
  %1788 = phi float [ %1703, %1702 ], [ %1048, %1240 ], [ %1048, %1045 ], [ %1703, %1773 ], [ %1703, %1771 ], [ %1703, %1739 ], [ %1703, %1724 ], [ %1048, %1059 ]
  %1789 = phi float [ %1704, %1702 ], [ %1049, %1240 ], [ %1049, %1045 ], [ %1704, %1773 ], [ %1704, %1771 ], [ %1704, %1739 ], [ %1704, %1724 ], [ %1049, %1059 ]
  %1790 = phi float [ %1705, %1702 ], [ %1050, %1240 ], [ %1050, %1045 ], [ %1705, %1773 ], [ %1705, %1771 ], [ %1705, %1739 ], [ %1705, %1724 ], [ %1050, %1059 ]
  %1791 = phi float [ %1706, %1702 ], [ %1051, %1240 ], [ %1051, %1045 ], [ %1706, %1773 ], [ %1706, %1771 ], [ %1706, %1739 ], [ %1706, %1724 ], [ %1051, %1059 ]
  %1792 = phi float [ %1707, %1702 ], [ %1052, %1240 ], [ %1052, %1045 ], [ %1707, %1773 ], [ %1707, %1771 ], [ %1707, %1739 ], [ %1707, %1724 ], [ %1052, %1059 ]
  %1793 = phi float [ %1708, %1702 ], [ %1053, %1240 ], [ %1053, %1045 ], [ %1708, %1773 ], [ %1708, %1771 ], [ %1708, %1739 ], [ %1708, %1724 ], [ %1053, %1059 ]
  %1794 = phi float [ %1709, %1702 ], [ %1054, %1240 ], [ %1054, %1045 ], [ %1709, %1773 ], [ %1709, %1771 ], [ %1709, %1739 ], [ %1709, %1724 ], [ %1054, %1059 ]
  %1795 = phi float [ %1056, %1702 ], [ %1056, %1240 ], [ %1056, %1045 ], [ %1784, %1773 ], [ %1056, %1771 ], [ %1770, %1739 ], [ %1736, %1724 ], [ %1056, %1059 ]
  %1796 = phi float [ %1057, %1702 ], [ %1057, %1240 ], [ %1057, %1045 ], [ %1781, %1773 ], [ %1057, %1771 ], [ %1747, %1739 ], [ %1733, %1724 ], [ %1057, %1059 ]
  %1797 = phi float [ %1710, %1702 ], [ %1058, %1240 ], [ %1058, %1045 ], [ %1710, %1773 ], [ %1710, %1771 ], [ %1710, %1739 ], [ %1710, %1724 ], [ %1058, %1059 ]
  br i1 %446, label %2524, label %1798

; <label>:1798                                    ; preds = %1785
  %1799 = icmp ult i32 %502, 3
  %1800 = add i32 %60, 56
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = add i32 %60, 60
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = or i32 %1805, %1802
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %2524, label %1808

; <label>:1808                                    ; preds = %1798
  %1809 = and i32 %1802, 262144
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %65, float 1.000000e+00
  %1812 = select i1 %1810, float %66, float 0.000000e+00
  %1813 = select i1 %1810, float %67, float 0.000000e+00
  %1814 = select i1 %1810, float %68, float 1.000000e+00
  %1815 = select i1 %1810, float %69, float %92
  %1816 = select i1 %1810, float %70, float %93
  %1817 = add i32 %60, 316
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = lshr i32 %1819, 16
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = fmul fast float %1821, 0x3F50624DE0000000
  %1823 = add i32 %60, 120
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 16
  %1827 = and i32 %1826, 255
  %1828 = lshr i32 %1825, 24
  %1829 = add i32 %60, 324
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 65535
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = lshr i32 %1831, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = add i32 %60, 64
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = lshr i32 %1838, 22
  %1840 = shl nuw nsw i32 %1839, 5
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = shl i32 %1838, 4
  %1843 = and i32 %1842, 32752
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = lshr i32 %1838, 7
  %1846 = and i32 %1845, 32752
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = fmul fast float %1849, 1.000000e+03
  %1851 = fmul fast float %396, %1850
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = fadd fast float %1852, %386
  %1854 = fmul fast float %397, %1850
  %1855 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1856 = fadd fast float %1855, %388
  %1857 = fmul fast float %1822, %1850
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = fmul fast float %1858, 0x401921FB60000000
  %1860 = fadd fast float %1859, %1841
  %1861 = call float @dx.op.unary.f32(i32 13, float %1860)  ; Sin(value)
  %1862 = call float @dx.op.unary.f32(i32 12, float %1860)  ; Cos(value)
  %1863 = fsub fast float -0.000000e+00, %1861
  %1864 = fadd fast float %1815, -5.000000e-01
  %1865 = fadd fast float %1816, -5.000000e-01
  %1866 = fmul fast float %1833, %1864
  %1867 = fmul fast float %1835, %1865
  %1868 = fadd fast float %1866, 5.000000e-01
  %1869 = fadd fast float %1867, 5.000000e-01
  %1870 = fmul fast float %1844, %1868
  %1871 = fmul fast float %1847, %1869
  %1872 = fmul fast float %1862, %1870
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1863, float %1871, float %1872)  ; FMad(a,b,c)
  %1874 = fmul fast float %1861, %1870
  %1875 = call float @dx.op.tertiary.f32(i32 46, float %1862, float %1871, float %1874)  ; FMad(a,b,c)
  %1876 = fadd fast float %1853, %1873
  %1877 = fadd fast float %1856, %1875
  %1878 = icmp ugt i32 %1827, 1
  %1879 = icmp ugt i32 %1825, 33554431
  %1880 = or i1 %1879, %1878
  br i1 %1880, label %1881, label %1906

; <label>:1881                                    ; preds = %1808
  %1882 = add i32 %60, 260
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = lshr i32 %1884, 16
  %1886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1885)  ; LegacyF16ToF32(value)
  %1887 = fmul fast float %1849, %1886
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = mul nuw nsw i32 %1827, %1828
  %1890 = uitofp i32 %1889 to float
  %1891 = fmul fast float %1888, %1890
  %1892 = call float @dx.op.unary.f32(i32 27, float %1891)  ; Round_ni(value)
  %1893 = fptoui float %1892 to i32
  %1894 = urem i32 %1893, %1827
  %1895 = udiv i32 %1893, %1828
  %1896 = call float @dx.op.unary.f32(i32 22, float %1876)  ; Frc(value)
  %1897 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1898 = uitofp i32 %1894 to float
  %1899 = uitofp i32 %1895 to float
  %1900 = fadd fast float %1896, %1898
  %1901 = fadd fast float %1897, %1899
  %1902 = uitofp i32 %1827 to float
  %1903 = uitofp i32 %1828 to float
  %1904 = fdiv fast float %1900, %1902
  %1905 = fdiv fast float %1901, %1903
  br label %1906

; <label>:1906                                    ; preds = %1881, %1808
  %1907 = phi float [ %1904, %1881 ], [ %1876, %1808 ]
  %1908 = phi float [ %1905, %1881 ], [ %1877, %1808 ]
  %1909 = and i32 %1802, 256
  %1910 = icmp eq i32 %1909, 0
  br i1 %1910, label %1957, label %1911

; <label>:1911                                    ; preds = %1906
  %1912 = add i32 %60, 448
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %1914, 0
  %1916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1916, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = add i32 %60, 132
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = shl i32 %1921, 4
  %1923 = and i32 %1922, 32752
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = lshr i32 %1921, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = fsub fast float 1.000000e+00, %498
  %1929 = call float @dx.op.binary.f32(i32 35, float %1928, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1930 = bitcast float %498 to i32
  %1931 = sitofp i32 %1930 to float
  %1932 = fadd fast float %1931, 0xC1CFBF8940000000
  %1933 = fmul fast float %1927, %1932
  %1934 = fadd fast float %1933, 0x41CFBF8940000000
  %1935 = fptosi float %1934 to i32
  %1936 = bitcast i32 %1935 to float
  %1937 = bitcast float %1929 to i32
  %1938 = sitofp i32 %1937 to float
  %1939 = fadd fast float %1938, 0xC1CFBF8940000000
  %1940 = fmul fast float %1939, %1927
  %1941 = fadd fast float %1940, 0x41CFBF8940000000
  %1942 = fptosi float %1941 to i32
  %1943 = bitcast i32 %1942 to float
  %1944 = fmul fast float %1936, %1924
  %1945 = fmul fast float %1943, %1924
  %1946 = fsub fast float %1929, %1944
  %1947 = fadd fast float %1945, %1929
  %1948 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1949 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1950 = fsub fast float %1918, %1948
  %1951 = fsub fast float %1949, %1948
  %1952 = bitcast float %1951 to i32
  %1953 = sub nsw i32 2129859010, %1952
  %1954 = bitcast i32 %1953 to float
  %1955 = fmul fast float %1954, %1950
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  br label %1957

; <label>:1957                                    ; preds = %1911, %1906
  %1958 = phi float [ %1956, %1911 ], [ %498, %1906 ]
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 128
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %1979, label %1963

; <label>:1963                                    ; preds = %1957
  %1964 = add i32 %60, 432
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %1966, 0
  %1968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1968, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = and i32 %1972, 524288
  %1974 = icmp ne i32 %1973, 0
  %1975 = fcmp fast ogt float %1970, 0x3FE0101020000000
  %1976 = select i1 %1975, float 1.000000e+00, float 0.000000e+00
  %1977 = select i1 %1974, float %1976, float %1970
  %1978 = fmul fast float %1977, %1958
  br label %1979

; <label>:1979                                    ; preds = %1963, %1957
  %1980 = phi float [ %1978, %1963 ], [ %1958, %1957 ]
  %1981 = fcmp fast ult float %1980, 0x3F70101020000000
  br i1 %1981, label %2524, label %1982

; <label>:1982                                    ; preds = %1979
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 16
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2185, label %1987

; <label>:1987                                    ; preds = %1982
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %60, 384
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %1992, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1994, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.ResRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.ResRet.f32 %1995, 2
  %1999 = extractvalue %dx.types.ResRet.f32 %1995, 3
  %2000 = and i32 %1989, 255
  %2001 = uitofp i32 %2000 to float
  %2002 = lshr i32 %1989, 8
  %2003 = and i32 %2002, 255
  %2004 = uitofp i32 %2003 to float
  %2005 = fmul fast float %1999, %2001
  %2006 = fadd fast float %2005, %2004
  %2007 = fmul fast float %2006, 0x3F70101000000000
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 512
  %2011 = icmp eq i32 %2010, 0
  br i1 %2011, label %2020, label %2012

; <label>:2012                                    ; preds = %1987
  %2013 = add i32 %60, 468
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = add i32 %2015, 0
  %2017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2016, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2018 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2017, %dx.types.Handle %111, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  br label %2020

; <label>:2020                                    ; preds = %2012, %1987
  %2021 = phi float [ %2019, %2012 ], [ 1.000000e+00, %1987 ]
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 33554432
  %2025 = icmp eq i32 %2024, 0
  br i1 %2025, label %2132, label %2026

; <label>:2026                                    ; preds = %2020
  %2027 = add i32 %60, 256
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 65535
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = lshr i32 %2029, 16
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = add i32 %60, 260
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = lshr i32 %2040, 24
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %2042, 0x3F70101020000000
  %2044 = and i32 %2040, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = fmul fast float %2045, 0x3F70101020000000
  %2047 = lshr i32 %2040, 8
  %2048 = and i32 %2047, 255
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = lshr i32 %2040, 16
  %2052 = and i32 %2051, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = fmul fast float %2053, 0x3F70101020000000
  %2055 = add i32 %60, 252
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 24
  %2059 = uitofp i32 %2058 to float
  %2060 = fmul fast float %2059, 0x3F70101020000000
  %2061 = and i32 %2057, 255
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = lshr i32 %2057, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = lshr i32 %2057, 16
  %2069 = and i32 %2068, 255
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2070, 0x3F70101020000000
  %2072 = bitcast float %1996 to i32
  %2073 = ashr i32 %2072, 1
  %2074 = sub nsw i32 1597463174, %2073
  %2075 = bitcast i32 %2074 to float
  %2076 = fmul fast float %1996, 5.000000e-01
  %2077 = fmul fast float %2075, %2075
  %2078 = fmul fast float %2077, %2076
  %2079 = fsub fast float 1.500000e+00, %2078
  %2080 = fmul fast float %2075, %1996
  %2081 = fmul fast float %2080, %2079
  %2082 = bitcast float %1997 to i32
  %2083 = ashr i32 %2082, 1
  %2084 = sub nsw i32 1597463174, %2083
  %2085 = bitcast i32 %2084 to float
  %2086 = fmul fast float %1997, 5.000000e-01
  %2087 = fmul fast float %2085, %2085
  %2088 = fmul fast float %2087, %2086
  %2089 = fsub fast float 1.500000e+00, %2088
  %2090 = fmul fast float %2085, %1997
  %2091 = fmul fast float %2090, %2089
  %2092 = bitcast float %1998 to i32
  %2093 = ashr i32 %2092, 1
  %2094 = sub nsw i32 1597463174, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %1998, 5.000000e-01
  %2097 = fmul fast float %2095, %2095
  %2098 = fmul fast float %2097, %2096
  %2099 = fsub fast float 1.500000e+00, %2098
  %2100 = fmul fast float %2095, %1998
  %2101 = fmul fast float %2100, %2099
  %2102 = fsub fast float %2081, %2063
  %2103 = fsub fast float %2091, %2067
  %2104 = fsub fast float %2101, %2071
  %2105 = fmul fast float %2102, %2031
  %2106 = fmul fast float %2103, %2033
  %2107 = fmul fast float %2104, %2038
  %2108 = fadd fast float %2105, %2046
  %2109 = fadd fast float %2106, %2050
  %2110 = fadd fast float %2107, %2054
  %2111 = call float @dx.op.unary.f32(i32 7, float %2108)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2113 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2114 = fmul fast float %2111, %2111
  %2115 = fmul fast float %2112, %2112
  %2116 = fmul fast float %2113, %2113
  %2117 = fsub fast float %2114, %1996
  %2118 = fsub fast float %2115, %1997
  %2119 = fsub fast float %2116, %1998
  %2120 = fmul fast float %2117, %2021
  %2121 = fmul fast float %2118, %2021
  %2122 = fmul fast float %2119, %2021
  %2123 = fadd fast float %2120, %1996
  %2124 = fadd fast float %2121, %1997
  %2125 = fadd fast float %2122, %1998
  %2126 = fadd fast float %2043, %2007
  %2127 = fsub fast float %2126, %2060
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fsub fast float %2128, %2007
  %2130 = fmul fast float %2129, %2021
  %2131 = fadd fast float %2130, %2007
  br label %2185

; <label>:2132                                    ; preds = %2020
  %2133 = and i32 %2023, 134217728
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2169, label %2135

; <label>:2135                                    ; preds = %2132
  %2136 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2137 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2138 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2139 = fadd fast float %2136, -5.000000e-01
  %2140 = fadd fast float %2137, -5.000000e-01
  %2141 = fadd fast float %2138, -5.000000e-01
  %2142 = fmul fast float %2139, %2021
  %2143 = fmul fast float %2140, %2021
  %2144 = fmul fast float %2141, %2021
  %2145 = fadd fast float %2142, 5.000000e-01
  %2146 = fadd fast float %2143, 5.000000e-01
  %2147 = fadd fast float %2144, 5.000000e-01
  %2148 = call float @dx.op.unary.f32(i32 24, float %1996)  ; Sqrt(value)
  %2149 = call float @dx.op.unary.f32(i32 24, float %1997)  ; Sqrt(value)
  %2150 = call float @dx.op.unary.f32(i32 24, float %1998)  ; Sqrt(value)
  %2151 = fmul fast float %2145, 2.000000e+00
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fmul fast float %2152, %2148
  %2154 = fadd fast float %2153, %2151
  %2155 = fmul fast float %2154, %2148
  %2156 = fmul fast float %2146, 2.000000e+00
  %2157 = fsub fast float 1.000000e+00, %2156
  %2158 = fmul fast float %2157, %2149
  %2159 = fadd fast float %2158, %2156
  %2160 = fmul fast float %2159, %2149
  %2161 = fmul fast float %2147, 2.000000e+00
  %2162 = fsub fast float 1.000000e+00, %2161
  %2163 = fmul fast float %2162, %2150
  %2164 = fadd fast float %2163, %2161
  %2165 = fmul fast float %2164, %2150
  %2166 = fmul fast float %2155, %2155
  %2167 = fmul fast float %2160, %2160
  %2168 = fmul fast float %2165, %2165
  br label %2185

; <label>:2169                                    ; preds = %2132
  %2170 = fmul fast float %373, %373
  %2171 = fmul fast float %377, %377
  %2172 = fmul fast float %381, %381
  %2173 = fadd fast float %2170, -1.000000e+00
  %2174 = fadd fast float %2171, -1.000000e+00
  %2175 = fadd fast float %2172, -1.000000e+00
  %2176 = fmul fast float %2021, %2173
  %2177 = fmul fast float %2021, %2174
  %2178 = fmul fast float %2021, %2175
  %2179 = fadd fast float %2176, 1.000000e+00
  %2180 = fadd fast float %2177, 1.000000e+00
  %2181 = fadd fast float %2178, 1.000000e+00
  %2182 = fmul fast float %2179, %1996
  %2183 = fmul fast float %2180, %1997
  %2184 = fmul fast float %2181, %1998
  br label %2185

; <label>:2185                                    ; preds = %2169, %2135, %2026, %1982
  %2186 = phi float [ %2131, %2026 ], [ %2007, %2135 ], [ %2007, %2169 ], [ 0x3FA23C0BE0000000, %1982 ]
  %2187 = phi float [ %2123, %2026 ], [ %2166, %2135 ], [ %2182, %2169 ], [ 1.000000e+00, %1982 ]
  %2188 = phi float [ %2124, %2026 ], [ %2167, %2135 ], [ %2183, %2169 ], [ 1.000000e+00, %1982 ]
  %2189 = phi float [ %2125, %2026 ], [ %2168, %2135 ], [ %2184, %2169 ], [ 1.000000e+00, %1982 ]
  %2190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2191 = extractvalue %dx.types.CBufRet.i32 %2190, 1
  %2192 = and i32 %2191, 1
  %2193 = icmp ne i32 %2192, 0
  %2194 = add i32 %60, 356
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = and i32 %2196, 32
  %2198 = icmp ne i32 %2197, 0
  %2199 = and i1 %2193, %2198
  %2200 = select i1 %2199, float 1.000000e+00, float %2187
  %2201 = select i1 %2199, float 0x3FD3333340000000, float %2188
  %2202 = select i1 %2199, float 0x3FD3333340000000, float %2189
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 32
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2279, label %2207

; <label>:2207                                    ; preds = %2185
  %2208 = add i32 %60, 124
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = add i32 %60, 400
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  %2218 = extractvalue %dx.types.ResRet.f32 %2216, 1
  %2219 = extractvalue %dx.types.ResRet.f32 %2216, 2
  %2220 = extractvalue %dx.types.ResRet.f32 %2216, 3
  %2221 = and i32 %2210, 255
  %2222 = uitofp i32 %2221 to float
  %2223 = lshr i32 %2210, 8
  %2224 = and i32 %2223, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = lshr i32 %2210, 16
  %2227 = and i32 %2226, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = fmul fast float %2228, 0x3F70101000000000
  %2230 = fmul fast float %2217, %2222
  %2231 = fadd fast float %2230, %2225
  %2232 = fmul fast float %2231, 0x3F70101000000000
  %2233 = fadd fast float %2218, -5.000000e-01
  %2234 = fadd fast float %2220, -5.000000e-01
  %2235 = fmul fast float %2233, %2229
  %2236 = fmul fast float %2234, %2229
  %2237 = fadd fast float %2235, 5.000000e-01
  %2238 = fadd fast float %2236, 5.000000e-01
  %2239 = fmul fast float %2237, 2.000000e+00
  %2240 = fadd fast float %2239, -1.000000e+00
  %2241 = fmul fast float %2238, 2.000000e+00
  %2242 = fadd fast float %2241, -1.000000e+00
  %2243 = fadd fast float %2240, %2242
  %2244 = fmul fast float %2243, 5.000000e-01
  %2245 = fsub fast float %2240, %2242
  %2246 = fmul fast float %2245, 5.000000e-01
  %2247 = call float @dx.op.unary.f32(i32 6, float %2244)  ; FAbs(value)
  %2248 = fsub fast float 1.000000e+00, %2247
  %2249 = call float @dx.op.unary.f32(i32 6, float %2246)  ; FAbs(value)
  %2250 = fsub fast float %2248, %2249
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2246, float %2250, float %2244, float %2246, float %2250)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = call float @dx.op.unary.f32(i32 25, float %2251)  ; Rsqrt(value)
  %2253 = fmul fast float %2244, %2252
  %2254 = fmul fast float %2246, %2252
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 67108864
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2275, label %2259

; <label>:2259                                    ; preds = %2207
  %2260 = add i32 %60, 312
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = and i32 %2262, 65535
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 65535
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = lshr i32 %2262, 16
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = fsub fast float %2232, %2270
  %2272 = fmul fast float %2271, %2264
  %2273 = fadd fast float %2272, %2268
  %2274 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  br label %2275

; <label>:2275                                    ; preds = %2259, %2207
  %2276 = phi float [ %2274, %2259 ], [ %2232, %2207 ]
  %2277 = call float @dx.op.dot2.f32(i32 54, float %2253, float %2254, float %1811, float %1812)  ; Dot2(ax,ay,bx,by)
  %2278 = call float @dx.op.dot2.f32(i32 54, float %2253, float %2254, float %1813, float %1814)  ; Dot2(ax,ay,bx,by)
  br label %2279

; <label>:2279                                    ; preds = %2275, %2185
  %2280 = phi float [ %2276, %2275 ], [ 0x3FD6666660000000, %2185 ]
  %2281 = phi float [ %2277, %2275 ], [ 0.000000e+00, %2185 ]
  %2282 = phi float [ %2278, %2275 ], [ 0.000000e+00, %2185 ]
  %2283 = phi float [ %2219, %2275 ], [ 1.000000e+00, %2185 ]
  %2284 = add i32 %60, 192
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = lshr i32 %2286, 22
  %2288 = shl nuw nsw i32 %2287, 5
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 64
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2327, label %2294

; <label>:2294                                    ; preds = %2279
  %2295 = add i32 %60, 416
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %2297, 0
  %2299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = and i32 %2301, 131072
  %2303 = icmp eq i32 %2302, 0
  %2304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2299, %dx.types.Handle %110, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2305 = extractvalue %dx.types.ResRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.ResRet.f32 %2304, 1
  %2307 = extractvalue %dx.types.ResRet.f32 %2304, 2
  %2308 = fmul fast float %2305, %361
  %2309 = fmul fast float %2306, %364
  %2310 = fmul fast float %2307, %367
  br i1 %2303, label %2317, label %2311

; <label>:2311                                    ; preds = %2294
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = fmul fast float %2313, %2308
  %2315 = fmul fast float %2313, %2309
  %2316 = fmul fast float %2313, %2310
  br label %2317

; <label>:2317                                    ; preds = %2311, %2294
  %2318 = phi float [ %2314, %2311 ], [ %2308, %2294 ]
  %2319 = phi float [ %2315, %2311 ], [ %2309, %2294 ]
  %2320 = phi float [ %2316, %2311 ], [ %2310, %2294 ]
  %2321 = fmul fast float %2318, %2289
  %2322 = select i1 %260, float %2321, float %2318
  %2323 = call float @dx.op.dot3.f32(i32 55, float %2322, float %2319, float %2320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2324 = select i1 %260, float 0.000000e+00, float %2318
  %2325 = select i1 %260, float %2323, float %2319
  %2326 = select i1 %260, float 0.000000e+00, float %2320
  br label %2327

; <label>:2327                                    ; preds = %2317, %2279
  %2328 = phi float [ %2324, %2317 ], [ 0.000000e+00, %2279 ]
  %2329 = phi float [ %2325, %2317 ], [ 0.000000e+00, %2279 ]
  %2330 = phi float [ %2326, %2317 ], [ 0.000000e+00, %2279 ]
  %2331 = add i32 %60, 128
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 255
  %2335 = uitofp i32 %2334 to float
  %2336 = lshr i32 %2333, 8
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = call float @dx.op.dot3.f32(i32 55, float %2200, float %2201, float %2202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2340 = fmul fast float %2338, %2339
  %2341 = fadd fast float %2340, %2335
  %2342 = fmul fast float %2341, 0x3F70101020000000
  %2343 = call float @dx.op.unary.f32(i32 7, float %2342)  ; Saturate(value)
  br i1 %1799, label %2344, label %2352

; <label>:2344                                    ; preds = %2327
  %2345 = fsub fast float 1.000000e+00, %1980
  %2346 = fmul fast float %2345, %1791
  %2347 = fmul fast float %2345, %1792
  %2348 = fmul fast float %2345, %1793
  %2349 = fmul fast float %2345, %1788
  %2350 = fmul fast float %2345, %1789
  %2351 = fmul fast float %2345, %1790
  br label %2352

; <label>:2352                                    ; preds = %2344, %2327
  %2353 = phi float [ %2349, %2344 ], [ %1788, %2327 ]
  %2354 = phi float [ %2350, %2344 ], [ %1789, %2327 ]
  %2355 = phi float [ %2351, %2344 ], [ %1790, %2327 ]
  %2356 = phi float [ %2346, %2344 ], [ %1791, %2327 ]
  %2357 = phi float [ %2347, %2344 ], [ %1792, %2327 ]
  %2358 = phi float [ %2348, %2344 ], [ %1793, %2327 ]
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = and i32 %2360, 3
  %2362 = icmp eq i32 %2361, 3
  br i1 %2362, label %2441, label %2363

; <label>:2363                                    ; preds = %2352
  %2364 = and i32 %2360, 16
  %2365 = icmp ne i32 %2364, 0
  %2366 = select i1 %2365, float %1980, float 0.000000e+00
  %2367 = icmp eq i32 %2361, 0
  br i1 %2367, label %2368, label %2396

; <label>:2368                                    ; preds = %2363
  %2369 = and i32 %2360, 64
  %2370 = icmp ne i32 %2369, 0
  %2371 = select i1 %2370, float %1980, float 0.000000e+00
  %2372 = fsub fast float %2200, %2356
  %2373 = fsub fast float %2201, %2357
  %2374 = fsub fast float %2202, %2358
  %2375 = fmul fast float %2366, %2372
  %2376 = fmul fast float %2366, %2373
  %2377 = fmul fast float %2366, %2374
  %2378 = fadd fast float %2375, %2356
  %2379 = fadd fast float %2376, %2357
  %2380 = fadd fast float %2377, %2358
  %2381 = fsub fast float %2186, %1794
  %2382 = fmul fast float %2366, %2381
  %2383 = fadd fast float %2382, %1794
  %2384 = fsub fast float %2328, %2353
  %2385 = fsub fast float %2329, %2354
  %2386 = fsub fast float %2330, %2355
  %2387 = fmul fast float %2371, %2384
  %2388 = fmul fast float %2371, %2385
  %2389 = fmul fast float %2371, %2386
  %2390 = fadd fast float %2387, %2353
  %2391 = fadd fast float %2388, %2354
  %2392 = fadd fast float %2389, %2355
  %2393 = fsub fast float %2343, %1797
  %2394 = fmul fast float %2366, %2393
  %2395 = fadd fast float %2394, %1797
  br label %2441

; <label>:2396                                    ; preds = %2363
  %2397 = icmp eq i32 %2361, 1
  br i1 %2397, label %2398, label %2411

; <label>:2398                                    ; preds = %2396
  %2399 = fadd fast float %2200, -1.000000e+00
  %2400 = fadd fast float %2201, -1.000000e+00
  %2401 = fadd fast float %2202, -1.000000e+00
  %2402 = fmul fast float %2366, %2399
  %2403 = fmul fast float %2366, %2400
  %2404 = fmul fast float %2366, %2401
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fmul fast float %2405, %2356
  %2409 = fmul fast float %2406, %2357
  %2410 = fmul fast float %2407, %2358
  br label %2441

; <label>:2411                                    ; preds = %2396
  %2412 = icmp eq i32 %2361, 2
  br i1 %2412, label %2413, label %2441

; <label>:2413                                    ; preds = %2411
  %2414 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2415 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2416 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2417 = fadd fast float %2414, -5.000000e-01
  %2418 = fadd fast float %2415, -5.000000e-01
  %2419 = fadd fast float %2416, -5.000000e-01
  %2420 = fmul fast float %2417, %2366
  %2421 = fmul fast float %2418, %2366
  %2422 = fmul fast float %2419, %2366
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fadd fast float %2421, 5.000000e-01
  %2425 = fadd fast float %2422, 5.000000e-01
  %2426 = fmul fast float %2423, 2.000000e+00
  %2427 = fsub fast float 1.000000e+00, %2426
  %2428 = fmul fast float %2427, %2356
  %2429 = fadd fast float %2428, %2426
  %2430 = fmul fast float %2429, %2356
  %2431 = fmul fast float %2424, 2.000000e+00
  %2432 = fsub fast float 1.000000e+00, %2431
  %2433 = fmul fast float %2432, %2357
  %2434 = fadd fast float %2433, %2431
  %2435 = fmul fast float %2434, %2357
  %2436 = fmul fast float %2425, 2.000000e+00
  %2437 = fsub fast float 1.000000e+00, %2436
  %2438 = fmul fast float %2437, %2358
  %2439 = fadd fast float %2438, %2436
  %2440 = fmul fast float %2439, %2358
  br label %2441

; <label>:2441                                    ; preds = %2413, %2411, %2398, %2368, %2352
  %2442 = phi float [ %2353, %2352 ], [ %2353, %2413 ], [ %2353, %2411 ], [ %2353, %2398 ], [ %2390, %2368 ]
  %2443 = phi float [ %2354, %2352 ], [ %2354, %2413 ], [ %2354, %2411 ], [ %2354, %2398 ], [ %2391, %2368 ]
  %2444 = phi float [ %2355, %2352 ], [ %2355, %2413 ], [ %2355, %2411 ], [ %2355, %2398 ], [ %2392, %2368 ]
  %2445 = phi float [ %2356, %2352 ], [ %2430, %2413 ], [ %2356, %2411 ], [ %2408, %2398 ], [ %2378, %2368 ]
  %2446 = phi float [ %2357, %2352 ], [ %2435, %2413 ], [ %2357, %2411 ], [ %2409, %2398 ], [ %2379, %2368 ]
  %2447 = phi float [ %2358, %2352 ], [ %2440, %2413 ], [ %2358, %2411 ], [ %2410, %2398 ], [ %2380, %2368 ]
  %2448 = phi float [ %1794, %2352 ], [ %1794, %2413 ], [ %1794, %2411 ], [ %1794, %2398 ], [ %2383, %2368 ]
  %2449 = phi float [ %1797, %2352 ], [ %1797, %2413 ], [ %1797, %2411 ], [ %1797, %2398 ], [ %2395, %2368 ]
  %2450 = and i32 %2360, 12
  %2451 = icmp eq i32 %2450, 12
  br i1 %2451, label %2524, label %2452

; <label>:2452                                    ; preds = %2441
  %2453 = and i32 %2360, 2097184
  %2454 = icmp eq i32 %2453, 2097184
  %2455 = select i1 %2454, float %1980, float 0.000000e+00
  %2456 = and i32 %2360, 4194336
  %2457 = icmp eq i32 %2456, 4194336
  %2458 = select i1 %2457, float %1980, float 0.000000e+00
  %2459 = and i32 %2360, 8388640
  %2460 = icmp eq i32 %2459, 8388640
  %2461 = select i1 %2460, float %1980, float 0.000000e+00
  %2462 = icmp eq i32 %2450, 0
  br i1 %2462, label %2463, label %2476

; <label>:2463                                    ; preds = %2452
  %2464 = fsub fast float %2281, %1786
  %2465 = fsub fast float %2282, %1787
  %2466 = fmul fast float %2455, %2464
  %2467 = fmul fast float %2455, %2465
  %2468 = fadd fast float %2466, %1786
  %2469 = fadd fast float %2467, %1787
  %2470 = fsub fast float %2283, %1796
  %2471 = fmul fast float %2458, %2470
  %2472 = fadd fast float %2471, %1796
  %2473 = fsub fast float %2280, %1795
  %2474 = fmul fast float %2461, %2473
  %2475 = fadd fast float %2474, %1795
  br label %2524

; <label>:2476                                    ; preds = %2452
  %2477 = icmp eq i32 %2450, 4
  br i1 %2477, label %2478, label %2510

; <label>:2478                                    ; preds = %2476
  %2479 = fmul fast float %2455, %2281
  %2480 = fmul fast float %2455, %2282
  %2481 = fadd fast float %2479, %1786
  %2482 = fadd fast float %2480, %1787
  %2483 = call float @dx.op.binary.f32(i32 36, float %1796, float %2283)  ; FMin(a,b)
  %2484 = fsub fast float %2483, %1796
  %2485 = fmul fast float %2484, %2458
  %2486 = fadd fast float %2485, %1796
  %2487 = fadd fast float %2280, %1795
  %2488 = fmul fast float %2487, 0x3FF337FAE0000000
  %2489 = fmul fast float %1795, %1795
  %2490 = fmul fast float %2280, %2280
  %2491 = fadd fast float %2490, %2489
  %2492 = fmul fast float %2491, 0x3FE5152B00000000
  %2493 = fmul fast float %1795, 0xBFCC1F85E0000000
  %2494 = fmul fast float %2493, %2280
  %2495 = fadd fast float %2494, 0xBFE1363700000000
  %2496 = fadd fast float %2495, %2488
  %2497 = fsub fast float %2496, %2492
  %2498 = fmul fast float %2487, 0x3FBA6F0D00000000
  %2499 = fmul fast float %2491, 0x3FD0432880000000
  %2500 = fmul fast float %1795, 0xBFEF110800000000
  %2501 = fmul fast float %2500, %2280
  %2502 = fadd fast float %2501, 1.000000e+00
  %2503 = fsub fast float %2502, %2498
  %2504 = fadd fast float %2503, %2499
  %2505 = fdiv fast float %2497, %2504
  %2506 = call float @dx.op.unary.f32(i32 7, float %2505)  ; Saturate(value)
  %2507 = fsub fast float %2506, %1795
  %2508 = fmul fast float %2507, %2461
  %2509 = fadd fast float %2508, %1795
  br label %2524

; <label>:2510                                    ; preds = %2476
  %2511 = icmp eq i32 %2450, 8
  br i1 %2511, label %2512, label %2524

; <label>:2512                                    ; preds = %2510
  %2513 = fmul fast float %2455, %2281
  %2514 = fmul fast float %2455, %2282
  %2515 = fadd fast float %2513, %1786
  %2516 = fadd fast float %2514, %1787
  %2517 = call float @dx.op.binary.f32(i32 36, float %1796, float %2283)  ; FMin(a,b)
  %2518 = fsub fast float %2517, %1796
  %2519 = fmul fast float %2518, %2458
  %2520 = fadd fast float %2519, %1796
  %2521 = fsub fast float %2280, %1795
  %2522 = fmul fast float %2461, %2521
  %2523 = fadd fast float %2522, %1795
  br label %2524

; <label>:2524                                    ; preds = %2512, %2510, %2478, %2463, %2441, %1979, %1798, %1785
  %2525 = phi float [ %1786, %2441 ], [ %1786, %1979 ], [ %1786, %1785 ], [ %2515, %2512 ], [ %1786, %2510 ], [ %2481, %2478 ], [ %2468, %2463 ], [ %1786, %1798 ]
  %2526 = phi float [ %1787, %2441 ], [ %1787, %1979 ], [ %1787, %1785 ], [ %2516, %2512 ], [ %1787, %2510 ], [ %2482, %2478 ], [ %2469, %2463 ], [ %1787, %1798 ]
  %2527 = phi float [ %2442, %2441 ], [ %1788, %1979 ], [ %1788, %1785 ], [ %2442, %2512 ], [ %2442, %2510 ], [ %2442, %2478 ], [ %2442, %2463 ], [ %1788, %1798 ]
  %2528 = phi float [ %2443, %2441 ], [ %1789, %1979 ], [ %1789, %1785 ], [ %2443, %2512 ], [ %2443, %2510 ], [ %2443, %2478 ], [ %2443, %2463 ], [ %1789, %1798 ]
  %2529 = phi float [ %2444, %2441 ], [ %1790, %1979 ], [ %1790, %1785 ], [ %2444, %2512 ], [ %2444, %2510 ], [ %2444, %2478 ], [ %2444, %2463 ], [ %1790, %1798 ]
  %2530 = phi float [ %2445, %2441 ], [ %1791, %1979 ], [ %1791, %1785 ], [ %2445, %2512 ], [ %2445, %2510 ], [ %2445, %2478 ], [ %2445, %2463 ], [ %1791, %1798 ]
  %2531 = phi float [ %2446, %2441 ], [ %1792, %1979 ], [ %1792, %1785 ], [ %2446, %2512 ], [ %2446, %2510 ], [ %2446, %2478 ], [ %2446, %2463 ], [ %1792, %1798 ]
  %2532 = phi float [ %2447, %2441 ], [ %1793, %1979 ], [ %1793, %1785 ], [ %2447, %2512 ], [ %2447, %2510 ], [ %2447, %2478 ], [ %2447, %2463 ], [ %1793, %1798 ]
  %2533 = phi float [ %2448, %2441 ], [ %1794, %1979 ], [ %1794, %1785 ], [ %2448, %2512 ], [ %2448, %2510 ], [ %2448, %2478 ], [ %2448, %2463 ], [ %1794, %1798 ]
  %2534 = phi float [ %1795, %2441 ], [ %1795, %1979 ], [ %1795, %1785 ], [ %2523, %2512 ], [ %1795, %2510 ], [ %2509, %2478 ], [ %2475, %2463 ], [ %1795, %1798 ]
  %2535 = phi float [ %1796, %2441 ], [ %1796, %1979 ], [ %1796, %1785 ], [ %2520, %2512 ], [ %1796, %2510 ], [ %2486, %2478 ], [ %2472, %2463 ], [ %1796, %1798 ]
  %2536 = phi float [ %2449, %2441 ], [ %1797, %1979 ], [ %1797, %1785 ], [ %2449, %2512 ], [ %2449, %2510 ], [ %2449, %2478 ], [ %2449, %2463 ], [ %1797, %1798 ]
  br i1 %448, label %3263, label %2537

; <label>:2537                                    ; preds = %2524
  %2538 = icmp ult i32 %502, 4
  %2539 = add i32 %60, 72
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %60, 76
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = or i32 %2544, %2541
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %3263, label %2547

; <label>:2547                                    ; preds = %2537
  %2548 = and i32 %2541, 262144
  %2549 = icmp ne i32 %2548, 0
  %2550 = select i1 %2549, float %65, float 1.000000e+00
  %2551 = select i1 %2549, float %66, float 0.000000e+00
  %2552 = select i1 %2549, float %67, float 0.000000e+00
  %2553 = select i1 %2549, float %68, float 1.000000e+00
  %2554 = select i1 %2549, float %69, float %92
  %2555 = select i1 %2549, float %70, float %93
  %2556 = add i32 %60, 332
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = lshr i32 %2558, 16
  %2560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2559)  ; LegacyF16ToF32(value)
  %2561 = fmul fast float %2560, 0x3F50624DE0000000
  %2562 = add i32 %60, 136
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = lshr i32 %2564, 16
  %2566 = and i32 %2565, 255
  %2567 = lshr i32 %2564, 24
  %2568 = add i32 %60, 340
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 65535
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = lshr i32 %2570, 16
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = add i32 %60, 80
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = lshr i32 %2577, 22
  %2579 = shl nuw nsw i32 %2578, 5
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = shl i32 %2577, 4
  %2582 = and i32 %2581, 32752
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = lshr i32 %2577, 7
  %2585 = and i32 %2584, 32752
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 3
  %2589 = fmul fast float %2588, 1.000000e+03
  %2590 = fmul fast float %438, %2589
  %2591 = call float @dx.op.unary.f32(i32 22, float %2590)  ; Frc(value)
  %2592 = fadd fast float %2591, %428
  %2593 = fmul fast float %439, %2589
  %2594 = call float @dx.op.unary.f32(i32 22, float %2593)  ; Frc(value)
  %2595 = fadd fast float %2594, %430
  %2596 = fmul fast float %2561, %2589
  %2597 = call float @dx.op.unary.f32(i32 22, float %2596)  ; Frc(value)
  %2598 = fmul fast float %2597, 0x401921FB60000000
  %2599 = fadd fast float %2598, %2580
  %2600 = call float @dx.op.unary.f32(i32 13, float %2599)  ; Sin(value)
  %2601 = call float @dx.op.unary.f32(i32 12, float %2599)  ; Cos(value)
  %2602 = fsub fast float -0.000000e+00, %2600
  %2603 = fadd fast float %2554, -5.000000e-01
  %2604 = fadd fast float %2555, -5.000000e-01
  %2605 = fmul fast float %2572, %2603
  %2606 = fmul fast float %2574, %2604
  %2607 = fadd fast float %2605, 5.000000e-01
  %2608 = fadd fast float %2606, 5.000000e-01
  %2609 = fmul fast float %2583, %2607
  %2610 = fmul fast float %2586, %2608
  %2611 = fmul fast float %2601, %2609
  %2612 = call float @dx.op.tertiary.f32(i32 46, float %2602, float %2610, float %2611)  ; FMad(a,b,c)
  %2613 = fmul fast float %2600, %2609
  %2614 = call float @dx.op.tertiary.f32(i32 46, float %2601, float %2610, float %2613)  ; FMad(a,b,c)
  %2615 = fadd fast float %2592, %2612
  %2616 = fadd fast float %2595, %2614
  %2617 = icmp ugt i32 %2566, 1
  %2618 = icmp ugt i32 %2564, 33554431
  %2619 = or i1 %2618, %2617
  br i1 %2619, label %2620, label %2645

; <label>:2620                                    ; preds = %2547
  %2621 = add i32 %60, 276
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = lshr i32 %2623, 16
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = fmul fast float %2588, %2625
  %2627 = call float @dx.op.unary.f32(i32 22, float %2626)  ; Frc(value)
  %2628 = mul nuw nsw i32 %2566, %2567
  %2629 = uitofp i32 %2628 to float
  %2630 = fmul fast float %2627, %2629
  %2631 = call float @dx.op.unary.f32(i32 27, float %2630)  ; Round_ni(value)
  %2632 = fptoui float %2631 to i32
  %2633 = urem i32 %2632, %2566
  %2634 = udiv i32 %2632, %2567
  %2635 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2636 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2637 = uitofp i32 %2633 to float
  %2638 = uitofp i32 %2634 to float
  %2639 = fadd fast float %2635, %2637
  %2640 = fadd fast float %2636, %2638
  %2641 = uitofp i32 %2566 to float
  %2642 = uitofp i32 %2567 to float
  %2643 = fdiv fast float %2639, %2641
  %2644 = fdiv fast float %2640, %2642
  br label %2645

; <label>:2645                                    ; preds = %2620, %2547
  %2646 = phi float [ %2643, %2620 ], [ %2615, %2547 ]
  %2647 = phi float [ %2644, %2620 ], [ %2616, %2547 ]
  %2648 = and i32 %2541, 256
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2696, label %2650

; <label>:2650                                    ; preds = %2645
  %2651 = add i32 %60, 452
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %2653, 0
  %2655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2655, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2657 = extractvalue %dx.types.ResRet.f32 %2656, 0
  %2658 = add i32 %60, 148
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = shl i32 %2660, 4
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = lshr i32 %2660, 7
  %2665 = and i32 %2664, 32752
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = fsub fast float 1.000000e+00, %497
  %2668 = call float @dx.op.binary.f32(i32 35, float %2667, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2669 = bitcast float %497 to i32
  %2670 = sitofp i32 %2669 to float
  %2671 = fadd fast float %2670, 0xC1CFBF8940000000
  %2672 = fmul fast float %2666, %2671
  %2673 = fadd fast float %2672, 0x41CFBF8940000000
  %2674 = fptosi float %2673 to i32
  %2675 = bitcast i32 %2674 to float
  %2676 = bitcast float %2668 to i32
  %2677 = sitofp i32 %2676 to float
  %2678 = fadd fast float %2677, 0xC1CFBF8940000000
  %2679 = fmul fast float %2678, %2666
  %2680 = fadd fast float %2679, 0x41CFBF8940000000
  %2681 = fptosi float %2680 to i32
  %2682 = bitcast i32 %2681 to float
  %2683 = fmul fast float %2675, %2663
  %2684 = fmul fast float %2682, %2663
  %2685 = fsub fast float %2668, %2683
  %2686 = fadd fast float %2684, %2668
  %2687 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2688 = call float @dx.op.unary.f32(i32 7, float %2686)  ; Saturate(value)
  %2689 = fsub fast float %2657, %2687
  %2690 = fsub fast float %2688, %2687
  %2691 = bitcast float %2690 to i32
  %2692 = sub nsw i32 2129859010, %2691
  %2693 = bitcast i32 %2692 to float
  %2694 = fmul fast float %2693, %2689
  %2695 = call float @dx.op.unary.f32(i32 7, float %2694)  ; Saturate(value)
  br label %2696

; <label>:2696                                    ; preds = %2650, %2645
  %2697 = phi float [ %2695, %2650 ], [ %497, %2645 ]
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 128
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2718, label %2702

; <label>:2702                                    ; preds = %2696
  %2703 = add i32 %60, 436
  %2704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.i32 %2704, 0
  %2706 = add i32 %2705, 0
  %2707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2707, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = and i32 %2711, 524288
  %2713 = icmp ne i32 %2712, 0
  %2714 = fcmp fast ogt float %2709, 0x3FE0101020000000
  %2715 = select i1 %2714, float 1.000000e+00, float 0.000000e+00
  %2716 = select i1 %2713, float %2715, float %2709
  %2717 = fmul fast float %2716, %2697
  br label %2718

; <label>:2718                                    ; preds = %2702, %2696
  %2719 = phi float [ %2717, %2702 ], [ %2697, %2696 ]
  %2720 = fcmp fast ult float %2719, 0x3F70101020000000
  br i1 %2720, label %3263, label %2721

; <label>:2721                                    ; preds = %2718
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 16
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2924, label %2726

; <label>:2726                                    ; preds = %2721
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = add i32 %60, 388
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %2731, 0
  %2733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2733, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = extractvalue %dx.types.ResRet.f32 %2734, 1
  %2737 = extractvalue %dx.types.ResRet.f32 %2734, 2
  %2738 = extractvalue %dx.types.ResRet.f32 %2734, 3
  %2739 = and i32 %2728, 255
  %2740 = uitofp i32 %2739 to float
  %2741 = lshr i32 %2728, 8
  %2742 = and i32 %2741, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2738, %2740
  %2745 = fadd fast float %2744, %2743
  %2746 = fmul fast float %2745, 0x3F70101000000000
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = and i32 %2748, 512
  %2750 = icmp eq i32 %2749, 0
  br i1 %2750, label %2759, label %2751

; <label>:2751                                    ; preds = %2726
  %2752 = add i32 %60, 472
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = add i32 %2754, 0
  %2756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2756, %dx.types.Handle %111, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  br label %2759

; <label>:2759                                    ; preds = %2751, %2726
  %2760 = phi float [ %2758, %2751 ], [ 1.000000e+00, %2726 ]
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = and i32 %2762, 33554432
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2871, label %2765

; <label>:2765                                    ; preds = %2759
  %2766 = add i32 %60, 272
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 65535
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = lshr i32 %2768, 16
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = add i32 %60, 276
  %2774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2773, i32 undef)  ; BufferLoad(srv,index,wot)
  %2775 = extractvalue %dx.types.ResRet.i32 %2774, 0
  %2776 = and i32 %2775, 65535
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = lshr i32 %2779, 24
  %2781 = uitofp i32 %2780 to float
  %2782 = fmul fast float %2781, 0x3F70101020000000
  %2783 = and i32 %2779, 255
  %2784 = uitofp i32 %2783 to float
  %2785 = fmul fast float %2784, 0x3F70101020000000
  %2786 = lshr i32 %2779, 8
  %2787 = and i32 %2786, 255
  %2788 = uitofp i32 %2787 to float
  %2789 = fmul fast float %2788, 0x3F70101020000000
  %2790 = lshr i32 %2779, 16
  %2791 = and i32 %2790, 255
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = add i32 %60, 268
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2794, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = lshr i32 %2796, 24
  %2798 = uitofp i32 %2797 to float
  %2799 = fmul fast float %2798, 0x3F70101020000000
  %2800 = and i32 %2796, 255
  %2801 = uitofp i32 %2800 to float
  %2802 = fmul fast float %2801, 0x3F70101020000000
  %2803 = lshr i32 %2796, 8
  %2804 = and i32 %2803, 255
  %2805 = uitofp i32 %2804 to float
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = lshr i32 %2796, 16
  %2808 = and i32 %2807, 255
  %2809 = uitofp i32 %2808 to float
  %2810 = fmul fast float %2809, 0x3F70101020000000
  %2811 = bitcast float %2735 to i32
  %2812 = ashr i32 %2811, 1
  %2813 = sub nsw i32 1597463174, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = fmul fast float %2735, 5.000000e-01
  %2816 = fmul fast float %2814, %2814
  %2817 = fmul fast float %2816, %2815
  %2818 = fsub fast float 1.500000e+00, %2817
  %2819 = fmul fast float %2814, %2735
  %2820 = fmul fast float %2819, %2818
  %2821 = bitcast float %2736 to i32
  %2822 = ashr i32 %2821, 1
  %2823 = sub nsw i32 1597463174, %2822
  %2824 = bitcast i32 %2823 to float
  %2825 = fmul fast float %2736, 5.000000e-01
  %2826 = fmul fast float %2824, %2824
  %2827 = fmul fast float %2826, %2825
  %2828 = fsub fast float 1.500000e+00, %2827
  %2829 = fmul fast float %2824, %2736
  %2830 = fmul fast float %2829, %2828
  %2831 = bitcast float %2737 to i32
  %2832 = ashr i32 %2831, 1
  %2833 = sub nsw i32 1597463174, %2832
  %2834 = bitcast i32 %2833 to float
  %2835 = fmul fast float %2737, 5.000000e-01
  %2836 = fmul fast float %2834, %2834
  %2837 = fmul fast float %2836, %2835
  %2838 = fsub fast float 1.500000e+00, %2837
  %2839 = fmul fast float %2834, %2737
  %2840 = fmul fast float %2839, %2838
  %2841 = fsub fast float %2820, %2802
  %2842 = fsub fast float %2830, %2806
  %2843 = fsub fast float %2840, %2810
  %2844 = fmul fast float %2841, %2770
  %2845 = fmul fast float %2842, %2772
  %2846 = fmul fast float %2843, %2777
  %2847 = fadd fast float %2844, %2785
  %2848 = fadd fast float %2845, %2789
  %2849 = fadd fast float %2846, %2793
  %2850 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2851 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2852 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  %2853 = fmul fast float %2850, %2850
  %2854 = fmul fast float %2851, %2851
  %2855 = fmul fast float %2852, %2852
  %2856 = fsub fast float %2853, %2735
  %2857 = fsub fast float %2854, %2736
  %2858 = fsub fast float %2855, %2737
  %2859 = fmul fast float %2856, %2760
  %2860 = fmul fast float %2857, %2760
  %2861 = fmul fast float %2858, %2760
  %2862 = fadd fast float %2859, %2735
  %2863 = fadd fast float %2860, %2736
  %2864 = fadd fast float %2861, %2737
  %2865 = fadd fast float %2782, %2746
  %2866 = fsub fast float %2865, %2799
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = fsub fast float %2867, %2746
  %2869 = fmul fast float %2868, %2760
  %2870 = fadd fast float %2869, %2746
  br label %2924

; <label>:2871                                    ; preds = %2759
  %2872 = and i32 %2762, 134217728
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2908, label %2874

; <label>:2874                                    ; preds = %2871
  %2875 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2876 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %2877 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %2878 = fadd fast float %2875, -5.000000e-01
  %2879 = fadd fast float %2876, -5.000000e-01
  %2880 = fadd fast float %2877, -5.000000e-01
  %2881 = fmul fast float %2878, %2760
  %2882 = fmul fast float %2879, %2760
  %2883 = fmul fast float %2880, %2760
  %2884 = fadd fast float %2881, 5.000000e-01
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = call float @dx.op.unary.f32(i32 24, float %2735)  ; Sqrt(value)
  %2888 = call float @dx.op.unary.f32(i32 24, float %2736)  ; Sqrt(value)
  %2889 = call float @dx.op.unary.f32(i32 24, float %2737)  ; Sqrt(value)
  %2890 = fmul fast float %2884, 2.000000e+00
  %2891 = fsub fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2891, %2887
  %2893 = fadd fast float %2892, %2890
  %2894 = fmul fast float %2893, %2887
  %2895 = fmul fast float %2885, 2.000000e+00
  %2896 = fsub fast float 1.000000e+00, %2895
  %2897 = fmul fast float %2896, %2888
  %2898 = fadd fast float %2897, %2895
  %2899 = fmul fast float %2898, %2888
  %2900 = fmul fast float %2886, 2.000000e+00
  %2901 = fsub fast float 1.000000e+00, %2900
  %2902 = fmul fast float %2901, %2889
  %2903 = fadd fast float %2902, %2900
  %2904 = fmul fast float %2903, %2889
  %2905 = fmul fast float %2894, %2894
  %2906 = fmul fast float %2899, %2899
  %2907 = fmul fast float %2904, %2904
  br label %2924

; <label>:2908                                    ; preds = %2871
  %2909 = fmul fast float %415, %415
  %2910 = fmul fast float %419, %419
  %2911 = fmul fast float %423, %423
  %2912 = fadd fast float %2909, -1.000000e+00
  %2913 = fadd fast float %2910, -1.000000e+00
  %2914 = fadd fast float %2911, -1.000000e+00
  %2915 = fmul fast float %2760, %2912
  %2916 = fmul fast float %2760, %2913
  %2917 = fmul fast float %2760, %2914
  %2918 = fadd fast float %2915, 1.000000e+00
  %2919 = fadd fast float %2916, 1.000000e+00
  %2920 = fadd fast float %2917, 1.000000e+00
  %2921 = fmul fast float %2918, %2735
  %2922 = fmul fast float %2919, %2736
  %2923 = fmul fast float %2920, %2737
  br label %2924

; <label>:2924                                    ; preds = %2908, %2874, %2765, %2721
  %2925 = phi float [ %2870, %2765 ], [ %2746, %2874 ], [ %2746, %2908 ], [ 0x3FA23C0BE0000000, %2721 ]
  %2926 = phi float [ %2862, %2765 ], [ %2905, %2874 ], [ %2921, %2908 ], [ 1.000000e+00, %2721 ]
  %2927 = phi float [ %2863, %2765 ], [ %2906, %2874 ], [ %2922, %2908 ], [ 1.000000e+00, %2721 ]
  %2928 = phi float [ %2864, %2765 ], [ %2907, %2874 ], [ %2923, %2908 ], [ 1.000000e+00, %2721 ]
  %2929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.i32 %2929, 1
  %2931 = and i32 %2930, 1
  %2932 = icmp ne i32 %2931, 0
  %2933 = add i32 %60, 356
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 32
  %2937 = icmp ne i32 %2936, 0
  %2938 = and i1 %2932, %2937
  %2939 = select i1 %2938, float 1.000000e+00, float %2926
  %2940 = select i1 %2938, float 0x3FD3333340000000, float %2927
  %2941 = select i1 %2938, float 0x3FD3333340000000, float %2928
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 32
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %3018, label %2946

; <label>:2946                                    ; preds = %2924
  %2947 = add i32 %60, 140
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = add i32 %60, 404
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = add i32 %2952, 0
  %2954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2954, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = extractvalue %dx.types.ResRet.f32 %2955, 3
  %2960 = and i32 %2949, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2949, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = lshr i32 %2949, 16
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101000000000
  %2969 = fmul fast float %2956, %2961
  %2970 = fadd fast float %2969, %2964
  %2971 = fmul fast float %2970, 0x3F70101000000000
  %2972 = fadd fast float %2957, -5.000000e-01
  %2973 = fadd fast float %2959, -5.000000e-01
  %2974 = fmul fast float %2972, %2968
  %2975 = fmul fast float %2973, %2968
  %2976 = fadd fast float %2974, 5.000000e-01
  %2977 = fadd fast float %2975, 5.000000e-01
  %2978 = fmul fast float %2976, 2.000000e+00
  %2979 = fadd fast float %2978, -1.000000e+00
  %2980 = fmul fast float %2977, 2.000000e+00
  %2981 = fadd fast float %2980, -1.000000e+00
  %2982 = fadd fast float %2979, %2981
  %2983 = fmul fast float %2982, 5.000000e-01
  %2984 = fsub fast float %2979, %2981
  %2985 = fmul fast float %2984, 5.000000e-01
  %2986 = call float @dx.op.unary.f32(i32 6, float %2983)  ; FAbs(value)
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = call float @dx.op.unary.f32(i32 6, float %2985)  ; FAbs(value)
  %2989 = fsub fast float %2987, %2988
  %2990 = call float @dx.op.dot3.f32(i32 55, float %2983, float %2985, float %2989, float %2983, float %2985, float %2989)  ; Dot3(ax,ay,az,bx,by,bz)
  %2991 = call float @dx.op.unary.f32(i32 25, float %2990)  ; Rsqrt(value)
  %2992 = fmul fast float %2983, %2991
  %2993 = fmul fast float %2985, %2991
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 67108864
  %2997 = icmp eq i32 %2996, 0
  br i1 %2997, label %3014, label %2998

; <label>:2998                                    ; preds = %2946
  %2999 = add i32 %60, 328
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2999, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 65535
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 65535
  %3007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3006)  ; LegacyF16ToF32(value)
  %3008 = lshr i32 %3001, 16
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = fsub fast float %2971, %3009
  %3011 = fmul fast float %3010, %3003
  %3012 = fadd fast float %3011, %3007
  %3013 = call float @dx.op.unary.f32(i32 7, float %3012)  ; Saturate(value)
  br label %3014

; <label>:3014                                    ; preds = %2998, %2946
  %3015 = phi float [ %3013, %2998 ], [ %2971, %2946 ]
  %3016 = call float @dx.op.dot2.f32(i32 54, float %2992, float %2993, float %2550, float %2551)  ; Dot2(ax,ay,bx,by)
  %3017 = call float @dx.op.dot2.f32(i32 54, float %2992, float %2993, float %2552, float %2553)  ; Dot2(ax,ay,bx,by)
  br label %3018

; <label>:3018                                    ; preds = %3014, %2924
  %3019 = phi float [ %3015, %3014 ], [ 0x3FD6666660000000, %2924 ]
  %3020 = phi float [ %3016, %3014 ], [ 0.000000e+00, %2924 ]
  %3021 = phi float [ %3017, %3014 ], [ 0.000000e+00, %2924 ]
  %3022 = phi float [ %2958, %3014 ], [ 1.000000e+00, %2924 ]
  %3023 = add i32 %60, 208
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = lshr i32 %3025, 22
  %3027 = shl nuw nsw i32 %3026, 5
  %3028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3027)  ; LegacyF16ToF32(value)
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 64
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3066, label %3033

; <label>:3033                                    ; preds = %3018
  %3034 = add i32 %60, 420
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = add i32 %3036, 0
  %3038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 131072
  %3042 = icmp eq i32 %3041, 0
  %3043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3038, %dx.types.Handle %110, float %2646, float %2647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = extractvalue %dx.types.ResRet.f32 %3043, 2
  %3047 = fmul fast float %3044, %403
  %3048 = fmul fast float %3045, %406
  %3049 = fmul fast float %3046, %409
  br i1 %3042, label %3056, label %3050

; <label>:3050                                    ; preds = %3033
  %3051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.f32 %3051, 0
  %3053 = fmul fast float %3052, %3047
  %3054 = fmul fast float %3052, %3048
  %3055 = fmul fast float %3052, %3049
  br label %3056

; <label>:3056                                    ; preds = %3050, %3033
  %3057 = phi float [ %3053, %3050 ], [ %3047, %3033 ]
  %3058 = phi float [ %3054, %3050 ], [ %3048, %3033 ]
  %3059 = phi float [ %3055, %3050 ], [ %3049, %3033 ]
  %3060 = fmul fast float %3057, %3028
  %3061 = select i1 %260, float %3060, float %3057
  %3062 = call float @dx.op.dot3.f32(i32 55, float %3061, float %3058, float %3059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3063 = select i1 %260, float 0.000000e+00, float %3057
  %3064 = select i1 %260, float %3062, float %3058
  %3065 = select i1 %260, float 0.000000e+00, float %3059
  br label %3066

; <label>:3066                                    ; preds = %3056, %3018
  %3067 = phi float [ %3063, %3056 ], [ 0.000000e+00, %3018 ]
  %3068 = phi float [ %3064, %3056 ], [ 0.000000e+00, %3018 ]
  %3069 = phi float [ %3065, %3056 ], [ 0.000000e+00, %3018 ]
  %3070 = add i32 %60, 144
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = lshr i32 %3072, 8
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = call float @dx.op.dot3.f32(i32 55, float %2939, float %2940, float %2941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3079 = fmul fast float %3077, %3078
  %3080 = fadd fast float %3079, %3074
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = call float @dx.op.unary.f32(i32 7, float %3081)  ; Saturate(value)
  br i1 %2538, label %3083, label %3091

; <label>:3083                                    ; preds = %3066
  %3084 = fsub fast float 1.000000e+00, %2719
  %3085 = fmul fast float %3084, %2530
  %3086 = fmul fast float %3084, %2531
  %3087 = fmul fast float %3084, %2532
  %3088 = fmul fast float %3084, %2527
  %3089 = fmul fast float %3084, %2528
  %3090 = fmul fast float %3084, %2529
  br label %3091

; <label>:3091                                    ; preds = %3083, %3066
  %3092 = phi float [ %3088, %3083 ], [ %2527, %3066 ]
  %3093 = phi float [ %3089, %3083 ], [ %2528, %3066 ]
  %3094 = phi float [ %3090, %3083 ], [ %2529, %3066 ]
  %3095 = phi float [ %3085, %3083 ], [ %2530, %3066 ]
  %3096 = phi float [ %3086, %3083 ], [ %2531, %3066 ]
  %3097 = phi float [ %3087, %3083 ], [ %2532, %3066 ]
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 3
  %3101 = icmp eq i32 %3100, 3
  br i1 %3101, label %3180, label %3102

; <label>:3102                                    ; preds = %3091
  %3103 = and i32 %3099, 16
  %3104 = icmp ne i32 %3103, 0
  %3105 = select i1 %3104, float %2719, float 0.000000e+00
  %3106 = icmp eq i32 %3100, 0
  br i1 %3106, label %3107, label %3135

; <label>:3107                                    ; preds = %3102
  %3108 = and i32 %3099, 64
  %3109 = icmp ne i32 %3108, 0
  %3110 = select i1 %3109, float %2719, float 0.000000e+00
  %3111 = fsub fast float %2939, %3095
  %3112 = fsub fast float %2940, %3096
  %3113 = fsub fast float %2941, %3097
  %3114 = fmul fast float %3105, %3111
  %3115 = fmul fast float %3105, %3112
  %3116 = fmul fast float %3105, %3113
  %3117 = fadd fast float %3114, %3095
  %3118 = fadd fast float %3115, %3096
  %3119 = fadd fast float %3116, %3097
  %3120 = fsub fast float %2925, %2533
  %3121 = fmul fast float %3105, %3120
  %3122 = fadd fast float %3121, %2533
  %3123 = fsub fast float %3067, %3092
  %3124 = fsub fast float %3068, %3093
  %3125 = fsub fast float %3069, %3094
  %3126 = fmul fast float %3110, %3123
  %3127 = fmul fast float %3110, %3124
  %3128 = fmul fast float %3110, %3125
  %3129 = fadd fast float %3126, %3092
  %3130 = fadd fast float %3127, %3093
  %3131 = fadd fast float %3128, %3094
  %3132 = fsub fast float %3082, %2536
  %3133 = fmul fast float %3105, %3132
  %3134 = fadd fast float %3133, %2536
  br label %3180

; <label>:3135                                    ; preds = %3102
  %3136 = icmp eq i32 %3100, 1
  br i1 %3136, label %3137, label %3150

; <label>:3137                                    ; preds = %3135
  %3138 = fadd fast float %2939, -1.000000e+00
  %3139 = fadd fast float %2940, -1.000000e+00
  %3140 = fadd fast float %2941, -1.000000e+00
  %3141 = fmul fast float %3105, %3138
  %3142 = fmul fast float %3105, %3139
  %3143 = fmul fast float %3105, %3140
  %3144 = fadd fast float %3141, 1.000000e+00
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fmul fast float %3144, %3095
  %3148 = fmul fast float %3145, %3096
  %3149 = fmul fast float %3146, %3097
  br label %3180

; <label>:3150                                    ; preds = %3135
  %3151 = icmp eq i32 %3100, 2
  br i1 %3151, label %3152, label %3180

; <label>:3152                                    ; preds = %3150
  %3153 = call float @dx.op.unary.f32(i32 24, float %2939)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %2940)  ; Sqrt(value)
  %3155 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fmul fast float %3156, %3105
  %3160 = fmul fast float %3157, %3105
  %3161 = fmul fast float %3158, %3105
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = fmul fast float %3162, 2.000000e+00
  %3166 = fsub fast float 1.000000e+00, %3165
  %3167 = fmul fast float %3166, %3095
  %3168 = fadd fast float %3167, %3165
  %3169 = fmul fast float %3168, %3095
  %3170 = fmul fast float %3163, 2.000000e+00
  %3171 = fsub fast float 1.000000e+00, %3170
  %3172 = fmul fast float %3171, %3096
  %3173 = fadd fast float %3172, %3170
  %3174 = fmul fast float %3173, %3096
  %3175 = fmul fast float %3164, 2.000000e+00
  %3176 = fsub fast float 1.000000e+00, %3175
  %3177 = fmul fast float %3176, %3097
  %3178 = fadd fast float %3177, %3175
  %3179 = fmul fast float %3178, %3097
  br label %3180

; <label>:3180                                    ; preds = %3152, %3150, %3137, %3107, %3091
  %3181 = phi float [ %3092, %3091 ], [ %3092, %3152 ], [ %3092, %3150 ], [ %3092, %3137 ], [ %3129, %3107 ]
  %3182 = phi float [ %3093, %3091 ], [ %3093, %3152 ], [ %3093, %3150 ], [ %3093, %3137 ], [ %3130, %3107 ]
  %3183 = phi float [ %3094, %3091 ], [ %3094, %3152 ], [ %3094, %3150 ], [ %3094, %3137 ], [ %3131, %3107 ]
  %3184 = phi float [ %3095, %3091 ], [ %3169, %3152 ], [ %3095, %3150 ], [ %3147, %3137 ], [ %3117, %3107 ]
  %3185 = phi float [ %3096, %3091 ], [ %3174, %3152 ], [ %3096, %3150 ], [ %3148, %3137 ], [ %3118, %3107 ]
  %3186 = phi float [ %3097, %3091 ], [ %3179, %3152 ], [ %3097, %3150 ], [ %3149, %3137 ], [ %3119, %3107 ]
  %3187 = phi float [ %2533, %3091 ], [ %2533, %3152 ], [ %2533, %3150 ], [ %2533, %3137 ], [ %3122, %3107 ]
  %3188 = phi float [ %2536, %3091 ], [ %2536, %3152 ], [ %2536, %3150 ], [ %2536, %3137 ], [ %3134, %3107 ]
  %3189 = and i32 %3099, 12
  %3190 = icmp eq i32 %3189, 12
  br i1 %3190, label %3263, label %3191

; <label>:3191                                    ; preds = %3180
  %3192 = and i32 %3099, 2097184
  %3193 = icmp eq i32 %3192, 2097184
  %3194 = select i1 %3193, float %2719, float 0.000000e+00
  %3195 = and i32 %3099, 4194336
  %3196 = icmp eq i32 %3195, 4194336
  %3197 = select i1 %3196, float %2719, float 0.000000e+00
  %3198 = and i32 %3099, 8388640
  %3199 = icmp eq i32 %3198, 8388640
  %3200 = select i1 %3199, float %2719, float 0.000000e+00
  %3201 = icmp eq i32 %3189, 0
  br i1 %3201, label %3202, label %3215

; <label>:3202                                    ; preds = %3191
  %3203 = fsub fast float %3020, %2525
  %3204 = fsub fast float %3021, %2526
  %3205 = fmul fast float %3194, %3203
  %3206 = fmul fast float %3194, %3204
  %3207 = fadd fast float %3205, %2525
  %3208 = fadd fast float %3206, %2526
  %3209 = fsub fast float %3022, %2535
  %3210 = fmul fast float %3197, %3209
  %3211 = fadd fast float %3210, %2535
  %3212 = fsub fast float %3019, %2534
  %3213 = fmul fast float %3200, %3212
  %3214 = fadd fast float %3213, %2534
  br label %3263

; <label>:3215                                    ; preds = %3191
  %3216 = icmp eq i32 %3189, 4
  br i1 %3216, label %3217, label %3249

; <label>:3217                                    ; preds = %3215
  %3218 = fmul fast float %3194, %3020
  %3219 = fmul fast float %3194, %3021
  %3220 = fadd fast float %3218, %2525
  %3221 = fadd fast float %3219, %2526
  %3222 = call float @dx.op.binary.f32(i32 36, float %2535, float %3022)  ; FMin(a,b)
  %3223 = fsub fast float %3222, %2535
  %3224 = fmul fast float %3223, %3197
  %3225 = fadd fast float %3224, %2535
  %3226 = fadd fast float %3019, %2534
  %3227 = fmul fast float %3226, 0x3FF337FAE0000000
  %3228 = fmul fast float %2534, %2534
  %3229 = fmul fast float %3019, %3019
  %3230 = fadd fast float %3229, %3228
  %3231 = fmul fast float %3230, 0x3FE5152B00000000
  %3232 = fmul fast float %2534, 0xBFCC1F85E0000000
  %3233 = fmul fast float %3232, %3019
  %3234 = fadd fast float %3233, 0xBFE1363700000000
  %3235 = fadd fast float %3234, %3227
  %3236 = fsub fast float %3235, %3231
  %3237 = fmul fast float %3226, 0x3FBA6F0D00000000
  %3238 = fmul fast float %3230, 0x3FD0432880000000
  %3239 = fmul fast float %2534, 0xBFEF110800000000
  %3240 = fmul fast float %3239, %3019
  %3241 = fadd fast float %3240, 1.000000e+00
  %3242 = fsub fast float %3241, %3237
  %3243 = fadd fast float %3242, %3238
  %3244 = fdiv fast float %3236, %3243
  %3245 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3246 = fsub fast float %3245, %2534
  %3247 = fmul fast float %3246, %3200
  %3248 = fadd fast float %3247, %2534
  br label %3263

; <label>:3249                                    ; preds = %3215
  %3250 = icmp eq i32 %3189, 8
  br i1 %3250, label %3251, label %3263

; <label>:3251                                    ; preds = %3249
  %3252 = fmul fast float %3194, %3020
  %3253 = fmul fast float %3194, %3021
  %3254 = fadd fast float %3252, %2525
  %3255 = fadd fast float %3253, %2526
  %3256 = call float @dx.op.binary.f32(i32 36, float %2535, float %3022)  ; FMin(a,b)
  %3257 = fsub fast float %3256, %2535
  %3258 = fmul fast float %3257, %3197
  %3259 = fadd fast float %3258, %2535
  %3260 = fsub fast float %3019, %2534
  %3261 = fmul fast float %3200, %3260
  %3262 = fadd fast float %3261, %2534
  br label %3263

; <label>:3263                                    ; preds = %3251, %3249, %3217, %3202, %3180, %2718, %2537, %2524
  %3264 = phi float [ %2525, %3180 ], [ %2525, %2718 ], [ %2525, %2524 ], [ %2525, %2537 ], [ %3207, %3202 ], [ %3220, %3217 ], [ %2525, %3249 ], [ %3254, %3251 ]
  %3265 = phi float [ %2526, %3180 ], [ %2526, %2718 ], [ %2526, %2524 ], [ %2526, %2537 ], [ %3208, %3202 ], [ %3221, %3217 ], [ %2526, %3249 ], [ %3255, %3251 ]
  %3266 = phi float [ %3181, %3180 ], [ %2527, %2718 ], [ %2527, %2524 ], [ %2527, %2537 ], [ %3181, %3202 ], [ %3181, %3217 ], [ %3181, %3249 ], [ %3181, %3251 ]
  %3267 = phi float [ %3182, %3180 ], [ %2528, %2718 ], [ %2528, %2524 ], [ %2528, %2537 ], [ %3182, %3202 ], [ %3182, %3217 ], [ %3182, %3249 ], [ %3182, %3251 ]
  %3268 = phi float [ %3183, %3180 ], [ %2529, %2718 ], [ %2529, %2524 ], [ %2529, %2537 ], [ %3183, %3202 ], [ %3183, %3217 ], [ %3183, %3249 ], [ %3183, %3251 ]
  %3269 = phi float [ %3184, %3180 ], [ %2530, %2718 ], [ %2530, %2524 ], [ %2530, %2537 ], [ %3184, %3202 ], [ %3184, %3217 ], [ %3184, %3249 ], [ %3184, %3251 ]
  %3270 = phi float [ %3185, %3180 ], [ %2531, %2718 ], [ %2531, %2524 ], [ %2531, %2537 ], [ %3185, %3202 ], [ %3185, %3217 ], [ %3185, %3249 ], [ %3185, %3251 ]
  %3271 = phi float [ %3186, %3180 ], [ %2532, %2718 ], [ %2532, %2524 ], [ %2532, %2537 ], [ %3186, %3202 ], [ %3186, %3217 ], [ %3186, %3249 ], [ %3186, %3251 ]
  %3272 = phi float [ %3187, %3180 ], [ %2533, %2718 ], [ %2533, %2524 ], [ %2533, %2537 ], [ %3187, %3202 ], [ %3187, %3217 ], [ %3187, %3249 ], [ %3187, %3251 ]
  %3273 = phi float [ %2534, %3180 ], [ %2534, %2718 ], [ %2534, %2524 ], [ %2534, %2537 ], [ %3214, %3202 ], [ %3248, %3217 ], [ %2534, %3249 ], [ %3262, %3251 ]
  %3274 = phi float [ %2535, %3180 ], [ %2535, %2718 ], [ %2535, %2524 ], [ %2535, %2537 ], [ %3211, %3202 ], [ %3225, %3217 ], [ %2535, %3249 ], [ %3259, %3251 ]
  %3275 = phi float [ %3188, %3180 ], [ %2536, %2718 ], [ %2536, %2524 ], [ %2536, %2537 ], [ %3188, %3202 ], [ %3188, %3217 ], [ %3188, %3249 ], [ %3188, %3251 ]
  %3276 = add i32 %60, 360
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.i32 %3277, 1
  %3280 = bitcast i32 %3278 to float
  %3281 = bitcast i32 %3279 to float
  %3282 = fcmp fast oge float %3280, 0.000000e+00
  %3283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3284 = extractvalue %dx.types.CBufRet.f32 %3283, 0
  %3285 = select i1 %3282, float %3280, float %3284
  %3286 = add i32 %60, 456
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = add i32 %3288, 0
  %3290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3290, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = fmul fast float %3292, %3281
  %3294 = fadd fast float %3293, %3285
  %3295 = call float @dx.op.dot2.f32(i32 54, float %3264, float %3265, float %3264, float %3265)  ; Dot2(ax,ay,bx,by)
  %3296 = fmul fast float %3295, 0x3FE3333340000000
  %3297 = fsub fast float 1.000000e+00, %3296
  %3298 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3297, float %3264, float %3265, float %3297)  ; Dot3(ax,ay,az,bx,by,bz)
  %3299 = call float @dx.op.unary.f32(i32 25, float %3298)  ; Rsqrt(value)
  %3300 = fmul fast float %3299, %3264
  %3301 = fmul fast float %3299, %3265
  %3302 = fmul fast float %3297, %3299
  %3303 = fmul fast float %3302, %121
  %3304 = fmul fast float %3302, %122
  %3305 = fmul fast float %3302, %123
  %3306 = fmul fast float %3300, %85
  %3307 = fmul fast float %3300, %86
  %3308 = fmul fast float %3300, %87
  %3309 = fadd fast float %3303, %3306
  %3310 = fadd fast float %3304, %3307
  %3311 = fadd fast float %3305, %3308
  %3312 = fmul fast float %133, %3301
  %3313 = fmul fast float %134, %3301
  %3314 = fmul fast float %135, %3301
  %3315 = fadd fast float %3309, %3312
  %3316 = fadd fast float %3310, %3313
  %3317 = fadd fast float %3311, %3314
  %3318 = call float @dx.op.dot3.f32(i32 55, float %3315, float %3316, float %3317, float %3315, float %3316, float %3317)  ; Dot3(ax,ay,az,bx,by,bz)
  %3319 = call float @dx.op.unary.f32(i32 25, float %3318)  ; Rsqrt(value)
  %3320 = fmul fast float %3315, %3319
  %3321 = fmul fast float %3316, %3319
  %3322 = fmul fast float %3317, %3319
  %3323 = icmp eq i32 %61, 65535
  br i1 %3323, label %3842, label %3324

; <label>:3324                                    ; preds = %3263
  %3325 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3326 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3327 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3328 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3329 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3330 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3331 = fadd fast float %3325, %62
  %3332 = fadd fast float %3326, %63
  %3333 = fadd fast float %3327, %64
  %3334 = fadd fast float %3328, %62
  %3335 = fadd fast float %3329, %63
  %3336 = fadd fast float %3330, %64
  %3337 = mul i32 %61, 48
  %3338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = add i32 %3337, 16
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = add i32 %3337, 32
  %3348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.f32 %3348, 0
  %3350 = extractvalue %dx.types.ResRet.f32 %3348, 1
  %3351 = extractvalue %dx.types.ResRet.f32 %3348, 2
  %3352 = extractvalue %dx.types.ResRet.f32 %3348, 3
  %3353 = bitcast float %3352 to i32
  %3354 = fmul fast float %3339, %62
  %3355 = fmul fast float %3340, %63
  %3356 = fmul fast float %3341, %64
  %3357 = fsub fast float %3354, %3344
  %3358 = fsub fast float %3355, %3345
  %3359 = fsub fast float %3356, %3346
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3361 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = fmul fast float %3360, %3349
  %3364 = fmul fast float %3361, %3350
  %3365 = fmul fast float %3362, %3351
  %3366 = fadd fast float %3349, -1.000000e+00
  %3367 = fadd fast float %3350, -1.000000e+00
  %3368 = fadd fast float %3351, -1.000000e+00
  %3369 = call float @dx.op.unary.f32(i32 27, float %3363)  ; Round_ni(value)
  %3370 = call float @dx.op.unary.f32(i32 27, float %3364)  ; Round_ni(value)
  %3371 = call float @dx.op.unary.f32(i32 27, float %3365)  ; Round_ni(value)
  %3372 = call float @dx.op.binary.f32(i32 36, float %3369, float %3366)  ; FMin(a,b)
  %3373 = call float @dx.op.binary.f32(i32 36, float %3370, float %3367)  ; FMin(a,b)
  %3374 = call float @dx.op.binary.f32(i32 36, float %3371, float %3368)  ; FMin(a,b)
  %3375 = fmul fast float %3374, %3350
  %3376 = fadd fast float %3375, %3373
  %3377 = fmul fast float %3376, %3349
  %3378 = fadd fast float %3377, %3372
  %3379 = fptosi float %3378 to i32
  %3380 = add nsw i32 %3379, %3353
  %3381 = shl nsw i32 %3380, 2
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = lshr i32 %3383, 16
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3810, label %3386

; <label>:3386                                    ; preds = %3324
  br label %3387

; <label>:3387                                    ; preds = %3509, %3386
  %3388 = phi i32 [ %3411, %3509 ], [ %3384, %3386 ]
  %3389 = phi float [ %3510, %3509 ], [ 0.000000e+00, %3386 ]
  %3390 = phi float [ %3511, %3509 ], [ %1055, %3386 ]
  %3391 = phi float [ %3512, %3509 ], [ %3294, %3386 ]
  %3392 = phi float [ %3513, %3509 ], [ %3275, %3386 ]
  %3393 = phi float [ %3514, %3509 ], [ 0.000000e+00, %3386 ]
  %3394 = phi float [ %3515, %3509 ], [ 0.000000e+00, %3386 ]
  %3395 = phi float [ %3516, %3509 ], [ %3266, %3386 ]
  %3396 = phi float [ %3517, %3509 ], [ %3267, %3386 ]
  %3397 = phi float [ %3518, %3509 ], [ %3268, %3386 ]
  %3398 = phi float [ %3519, %3509 ], [ %3320, %3386 ]
  %3399 = phi float [ %3520, %3509 ], [ %3321, %3386 ]
  %3400 = phi float [ %3521, %3509 ], [ %3322, %3386 ]
  %3401 = phi float [ %3522, %3509 ], [ %3274, %3386 ]
  %3402 = phi float [ %3523, %3509 ], [ %3273, %3386 ]
  %3403 = phi float [ %3524, %3509 ], [ 0.000000e+00, %3386 ]
  %3404 = phi float [ %3525, %3509 ], [ %3272, %3386 ]
  %3405 = phi float [ %3526, %3509 ], [ %3269, %3386 ]
  %3406 = phi float [ %3527, %3509 ], [ %3270, %3386 ]
  %3407 = phi float [ %3528, %3509 ], [ %3271, %3386 ]
  %3408 = shl nuw nsw i32 %3388, 2
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = lshr i32 %3410, 16
  %3412 = shl i32 %3410, 8
  %3413 = and i32 %3412, 16776960
  %3414 = or i32 %3413, 48
  %3415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = extractvalue %dx.types.ResRet.f32 %3415, 2
  %3419 = or i32 %3413, 64
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3419, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.i32 %3420, 1
  %3423 = or i32 %3413, 80
  %3424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.f32 %3424, 2
  %3426 = extractvalue %dx.types.ResRet.f32 %3424, 3
  %3427 = or i32 %3413, 96
  %3428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  %3430 = extractvalue %dx.types.ResRet.f32 %3428, 1
  %3431 = extractvalue %dx.types.ResRet.f32 %3428, 2
  %3432 = extractvalue %dx.types.ResRet.f32 %3428, 3
  %3433 = or i32 %3413, 112
  %3434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3436 = or i32 %3413, 128
  %3437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  %3439 = extractvalue %dx.types.ResRet.f32 %3437, 1
  %3440 = extractvalue %dx.types.ResRet.f32 %3437, 2
  %3441 = extractvalue %dx.types.ResRet.f32 %3437, 3
  %3442 = or i32 %3413, 144
  %3443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.ResRet.f32 %3443, 1
  %3446 = extractvalue %dx.types.ResRet.f32 %3443, 2
  %3447 = extractvalue %dx.types.ResRet.f32 %3443, 3
  %3448 = or i32 %3413, 160
  %3449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.f32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.f32 %3449, 1
  %3452 = extractvalue %dx.types.ResRet.f32 %3449, 2
  %3453 = extractvalue %dx.types.ResRet.f32 %3449, 3
  %3454 = or i32 %3413, 192
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = or i32 %3413, 208
  %3458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = or i32 %3413, 248
  %3461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.f32 %3461, 0
  %3463 = extractvalue %dx.types.ResRet.f32 %3461, 1
  %3464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.f32 %3464, 0
  %3466 = extractvalue %dx.types.ResRet.f32 %3464, 1
  %3467 = extractvalue %dx.types.ResRet.f32 %3464, 2
  %3468 = extractvalue %dx.types.ResRet.f32 %3464, 3
  %3469 = call float @dx.op.dot4.f32(i32 56, float %3465, float %3466, float %3467, float %3468, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3470 = or i32 %3413, 16
  %3471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3475 = extractvalue %dx.types.ResRet.f32 %3471, 3
  %3476 = call float @dx.op.dot4.f32(i32 56, float %3472, float %3473, float %3474, float %3475, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3477 = or i32 %3413, 32
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = call float @dx.op.dot4.f32(i32 56, float %3479, float %3480, float %3481, float %3482, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3484 = call float @dx.op.unary.f32(i32 27, float %3469)  ; Round_ni(value)
  %3485 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3486 = call float @dx.op.unary.f32(i32 27, float %3476)  ; Round_ni(value)
  %3487 = call float @dx.op.unary.f32(i32 6, float %3486)  ; FAbs(value)
  %3488 = call float @dx.op.unary.f32(i32 6, float %3483)  ; FAbs(value)
  %3489 = call float @dx.op.unary.f32(i32 27, float %3488)  ; Round_ni(value)
  %3490 = fadd fast float %3487, %3485
  %3491 = fadd fast float %3490, %3489
  %3492 = fcmp fast oeq float %3491, 0.000000e+00
  %3493 = call float @dx.op.dot4.f32(i32 56, float %3465, float %3466, float %3467, float %3468, float %3331, float %3332, float %3333, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3494 = call float @dx.op.dot4.f32(i32 56, float %3472, float %3473, float %3474, float %3475, float %3331, float %3332, float %3333, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3495 = call float @dx.op.dot4.f32(i32 56, float %3465, float %3466, float %3467, float %3468, float %3334, float %3335, float %3336, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3496 = call float @dx.op.dot4.f32(i32 56, float %3472, float %3473, float %3474, float %3475, float %3334, float %3335, float %3336, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3497 = fsub fast float %3493, %3469
  %3498 = fsub fast float %3495, %3469
  %3499 = fsub fast float %3494, %3476
  %3500 = fsub fast float %3496, %3476
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3417, float %3418, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 2
  %3504 = fadd fast float %3503, %3501
  %3505 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3502, 0
  %3507 = fcmp fast ogt float %3505, %3506
  %3508 = and i1 %3492, %3507
  br i1 %3508, label %3530, label %3509

; <label>:3509                                    ; preds = %3796, %3613, %3530, %3387
  %3510 = phi float [ %3389, %3530 ], [ %3616, %3613 ], [ %3616, %3796 ], [ %3389, %3387 ]
  %3511 = phi float [ %3390, %3530 ], [ %3390, %3613 ], [ %3771, %3796 ], [ %3390, %3387 ]
  %3512 = phi float [ %3391, %3530 ], [ %3391, %3613 ], [ %3770, %3796 ], [ %3391, %3387 ]
  %3513 = phi float [ %3392, %3530 ], [ %3392, %3613 ], [ %3768, %3796 ], [ %3392, %3387 ]
  %3514 = phi float [ %3393, %3530 ], [ %3393, %3613 ], [ %3740, %3796 ], [ %3393, %3387 ]
  %3515 = phi float [ %3394, %3530 ], [ %3394, %3613 ], [ %3738, %3796 ], [ %3394, %3387 ]
  %3516 = phi float [ %3395, %3530 ], [ %3395, %3613 ], [ %3806, %3796 ], [ %3395, %3387 ]
  %3517 = phi float [ %3396, %3530 ], [ %3396, %3613 ], [ %3807, %3796 ], [ %3396, %3387 ]
  %3518 = phi float [ %3397, %3530 ], [ %3397, %3613 ], [ %3808, %3796 ], [ %3397, %3387 ]
  %3519 = phi float [ %3398, %3530 ], [ %3398, %3613 ], [ %3719, %3796 ], [ %3398, %3387 ]
  %3520 = phi float [ %3399, %3530 ], [ %3399, %3613 ], [ %3720, %3796 ], [ %3399, %3387 ]
  %3521 = phi float [ %3400, %3530 ], [ %3400, %3613 ], [ %3721, %3796 ], [ %3400, %3387 ]
  %3522 = phi float [ %3401, %3530 ], [ %3401, %3613 ], [ %3748, %3796 ], [ %3401, %3387 ]
  %3523 = phi float [ %3402, %3530 ], [ %3402, %3613 ], [ %3745, %3796 ], [ %3402, %3387 ]
  %3524 = phi float [ %3403, %3530 ], [ %3403, %3613 ], [ %3742, %3796 ], [ %3403, %3387 ]
  %3525 = phi float [ %3404, %3530 ], [ %3404, %3613 ], [ %3736, %3796 ], [ %3404, %3387 ]
  %3526 = phi float [ %3405, %3530 ], [ %3405, %3613 ], [ %3731, %3796 ], [ %3405, %3387 ]
  %3527 = phi float [ %3406, %3530 ], [ %3406, %3613 ], [ %3732, %3796 ], [ %3406, %3387 ]
  %3528 = phi float [ %3407, %3530 ], [ %3407, %3613 ], [ %3733, %3796 ], [ %3407, %3387 ]
  %3529 = icmp eq i32 %3411, 0
  br i1 %3529, label %3809, label %3387

; <label>:3530                                    ; preds = %3387
  %3531 = extractvalue %dx.types.ResRet.f32 %3415, 3
  %3532 = extractvalue %dx.types.ResRet.f32 %3434, 3
  %3533 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3534 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3424, 1
  %3536 = extractvalue %dx.types.ResRet.f32 %3424, 0
  %3537 = extractvalue %dx.types.ResRet.i32 %3420, 3
  %3538 = extractvalue %dx.types.ResRet.i32 %3420, 2
  %3539 = bitcast float %3531 to i32
  %3540 = add i32 %3537, 0
  %3541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3543 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3541, %dx.types.Handle %3542, float %3469, float %3476, float undef, float undef, i32 0, i32 0, i32 undef, float %3497, float %3499, float undef, float %3498, float %3500, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3544 = extractvalue %dx.types.ResRet.f32 %3543, 0
  %3545 = fmul fast float %3544, %3536
  %3546 = fadd fast float %3545, %3535
  %3547 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3548 = fmul fast float %3469, %3429
  %3549 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3476, float %3548)  ; FMad(a,b,c)
  %3550 = fadd fast float %3549, %3534
  %3551 = fmul fast float %3469, %3431
  %3552 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3476, float %3551)  ; FMad(a,b,c)
  %3553 = fadd fast float %3552, %3533
  %3554 = fmul fast float %3497, %3429
  %3555 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3499, float %3554)  ; FMad(a,b,c)
  %3556 = fmul fast float %3497, %3431
  %3557 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3499, float %3556)  ; FMad(a,b,c)
  %3558 = fmul fast float %3498, %3429
  %3559 = call float @dx.op.tertiary.f32(i32 46, float %3430, float %3500, float %3558)  ; FMad(a,b,c)
  %3560 = fmul fast float %3498, %3431
  %3561 = call float @dx.op.tertiary.f32(i32 46, float %3432, float %3500, float %3560)  ; FMad(a,b,c)
  %3562 = add i32 %3538, 0
  %3563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3562, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3564 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3563, %dx.types.Handle %3542, float %3550, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float %3555, float %3557, float undef, float %3559, float %3561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3565 = extractvalue %dx.types.ResRet.f32 %3564, 0
  %3566 = and i32 %3539, 1024
  %3567 = icmp ne i32 %3566, 0
  %3568 = fcmp fast ogt float %3565, 0x3FE0101020000000
  %3569 = uitofp i1 %3568 to float
  %3570 = select i1 %3567, float %3569, float %3565
  %3571 = and i32 %3539, 8192
  %3572 = icmp ne i32 %3571, 0
  %3573 = select i1 %3572, float %3532, float 1.000000e+00
  %3574 = fmul fast float %3469, 2.000000e+00
  %3575 = fadd fast float %3574, -1.000000e+00
  %3576 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3577 = fmul fast float %3576, %3462
  %3578 = fsub fast float %3577, %3462
  %3579 = call float @dx.op.unary.f32(i32 7, float %3578)  ; Saturate(value)
  %3580 = fmul fast float %3476, 2.000000e+00
  %3581 = fadd fast float %3580, -1.000000e+00
  %3582 = call float @dx.op.unary.f32(i32 6, float %3581)  ; FAbs(value)
  %3583 = fmul fast float %3582, %3463
  %3584 = fsub fast float %3583, %3463
  %3585 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3586 = fmul fast float %3488, %3425
  %3587 = fsub fast float %3586, %3425
  %3588 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3589 = fmul fast float %3547, %3573
  %3590 = fmul fast float %3589, %3544
  %3591 = fmul fast float %3590, %3579
  %3592 = fmul fast float %3591, %3570
  %3593 = fmul fast float %3592, %3585
  %3594 = fmul fast float %3593, %3588
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3597 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3598 = fsub fast float %3505, %3597
  %3599 = fmul fast float %3598, %3596
  %3600 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3601 = fmul fast float %3594, %3426
  %3602 = fadd fast float %3594, %3426
  %3603 = fmul fast float %3602, %3435
  %3604 = fsub fast float %3603, %3435
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  %3606 = and i32 %3539, 128
  %3607 = icmp ne i32 %3606, 0
  %3608 = select i1 %3607, float %3605, float %3601
  %3609 = fmul fast float %3608, %3600
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = fcmp fast ugt float %3609, %3611
  br i1 %3612, label %3613, label %3509

; <label>:3613                                    ; preds = %3530
  %3614 = select i1 %3572, float %3609, float 0.000000e+00
  %3615 = fadd fast float %3614, %3389
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  br i1 %3572, label %3509, label %3617

; <label>:3617                                    ; preds = %3613
  %3618 = and i32 %3539, 4
  %3619 = and i32 %3539, 8
  %3620 = add i32 %3421, 0
  %3621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3620, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3623 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3621, %dx.types.Handle %3622, float %3550, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float %3555, float %3557, float undef, float %3559, float %3561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = bitcast float %3447 to i32
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = lshr i32 %3628, 8
  %3632 = and i32 %3631, 255
  %3633 = uitofp i32 %3632 to float
  %3634 = fmul fast float %3627, %3630
  %3635 = fadd fast float %3634, %3633
  %3636 = fmul fast float %3635, 0x3F70101000000000
  %3637 = add i32 %3422, 0
  %3638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3637, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3639 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3638, %dx.types.Handle %3622, float %3550, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float %3555, float %3557, float undef, float %3559, float %3561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = bitcast float %3441 to i32
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = lshr i32 %3644, 8
  %3648 = and i32 %3647, 255
  %3649 = uitofp i32 %3648 to float
  %3650 = lshr i32 %3644, 16
  %3651 = and i32 %3650, 255
  %3652 = uitofp i32 %3651 to float
  %3653 = fmul fast float %3652, 0x3F70101000000000
  %3654 = fmul fast float %3640, %3646
  %3655 = fadd fast float %3654, %3649
  %3656 = fmul fast float %3655, 0x3F70101000000000
  %3657 = fadd fast float %3641, -5.000000e-01
  %3658 = fadd fast float %3643, -5.000000e-01
  %3659 = fmul fast float %3657, %3653
  %3660 = fmul fast float %3658, %3653
  %3661 = fadd fast float %3659, 5.000000e-01
  %3662 = fadd fast float %3660, 5.000000e-01
  %3663 = fmul fast float %3624, %3450
  %3664 = fmul fast float %3625, %3451
  %3665 = fmul fast float %3626, %3452
  %3666 = fmul fast float %3661, 2.000000e+00
  %3667 = fadd fast float %3666, -1.000000e+00
  %3668 = fmul fast float %3662, 2.000000e+00
  %3669 = fadd fast float %3668, -1.000000e+00
  %3670 = fadd fast float %3667, %3669
  %3671 = fmul fast float %3670, 5.000000e-01
  %3672 = fsub fast float %3667, %3669
  %3673 = fmul fast float %3672, 5.000000e-01
  %3674 = call float @dx.op.unary.f32(i32 6, float %3671)  ; FAbs(value)
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3677 = fsub fast float %3675, %3676
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3671, float %3673, float %3677, float %3671, float %3673, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 25, float %3678)  ; Rsqrt(value)
  %3680 = fmul fast float %3671, %3679
  %3681 = fmul fast float %3673, %3679
  %3682 = fmul fast float %3679, %3677
  %3683 = fmul fast float %3682, %3416
  %3684 = fmul fast float %3682, %3417
  %3685 = fmul fast float %3682, %3418
  %3686 = fmul fast float %3680, %3438
  %3687 = fmul fast float %3680, %3439
  %3688 = fmul fast float %3680, %3440
  %3689 = fadd fast float %3686, %3683
  %3690 = fadd fast float %3687, %3684
  %3691 = fadd fast float %3688, %3685
  %3692 = fmul fast float %3681, %3444
  %3693 = fmul fast float %3681, %3445
  %3694 = fmul fast float %3681, %3446
  %3695 = fadd fast float %3689, %3692
  %3696 = fadd fast float %3690, %3693
  %3697 = fadd fast float %3691, %3694
  %3698 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3697, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.unary.f32(i32 25, float %3698)  ; Rsqrt(value)
  %3700 = fmul fast float %3695, %3699
  %3701 = fmul fast float %3696, %3699
  %3702 = fmul fast float %3697, %3699
  %3703 = icmp ne i32 %3619, 0
  %3704 = select i1 %3703, float 1.000000e+00, float 0.000000e+00
  %3705 = fmul fast float %3609, %3704
  %3706 = and i32 %3539, 1
  %3707 = icmp eq i32 %3706, 0
  br i1 %3707, label %3708, label %3712

; <label>:3708                                    ; preds = %3617
  %3709 = fsub fast float %3700, %3398
  %3710 = fsub fast float %3701, %3399
  %3711 = fsub fast float %3702, %3400
  br label %3712

; <label>:3712                                    ; preds = %3708, %3617
  %3713 = phi float [ %3709, %3708 ], [ %3700, %3617 ]
  %3714 = phi float [ %3710, %3708 ], [ %3701, %3617 ]
  %3715 = phi float [ %3711, %3708 ], [ %3702, %3617 ]
  %3716 = fmul float %3715, %3705
  %3717 = fmul float %3714, %3705
  %3718 = fmul float %3713, %3705
  %3719 = fadd fast float %3718, %3398
  %3720 = fadd fast float %3717, %3399
  %3721 = fadd fast float %3716, %3400
  %3722 = icmp ne i32 %3618, 0
  %3723 = select i1 %3722, float 1.000000e+00, float 0.000000e+00
  %3724 = fmul fast float %3609, %3723
  %3725 = fsub fast float %3663, %3405
  %3726 = fsub fast float %3664, %3406
  %3727 = fsub fast float %3665, %3407
  %3728 = fmul fast float %3725, %3724
  %3729 = fmul fast float %3726, %3724
  %3730 = fmul fast float %3727, %3724
  %3731 = fadd fast float %3728, %3405
  %3732 = fadd fast float %3729, %3406
  %3733 = fadd fast float %3730, %3407
  %3734 = fsub fast float %3636, %3404
  %3735 = fmul fast float %3734, %3724
  %3736 = fadd fast float %3735, %3404
  %3737 = fmul fast float %3724, %3394
  %3738 = fsub fast float %3394, %3737
  %3739 = fmul fast float %3724, %3393
  %3740 = fsub fast float %3393, %3739
  %3741 = fadd fast float %3609, %3403
  %3742 = call float @dx.op.unary.f32(i32 7, float %3741)  ; Saturate(value)
  %3743 = fsub fast float %3656, %3402
  %3744 = fmul fast float %3743, %3705
  %3745 = fadd fast float %3744, %3402
  %3746 = fsub fast float %3642, %3401
  %3747 = fmul fast float %3746, %3705
  %3748 = fadd fast float %3747, %3401
  %3749 = call float @dx.op.dot3.f32(i32 55, float %3663, float %3664, float %3665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3753 = fmul fast float %3752, %3749
  %3754 = fadd fast float %3753, %3751
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = bitcast float %3453 to i32
  %3757 = and i32 %3756, 65535
  %3758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3757)  ; LegacyF16ToF32(value)
  %3759 = lshr i32 %3756, 16
  %3760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3759)  ; LegacyF16ToF32(value)
  %3761 = fcmp fast oge float %3758, 0.000000e+00
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = select i1 %3761, float %3758, float %3763
  %3765 = fadd fast float %3764, %3760
  %3766 = fsub fast float %3755, %3392
  %3767 = fmul fast float %3766, %3609
  %3768 = fadd fast float %3767, %3392
  %3769 = fmul fast float %3765, %3609
  %3770 = call float @dx.op.binary.f32(i32 35, float %3391, float %3769)  ; FMax(a,b)
  %3771 = call float @dx.op.binary.f32(i32 35, float %3390, float %3609)  ; FMax(a,b)
  %3772 = and i32 %3539, 16
  %3773 = icmp eq i32 %3772, 0
  br i1 %3773, label %3796, label %3774

; <label>:3774                                    ; preds = %3712
  %3775 = bitcast float %3459 to i32
  %3776 = add i32 %3456, 0
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3777, %dx.types.Handle %3622, float %3550, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float %3555, float %3557, float undef, float %3559, float %3561, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3782 = and i32 %3775, 65535
  %3783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3782)  ; LegacyF16ToF32(value)
  %3784 = fmul fast float %3779, %3450
  %3785 = fmul fast float %3780, %3451
  %3786 = fmul fast float %3781, %3452
  %3787 = and i32 %3539, 16384
  %3788 = icmp ne i32 %3787, 0
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = select i1 %3788, float %3790, float 1.000000e+00
  %3792 = fmul fast float %3791, %3783
  %3793 = fmul fast float %3784, %3792
  %3794 = fmul fast float %3785, %3792
  %3795 = fmul fast float %3786, %3792
  br label %3796

; <label>:3796                                    ; preds = %3774, %3712
  %3797 = phi float [ %3793, %3774 ], [ 0.000000e+00, %3712 ]
  %3798 = phi float [ %3794, %3774 ], [ 0.000000e+00, %3712 ]
  %3799 = phi float [ %3795, %3774 ], [ 0.000000e+00, %3712 ]
  %3800 = fsub fast float %3797, %3395
  %3801 = fsub fast float %3798, %3396
  %3802 = fsub fast float %3799, %3397
  %3803 = fmul fast float %3800, %3609
  %3804 = fmul fast float %3801, %3609
  %3805 = fmul fast float %3802, %3609
  %3806 = fadd fast float %3803, %3395
  %3807 = fadd fast float %3804, %3396
  %3808 = fadd fast float %3805, %3397
  br label %3509

; <label>:3809                                    ; preds = %3509
  br label %3810

; <label>:3810                                    ; preds = %3809, %3324
  %3811 = phi float [ 0.000000e+00, %3324 ], [ %3510, %3809 ]
  %3812 = phi float [ %1055, %3324 ], [ %3511, %3809 ]
  %3813 = phi float [ %3294, %3324 ], [ %3512, %3809 ]
  %3814 = phi float [ %3275, %3324 ], [ %3513, %3809 ]
  %3815 = phi float [ 0.000000e+00, %3324 ], [ %3514, %3809 ]
  %3816 = phi float [ 0.000000e+00, %3324 ], [ %3515, %3809 ]
  %3817 = phi float [ %3266, %3324 ], [ %3516, %3809 ]
  %3818 = phi float [ %3267, %3324 ], [ %3517, %3809 ]
  %3819 = phi float [ %3268, %3324 ], [ %3518, %3809 ]
  %3820 = phi float [ %3320, %3324 ], [ %3519, %3809 ]
  %3821 = phi float [ %3321, %3324 ], [ %3520, %3809 ]
  %3822 = phi float [ %3322, %3324 ], [ %3521, %3809 ]
  %3823 = phi float [ %3274, %3324 ], [ %3522, %3809 ]
  %3824 = phi float [ %3273, %3324 ], [ %3523, %3809 ]
  %3825 = phi float [ 0.000000e+00, %3324 ], [ %3524, %3809 ]
  %3826 = phi float [ %3272, %3324 ], [ %3525, %3809 ]
  %3827 = phi float [ %3269, %3324 ], [ %3526, %3809 ]
  %3828 = phi float [ %3270, %3324 ], [ %3527, %3809 ]
  %3829 = phi float [ %3271, %3324 ], [ %3528, %3809 ]
  %3830 = call float @dx.op.dot3.f32(i32 55, float %3820, float %3821, float %3822, float %3820, float %3821, float %3822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3831 = call float @dx.op.unary.f32(i32 25, float %3830)  ; Rsqrt(value)
  %3832 = fmul fast float %3831, %3820
  %3833 = fmul fast float %3831, %3821
  %3834 = fmul fast float %3831, %3822
  %3835 = fadd fast float %3825, %1055
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3832, float %3833, float %3834, float %3832, float %3833, float %3834)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.unary.f32(i32 25, float %3837)  ; Rsqrt(value)
  %3839 = fmul fast float %3838, %3832
  %3840 = fmul fast float %3838, %3833
  %3841 = fmul fast float %3838, %3834
  br label %3842

; <label>:3842                                    ; preds = %3810, %3263
  %3843 = phi float [ %3839, %3810 ], [ %3320, %3263 ]
  %3844 = phi float [ %3840, %3810 ], [ %3321, %3263 ]
  %3845 = phi float [ %3841, %3810 ], [ %3322, %3263 ]
  %3846 = phi float [ %3827, %3810 ], [ %3269, %3263 ]
  %3847 = phi float [ %3828, %3810 ], [ %3270, %3263 ]
  %3848 = phi float [ %3829, %3810 ], [ %3271, %3263 ]
  %3849 = phi float [ %3817, %3810 ], [ %3266, %3263 ]
  %3850 = phi float [ %3818, %3810 ], [ %3267, %3263 ]
  %3851 = phi float [ %3819, %3810 ], [ %3268, %3263 ]
  %3852 = phi float [ %3826, %3810 ], [ %3272, %3263 ]
  %3853 = phi float [ %3836, %3810 ], [ %1055, %3263 ]
  %3854 = phi float [ %3824, %3810 ], [ %3273, %3263 ]
  %3855 = phi float [ %3823, %3810 ], [ %3274, %3263 ]
  %3856 = phi float [ %3816, %3810 ], [ 0.000000e+00, %3263 ]
  %3857 = phi float [ %3815, %3810 ], [ 0.000000e+00, %3263 ]
  %3858 = phi float [ %3811, %3810 ], [ 0.000000e+00, %3263 ]
  %3859 = phi float [ %3813, %3810 ], [ %3294, %3263 ]
  %3860 = phi float [ %3812, %3810 ], [ %1055, %3263 ]
  %3861 = phi float [ %3814, %3810 ], [ %3275, %3263 ]
  %3862 = fadd fast float %3852, 0xBFB99999A0000000
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = fmul fast float %3863, 0x3FF1C71C80000000
  %3865 = call float @dx.op.binary.f32(i32 36, float %3852, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3866 = fsub fast float 1.000000e+00, %3864
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = fmul fast float %3867, %3846
  %3869 = fmul fast float %3867, %3847
  %3870 = fmul fast float %3867, %3848
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3874 = fmul fast float %3864, %3846
  %3875 = fmul fast float %3864, %3847
  %3876 = fmul fast float %3864, %3848
  %3877 = fadd fast float %3874, %3865
  %3878 = fadd fast float %3875, %3865
  %3879 = fadd fast float %3876, %3865
  %3880 = call float @dx.op.unary.f32(i32 7, float %3877)  ; Saturate(value)
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3883 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.i32 %3884, 3
  %3886 = and i32 %3885, 8
  %3887 = icmp ne i32 %3886, 0
  %3888 = call float @dx.op.binary.f32(i32 35, float %3871, float %3846)  ; FMax(a,b)
  %3889 = call float @dx.op.binary.f32(i32 35, float %3872, float %3846)  ; FMax(a,b)
  %3890 = call float @dx.op.binary.f32(i32 35, float %3873, float %3846)  ; FMax(a,b)
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = select i1 %260, float %3846, float %3871
  %3893 = select i1 %260, float %3891, float %3872
  %3894 = select i1 %260, float 1.000000e+00, float %3873
  %3895 = select i1 %3887, float %3888, float %3892
  %3896 = select i1 %3887, float %3889, float %3893
  %3897 = select i1 %3887, float %3890, float %3894
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.CBufRet.f32 %3898, 2
  %3902 = fadd fast float %3899, %201
  %3903 = fadd fast float %3900, %202
  %3904 = fadd fast float %3901, %203
  %3905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3906 = extractvalue %dx.types.CBufRet.f32 %3905, 0
  %3907 = extractvalue %dx.types.CBufRet.f32 %3905, 1
  %3908 = fsub fast float %3902, %3906
  %3909 = fsub fast float %3903, %3907
  %3910 = fmul fast float %3908, %3908
  %3911 = fmul fast float %3909, %3909
  %3912 = fadd fast float %3910, %3911
  %3913 = call float @dx.op.unary.f32(i32 24, float %3912)  ; Sqrt(value)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3905, 2
  %3915 = fcmp fast olt float %3913, %3914
  br i1 %3915, label %3916, label %3983

; <label>:3916                                    ; preds = %3842
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3924 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3925 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3926 = extractvalue %dx.types.CBufRet.f32 %3917, 3
  %3927 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3928 = extractvalue %dx.types.CBufRet.f32 %3921, 3
  %3929 = fadd fast float %3926, %3902
  %3930 = fadd fast float %3927, %3903
  %3931 = fadd fast float %3928, %3904
  %3932 = fmul fast float %3929, %3918
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3920, float %3932)  ; FMad(a,b,c)
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3922, float %3933)  ; FMad(a,b,c)
  %3935 = fmul fast float %3929, %3923
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3930, float %3924, float %3935)  ; FMad(a,b,c)
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3931, float %3925, float %3936)  ; FMad(a,b,c)
  %3938 = fsub fast float %3934, %3926
  %3939 = fsub fast float %3937, %3927
  %3940 = fsub fast float %3938, %3906
  %3941 = fadd fast float %3940, %3914
  %3942 = fsub fast float %3939, %3907
  %3943 = fadd fast float %3942, %3914
  %3944 = extractvalue %dx.types.CBufRet.f32 %3905, 3
  %3945 = fmul fast float %3941, %3944
  %3946 = fmul fast float %3943, %3944
  %3947 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3949 = fsub fast float 1.000000e+00, %3947
  %3950 = fsub fast float 1.000000e+00, %3948
  %3951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3949, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = fcmp fast ugt float %3952, 0.000000e+00
  br i1 %3953, label %3954, label %4257

; <label>:3954                                    ; preds = %3916
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3957 = fmul fast float %3956, %3952
  %3958 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3959 = fadd fast float %3958, %3957
  %3960 = extractvalue %dx.types.CBufRet.f32 %3921, 2
  %3961 = fadd fast float %3959, %3928
  %3962 = fmul fast float %3934, %3922
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3925, float %3962)  ; FMad(a,b,c)
  %3964 = call float @dx.op.tertiary.f32(i32 46, float %3961, float %3960, float %3963)  ; FMad(a,b,c)
  %3965 = fsub fast float %3964, %3928
  %3966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3967 = extractvalue %dx.types.CBufRet.f32 %3966, 2
  %3968 = fsub fast float %3965, %3967
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3949, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.f32 %3969, 1
  %3972 = extractvalue %dx.types.ResRet.f32 %3969, 2
  %3973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3949, float %3950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = fadd fast float %3974, %3970
  %3978 = fmul fast float %3977, 0x3F847AE140000000
  %3979 = fadd fast float %3975, %3971
  %3980 = fmul fast float %3979, 0x3F847AE140000000
  %3981 = fadd fast float %3976, %3972
  %3982 = fmul fast float %3981, 0x3F847AE140000000
  br label %4257

; <label>:3983                                    ; preds = %3842
  %3984 = and i32 %239, 1
  %3985 = icmp eq i32 %3984, 0
  br i1 %3985, label %4257, label %3986

; <label>:3986                                    ; preds = %3983
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3994 = extractvalue %dx.types.CBufRet.f32 %3989, 1
  %3995 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3996 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3997 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3998 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %3999 = fadd fast float %3996, %3902
  %4000 = fadd fast float %3997, %3903
  %4001 = fadd fast float %3998, %3904
  %4002 = fmul fast float %3999, %3988
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3990, float %4002)  ; FMad(a,b,c)
  %4004 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %3992, float %4003)  ; FMad(a,b,c)
  %4005 = fmul fast float %3999, %3993
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %3994, float %4005)  ; FMad(a,b,c)
  %4007 = call float @dx.op.tertiary.f32(i32 46, float %4001, float %3995, float %4006)  ; FMad(a,b,c)
  %4008 = fsub fast float %4004, %3996
  %4009 = fsub fast float %4007, %3997
  %4010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4011 = extractvalue %dx.types.CBufRet.f32 %4010, 0
  %4012 = extractvalue %dx.types.CBufRet.f32 %4010, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4010, 2
  %4014 = extractvalue %dx.types.CBufRet.f32 %4010, 3
  %4015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.f32 %4015, 3
  %4017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.i32 %4017, 0
  %4019 = extractvalue %dx.types.CBufRet.i32 %4017, 1
  %4020 = udiv i32 %4019, %4018
  %4021 = fsub fast float %4008, %4011
  %4022 = fsub fast float %4009, %4012
  %4023 = call float @dx.op.binary.f32(i32 35, float %4021, float 0.000000e+00)  ; FMax(a,b)
  %4024 = call float @dx.op.binary.f32(i32 35, float %4022, float 0.000000e+00)  ; FMax(a,b)
  %4025 = call float @dx.op.binary.f32(i32 36, float %4023, float %4013)  ; FMin(a,b)
  %4026 = call float @dx.op.binary.f32(i32 36, float %4024, float %4014)  ; FMin(a,b)
  %4027 = add i32 %4018, -1
  %4028 = add i32 %4020, -1
  %4029 = fmul fast float %4025, %4016
  %4030 = fmul fast float %4026, %4016
  %4031 = fptoui float %4029 to i32
  %4032 = fptoui float %4030 to i32
  %4033 = call i32 @dx.op.binary.i32(i32 40, i32 %4031, i32 %4027)  ; UMin(a,b)
  %4034 = call i32 @dx.op.binary.i32(i32 40, i32 %4032, i32 %4028)  ; UMin(a,b)
  %4035 = mul i32 %4034, %4018
  %4036 = add i32 %4035, %4033
  %4037 = shl i32 %4036, 2
  %4038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4037, i32 undef)  ; BufferLoad(srv,index,wot)
  %4039 = extractvalue %dx.types.ResRet.i32 %4038, 0
  %4040 = icmp eq i32 %4039, -1
  br i1 %4040, label %4257, label %4041

; <label>:4041                                    ; preds = %3986
  %4042 = mul i32 %4039, 148
  %4043 = add i32 %4042, 4
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = add i32 %4042, 8
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = add i32 %4042, 36
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = add i32 %4042, 60
  %4053 = add i32 %4042, 92
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = add i32 %4042, 116
  %4057 = fsub fast float %4008, %4045
  %4058 = fsub fast float %4009, %4048
  %4059 = fmul fast float %4016, %4057
  %4060 = fmul fast float %4016, %4058
  %4061 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4063 = fsub fast float 1.000000e+00, %4062
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4066 = call float @dx.op.unary.f32(i32 83, float %4061)  ; DerivCoarseX(value)
  %4067 = call float @dx.op.unary.f32(i32 83, float %4063)  ; DerivCoarseX(value)
  %4068 = call float @dx.op.unary.f32(i32 84, float %4061)  ; DerivCoarseY(value)
  %4069 = call float @dx.op.unary.f32(i32 84, float %4063)  ; DerivCoarseY(value)
  %4070 = fmul fast float %4066, %4065
  %4071 = fmul fast float %4067, %4065
  %4072 = fmul fast float %4068, %4065
  %4073 = fmul fast float %4069, %4065
  %4074 = call float @dx.op.dot2.f32(i32 54, float %4072, float %4073, float %4072, float %4073)  ; Dot2(ax,ay,bx,by)
  %4075 = call float @dx.op.dot2.f32(i32 54, float %4070, float %4071, float %4070, float %4071)  ; Dot2(ax,ay,bx,by)
  %4076 = call float @dx.op.binary.f32(i32 35, float %4075, float %4074)  ; FMax(a,b)
  %4077 = call float @dx.op.unary.f32(i32 23, float %4076)  ; Log(value)
  %4078 = fmul fast float %4077, 5.000000e-01
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4081 = fadd fast float %4080, %4078
  %4082 = call float @dx.op.binary.f32(i32 35, float %4081, float 0.000000e+00)  ; FMax(a,b)
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4085 = fadd fast float %4084, %4082
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4088 = fadd fast float %4085, %4087
  %4089 = add i32 %4055, 0
  %4090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4089, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4091 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4090, i32 0)  ; GetDimensions(handle,mipLevel)
  %4092 = extractvalue %dx.types.Dimensions %4091, 0
  %4093 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4092)  ; FirstbitLo(value)
  %4094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.i32 %4094, 1
  %4096 = sub nsw i32 %4095, %4093
  %4097 = sitofp i32 %4096 to float
  %4098 = fsub fast float %4088, %4097
  %4099 = call float @dx.op.binary.f32(i32 35, float %4098, float 0.000000e+00)  ; FMax(a,b)
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4090, %dx.types.Handle %52, float %4061, float %4063, float %4051, float undef, i32 0, i32 0, i32 undef, float %4099)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = fcmp ule float %4101, 0x3FE0101020000000
  %4103 = extractvalue %dx.types.CBufRet.i32 %4094, 0
  %4104 = and i32 %4103, 128
  %4105 = icmp ne i32 %4104, 0
  %4106 = and i1 %4102, %4105
  br i1 %4106, label %4257, label %4107

; <label>:4107                                    ; preds = %4041
  %4108 = add i32 %4042, 20
  %4109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4108, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = add i32 %4042, 24
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = add i32 %4042, 40
  %4115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4114, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = add i32 %4042, 96
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4122 = fmul fast float %4121, %4061
  %4123 = fmul fast float %4121, %4063
  %4124 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4125 = fadd fast float %4122, %4124
  %4126 = fadd fast float %4123, %4124
  %4127 = add i32 %4119, 0
  %4128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4127, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4129 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4128, i32 0)  ; GetDimensions(handle,mipLevel)
  %4130 = extractvalue %dx.types.Dimensions %4129, 0
  %4131 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4130)  ; FirstbitLo(value)
  %4132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.i32 %4132, 1
  %4134 = sub nsw i32 %4133, %4131
  %4135 = sitofp i32 %4134 to float
  %4136 = fsub fast float %4085, %4135
  %4137 = call float @dx.op.binary.f32(i32 35, float %4136, float 0.000000e+00)  ; FMax(a,b)
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4128, %dx.types.Handle %52, float %4125, float %4126, float %4116, float undef, i32 0, i32 0, i32 undef, float %4137)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = fmul fast float %4139, %4110
  %4141 = fadd fast float %4140, %4113
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4150 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4151 = fadd fast float %4147, %4008
  %4152 = fadd fast float %4149, %4009
  %4153 = fadd fast float %4141, %4150
  %4154 = fmul fast float %4151, %4143
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4144, float %4154)  ; FMad(a,b,c)
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4145, float %4155)  ; FMad(a,b,c)
  %4157 = fsub fast float %4156, %4150
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 2
  %4160 = fsub fast float %4157, %4159
  %4161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.i32 %4161, 0
  %4163 = call i32 @dx.op.binary.i32(i32 40, i32 %4039, i32 %4162)  ; UMin(a,b)
  %4164 = mul i32 %4163, 36
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = add i32 %4164, 4
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = fmul fast float %4169, %4061
  %4171 = fmul fast float %4169, %4063
  %4172 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4173 = fadd fast float %4170, %4172
  %4174 = fadd fast float %4171, %4172
  %4175 = icmp eq i32 %4166, 0
  br i1 %4175, label %4244, label %4176

; <label>:4176                                    ; preds = %4107
  br label %4177

; <label>:4177                                    ; preds = %4234, %4176
  %4178 = phi float [ %4235, %4234 ], [ 0.000000e+00, %4176 ]
  %4179 = phi float [ %4236, %4234 ], [ 0.000000e+00, %4176 ]
  %4180 = phi float [ %4237, %4234 ], [ 0.000000e+00, %4176 ]
  %4181 = phi float [ %4238, %4234 ], [ 0.000000e+00, %4176 ]
  %4182 = phi float [ %4239, %4234 ], [ 0.000000e+00, %4176 ]
  %4183 = phi float [ %4240, %4234 ], [ 0.000000e+00, %4176 ]
  %4184 = phi i32 [ %4241, %4234 ], [ 0, %4176 ]
  %4185 = shl i32 %4184, 2
  %4186 = add i32 %4052, %4185
  %4187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4186, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = add i32 %4056, %4185
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = add i32 %4191, 0
  %4193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4194 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4193, i32 0)  ; GetDimensions(handle,mipLevel)
  %4195 = extractvalue %dx.types.Dimensions %4194, 0
  %4196 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4195)  ; FirstbitLo(value)
  %4197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.i32 %4197, 1
  %4199 = sub nsw i32 %4198, %4196
  %4200 = sitofp i32 %4199 to float
  %4201 = fsub fast float %4085, %4200
  %4202 = call float @dx.op.binary.f32(i32 35, float %4201, float 0.000000e+00)  ; FMax(a,b)
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4193, %dx.types.Handle %52, float %4173, float %4174, float %4188, float undef, i32 0, i32 0, i32 undef, float %4202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = fcmp fast ogt float %4204, 0.000000e+00
  br i1 %4205, label %4206, label %4234

; <label>:4206                                    ; preds = %4177
  %4207 = add i32 %4167, %4185
  %4208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.i32 %4208, 0
  %4210 = and i32 %4209, 32767
  %4211 = mul nuw nsw i32 %4210, 928
  %4212 = add nuw nsw i32 %4211, 48
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = add nuw nsw i32 %4211, 60
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.ResRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.ResRet.f32 %4218, 2
  %4222 = fmul fast float %4214, %4204
  %4223 = fmul fast float %4215, %4204
  %4224 = fmul fast float %4216, %4204
  %4225 = fadd fast float %4222, %4178
  %4226 = fadd fast float %4223, %4179
  %4227 = fadd fast float %4224, %4180
  %4228 = fmul fast float %4219, %4204
  %4229 = fmul fast float %4220, %4204
  %4230 = fmul fast float %4221, %4204
  %4231 = fadd fast float %4228, %4181
  %4232 = fadd fast float %4229, %4182
  %4233 = fadd fast float %4230, %4183
  br label %4234

; <label>:4234                                    ; preds = %4206, %4177
  %4235 = phi float [ %4225, %4206 ], [ %4178, %4177 ]
  %4236 = phi float [ %4226, %4206 ], [ %4179, %4177 ]
  %4237 = phi float [ %4227, %4206 ], [ %4180, %4177 ]
  %4238 = phi float [ %4231, %4206 ], [ %4181, %4177 ]
  %4239 = phi float [ %4232, %4206 ], [ %4182, %4177 ]
  %4240 = phi float [ %4233, %4206 ], [ %4183, %4177 ]
  %4241 = add nuw i32 %4184, 1
  %4242 = icmp eq i32 %4241, %4166
  br i1 %4242, label %4243, label %4177

; <label>:4243                                    ; preds = %4234
  br label %4244

; <label>:4244                                    ; preds = %4243, %4107
  %4245 = phi float [ 0.000000e+00, %4107 ], [ %4235, %4243 ]
  %4246 = phi float [ 0.000000e+00, %4107 ], [ %4236, %4243 ]
  %4247 = phi float [ 0.000000e+00, %4107 ], [ %4237, %4243 ]
  %4248 = phi float [ 0.000000e+00, %4107 ], [ %4238, %4243 ]
  %4249 = phi float [ 0.000000e+00, %4107 ], [ %4239, %4243 ]
  %4250 = phi float [ 0.000000e+00, %4107 ], [ %4240, %4243 ]
  %4251 = fadd fast float %4248, %4245
  %4252 = fmul fast float %4251, 0x3F847AE140000000
  %4253 = fadd fast float %4249, %4246
  %4254 = fmul fast float %4253, 0x3F847AE140000000
  %4255 = fadd fast float %4250, %4247
  %4256 = fmul fast float %4255, 0x3F847AE140000000
  br label %4257

; <label>:4257                                    ; preds = %4244, %4041, %3986, %3983, %3954, %3916
  %4258 = phi float [ %3978, %3954 ], [ 0.000000e+00, %3916 ], [ %4252, %4244 ], [ 0.000000e+00, %3986 ], [ 0.000000e+00, %4041 ], [ 0.000000e+00, %3983 ]
  %4259 = phi float [ %3980, %3954 ], [ 0.000000e+00, %3916 ], [ %4254, %4244 ], [ 0.000000e+00, %3986 ], [ 0.000000e+00, %4041 ], [ 0.000000e+00, %3983 ]
  %4260 = phi float [ %3982, %3954 ], [ 0.000000e+00, %3916 ], [ %4256, %4244 ], [ 0.000000e+00, %3986 ], [ 0.000000e+00, %4041 ], [ 0.000000e+00, %3983 ]
  %4261 = phi float [ %3968, %3954 ], [ -1.310720e+05, %3916 ], [ %4160, %4244 ], [ -1.310720e+05, %3986 ], [ -1.310720e+05, %4041 ], [ -1.310720e+05, %3983 ]
  %4262 = phi i1 [ true, %3954 ], [ false, %3916 ], [ true, %4244 ], [ false, %3986 ], [ false, %4041 ], [ false, %3983 ]
  %4263 = and i32 %239, 3
  %4264 = icmp eq i32 %4263, 1
  %4265 = select i1 %4264, float 1.000000e+00, float 0.000000e+00
  %4266 = fsub fast float %4261, %203
  %4267 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4268 = select i1 %4262, float %4267, float 1.000000e+00
  %4269 = fmul fast float %4268, %4265
  %4270 = icmp eq i32 %4263, 3
  %4271 = select i1 %4270, float 1.000000e+00, float %4269
  %4272 = call float @dx.op.binary.f32(i32 35, float %3858, float %4271)  ; FMax(a,b)
  %4273 = fcmp fast olt float %4271, 1.000000e+00
  %4274 = fcmp uge float %75, 0.000000e+00
  %4275 = and i1 %4274, %4273
  br i1 %4275, label %4276, label %4286

; <label>:4276                                    ; preds = %4257
  %4277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = extractvalue %dx.types.ResRet.f32 %4277, 1
  %4280 = extractvalue %dx.types.ResRet.f32 %4277, 2
  %4281 = fadd fast float %4278, %4272
  %4282 = fcmp ule float %74, 0.000000e+00
  %4283 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4284 = select i1 %4282, float %4283, float 1.000000e+00
  %4285 = fmul fast float %4284, %4280
  br label %4286

; <label>:4286                                    ; preds = %4276, %4257
  %4287 = phi float [ %4281, %4276 ], [ %4272, %4257 ]
  %4288 = phi float [ %4279, %4276 ], [ 0.000000e+00, %4257 ]
  %4289 = phi float [ %4285, %4276 ], [ 0.000000e+00, %4257 ]
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = fcmp fast une float %4291, 0.000000e+00
  %4294 = fcmp fast une float %4292, 0.000000e+00
  %4295 = or i1 %4293, %4294
  br i1 %4295, label %4296, label %4855

; <label>:4296                                    ; preds = %4286
  br i1 %4293, label %4297, label %4570

; <label>:4297                                    ; preds = %4296
  %4298 = call float @dx.op.unary.f32(i32 23, float %3855)  ; Log(value)
  %4299 = fmul fast float %4298, 4.000000e+00
  %4300 = call float @dx.op.unary.f32(i32 21, float %4299)  ; Exp(value)
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = fmul fast float %4302, %62
  %4304 = fmul fast float %4302, %63
  %4305 = fmul fast float %4302, %64
  %4306 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4307 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4308 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4309 = call float @dx.op.unary.f32(i32 23, float %4306)  ; Log(value)
  %4310 = call float @dx.op.unary.f32(i32 23, float %4307)  ; Log(value)
  %4311 = call float @dx.op.unary.f32(i32 23, float %4308)  ; Log(value)
  %4312 = fmul fast float %4309, 4.000000e+00
  %4313 = fmul fast float %4310, 4.000000e+00
  %4314 = fmul fast float %4311, 4.000000e+00
  %4315 = call float @dx.op.unary.f32(i32 21, float %4312)  ; Exp(value)
  %4316 = call float @dx.op.unary.f32(i32 21, float %4313)  ; Exp(value)
  %4317 = call float @dx.op.unary.f32(i32 21, float %4314)  ; Exp(value)
  %4318 = fadd fast float %4316, %4315
  %4319 = fadd fast float %4318, %4317
  %4320 = fdiv fast float 1.000000e+00, %4319
  %4321 = fmul fast float %4320, %4315
  %4322 = fcmp fast ogt float %71, 0.000000e+00
  %4323 = fcmp fast ogt float %72, 0.000000e+00
  %4324 = fcmp fast ogt float %73, 0.000000e+00
  %4325 = fcmp fast olt float %71, 0.000000e+00
  %4326 = fcmp fast olt float %72, 0.000000e+00
  %4327 = fcmp fast olt float %73, 0.000000e+00
  %4328 = zext i1 %4322 to i32
  %4329 = zext i1 %4323 to i32
  %4330 = zext i1 %4324 to i32
  %4331 = zext i1 %4325 to i32
  %4332 = zext i1 %4326 to i32
  %4333 = zext i1 %4327 to i32
  %4334 = sub nsw i32 %4328, %4331
  %4335 = sub nsw i32 %4329, %4332
  %4336 = sub nsw i32 %4330, %4333
  %4337 = call float @dx.op.unary.f32(i32 83, float %4303)  ; DerivCoarseX(value)
  %4338 = call float @dx.op.unary.f32(i32 83, float %4304)  ; DerivCoarseX(value)
  %4339 = call float @dx.op.unary.f32(i32 83, float %4305)  ; DerivCoarseX(value)
  %4340 = call float @dx.op.unary.f32(i32 84, float %4303)  ; DerivCoarseY(value)
  %4341 = call float @dx.op.unary.f32(i32 84, float %4304)  ; DerivCoarseY(value)
  %4342 = call float @dx.op.unary.f32(i32 84, float %4305)  ; DerivCoarseY(value)
  %4343 = fcmp fast ole float %271, %4321
  %4344 = fmul fast float %4320, %4318
  %4345 = fcmp fast ole float %271, %4344
  %4346 = select i1 %4345, float %4305, float %4303
  %4347 = select i1 %4345, float %4303, float %4304
  %4348 = select i1 %4343, float %4304, float %4346
  %4349 = select i1 %4343, float %4305, float %4347
  %4350 = select i1 %4345, float %4339, float %4337
  %4351 = select i1 %4345, float %4337, float %4338
  %4352 = select i1 %4343, float %4338, float %4350
  %4353 = select i1 %4343, float %4339, float %4351
  %4354 = select i1 %4345, float %4342, float %4340
  %4355 = select i1 %4345, float %4340, float %4341
  %4356 = select i1 %4343, float %4341, float %4354
  %4357 = select i1 %4343, float %4342, float %4355
  %4358 = call float @dx.op.unary.f32(i32 27, float %4348)  ; Round_ni(value)
  %4359 = call float @dx.op.unary.f32(i32 27, float %4349)  ; Round_ni(value)
  %4360 = fptosi float %4358 to i32
  %4361 = fptosi float %4359 to i32
  %4362 = xor i32 %4361, %4360
  %4363 = sitofp i32 %4362 to float
  %4364 = fptosi float %4363 to i32
  %4365 = sitofp i32 %4364 to float
  %4366 = fmul fast float %4365, 0x3FE3C6EF40000000
  %4367 = frem fast float %4358, 2.560000e+02
  %4368 = frem fast float %4359, 2.560000e+02
  %4369 = fptoui float %4367 to i32
  %4370 = fptoui float %4368 to i32
  %4371 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4369, i32 %4370, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = fadd fast float %4372, %4366
  %4376 = fadd fast float %4373, %4366
  %4377 = fadd fast float %4374, %4366
  %4378 = call float @dx.op.unary.f32(i32 22, float %4375)  ; Frc(value)
  %4379 = call float @dx.op.unary.f32(i32 22, float %4376)  ; Frc(value)
  %4380 = call float @dx.op.unary.f32(i32 22, float %4377)  ; Frc(value)
  %4381 = fmul fast float %4380, 0x401921FB60000000
  %4382 = call float @dx.op.unary.f32(i32 13, float %4381)  ; Sin(value)
  %4383 = call float @dx.op.unary.f32(i32 12, float %4381)  ; Cos(value)
  %4384 = fsub fast float -0.000000e+00, %4383
  %4385 = fmul fast float %4383, %4348
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4349, float %4385)  ; FMad(a,b,c)
  %4387 = fmul fast float %4382, %4348
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4384, float %4349, float %4387)  ; FMad(a,b,c)
  %4389 = fadd fast float %4386, %4378
  %4390 = fadd fast float %4388, %4379
  %4391 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4392 = bitcast float %4391 to i32
  %4393 = icmp eq i32 %4392, 0
  br i1 %4393, label %4432, label %4394

; <label>:4394                                    ; preds = %4297
  %4395 = add i32 %4392, 0
  %4396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4397 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4396, %dx.types.Handle %111, float %4389, float %4390, float undef, float undef, i32 0, i32 0, i32 undef, float %4352, float %4353, float undef, float %4356, float %4357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4401 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %4402 = fsub fast float 1.000000e+00, %4291
  %4403 = call float @dx.op.binary.f32(i32 35, float %4402, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4404 = bitcast float %4291 to i32
  %4405 = sitofp i32 %4404 to float
  %4406 = fadd fast float %4405, 0xC1CFBF8940000000
  %4407 = fmul fast float %4401, %4406
  %4408 = fadd fast float %4407, 0x41CFBF8940000000
  %4409 = fptosi float %4408 to i32
  %4410 = bitcast i32 %4409 to float
  %4411 = bitcast float %4403 to i32
  %4412 = sitofp i32 %4411 to float
  %4413 = fadd fast float %4412, 0xC1CFBF8940000000
  %4414 = fmul fast float %4413, %4401
  %4415 = fadd fast float %4414, 0x41CFBF8940000000
  %4416 = fptosi float %4415 to i32
  %4417 = bitcast i32 %4416 to float
  %4418 = fmul fast float %4410, %4400
  %4419 = fmul fast float %4417, %4400
  %4420 = fsub fast float %4403, %4418
  %4421 = fadd fast float %4419, %4403
  %4422 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4424 = fsub fast float %4398, %4422
  %4425 = fsub fast float %4423, %4422
  %4426 = bitcast float %4425 to i32
  %4427 = sub nsw i32 2129859010, %4426
  %4428 = bitcast i32 %4427 to float
  %4429 = fmul fast float %4428, %4424
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = fcmp fast olt float %4430, 0x3F70101020000000
  br i1 %4431, label %4570, label %4432

; <label>:4432                                    ; preds = %4394, %4297
  %4433 = phi float [ %4430, %4394 ], [ %4291, %4297 ]
  %4434 = fmul fast float %4433, %4300
  %4435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.i32 %4435, 1
  %4437 = extractvalue %dx.types.CBufRet.i32 %4435, 0
  %4438 = add i32 %4437, 0
  %4439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4440 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4439, %dx.types.Handle %110, float %4389, float %4390, float undef, float undef, i32 0, i32 0, i32 undef, float %4352, float %4353, float undef, float %4356, float %4357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.ResRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.ResRet.f32 %4440, 2
  %4444 = extractvalue %dx.types.ResRet.f32 %4440, 3
  %4445 = and i32 %4436, 255
  %4446 = uitofp i32 %4445 to float
  %4447 = lshr i32 %4436, 8
  %4448 = and i32 %4447, 255
  %4449 = uitofp i32 %4448 to float
  %4450 = fmul fast float %4444, %4446
  %4451 = fadd fast float %4450, %4449
  %4452 = fmul fast float %4451, 0x3F70101000000000
  %4453 = fadd fast float %4452, 0xBFB99999A0000000
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4454, 0x3FF1C71C80000000
  %4456 = call float @dx.op.binary.f32(i32 36, float %4452, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4457 = fsub fast float 1.000000e+00, %4455
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, %4441
  %4460 = fmul fast float %4458, %4442
  %4461 = fmul fast float %4458, %4443
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4465 = fmul fast float %4455, %4441
  %4466 = fmul fast float %4455, %4442
  %4467 = fmul fast float %4455, %4443
  %4468 = fadd fast float %4465, %4456
  %4469 = fadd fast float %4466, %4456
  %4470 = fadd fast float %4467, %4456
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 3
  %4476 = extractvalue %dx.types.CBufRet.i32 %4474, 2
  %4477 = add i32 %4476, 0
  %4478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4479 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4478, %dx.types.Handle %110, float %4389, float %4390, float undef, float undef, i32 0, i32 0, i32 undef, float %4352, float %4353, float undef, float %4356, float %4357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4480 = extractvalue %dx.types.ResRet.f32 %4479, 0
  %4481 = extractvalue %dx.types.ResRet.f32 %4479, 1
  %4482 = extractvalue %dx.types.ResRet.f32 %4479, 2
  %4483 = extractvalue %dx.types.ResRet.f32 %4479, 3
  %4484 = and i32 %4475, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = lshr i32 %4475, 8
  %4487 = and i32 %4486, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = lshr i32 %4475, 16
  %4490 = and i32 %4489, 255
  %4491 = uitofp i32 %4490 to float
  %4492 = fmul fast float %4491, 0x3F70101000000000
  %4493 = fmul fast float %4480, %4485
  %4494 = fadd fast float %4493, %4488
  %4495 = fmul fast float %4494, 0x3F70101000000000
  %4496 = fadd fast float %4481, -5.000000e-01
  %4497 = fadd fast float %4483, -5.000000e-01
  %4498 = fmul fast float %4496, %4492
  %4499 = fmul fast float %4497, %4492
  %4500 = fadd fast float %4498, 5.000000e-01
  %4501 = fadd fast float %4499, 5.000000e-01
  %4502 = fmul fast float %4500, 2.000000e+00
  %4503 = fadd fast float %4502, -1.000000e+00
  %4504 = fmul fast float %4501, 2.000000e+00
  %4505 = fadd fast float %4504, -1.000000e+00
  %4506 = fadd fast float %4503, %4505
  %4507 = fmul fast float %4506, 5.000000e-01
  %4508 = fsub fast float %4503, %4505
  %4509 = fmul fast float %4508, 5.000000e-01
  %4510 = call float @dx.op.unary.f32(i32 6, float %4507)  ; FAbs(value)
  %4511 = fsub fast float 1.000000e+00, %4510
  %4512 = call float @dx.op.unary.f32(i32 6, float %4509)  ; FAbs(value)
  %4513 = fsub fast float %4511, %4512
  %4514 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4509, float %4513, float %4507, float %4509, float %4513)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = call float @dx.op.unary.f32(i32 25, float %4514)  ; Rsqrt(value)
  %4516 = fmul fast float %4507, %4515
  %4517 = fmul fast float %4509, %4515
  %4518 = select i1 %4345, i32 %4335, i32 %4336
  %4519 = select i1 %4343, i32 %4334, i32 %4518
  %4520 = sitofp i32 %4519 to float
  %4521 = fmul fast float %4513, %4520
  %4522 = fmul fast float %4521, %4515
  %4523 = select i1 %4345, float %4522, float %4517
  %4524 = select i1 %4345, float %4517, float %4522
  %4525 = select i1 %4343, float %4522, float %4516
  %4526 = select i1 %4343, float %4517, float %4523
  %4527 = select i1 %4343, float %4516, float %4524
  %4528 = fsub fast float %4462, %3895
  %4529 = fsub fast float %4463, %3896
  %4530 = fsub fast float %4464, %3897
  %4531 = fmul fast float %4528, %4434
  %4532 = fmul fast float %4529, %4434
  %4533 = fmul fast float %4530, %4434
  %4534 = fadd fast float %4531, %3895
  %4535 = fadd fast float %4532, %3896
  %4536 = fadd fast float %4533, %3897
  %4537 = fsub fast float %4471, %3880
  %4538 = fsub fast float %4472, %3881
  %4539 = fsub fast float %4473, %3882
  %4540 = fmul fast float %4537, %4434
  %4541 = fmul fast float %4538, %4434
  %4542 = fmul fast float %4539, %4434
  %4543 = fadd fast float %4540, %3880
  %4544 = fadd fast float %4541, %3881
  %4545 = fadd fast float %4542, %3882
  %4546 = fadd fast float %4525, %3843
  %4547 = fadd fast float %4526, %3844
  %4548 = fadd fast float %4527, %3845
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4547, float %4548, float %4546, float %4547, float %4548)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = call float @dx.op.unary.f32(i32 25, float %4549)  ; Rsqrt(value)
  %4551 = fmul fast float %4546, %4550
  %4552 = fmul fast float %4547, %4550
  %4553 = fmul fast float %4548, %4550
  %4554 = fsub fast float %4551, %3843
  %4555 = fsub fast float %4552, %3844
  %4556 = fsub fast float %4553, %3845
  %4557 = fmul fast float %4554, %4434
  %4558 = fmul fast float %4555, %4434
  %4559 = fmul fast float %4556, %4434
  %4560 = fadd fast float %4557, %3843
  %4561 = fadd fast float %4558, %3844
  %4562 = fadd fast float %4559, %3845
  %4563 = call float @dx.op.binary.f32(i32 36, float %3855, float %4482)  ; FMin(a,b)
  %4564 = fsub fast float %4563, %3855
  %4565 = fmul fast float %4564, %4434
  %4566 = fadd fast float %4565, %3855
  %4567 = fsub fast float %4495, %3883
  %4568 = fmul fast float %4567, %4434
  %4569 = fadd fast float %4568, %3883
  br label %4570

; <label>:4570                                    ; preds = %4432, %4394, %4296
  %4571 = phi float [ %4543, %4432 ], [ %3880, %4394 ], [ %3880, %4296 ]
  %4572 = phi float [ %4544, %4432 ], [ %3881, %4394 ], [ %3881, %4296 ]
  %4573 = phi float [ %4545, %4432 ], [ %3882, %4394 ], [ %3882, %4296 ]
  %4574 = phi float [ %4534, %4432 ], [ %3895, %4394 ], [ %3895, %4296 ]
  %4575 = phi float [ %4535, %4432 ], [ %3896, %4394 ], [ %3896, %4296 ]
  %4576 = phi float [ %4536, %4432 ], [ %3897, %4394 ], [ %3897, %4296 ]
  %4577 = phi float [ %4560, %4432 ], [ %3843, %4394 ], [ %3843, %4296 ]
  %4578 = phi float [ %4561, %4432 ], [ %3844, %4394 ], [ %3844, %4296 ]
  %4579 = phi float [ %4562, %4432 ], [ %3845, %4394 ], [ %3845, %4296 ]
  %4580 = phi float [ %4569, %4432 ], [ %3883, %4394 ], [ %3883, %4296 ]
  %4581 = phi float [ %4566, %4432 ], [ %3855, %4394 ], [ %3855, %4296 ]
  br i1 %4294, label %4582, label %4855

; <label>:4582                                    ; preds = %4570
  %4583 = call float @dx.op.unary.f32(i32 23, float %4581)  ; Log(value)
  %4584 = fmul fast float %4583, 4.000000e+00
  %4585 = call float @dx.op.unary.f32(i32 21, float %4584)  ; Exp(value)
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = fmul fast float %4587, %62
  %4589 = fmul fast float %4587, %63
  %4590 = fmul fast float %4587, %64
  %4591 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4592 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4593 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4594 = call float @dx.op.unary.f32(i32 23, float %4591)  ; Log(value)
  %4595 = call float @dx.op.unary.f32(i32 23, float %4592)  ; Log(value)
  %4596 = call float @dx.op.unary.f32(i32 23, float %4593)  ; Log(value)
  %4597 = fmul fast float %4594, 4.000000e+00
  %4598 = fmul fast float %4595, 4.000000e+00
  %4599 = fmul fast float %4596, 4.000000e+00
  %4600 = call float @dx.op.unary.f32(i32 21, float %4597)  ; Exp(value)
  %4601 = call float @dx.op.unary.f32(i32 21, float %4598)  ; Exp(value)
  %4602 = call float @dx.op.unary.f32(i32 21, float %4599)  ; Exp(value)
  %4603 = fadd fast float %4601, %4600
  %4604 = fadd fast float %4603, %4602
  %4605 = fdiv fast float 1.000000e+00, %4604
  %4606 = fmul fast float %4605, %4600
  %4607 = fcmp fast ogt float %71, 0.000000e+00
  %4608 = fcmp fast ogt float %72, 0.000000e+00
  %4609 = fcmp fast ogt float %73, 0.000000e+00
  %4610 = fcmp fast olt float %71, 0.000000e+00
  %4611 = fcmp fast olt float %72, 0.000000e+00
  %4612 = fcmp fast olt float %73, 0.000000e+00
  %4613 = zext i1 %4607 to i32
  %4614 = zext i1 %4608 to i32
  %4615 = zext i1 %4609 to i32
  %4616 = zext i1 %4610 to i32
  %4617 = zext i1 %4611 to i32
  %4618 = zext i1 %4612 to i32
  %4619 = sub nsw i32 %4613, %4616
  %4620 = sub nsw i32 %4614, %4617
  %4621 = sub nsw i32 %4615, %4618
  %4622 = call float @dx.op.unary.f32(i32 83, float %4588)  ; DerivCoarseX(value)
  %4623 = call float @dx.op.unary.f32(i32 83, float %4589)  ; DerivCoarseX(value)
  %4624 = call float @dx.op.unary.f32(i32 83, float %4590)  ; DerivCoarseX(value)
  %4625 = call float @dx.op.unary.f32(i32 84, float %4588)  ; DerivCoarseY(value)
  %4626 = call float @dx.op.unary.f32(i32 84, float %4589)  ; DerivCoarseY(value)
  %4627 = call float @dx.op.unary.f32(i32 84, float %4590)  ; DerivCoarseY(value)
  %4628 = fcmp fast ole float %271, %4606
  %4629 = fmul fast float %4605, %4603
  %4630 = fcmp fast ole float %271, %4629
  %4631 = select i1 %4630, float %4590, float %4588
  %4632 = select i1 %4630, float %4588, float %4589
  %4633 = select i1 %4628, float %4589, float %4631
  %4634 = select i1 %4628, float %4590, float %4632
  %4635 = select i1 %4630, float %4624, float %4622
  %4636 = select i1 %4630, float %4622, float %4623
  %4637 = select i1 %4628, float %4623, float %4635
  %4638 = select i1 %4628, float %4624, float %4636
  %4639 = select i1 %4630, float %4627, float %4625
  %4640 = select i1 %4630, float %4625, float %4626
  %4641 = select i1 %4628, float %4626, float %4639
  %4642 = select i1 %4628, float %4627, float %4640
  %4643 = call float @dx.op.unary.f32(i32 27, float %4633)  ; Round_ni(value)
  %4644 = call float @dx.op.unary.f32(i32 27, float %4634)  ; Round_ni(value)
  %4645 = fptosi float %4643 to i32
  %4646 = fptosi float %4644 to i32
  %4647 = xor i32 %4646, %4645
  %4648 = sitofp i32 %4647 to float
  %4649 = fptosi float %4648 to i32
  %4650 = sitofp i32 %4649 to float
  %4651 = fmul fast float %4650, 0x3FE3C6EF40000000
  %4652 = frem fast float %4643, 2.560000e+02
  %4653 = frem fast float %4644, 2.560000e+02
  %4654 = fptoui float %4652 to i32
  %4655 = fptoui float %4653 to i32
  %4656 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4654, i32 %4655, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = fadd fast float %4657, %4651
  %4661 = fadd fast float %4658, %4651
  %4662 = fadd fast float %4659, %4651
  %4663 = call float @dx.op.unary.f32(i32 22, float %4660)  ; Frc(value)
  %4664 = call float @dx.op.unary.f32(i32 22, float %4661)  ; Frc(value)
  %4665 = call float @dx.op.unary.f32(i32 22, float %4662)  ; Frc(value)
  %4666 = fmul fast float %4665, 0x401921FB60000000
  %4667 = call float @dx.op.unary.f32(i32 13, float %4666)  ; Sin(value)
  %4668 = call float @dx.op.unary.f32(i32 12, float %4666)  ; Cos(value)
  %4669 = fsub fast float -0.000000e+00, %4668
  %4670 = fmul fast float %4668, %4633
  %4671 = call float @dx.op.tertiary.f32(i32 46, float %4667, float %4634, float %4670)  ; FMad(a,b,c)
  %4672 = fmul fast float %4667, %4633
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4669, float %4634, float %4672)  ; FMad(a,b,c)
  %4674 = fadd fast float %4671, %4663
  %4675 = fadd fast float %4673, %4664
  %4676 = extractvalue %dx.types.CBufRet.f32 %4586, 3
  %4677 = bitcast float %4676 to i32
  %4678 = icmp eq i32 %4677, 0
  br i1 %4678, label %4717, label %4679

; <label>:4679                                    ; preds = %4582
  %4680 = add i32 %4677, 0
  %4681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4681, %dx.types.Handle %111, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float %4637, float %4638, float undef, float %4641, float %4642, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.f32 %4684, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4684, 2
  %4687 = fsub fast float 1.000000e+00, %4292
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4689 = bitcast float %4292 to i32
  %4690 = sitofp i32 %4689 to float
  %4691 = fadd fast float %4690, 0xC1CFBF8940000000
  %4692 = fmul fast float %4686, %4691
  %4693 = fadd fast float %4692, 0x41CFBF8940000000
  %4694 = fptosi float %4693 to i32
  %4695 = bitcast i32 %4694 to float
  %4696 = bitcast float %4688 to i32
  %4697 = sitofp i32 %4696 to float
  %4698 = fadd fast float %4697, 0xC1CFBF8940000000
  %4699 = fmul fast float %4698, %4686
  %4700 = fadd fast float %4699, 0x41CFBF8940000000
  %4701 = fptosi float %4700 to i32
  %4702 = bitcast i32 %4701 to float
  %4703 = fmul fast float %4695, %4685
  %4704 = fmul fast float %4702, %4685
  %4705 = fsub fast float %4688, %4703
  %4706 = fadd fast float %4704, %4688
  %4707 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4709 = fsub fast float %4683, %4707
  %4710 = fsub fast float %4708, %4707
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4713, %4709
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fcmp fast olt float %4715, 0x3F70101020000000
  br i1 %4716, label %4855, label %4717

; <label>:4717                                    ; preds = %4679, %4582
  %4718 = phi float [ %4715, %4679 ], [ %4292, %4582 ]
  %4719 = fmul fast float %4718, %4585
  %4720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.i32 %4720, 1
  %4722 = extractvalue %dx.types.CBufRet.i32 %4720, 0
  %4723 = add i32 %4722, 0
  %4724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4725 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4724, %dx.types.Handle %110, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float %4637, float %4638, float undef, float %4641, float %4642, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.ResRet.f32 %4725, 1
  %4728 = extractvalue %dx.types.ResRet.f32 %4725, 2
  %4729 = extractvalue %dx.types.ResRet.f32 %4725, 3
  %4730 = and i32 %4721, 255
  %4731 = uitofp i32 %4730 to float
  %4732 = lshr i32 %4721, 8
  %4733 = and i32 %4732, 255
  %4734 = uitofp i32 %4733 to float
  %4735 = fmul fast float %4729, %4731
  %4736 = fadd fast float %4735, %4734
  %4737 = fmul fast float %4736, 0x3F70101000000000
  %4738 = fadd fast float %4737, 0xBFB99999A0000000
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4739, 0x3FF1C71C80000000
  %4741 = call float @dx.op.binary.f32(i32 36, float %4737, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4742 = fsub fast float 1.000000e+00, %4740
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4743, %4726
  %4745 = fmul fast float %4743, %4727
  %4746 = fmul fast float %4743, %4728
  %4747 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4750 = fmul fast float %4740, %4726
  %4751 = fmul fast float %4740, %4727
  %4752 = fmul fast float %4740, %4728
  %4753 = fadd fast float %4750, %4741
  %4754 = fadd fast float %4751, %4741
  %4755 = fadd fast float %4752, %4741
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.i32 %4759, 3
  %4761 = extractvalue %dx.types.CBufRet.i32 %4759, 2
  %4762 = add i32 %4761, 0
  %4763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4763, %dx.types.Handle %110, float %4674, float %4675, float undef, float undef, i32 0, i32 0, i32 undef, float %4637, float %4638, float undef, float %4641, float %4642, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4769 = and i32 %4760, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = lshr i32 %4760, 8
  %4772 = and i32 %4771, 255
  %4773 = uitofp i32 %4772 to float
  %4774 = lshr i32 %4760, 16
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = fmul fast float %4776, 0x3F70101000000000
  %4778 = fmul fast float %4765, %4770
  %4779 = fadd fast float %4778, %4773
  %4780 = fmul fast float %4779, 0x3F70101000000000
  %4781 = fadd fast float %4766, -5.000000e-01
  %4782 = fadd fast float %4768, -5.000000e-01
  %4783 = fmul fast float %4781, %4777
  %4784 = fmul fast float %4782, %4777
  %4785 = fadd fast float %4783, 5.000000e-01
  %4786 = fadd fast float %4784, 5.000000e-01
  %4787 = fmul fast float %4785, 2.000000e+00
  %4788 = fadd fast float %4787, -1.000000e+00
  %4789 = fmul fast float %4786, 2.000000e+00
  %4790 = fadd fast float %4789, -1.000000e+00
  %4791 = fadd fast float %4788, %4790
  %4792 = fmul fast float %4791, 5.000000e-01
  %4793 = fsub fast float %4788, %4790
  %4794 = fmul fast float %4793, 5.000000e-01
  %4795 = call float @dx.op.unary.f32(i32 6, float %4792)  ; FAbs(value)
  %4796 = fsub fast float 1.000000e+00, %4795
  %4797 = call float @dx.op.unary.f32(i32 6, float %4794)  ; FAbs(value)
  %4798 = fsub fast float %4796, %4797
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4794, float %4798, float %4792, float %4794, float %4798)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 25, float %4799)  ; Rsqrt(value)
  %4801 = fmul fast float %4792, %4800
  %4802 = fmul fast float %4794, %4800
  %4803 = select i1 %4630, i32 %4620, i32 %4621
  %4804 = select i1 %4628, i32 %4619, i32 %4803
  %4805 = sitofp i32 %4804 to float
  %4806 = fmul fast float %4798, %4805
  %4807 = fmul fast float %4806, %4800
  %4808 = select i1 %4630, float %4807, float %4802
  %4809 = select i1 %4630, float %4802, float %4807
  %4810 = select i1 %4628, float %4807, float %4801
  %4811 = select i1 %4628, float %4802, float %4808
  %4812 = select i1 %4628, float %4801, float %4809
  %4813 = fsub fast float %4747, %4574
  %4814 = fsub fast float %4748, %4575
  %4815 = fsub fast float %4749, %4576
  %4816 = fmul fast float %4813, %4719
  %4817 = fmul fast float %4814, %4719
  %4818 = fmul fast float %4815, %4719
  %4819 = fadd fast float %4816, %4574
  %4820 = fadd fast float %4817, %4575
  %4821 = fadd fast float %4818, %4576
  %4822 = fsub fast float %4756, %4571
  %4823 = fsub fast float %4757, %4572
  %4824 = fsub fast float %4758, %4573
  %4825 = fmul fast float %4822, %4719
  %4826 = fmul fast float %4823, %4719
  %4827 = fmul fast float %4824, %4719
  %4828 = fadd fast float %4825, %4571
  %4829 = fadd fast float %4826, %4572
  %4830 = fadd fast float %4827, %4573
  %4831 = fadd fast float %4810, %4577
  %4832 = fadd fast float %4811, %4578
  %4833 = fadd fast float %4812, %4579
  %4834 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float %4831, float %4832, float %4833)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.unary.f32(i32 25, float %4834)  ; Rsqrt(value)
  %4836 = fmul fast float %4831, %4835
  %4837 = fmul fast float %4832, %4835
  %4838 = fmul fast float %4833, %4835
  %4839 = fsub fast float %4836, %4577
  %4840 = fsub fast float %4837, %4578
  %4841 = fsub fast float %4838, %4579
  %4842 = fmul fast float %4839, %4719
  %4843 = fmul fast float %4840, %4719
  %4844 = fmul fast float %4841, %4719
  %4845 = fadd fast float %4842, %4577
  %4846 = fadd fast float %4843, %4578
  %4847 = fadd fast float %4844, %4579
  %4848 = call float @dx.op.binary.f32(i32 36, float %4581, float %4767)  ; FMin(a,b)
  %4849 = fsub fast float %4848, %4581
  %4850 = fmul fast float %4849, %4719
  %4851 = fadd fast float %4850, %4581
  %4852 = fsub fast float %4780, %4580
  %4853 = fmul fast float %4852, %4719
  %4854 = fadd fast float %4853, %4580
  br label %4855

; <label>:4855                                    ; preds = %4717, %4679, %4570, %4286
  %4856 = phi float [ %4828, %4717 ], [ %4571, %4679 ], [ %4571, %4570 ], [ %3880, %4286 ]
  %4857 = phi float [ %4829, %4717 ], [ %4572, %4679 ], [ %4572, %4570 ], [ %3881, %4286 ]
  %4858 = phi float [ %4830, %4717 ], [ %4573, %4679 ], [ %4573, %4570 ], [ %3882, %4286 ]
  %4859 = phi float [ %4819, %4717 ], [ %4574, %4679 ], [ %4574, %4570 ], [ %3895, %4286 ]
  %4860 = phi float [ %4820, %4717 ], [ %4575, %4679 ], [ %4575, %4570 ], [ %3896, %4286 ]
  %4861 = phi float [ %4821, %4717 ], [ %4576, %4679 ], [ %4576, %4570 ], [ %3897, %4286 ]
  %4862 = phi float [ %4845, %4717 ], [ %4577, %4679 ], [ %4577, %4570 ], [ %3843, %4286 ]
  %4863 = phi float [ %4846, %4717 ], [ %4578, %4679 ], [ %4578, %4570 ], [ %3844, %4286 ]
  %4864 = phi float [ %4847, %4717 ], [ %4579, %4679 ], [ %4579, %4570 ], [ %3845, %4286 ]
  %4865 = phi float [ %4854, %4717 ], [ %4580, %4679 ], [ %4580, %4570 ], [ %3883, %4286 ]
  %4866 = phi float [ %4851, %4717 ], [ %4581, %4679 ], [ %4581, %4570 ], [ %3855, %4286 ]
  %4867 = fcmp fast une float %4290, 0.000000e+00
  %4868 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 25, float %4868)  ; Rsqrt(value)
  br i1 %4867, label %4877, label %4870

; <label>:4870                                    ; preds = %4855
  %4871 = fmul fast float %4869, %201
  %4872 = fmul fast float %4869, %202
  %4873 = fmul fast float %4869, %203
  %4874 = fsub fast float -0.000000e+00, %4871
  %4875 = fsub fast float -0.000000e+00, %4872
  %4876 = fsub fast float -0.000000e+00, %4873
  br label %5044

; <label>:4877                                    ; preds = %4855
  %4878 = fmul fast float %201, %4869
  %4879 = fsub fast float -0.000000e+00, %4878
  %4880 = fmul fast float %202, %4869
  %4881 = fsub fast float -0.000000e+00, %4880
  %4882 = fmul fast float %203, %4869
  %4883 = fsub fast float -0.000000e+00, %4882
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4881, float %4883, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = fmul fast float %4290, 2.500000e+00
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4290, 0x4013FFFFE0000000
  %4888 = fadd fast float %4887, 0xBFFFFFFFE0000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4290, 0x4004000020000000
  %4891 = fadd fast float %4890, 0xBFF8000040000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %3862, 1.000000e+01
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fmul fast float %4894, 2.000000e+00
  %4896 = fsub fast float 3.000000e+00, %4895
  %4897 = fmul fast float %4894, %4894
  %4898 = fmul fast float %4897, %4896
  %4899 = fsub fast float 1.000000e+00, %4898
  %4900 = fsub fast float 0x3FE3333340000000, %4865
  %4901 = fmul fast float %4900, 0x400AAAAAA0000000
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4899, %4902
  %4904 = fmul fast float %4859, 0x3FEA2B8620000000
  %4905 = fmul fast float %4860, 0x3FEA2B8620000000
  %4906 = fmul fast float %4861, 0x3FEA2B8620000000
  %4907 = fadd fast float %4904, 0x3FC81DFBA0000000
  %4908 = fmul fast float %4907, %4859
  %4909 = fadd fast float %4908, 0x3F910E6020000000
  %4910 = fadd fast float %4905, 0x3FC81DFBA0000000
  %4911 = fmul fast float %4910, %4860
  %4912 = fadd fast float %4911, 0x3F910E6020000000
  %4913 = fadd fast float %4906, 0x3FC81DFBA0000000
  %4914 = fmul fast float %4913, %4861
  %4915 = fadd fast float %4914, 0x3F910E6020000000
  %4916 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = fsub fast float %4916, %4859
  %4920 = fsub fast float %4917, %4860
  %4921 = fsub fast float %4918, %4861
  %4922 = fmul fast float %4919, %4886
  %4923 = fmul fast float %4922, %4903
  %4924 = fmul fast float %4920, %4886
  %4925 = fmul fast float %4924, %4903
  %4926 = fmul fast float %4921, %4886
  %4927 = fmul fast float %4926, %4903
  %4928 = fadd fast float %4923, %4859
  %4929 = fadd fast float %4925, %4860
  %4930 = fadd fast float %4927, %4861
  %4931 = fmul fast float %4866, %4866
  %4932 = fmul fast float %4931, %4931
  %4933 = fadd fast float %4889, 1.000000e+00
  %4934 = fsub fast float %4933, %4903
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fsub fast float 1.000000e+00, %4932
  %4939 = call float @dx.op.binary.f32(i32 36, float %4935, float %4938)  ; FMin(a,b)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4941 = call float @dx.op.binary.f32(i32 35, float %4939, float %4940)  ; FMax(a,b)
  %4942 = fadd fast float %4937, 0xBFE4CCCCC0000000
  %4943 = fmul fast float %4942, 0x4006DB6DA0000000
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, 2.000000e+00
  %4946 = fsub fast float 3.000000e+00, %4945
  %4947 = bitcast float %4856 to i32
  %4948 = ashr i32 %4947, 1
  %4949 = add nsw i32 %4948, 532487669
  %4950 = bitcast i32 %4949 to float
  %4951 = fsub fast float 1.000000e+00, %4950
  %4952 = bitcast float %4951 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, 2.000000e+00
  %4956 = bitcast float %4857 to i32
  %4957 = ashr i32 %4956, 1
  %4958 = add nsw i32 %4957, 532487669
  %4959 = bitcast i32 %4958 to float
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, 2.000000e+00
  %4965 = bitcast float %4858 to i32
  %4966 = ashr i32 %4965, 1
  %4967 = add nsw i32 %4966, 532487669
  %4968 = bitcast i32 %4967 to float
  %4969 = fsub fast float 1.000000e+00, %4968
  %4970 = bitcast float %4969 to i32
  %4971 = sub nsw i32 2129859010, %4970
  %4972 = bitcast i32 %4971 to float
  %4973 = fmul fast float %4972, 2.000000e+00
  %4974 = fsub fast float 0x4002A9FBE0000000, %4955
  %4975 = fadd fast float %4955, 0x3FD54FDF00000000
  %4976 = bitcast float %4975 to i32
  %4977 = sub nsw i32 2129859010, %4976
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4978, %4974
  %4980 = fmul fast float %4979, %4979
  %4981 = fsub fast float 0x4002A9FBE0000000, %4964
  %4982 = fadd fast float %4964, 0x3FD54FDF00000000
  %4983 = bitcast float %4982 to i32
  %4984 = sub nsw i32 2129859010, %4983
  %4985 = bitcast i32 %4984 to float
  %4986 = fmul fast float %4985, %4981
  %4987 = fmul fast float %4986, %4986
  %4988 = fsub fast float 0x4002A9FBE0000000, %4973
  %4989 = fadd fast float %4973, 0x3FD54FDF00000000
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, %4988
  %4994 = fmul fast float %4993, %4993
  %4995 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4980)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4987)  ; FMax(a,b)
  %4997 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4994)  ; FMax(a,b)
  %4998 = fsub fast float 1.000000e+00, %4884
  %4999 = fadd fast float %4998, %4899
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fsub fast float 1.000000e+00, %4271
  %5002 = fmul fast float %4941, %5001
  %5003 = fmul fast float %4944, %4944
  %5004 = fmul fast float %5003, %5002
  %5005 = fmul fast float %5004, %4946
  %5006 = fmul fast float %5001, 0xBFE99999A0000000
  %5007 = fmul fast float %5006, %4886
  %5008 = fmul fast float %5007, %4903
  %5009 = fadd fast float %5008, 1.000000e+00
  %5010 = fadd fast float %4865, -1.000000e+00
  %5011 = fmul fast float %5009, %5010
  %5012 = fadd fast float %5011, 1.000000e+00
  %5013 = fsub fast float %4995, %4856
  %5014 = fsub fast float %4996, %4857
  %5015 = fsub fast float %4997, %4858
  %5016 = fmul fast float %5005, %5013
  %5017 = fmul fast float %5005, %5014
  %5018 = fmul fast float %5005, %5015
  %5019 = fadd fast float %5016, %4856
  %5020 = fadd fast float %5017, %4857
  %5021 = fadd fast float %5018, %4858
  %5022 = fsub fast float %121, %4862
  %5023 = fsub fast float %122, %4863
  %5024 = fsub fast float %123, %4864
  %5025 = fmul fast float %5005, %5022
  %5026 = fmul fast float %5005, %5023
  %5027 = fmul fast float %5005, %5024
  %5028 = fadd fast float %5025, %4862
  %5029 = fadd fast float %5026, %4863
  %5030 = fadd fast float %5027, %4864
  %5031 = fmul fast float %5005, %5000
  %5032 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5033 = fsub fast float 1.000000e+00, %5032
  %5034 = fmul fast float %5031, %5033
  %5035 = fadd fast float %5034, %5032
  %5036 = fsub fast float 1.000000e+00, %4866
  %5037 = fmul fast float %5005, %5036
  %5038 = fadd fast float %5037, %4866
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5028, %5040
  %5042 = fmul fast float %5029, %5040
  %5043 = fmul fast float %5030, %5040
  br label %5044

; <label>:5044                                    ; preds = %4877, %4870
  %5045 = phi float [ %4876, %4870 ], [ %4883, %4877 ]
  %5046 = phi float [ %4875, %4870 ], [ %4881, %4877 ]
  %5047 = phi float [ %4874, %4870 ], [ %4879, %4877 ]
  %5048 = phi float [ %4873, %4870 ], [ %4882, %4877 ]
  %5049 = phi float [ %4872, %4870 ], [ %4880, %4877 ]
  %5050 = phi float [ %4871, %4870 ], [ %4878, %4877 ]
  %5051 = phi float [ %4856, %4870 ], [ %5019, %4877 ]
  %5052 = phi float [ %4857, %4870 ], [ %5020, %4877 ]
  %5053 = phi float [ %4858, %4870 ], [ %5021, %4877 ]
  %5054 = phi float [ %4859, %4870 ], [ %4928, %4877 ]
  %5055 = phi float [ %4860, %4870 ], [ %4929, %4877 ]
  %5056 = phi float [ %4861, %4870 ], [ %4930, %4877 ]
  %5057 = phi float [ %4862, %4870 ], [ %5041, %4877 ]
  %5058 = phi float [ %4863, %4870 ], [ %5042, %4877 ]
  %5059 = phi float [ %4864, %4870 ], [ %5043, %4877 ]
  %5060 = phi float [ %4865, %4870 ], [ %5035, %4877 ]
  %5061 = phi float [ %4866, %4870 ], [ %5038, %4877 ]
  %5062 = fsub fast float -0.000000e+00, %203
  %5063 = select i1 %260, float 0.000000e+00, float %5053
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %5047, float %5046, float %5045)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5049, float %5048, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5067 = fmul fast float %5066, 2.000000e+00
  %5068 = fmul fast float %5067, %5057
  %5069 = fmul fast float %5067, %5058
  %5070 = fmul fast float %5067, %5059
  %5071 = fsub fast float %5050, %5068
  %5072 = fsub fast float %5049, %5069
  %5073 = fsub fast float %5048, %5070
  %5074 = call float @dx.op.binary.f32(i32 36, float %5061, float 1.000000e+00)  ; FMin(a,b)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = bitcast float %5075 to i32
  %5077 = ashr i32 %5076, 1
  %5078 = add nsw i32 %5077, 532487669
  %5079 = bitcast i32 %5078 to float
  %5080 = fsub fast float 1.000000e+00, %5060
  %5081 = call float @dx.op.binary.f32(i32 35, float %5080, float 0x3F847AE140000000)  ; FMax(a,b)
  %5082 = fmul fast float %5081, %5081
  %5083 = fmul fast float %5082, %5082
  %5084 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %5083, float %5084, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5086 = extractvalue %dx.types.ResRet.f32 %5085, 0
  %5087 = fsub fast float 1.000000e+00, %5061
  %5088 = bitcast float %5087 to i32
  %5089 = sub nsw i32 2129859010, %5088
  %5090 = bitcast i32 %5089 to float
  %5091 = fsub fast float 1.000000e+00, %81
  %5092 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5093 = call float @dx.op.binary.f32(i32 35, float %5092, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5094 = fdiv fast float %5091, %5093
  %5095 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fmul fast float %5096, 5.000000e-01
  %5098 = fadd fast float %5097, 5.000000e-01
  %5099 = fmul fast float %5098, %81
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5102 = fmul fast float %5101, %5094
  %5103 = fadd fast float %5099, %5102
  %5104 = fsub fast float 5.000000e-01, %5097
  %5105 = fmul fast float %5104, %5054
  %5106 = fmul fast float %5104, %5055
  %5107 = fmul fast float %5104, %5056
  %5108 = fadd fast float %5103, %5105
  %5109 = fadd fast float %5103, %5106
  %5110 = fadd fast float %5103, %5107
  %5111 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = fmul fast float %5112, 5.000000e-01
  %5114 = fadd fast float %5113, 5.000000e-01
  %5115 = fmul fast float %5114, %81
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %5117, %5094
  %5119 = fadd fast float %5115, %5118
  %5120 = fsub fast float 5.000000e-01, %5113
  %5121 = fmul fast float %5120, %5054
  %5122 = fmul fast float %5120, %5055
  %5123 = fmul fast float %5120, %5056
  %5124 = fadd fast float %5119, %5121
  %5125 = fadd fast float %5119, %5122
  %5126 = fadd fast float %5119, %5123
  %5127 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 0
  %5130 = call float @dx.op.binary.f32(i32 36, float %5054, float %5129)  ; FMin(a,b)
  %5131 = fmul fast float %5130, %5075
  %5132 = fsub fast float 1.000000e+00, %5131
  %5133 = bitcast float %5132 to i32
  %5134 = sub nsw i32 2129859010, %5133
  %5135 = bitcast i32 %5134 to float
  %5136 = call float @dx.op.binary.f32(i32 36, float %5055, float %5129)  ; FMin(a,b)
  %5137 = fmul fast float %5136, %5075
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = bitcast float %5138 to i32
  %5140 = sub nsw i32 2129859010, %5139
  %5141 = bitcast i32 %5140 to float
  %5142 = call float @dx.op.binary.f32(i32 36, float %5056, float %5129)  ; FMin(a,b)
  %5143 = fmul fast float %5142, %5075
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = bitcast float %5144 to i32
  %5146 = sub nsw i32 2129859010, %5145
  %5147 = bitcast i32 %5146 to float
  %5148 = fmul fast float %5074, %82
  %5149 = fmul fast float %5148, %5108
  %5150 = fmul fast float %5149, %5135
  %5151 = fmul fast float %5074, %83
  %5152 = fmul fast float %5151, %5109
  %5153 = fmul fast float %5152, %5141
  %5154 = fmul fast float %5074, %84
  %5155 = fmul fast float %5154, %5110
  %5156 = fmul fast float %5155, %5147
  %5157 = call float @dx.op.binary.f32(i32 36, float %5051, float %5129)  ; FMin(a,b)
  %5158 = fmul fast float %5157, %5075
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = bitcast float %5159 to i32
  %5161 = sub nsw i32 2129859010, %5160
  %5162 = bitcast i32 %5161 to float
  %5163 = call float @dx.op.binary.f32(i32 36, float %5052, float %5129)  ; FMin(a,b)
  %5164 = fmul fast float %5163, %5075
  %5165 = fsub fast float 1.000000e+00, %5164
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = call float @dx.op.binary.f32(i32 36, float %5063, float %5129)  ; FMin(a,b)
  %5170 = fmul fast float %5169, %5075
  %5171 = fsub fast float 1.000000e+00, %5170
  %5172 = bitcast float %5171 to i32
  %5173 = sub nsw i32 2129859010, %5172
  %5174 = bitcast i32 %5173 to float
  %5175 = fmul fast float %5148, %5124
  %5176 = fmul fast float %5175, %5162
  %5177 = fmul fast float %5151, %5125
  %5178 = fmul fast float %5177, %5168
  %5179 = fmul fast float %5154, %5126
  %5180 = fmul fast float %5179, %5174
  %5181 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5153, float %5156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = select i1 %260, float 0.000000e+00, float %5150
  %5183 = select i1 %260, float %5181, float %5153
  %5184 = select i1 %260, float 0.000000e+00, float %5156
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5178, float %5180, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = select i1 %260, float 0.000000e+00, float %5176
  %5187 = select i1 %260, float %5185, float %5178
  %5188 = select i1 %260, float 0.000000e+00, float %5180
  %5189 = fmul fast float %5065, 9.843750e-01
  %5190 = fmul fast float %5060, 9.843750e-01
  %5191 = fadd fast float %5189, 7.812500e-03
  %5192 = fadd fast float %5190, 7.812500e-03
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 2
  %5195 = extractvalue %dx.types.ResRet.f32 %5193, 3
  %5196 = fmul fast float %5194, %5051
  %5197 = fmul fast float %5194, %5052
  %5198 = fmul fast float %5194, %5063
  %5199 = fadd fast float %5196, %5195
  %5200 = fadd fast float %5197, %5195
  %5201 = fadd fast float %5198, %5195
  %5202 = fcmp fast ogt float %3856, 0.000000e+00
  br i1 %5202, label %5203, label %5229

; <label>:5203                                    ; preds = %5044
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3856, float %5065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.ResRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.ResRet.f32 %5204, 2
  %5208 = fadd fast float %5205, -5.000000e-01
  %5209 = fadd fast float %5206, -5.000000e-01
  %5210 = fadd fast float %5207, -5.000000e-01
  %5211 = fsub fast float 1.000000e+00, %5051
  %5212 = fsub fast float 1.000000e+00, %5052
  %5213 = fsub fast float 1.000000e+00, %5063
  %5214 = fmul fast float %5051, 4.000000e+00
  %5215 = fmul fast float %5214, %5211
  %5216 = fmul fast float %5215, %5208
  %5217 = fmul fast float %5052, 4.000000e+00
  %5218 = fmul fast float %5217, %5212
  %5219 = fmul fast float %5218, %5209
  %5220 = fmul fast float %5063, 4.000000e+00
  %5221 = fmul fast float %5220, %5213
  %5222 = fmul fast float %5221, %5210
  %5223 = fadd fast float %5216, %5199
  %5224 = fadd fast float %5219, %5200
  %5225 = fadd fast float %5222, %5201
  %5226 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5227 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  br label %5229

; <label>:5229                                    ; preds = %5203, %5044
  %5230 = phi float [ %5226, %5203 ], [ %5199, %5044 ]
  %5231 = phi float [ %5227, %5203 ], [ %5200, %5044 ]
  %5232 = phi float [ %5228, %5203 ], [ %5201, %5044 ]
  %5233 = call float @dx.op.binary.f32(i32 35, float %5231, float %5232)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float %5230, float %5233)  ; FMax(a,b)
  %5235 = fsub fast float 1.000000e+00, %5234
  %5236 = fmul fast float %5234, %5060
  %5237 = fadd fast float %5236, %5060
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5240 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5241 = fmul fast float %5237, %5239
  %5242 = fadd fast float %5241, %5240
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fsub fast float 1.000000e+00, %5086
  %5245 = fadd fast float %5244, %5243
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = fcmp fast olt float %5246, 1.000000e+00
  br i1 %5247, label %5248, label %5724

; <label>:5248                                    ; preds = %5229
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 2
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5252 = fmul fast float %5250, %114
  %5253 = fmul fast float %5251, %115
  %5254 = fptoui float %5252 to i32
  %5255 = fptoui float %5253 to i32
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5259 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5260 = fadd fast float %101, -4.000000e+00
  %5261 = call float @dx.op.binary.f32(i32 35, float %5260, float 0.000000e+00)  ; FMax(a,b)
  %5262 = fadd fast float %5261, %5257
  %5263 = fmul fast float %5262, %5258
  %5264 = call float @dx.op.unary.f32(i32 23, float %5263)  ; Log(value)
  %5265 = fmul fast float %5264, %5259
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5268 = fmul fast float %5265, %5267
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.i32 %5270, 1
  %5272 = add i32 %5271, -1
  %5273 = uitofp i32 %5271 to float
  %5274 = fmul fast float %5273, %5269
  %5275 = fptoui float %5274 to i32
  %5276 = call i32 @dx.op.binary.i32(i32 40, i32 %5275, i32 %5272)  ; UMin(a,b)
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 2
  %5279 = extractvalue %dx.types.CBufRet.i32 %5277, 3
  %5280 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5255, i32 %5278, i32 %5254)  ; UMad(a,b,c)
  %5281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5276, i32 %5279, i32 %5280)  ; UMad(a,b,c)
  %5282 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5283 = fptoui float %5282 to i32
  %5284 = lshr i32 %5283, 5
  %5285 = call i32 @dx.op.binary.i32(i32 40, i32 %5284, i32 8191)  ; UMin(a,b)
  %5286 = fsub fast float %4261, %203
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fcmp fast ogt float %5287, 0.000000e+00
  %5289 = fcmp fast ogt float %5073, 0.000000e+00
  %5290 = and i1 %5289, %5288
  br i1 %5290, label %5291, label %5320

; <label>:5291                                    ; preds = %5248
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5292, float -1.000000e+00)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 36, float %5293, float 1.000000e+00)  ; FMin(a,b)
  %5295 = fmul fast float %5294, %5294
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = fmul fast float %5296, 0x3FFC6E2300000000
  %5298 = fsub fast float 1.000000e+00, %5297
  %5299 = fcmp fast ogt float %5298, 0.000000e+00
  %5300 = call float @dx.op.unary.f32(i32 24, float %5298)  ; Sqrt(value)
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = call float @dx.op.unary.f32(i32 23, float %5301)  ; Log(value)
  %5303 = fmul fast float %5302, 5.000000e+00
  %5304 = call float @dx.op.unary.f32(i32 21, float %5303)  ; Exp(value)
  %5305 = fmul fast float %5304, 0x3FEF591A60000000
  %5306 = fadd fast float %5305, 0x3F94DCB540000000
  %5307 = select i1 %5299, float %5306, float 1.000000e+00
  %5308 = fcmp fast oge float %5307, 1.000000e+00
  %5309 = fmul fast float %5292, 2.000000e+00
  %5310 = fadd fast float %5309, %5073
  %5311 = select i1 %5308, float %5310, float %5073
  %5312 = fsub fast float %5311, %5073
  %5313 = fmul fast float %5312, %5287
  %5314 = fadd fast float %5313, %5073
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5314, float %5071, float %5072, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 25, float %5315)  ; Rsqrt(value)
  %5317 = fmul fast float %5316, %5071
  %5318 = fmul fast float %5316, %5072
  %5319 = fmul fast float %5314, %5316
  br label %5320

; <label>:5320                                    ; preds = %5291, %5248
  %5321 = phi float [ %5317, %5291 ], [ %5071, %5248 ]
  %5322 = phi float [ %5318, %5291 ], [ %5072, %5248 ]
  %5323 = phi float [ %5319, %5291 ], [ %5073, %5248 ]
  %5324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.i32 %5324, 2
  %5326 = add nsw i32 %5325, -1
  %5327 = call i32 @dx.op.binary.i32(i32 37, i32 %5326, i32 0)  ; IMax(a,b)
  %5328 = shl i32 %5285, 2
  %5329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.i32 %5329, 0
  %5331 = lshr i32 %5330, 16
  %5332 = and i32 %5330, 65535
  %5333 = lshr i32 %5330, 21
  %5334 = lshr i32 %5332, 5
  %5335 = call i32 @dx.op.binary.i32(i32 40, i32 %5334, i32 %5327)  ; UMin(a,b)
  %5336 = icmp ugt i32 %5333, %5335
  br i1 %5336, label %5700, label %5337

; <label>:5337                                    ; preds = %5320
  br label %5338

; <label>:5338                                    ; preds = %5692, %5337
  %5339 = phi float [ %5693, %5692 ], [ 0.000000e+00, %5337 ]
  %5340 = phi float [ %5694, %5692 ], [ 0.000000e+00, %5337 ]
  %5341 = phi float [ %5695, %5692 ], [ 0.000000e+00, %5337 ]
  %5342 = phi float [ %5696, %5692 ], [ 1.000000e+00, %5337 ]
  %5343 = phi i32 [ %5697, %5692 ], [ %5333, %5337 ]
  %5344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.i32 %5344, 2
  %5346 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5281, i32 %5345, i32 %5343)  ; UMad(a,b,c)
  %5347 = shl i32 %5346, 2
  %5348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5347, i32 undef)  ; BufferLoad(srv,index,wot)
  %5349 = extractvalue %dx.types.ResRet.i32 %5348, 0
  %5350 = shl i32 %5343, 5
  %5351 = sub nsw i32 %5331, %5350
  %5352 = call i32 @dx.op.binary.i32(i32 37, i32 %5351, i32 0)  ; IMax(a,b)
  %5353 = call i32 @dx.op.binary.i32(i32 38, i32 %5352, i32 31)  ; IMin(a,b)
  %5354 = sub nsw i32 1, %5331
  %5355 = add nsw i32 %5354, %5332
  %5356 = call i32 @dx.op.binary.i32(i32 37, i32 %5355, i32 0)  ; IMax(a,b)
  %5357 = call i32 @dx.op.binary.i32(i32 38, i32 %5356, i32 32)  ; IMin(a,b)
  %5358 = and i32 %5357, 31
  %5359 = shl i32 -1, %5358
  %5360 = xor i32 %5359, -1
  %5361 = and i32 %5353, 31
  %5362 = shl i32 %5360, %5361
  %5363 = icmp eq i32 %5357, 32
  %5364 = select i1 %5363, i32 -1, i32 %5362
  %5365 = and i32 %5364, %5349
  %5366 = icmp eq i32 %5365, 0
  br i1 %5366, label %5692, label %5367

; <label>:5367                                    ; preds = %5338
  br label %5368

; <label>:5368                                    ; preds = %5475, %5367
  %5369 = phi float [ %5476, %5475 ], [ %5339, %5367 ]
  %5370 = phi float [ %5477, %5475 ], [ %5340, %5367 ]
  %5371 = phi float [ %5478, %5475 ], [ %5341, %5367 ]
  %5372 = phi float [ %5479, %5475 ], [ %5342, %5367 ]
  %5373 = phi i32 [ %5378, %5475 ], [ %5365, %5367 ]
  %5374 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5373)  ; FirstbitLo(value)
  %5375 = add i32 %5374, %5350
  %5376 = and i32 %5374, 31
  %5377 = shl i32 1, %5376
  %5378 = xor i32 %5377, %5373
  %5379 = mul i32 %5375, 72
  %5380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5379, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = extractvalue %dx.types.ResRet.f32 %5380, 1
  %5383 = extractvalue %dx.types.ResRet.f32 %5380, 2
  %5384 = add i32 %5379, 12
  %5385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.i32 %5385, 0
  %5387 = add i32 %5379, 16
  %5388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = add i32 %5379, 28
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = add i32 %5379, 32
  %5396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5400 = extractvalue %dx.types.ResRet.f32 %5396, 3
  %5401 = add i32 %5379, 48
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = add i32 %5379, 56
  %5406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = add i32 %5379, 64
  %5410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5409, i32 undef)  ; BufferLoad(srv,index,wot)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.ResRet.f32 %5410, 1
  %5413 = mul i32 %5375, 60
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = add i32 %5413, 12
  %5419 = add i32 %5413, 48
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = extractvalue %dx.types.ResRet.f32 %5420, 2
  %5424 = and i32 %5386, 32767
  %5425 = bitcast float %5381 to i32
  %5426 = icmp eq i32 %5425, -1
  %5427 = bitcast float %5382 to i32
  %5428 = and i32 %5386, 32768
  %5429 = icmp ne i32 %5428, 0
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = fsub fast float %5415, %5431
  %5435 = fsub fast float %5416, %5432
  %5436 = fsub fast float %5417, %5433
  %5437 = fsub fast float %201, %5434
  %5438 = fsub fast float %202, %5435
  %5439 = fsub fast float %203, %5436
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = add i32 %5413, 24
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = add i32 %5413, 36
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5458 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5459 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5460 = fsub fast float %5421, %5457
  %5461 = fsub fast float %5422, %5458
  %5462 = fsub fast float %5423, %5459
  %5463 = fmul fast float %5460, %5389
  %5464 = fmul fast float %5461, %5390
  %5465 = fmul fast float %5462, %5391
  %5466 = call float @dx.op.binary.f32(i32 36, float %5464, float %5465)  ; FMin(a,b)
  %5467 = call float @dx.op.binary.f32(i32 36, float %5463, float %5466)  ; FMin(a,b)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = call float @dx.op.binary.f32(i32 36, float %5372, float %5468)  ; FMin(a,b)
  %5470 = uitofp i1 %5429 to float
  %5471 = fadd fast float %5287, 1.000000e+00
  %5472 = fsub fast float %5471, %5470
  %5473 = fmul fast float %5469, %5472
  %5474 = fcmp fast ogt float %5473, 0.000000e+00
  br i1 %5474, label %5481, label %5475

; <label>:5475                                    ; preds = %5623, %5368
  %5476 = phi float [ %5687, %5623 ], [ %5369, %5368 ]
  %5477 = phi float [ %5688, %5623 ], [ %5370, %5368 ]
  %5478 = phi float [ %5689, %5623 ], [ %5371, %5368 ]
  %5479 = phi float [ %5690, %5623 ], [ %5372, %5368 ]
  %5480 = icmp eq i32 %5373, %5377
  br i1 %5480, label %5691, label %5368

; <label>:5481                                    ; preds = %5368
  br i1 %5426, label %5539, label %5482

; <label>:5482                                    ; preds = %5481
  %5483 = fsub fast float -0.000000e+00, %5441
  %5484 = fsub fast float -0.000000e+00, %5442
  %5485 = fsub fast float -0.000000e+00, %5443
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fsub fast float -0.000000e+00, %5486
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5483, float %5484, float %5485)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fadd fast float %5488, %5404
  %5490 = fadd fast float %5403, %5488
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = fcmp ogt float %5486, -0.000000e+00
  %5493 = select i1 %5492, float %5491, float %5489
  %5494 = call float @dx.op.unary.f32(i32 6, float %5487)  ; FAbs(value)
  %5495 = fdiv fast float 1.000000e+00, %5494
  %5496 = fmul fast float %5493, %5495
  %5497 = call float @dx.op.binary.f32(i32 35, float %5496, float 0.000000e+00)  ; FMax(a,b)
  %5498 = fsub fast float -0.000000e+00, %5447
  %5499 = fsub fast float -0.000000e+00, %5448
  %5500 = fsub fast float -0.000000e+00, %5449
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fsub fast float -0.000000e+00, %5501
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fadd fast float %5503, %5408
  %5505 = fadd fast float %5407, %5503
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = fcmp ogt float %5501, -0.000000e+00
  %5508 = select i1 %5507, float %5506, float %5504
  %5509 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5510 = fdiv fast float 1.000000e+00, %5509
  %5511 = fmul fast float %5508, %5510
  %5512 = call float @dx.op.binary.f32(i32 35, float %5511, float 0.000000e+00)  ; FMax(a,b)
  %5513 = fsub fast float -0.000000e+00, %5453
  %5514 = fsub fast float -0.000000e+00, %5454
  %5515 = fsub fast float -0.000000e+00, %5455
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fsub fast float -0.000000e+00, %5516
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fadd fast float %5518, %5412
  %5520 = fadd fast float %5411, %5518
  %5521 = fsub fast float -0.000000e+00, %5520
  %5522 = fcmp ogt float %5516, -0.000000e+00
  %5523 = select i1 %5522, float %5521, float %5519
  %5524 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5525 = fdiv fast float 1.000000e+00, %5524
  %5526 = fmul fast float %5523, %5525
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5528 = call float @dx.op.binary.f32(i32 36, float %5512, float %5527)  ; FMin(a,b)
  %5529 = call float @dx.op.binary.f32(i32 36, float %5497, float %5528)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5321
  %5531 = fmul fast float %5529, %5322
  %5532 = fmul fast float %5529, %5323
  %5533 = fadd fast float %5530, %201
  %5534 = fadd fast float %5531, %202
  %5535 = fadd fast float %5532, %203
  %5536 = fsub fast float %5533, %5381
  %5537 = fsub fast float %5534, %5382
  %5538 = fsub fast float %5535, %5383
  br label %5546

; <label>:5539                                    ; preds = %5481
  %5540 = fmul fast float %5321, 8.096000e+03
  %5541 = fmul fast float %5322, 8.096000e+03
  %5542 = fmul fast float %5323, 8.096000e+03
  %5543 = fadd fast float %5540, %201
  %5544 = fadd fast float %5541, %202
  %5545 = fadd fast float %5542, %203
  br label %5546

; <label>:5546                                    ; preds = %5539, %5482
  %5547 = phi float [ %5321, %5539 ], [ %5536, %5482 ]
  %5548 = phi float [ %5322, %5539 ], [ %5537, %5482 ]
  %5549 = phi float [ %5323, %5539 ], [ %5538, %5482 ]
  %5550 = phi float [ %5543, %5539 ], [ %5533, %5482 ]
  %5551 = phi float [ %5544, %5539 ], [ %5534, %5482 ]
  %5552 = phi float [ %5545, %5539 ], [ %5535, %5482 ]
  %5553 = fcmp fast olt float %5400, 1.000000e+00
  br i1 %5553, label %5554, label %5585, !dx.controlflow.hints !100

; <label>:5554                                    ; preds = %5546
  %5555 = fmul fast float %5549, %5398
  %5556 = fmul fast float %5548, %5399
  %5557 = fsub fast float %5555, %5556
  %5558 = fmul fast float %5547, %5399
  %5559 = fmul fast float %5549, %5397
  %5560 = fsub fast float %5558, %5559
  %5561 = fmul fast float %5548, %5397
  %5562 = fmul fast float %5547, %5398
  %5563 = fsub fast float %5561, %5562
  %5564 = fmul fast float %5557, 2.000000e+00
  %5565 = fmul fast float %5560, 2.000000e+00
  %5566 = fmul fast float %5563, 2.000000e+00
  %5567 = fmul fast float %5564, %5400
  %5568 = fmul fast float %5565, %5400
  %5569 = fmul fast float %5566, %5400
  %5570 = fmul fast float %5566, %5398
  %5571 = fmul fast float %5565, %5399
  %5572 = fmul fast float %5564, %5399
  %5573 = fmul fast float %5566, %5397
  %5574 = fmul fast float %5565, %5397
  %5575 = fmul fast float %5564, %5398
  %5576 = fadd fast float %5570, %5547
  %5577 = fadd fast float %5576, %5567
  %5578 = fsub fast float %5577, %5571
  %5579 = fsub fast float %5548, %5573
  %5580 = fadd fast float %5579, %5568
  %5581 = fadd fast float %5580, %5572
  %5582 = fadd fast float %5569, %5549
  %5583 = fsub fast float %5582, %5575
  %5584 = fadd fast float %5583, %5574
  br label %5585

; <label>:5585                                    ; preds = %5554, %5546
  %5586 = phi float [ %5578, %5554 ], [ %5547, %5546 ]
  %5587 = phi float [ %5581, %5554 ], [ %5548, %5546 ]
  %5588 = phi float [ %5584, %5554 ], [ %5549, %5546 ]
  br i1 %5426, label %5620, label %5589

; <label>:5589                                    ; preds = %5585
  %5590 = fmul fast float %5060, 0x400187C840000000
  %5591 = fadd fast float %5590, 0xC00EFC2120000000
  %5592 = fmul fast float %5591, %5060
  %5593 = fadd fast float %5592, 0x3FE5D16340000000
  %5594 = fmul fast float %5593, %5060
  %5595 = fadd fast float %5594, 1.000000e+00
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fsub fast float %5550, %201
  %5598 = fsub fast float %5551, %202
  %5599 = fsub fast float %5552, %203
  %5600 = fsub fast float %5550, %5381
  %5601 = fsub fast float %5551, %5382
  %5602 = fsub fast float %5552, %5383
  %5603 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5600, float %5601, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fadd fast float %5604, 0x3EE4F8B580000000
  %5606 = fdiv fast float %5603, %5605
  %5607 = bitcast float %5606 to i32
  %5608 = ashr i32 %5607, 1
  %5609 = add nsw i32 %5608, 532487669
  %5610 = bitcast i32 %5609 to float
  %5611 = fmul fast float %5610, %5596
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5612, 0x4009981AE0000000
  %5614 = fsub fast float 0x40111BBD80000000, %5613
  %5615 = fmul fast float %5614, %5612
  %5616 = fadd fast float %5615, 0xC0009F6020000000
  %5617 = fmul fast float %5616, %5612
  %5618 = fadd fast float %5617, 1.000000e+00
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  br label %5623

; <label>:5620                                    ; preds = %5585
  %5621 = icmp ne i32 %5427, -1
  %5622 = zext i1 %5621 to i32
  br label %5623

; <label>:5623                                    ; preds = %5620, %5589
  %5624 = phi float [ %5060, %5620 ], [ %5619, %5589 ]
  %5625 = phi i32 [ %5622, %5620 ], [ 0, %5589 ]
  %5626 = fmul float %5624, 5.000000e+00
  %5627 = fsub float 5.000000e+00, %5626
  %5628 = icmp ne i32 %5625, 0
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5631 = fadd fast float %5630, %5627
  %5632 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5631)  ; FMax(a,b)
  %5633 = call float @dx.op.unary.f32(i32 6, float %5586)  ; FAbs(value)
  %5634 = call float @dx.op.unary.f32(i32 6, float %5587)  ; FAbs(value)
  %5635 = fadd fast float %5634, %5633
  %5636 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5637 = fadd fast float %5635, %5636
  %5638 = fcmp fast oeq float %5637, 0.000000e+00
  %5639 = fdiv fast float 1.000000e+00, %5637
  %5640 = select i1 %5638, float 1.000000e+00, float %5639
  %5641 = fmul fast float %5640, %5586
  %5642 = fmul fast float %5640, %5587
  %5643 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5644 = call float @dx.op.unary.f32(i32 6, float %5641)  ; FAbs(value)
  %5645 = fsub fast float 1.000000e+00, %5643
  %5646 = fsub fast float 1.000000e+00, %5644
  %5647 = fcmp fast oge float %5641, 0.000000e+00
  %5648 = fcmp fast oge float %5642, 0.000000e+00
  %5649 = select i1 %5647, float 1.000000e+00, float -1.000000e+00
  %5650 = select i1 %5648, float 1.000000e+00, float -1.000000e+00
  %5651 = fcmp fast ole float %5588, 0.000000e+00
  %5652 = fmul fast float %5649, %5645
  %5653 = fmul fast float %5650, %5646
  %5654 = select i1 %5651, float %5652, float %5641
  %5655 = select i1 %5651, float %5653, float %5642
  %5656 = fmul fast float %5654, 5.000000e-01
  %5657 = fmul fast float %5655, 5.000000e-01
  %5658 = fadd fast float %5656, 5.000000e-01
  %5659 = fadd fast float %5657, 5.000000e-01
  %5660 = uitofp i32 %5424 to float
  %5661 = call float @dx.op.binary.f32(i32 36, float %5632, float 3.000000e+00)  ; FMin(a,b)
  %5662 = fadd fast float %5661, 2.000000e+00
  %5663 = call float @dx.op.unary.f32(i32 21, float %5662)  ; Exp(value)
  %5664 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5665 = fmul fast float %5664, %5663
  %5666 = fmul fast float %5665, 2.000000e+00
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = fmul fast float %5658, %5667
  %5669 = fmul fast float %5659, %5667
  %5670 = fadd fast float %5668, %5665
  %5671 = fadd fast float %5669, %5665
  %5672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5670, float %5671, float %5660, float undef, i32 0, i32 0, i32 undef, float %5632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5673 = extractvalue %dx.types.ResRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.ResRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.ResRet.f32 %5672, 2
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 3
  %5678 = fmul fast float %5677, %5394
  %5679 = call float @dx.op.binary.f32(i32 36, float %5127, float %5678)  ; FMin(a,b)
  %5680 = select i1 %5628, float %5679, float %5678
  %5681 = fmul fast float %5673, %5473
  %5682 = fmul fast float %5681, %5680
  %5683 = fmul fast float %5674, %5473
  %5684 = fmul fast float %5683, %5680
  %5685 = fmul fast float %5675, %5473
  %5686 = fmul fast float %5685, %5680
  %5687 = fadd fast float %5682, %5369
  %5688 = fadd fast float %5684, %5370
  %5689 = fadd fast float %5686, %5371
  %5690 = fsub fast float %5372, %5473
  br label %5475

; <label>:5691                                    ; preds = %5475
  br label %5692

; <label>:5692                                    ; preds = %5691, %5338
  %5693 = phi float [ %5339, %5338 ], [ %5476, %5691 ]
  %5694 = phi float [ %5340, %5338 ], [ %5477, %5691 ]
  %5695 = phi float [ %5341, %5338 ], [ %5478, %5691 ]
  %5696 = phi float [ %5342, %5338 ], [ %5479, %5691 ]
  %5697 = add i32 %5343, 1
  %5698 = icmp ugt i32 %5697, %5335
  br i1 %5698, label %5699, label %5338, !llvm.loop !101

; <label>:5699                                    ; preds = %5692
  br label %5700

; <label>:5700                                    ; preds = %5699, %5320
  %5701 = phi float [ 0.000000e+00, %5320 ], [ %5693, %5699 ]
  %5702 = phi float [ 0.000000e+00, %5320 ], [ %5694, %5699 ]
  %5703 = phi float [ 0.000000e+00, %5320 ], [ %5695, %5699 ]
  %5704 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5705 = select i1 %260, float 0.000000e+00, float %5701
  %5706 = select i1 %260, float %5704, float %5702
  %5707 = select i1 %260, float 0.000000e+00, float %5703
  %5708 = fcmp fast olt float %5246, 0.000000e+00
  %5709 = call float @dx.op.unary.f32(i32 6, float %5246)  ; FAbs(value)
  %5710 = fmul fast float %5709, %5186
  %5711 = fmul fast float %5709, %5187
  %5712 = fmul fast float %5709, %5188
  %5713 = select i1 %5708, float %5186, float %5710
  %5714 = select i1 %5708, float %5187, float %5711
  %5715 = select i1 %5708, float %5188, float %5712
  %5716 = fsub fast float 1.000000e+00, %5709
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fmul fast float %5717, %5705
  %5719 = fmul fast float %5717, %5706
  %5720 = fmul fast float %5717, %5707
  %5721 = fadd fast float %5713, %5718
  %5722 = fadd fast float %5714, %5719
  %5723 = fadd fast float %5715, %5720
  br label %5724

; <label>:5724                                    ; preds = %5700, %5229
  %5725 = phi float [ %5186, %5229 ], [ %5721, %5700 ]
  %5726 = phi float [ %5187, %5229 ], [ %5722, %5700 ]
  %5727 = phi float [ %5188, %5229 ], [ %5723, %5700 ]
  %5728 = fmul fast float %5235, %5182
  %5729 = fmul fast float %5235, %5183
  %5730 = fmul fast float %5235, %5184
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = fcmp fast ogt float %5731, 0x3E7FF19E20000000
  %5733 = fdiv fast float 1.000000e+00, %5731
  %5734 = select i1 %5732, float %5733, float 0.000000e+00
  %5735 = fmul fast float %5734, %5054
  %5736 = fmul fast float %5734, %5055
  %5737 = fmul fast float %5734, %5056
  %5738 = fadd fast float %5735, -1.000000e+00
  %5739 = fadd fast float %5736, -1.000000e+00
  %5740 = fadd fast float %5737, -1.000000e+00
  %5741 = fmul fast float %5738, 5.000000e-01
  %5742 = fmul fast float %5739, 5.000000e-01
  %5743 = fmul fast float %5740, 5.000000e-01
  %5744 = fadd fast float %5741, 1.000000e+00
  %5745 = fadd fast float %5742, 1.000000e+00
  %5746 = fadd fast float %5743, 1.000000e+00
  %5747 = fmul fast float %5725, %5230
  %5748 = fmul fast float %5726, %5231
  %5749 = fmul fast float %5727, %5232
  %5750 = fsub fast float 1.000000e+00, %5065
  %5751 = bitcast float %5750 to i32
  %5752 = sitofp i32 %5751 to float
  %5753 = fmul fast float %5752, 5.000000e+00
  %5754 = fadd fast float %5753, 0xC1EFBF8940000000
  %5755 = fptosi float %5754 to i32
  %5756 = bitcast i32 %5755 to float
  %5757 = fmul fast float %5756, %3857
  %5758 = fmul fast float %5182, %5757
  %5759 = fmul fast float %5758, %5235
  %5760 = fmul fast float %5759, %5744
  %5761 = fmul fast float %5183, %5757
  %5762 = fmul fast float %5761, %5235
  %5763 = fmul fast float %5762, %5745
  %5764 = fmul fast float %5184, %5757
  %5765 = fmul fast float %5764, %5235
  %5766 = fmul fast float %5765, %5746
  %5767 = fmul fast float %5728, %3853
  %5768 = fmul fast float %5729, %3853
  %5769 = fmul fast float %5730, %3853
  %5770 = fadd fast float %5747, %3849
  %5771 = fadd fast float %5770, %5760
  %5772 = fmul fast float %5771, %3853
  %5773 = fadd fast float %5748, %3850
  %5774 = fadd fast float %5773, %5763
  %5775 = fmul fast float %5774, %3853
  %5776 = fadd fast float %5749, %3851
  %5777 = fadd fast float %5776, %5766
  %5778 = fmul fast float %5777, %3853
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5781 = fcmp fast oeq float %5780, 0.000000e+00
  br i1 %5781, label %7485, label %5782

; <label>:5782                                    ; preds = %5724
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = select i1 %260, float %5791, float %5787
  %5795 = select i1 %260, float %5793, float %5788
  %5796 = select i1 %260, float %5792, float %5789
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5799 = fmul fast float %5798, %121
  %5800 = fmul fast float %5798, %122
  %5801 = fmul fast float %5798, %123
  %5802 = fadd fast float %5799, %201
  %5803 = fadd fast float %5800, %202
  %5804 = fadd fast float %5801, %203
  %5805 = fcmp fast olt float %5780, 0.000000e+00
  br i1 %5805, label %7063, label %5806

; <label>:5806                                    ; preds = %5782
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.CBufRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.CBufRet.f32 %5807, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5807, 3
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = fmul fast float %5808, %5802
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5809, float %5822)  ; FMad(a,b,c)
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5810, float %5823)  ; FMad(a,b,c)
  %5825 = fadd fast float %5824, %5811
  %5826 = fmul fast float %5813, %5802
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5814, float %5826)  ; FMad(a,b,c)
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5815, float %5827)  ; FMad(a,b,c)
  %5829 = fadd fast float %5828, %5816
  %5830 = fmul fast float %5818, %5802
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5819, float %5830)  ; FMad(a,b,c)
  %5832 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5820, float %5831)  ; FMad(a,b,c)
  %5833 = fadd fast float %5832, %5821
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = fcmp fast une float %5835, 0.000000e+00
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.CBufRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5837, 3
  %5841 = fmul fast float %5840, %5825
  %5842 = fmul fast float %5840, %5829
  %5843 = fadd fast float %5841, %5838
  %5844 = fadd fast float %5842, %5839
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5849 = fmul fast float %5848, %5825
  %5850 = fmul fast float %5848, %5829
  %5851 = fadd fast float %5849, %5846
  %5852 = fadd fast float %5850, %5847
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5855 = fsub fast float %5854, %5833
  %5856 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5857 = fmul fast float %5855, %5856
  %5858 = fsub fast float 1.000000e+00, %5857
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  br i1 %5836, label %5920, label %5860

; <label>:5860                                    ; preds = %5806
  %5861 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fadd fast float %5863, %5861
  %5865 = fcmp fast ogt float %5864, 0.000000e+00
  br i1 %5865, label %5866, label %5890

; <label>:5866                                    ; preds = %5860
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5869 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5870 = fsub fast float %5851, %5868
  %5871 = fsub fast float %5852, %5869
  %5872 = fcmp fast olt float %5870, 0.000000e+00
  %5873 = fcmp fast olt float %5871, 0.000000e+00
  %5874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.CBufRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.CBufRet.f32 %5874, 2
  %5878 = extractvalue %dx.types.CBufRet.f32 %5874, 3
  %5879 = select i1 %5872, float %5875, float %5877
  %5880 = select i1 %5873, float %5876, float %5878
  %5881 = fmul fast float %5879, %5870
  %5882 = fmul fast float %5880, %5871
  %5883 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5884 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5886 = call float @dx.op.binary.f32(i32 35, float %5883, float %5884)  ; FMax(a,b)
  %5887 = fsub fast float %5885, %5886
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5888, %5859
  br label %5890

; <label>:5890                                    ; preds = %5866, %5860
  %5891 = phi float [ %5889, %5866 ], [ 0.000000e+00, %5860 ]
  %5892 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5893 = extractvalue %dx.types.CBufRet.f32 %5862, 1
  %5894 = fadd fast float %5893, %5892
  %5895 = fcmp fast ogt float %5894, 0.000000e+00
  br i1 %5895, label %5896, label %5920

; <label>:5896                                    ; preds = %5890
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5900 = fsub fast float %5843, %5898
  %5901 = fsub fast float %5844, %5899
  %5902 = fcmp fast olt float %5900, 0.000000e+00
  %5903 = fcmp fast olt float %5901, 0.000000e+00
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5908 = extractvalue %dx.types.CBufRet.f32 %5904, 3
  %5909 = select i1 %5902, float %5905, float %5907
  %5910 = select i1 %5903, float %5906, float %5908
  %5911 = fmul fast float %5909, %5900
  %5912 = fmul fast float %5910, %5901
  %5913 = call float @dx.op.unary.f32(i32 6, float %5911)  ; FAbs(value)
  %5914 = call float @dx.op.unary.f32(i32 6, float %5912)  ; FAbs(value)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5916 = call float @dx.op.binary.f32(i32 35, float %5913, float %5914)  ; FMax(a,b)
  %5917 = fsub fast float %5915, %5916
  %5918 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5919 = fmul fast float %5918, %5859
  br label %5920

; <label>:5920                                    ; preds = %5896, %5890, %5806
  %5921 = phi float [ 0.000000e+00, %5806 ], [ %5919, %5896 ], [ 0.000000e+00, %5890 ]
  %5922 = phi float [ 0.000000e+00, %5806 ], [ %5891, %5896 ], [ %5891, %5890 ]
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.CBufRet.f32 %5926, 1
  %5929 = fsub fast float %5825, %5927
  %5930 = fsub fast float %5829, %5928
  %5931 = fcmp fast olt float %5929, 0.000000e+00
  %5932 = fcmp fast olt float %5930, 0.000000e+00
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = select i1 %5931, float %5934, float %5936
  %5939 = select i1 %5932, float %5935, float %5937
  %5940 = fmul fast float %5938, %5929
  %5941 = fmul fast float %5939, %5930
  %5942 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %5943 = call float @dx.op.unary.f32(i32 6, float %5941)  ; FAbs(value)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  %5945 = call float @dx.op.binary.f32(i32 35, float %5942, float %5943)  ; FMax(a,b)
  %5946 = fsub fast float %5944, %5945
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = call float @dx.op.binary.f32(i32 36, float %5947, float %5925)  ; FMin(a,b)
  %5949 = fmul fast float %5948, %5859
  %5950 = fsub fast float %5921, %5949
  %5951 = fsub fast float %5922, %5921
  %5952 = fsub fast float %5951, %5949
  %5953 = call float @dx.op.binary.f32(i32 35, float %5921, float %5922)  ; FMax(a,b)
  %5954 = call float @dx.op.binary.f32(i32 35, float %5949, float %5953)  ; FMax(a,b)
  %5955 = fcmp fast olt float %5954, 1.000000e+00
  br i1 %5955, label %5956, label %6354, !dx.controlflow.hints !103

; <label>:5956                                    ; preds = %5920
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = fcmp fast une float %5958, 0.000000e+00
  br i1 %5959, label %5960, label %6354, !dx.controlflow.hints !104

; <label>:5960                                    ; preds = %5956
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5964 = extractvalue %dx.types.CBufRet.f32 %5961, 2
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 3
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5970 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.CBufRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5971, 3
  %5976 = fmul fast float %5962, %5802
  %5977 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5963, float %5976)  ; FMad(a,b,c)
  %5978 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5964, float %5977)  ; FMad(a,b,c)
  %5979 = fadd fast float %5978, %5965
  %5980 = fmul fast float %5967, %5802
  %5981 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5968, float %5980)  ; FMad(a,b,c)
  %5982 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5969, float %5981)  ; FMad(a,b,c)
  %5983 = fadd fast float %5982, %5970
  %5984 = fmul fast float %5972, %5802
  %5985 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %5973, float %5984)  ; FMad(a,b,c)
  %5986 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %5974, float %5985)  ; FMad(a,b,c)
  %5987 = fadd fast float %5986, %5975
  %5988 = fcmp fast oge float %5979, 1.000000e+00
  %5989 = fcmp fast oge float %5983, 1.000000e+00
  %5990 = or i1 %5988, %5989
  %5991 = fcmp fast olt float %5979, 0.000000e+00
  %5992 = fcmp fast olt float %5983, 0.000000e+00
  %5993 = or i1 %5991, %5992
  %5994 = or i1 %5990, %5993
  br i1 %5994, label %6354, label %5995, !dx.controlflow.hints !105

; <label>:5995                                    ; preds = %5960
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.CBufRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %6000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.i32 %6000, 2
  %6002 = uitofp i32 %6001 to float
  %6003 = extractvalue %dx.types.CBufRet.i32 %6000, 3
  %6004 = uitofp i32 %6003 to float
  %6005 = extractvalue %dx.types.CBufRet.f32 %5996, 3
  %6006 = fmul fast float %6005, 2.000000e+00
  %6007 = fsub fast float %5979, %5997
  %6008 = fsub fast float %5983, %5998
  %6009 = fmul fast float %6006, %6007
  %6010 = fmul fast float %6006, %6008
  %6011 = fdiv fast float 1.000000e+00, %5785
  %6012 = fmul fast float %6010, %6011
  %6013 = call float @dx.op.unary.f32(i32 6, float %6012)  ; FAbs(value)
  %6014 = fmul fast float %5999, %5804
  %6015 = fmul fast float %6014, %6006
  %6016 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6018 = call float @dx.op.binary.f32(i32 35, float %6016, float %6013)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 35, float %6017, float %6018)  ; FMax(a,b)
  %6020 = fmul fast float %6019, 2.000000e+00
  %6021 = call float @dx.op.unary.f32(i32 23, float %6020)  ; Log(value)
  %6022 = call float @dx.op.binary.f32(i32 35, float %6021, float %6002)  ; FMax(a,b)
  %6023 = call float @dx.op.unary.f32(i32 22, float %6022)  ; Frc(value)
  %6024 = fadd fast float %6023, 0xBFEA666660000000
  %6025 = fmul fast float %6024, 8.000000e+00
  %6026 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6027 = call float @dx.op.unary.f32(i32 27, float %6022)  ; Round_ni(value)
  %6028 = fadd fast float %6027, %6026
  %6029 = call float @dx.op.binary.f32(i32 36, float %6028, float %6004)  ; FMin(a,b)
  %6030 = call float @dx.op.unary.f32(i32 27, float %6029)  ; Round_ni(value)
  %6031 = fsub fast float -0.000000e+00, %6030
  %6032 = call float @dx.op.unary.f32(i32 21, float %6031)  ; Exp(value)
  %6033 = fmul fast float %6032, %6006
  %6034 = fmul fast float %6033, %5979
  %6035 = fmul fast float %6033, %5983
  %6036 = fmul fast float %6034, 2.500000e-01
  %6037 = fmul fast float %6035, 2.500000e-01
  %6038 = fadd fast float %6036, 5.000000e-01
  %6039 = fadd fast float %6037, 5.000000e-01
  %6040 = fsub fast float %6004, %6002
  %6041 = fptoui float %6040 to i32
  %6042 = add i32 %6041, 320
  %6043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6042)  ; CBufferLoadLegacy(handle,regIndex)
  %6044 = extractvalue %dx.types.CBufRet.f32 %6043, 0
  %6045 = extractvalue %dx.types.CBufRet.f32 %6043, 1
  %6046 = fcmp fast une float %6029, %6004
  %6047 = fsub fast float %5979, %6044
  %6048 = fsub fast float %5983, %6045
  %6049 = call float @dx.op.unary.f32(i32 6, float %6047)  ; FAbs(value)
  %6050 = call float @dx.op.unary.f32(i32 6, float %6048)  ; FAbs(value)
  %6051 = fmul fast float %6049, %6033
  %6052 = fmul fast float %6050, %6033
  %6053 = fcmp fast olt float %6051, 1.000000e+00
  %6054 = fcmp fast olt float %6052, 1.000000e+00
  %6055 = and i1 %6053, %6054
  %6056 = or i1 %6046, %6055
  br i1 %6056, label %6057, label %6354, !dx.controlflow.hints !106

; <label>:6057                                    ; preds = %5995
  %6058 = fmul fast float %6035, 5.000000e-01
  %6059 = fmul fast float %6034, 5.000000e-01
  %6060 = fadd fast float %6058, 5.000000e-01
  %6061 = fadd fast float %6059, 5.000000e-01
  %6062 = sitofp i32 %6001 to float
  %6063 = fsub fast float %6029, %6062
  %6064 = call float @dx.op.unary.f32(i32 27, float %6063)  ; Round_ni(value)
  %6065 = call float @dx.op.unary.f32(i32 22, float %6029)  ; Frc(value)
  %6066 = call float @dx.op.unary.f32(i32 22, float %6061)  ; Frc(value)
  %6067 = call float @dx.op.unary.f32(i32 22, float %6060)  ; Frc(value)
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6066, float %6067, float %6064, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = extractvalue %dx.types.ResRet.f32 %6068, 3
  %6073 = fcmp fast ogt float %6065, 0.000000e+00
  br i1 %6073, label %6074, label %6095, !dx.controlflow.hints !107

; <label>:6074                                    ; preds = %6057
  %6075 = fadd fast float %6064, 1.000000e+00
  %6076 = call float @dx.op.unary.f32(i32 22, float %6038)  ; Frc(value)
  %6077 = call float @dx.op.unary.f32(i32 22, float %6039)  ; Frc(value)
  %6078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6076, float %6077, float %6075, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 0
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6081 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6082 = extractvalue %dx.types.ResRet.f32 %6078, 3
  %6083 = fsub fast float %6079, %6069
  %6084 = fsub fast float %6080, %6070
  %6085 = fsub fast float %6081, %6071
  %6086 = fsub fast float %6082, %6072
  %6087 = fmul fast float %6083, %6065
  %6088 = fmul fast float %6084, %6065
  %6089 = fmul fast float %6085, %6065
  %6090 = fmul fast float %6086, %6065
  %6091 = fadd fast float %6087, %6069
  %6092 = fadd fast float %6088, %6070
  %6093 = fadd fast float %6089, %6071
  %6094 = fadd fast float %6090, %6072
  br label %6095

; <label>:6095                                    ; preds = %6074, %6057
  %6096 = phi float [ %6091, %6074 ], [ %6069, %6057 ]
  %6097 = phi float [ %6092, %6074 ], [ %6070, %6057 ]
  %6098 = phi float [ %6093, %6074 ], [ %6071, %6057 ]
  %6099 = phi float [ %6094, %6074 ], [ %6072, %6057 ]
  %6100 = fadd fast float %6096, -5.000000e-01
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fmul fast float %6100, 0xBFD5555560000000
  %6103 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6101, float %6102)  ; FMad(a,b,c)
  %6104 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6097, float 0.000000e+00)  ; FMad(a,b,c)
  %6105 = fadd fast float %6104, %6099
  %6106 = fmul fast float %6100, -7.500000e-01
  %6107 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6101, float %6106)  ; FMad(a,b,c)
  %6108 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6097, float 0.000000e+00)  ; FMad(a,b,c)
  %6109 = fadd fast float %6108, %6099
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6117 = fsub fast float %6113, %6103
  %6118 = fsub fast float %6114, %6105
  %6119 = fsub fast float %6115, %6107
  %6120 = fsub fast float %6116, %6109
  %6121 = fmul fast float %6117, %6111
  %6122 = fmul fast float %6118, %6111
  %6123 = fmul fast float %6119, %6111
  %6124 = fmul fast float %6120, %6111
  %6125 = fadd fast float %6121, %6103
  %6126 = fadd fast float %6122, %6105
  %6127 = fadd fast float %6123, %6107
  %6128 = fadd fast float %6124, %6109
  %6129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.i32 %6129, 0
  %6131 = and i32 %6130, 536870911
  %6132 = uitofp i32 %6131 to float
  %6133 = fmul fast float %6132, %5979
  %6134 = fmul fast float %6132, %5983
  %6135 = fptoui float %6133 to i32
  %6136 = fptoui float %6134 to i32
  %6137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.i32 %6137, 0
  %6139 = and i32 %6138, 31
  %6140 = lshr i32 %6135, %6139
  %6141 = lshr i32 %6136, %6139
  %6142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.i32 %6142, 0
  %6144 = and i32 %6143, 31
  %6145 = shl i32 1, %6144
  %6146 = call i32 @dx.op.binary.i32(i32 40, i32 %6145, i32 4)  ; UMin(a,b)
  %6147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6148 = extractvalue %dx.types.ResRet.i32 %6147, 0
  %6149 = extractvalue %dx.types.ResRet.i32 %6147, 1
  %6150 = icmp eq i32 %6146, 0
  br i1 %6150, label %6192, label %6151

; <label>:6151                                    ; preds = %6095
  br label %6152

; <label>:6152                                    ; preds = %6180, %6151
  %6153 = phi i32 [ %6183, %6180 ], [ 0, %6151 ]
  %6154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6155 = extractvalue %dx.types.ResRet.i32 %6154, 0
  %6156 = lshr i32 %6155, 16
  %6157 = and i32 %6156, 31
  %6158 = shl i32 %6141, %6157
  %6159 = add i32 %6158, %6140
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = and i32 %6161, 31
  %6163 = shl i32 %6159, %6162
  %6164 = add i32 %6163, %6153
  %6165 = shl i32 %6164, 2
  %6166 = add i32 %6165, 32
  %6167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6166, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.i32 %6167, 0
  %6169 = icmp slt i32 %6168, 0
  %6170 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6153
  %6171 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6153
  %6172 = bitcast float* %6170 to i32*
  %6173 = bitcast float* %6171 to i32*
  br i1 %6169, label %6174, label %6180

; <label>:6174                                    ; preds = %6152
  %6175 = and i32 %6168, 1073741823
  %6176 = add nuw nsw i32 %6175, 20
  %6177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.i32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.i32 %6177, 1
  br label %6180

; <label>:6180                                    ; preds = %6174, %6152
  %6181 = phi i32 [ %6178, %6174 ], [ %6148, %6152 ]
  %6182 = phi i32 [ %6179, %6174 ], [ %6149, %6152 ]
  store i32 %6181, i32* %6172, align 4
  store i32 %6182, i32* %6173, align 4
  %6183 = add nuw i32 %6153, 1
  %6184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.i32 %6184, 2
  %6186 = icmp eq i32 %6185, 0
  %6187 = icmp ugt i32 %6168, -1073741825
  %6188 = and i1 %6187, %6186
  %6189 = icmp ult i32 %6183, %6146
  %6190 = and i1 %6188, %6189
  br i1 %6190, label %6152, label %6191

; <label>:6191                                    ; preds = %6180
  br label %6192

; <label>:6192                                    ; preds = %6191, %6095
  %6193 = phi i32 [ 0, %6095 ], [ %6183, %6191 ]
  %6194 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %6195 = fptoui float %6194 to i32
  %6196 = icmp eq i32 %6195, 0
  br i1 %6196, label %6248, label %6197

; <label>:6197                                    ; preds = %6192
  br label %6198

; <label>:6198                                    ; preds = %6243, %6197
  %6199 = phi i32 [ %6244, %6243 ], [ %6193, %6197 ]
  %6200 = phi i32 [ %6245, %6243 ], [ 0, %6197 ]
  %6201 = lshr i32 %6200, 2
  %6202 = and i32 %6200, 3
  %6203 = add nuw nsw i32 %6201, 83
  %6204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6203)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.i32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.i32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.i32 %6204, 2
  %6208 = extractvalue %dx.types.CBufRet.i32 %6204, 3
  %6209 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6205, i32* %6209, align 4
  %6210 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6206, i32* %6210, align 4
  %6211 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6207, i32* %6211, align 4
  %6212 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6208, i32* %6212, align 4
  %6213 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6202
  %6214 = load i32, i32* %6213, align 4, !tbaa !108, !noalias !112
  %6215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.i32 %6215, 0
  %6217 = lshr i32 %6216, 16
  %6218 = and i32 %6217, 31
  %6219 = shl i32 %6141, %6218
  %6220 = add i32 %6219, %6140
  %6221 = shl i32 %6220, 2
  %6222 = add i32 %6221, %6214
  %6223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6222, i32 undef)  ; BufferLoad(srv,index,wot)
  %6224 = extractvalue %dx.types.ResRet.i32 %6223, 0
  %6225 = icmp eq i32 %6224, 0
  br i1 %6225, label %6243, label %6226

; <label>:6226                                    ; preds = %6198
  %6227 = icmp slt i32 %6224, 0
  %6228 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6199
  %6229 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6199
  %6230 = bitcast float* %6228 to i32*
  %6231 = bitcast float* %6229 to i32*
  br i1 %6227, label %6232, label %6239

; <label>:6232                                    ; preds = %6226
  %6233 = and i32 %6224, 1073741823
  %6234 = add i32 %6214, 20
  %6235 = add i32 %6234, %6233
  %6236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6235, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.i32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.i32 %6236, 1
  br label %6239

; <label>:6239                                    ; preds = %6232, %6226
  %6240 = phi i32 [ %6237, %6232 ], [ %6148, %6226 ]
  %6241 = phi i32 [ %6238, %6232 ], [ %6149, %6226 ]
  store i32 %6240, i32* %6230, align 4
  store i32 %6241, i32* %6231, align 4
  %6242 = add i32 %6199, 1
  br label %6243

; <label>:6243                                    ; preds = %6239, %6198
  %6244 = phi i32 [ %6199, %6198 ], [ %6242, %6239 ]
  %6245 = add nuw i32 %6200, 1
  %6246 = icmp eq i32 %6245, %6195
  br i1 %6246, label %6247, label %6198

; <label>:6247                                    ; preds = %6243
  br label %6248

; <label>:6248                                    ; preds = %6247, %6192
  %6249 = phi i32 [ %6193, %6192 ], [ %6244, %6247 ]
  %6250 = icmp eq i32 %6249, 1
  %6251 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6252 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6250, label %6253, label %6256

; <label>:6253                                    ; preds = %6248
  %6254 = load float, float* %6251, align 4
  %6255 = load float, float* %6252, align 4
  br label %6283

; <label>:6256                                    ; preds = %6248
  %6257 = load float, float* %6251, align 4
  %6258 = load float, float* %6252, align 4
  %6259 = fdiv fast float 1.000000e+00, %6258
  %6260 = fsub fast float %6257, %6259
  %6261 = icmp ugt i32 %6249, 1
  br i1 %6261, label %6262, label %6278

; <label>:6262                                    ; preds = %6256
  br label %6263

; <label>:6263                                    ; preds = %6263, %6262
  %6264 = phi float [ %6273, %6263 ], [ %6260, %6262 ]
  %6265 = phi float [ %6274, %6263 ], [ %6257, %6262 ]
  %6266 = phi i32 [ %6275, %6263 ], [ 1, %6262 ]
  %6267 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6266
  %6268 = load float, float* %6267, align 4
  %6269 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6266
  %6270 = load float, float* %6269, align 4
  %6271 = fdiv fast float 1.000000e+00, %6270
  %6272 = fsub fast float %6268, %6271
  %6273 = call float @dx.op.binary.f32(i32 36, float %6264, float %6272)  ; FMin(a,b)
  %6274 = call float @dx.op.binary.f32(i32 35, float %6265, float %6268)  ; FMax(a,b)
  %6275 = add nuw i32 %6266, 1
  %6276 = icmp eq i32 %6275, %6249
  br i1 %6276, label %6277, label %6263

; <label>:6277                                    ; preds = %6263
  br label %6278

; <label>:6278                                    ; preds = %6277, %6256
  %6279 = phi float [ %6260, %6256 ], [ %6273, %6277 ]
  %6280 = phi float [ %6257, %6256 ], [ %6274, %6277 ]
  %6281 = fsub fast float %6280, %6279
  %6282 = fdiv fast float 1.000000e+00, %6281
  br label %6283

; <label>:6283                                    ; preds = %6278, %6253
  %6284 = phi float [ %6254, %6253 ], [ %6280, %6278 ]
  %6285 = phi float [ %6255, %6253 ], [ %6282, %6278 ]
  %6286 = fadd fast float %5987, %6284
  %6287 = fmul fast float %6286, %6285
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = fmul fast float %6288, 2.000000e+00
  %6290 = fsub fast float 1.000000e+00, %6289
  %6291 = fmul fast float %6125, %6125
  %6292 = fsub fast float %6126, %6291
  %6293 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6292)  ; FMax(a,b)
  %6294 = fdiv fast float 1.000000e+00, %6293
  %6295 = fmul fast float %6126, %6125
  %6296 = fsub fast float %6127, %6295
  %6297 = fsub fast float %6290, %6125
  %6298 = fmul fast float %6290, %6290
  %6299 = fsub fast float %6298, %6126
  %6300 = fmul fast float %6294, %6296
  %6301 = fmul fast float %6300, %6297
  %6302 = fsub fast float %6299, %6301
  %6303 = fmul fast float %6126, %6126
  %6304 = fsub fast float %6128, %6303
  %6305 = fmul fast float %6296, %6296
  %6306 = fmul fast float %6305, %6294
  %6307 = fsub fast float %6304, %6306
  %6308 = fdiv fast float %6302, %6307
  %6309 = fmul fast float %6308, %6296
  %6310 = fsub fast float %6297, %6309
  %6311 = fmul fast float %6310, %6294
  %6312 = fmul fast float %6311, %6125
  %6313 = fsub fast float 1.000000e+00, %6312
  %6314 = fmul fast float %6308, %6126
  %6315 = fsub fast float %6313, %6314
  %6316 = fmul fast float %6311, %6311
  %6317 = fmul fast float %6308, 4.000000e+00
  %6318 = fmul fast float %6317, %6315
  %6319 = fsub fast float %6316, %6318
  %6320 = call float @dx.op.unary.f32(i32 24, float %6319)  ; Sqrt(value)
  %6321 = fcmp fast oge float %6311, 0.000000e+00
  %6322 = fsub fast float -0.000000e+00, %6320
  %6323 = select i1 %6321, float %6322, float %6320
  %6324 = fsub fast float %6323, %6311
  %6325 = fdiv fast float %6324, %6308
  %6326 = fdiv fast float %6315, %6324
  %6327 = fmul fast float %6325, 5.000000e-01
  %6328 = fmul fast float %6326, 2.000000e+00
  %6329 = select i1 %6321, float %6327, float %6328
  %6330 = select i1 %6321, float %6328, float %6327
  %6331 = call float @dx.op.binary.f32(i32 35, float %6329, float %6330)  ; FMax(a,b)
  %6332 = call float @dx.op.binary.f32(i32 36, float %6329, float %6330)  ; FMin(a,b)
  %6333 = fcmp fast ogt float %6290, %6331
  %6334 = fsub fast float %6290, %6332
  %6335 = fsub fast float %6290, %6331
  %6336 = fsub fast float %6331, %6332
  %6337 = select i1 %6333, float %6335, float %6336
  %6338 = fmul float %6334, %6337
  %6339 = select i1 %6333, float %6332, float %6290
  %6340 = fcmp fast ogt float %6290, %6332
  %6341 = fmul fast float %6339, %6331
  %6342 = fadd fast float %6339, %6331
  %6343 = fmul fast float %6342, %6125
  %6344 = fadd fast float %6341, %6126
  %6345 = fsub fast float %6344, %6343
  %6346 = fdiv fast float %6345, %6338
  %6347 = select i1 %6340, float %6346, float 0.000000e+00
  %6348 = fsub fast float 1.000000e+00, %6347
  %6349 = select i1 %6333, float %6348, float %6347
  %6350 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6352 = fmul fast float %6351, %6350
  %6353 = fsub fast float 1.000000e+00, %6352
  br label %6354

; <label>:6354                                    ; preds = %6283, %5995, %5960, %5956, %5920
  %6355 = phi float [ 1.000000e+00, %5920 ], [ %6353, %6283 ], [ 1.000000e+00, %5960 ], [ 1.000000e+00, %5995 ], [ 1.000000e+00, %5956 ]
  %6356 = fcmp fast ogt float %5952, 0.000000e+00
  br i1 %6356, label %6357, label %6521, !dx.controlflow.hints !121

; <label>:6357                                    ; preds = %6354
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6360 = fadd fast float %6359, %5833
  %6361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6362 = extractvalue %dx.types.CBufRet.f32 %6361, 2
  %6363 = extractvalue %dx.types.CBufRet.f32 %6361, 3
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 2
  %6366 = call float @dx.op.binary.f32(i32 35, float %6360, float 0.000000e+00)  ; FMax(a,b)
  %6367 = fadd fast float %6366, 0x3F10000000000000
  %6368 = fcmp fast oeq float %6365, 0.000000e+00
  br i1 %6368, label %6369, label %6436

; <label>:6369                                    ; preds = %6357
  %6370 = extractvalue %dx.types.CBufRet.f32 %6361, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6361, 0
  %6372 = fmul fast float %6371, %5851
  %6373 = fmul fast float %6370, %5852
  %6374 = fadd fast float %6372, 5.000000e-01
  %6375 = call float @dx.op.unary.f32(i32 27, float %6374)  ; Round_ni(value)
  %6376 = fadd fast float %6373, 5.000000e-01
  %6377 = call float @dx.op.unary.f32(i32 27, float %6376)  ; Round_ni(value)
  %6378 = fsub fast float %6374, %6375
  %6379 = fsub fast float %6376, %6377
  %6380 = fadd fast float %6375, -5.000000e-01
  %6381 = fadd fast float %6377, -5.000000e-01
  %6382 = fmul fast float %6378, 2.000000e+00
  %6383 = fsub fast float 3.000000e+00, %6382
  %6384 = fadd fast float %6382, 1.000000e+00
  %6385 = fsub fast float 2.000000e+00, %6378
  %6386 = bitcast float %6383 to i32
  %6387 = sub nsw i32 2129859010, %6386
  %6388 = bitcast i32 %6387 to float
  %6389 = fmul fast float %6388, %6385
  %6390 = fadd fast float %6389, -1.000000e+00
  %6391 = bitcast float %6384 to i32
  %6392 = sub nsw i32 2129859010, %6391
  %6393 = bitcast i32 %6392 to float
  %6394 = fmul fast float %6393, %6378
  %6395 = fadd fast float %6394, 1.000000e+00
  %6396 = fmul fast float %6379, 2.000000e+00
  %6397 = fsub fast float 3.000000e+00, %6396
  %6398 = fadd fast float %6396, 1.000000e+00
  %6399 = fsub fast float 2.000000e+00, %6379
  %6400 = bitcast float %6397 to i32
  %6401 = sub nsw i32 2129859010, %6400
  %6402 = bitcast i32 %6401 to float
  %6403 = fmul fast float %6402, %6399
  %6404 = fadd fast float %6403, -1.000000e+00
  %6405 = bitcast float %6398 to i32
  %6406 = sub nsw i32 2129859010, %6405
  %6407 = bitcast i32 %6406 to float
  %6408 = fmul fast float %6407, %6379
  %6409 = fadd fast float %6408, 1.000000e+00
  %6410 = fadd fast float %6390, %6380
  %6411 = fmul fast float %6410, %6362
  %6412 = fadd fast float %6404, %6381
  %6413 = fmul fast float %6412, %6363
  %6414 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6411, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float %6367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = fmul fast float %6415, %6383
  %6417 = fadd fast float %6395, %6380
  %6418 = fmul fast float %6417, %6362
  %6419 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6418, float %6413, float undef, float undef, i32 0, i32 0, i32 undef, float %6367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = fmul fast float %6420, %6384
  %6422 = fadd fast float %6409, %6381
  %6423 = fmul fast float %6422, %6363
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6411, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = fmul fast float %6425, %6383
  %6427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6418, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float %6367)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6428 = extractvalue %dx.types.ResRet.f32 %6427, 0
  %6429 = fmul fast float %6428, %6384
  %6430 = fadd fast float %6429, %6426
  %6431 = fmul fast float %6430, %6398
  %6432 = fadd fast float %6421, %6416
  %6433 = fmul fast float %6432, %6397
  %6434 = fadd fast float %6433, %6431
  %6435 = fmul fast float %6434, 6.250000e-02
  br label %6521

; <label>:6436                                    ; preds = %6357
  %6437 = fmul fast float %271, 0x401921FB60000000
  %6438 = call float @dx.op.unary.f32(i32 13, float %6437)  ; Sin(value)
  %6439 = call float @dx.op.unary.f32(i32 12, float %6437)  ; Cos(value)
  %6440 = fsub fast float -0.000000e+00, %6438
  br label %6441

; <label>:6441                                    ; preds = %6490, %6436
  %6442 = phi float [ 0.000000e+00, %6436 ], [ %6485, %6490 ]
  %6443 = phi float [ 0.000000e+00, %6436 ], [ %6487, %6490 ]
  %6444 = phi i32 [ 0, %6436 ], [ %6491, %6490 ]
  %6445 = mul i32 %6444, 2
  %6446 = add i32 0, %6445
  %6447 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6446
  %6448 = load float, float* %6447, align 4
  %6449 = mul i32 %6444, 2
  %6450 = add i32 1, %6449
  %6451 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6450
  %6452 = load float, float* %6451, align 4
  %6453 = fmul fast float %6448, %6439
  %6454 = call float @dx.op.tertiary.f32(i32 46, float %6452, float %6440, float %6453)  ; FMad(a,b,c)
  %6455 = fmul fast float %6448, %6438
  %6456 = call float @dx.op.tertiary.f32(i32 46, float %6452, float %6439, float %6455)  ; FMad(a,b,c)
  %6457 = fmul fast float %6454, %6365
  %6458 = fmul fast float %6456, %6365
  %6459 = fadd fast float %6457, %5851
  %6460 = fadd fast float %6458, %5852
  %6461 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6459, float %6460, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6462 = extractvalue %dx.types.ResRet.f32 %6461, 0
  %6463 = extractvalue %dx.types.ResRet.f32 %6461, 1
  %6464 = extractvalue %dx.types.ResRet.f32 %6461, 2
  %6465 = extractvalue %dx.types.ResRet.f32 %6461, 3
  %6466 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6462, float* %6466, align 4
  %6467 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6463, float* %6467, align 4
  %6468 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6464, float* %6468, align 4
  %6469 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6465, float* %6469, align 4
  %6470 = fsub fast float %6462, %6367
  %6471 = fcmp fast olt float %6470, 0.000000e+00
  %6472 = select i1 %6471, float 0.000000e+00, float 1.000000e+00
  %6473 = fadd fast float %6472, %6442
  %6474 = fmul fast float %6472, %6470
  %6475 = fadd fast float %6474, %6443
  br label %6476

; <label>:6476                                    ; preds = %6476, %6441
  %6477 = phi i32 [ 1, %6441 ], [ %6488, %6476 ]
  %6478 = phi float [ %6475, %6441 ], [ %6487, %6476 ]
  %6479 = phi float [ %6473, %6441 ], [ %6485, %6476 ]
  %6480 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6477
  %6481 = load float, float* %6480, align 4, !tbaa !122, !noalias !112
  %6482 = fsub fast float %6481, %6367
  %6483 = fcmp fast olt float %6482, 0.000000e+00
  %6484 = select i1 %6483, float 0.000000e+00, float 1.000000e+00
  %6485 = fadd fast float %6484, %6479
  %6486 = fmul fast float %6484, %6482
  %6487 = fadd fast float %6486, %6478
  %6488 = add nuw nsw i32 %6477, 1
  %6489 = icmp eq i32 %6488, 4
  br i1 %6489, label %6490, label %6476, !llvm.loop !124

; <label>:6490                                    ; preds = %6476
  %6491 = add nuw nsw i32 %6444, 1
  %6492 = icmp eq i32 %6491, 8
  br i1 %6492, label %6493, label %6441, !llvm.loop !125

; <label>:6493                                    ; preds = %6490
  %6494 = fdiv fast float 1.000000e+00, %6485
  %6495 = fmul fast float %6494, %6487
  %6496 = fdiv fast float 1.000000e+00, %6367
  %6497 = fmul fast float %6495, %6496
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = call float @dx.op.binary.f32(i32 35, float %6498, float 0.000000e+00)  ; FMax(a,b)
  %6500 = fmul fast float %6485, 3.125000e-02
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = fmul fast float %6501, 2.000000e+00
  %6503 = fadd fast float %6502, -1.000000e+00
  %6504 = fcmp fast ogt float %6503, 0.000000e+00
  %6505 = fcmp fast olt float %6503, 0.000000e+00
  %6506 = zext i1 %6504 to i32
  %6507 = zext i1 %6505 to i32
  %6508 = sub nsw i32 %6506, %6507
  %6509 = sitofp i32 %6508 to float
  %6510 = fmul fast float %6509, %6503
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = fmul fast float %6511, %6511
  %6513 = fmul fast float %6512, %6511
  %6514 = fsub fast float %6511, %6513
  %6515 = fmul fast float %6514, %6499
  %6516 = fsub fast float 1.000000e+00, %6513
  %6517 = fsub fast float %6516, %6515
  %6518 = fmul fast float %6509, 5.000000e-01
  %6519 = fmul fast float %6518, %6517
  %6520 = fsub fast float 5.000000e-01, %6519
  br label %6521

; <label>:6521                                    ; preds = %6493, %6369, %6354
  %6522 = phi float [ 1.000000e+00, %6354 ], [ %6435, %6369 ], [ %6520, %6493 ]
  %6523 = fcmp fast ogt float %5950, 0.000000e+00
  br i1 %6523, label %6524, label %6688, !dx.controlflow.hints !126

; <label>:6524                                    ; preds = %6521
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6527 = fadd fast float %6526, %5833
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6533 = call float @dx.op.binary.f32(i32 35, float %6527, float 0.000000e+00)  ; FMax(a,b)
  %6534 = fadd fast float %6533, 0x3F10000000000000
  %6535 = fcmp fast oeq float %6532, 0.000000e+00
  br i1 %6535, label %6536, label %6603

; <label>:6536                                    ; preds = %6524
  %6537 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6539 = fmul fast float %6538, %5843
  %6540 = fmul fast float %6537, %5844
  %6541 = fadd fast float %6539, 5.000000e-01
  %6542 = call float @dx.op.unary.f32(i32 27, float %6541)  ; Round_ni(value)
  %6543 = fadd fast float %6540, 5.000000e-01
  %6544 = call float @dx.op.unary.f32(i32 27, float %6543)  ; Round_ni(value)
  %6545 = fsub fast float %6541, %6542
  %6546 = fsub fast float %6543, %6544
  %6547 = fadd fast float %6542, -5.000000e-01
  %6548 = fadd fast float %6544, -5.000000e-01
  %6549 = fmul fast float %6545, 2.000000e+00
  %6550 = fsub fast float 3.000000e+00, %6549
  %6551 = fadd fast float %6549, 1.000000e+00
  %6552 = fsub fast float 2.000000e+00, %6545
  %6553 = bitcast float %6550 to i32
  %6554 = sub nsw i32 2129859010, %6553
  %6555 = bitcast i32 %6554 to float
  %6556 = fmul fast float %6555, %6552
  %6557 = fadd fast float %6556, -1.000000e+00
  %6558 = bitcast float %6551 to i32
  %6559 = sub nsw i32 2129859010, %6558
  %6560 = bitcast i32 %6559 to float
  %6561 = fmul fast float %6560, %6545
  %6562 = fadd fast float %6561, 1.000000e+00
  %6563 = fmul fast float %6546, 2.000000e+00
  %6564 = fsub fast float 3.000000e+00, %6563
  %6565 = fadd fast float %6563, 1.000000e+00
  %6566 = fsub fast float 2.000000e+00, %6546
  %6567 = bitcast float %6564 to i32
  %6568 = sub nsw i32 2129859010, %6567
  %6569 = bitcast i32 %6568 to float
  %6570 = fmul fast float %6569, %6566
  %6571 = fadd fast float %6570, -1.000000e+00
  %6572 = bitcast float %6565 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6546
  %6576 = fadd fast float %6575, 1.000000e+00
  %6577 = fadd fast float %6557, %6547
  %6578 = fmul fast float %6577, %6529
  %6579 = fadd fast float %6571, %6548
  %6580 = fmul fast float %6579, %6530
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6578, float %6580, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 0
  %6583 = fmul fast float %6582, %6550
  %6584 = fadd fast float %6562, %6547
  %6585 = fmul fast float %6584, %6529
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6585, float %6580, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = fmul fast float %6587, %6551
  %6589 = fadd fast float %6576, %6548
  %6590 = fmul fast float %6589, %6530
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6578, float %6590, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = fmul fast float %6592, %6550
  %6594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6585, float %6590, float undef, float undef, i32 0, i32 0, i32 undef, float %6534)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6595 = extractvalue %dx.types.ResRet.f32 %6594, 0
  %6596 = fmul fast float %6595, %6551
  %6597 = fadd fast float %6596, %6593
  %6598 = fmul fast float %6597, %6565
  %6599 = fadd fast float %6588, %6583
  %6600 = fmul fast float %6599, %6564
  %6601 = fadd fast float %6600, %6598
  %6602 = fmul fast float %6601, 6.250000e-02
  br label %6688

; <label>:6603                                    ; preds = %6524
  %6604 = fmul fast float %271, 0x401921FB60000000
  %6605 = call float @dx.op.unary.f32(i32 13, float %6604)  ; Sin(value)
  %6606 = call float @dx.op.unary.f32(i32 12, float %6604)  ; Cos(value)
  %6607 = fsub fast float -0.000000e+00, %6605
  br label %6608

; <label>:6608                                    ; preds = %6657, %6603
  %6609 = phi float [ 0.000000e+00, %6603 ], [ %6652, %6657 ]
  %6610 = phi float [ 0.000000e+00, %6603 ], [ %6654, %6657 ]
  %6611 = phi i32 [ 0, %6603 ], [ %6658, %6657 ]
  %6612 = mul i32 %6611, 2
  %6613 = add i32 0, %6612
  %6614 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6613
  %6615 = load float, float* %6614, align 4
  %6616 = mul i32 %6611, 2
  %6617 = add i32 1, %6616
  %6618 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6617
  %6619 = load float, float* %6618, align 4
  %6620 = fmul fast float %6615, %6606
  %6621 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6607, float %6620)  ; FMad(a,b,c)
  %6622 = fmul fast float %6615, %6605
  %6623 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6606, float %6622)  ; FMad(a,b,c)
  %6624 = fmul fast float %6621, %6532
  %6625 = fmul fast float %6623, %6532
  %6626 = fadd fast float %6624, %5843
  %6627 = fadd fast float %6625, %5844
  %6628 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6626, float %6627, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6629 = extractvalue %dx.types.ResRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.ResRet.f32 %6628, 1
  %6631 = extractvalue %dx.types.ResRet.f32 %6628, 2
  %6632 = extractvalue %dx.types.ResRet.f32 %6628, 3
  %6633 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6629, float* %6633, align 4
  %6634 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6630, float* %6634, align 4
  %6635 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6631, float* %6635, align 4
  %6636 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6632, float* %6636, align 4
  %6637 = fsub fast float %6629, %6534
  %6638 = fcmp fast olt float %6637, 0.000000e+00
  %6639 = select i1 %6638, float 0.000000e+00, float 1.000000e+00
  %6640 = fadd fast float %6639, %6609
  %6641 = fmul fast float %6639, %6637
  %6642 = fadd fast float %6641, %6610
  br label %6643

; <label>:6643                                    ; preds = %6643, %6608
  %6644 = phi i32 [ 1, %6608 ], [ %6655, %6643 ]
  %6645 = phi float [ %6642, %6608 ], [ %6654, %6643 ]
  %6646 = phi float [ %6640, %6608 ], [ %6652, %6643 ]
  %6647 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6644
  %6648 = load float, float* %6647, align 4, !tbaa !122, !noalias !112
  %6649 = fsub fast float %6648, %6534
  %6650 = fcmp fast olt float %6649, 0.000000e+00
  %6651 = select i1 %6650, float 0.000000e+00, float 1.000000e+00
  %6652 = fadd fast float %6651, %6646
  %6653 = fmul fast float %6651, %6649
  %6654 = fadd fast float %6653, %6645
  %6655 = add nuw nsw i32 %6644, 1
  %6656 = icmp eq i32 %6655, 4
  br i1 %6656, label %6657, label %6643, !llvm.loop !124

; <label>:6657                                    ; preds = %6643
  %6658 = add nuw nsw i32 %6611, 1
  %6659 = icmp eq i32 %6658, 8
  br i1 %6659, label %6660, label %6608, !llvm.loop !125

; <label>:6660                                    ; preds = %6657
  %6661 = fdiv fast float 1.000000e+00, %6652
  %6662 = fmul fast float %6661, %6654
  %6663 = fdiv fast float 1.000000e+00, %6534
  %6664 = fmul fast float %6662, %6663
  %6665 = call float @dx.op.unary.f32(i32 7, float %6664)  ; Saturate(value)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6665, float 0.000000e+00)  ; FMax(a,b)
  %6667 = fmul fast float %6652, 3.125000e-02
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = fmul fast float %6668, 2.000000e+00
  %6670 = fadd fast float %6669, -1.000000e+00
  %6671 = fcmp fast ogt float %6670, 0.000000e+00
  %6672 = fcmp fast olt float %6670, 0.000000e+00
  %6673 = zext i1 %6671 to i32
  %6674 = zext i1 %6672 to i32
  %6675 = sub nsw i32 %6673, %6674
  %6676 = sitofp i32 %6675 to float
  %6677 = fmul fast float %6676, %6670
  %6678 = fsub fast float 1.000000e+00, %6677
  %6679 = fmul fast float %6678, %6678
  %6680 = fmul fast float %6679, %6678
  %6681 = fsub fast float %6678, %6680
  %6682 = fmul fast float %6681, %6666
  %6683 = fsub fast float 1.000000e+00, %6680
  %6684 = fsub fast float %6683, %6682
  %6685 = fmul fast float %6676, 5.000000e-01
  %6686 = fmul fast float %6685, %6684
  %6687 = fsub fast float 5.000000e-01, %6686
  br label %6688

; <label>:6688                                    ; preds = %6660, %6536, %6521
  %6689 = phi float [ 1.000000e+00, %6521 ], [ %6602, %6536 ], [ %6687, %6660 ]
  %6690 = fcmp fast ogt float %5949, 0.000000e+00
  br i1 %6690, label %6691, label %7009, !dx.controlflow.hints !127

; <label>:6691                                    ; preds = %6688
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 0
  %6694 = fadd fast float %6693, %5833
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 3
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6700 = call float @dx.op.binary.f32(i32 35, float %6694, float 0.000000e+00)  ; FMax(a,b)
  %6701 = fadd fast float %6700, 0x3F10000000000000
  %6702 = fcmp fast oeq float %6699, 0.000000e+00
  br i1 %5836, label %6703, label %6856, !dx.controlflow.hints !128

; <label>:6703                                    ; preds = %6691
  br i1 %6702, label %6704, label %6771

; <label>:6704                                    ; preds = %6703
  %6705 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6706 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6707 = fmul fast float %6706, %5825
  %6708 = fmul fast float %6705, %5829
  %6709 = fadd fast float %6707, 5.000000e-01
  %6710 = call float @dx.op.unary.f32(i32 27, float %6709)  ; Round_ni(value)
  %6711 = fadd fast float %6708, 5.000000e-01
  %6712 = call float @dx.op.unary.f32(i32 27, float %6711)  ; Round_ni(value)
  %6713 = fsub fast float %6709, %6710
  %6714 = fsub fast float %6711, %6712
  %6715 = fadd fast float %6710, -5.000000e-01
  %6716 = fadd fast float %6712, -5.000000e-01
  %6717 = fmul fast float %6713, 2.000000e+00
  %6718 = fsub fast float 3.000000e+00, %6717
  %6719 = fadd fast float %6717, 1.000000e+00
  %6720 = fsub fast float 2.000000e+00, %6713
  %6721 = bitcast float %6718 to i32
  %6722 = sub nsw i32 2129859010, %6721
  %6723 = bitcast i32 %6722 to float
  %6724 = fmul fast float %6723, %6720
  %6725 = fadd fast float %6724, -1.000000e+00
  %6726 = bitcast float %6719 to i32
  %6727 = sub nsw i32 2129859010, %6726
  %6728 = bitcast i32 %6727 to float
  %6729 = fmul fast float %6728, %6713
  %6730 = fadd fast float %6729, 1.000000e+00
  %6731 = fmul fast float %6714, 2.000000e+00
  %6732 = fsub fast float 3.000000e+00, %6731
  %6733 = fadd fast float %6731, 1.000000e+00
  %6734 = fsub fast float 2.000000e+00, %6714
  %6735 = bitcast float %6732 to i32
  %6736 = sub nsw i32 2129859010, %6735
  %6737 = bitcast i32 %6736 to float
  %6738 = fmul fast float %6737, %6734
  %6739 = fadd fast float %6738, -1.000000e+00
  %6740 = bitcast float %6733 to i32
  %6741 = sub nsw i32 2129859010, %6740
  %6742 = bitcast i32 %6741 to float
  %6743 = fmul fast float %6742, %6714
  %6744 = fadd fast float %6743, 1.000000e+00
  %6745 = fadd fast float %6725, %6715
  %6746 = fmul fast float %6745, %6696
  %6747 = fadd fast float %6739, %6716
  %6748 = fmul fast float %6747, %6697
  %6749 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6746, float %6748, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6750 = extractvalue %dx.types.ResRet.f32 %6749, 0
  %6751 = fmul fast float %6750, %6718
  %6752 = fadd fast float %6730, %6715
  %6753 = fmul fast float %6752, %6696
  %6754 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6753, float %6748, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6755 = extractvalue %dx.types.ResRet.f32 %6754, 0
  %6756 = fmul fast float %6755, %6719
  %6757 = fadd fast float %6744, %6716
  %6758 = fmul fast float %6757, %6697
  %6759 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6746, float %6758, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = fmul fast float %6760, %6718
  %6762 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6753, float %6758, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6763 = extractvalue %dx.types.ResRet.f32 %6762, 0
  %6764 = fmul fast float %6763, %6719
  %6765 = fadd fast float %6764, %6761
  %6766 = fmul fast float %6765, %6733
  %6767 = fadd fast float %6756, %6751
  %6768 = fmul fast float %6767, %6732
  %6769 = fadd fast float %6768, %6766
  %6770 = fmul fast float %6769, 6.250000e-02
  br label %7009

; <label>:6771                                    ; preds = %6703
  %6772 = fmul fast float %271, 0x401921FB60000000
  %6773 = call float @dx.op.unary.f32(i32 13, float %6772)  ; Sin(value)
  %6774 = call float @dx.op.unary.f32(i32 12, float %6772)  ; Cos(value)
  %6775 = fsub fast float -0.000000e+00, %6773
  br label %6776

; <label>:6776                                    ; preds = %6825, %6771
  %6777 = phi float [ 0.000000e+00, %6771 ], [ %6820, %6825 ]
  %6778 = phi float [ 0.000000e+00, %6771 ], [ %6822, %6825 ]
  %6779 = phi i32 [ 0, %6771 ], [ %6826, %6825 ]
  %6780 = mul i32 %6779, 2
  %6781 = add i32 0, %6780
  %6782 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6781
  %6783 = load float, float* %6782, align 4
  %6784 = mul i32 %6779, 2
  %6785 = add i32 1, %6784
  %6786 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6785
  %6787 = load float, float* %6786, align 4
  %6788 = fmul fast float %6783, %6774
  %6789 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6775, float %6788)  ; FMad(a,b,c)
  %6790 = fmul fast float %6783, %6773
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %6787, float %6774, float %6790)  ; FMad(a,b,c)
  %6792 = fmul fast float %6789, %6699
  %6793 = fmul fast float %6791, %6699
  %6794 = fadd fast float %6792, %5825
  %6795 = fadd fast float %6793, %5829
  %6796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6794, float %6795, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6797 = extractvalue %dx.types.ResRet.f32 %6796, 0
  %6798 = extractvalue %dx.types.ResRet.f32 %6796, 1
  %6799 = extractvalue %dx.types.ResRet.f32 %6796, 2
  %6800 = extractvalue %dx.types.ResRet.f32 %6796, 3
  %6801 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6797, float* %6801, align 4
  %6802 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6798, float* %6802, align 4
  %6803 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6799, float* %6803, align 4
  %6804 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6800, float* %6804, align 4
  %6805 = fsub fast float %6797, %6701
  %6806 = fcmp fast olt float %6805, 0.000000e+00
  %6807 = select i1 %6806, float 0.000000e+00, float 1.000000e+00
  %6808 = fadd fast float %6807, %6777
  %6809 = fmul fast float %6807, %6805
  %6810 = fadd fast float %6809, %6778
  br label %6811

; <label>:6811                                    ; preds = %6811, %6776
  %6812 = phi i32 [ 1, %6776 ], [ %6823, %6811 ]
  %6813 = phi float [ %6810, %6776 ], [ %6822, %6811 ]
  %6814 = phi float [ %6808, %6776 ], [ %6820, %6811 ]
  %6815 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6812
  %6816 = load float, float* %6815, align 4, !tbaa !122, !noalias !112
  %6817 = fsub fast float %6816, %6701
  %6818 = fcmp fast olt float %6817, 0.000000e+00
  %6819 = select i1 %6818, float 0.000000e+00, float 1.000000e+00
  %6820 = fadd fast float %6819, %6814
  %6821 = fmul fast float %6819, %6817
  %6822 = fadd fast float %6821, %6813
  %6823 = add nuw nsw i32 %6812, 1
  %6824 = icmp eq i32 %6823, 4
  br i1 %6824, label %6825, label %6811, !llvm.loop !124

; <label>:6825                                    ; preds = %6811
  %6826 = add nuw nsw i32 %6779, 1
  %6827 = icmp eq i32 %6826, 8
  br i1 %6827, label %6828, label %6776, !llvm.loop !125

; <label>:6828                                    ; preds = %6825
  %6829 = fdiv fast float 1.000000e+00, %6820
  %6830 = fmul fast float %6829, %6822
  %6831 = fdiv fast float 1.000000e+00, %6701
  %6832 = fmul fast float %6830, %6831
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6834 = call float @dx.op.binary.f32(i32 35, float %6833, float 0.000000e+00)  ; FMax(a,b)
  %6835 = fmul fast float %6820, 3.125000e-02
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = fmul fast float %6836, 2.000000e+00
  %6838 = fadd fast float %6837, -1.000000e+00
  %6839 = fcmp fast ogt float %6838, 0.000000e+00
  %6840 = fcmp fast olt float %6838, 0.000000e+00
  %6841 = zext i1 %6839 to i32
  %6842 = zext i1 %6840 to i32
  %6843 = sub nsw i32 %6841, %6842
  %6844 = sitofp i32 %6843 to float
  %6845 = fmul fast float %6844, %6838
  %6846 = fsub fast float 1.000000e+00, %6845
  %6847 = fmul fast float %6846, %6846
  %6848 = fmul fast float %6847, %6846
  %6849 = fsub fast float %6846, %6848
  %6850 = fmul fast float %6849, %6834
  %6851 = fsub fast float 1.000000e+00, %6848
  %6852 = fsub fast float %6851, %6850
  %6853 = fmul fast float %6844, 5.000000e-01
  %6854 = fmul fast float %6853, %6852
  %6855 = fsub fast float 5.000000e-01, %6854
  br label %7009

; <label>:6856                                    ; preds = %6691
  br i1 %6702, label %6857, label %6924

; <label>:6857                                    ; preds = %6856
  %6858 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6860 = fmul fast float %6859, %5825
  %6861 = fmul fast float %6858, %5829
  %6862 = fadd fast float %6860, 5.000000e-01
  %6863 = call float @dx.op.unary.f32(i32 27, float %6862)  ; Round_ni(value)
  %6864 = fadd fast float %6861, 5.000000e-01
  %6865 = call float @dx.op.unary.f32(i32 27, float %6864)  ; Round_ni(value)
  %6866 = fsub fast float %6862, %6863
  %6867 = fsub fast float %6864, %6865
  %6868 = fadd fast float %6863, -5.000000e-01
  %6869 = fadd fast float %6865, -5.000000e-01
  %6870 = fmul fast float %6866, 2.000000e+00
  %6871 = fsub fast float 3.000000e+00, %6870
  %6872 = fadd fast float %6870, 1.000000e+00
  %6873 = fsub fast float 2.000000e+00, %6866
  %6874 = bitcast float %6871 to i32
  %6875 = sub nsw i32 2129859010, %6874
  %6876 = bitcast i32 %6875 to float
  %6877 = fmul fast float %6876, %6873
  %6878 = fadd fast float %6877, -1.000000e+00
  %6879 = bitcast float %6872 to i32
  %6880 = sub nsw i32 2129859010, %6879
  %6881 = bitcast i32 %6880 to float
  %6882 = fmul fast float %6881, %6866
  %6883 = fadd fast float %6882, 1.000000e+00
  %6884 = fmul fast float %6867, 2.000000e+00
  %6885 = fsub fast float 3.000000e+00, %6884
  %6886 = fadd fast float %6884, 1.000000e+00
  %6887 = fsub fast float 2.000000e+00, %6867
  %6888 = bitcast float %6885 to i32
  %6889 = sub nsw i32 2129859010, %6888
  %6890 = bitcast i32 %6889 to float
  %6891 = fmul fast float %6890, %6887
  %6892 = fadd fast float %6891, -1.000000e+00
  %6893 = bitcast float %6886 to i32
  %6894 = sub nsw i32 2129859010, %6893
  %6895 = bitcast i32 %6894 to float
  %6896 = fmul fast float %6895, %6867
  %6897 = fadd fast float %6896, 1.000000e+00
  %6898 = fadd fast float %6878, %6868
  %6899 = fmul fast float %6898, %6696
  %6900 = fadd fast float %6892, %6869
  %6901 = fmul fast float %6900, %6697
  %6902 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6899, float %6901, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = fmul fast float %6903, %6871
  %6905 = fadd fast float %6883, %6868
  %6906 = fmul fast float %6905, %6696
  %6907 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6906, float %6901, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6908 = extractvalue %dx.types.ResRet.f32 %6907, 0
  %6909 = fmul fast float %6908, %6872
  %6910 = fadd fast float %6897, %6869
  %6911 = fmul fast float %6910, %6697
  %6912 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6899, float %6911, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = fmul fast float %6913, %6871
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6906, float %6911, float undef, float undef, i32 0, i32 0, i32 undef, float %6701)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = fmul fast float %6916, %6872
  %6918 = fadd fast float %6917, %6914
  %6919 = fmul fast float %6918, %6886
  %6920 = fadd fast float %6909, %6904
  %6921 = fmul fast float %6920, %6885
  %6922 = fadd fast float %6921, %6919
  %6923 = fmul fast float %6922, 6.250000e-02
  br label %7009

; <label>:6924                                    ; preds = %6856
  %6925 = fmul fast float %271, 0x401921FB60000000
  %6926 = call float @dx.op.unary.f32(i32 13, float %6925)  ; Sin(value)
  %6927 = call float @dx.op.unary.f32(i32 12, float %6925)  ; Cos(value)
  %6928 = fsub fast float -0.000000e+00, %6926
  br label %6929

; <label>:6929                                    ; preds = %6978, %6924
  %6930 = phi float [ 0.000000e+00, %6924 ], [ %6973, %6978 ]
  %6931 = phi float [ 0.000000e+00, %6924 ], [ %6975, %6978 ]
  %6932 = phi i32 [ 0, %6924 ], [ %6979, %6978 ]
  %6933 = mul i32 %6932, 2
  %6934 = add i32 0, %6933
  %6935 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6934
  %6936 = load float, float* %6935, align 4
  %6937 = mul i32 %6932, 2
  %6938 = add i32 1, %6937
  %6939 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6938
  %6940 = load float, float* %6939, align 4
  %6941 = fmul fast float %6936, %6927
  %6942 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6928, float %6941)  ; FMad(a,b,c)
  %6943 = fmul fast float %6936, %6926
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6940, float %6927, float %6943)  ; FMad(a,b,c)
  %6945 = fmul fast float %6942, %6699
  %6946 = fmul fast float %6944, %6699
  %6947 = fadd fast float %6945, %5825
  %6948 = fadd fast float %6946, %5829
  %6949 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6947, float %6948, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.ResRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.ResRet.f32 %6949, 2
  %6953 = extractvalue %dx.types.ResRet.f32 %6949, 3
  %6954 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6950, float* %6954, align 4
  %6955 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6951, float* %6955, align 4
  %6956 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6952, float* %6956, align 4
  %6957 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6953, float* %6957, align 4
  %6958 = fsub fast float %6950, %6701
  %6959 = fcmp fast olt float %6958, 0.000000e+00
  %6960 = select i1 %6959, float 0.000000e+00, float 1.000000e+00
  %6961 = fadd fast float %6960, %6930
  %6962 = fmul fast float %6960, %6958
  %6963 = fadd fast float %6962, %6931
  br label %6964

; <label>:6964                                    ; preds = %6964, %6929
  %6965 = phi i32 [ 1, %6929 ], [ %6976, %6964 ]
  %6966 = phi float [ %6963, %6929 ], [ %6975, %6964 ]
  %6967 = phi float [ %6961, %6929 ], [ %6973, %6964 ]
  %6968 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6965
  %6969 = load float, float* %6968, align 4, !tbaa !122, !noalias !112
  %6970 = fsub fast float %6969, %6701
  %6971 = fcmp fast olt float %6970, 0.000000e+00
  %6972 = select i1 %6971, float 0.000000e+00, float 1.000000e+00
  %6973 = fadd fast float %6972, %6967
  %6974 = fmul fast float %6972, %6970
  %6975 = fadd fast float %6974, %6966
  %6976 = add nuw nsw i32 %6965, 1
  %6977 = icmp eq i32 %6976, 4
  br i1 %6977, label %6978, label %6964, !llvm.loop !124

; <label>:6978                                    ; preds = %6964
  %6979 = add nuw nsw i32 %6932, 1
  %6980 = icmp eq i32 %6979, 8
  br i1 %6980, label %6981, label %6929, !llvm.loop !125

; <label>:6981                                    ; preds = %6978
  %6982 = fdiv fast float 1.000000e+00, %6973
  %6983 = fmul fast float %6982, %6975
  %6984 = fdiv fast float 1.000000e+00, %6701
  %6985 = fmul fast float %6983, %6984
  %6986 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6987 = call float @dx.op.binary.f32(i32 35, float %6986, float 0.000000e+00)  ; FMax(a,b)
  %6988 = fmul fast float %6973, 3.125000e-02
  %6989 = call float @dx.op.unary.f32(i32 7, float %6988)  ; Saturate(value)
  %6990 = fmul fast float %6989, 2.000000e+00
  %6991 = fadd fast float %6990, -1.000000e+00
  %6992 = fcmp fast ogt float %6991, 0.000000e+00
  %6993 = fcmp fast olt float %6991, 0.000000e+00
  %6994 = zext i1 %6992 to i32
  %6995 = zext i1 %6993 to i32
  %6996 = sub nsw i32 %6994, %6995
  %6997 = sitofp i32 %6996 to float
  %6998 = fmul fast float %6997, %6991
  %6999 = fsub fast float 1.000000e+00, %6998
  %7000 = fmul fast float %6999, %6999
  %7001 = fmul fast float %7000, %6999
  %7002 = fsub fast float %6999, %7001
  %7003 = fmul fast float %7002, %6987
  %7004 = fsub fast float 1.000000e+00, %7001
  %7005 = fsub fast float %7004, %7003
  %7006 = fmul fast float %6997, 5.000000e-01
  %7007 = fmul fast float %7006, %7005
  %7008 = fsub fast float 5.000000e-01, %7007
  br label %7009

; <label>:7009                                    ; preds = %6981, %6857, %6828, %6704, %6688
  %7010 = phi float [ 1.000000e+00, %6688 ], [ %6770, %6704 ], [ %6855, %6828 ], [ %6923, %6857 ], [ %7008, %6981 ]
  %7011 = fsub fast float %6522, %6355
  %7012 = fmul fast float %7011, %5922
  %7013 = fadd fast float %7012, %6355
  %7014 = fsub fast float %6689, %7013
  %7015 = fmul fast float %7014, %5921
  %7016 = fadd fast float %7015, %7013
  %7017 = fsub fast float %7010, %7016
  %7018 = fmul fast float %7017, %5949
  %7019 = fadd fast float %7018, %7016
  %7020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7021 = extractvalue %dx.types.CBufRet.f32 %7020, 2
  %7022 = fcmp fast ogt float %7021, 0.000000e+00
  br i1 %7022, label %7023, label %7063, !dx.controlflow.hints !129

; <label>:7023                                    ; preds = %7009
  %7024 = fcmp fast ugt float %7021, 0.000000e+00
  br i1 %7024, label %7025, label %7060

; <label>:7025                                    ; preds = %7023
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7030 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 0
  %7033 = extractvalue %dx.types.CBufRet.f32 %7031, 1
  %7034 = extractvalue %dx.types.CBufRet.f32 %7031, 2
  %7035 = extractvalue %dx.types.CBufRet.f32 %7031, 3
  %7036 = extractvalue %dx.types.CBufRet.f32 %7020, 0
  %7037 = extractvalue %dx.types.CBufRet.f32 %7020, 1
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = fadd fast float %7039, %5802
  %7043 = fadd fast float %7040, %5803
  %7044 = fadd fast float %7041, %5804
  %7045 = fmul fast float %7042, %7027
  %7046 = call float @dx.op.tertiary.f32(i32 46, float %7028, float %7043, float %7045)  ; FMad(a,b,c)
  %7047 = call float @dx.op.tertiary.f32(i32 46, float %7029, float %7044, float %7046)  ; FMad(a,b,c)
  %7048 = fadd fast float %7047, %7030
  %7049 = fmul fast float %7042, %7032
  %7050 = call float @dx.op.tertiary.f32(i32 46, float %7033, float %7043, float %7049)  ; FMad(a,b,c)
  %7051 = call float @dx.op.tertiary.f32(i32 46, float %7034, float %7044, float %7050)  ; FMad(a,b,c)
  %7052 = fadd fast float %7051, %7035
  %7053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7048, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = fmul fast float %7054, %7037
  %7056 = fadd fast float %7055, %7036
  %7057 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7058 = fmul fast float %7057, %7021
  %7059 = fsub fast float 1.000000e+00, %7058
  br label %7060

; <label>:7060                                    ; preds = %7025, %7023
  %7061 = phi float [ %7059, %7025 ], [ 1.000000e+00, %7023 ]
  %7062 = fmul fast float %7061, %7019
  br label %7063

; <label>:7063                                    ; preds = %7060, %7009, %5782
  %7064 = phi float [ 1.000000e+00, %5782 ], [ %7062, %7060 ], [ %7019, %7009 ]
  %7065 = call float @dx.op.binary.f32(i32 36, float %7064, float %7064)  ; FMin(a,b)
  %7066 = call float @dx.op.binary.f32(i32 36, float %7064, float %7065)  ; FMin(a,b)
  %7067 = fcmp fast ogt float %7066, 0.000000e+00
  br i1 %7067, label %7068, label %7233, !dx.controlflow.hints !130

; <label>:7068                                    ; preds = %7063
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.CBufRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.CBufRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.CBufRet.f32 %7074, 3
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 0
  %7081 = extractvalue %dx.types.CBufRet.f32 %7079, 1
  %7082 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7083 = extractvalue %dx.types.CBufRet.f32 %7079, 3
  %7084 = fmul fast float %7070, %5802
  %7085 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %7071, float %7084)  ; FMad(a,b,c)
  %7086 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %7072, float %7085)  ; FMad(a,b,c)
  %7087 = fadd fast float %7086, %7073
  %7088 = fmul fast float %7075, %5802
  %7089 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %7076, float %7088)  ; FMad(a,b,c)
  %7090 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %7077, float %7089)  ; FMad(a,b,c)
  %7091 = fadd fast float %7090, %7078
  %7092 = fmul fast float %7080, %5802
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %5803, float %7081, float %7092)  ; FMad(a,b,c)
  %7094 = call float @dx.op.tertiary.f32(i32 46, float %5804, float %7082, float %7093)  ; FMad(a,b,c)
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 3
  %7099 = fmul fast float %7098, %7087
  %7100 = fmul fast float %7098, %7091
  %7101 = fadd fast float %7099, %7096
  %7102 = fadd fast float %7100, %7097
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = fsub fast float %7101, %7104
  %7107 = fsub fast float %7102, %7105
  %7108 = fcmp fast olt float %7106, 0.000000e+00
  %7109 = fcmp fast olt float %7107, 0.000000e+00
  %7110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7111 = extractvalue %dx.types.CBufRet.f32 %7110, 0
  %7112 = extractvalue %dx.types.CBufRet.f32 %7110, 1
  %7113 = extractvalue %dx.types.CBufRet.f32 %7110, 2
  %7114 = extractvalue %dx.types.CBufRet.f32 %7110, 3
  %7115 = select i1 %7108, float %7111, float %7113
  %7116 = select i1 %7109, float %7112, float %7114
  %7117 = fmul fast float %7115, %7106
  %7118 = fmul fast float %7116, %7107
  %7119 = call float @dx.op.unary.f32(i32 6, float %7117)  ; FAbs(value)
  %7120 = call float @dx.op.unary.f32(i32 6, float %7118)  ; FAbs(value)
  %7121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7122 = extractvalue %dx.types.CBufRet.f32 %7121, 0
  %7123 = call float @dx.op.binary.f32(i32 35, float %7119, float %7120)  ; FMax(a,b)
  %7124 = fsub fast float %7122, %7123
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = fcmp fast ogt float %7125, 0.000000e+00
  br i1 %7126, label %7127, label %7168, !dx.controlflow.hints !131

; <label>:7127                                    ; preds = %7068
  %7128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7101, float %7102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 1
  %7130 = fcmp fast ogt float %7129, 0.000000e+00
  br i1 %7130, label %7131, label %7163

; <label>:7131                                    ; preds = %7127
  %7132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7101, float %7102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7133 = extractvalue %dx.types.ResRet.f32 %7132, 0
  %7134 = extractvalue %dx.types.ResRet.f32 %7132, 1
  %7135 = extractvalue %dx.types.ResRet.f32 %7132, 2
  %7136 = extractvalue %dx.types.ResRet.f32 %7132, 3
  %7137 = fsub fast float 1.000000e+00, %7083
  %7138 = fsub fast float %7137, %7094
  %7139 = fmul fast float %7138, 0x400921FB60000000
  %7140 = fadd fast float %7139, 0x3FF921FB60000000
  %7141 = call float @dx.op.unary.f32(i32 13, float %7140)  ; Sin(value)
  %7142 = fadd fast float %7141, -1.000000e+00
  %7143 = fmul fast float %7142, 0x3FD45F3060000000
  %7144 = fmul fast float %7138, 0x401921FB60000000
  %7145 = fadd fast float %7144, 0x400921FB60000000
  %7146 = call float @dx.op.unary.f32(i32 13, float %7145)  ; Sin(value)
  %7147 = fadd fast float %7146, 0x3E7777A5C0000000
  %7148 = fmul fast float %7147, 0x3FC45F3060000000
  %7149 = fmul fast float %7138, 0x4022D97C80000000
  %7150 = fadd fast float %7149, 0x4012D97C80000000
  %7151 = call float @dx.op.unary.f32(i32 13, float %7150)  ; Sin(value)
  %7152 = fadd fast float %7151, 1.000000e+00
  %7153 = fmul fast float %7152, 0x3FBB2995E0000000
  %7154 = fmul fast float %7138, 0x402921FB60000000
  %7155 = fadd fast float %7154, 0x401921FB60000000
  %7156 = call float @dx.op.unary.f32(i32 13, float %7155)  ; Sin(value)
  %7157 = fadd fast float %7156, 0xBE8777A5C0000000
  %7158 = fmul fast float %7157, 0x3FB45F3060000000
  %7159 = call float @dx.op.dot4.f32(i32 56, float %7133, float %7134, float %7135, float %7136, float %7143, float %7148, float %7153, float %7158)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7160 = fmul fast float %7159, 0xBFF7154760000000
  %7161 = call float @dx.op.unary.f32(i32 21, float %7160)  ; Exp(value)
  %7162 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  br label %7163

; <label>:7163                                    ; preds = %7131, %7127
  %7164 = phi float [ %7162, %7131 ], [ 1.000000e+00, %7127 ]
  %7165 = fadd fast float %7164, -1.000000e+00
  %7166 = fmul fast float %7165, %7125
  %7167 = fadd fast float %7166, 1.000000e+00
  br label %7168

; <label>:7168                                    ; preds = %7163, %7068
  %7169 = phi float [ %7167, %7163 ], [ 1.000000e+00, %7068 ]
  %7170 = fmul fast float %7169, %7064
  %7171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7172 = extractvalue %dx.types.CBufRet.f32 %7171, 0
  %7173 = extractvalue %dx.types.CBufRet.f32 %7171, 1
  %7174 = extractvalue %dx.types.CBufRet.f32 %7171, 2
  %7175 = fadd fast float %7172, %201
  %7176 = fadd fast float %7173, %202
  %7177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7178 = extractvalue %dx.types.CBufRet.f32 %7177, 1
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7182 = extractvalue %dx.types.CBufRet.f32 %7179, 2
  %7183 = fsub fast float -0.000000e+00, %7175
  %7184 = fsub fast float -0.000000e+00, %7176
  %7185 = fsub fast float %5062, %7174
  %7186 = fadd fast float %7185, %7178
  %7187 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7183, float %7184, float %7186)  ; Dot3(ax,ay,az,bx,by,bz)
  %7188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7180, float %7181, float %7182)  ; Dot3(ax,ay,az,bx,by,bz)
  %7189 = fdiv fast float 1.000000e+00, %7188
  %7190 = fmul fast float %7189, %7187
  %7191 = fmul fast float %7180, %7190
  %7192 = fmul fast float %7181, %7190
  %7193 = fadd fast float %7191, %7175
  %7194 = fadd fast float %7192, %7176
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7198 = fsub fast float %7193, %7196
  %7199 = fsub fast float %7194, %7197
  %7200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7201 = extractvalue %dx.types.CBufRet.f32 %7200, 2
  %7202 = extractvalue %dx.types.CBufRet.f32 %7200, 3
  %7203 = fmul fast float %7198, %7201
  %7204 = fmul fast float %7199, %7202
  %7205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7206 = extractvalue %dx.types.CBufRet.i32 %7205, 3
  %7207 = icmp eq i32 %7206, 0
  br i1 %7207, label %7213, label %7208

; <label>:7208                                    ; preds = %7168
  %7209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7203, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.ResRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.ResRet.f32 %7209, 2
  br label %7218

; <label>:7213                                    ; preds = %7168
  %7214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7203, float %7204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7215 = extractvalue %dx.types.ResRet.f32 %7214, 0
  %7216 = extractvalue %dx.types.ResRet.f32 %7214, 1
  %7217 = extractvalue %dx.types.ResRet.f32 %7214, 2
  br label %7218

; <label>:7218                                    ; preds = %7213, %7208
  %7219 = phi float [ %7210, %7208 ], [ %7215, %7213 ]
  %7220 = phi float [ %7211, %7208 ], [ %7216, %7213 ]
  %7221 = phi float [ %7212, %7208 ], [ %7217, %7213 ]
  %7222 = extractvalue %dx.types.CBufRet.f32 %7177, 2
  %7223 = fmul fast float %7222, %7219
  %7224 = extractvalue %dx.types.CBufRet.f32 %7177, 0
  %7225 = fsub fast float %7190, %7224
  %7226 = fsub fast float %7225, %7223
  %7227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7226)  ; FMax(a,b)
  %7228 = fmul fast float %7227, %7220
  %7229 = call float @dx.op.binary.f32(i32 36, float %7221, float %7228)  ; FMin(a,b)
  %7230 = fmul fast float %7229, 0xBFF7154760000000
  %7231 = call float @dx.op.unary.f32(i32 21, float %7230)  ; Exp(value)
  %7232 = fmul fast float %7170, %7231
  br label %7233

; <label>:7233                                    ; preds = %7218, %7063
  %7234 = phi float [ %7232, %7218 ], [ %7064, %7063 ]
  %7235 = call float @dx.op.binary.f32(i32 36, float %7234, float %7234)  ; FMin(a,b)
  %7236 = call float @dx.op.binary.f32(i32 36, float %7234, float %7235)  ; FMin(a,b)
  %7237 = fcmp fast ogt float %7236, 0.000000e+00
  br i1 %7237, label %7238, label %7485, !dx.controlflow.hints !132

; <label>:7238                                    ; preds = %7233
  %7239 = fmul fast float %7234, %5794
  %7240 = fmul fast float %7234, %5795
  %7241 = fmul fast float %7234, %5796
  %7242 = fsub fast float %203, %4261
  %7243 = fcmp fast ogt float %7242, 0.000000e+00
  %7244 = fmul fast float %5783, 5.120000e+02
  %7245 = fmul fast float %5784, 5.120000e+02
  %7246 = fmul fast float %5785, 5.120000e+02
  %7247 = fadd fast float %7246, %203
  %7248 = fsub fast float %4261, %7247
  %7249 = fmul fast float %7248, 2.000000e+00
  %7250 = fadd fast float %7249, %7247
  %7251 = select i1 %7243, float %7250, float %7247
  %7252 = fsub fast float %7251, %203
  %7253 = call float @dx.op.dot3.f32(i32 55, float %7244, float %7245, float %7252, float %7244, float %7245, float %7252)  ; Dot3(ax,ay,az,bx,by,bz)
  %7254 = call float @dx.op.unary.f32(i32 25, float %7253)  ; Rsqrt(value)
  %7255 = fmul fast float %7254, %7244
  %7256 = fmul fast float %7254, %7245
  %7257 = fmul fast float %7254, %7252
  %7258 = fsub fast float %4261, %203
  %7259 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7258)  ; Dot3(ax,ay,az,bx,by,bz)
  %7260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7255, float %7256, float %7257)  ; Dot3(ax,ay,az,bx,by,bz)
  %7261 = fdiv fast float 1.000000e+00, %7260
  %7262 = fmul fast float %7261, %7259
  %7263 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7242, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7264 = fcmp fast ogt float %7263, 0.000000e+00
  %7265 = fcmp fast olt float %7263, 0.000000e+00
  %7266 = zext i1 %7264 to i32
  %7267 = zext i1 %7265 to i32
  %7268 = sub nsw i32 %7266, %7267
  %7269 = sitofp i32 %7268 to float
  %7270 = fsub fast float %7251, %4261
  %7271 = call float @dx.op.dot3.f32(i32 55, float %7244, float %7245, float %7270, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7272 = fcmp fast ogt float %7271, 0.000000e+00
  %7273 = fcmp fast olt float %7271, 0.000000e+00
  %7274 = zext i1 %7272 to i32
  %7275 = zext i1 %7273 to i32
  %7276 = sub nsw i32 %7274, %7275
  %7277 = sitofp i32 %7276 to float
  %7278 = fcmp fast une float %7269, %7277
  br i1 %7278, label %7279, label %7289

; <label>:7279                                    ; preds = %7238
  %7280 = fmul fast float %7262, %7257
  %7281 = fmul fast float %7262, %7256
  %7282 = fmul fast float %7262, %7255
  %7283 = fmul fast float %7282, %7282
  %7284 = fmul fast float %7281, %7281
  %7285 = fadd fast float %7283, %7284
  %7286 = fmul fast float %7280, %7280
  %7287 = fadd fast float %7285, %7286
  %7288 = call float @dx.op.unary.f32(i32 24, float %7287)  ; Sqrt(value)
  br label %7299

; <label>:7289                                    ; preds = %7238
  %7290 = icmp slt i32 %7268, 0
  br i1 %7290, label %7291, label %7299

; <label>:7291                                    ; preds = %7289
  %7292 = fsub fast float %203, %7251
  %7293 = fmul fast float %7244, %7244
  %7294 = fmul fast float %7245, %7245
  %7295 = fadd fast float %7293, %7294
  %7296 = fmul fast float %7292, %7292
  %7297 = fadd fast float %7295, %7296
  %7298 = call float @dx.op.unary.f32(i32 24, float %7297)  ; Sqrt(value)
  br label %7299

; <label>:7299                                    ; preds = %7291, %7289, %7279
  %7300 = phi float [ %7288, %7279 ], [ %7298, %7291 ], [ 0.000000e+00, %7289 ]
  %7301 = fsub fast float -0.000000e+00, %7300
  %7302 = select i1 %7243, float -0.000000e+00, float %7301
  %7303 = fmul fast float %4258, 0x3FF7154760000000
  %7304 = fmul fast float %7303, %7302
  %7305 = fmul fast float %4259, 0x3FF7154760000000
  %7306 = fmul fast float %7305, %7302
  %7307 = fmul fast float %4260, 0x3FF7154760000000
  %7308 = fmul fast float %7307, %7302
  %7309 = call float @dx.op.unary.f32(i32 21, float %7304)  ; Exp(value)
  %7310 = call float @dx.op.unary.f32(i32 21, float %7306)  ; Exp(value)
  %7311 = call float @dx.op.unary.f32(i32 21, float %7308)  ; Exp(value)
  %7312 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7313 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7314 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7315 = fmul fast float %7239, %7312
  %7316 = fmul fast float %7240, %7313
  %7317 = fmul fast float %7241, %7314
  %7318 = fsub fast float %5783, %5050
  %7319 = fsub fast float %5784, %5049
  %7320 = fsub fast float %5785, %5048
  %7321 = call float @dx.op.dot3.f32(i32 55, float %7318, float %7319, float %7320, float %7318, float %7319, float %7320)  ; Dot3(ax,ay,az,bx,by,bz)
  %7322 = call float @dx.op.unary.f32(i32 25, float %7321)  ; Rsqrt(value)
  %7323 = fmul fast float %7322, %7318
  %7324 = fmul fast float %7322, %7319
  %7325 = fmul fast float %7322, %7320
  %7326 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %7327 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5046, float %5045, float %7323, float %7324, float %7325)  ; Dot3(ax,ay,az,bx,by,bz)
  %7328 = call float @dx.op.unary.f32(i32 7, float %7326)  ; Saturate(value)
  %7329 = fmul fast float %7328, %7328
  %7330 = fmul fast float %7329, %5090
  %7331 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7332 = fmul fast float %7331, %7328
  %7333 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %7323, float %7324, float %7325)  ; Dot3(ax,ay,az,bx,by,bz)
  %7334 = fmul fast float %7333, %7333
  %7335 = call float @dx.op.unary.f32(i32 6, float %7326)  ; FAbs(value)
  %7336 = fsub fast float 1.000000e+00, %5083
  %7337 = fmul fast float %5065, %5065
  %7338 = fmul fast float %7337, %7336
  %7339 = fadd fast float %7338, %5083
  %7340 = bitcast float %7339 to i32
  %7341 = ashr i32 %7340, 1
  %7342 = add nsw i32 %7341, 532487669
  %7343 = bitcast i32 %7342 to float
  %7344 = fadd fast float %7343, %5065
  %7345 = fmul fast float %5083, %7334
  %7346 = fsub fast float 1.000000e+00, %7334
  %7347 = fadd fast float %7346, %7345
  %7348 = fmul fast float %7335, %7335
  %7349 = fmul fast float %7348, %7336
  %7350 = fadd fast float %7349, %5083
  %7351 = bitcast float %7350 to i32
  %7352 = ashr i32 %7351, 1
  %7353 = add nsw i32 %7352, 532487669
  %7354 = bitcast i32 %7353 to float
  %7355 = fadd fast float %7354, %7335
  %7356 = fmul fast float %7347, %7347
  %7357 = fmul fast float %7356, %7344
  %7358 = fmul fast float %7357, %7355
  %7359 = fdiv fast float 0x3FF0A00000000000, %7358
  %7360 = fmul fast float %7359, %5083
  %7361 = call float @dx.op.unary.f32(i32 6, float %7327)  ; FAbs(value)
  %7362 = fsub fast float 1.000000e+00, %7361
  %7363 = bitcast float %7362 to i32
  %7364 = sitofp i32 %7363 to float
  %7365 = fmul fast float %7364, 5.000000e+00
  %7366 = fadd fast float %7365, 0xC1EFBF8940000000
  %7367 = fptosi float %7366 to i32
  %7368 = bitcast i32 %7367 to float
  %7369 = fsub fast float 1.000000e+00, %5051
  %7370 = fsub fast float 1.000000e+00, %5052
  %7371 = fsub fast float 1.000000e+00, %5063
  %7372 = fmul fast float %7368, %7369
  %7373 = fmul fast float %7368, %7370
  %7374 = fmul fast float %7368, %7371
  %7375 = fadd fast float %7372, %5051
  %7376 = fadd fast float %7373, %5052
  %7377 = fadd fast float %7374, %5063
  br i1 %5202, label %7378, label %7401

; <label>:7378                                    ; preds = %7299
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3856, float %7361, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.ResRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.ResRet.f32 %7379, 2
  %7383 = fadd fast float %7380, -5.000000e-01
  %7384 = fadd fast float %7381, -5.000000e-01
  %7385 = fadd fast float %7382, -5.000000e-01
  %7386 = fmul fast float %5051, 4.000000e+00
  %7387 = fmul fast float %7386, %7369
  %7388 = fmul fast float %7387, %7383
  %7389 = fmul fast float %5052, 4.000000e+00
  %7390 = fmul fast float %7389, %7370
  %7391 = fmul fast float %7390, %7384
  %7392 = fmul fast float %5063, 4.000000e+00
  %7393 = fmul fast float %7392, %7371
  %7394 = fmul fast float %7393, %7385
  %7395 = fadd fast float %7388, %7375
  %7396 = fadd fast float %7391, %7376
  %7397 = fadd fast float %7394, %7377
  %7398 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7399 = call float @dx.op.unary.f32(i32 7, float %7396)  ; Saturate(value)
  %7400 = call float @dx.op.unary.f32(i32 7, float %7397)  ; Saturate(value)
  br label %7401

; <label>:7401                                    ; preds = %7378, %7299
  %7402 = phi float [ %7398, %7378 ], [ %7375, %7299 ]
  %7403 = phi float [ %7399, %7378 ], [ %7376, %7299 ]
  %7404 = phi float [ %7400, %7378 ], [ %7377, %7299 ]
  %7405 = fmul fast float %7326, 9.843750e-01
  %7406 = fadd fast float %7405, 7.812500e-03
  %7407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7406, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7408 = extractvalue %dx.types.ResRet.f32 %7407, 2
  %7409 = extractvalue %dx.types.ResRet.f32 %7407, 3
  %7410 = fmul fast float %7408, %5051
  %7411 = fmul fast float %7408, %5052
  %7412 = fmul fast float %7408, %5063
  %7413 = fadd fast float %7410, %7409
  %7414 = fadd fast float %7411, %7409
  %7415 = fadd fast float %7412, %7409
  br i1 %5202, label %7416, label %7439

; <label>:7416                                    ; preds = %7401
  %7417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3856, float %7326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7418 = extractvalue %dx.types.ResRet.f32 %7417, 0
  %7419 = extractvalue %dx.types.ResRet.f32 %7417, 1
  %7420 = extractvalue %dx.types.ResRet.f32 %7417, 2
  %7421 = fadd fast float %7418, -5.000000e-01
  %7422 = fadd fast float %7419, -5.000000e-01
  %7423 = fadd fast float %7420, -5.000000e-01
  %7424 = fmul fast float %5051, 4.000000e+00
  %7425 = fmul fast float %7424, %7369
  %7426 = fmul fast float %7425, %7421
  %7427 = fmul fast float %5052, 4.000000e+00
  %7428 = fmul fast float %7427, %7370
  %7429 = fmul fast float %7428, %7422
  %7430 = fmul fast float %5063, 4.000000e+00
  %7431 = fmul fast float %7430, %7371
  %7432 = fmul fast float %7431, %7423
  %7433 = fadd fast float %7426, %7413
  %7434 = fadd fast float %7429, %7414
  %7435 = fadd fast float %7432, %7415
  %7436 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7437 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7438 = call float @dx.op.unary.f32(i32 7, float %7435)  ; Saturate(value)
  br label %7439

; <label>:7439                                    ; preds = %7416, %7401
  %7440 = phi float [ %7436, %7416 ], [ %7413, %7401 ]
  %7441 = phi float [ %7437, %7416 ], [ %7414, %7401 ]
  %7442 = phi float [ %7438, %7416 ], [ %7415, %7401 ]
  %7443 = call float @dx.op.binary.f32(i32 35, float %7441, float %7442)  ; FMax(a,b)
  %7444 = call float @dx.op.binary.f32(i32 35, float %7440, float %7443)  ; FMax(a,b)
  %7445 = fsub fast float 1.000000e+00, %7444
  %7446 = fmul fast float %7402, %7360
  %7447 = fmul fast float %7403, %7360
  %7448 = fmul fast float %7404, %7360
  %7449 = fsub fast float 1.000000e+00, %7327
  %7450 = bitcast float %7449 to i32
  %7451 = sitofp i32 %7450 to float
  %7452 = fmul fast float %7451, 5.000000e+00
  %7453 = fadd fast float %7452, 0xC1EFBF8940000000
  %7454 = fptosi float %7453 to i32
  %7455 = bitcast i32 %7454 to float
  %7456 = fmul fast float %7455, %3857
  %7457 = fmul fast float %7445, %7456
  %7458 = fmul fast float %7457, %5744
  %7459 = fmul fast float %7457, %5745
  %7460 = fmul fast float %7457, %5746
  %7461 = fadd fast float %7458, %7446
  %7462 = fadd fast float %7459, %7447
  %7463 = fadd fast float %7460, %7448
  %7464 = fmul fast float %7332, %7315
  %7465 = fmul fast float %7464, %7445
  %7466 = fmul fast float %7332, %7316
  %7467 = fmul fast float %7466, %7445
  %7468 = fmul fast float %7332, %7317
  %7469 = fmul fast float %7468, %7445
  %7470 = fmul fast float %7464, %7461
  %7471 = fmul fast float %7466, %7462
  %7472 = fmul fast float %7468, %7463
  %7473 = fadd fast float %7465, %5728
  %7474 = fmul fast float %7473, %3853
  %7475 = fadd fast float %7467, %5729
  %7476 = fmul fast float %7475, %3853
  %7477 = fadd fast float %7469, %5730
  %7478 = fmul fast float %7477, %3853
  %7479 = fadd fast float %7470, %5771
  %7480 = fmul fast float %7479, %3853
  %7481 = fadd fast float %7471, %5774
  %7482 = fmul fast float %7481, %3853
  %7483 = fadd fast float %7472, %5777
  %7484 = fmul fast float %7483, %3853
  br label %7485

; <label>:7485                                    ; preds = %7439, %7233, %5724
  %7486 = phi float [ %5772, %5724 ], [ %5772, %7233 ], [ %7480, %7439 ]
  %7487 = phi float [ %5775, %5724 ], [ %5775, %7233 ], [ %7482, %7439 ]
  %7488 = phi float [ %5778, %5724 ], [ %5778, %7233 ], [ %7484, %7439 ]
  %7489 = phi float [ %5767, %5724 ], [ %5767, %7233 ], [ %7474, %7439 ]
  %7490 = phi float [ %5768, %5724 ], [ %5768, %7233 ], [ %7476, %7439 ]
  %7491 = phi float [ %5769, %5724 ], [ %5769, %7233 ], [ %7478, %7439 ]
  %7492 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.i32 %7492, 0
  %7494 = icmp eq i32 %7493, 0
  br i1 %7494, label %8157, label %7495

; <label>:7495                                    ; preds = %7485
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7499 = fmul fast float %7497, %114
  %7500 = fmul fast float %7498, %115
  %7501 = fptoui float %7499 to i32
  %7502 = fptoui float %7500 to i32
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7506 = extractvalue %dx.types.CBufRet.f32 %7503, 3
  %7507 = fadd fast float %101, -4.000000e+00
  %7508 = call float @dx.op.binary.f32(i32 35, float %7507, float 0.000000e+00)  ; FMax(a,b)
  %7509 = fadd fast float %7508, %7504
  %7510 = fmul fast float %7509, %7505
  %7511 = call float @dx.op.unary.f32(i32 23, float %7510)  ; Log(value)
  %7512 = fmul fast float %7511, %7506
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 2
  %7515 = fmul fast float %7512, %7514
  %7516 = call float @dx.op.unary.f32(i32 7, float %7515)  ; Saturate(value)
  %7517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.i32 %7517, 1
  %7519 = add i32 %7518, -1
  %7520 = uitofp i32 %7518 to float
  %7521 = fmul fast float %7520, %7516
  %7522 = fptoui float %7521 to i32
  %7523 = call i32 @dx.op.binary.i32(i32 40, i32 %7522, i32 %7519)  ; UMin(a,b)
  %7524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.i32 %7524, 2
  %7526 = extractvalue %dx.types.CBufRet.i32 %7524, 3
  %7527 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7502, i32 %7525, i32 %7501)  ; UMad(a,b,c)
  %7528 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7523, i32 %7526, i32 %7527)  ; UMad(a,b,c)
  %7529 = add nsw i32 %7493, -1
  %7530 = call i32 @dx.op.binary.i32(i32 37, i32 %7529, i32 0)  ; IMax(a,b)
  %7531 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7532 = fptoui float %7531 to i32
  %7533 = lshr i32 %7532, 5
  %7534 = call i32 @dx.op.binary.i32(i32 40, i32 %7533, i32 8191)  ; UMin(a,b)
  %7535 = shl i32 %7534, 2
  %7536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7535, i32 undef)  ; BufferLoad(srv,index,wot)
  %7537 = extractvalue %dx.types.ResRet.i32 %7536, 0
  %7538 = lshr i32 %7537, 16
  %7539 = and i32 %7537, 65535
  %7540 = lshr i32 %7537, 21
  %7541 = lshr i32 %7539, 5
  %7542 = call i32 @dx.op.binary.i32(i32 40, i32 %7541, i32 %7530)  ; UMin(a,b)
  %7543 = icmp ugt i32 %7540, %7542
  br i1 %7543, label %8157, label %7544

; <label>:7544                                    ; preds = %7495
  br label %7545

; <label>:7545                                    ; preds = %8147, %7544
  %7546 = phi i32 [ %8154, %8147 ], [ %7540, %7544 ]
  %7547 = phi float [ %8148, %8147 ], [ %7486, %7544 ]
  %7548 = phi float [ %8149, %8147 ], [ %7487, %7544 ]
  %7549 = phi float [ %8150, %8147 ], [ %7488, %7544 ]
  %7550 = phi float [ %8151, %8147 ], [ %7489, %7544 ]
  %7551 = phi float [ %8152, %8147 ], [ %7490, %7544 ]
  %7552 = phi float [ %8153, %8147 ], [ %7491, %7544 ]
  %7553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.i32 %7553, 0
  %7555 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7528, i32 %7554, i32 %7546)  ; UMad(a,b,c)
  %7556 = shl i32 %7555, 2
  %7557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7556, i32 undef)  ; BufferLoad(srv,index,wot)
  %7558 = extractvalue %dx.types.ResRet.i32 %7557, 0
  %7559 = shl i32 %7546, 5
  %7560 = sub nsw i32 %7538, %7559
  %7561 = call i32 @dx.op.binary.i32(i32 37, i32 %7560, i32 0)  ; IMax(a,b)
  %7562 = call i32 @dx.op.binary.i32(i32 38, i32 %7561, i32 31)  ; IMin(a,b)
  %7563 = sub nsw i32 1, %7538
  %7564 = add nsw i32 %7563, %7539
  %7565 = call i32 @dx.op.binary.i32(i32 37, i32 %7564, i32 0)  ; IMax(a,b)
  %7566 = call i32 @dx.op.binary.i32(i32 38, i32 %7565, i32 32)  ; IMin(a,b)
  %7567 = and i32 %7566, 31
  %7568 = shl i32 -1, %7567
  %7569 = xor i32 %7568, -1
  %7570 = and i32 %7562, 31
  %7571 = shl i32 %7569, %7570
  %7572 = icmp eq i32 %7566, 32
  %7573 = select i1 %7572, i32 -1, i32 %7571
  %7574 = and i32 %7573, %7558
  %7575 = icmp eq i32 %7574, 0
  br i1 %7575, label %8147, label %7576

; <label>:7576                                    ; preds = %7545
  br label %7577

; <label>:7577                                    ; preds = %7711, %7576
  %7578 = phi i32 [ %7589, %7711 ], [ %7574, %7576 ]
  %7579 = phi float [ %7712, %7711 ], [ %7547, %7576 ]
  %7580 = phi float [ %7713, %7711 ], [ %7548, %7576 ]
  %7581 = phi float [ %7714, %7711 ], [ %7549, %7576 ]
  %7582 = phi float [ %7715, %7711 ], [ %7550, %7576 ]
  %7583 = phi float [ %7716, %7711 ], [ %7551, %7576 ]
  %7584 = phi float [ %7717, %7711 ], [ %7552, %7576 ]
  %7585 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7578)  ; FirstbitLo(value)
  %7586 = add i32 %7585, %7559
  %7587 = and i32 %7585, 31
  %7588 = shl i32 1, %7587
  %7589 = xor i32 %7588, %7578
  %7590 = mul i32 %7586, 112
  %7591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7590, i32 undef)  ; BufferLoad(srv,index,wot)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.ResRet.f32 %7591, 1
  %7594 = extractvalue %dx.types.ResRet.f32 %7591, 2
  %7595 = or i32 %7590, 12
  %7596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7595, i32 undef)  ; BufferLoad(srv,index,wot)
  %7597 = extractvalue %dx.types.ResRet.f32 %7596, 0
  %7598 = add i32 %7590, 16
  %7599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7598, i32 undef)  ; BufferLoad(srv,index,wot)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = extractvalue %dx.types.ResRet.f32 %7599, 1
  %7602 = extractvalue %dx.types.ResRet.f32 %7599, 2
  %7603 = add i32 %7590, 28
  %7604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7603, i32 undef)  ; BufferLoad(srv,index,wot)
  %7605 = extractvalue %dx.types.ResRet.i32 %7604, 0
  %7606 = add i32 %7590, 44
  %7607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7606, i32 undef)  ; BufferLoad(srv,index,wot)
  %7608 = extractvalue %dx.types.ResRet.f32 %7607, 0
  %7609 = add i32 %7590, 48
  %7610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7609, i32 undef)  ; BufferLoad(srv,index,wot)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = extractvalue %dx.types.ResRet.f32 %7610, 1
  %7613 = extractvalue %dx.types.ResRet.f32 %7610, 2
  %7614 = extractvalue %dx.types.ResRet.f32 %7610, 3
  %7615 = add i32 %7590, 64
  %7616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7615, i32 undef)  ; BufferLoad(srv,index,wot)
  %7617 = extractvalue %dx.types.ResRet.f32 %7616, 0
  %7618 = extractvalue %dx.types.ResRet.f32 %7616, 1
  %7619 = extractvalue %dx.types.ResRet.f32 %7616, 2
  %7620 = extractvalue %dx.types.ResRet.f32 %7616, 3
  %7621 = add i32 %7590, 80
  %7622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7621, i32 undef)  ; BufferLoad(srv,index,wot)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 1
  %7624 = extractvalue %dx.types.ResRet.f32 %7622, 2
  %7625 = add i32 %7590, 92
  %7626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7625, i32 undef)  ; BufferLoad(srv,index,wot)
  %7627 = extractvalue %dx.types.ResRet.i32 %7626, 0
  %7628 = call float @dx.op.dot3.f32(i32 55, float %7592, float %7593, float %7594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7629 = select i1 %260, float %7623, float %7592
  %7630 = select i1 %260, float %7628, float %7593
  %7631 = select i1 %260, float %7624, float %7594
  %7632 = and i32 %7627, 65535
  %7633 = uitofp i32 %7632 to float
  %7634 = lshr i32 %7627, 16
  %7635 = uitofp i32 %7634 to float
  %7636 = and i32 %7605, 65535
  %7637 = and i32 %7605, 50331648
  %7638 = icmp eq i32 %7637, 33554432
  %7639 = fsub fast float %7611, %201
  %7640 = fsub fast float %7612, %202
  %7641 = fsub fast float %7613, %203
  %7642 = call float @dx.op.dot3.f32(i32 55, float %7639, float %7640, float %7641, float %7639, float %7640, float %7641)  ; Dot3(ax,ay,az,bx,by,bz)
  %7643 = call float @dx.op.unary.f32(i32 24, float %7642)  ; Sqrt(value)
  %7644 = fdiv fast float 1.000000e+00, %7643
  %7645 = fmul fast float %7644, %7639
  %7646 = fmul fast float %7644, %7640
  %7647 = fmul fast float %7644, %7641
  %7648 = fadd fast float %7643, %7597
  %7649 = fdiv fast float 1.000000e+00, %7648
  %7650 = fmul float %7608, %7649
  %7651 = fmul float %7650, %7650
  %7652 = call float @dx.op.unary.f32(i32 7, float %7651)  ; Saturate(value)
  br i1 %7638, label %7653, label %7674

; <label>:7653                                    ; preds = %7577
  %7654 = fmul fast float %7619, %7600
  %7655 = fmul fast float %7619, %7601
  %7656 = fmul fast float %7619, %7602
  %7657 = fadd fast float %7639, %7654
  %7658 = fadd fast float %7640, %7655
  %7659 = fadd fast float %7641, %7656
  %7660 = call float @dx.op.dot3.f32(i32 55, float %7657, float %7658, float %7659, float %7657, float %7658, float %7659)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.unary.f32(i32 25, float %7660)  ; Rsqrt(value)
  %7662 = fmul fast float %7661, %7657
  %7663 = fmul fast float %7661, %7658
  %7664 = fmul fast float %7661, %7659
  %7665 = fsub fast float %201, %7611
  %7666 = fsub fast float %202, %7612
  %7667 = fsub fast float %203, %7613
  %7668 = fsub fast float -0.000000e+00, %7665
  %7669 = fsub fast float -0.000000e+00, %7666
  %7670 = fsub fast float -0.000000e+00, %7667
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7670, float %7600, float %7601, float %7602)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = fcmp fast ogt float %7671, 0.000000e+00
  %7673 = uitofp i1 %7672 to float
  br label %7674

; <label>:7674                                    ; preds = %7653, %7577
  %7675 = phi float [ %7673, %7653 ], [ 1.000000e+00, %7577 ]
  %7676 = phi float [ %7662, %7653 ], [ %7645, %7577 ]
  %7677 = phi float [ %7663, %7653 ], [ %7646, %7577 ]
  %7678 = phi float [ %7664, %7653 ], [ %7647, %7577 ]
  %7679 = call float @dx.op.dot3.f32(i32 55, float %7600, float %7601, float %7602, float %7676, float %7677, float %7678)  ; Dot3(ax,ay,az,bx,by,bz)
  %7680 = fmul fast float %7679, %7679
  %7681 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7682 = fsub fast float 1.000000e+00, %7681
  %7683 = fmul fast float %7682, 5.000000e-01
  %7684 = fcmp fast ogt float %7679, 0.000000e+00
  %7685 = fsub fast float 1.000000e+00, %7683
  %7686 = select i1 %7684, float %7683, float %7685
  %7687 = fmul fast float %7686, %7635
  %7688 = fadd fast float %7687, %7633
  %7689 = fmul fast float %7688, 0x3EF0001000000000
  %7690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7689, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = fmul fast float %7679, %7617
  %7693 = fadd fast float %7692, %7618
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = select i1 %7638, float 1.000000e+00, float %7694
  %7696 = select i1 %7638, float %7694, float 1.000000e+00
  %7697 = fmul fast float %7643, %7614
  %7698 = fsub fast float 1.000000e+00, %7697
  %7699 = fmul fast float %7698, %7620
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fmul fast float %7700, %7696
  %7702 = fmul fast float %7701, 2.000000e+00
  %7703 = fsub fast float 3.000000e+00, %7702
  %7704 = fmul fast float %7691, %7675
  %7705 = fmul fast float %7701, %7701
  %7706 = fmul fast float %7705, %7704
  %7707 = fmul fast float %7706, %7703
  %7708 = call float @dx.op.binary.f32(i32 36, float %7707, float %7707)  ; FMin(a,b)
  %7709 = call float @dx.op.binary.f32(i32 36, float %7707, float %7708)  ; FMin(a,b)
  %7710 = fcmp fast ogt float %7709, 0.000000e+00
  br i1 %7710, label %7719, label %7711, !dx.controlflow.hints !133

; <label>:7711                                    ; preds = %8103, %7865, %7674
  %7712 = phi float [ %7579, %7865 ], [ %7579, %7674 ], [ %8143, %8103 ]
  %7713 = phi float [ %7580, %7865 ], [ %7580, %7674 ], [ %8144, %8103 ]
  %7714 = phi float [ %7581, %7865 ], [ %7581, %7674 ], [ %8145, %8103 ]
  %7715 = phi float [ %7582, %7865 ], [ %7582, %7674 ], [ %8137, %8103 ]
  %7716 = phi float [ %7583, %7865 ], [ %7583, %7674 ], [ %8138, %8103 ]
  %7717 = phi float [ %7584, %7865 ], [ %7584, %7674 ], [ %8139, %8103 ]
  %7718 = icmp eq i32 %7578, %7588
  br i1 %7718, label %8146, label %7577

; <label>:7719                                    ; preds = %7674
  %7720 = icmp eq i32 %7636, 255
  br i1 %7720, label %7865, label %7721, !dx.controlflow.hints !134

; <label>:7721                                    ; preds = %7719
  %7722 = mul nuw nsw i32 %7636, 176
  %7723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7722, i32 undef)  ; BufferLoad(srv,index,wot)
  %7724 = extractvalue %dx.types.ResRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.ResRet.f32 %7723, 1
  %7726 = extractvalue %dx.types.ResRet.f32 %7723, 2
  %7727 = extractvalue %dx.types.ResRet.f32 %7723, 3
  %7728 = add nuw nsw i32 %7722, 16
  %7729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7728, i32 undef)  ; BufferLoad(srv,index,wot)
  %7730 = extractvalue %dx.types.ResRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.ResRet.f32 %7729, 1
  %7732 = add nuw nsw i32 %7722, 32
  %7733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7732, i32 undef)  ; BufferLoad(srv,index,wot)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.ResRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.ResRet.f32 %7733, 2
  %7737 = add nuw nsw i32 %7722, 48
  %7738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7737, i32 undef)  ; BufferLoad(srv,index,wot)
  %7739 = extractvalue %dx.types.ResRet.f32 %7738, 0
  %7740 = extractvalue %dx.types.ResRet.f32 %7738, 1
  %7741 = extractvalue %dx.types.ResRet.f32 %7738, 2
  %7742 = extractvalue %dx.types.ResRet.f32 %7738, 3
  %7743 = add nuw nsw i32 %7722, 64
  %7744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7743, i32 undef)  ; BufferLoad(srv,index,wot)
  %7745 = extractvalue %dx.types.ResRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.ResRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.ResRet.f32 %7744, 2
  %7748 = extractvalue %dx.types.ResRet.f32 %7744, 3
  %7749 = add nuw nsw i32 %7722, 80
  %7750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7749, i32 undef)  ; BufferLoad(srv,index,wot)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 0
  %7752 = extractvalue %dx.types.ResRet.f32 %7750, 1
  %7753 = extractvalue %dx.types.ResRet.f32 %7750, 2
  %7754 = extractvalue %dx.types.ResRet.f32 %7750, 3
  %7755 = add nuw nsw i32 %7722, 96
  %7756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7755, i32 undef)  ; BufferLoad(srv,index,wot)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.ResRet.f32 %7756, 2
  %7760 = extractvalue %dx.types.ResRet.f32 %7756, 3
  %7761 = bitcast float %7731 to i32
  %7762 = fmul fast float %7736, %121
  %7763 = fmul fast float %7736, %122
  %7764 = fmul fast float %7736, %123
  %7765 = fadd fast float %7762, %201
  %7766 = fadd fast float %7763, %202
  %7767 = fadd fast float %7764, %203
  %7768 = fmul fast float %7765, %7739
  %7769 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7745, float %7768)  ; FMad(a,b,c)
  %7770 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7751, float %7769)  ; FMad(a,b,c)
  %7771 = fadd fast float %7770, %7757
  %7772 = fmul fast float %7765, %7740
  %7773 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7746, float %7772)  ; FMad(a,b,c)
  %7774 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7752, float %7773)  ; FMad(a,b,c)
  %7775 = fadd fast float %7774, %7758
  %7776 = fmul fast float %7765, %7741
  %7777 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7747, float %7776)  ; FMad(a,b,c)
  %7778 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7753, float %7777)  ; FMad(a,b,c)
  %7779 = fadd fast float %7778, %7759
  %7780 = fmul fast float %7765, %7742
  %7781 = call float @dx.op.tertiary.f32(i32 46, float %7766, float %7748, float %7780)  ; FMad(a,b,c)
  %7782 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7754, float %7781)  ; FMad(a,b,c)
  %7783 = fadd fast float %7782, %7760
  %7784 = fdiv fast float %7771, %7783
  %7785 = fdiv fast float %7775, %7783
  %7786 = fdiv fast float %7779, %7783
  %7787 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7786)  ; FMax(a,b)
  %7788 = fmul fast float %271, 0x401921FB60000000
  %7789 = call float @dx.op.unary.f32(i32 13, float %7788)  ; Sin(value)
  %7790 = call float @dx.op.unary.f32(i32 12, float %7788)  ; Cos(value)
  %7791 = fmul fast float %7790, %7735
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7789, float %7735, float 0.000000e+00)  ; FMad(a,b,c)
  %7793 = fmul fast float %7735, %7789
  %7794 = fsub fast float -0.000000e+00, %7793
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7790, float %7735, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7796

; <label>:7796                                    ; preds = %7796, %7721
  %7797 = phi float [ 0.000000e+00, %7721 ], [ %7829, %7796 ]
  %7798 = phi float [ 0.000000e+00, %7721 ], [ %7831, %7796 ]
  %7799 = phi i32 [ 0, %7721 ], [ %7832, %7796 ]
  %7800 = mul i32 %7799, 2
  %7801 = add i32 0, %7800
  %7802 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7801
  %7803 = load float, float* %7802, align 4
  %7804 = mul i32 %7799, 2
  %7805 = add i32 1, %7804
  %7806 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7805
  %7807 = load float, float* %7806, align 4
  %7808 = fmul fast float %7791, %7803
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7807, float %7794, float %7808)  ; FMad(a,b,c)
  %7810 = fmul fast float %7803, %7792
  %7811 = call float @dx.op.tertiary.f32(i32 46, float %7807, float %7795, float %7810)  ; FMad(a,b,c)
  %7812 = fadd fast float %7809, %7784
  %7813 = fadd fast float %7811, %7785
  %7814 = fmul fast float %7812, %7730
  %7815 = fmul fast float %7813, %7730
  %7816 = call float @dx.op.binary.f32(i32 35, float %7814, float %7726)  ; FMax(a,b)
  %7817 = call float @dx.op.binary.f32(i32 35, float %7815, float %7726)  ; FMax(a,b)
  %7818 = call float @dx.op.binary.f32(i32 36, float %7816, float %7727)  ; FMin(a,b)
  %7819 = call float @dx.op.binary.f32(i32 36, float %7817, float %7727)  ; FMin(a,b)
  %7820 = fadd fast float %7818, %7724
  %7821 = fadd fast float %7819, %7725
  %7822 = uitofp i32 %7761 to float
  %7823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7820, float %7821, float %7822, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7824 = extractvalue %dx.types.ResRet.f32 %7823, 0
  %7825 = fsub fast float %7824, %7787
  %7826 = fsub fast float %7825, %7734
  %7827 = fcmp fast ogt float %7826, 0.000000e+00
  %7828 = select i1 %7827, float 1.000000e+00, float 0.000000e+00
  %7829 = fadd fast float %7828, %7797
  %7830 = select i1 %7827, float %7826, float 0.000000e+00
  %7831 = fadd fast float %7830, %7798
  %7832 = add nuw nsw i32 %7799, 1
  %7833 = icmp eq i32 %7832, 8
  br i1 %7833, label %7834, label %7796

; <label>:7834                                    ; preds = %7796
  %7835 = fdiv fast float 1.000000e+00, %7829
  %7836 = fmul fast float %7835, %7831
  %7837 = fdiv fast float 1.000000e+00, %7787
  %7838 = fmul fast float %7836, %7837
  %7839 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float 0.000000e+00)  ; FMax(a,b)
  %7841 = fmul fast float %7829, 1.250000e-01
  %7842 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7843 = fmul fast float %7842, 2.000000e+00
  %7844 = fadd fast float %7843, -1.000000e+00
  %7845 = fcmp fast ogt float %7844, 0.000000e+00
  %7846 = fcmp fast olt float %7844, 0.000000e+00
  %7847 = zext i1 %7845 to i32
  %7848 = zext i1 %7846 to i32
  %7849 = sub nsw i32 %7847, %7848
  %7850 = sitofp i32 %7849 to float
  %7851 = fmul fast float %7850, %7844
  %7852 = fsub fast float 1.000000e+00, %7851
  %7853 = fmul fast float %7852, %7852
  %7854 = fmul fast float %7853, %7852
  %7855 = fsub fast float %7852, %7854
  %7856 = fmul fast float %7855, %7840
  %7857 = fsub fast float 1.000000e+00, %7854
  %7858 = fsub fast float %7857, %7856
  %7859 = fmul fast float %7850, 5.000000e-01
  %7860 = fmul fast float %7859, %7858
  %7861 = fsub fast float -5.000000e-01, %7860
  %7862 = fmul fast float %7861, %7695
  %7863 = fadd fast float %7862, 1.000000e+00
  %7864 = fmul fast float %7863, %7707
  br label %7865

; <label>:7865                                    ; preds = %7834, %7719
  %7866 = phi float [ %7864, %7834 ], [ %7707, %7719 ]
  %7867 = call float @dx.op.binary.f32(i32 36, float %7866, float %7866)  ; FMin(a,b)
  %7868 = call float @dx.op.binary.f32(i32 36, float %7866, float %7867)  ; FMin(a,b)
  %7869 = fcmp fast ogt float %7868, 0.000000e+00
  br i1 %7869, label %7870, label %7711, !dx.controlflow.hints !135

; <label>:7870                                    ; preds = %7865
  %7871 = fmul fast float %7866, %7629
  %7872 = fmul fast float %7866, %7630
  %7873 = fmul fast float %7866, %7631
  %7874 = fsub fast float %7613, %4261
  %7875 = fcmp fast ogt float %7874, 0.000000e+00
  %7876 = fsub fast float %203, %4261
  %7877 = fcmp fast ogt float %7876, 0.000000e+00
  %7878 = xor i1 %7877, %7875
  %7879 = fsub fast float %4261, %7613
  %7880 = fmul fast float %7879, 2.000000e+00
  %7881 = fadd fast float %7880, %7613
  %7882 = select i1 %7878, float %7613, float %7881
  %7883 = fsub fast float %7882, %203
  %7884 = call float @dx.op.dot3.f32(i32 55, float %7639, float %7640, float %7883, float %7639, float %7640, float %7883)  ; Dot3(ax,ay,az,bx,by,bz)
  %7885 = call float @dx.op.unary.f32(i32 25, float %7884)  ; Rsqrt(value)
  %7886 = fmul fast float %7885, %7639
  %7887 = fmul fast float %7885, %7640
  %7888 = fmul fast float %7885, %7883
  %7889 = fsub fast float %4261, %203
  %7890 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7889)  ; Dot3(ax,ay,az,bx,by,bz)
  %7891 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7886, float %7887, float %7888)  ; Dot3(ax,ay,az,bx,by,bz)
  %7892 = fdiv fast float 1.000000e+00, %7891
  %7893 = fmul fast float %7892, %7890
  %7894 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7876, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = fcmp fast ogt float %7894, 0.000000e+00
  %7896 = fcmp fast olt float %7894, 0.000000e+00
  %7897 = zext i1 %7895 to i32
  %7898 = zext i1 %7896 to i32
  %7899 = sub nsw i32 %7897, %7898
  %7900 = sitofp i32 %7899 to float
  %7901 = fsub fast float %7882, %4261
  %7902 = call float @dx.op.dot3.f32(i32 55, float %7639, float %7640, float %7901, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7903 = fcmp fast ogt float %7902, 0.000000e+00
  %7904 = fcmp fast olt float %7902, 0.000000e+00
  %7905 = zext i1 %7903 to i32
  %7906 = zext i1 %7904 to i32
  %7907 = sub nsw i32 %7905, %7906
  %7908 = sitofp i32 %7907 to float
  %7909 = fcmp fast une float %7900, %7908
  br i1 %7909, label %7910, label %7920

; <label>:7910                                    ; preds = %7870
  %7911 = fmul fast float %7893, %7888
  %7912 = fmul fast float %7893, %7887
  %7913 = fmul fast float %7893, %7886
  %7914 = fmul fast float %7913, %7913
  %7915 = fmul fast float %7912, %7912
  %7916 = fadd fast float %7914, %7915
  %7917 = fmul fast float %7911, %7911
  %7918 = fadd fast float %7916, %7917
  %7919 = call float @dx.op.unary.f32(i32 24, float %7918)  ; Sqrt(value)
  br label %7932

; <label>:7920                                    ; preds = %7870
  %7921 = icmp slt i32 %7899, 0
  br i1 %7921, label %7922, label %7932

; <label>:7922                                    ; preds = %7920
  %7923 = fsub fast float %201, %7611
  %7924 = fsub fast float %202, %7612
  %7925 = fsub fast float %203, %7882
  %7926 = fmul fast float %7923, %7923
  %7927 = fmul fast float %7924, %7924
  %7928 = fadd fast float %7926, %7927
  %7929 = fmul fast float %7925, %7925
  %7930 = fadd fast float %7928, %7929
  %7931 = call float @dx.op.unary.f32(i32 24, float %7930)  ; Sqrt(value)
  br label %7932

; <label>:7932                                    ; preds = %7922, %7920, %7910
  %7933 = phi float [ %7919, %7910 ], [ %7931, %7922 ], [ 0.000000e+00, %7920 ]
  %7934 = and i1 %7877, %7875
  %7935 = fsub fast float -0.000000e+00, %7933
  %7936 = select i1 %7934, float -0.000000e+00, float %7935
  %7937 = fmul fast float %4258, 0x3FF7154760000000
  %7938 = fmul fast float %7937, %7936
  %7939 = fmul fast float %4259, 0x3FF7154760000000
  %7940 = fmul fast float %7939, %7936
  %7941 = fmul fast float %4260, 0x3FF7154760000000
  %7942 = fmul fast float %7941, %7936
  %7943 = call float @dx.op.unary.f32(i32 21, float %7938)  ; Exp(value)
  %7944 = call float @dx.op.unary.f32(i32 21, float %7940)  ; Exp(value)
  %7945 = call float @dx.op.unary.f32(i32 21, float %7942)  ; Exp(value)
  %7946 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7947 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7948 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7949 = fmul fast float %7871, %7946
  %7950 = fmul fast float %7872, %7947
  %7951 = fmul fast float %7873, %7948
  %7952 = fsub fast float %7645, %5050
  %7953 = fsub fast float %7646, %5049
  %7954 = fsub fast float %7647, %5048
  %7955 = call float @dx.op.dot3.f32(i32 55, float %7952, float %7953, float %7954, float %7952, float %7953, float %7954)  ; Dot3(ax,ay,az,bx,by,bz)
  %7956 = call float @dx.op.unary.f32(i32 25, float %7955)  ; Rsqrt(value)
  %7957 = fmul fast float %7956, %7952
  %7958 = fmul fast float %7956, %7953
  %7959 = fmul fast float %7956, %7954
  %7960 = call float @dx.op.dot3.f32(i32 55, float %7645, float %7646, float %7647, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %7961 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5046, float %5045, float %7957, float %7958, float %7959)  ; Dot3(ax,ay,az,bx,by,bz)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7960)  ; Saturate(value)
  %7963 = fmul fast float %7962, %7652
  %7964 = fmul fast float %7962, %7962
  %7965 = fmul fast float %7964, %5090
  %7966 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7967 = fmul fast float %7963, %7966
  %7968 = bitcast float %7642 to i32
  %7969 = ashr i32 %7968, 1
  %7970 = sub nsw i32 1597463007, %7969
  %7971 = bitcast i32 %7970 to float
  %7972 = fmul fast float %7971, %7639
  %7973 = fmul fast float %7971, %7640
  %7974 = fmul fast float %7971, %7641
  %7975 = fsub fast float %7972, %5050
  %7976 = fsub fast float %7973, %5049
  %7977 = fsub fast float %7974, %5048
  %7978 = call float @dx.op.dot3.f32(i32 55, float %7975, float %7976, float %7977, float %7975, float %7976, float %7977)  ; Dot3(ax,ay,az,bx,by,bz)
  %7979 = call float @dx.op.unary.f32(i32 25, float %7978)  ; Rsqrt(value)
  %7980 = fmul fast float %7975, %7979
  %7981 = fmul fast float %7976, %7979
  %7982 = fmul fast float %7977, %7979
  %7983 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %7980, float %7981, float %7982)  ; Dot3(ax,ay,az,bx,by,bz)
  %7984 = fmul fast float %7983, %7983
  %7985 = call float @dx.op.unary.f32(i32 6, float %7960)  ; FAbs(value)
  %7986 = fsub fast float 1.000000e+00, %5083
  %7987 = fmul fast float %5065, %5065
  %7988 = fmul fast float %7987, %7986
  %7989 = fadd fast float %7988, %5083
  %7990 = bitcast float %7989 to i32
  %7991 = ashr i32 %7990, 1
  %7992 = add nsw i32 %7991, 532487669
  %7993 = bitcast i32 %7992 to float
  %7994 = fadd fast float %7993, %5065
  %7995 = fmul fast float %5083, %7984
  %7996 = fsub fast float 1.000000e+00, %7984
  %7997 = fadd fast float %7996, %7995
  %7998 = fmul fast float %7985, %7985
  %7999 = fmul fast float %7998, %7986
  %8000 = fadd fast float %7999, %5083
  %8001 = bitcast float %8000 to i32
  %8002 = ashr i32 %8001, 1
  %8003 = add nsw i32 %8002, 532487669
  %8004 = bitcast i32 %8003 to float
  %8005 = fadd fast float %8004, %7985
  %8006 = fmul fast float %7997, %7997
  %8007 = fmul fast float %8006, %7994
  %8008 = fmul fast float %8007, %8005
  %8009 = fdiv fast float 1.000000e+00, %8008
  %8010 = bitcast float %5083 to i32
  %8011 = sitofp i32 %8010 to float
  %8012 = fmul fast float %8011, 0x3FE7F73180000000
  %8013 = fadd fast float %8012, 0x41AFE27C40000000
  %8014 = fptosi float %8013 to i32
  %8015 = bitcast i32 %8014 to float
  %8016 = fmul fast float %7608, 0x3FD80E9D60000000
  %8017 = fmul fast float %8016, %7971
  %8018 = fadd fast float %8015, %8017
  %8019 = bitcast float %8018 to i32
  %8020 = sub nsw i32 2129859010, %8019
  %8021 = bitcast i32 %8020 to float
  %8022 = fmul fast float %5083, %8009
  %8023 = fmul fast float %8022, %8015
  %8024 = fmul fast float %8023, %8021
  %8025 = call float @dx.op.unary.f32(i32 6, float %7961)  ; FAbs(value)
  %8026 = fsub fast float 1.000000e+00, %8025
  %8027 = bitcast float %8026 to i32
  %8028 = sitofp i32 %8027 to float
  %8029 = fmul fast float %8028, 5.000000e+00
  %8030 = fadd fast float %8029, 0xC1EFBF8940000000
  %8031 = fptosi float %8030 to i32
  %8032 = bitcast i32 %8031 to float
  %8033 = fsub fast float 1.000000e+00, %5051
  %8034 = fsub fast float 1.000000e+00, %5052
  %8035 = fsub fast float 1.000000e+00, %5063
  %8036 = fmul fast float %8032, %8033
  %8037 = fmul fast float %8032, %8034
  %8038 = fmul fast float %8032, %8035
  %8039 = fadd fast float %8036, %5051
  %8040 = fadd fast float %8037, %5052
  %8041 = fadd fast float %8038, %5063
  br i1 %5202, label %8042, label %8065

; <label>:8042                                    ; preds = %7932
  %8043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3856, float %8025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.ResRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.ResRet.f32 %8043, 2
  %8047 = fadd fast float %8044, -5.000000e-01
  %8048 = fadd fast float %8045, -5.000000e-01
  %8049 = fadd fast float %8046, -5.000000e-01
  %8050 = fmul fast float %5051, 4.000000e+00
  %8051 = fmul fast float %8050, %8033
  %8052 = fmul fast float %8051, %8047
  %8053 = fmul fast float %5052, 4.000000e+00
  %8054 = fmul fast float %8053, %8034
  %8055 = fmul fast float %8054, %8048
  %8056 = fmul fast float %5063, 4.000000e+00
  %8057 = fmul fast float %8056, %8035
  %8058 = fmul fast float %8057, %8049
  %8059 = fadd fast float %8052, %8039
  %8060 = fadd fast float %8055, %8040
  %8061 = fadd fast float %8058, %8041
  %8062 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8063 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8064 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  br label %8065

; <label>:8065                                    ; preds = %8042, %7932
  %8066 = phi float [ %8062, %8042 ], [ %8039, %7932 ]
  %8067 = phi float [ %8063, %8042 ], [ %8040, %7932 ]
  %8068 = phi float [ %8064, %8042 ], [ %8041, %7932 ]
  %8069 = fmul fast float %7960, 9.843750e-01
  %8070 = fadd fast float %8069, 7.812500e-03
  %8071 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8070, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 2
  %8073 = extractvalue %dx.types.ResRet.f32 %8071, 3
  %8074 = fmul fast float %8072, %5051
  %8075 = fmul fast float %8072, %5052
  %8076 = fmul fast float %8072, %5063
  %8077 = fadd fast float %8074, %8073
  %8078 = fadd fast float %8075, %8073
  %8079 = fadd fast float %8076, %8073
  br i1 %5202, label %8080, label %8103

; <label>:8080                                    ; preds = %8065
  %8081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3856, float %7960, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8082 = extractvalue %dx.types.ResRet.f32 %8081, 0
  %8083 = extractvalue %dx.types.ResRet.f32 %8081, 1
  %8084 = extractvalue %dx.types.ResRet.f32 %8081, 2
  %8085 = fadd fast float %8082, -5.000000e-01
  %8086 = fadd fast float %8083, -5.000000e-01
  %8087 = fadd fast float %8084, -5.000000e-01
  %8088 = fmul fast float %5051, 4.000000e+00
  %8089 = fmul fast float %8088, %8033
  %8090 = fmul fast float %8089, %8085
  %8091 = fmul fast float %5052, 4.000000e+00
  %8092 = fmul fast float %8091, %8034
  %8093 = fmul fast float %8092, %8086
  %8094 = fmul fast float %5063, 4.000000e+00
  %8095 = fmul fast float %8094, %8035
  %8096 = fmul fast float %8095, %8087
  %8097 = fadd fast float %8090, %8077
  %8098 = fadd fast float %8093, %8078
  %8099 = fadd fast float %8096, %8079
  %8100 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8101 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8102 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  br label %8103

; <label>:8103                                    ; preds = %8080, %8065
  %8104 = phi float [ %8100, %8080 ], [ %8077, %8065 ]
  %8105 = phi float [ %8101, %8080 ], [ %8078, %8065 ]
  %8106 = phi float [ %8102, %8080 ], [ %8079, %8065 ]
  %8107 = call float @dx.op.binary.f32(i32 35, float %8105, float %8106)  ; FMax(a,b)
  %8108 = call float @dx.op.binary.f32(i32 35, float %8104, float %8107)  ; FMax(a,b)
  %8109 = fsub fast float 1.000000e+00, %8108
  %8110 = fmul fast float %8066, %8024
  %8111 = fmul fast float %8067, %8024
  %8112 = fmul fast float %8068, %8024
  %8113 = fsub fast float 1.000000e+00, %7961
  %8114 = bitcast float %8113 to i32
  %8115 = sitofp i32 %8114 to float
  %8116 = fmul fast float %8115, 5.000000e+00
  %8117 = fadd fast float %8116, 0xC1EFBF8940000000
  %8118 = fptosi float %8117 to i32
  %8119 = bitcast i32 %8118 to float
  %8120 = fmul fast float %8119, %3857
  %8121 = fmul fast float %8109, %8120
  %8122 = fmul fast float %8121, %5744
  %8123 = fmul fast float %8121, %5745
  %8124 = fmul fast float %8121, %5746
  %8125 = fadd fast float %8122, %8110
  %8126 = fadd fast float %8123, %8111
  %8127 = fadd fast float %8124, %8112
  %8128 = fmul fast float %7949, %3853
  %8129 = fmul fast float %8128, %7967
  %8130 = fmul fast float %8129, %8109
  %8131 = fmul fast float %7950, %3853
  %8132 = fmul fast float %8131, %7967
  %8133 = fmul fast float %8132, %8109
  %8134 = fmul fast float %7951, %3853
  %8135 = fmul fast float %8134, %7967
  %8136 = fmul fast float %8135, %8109
  %8137 = fadd fast float %8130, %7582
  %8138 = fadd fast float %8133, %7583
  %8139 = fadd fast float %8136, %7584
  %8140 = fmul fast float %8129, %8125
  %8141 = fmul fast float %8132, %8126
  %8142 = fmul fast float %8135, %8127
  %8143 = fadd fast float %8140, %7579
  %8144 = fadd fast float %8141, %7580
  %8145 = fadd fast float %8142, %7581
  br label %7711

; <label>:8146                                    ; preds = %7711
  br label %8147

; <label>:8147                                    ; preds = %8146, %7545
  %8148 = phi float [ %7547, %7545 ], [ %7712, %8146 ]
  %8149 = phi float [ %7548, %7545 ], [ %7713, %8146 ]
  %8150 = phi float [ %7549, %7545 ], [ %7714, %8146 ]
  %8151 = phi float [ %7550, %7545 ], [ %7715, %8146 ]
  %8152 = phi float [ %7551, %7545 ], [ %7716, %8146 ]
  %8153 = phi float [ %7552, %7545 ], [ %7717, %8146 ]
  %8154 = add i32 %7546, 1
  %8155 = icmp ugt i32 %8154, %7542
  br i1 %8155, label %8156, label %7545

; <label>:8156                                    ; preds = %8147
  br label %8157

; <label>:8157                                    ; preds = %8156, %7495, %7485
  %8158 = phi float [ %7486, %7485 ], [ %7486, %7495 ], [ %8148, %8156 ]
  %8159 = phi float [ %7487, %7485 ], [ %7487, %7495 ], [ %8149, %8156 ]
  %8160 = phi float [ %7488, %7485 ], [ %7488, %7495 ], [ %8150, %8156 ]
  %8161 = phi float [ %7489, %7485 ], [ %7489, %7495 ], [ %8151, %8156 ]
  %8162 = phi float [ %7490, %7485 ], [ %7490, %7495 ], [ %8152, %8156 ]
  %8163 = phi float [ %7491, %7485 ], [ %7491, %7495 ], [ %8153, %8156 ]
  %8164 = fmul fast float %3853, %3853
  %8165 = fsub fast float 1.000000e+00, %8164
  %8166 = call float @dx.op.dot3.f32(i32 55, float %8165, float %8165, float %8165, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8167 = fsub fast float 1.000000e+00, %8166
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = fmul fast float %8169, %5750
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 3
  %8173 = fsub fast float 1.000000e+00, %3861
  %8174 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8175 = fadd fast float %8163, %3859
  %8176 = fmul fast float %8175, %3861
  %8177 = fmul fast float %8174, %8172
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 3
  %8180 = fmul fast float %8161, %5054
  %8181 = fmul fast float %8162, %5055
  %8182 = fmul fast float %8163, %5056
  %8183 = fcmp fast ogt float %101, %223
  %8184 = and i1 %8183, %4264
  %8185 = or i1 %4270, %8184
  %8186 = icmp eq i32 %4263, 2
  %8187 = fcmp fast ole float %101, %223
  %8188 = and i1 %8187, %8186
  %8189 = or i1 %8188, %8185
  br i1 %8184, label %8190, label %8447

; <label>:8190                                    ; preds = %8157
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 2
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 3
  %8194 = fmul fast float %8192, %114
  %8195 = fmul fast float %8193, %115
  %8196 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8197 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  %8198 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8196, float %8197, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8199 = extractvalue %dx.types.ResRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.ResRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.ResRet.f32 %8198, 2
  %8202 = extractvalue %dx.types.ResRet.f32 %8198, 3
  %8203 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8196, float %8197, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8204 = extractvalue %dx.types.ResRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.ResRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.ResRet.f32 %8203, 2
  %8207 = extractvalue %dx.types.ResRet.f32 %8203, 3
  %8208 = call float @dx.op.binary.f32(i32 35, float %8200, float %8201)  ; FMax(a,b)
  %8209 = call float @dx.op.binary.f32(i32 35, float %8199, float %8208)  ; FMax(a,b)
  %8210 = call float @dx.op.binary.f32(i32 35, float %8209, float %8202)  ; FMax(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8205, float %8206)  ; FMin(a,b)
  %8212 = call float @dx.op.binary.f32(i32 36, float %8204, float %8211)  ; FMin(a,b)
  %8213 = call float @dx.op.binary.f32(i32 36, float %8212, float %8207)  ; FMin(a,b)
  %8214 = fmul fast float %8210, 2.550000e+02
  %8215 = fadd fast float %8214, 0x3F70101020000000
  %8216 = fptoui float %8215 to i32
  %8217 = fmul fast float %8213, 2.550000e+02
  %8218 = fadd fast float %8217, 0x3F70101020000000
  %8219 = fptoui float %8218 to i32
  %8220 = icmp ult i32 %8216, %8219
  br i1 %8220, label %8221, label %8389

; <label>:8221                                    ; preds = %8190
  %8222 = fcmp fast ogt float %100, 9.843750e-01
  %8223 = fadd fast float %101, -4.000000e+00
  %8224 = select i1 %8222, float -4.000000e+00, float %8223
  %8225 = call float @dx.op.binary.f32(i32 35, float %8224, float 0.000000e+00)  ; FMax(a,b)
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8228 = fadd fast float %8227, %8225
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8230 = fmul fast float %8228, %8229
  %8231 = call float @dx.op.unary.f32(i32 23, float %8230)  ; Log(value)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8226, 3
  %8233 = fmul fast float %8232, %8231
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 2
  %8236 = fmul fast float %8233, %8235
  %8237 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8238 = uitofp i32 %8216 to float
  %8239 = uitofp i32 %8219 to float
  %8240 = fadd fast float %8238, 5.000000e-01
  %8241 = fadd fast float %8239, 5.000000e-01
  %8242 = fmul fast float %8235, %8240
  %8243 = fmul fast float %8235, %8241
  %8244 = fadd fast float %8242, 0x3F0FFB4800000000
  %8245 = fadd fast float %8243, 0xBF0FFB4800000000
  %8246 = call float @dx.op.binary.f32(i32 35, float %8237, float %8244)  ; FMax(a,b)
  %8247 = call float @dx.op.binary.f32(i32 36, float %8246, float %8245)  ; FMin(a,b)
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8252 = fmul fast float %8249, %8247
  %8253 = fadd fast float %8251, %8252
  %8254 = fadd fast float %8251, %8250
  %8255 = fsub fast float %8249, %8250
  %8256 = fadd fast float %8255, %8251
  %8257 = call float @dx.op.binary.f32(i32 35, float %8253, float %8254)  ; FMax(a,b)
  %8258 = call float @dx.op.binary.f32(i32 36, float %8257, float %8256)  ; FMin(a,b)
  %8259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8196, float %8197, float %8258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8260 = extractvalue %dx.types.ResRet.f32 %8259, 0
  %8261 = extractvalue %dx.types.ResRet.f32 %8259, 1
  %8262 = extractvalue %dx.types.ResRet.f32 %8259, 2
  %8263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.i32 %8263, 0
  %8265 = extractvalue %dx.types.CBufRet.i32 %8263, 1
  %8266 = uitofp i32 %8264 to float
  %8267 = uitofp i32 %8265 to float
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8271 = fmul fast float %8266, %8196
  %8272 = fmul fast float %8267, %8197
  %8273 = fadd fast float %8271, -5.000000e-01
  %8274 = fadd fast float %8272, -5.000000e-01
  %8275 = call float @dx.op.unary.f32(i32 22, float %8273)  ; Frc(value)
  %8276 = call float @dx.op.unary.f32(i32 22, float %8274)  ; Frc(value)
  %8277 = fmul fast float %8275, %8275
  %8278 = fmul fast float %8277, %8275
  %8279 = fsub fast float 3.000000e+00, %8275
  %8280 = fmul fast float %8277, %8279
  %8281 = fmul fast float %8275, 3.000000e+00
  %8282 = fmul fast float %8278, 3.000000e+00
  %8283 = fmul fast float %8277, 6.000000e+00
  %8284 = fsub fast float %8282, %8283
  %8285 = fadd fast float %8284, 4.000000e+00
  %8286 = fmul fast float %8285, 0x3FC5555560000000
  %8287 = fmul fast float %8278, -3.000000e+00
  %8288 = fadd fast float %8277, %8275
  %8289 = fmul fast float %8288, 3.000000e+00
  %8290 = fadd fast float %8287, 1.000000e+00
  %8291 = fadd fast float %8290, %8289
  %8292 = fmul fast float %8278, 0x3FC5555560000000
  %8293 = fmul fast float %8276, %8276
  %8294 = fmul fast float %8293, %8276
  %8295 = fsub fast float 3.000000e+00, %8276
  %8296 = fmul fast float %8293, %8295
  %8297 = fmul fast float %8276, 3.000000e+00
  %8298 = fmul fast float %8294, 3.000000e+00
  %8299 = fmul fast float %8293, 6.000000e+00
  %8300 = fsub fast float %8298, %8299
  %8301 = fadd fast float %8300, 4.000000e+00
  %8302 = fmul fast float %8301, 0x3FC5555560000000
  %8303 = fmul fast float %8294, -3.000000e+00
  %8304 = fadd fast float %8293, %8276
  %8305 = fmul fast float %8304, 3.000000e+00
  %8306 = fadd fast float %8303, 1.000000e+00
  %8307 = fadd fast float %8306, %8305
  %8308 = fmul fast float %8294, 0x3FC5555560000000
  %8309 = fadd fast float %8275, 1.000000e+00
  %8310 = fsub fast float 1.000000e+00, %8281
  %8311 = fadd fast float %8310, %8280
  %8312 = fadd fast float %8311, %8285
  %8313 = fmul fast float %8312, 0x3FC5555560000000
  %8314 = fdiv fast float %8286, %8313
  %8315 = fsub fast float %8309, %8314
  %8316 = fsub fast float 1.000000e+00, %8275
  %8317 = fadd fast float %8291, %8278
  %8318 = fmul fast float %8317, 0x3FC5555560000000
  %8319 = fdiv fast float %8292, %8318
  %8320 = fadd fast float %8316, %8319
  %8321 = fadd fast float %8276, 1.000000e+00
  %8322 = fsub fast float 1.000000e+00, %8297
  %8323 = fadd fast float %8322, %8296
  %8324 = fadd fast float %8323, %8301
  %8325 = fmul fast float %8324, 0x3FC5555560000000
  %8326 = fdiv fast float %8302, %8325
  %8327 = fsub fast float %8321, %8326
  %8328 = fsub fast float 1.000000e+00, %8276
  %8329 = fadd fast float %8307, %8294
  %8330 = fmul fast float %8329, 0x3FC5555560000000
  %8331 = fdiv fast float %8308, %8330
  %8332 = fadd fast float %8331, %8328
  %8333 = fmul fast float %8315, %8269
  %8334 = fsub fast float %8196, %8333
  %8335 = fmul fast float %8320, %8269
  %8336 = fadd fast float %8335, %8196
  %8337 = fmul fast float %8332, %8270
  %8338 = fadd fast float %8337, %8197
  %8339 = fmul fast float %8327, %8270
  %8340 = fsub fast float %8197, %8339
  %8341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8334, float %8340, float %8258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8342 = extractvalue %dx.types.ResRet.f32 %8341, 0
  %8343 = extractvalue %dx.types.ResRet.f32 %8341, 1
  %8344 = extractvalue %dx.types.ResRet.f32 %8341, 2
  %8345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8336, float %8340, float %8258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8334, float %8338, float %8258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.ResRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.ResRet.f32 %8349, 2
  %8353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8336, float %8338, float %8258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.ResRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.ResRet.f32 %8353, 2
  %8357 = fsub fast float %8350, %8342
  %8358 = fsub fast float %8351, %8343
  %8359 = fsub fast float %8352, %8344
  %8360 = fmul fast float %8357, %8330
  %8361 = fmul fast float %8358, %8330
  %8362 = fmul fast float %8359, %8330
  %8363 = fadd fast float %8360, %8342
  %8364 = fadd fast float %8361, %8343
  %8365 = fadd fast float %8362, %8344
  %8366 = fsub fast float %8354, %8346
  %8367 = fsub fast float %8355, %8347
  %8368 = fsub fast float %8356, %8348
  %8369 = fmul fast float %8366, %8330
  %8370 = fmul fast float %8367, %8330
  %8371 = fmul fast float %8368, %8330
  %8372 = fsub fast float %8346, %8363
  %8373 = fadd fast float %8372, %8369
  %8374 = fsub fast float %8347, %8364
  %8375 = fadd fast float %8374, %8370
  %8376 = fsub fast float %8348, %8365
  %8377 = fadd fast float %8376, %8371
  %8378 = fmul fast float %8373, %8318
  %8379 = fmul fast float %8375, %8318
  %8380 = fmul fast float %8377, %8318
  %8381 = fadd fast float %8378, %8363
  %8382 = fadd fast float %8379, %8364
  %8383 = fadd fast float %8380, %8365
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8386 = fmul fast float %8381, %8385
  %8387 = fmul fast float %8382, %8385
  %8388 = fmul fast float %8383, %8385
  br label %8389

; <label>:8389                                    ; preds = %8221, %8190
  %8390 = phi float [ %8260, %8221 ], [ 1.000000e+00, %8190 ]
  %8391 = phi float [ %8261, %8221 ], [ 1.000000e+00, %8190 ]
  %8392 = phi float [ %8262, %8221 ], [ 1.000000e+00, %8190 ]
  %8393 = phi float [ %8386, %8221 ], [ 0.000000e+00, %8190 ]
  %8394 = phi float [ %8387, %8221 ], [ 0.000000e+00, %8190 ]
  %8395 = phi float [ %8388, %8221 ], [ 0.000000e+00, %8190 ]
  %8396 = fmul fast float %8393, %8167
  %8397 = fmul fast float %8394, %8167
  %8398 = fmul fast float %8395, %8167
  %8399 = call float @dx.op.dot3.f32(i32 55, float %8390, float %8391, float %8392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8400 = call float @dx.op.dot3.f32(i32 55, float %8396, float %8397, float %8398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8401 = select i1 %260, float %8399, float %8390
  %8402 = select i1 %260, float %8399, float %8391
  %8403 = select i1 %260, float 1.000000e+00, float %8392
  %8404 = select i1 %260, float %8400, float %8396
  %8405 = select i1 %260, float 0.000000e+00, float %8397
  %8406 = select i1 %260, float 0.000000e+00, float %8398
  %8407 = fmul fast float %8401, %8180
  %8408 = fmul fast float %8402, %8181
  %8409 = fmul fast float %8403, %8182
  %8410 = fadd fast float %8407, %8404
  %8411 = fadd fast float %8408, %8405
  %8412 = fadd fast float %8406, %8409
  %8413 = fmul fast float %8401, %8158
  %8414 = fmul fast float %8402, %8159
  %8415 = fmul fast float %8403, %8160
  %8416 = fmul fast float %150, %8192
  %8417 = fmul fast float %152, %8193
  %8418 = fsub fast float 1.000000e+00, %8416
  %8419 = fsub fast float 1.000000e+00, %8417
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 0
  %8422 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8423 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %8424 = fmul fast float %8418, %8421
  %8425 = fmul fast float %8418, %8422
  %8426 = fmul fast float %8418, %8423
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8429 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8430 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %8431 = fmul fast float %8419, %8428
  %8432 = fmul fast float %8419, %8429
  %8433 = fmul fast float %8419, %8430
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8438 = fadd fast float %8431, %8435
  %8439 = fadd fast float %8438, %8424
  %8440 = fadd fast float %8432, %8436
  %8441 = fadd fast float %8440, %8425
  %8442 = fadd fast float %8433, %8437
  %8443 = fadd fast float %8442, %8426
  %8444 = fmul fast float %8439, %223
  %8445 = fmul fast float %8441, %223
  %8446 = fmul fast float %8443, %223
  br label %8447

; <label>:8447                                    ; preds = %8389, %8157
  %8448 = phi float [ %8444, %8389 ], [ %201, %8157 ]
  %8449 = phi float [ %8445, %8389 ], [ %202, %8157 ]
  %8450 = phi float [ %8446, %8389 ], [ %203, %8157 ]
  %8451 = phi float [ %223, %8389 ], [ %101, %8157 ]
  %8452 = phi float [ %8410, %8389 ], [ %8180, %8157 ]
  %8453 = phi float [ %8411, %8389 ], [ %8181, %8157 ]
  %8454 = phi float [ %8412, %8389 ], [ %8182, %8157 ]
  %8455 = phi float [ %8413, %8389 ], [ %8158, %8157 ]
  %8456 = phi float [ %8414, %8389 ], [ %8159, %8157 ]
  %8457 = phi float [ %8415, %8389 ], [ %8160, %8157 ]
  %8458 = phi float [ %8390, %8389 ], [ 1.000000e+00, %8157 ]
  br i1 %8189, label %9613, label %8459

; <label>:8459                                    ; preds = %8447
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8464 = extractvalue %dx.types.CBufRet.f32 %8460, 3
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8467 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8468 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8469 = extractvalue %dx.types.CBufRet.f32 %8465, 3
  %8470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8471 = extractvalue %dx.types.CBufRet.f32 %8470, 0
  %8472 = extractvalue %dx.types.CBufRet.f32 %8470, 1
  %8473 = extractvalue %dx.types.CBufRet.f32 %8470, 2
  %8474 = extractvalue %dx.types.CBufRet.f32 %8470, 3
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = extractvalue %dx.types.CBufRet.f32 %8475, 3
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8486 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8487 = fcmp fast olt float %8486, -5.000000e-01
  %8488 = call float @dx.op.dot3.f32(i32 55, float %8448, float %8449, float %8450, float %8448, float %8449, float %8450)  ; Dot3(ax,ay,az,bx,by,bz)
  %8489 = call float @dx.op.unary.f32(i32 25, float %8488)  ; Rsqrt(value)
  %8490 = fmul fast float %8489, %8488
  %8491 = fmul fast float %8489, %8448
  %8492 = fmul fast float %8489, %8449
  %8493 = fmul fast float %8489, %8450
  %8494 = fadd fast float %8490, %8464
  %8495 = call float @dx.op.dot3.f32(i32 55, float %8491, float %8492, float %8493, float %8461, float %8462, float %8463)  ; Dot3(ax,ay,az,bx,by,bz)
  %8496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.i32 %8496, 1
  %8498 = and i32 %8497, 1
  %8499 = icmp ne i32 %8498, 0
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8502 = fcmp fast ogt float %8501, 0.000000e+00
  %8503 = and i1 %8499, %8502
  br i1 %8503, label %8504, label %8910, !dx.controlflow.hints !136

; <label>:8504                                    ; preds = %8459
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8511 = fsub fast float %8508, %8510
  %8512 = and i32 %8497, 2
  %8513 = extractvalue %dx.types.CBufRet.i32 %8496, 0
  %8514 = call i32 @dx.op.binary.i32(i32 40, i32 %8513, i32 3)  ; UMin(a,b)
  %8515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8516 = extractvalue %dx.types.CBufRet.f32 %8515, 0
  %8517 = extractvalue %dx.types.CBufRet.f32 %8515, 1
  %8518 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8520 = fsub fast float %8516, %8518
  %8521 = fsub fast float %8517, %8519
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = fcmp fast ogt float %8523, 0.000000e+00
  %8525 = fsub fast float -0.000000e+00, %8520
  %8526 = fsub fast float -0.000000e+00, %8521
  %8527 = call float @dx.op.dot2.f32(i32 54, float %8491, float %8492, float %8491, float %8492)  ; Dot2(ax,ay,bx,by)
  %8528 = call float @dx.op.dot2.f32(i32 54, float %8491, float %8492, float %8525, float %8526)  ; Dot2(ax,ay,bx,by)
  %8529 = fmul fast float %8528, 2.000000e+00
  %8530 = call float @dx.op.dot2.f32(i32 54, float %8525, float %8526, float %8525, float %8526)  ; Dot2(ax,ay,bx,by)
  %8531 = fmul fast float %8523, %8523
  %8532 = fsub fast float %8530, %8531
  %8533 = fmul fast float %8529, %8529
  %8534 = fmul fast float %8527, 4.000000e+00
  %8535 = fmul fast float %8534, %8532
  %8536 = fsub fast float %8533, %8535
  %8537 = fcmp fast ogt float %8536, 0.000000e+00
  br i1 %8537, label %8538, label %8553

; <label>:8538                                    ; preds = %8504
  %8539 = fcmp fast ogt float %8529, 0.000000e+00
  %8540 = call float @dx.op.unary.f32(i32 24, float %8536)  ; Sqrt(value)
  %8541 = fsub fast float -0.000000e+00, %8540
  %8542 = select i1 %8539, float %8540, float %8541
  %8543 = fadd fast float %8542, %8529
  %8544 = fmul float %8543, -5.000000e-01
  %8545 = fdiv fast float %8544, %8527
  %8546 = call float @dx.op.binary.f32(i32 35, float %8545, float 0.000000e+00)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8490, float %8546)  ; FMin(a,b)
  %8548 = fdiv fast float %8532, %8544
  %8549 = call float @dx.op.binary.f32(i32 35, float %8548, float 0.000000e+00)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8490, float %8549)  ; FMin(a,b)
  %8551 = call float @dx.op.binary.f32(i32 36, float %8547, float %8550)  ; FMin(a,b)
  %8552 = call float @dx.op.binary.f32(i32 35, float %8547, float %8550)  ; FMax(a,b)
  br label %8553

; <label>:8553                                    ; preds = %8538, %8504
  %8554 = phi float [ %8552, %8538 ], [ -1.000000e+00, %8504 ]
  %8555 = phi float [ %8551, %8538 ], [ -1.000000e+00, %8504 ]
  %8556 = phi i1 [ true, %8538 ], [ false, %8504 ]
  %8557 = and i1 %8524, %8556
  br i1 %8557, label %8558, label %8560

; <label>:8558                                    ; preds = %8553
  %8559 = fcmp fast oeq float %8555, %8554
  br i1 %8559, label %8863, label %8561

; <label>:8560                                    ; preds = %8553
  br i1 %8524, label %8863, label %8561

; <label>:8561                                    ; preds = %8560, %8558
  %8562 = phi float [ %8490, %8560 ], [ %8554, %8558 ]
  %8563 = phi float [ 0.000000e+00, %8560 ], [ %8555, %8558 ]
  %8564 = icmp ne i32 %8512, 0
  %8565 = fmul fast float %8562, %8493
  %8566 = fadd fast float %8565, %8506
  %8567 = fmul fast float %8566, %8562
  %8568 = select i1 %8564, float 0.000000e+00, float %8567
  %8569 = fcmp fast oeq float %8493, 0.000000e+00
  %8570 = fdiv fast float %8511, %8493
  %8571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8570)  ; FMax(a,b)
  %8572 = select i1 %8569, float %8562, float %8571
  %8573 = call float @dx.op.binary.f32(i32 36, float %8562, float %8572)  ; FMin(a,b)
  %8574 = fcmp fast ogt float %8493, 0.000000e+00
  %8575 = fcmp fast olt float %8511, 0.000000e+00
  br i1 %8574, label %8576, label %8633

; <label>:8576                                    ; preds = %8561
  %8577 = icmp eq i32 %8512, 0
  br i1 %8575, label %8578, label %8622

; <label>:8578                                    ; preds = %8576
  %8579 = select i1 %8577, float %8562, float 0.000000e+00
  %8580 = fsub fast float -0.000000e+00, %8579
  %8581 = call float @dx.op.unary.f32(i32 6, float %8580)  ; FAbs(value)
  %8582 = fmul fast float %8579, %8493
  %8583 = fadd fast float %8582, %8506
  %8584 = fmul fast float %8581, %8583
  %8585 = fsub fast float %8568, %8584
  %8586 = fsub fast float %8562, %8581
  %8587 = select i1 %8577, float %8586, float 0.000000e+00
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.CBufRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.CBufRet.f32 %8592, 2
  %8596 = extractvalue %dx.types.CBufRet.f32 %8592, 3
  %8597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8598 = extractvalue %dx.types.CBufRet.f32 %8597, 3
  %8599 = call float @dx.op.binary.f32(i32 36, float %8585, float %8598)  ; FMin(a,b)
  %8600 = fmul fast float %8596, %8587
  %8601 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8602 = fsub fast float %8593, %8589
  %8603 = fsub fast float %8594, %8590
  %8604 = fsub fast float %8595, %8591
  %8605 = fmul fast float %8601, %8602
  %8606 = fmul fast float %8601, %8603
  %8607 = fmul fast float %8601, %8604
  %8608 = fadd fast float %8605, %8589
  %8609 = fadd fast float %8606, %8590
  %8610 = fadd fast float %8607, %8591
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8614 = fadd fast float %8613, %8612
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8617 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8618 = fadd fast float %8617, %8616
  %8619 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  %8620 = fmul fast float %8615, %8599
  %8621 = fmul fast float %8620, %8619
  br label %8863

; <label>:8622                                    ; preds = %8576
  br i1 %8577, label %8623, label %8644

; <label>:8623                                    ; preds = %8622
  %8624 = call float @dx.op.binary.f32(i32 36, float %8573, float %8563)  ; FMin(a,b)
  %8625 = fsub fast float %8573, %8624
  %8626 = fsub fast float %8625, %8562
  %8627 = call float @dx.op.unary.f32(i32 6, float %8626)  ; FAbs(value)
  %8628 = fadd fast float %8625, %8562
  %8629 = fmul fast float %8628, %8493
  %8630 = fadd fast float %8629, %8506
  %8631 = fmul fast float %8630, %8627
  %8632 = fsub fast float %8568, %8631
  br label %8644

; <label>:8633                                    ; preds = %8561
  br i1 %8575, label %8634, label %8644

; <label>:8634                                    ; preds = %8633
  %8635 = call float @dx.op.binary.f32(i32 35, float %8563, float %8573)  ; FMax(a,b)
  %8636 = icmp eq i32 %8512, 0
  %8637 = select i1 %8636, float %8573, float 0.000000e+00
  %8638 = fsub fast float -0.000000e+00, %8637
  %8639 = call float @dx.op.unary.f32(i32 6, float %8638)  ; FAbs(value)
  %8640 = fmul fast float %8637, %8493
  %8641 = fadd fast float %8640, %8506
  %8642 = fmul fast float %8639, %8641
  %8643 = fsub fast float %8568, %8642
  br label %8644

; <label>:8644                                    ; preds = %8634, %8633, %8623, %8622
  %8645 = phi float [ %8563, %8622 ], [ %8563, %8623 ], [ %8635, %8634 ], [ %8563, %8633 ]
  %8646 = phi float [ 0.000000e+00, %8622 ], [ %8627, %8623 ], [ %8639, %8634 ], [ 0.000000e+00, %8633 ]
  %8647 = phi float [ %8568, %8622 ], [ %8632, %8623 ], [ %8643, %8634 ], [ %8568, %8633 ]
  %8648 = phi float [ %8573, %8622 ], [ %8573, %8623 ], [ %8562, %8634 ], [ %8562, %8633 ]
  %8649 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8649, align 4, !tbaa !122, !noalias !137
  %8650 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8650, align 4, !tbaa !122, !noalias !137
  %8651 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8651, align 4, !tbaa !122, !noalias !137
  %8652 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8652, align 4, !tbaa !122, !noalias !137
  %8653 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8653, align 4, !tbaa !122, !noalias !137
  %8654 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8654, align 4, !tbaa !122, !noalias !137
  %8655 = icmp sgt i32 %8514, 0
  br i1 %8655, label %8656, label %8717

; <label>:8656                                    ; preds = %8644
  br label %8657

; <label>:8657                                    ; preds = %8706, %8656
  %8658 = phi i32 [ %8707, %8706 ], [ 0, %8656 ]
  %8659 = phi i32 [ %8708, %8706 ], [ 0, %8656 ]
  %8660 = add nuw i32 %8659, 171
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8660)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 0
  %8663 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 0
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 1
  %8667 = fsub fast float %8662, %8665
  %8668 = fsub fast float %8663, %8666
  %8669 = extractvalue %dx.types.CBufRet.f32 %8661, 2
  %8670 = fsub fast float -0.000000e+00, %8667
  %8671 = fsub fast float -0.000000e+00, %8668
  %8672 = call float @dx.op.dot2.f32(i32 54, float %8491, float %8492, float %8670, float %8671)  ; Dot2(ax,ay,bx,by)
  %8673 = fmul fast float %8672, 2.000000e+00
  %8674 = call float @dx.op.dot2.f32(i32 54, float %8670, float %8671, float %8670, float %8671)  ; Dot2(ax,ay,bx,by)
  %8675 = fmul fast float %8669, %8669
  %8676 = fsub fast float %8674, %8675
  %8677 = fmul fast float %8673, %8673
  %8678 = fmul fast float %8534, %8676
  %8679 = fsub fast float %8677, %8678
  %8680 = fcmp fast ogt float %8679, 0.000000e+00
  br i1 %8680, label %8681, label %8696

; <label>:8681                                    ; preds = %8657
  %8682 = fcmp fast ogt float %8673, 0.000000e+00
  %8683 = call float @dx.op.unary.f32(i32 24, float %8679)  ; Sqrt(value)
  %8684 = fsub fast float -0.000000e+00, %8683
  %8685 = select i1 %8682, float %8683, float %8684
  %8686 = fadd fast float %8685, %8673
  %8687 = fmul float %8686, -5.000000e-01
  %8688 = fdiv fast float %8687, %8527
  %8689 = call float @dx.op.binary.f32(i32 35, float %8688, float 0.000000e+00)  ; FMax(a,b)
  %8690 = call float @dx.op.binary.f32(i32 36, float %8562, float %8689)  ; FMin(a,b)
  %8691 = fdiv fast float %8676, %8687
  %8692 = call float @dx.op.binary.f32(i32 35, float %8691, float 0.000000e+00)  ; FMax(a,b)
  %8693 = call float @dx.op.binary.f32(i32 36, float %8562, float %8692)  ; FMin(a,b)
  %8694 = call float @dx.op.binary.f32(i32 36, float %8690, float %8693)  ; FMin(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float %8690, float %8693)  ; FMax(a,b)
  br label %8696

; <label>:8696                                    ; preds = %8681, %8657
  %8697 = phi float [ %8695, %8681 ], [ -1.000000e+00, %8657 ]
  %8698 = phi float [ %8694, %8681 ], [ -1.000000e+00, %8657 ]
  %8699 = phi i1 [ true, %8681 ], [ false, %8657 ]
  br i1 %8699, label %8700, label %8706

; <label>:8700                                    ; preds = %8696
  %8701 = call float @dx.op.binary.f32(i32 35, float %8645, float %8698)  ; FMax(a,b)
  %8702 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8659
  store float %8701, float* %8702, align 4, !tbaa !122, !noalias !137
  %8703 = call float @dx.op.binary.f32(i32 35, float %8645, float %8697)  ; FMax(a,b)
  %8704 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8659
  store float %8703, float* %8704, align 4, !tbaa !122, !noalias !137
  %8705 = add nsw i32 %8658, 1
  br label %8706

; <label>:8706                                    ; preds = %8700, %8696
  %8707 = phi i32 [ %8705, %8700 ], [ %8658, %8696 ]
  %8708 = add nuw nsw i32 %8659, 1
  %8709 = icmp eq i32 %8708, %8514
  br i1 %8709, label %8710, label %8657

; <label>:8710                                    ; preds = %8706
  %8711 = load float, float* %8651, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8712 = load float, float* %8650, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8713 = load float, float* %8649, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8714 = load float, float* %8654, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8715 = load float, float* %8653, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8716 = load float, float* %8652, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8717

; <label>:8717                                    ; preds = %8710, %8644
  %8718 = phi float [ -1.000000e+00, %8644 ], [ %8716, %8710 ]
  %8719 = phi float [ -1.000000e+00, %8644 ], [ %8715, %8710 ]
  %8720 = phi float [ -1.000000e+00, %8644 ], [ %8714, %8710 ]
  %8721 = phi float [ -1.000000e+00, %8644 ], [ %8713, %8710 ]
  %8722 = phi float [ -1.000000e+00, %8644 ], [ %8712, %8710 ]
  %8723 = phi float [ -1.000000e+00, %8644 ], [ %8711, %8710 ]
  %8724 = phi i32 [ 0, %8644 ], [ %8707, %8710 ]
  %8725 = call float @dx.op.binary.f32(i32 36, float %8722, float %8723)  ; FMin(a,b)
  %8726 = call float @dx.op.binary.f32(i32 36, float %8721, float %8725)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 35, float %8721, float %8722)  ; FMax(a,b)
  %8728 = call float @dx.op.binary.f32(i32 36, float %8727, float %8723)  ; FMin(a,b)
  %8729 = call float @dx.op.binary.f32(i32 36, float %8721, float %8722)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 35, float %8729, float %8728)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 35, float %8722, float %8723)  ; FMax(a,b)
  %8732 = call float @dx.op.binary.f32(i32 35, float %8721, float %8731)  ; FMax(a,b)
  store float %8726, float* %8649, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8730, float* %8650, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8732, float* %8651, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8733 = call float @dx.op.binary.f32(i32 36, float %8719, float %8720)  ; FMin(a,b)
  %8734 = call float @dx.op.binary.f32(i32 36, float %8718, float %8733)  ; FMin(a,b)
  %8735 = call float @dx.op.binary.f32(i32 35, float %8718, float %8719)  ; FMax(a,b)
  %8736 = call float @dx.op.binary.f32(i32 36, float %8735, float %8720)  ; FMin(a,b)
  %8737 = call float @dx.op.binary.f32(i32 36, float %8718, float %8719)  ; FMin(a,b)
  %8738 = call float @dx.op.binary.f32(i32 35, float %8737, float %8736)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 35, float %8719, float %8720)  ; FMax(a,b)
  %8740 = call float @dx.op.binary.f32(i32 35, float %8718, float %8739)  ; FMax(a,b)
  store float %8734, float* %8652, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8738, float* %8653, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8740, float* %8654, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8741 = sub nsw i32 3, %8724
  %8742 = icmp sgt i32 %8741, 2
  br i1 %8742, label %8743, label %8781

; <label>:8743                                    ; preds = %8717
  %8744 = icmp eq i32 %8512, 0
  %8745 = fsub fast float %8562, %8646
  %8746 = select i1 %8744, float %8745, float %8646
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 1
  %8750 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 0
  %8753 = extractvalue %dx.types.CBufRet.f32 %8751, 1
  %8754 = extractvalue %dx.types.CBufRet.f32 %8751, 2
  %8755 = extractvalue %dx.types.CBufRet.f32 %8751, 3
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 3
  %8758 = call float @dx.op.binary.f32(i32 36, float %8647, float %8757)  ; FMin(a,b)
  %8759 = fmul fast float %8755, %8746
  %8760 = call float @dx.op.unary.f32(i32 7, float %8759)  ; Saturate(value)
  %8761 = fsub fast float %8752, %8748
  %8762 = fsub fast float %8753, %8749
  %8763 = fsub fast float %8754, %8750
  %8764 = fmul fast float %8760, %8761
  %8765 = fmul fast float %8760, %8762
  %8766 = fmul fast float %8760, %8763
  %8767 = fadd fast float %8764, %8748
  %8768 = fadd fast float %8765, %8749
  %8769 = fadd fast float %8766, %8750
  %8770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8771 = extractvalue %dx.types.CBufRet.f32 %8770, 0
  %8772 = extractvalue %dx.types.CBufRet.f32 %8770, 1
  %8773 = fadd fast float %8772, %8771
  %8774 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8775 = extractvalue %dx.types.CBufRet.f32 %8770, 2
  %8776 = extractvalue %dx.types.CBufRet.f32 %8770, 3
  %8777 = fadd fast float %8776, %8775
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = fmul fast float %8774, %8758
  %8780 = fmul fast float %8779, %8778
  br label %8863

; <label>:8781                                    ; preds = %8717
  %8782 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8741
  %8783 = load float, float* %8782, align 4, !tbaa !122, !noalias !137
  %8784 = fcmp fast olt float %8783, %8648
  %8785 = icmp sgt i32 %8724, 0
  %8786 = and i1 %8785, %8784
  br i1 %8786, label %8787, label %8824

; <label>:8787                                    ; preds = %8781
  br label %8788

; <label>:8788                                    ; preds = %8817, %8787
  %8789 = phi float [ %8818, %8817 ], [ %8646, %8787 ]
  %8790 = phi float [ %8819, %8817 ], [ %8647, %8787 ]
  %8791 = phi float [ %8799, %8817 ], [ %8783, %8787 ]
  %8792 = phi i32 [ %8796, %8817 ], [ %8741, %8787 ]
  %8793 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8792
  %8794 = load float, float* %8793, align 4, !tbaa !122, !noalias !137
  %8795 = icmp slt i32 %8792, 2
  %8796 = add nsw i32 %8792, 1
  %8797 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8796
  %8798 = load float, float* %8797, align 4, !tbaa !122, !noalias !137
  %8799 = select i1 %8795, float %8798, float %8562
  %8800 = call float @dx.op.binary.f32(i32 36, float %8799, float %8794)  ; FMin(a,b)
  %8801 = call float @dx.op.binary.f32(i32 36, float %8648, float %8800)  ; FMin(a,b)
  %8802 = icmp eq i32 %8512, 0
  %8803 = fadd fast float %8801, %8791
  %8804 = fmul fast float %8803, %8493
  %8805 = fadd fast float %8804, %8506
  br i1 %8802, label %8811, label %8806

; <label>:8806                                    ; preds = %8788
  %8807 = fsub fast float %8801, %8791
  %8808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8807)  ; FMax(a,b)
  %8809 = fmul fast float %8808, %8805
  %8810 = fadd fast float %8809, %8790
  br label %8817

; <label>:8811                                    ; preds = %8788
  %8812 = fsub fast float %8791, %8801
  %8813 = call float @dx.op.unary.f32(i32 6, float %8812)  ; FAbs(value)
  %8814 = fadd fast float %8813, %8789
  %8815 = fmul fast float %8813, %8805
  %8816 = fsub fast float %8790, %8815
  br label %8817

; <label>:8817                                    ; preds = %8811, %8806
  %8818 = phi float [ %8808, %8806 ], [ %8814, %8811 ]
  %8819 = phi float [ %8810, %8806 ], [ %8816, %8811 ]
  %8820 = fcmp fast olt float %8799, %8648
  %8821 = icmp slt i32 %8796, 3
  %8822 = and i1 %8821, %8820
  br i1 %8822, label %8788, label %8823

; <label>:8823                                    ; preds = %8817
  br label %8824

; <label>:8824                                    ; preds = %8823, %8781
  %8825 = phi float [ %8646, %8781 ], [ %8818, %8823 ]
  %8826 = phi float [ %8647, %8781 ], [ %8819, %8823 ]
  %8827 = fsub fast float %8562, %8825
  %8828 = select i1 %8564, float %8825, float %8827
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 0
  %8831 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8832 = extractvalue %dx.types.CBufRet.f32 %8829, 2
  %8833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8834 = extractvalue %dx.types.CBufRet.f32 %8833, 0
  %8835 = extractvalue %dx.types.CBufRet.f32 %8833, 1
  %8836 = extractvalue %dx.types.CBufRet.f32 %8833, 2
  %8837 = extractvalue %dx.types.CBufRet.f32 %8833, 3
  %8838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8839 = extractvalue %dx.types.CBufRet.f32 %8838, 3
  %8840 = call float @dx.op.binary.f32(i32 36, float %8826, float %8839)  ; FMin(a,b)
  %8841 = fmul fast float %8837, %8828
  %8842 = call float @dx.op.unary.f32(i32 7, float %8841)  ; Saturate(value)
  %8843 = fsub fast float %8834, %8830
  %8844 = fsub fast float %8835, %8831
  %8845 = fsub fast float %8836, %8832
  %8846 = fmul fast float %8842, %8843
  %8847 = fmul fast float %8842, %8844
  %8848 = fmul fast float %8842, %8845
  %8849 = fadd fast float %8846, %8830
  %8850 = fadd fast float %8847, %8831
  %8851 = fadd fast float %8848, %8832
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 0
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 1
  %8855 = fadd fast float %8854, %8853
  %8856 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8858 = extractvalue %dx.types.CBufRet.f32 %8852, 3
  %8859 = fadd fast float %8858, %8857
  %8860 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8861 = fmul fast float %8856, %8840
  %8862 = fmul fast float %8861, %8860
  br label %8863

; <label>:8863                                    ; preds = %8824, %8743, %8578, %8560, %8558
  %8864 = phi float [ %8587, %8578 ], [ %8746, %8743 ], [ %8828, %8824 ], [ 0.000000e+00, %8558 ], [ 0.000000e+00, %8560 ]
  %8865 = phi float [ %8621, %8578 ], [ %8780, %8743 ], [ %8862, %8824 ], [ 0.000000e+00, %8558 ], [ 0.000000e+00, %8560 ]
  %8866 = phi float [ %8608, %8578 ], [ %8767, %8743 ], [ %8849, %8824 ], [ 0.000000e+00, %8558 ], [ 0.000000e+00, %8560 ]
  %8867 = phi float [ %8609, %8578 ], [ %8768, %8743 ], [ %8850, %8824 ], [ 0.000000e+00, %8558 ], [ 0.000000e+00, %8560 ]
  %8868 = phi float [ %8610, %8578 ], [ %8769, %8743 ], [ %8851, %8824 ], [ 0.000000e+00, %8558 ], [ 0.000000e+00, %8560 ]
  %8869 = fmul fast float %8501, %8865
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8872 = fsub fast float %8508, %8871
  %8873 = fcmp fast olt float %8869, -2.000000e+01
  %8874 = call float @dx.op.unary.f32(i32 21, float %8869)  ; Exp(value)
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 3
  %8878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8878, 2
  %8880 = fmul fast float %8877, %8872
  %8881 = call float @dx.op.unary.f32(i32 7, float %8880)  ; Saturate(value)
  %8882 = fsub fast float 1.000000e+00, %8881
  %8883 = fmul fast float %8493, 5.000000e-01
  %8884 = fadd fast float %8883, 5.000000e-01
  %8885 = call float @dx.op.unary.f32(i32 7, float %8884)  ; Saturate(value)
  %8886 = fsub fast float 1.000000e+00, %8885
  %8887 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8882)  ; FMax(a,b)
  %8888 = fdiv fast float %8886, %8887
  %8889 = fsub fast float %8872, %8450
  %8890 = call float @dx.op.unary.f32(i32 6, float %8889)  ; FAbs(value)
  %8891 = fmul fast float %8890, %8876
  %8892 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8893 = fsub fast float 1.000000e+00, %8891
  %8894 = fmul fast float %8893, %8892
  %8895 = fadd fast float %8894, %8891
  %8896 = fmul fast float %8879, %8872
  %8897 = call float @dx.op.unary.f32(i32 7, float %8896)  ; Saturate(value)
  %8898 = fsub fast float 1.000000e+00, %8895
  %8899 = fmul fast float %8898, %8897
  %8900 = fadd fast float %8899, %8895
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = fadd fast float %8874, -1.000000e+00
  %8903 = select i1 %8873, float -1.000000e+00, float %8902
  %8904 = fmul fast float %8901, %8903
  %8905 = fadd fast float %8904, 1.000000e+00
  %8906 = fsub fast float -0.000000e+00, %8904
  %8907 = fmul fast float %8866, %8906
  %8908 = fmul fast float %8867, %8906
  %8909 = fmul fast float %8868, %8906
  br label %8910

; <label>:8910                                    ; preds = %8863, %8459
  %8911 = phi float [ %8864, %8863 ], [ 0.000000e+00, %8459 ]
  %8912 = phi float [ %8905, %8863 ], [ 1.000000e+00, %8459 ]
  %8913 = phi float [ %8907, %8863 ], [ 0.000000e+00, %8459 ]
  %8914 = phi float [ %8908, %8863 ], [ 0.000000e+00, %8459 ]
  %8915 = phi float [ %8909, %8863 ], [ 0.000000e+00, %8459 ]
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 1
  %8918 = fsub fast float 1.000000e+00, %8912
  %8919 = fmul fast float %8918, %8494
  %8920 = fmul fast float %8919, %8917
  %8921 = fsub fast float %8494, %8920
  br i1 %8487, label %8922, label %8951, !dx.controlflow.hints !173

; <label>:8922                                    ; preds = %8910
  %8923 = fmul fast float %8495, %8484
  %8924 = fadd fast float %8923, %8485
  %8925 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8926 = fmul fast float %8466, %8921
  %8927 = fsub fast float -0.000000e+00, %8926
  %8928 = fmul fast float %8467, %8921
  %8929 = fsub fast float -0.000000e+00, %8928
  %8930 = call float @dx.op.unary.f32(i32 21, float %8927)  ; Exp(value)
  %8931 = call float @dx.op.unary.f32(i32 21, float %8929)  ; Exp(value)
  %8932 = call float @dx.op.binary.f32(i32 35, float %8474, float %8930)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 35, float %8474, float %8931)  ; FMax(a,b)
  %8934 = fsub fast float %8933, %8932
  %8935 = fmul fast float %8934, %8925
  %8936 = fadd fast float %8935, %8932
  %8937 = call float @dx.op.unary.f32(i32 7, float %8936)  ; Saturate(value)
  %8938 = fsub fast float %8471, %8476
  %8939 = fsub fast float %8472, %8477
  %8940 = fsub fast float %8473, %8478
  %8941 = fmul fast float %8925, %8938
  %8942 = fmul fast float %8925, %8939
  %8943 = fmul fast float %8925, %8940
  %8944 = fadd fast float %8941, %8476
  %8945 = fadd fast float %8942, %8477
  %8946 = fadd fast float %8943, %8478
  %8947 = fsub fast float 1.000000e+00, %8937
  %8948 = fmul fast float %8947, %8944
  %8949 = fmul fast float %8947, %8945
  %8950 = fmul fast float %8947, %8946
  br label %9010

; <label>:8951                                    ; preds = %8910
  %8952 = fmul fast float %8921, %8483
  %8953 = call float @dx.op.unary.f32(i32 7, float %8952)  ; Saturate(value)
  %8954 = fsub fast float 2.000000e+00, %8953
  %8955 = fmul fast float %8953, 9.921875e-01
  %8956 = fmul fast float %8955, %8954
  %8957 = fadd fast float %8956, 3.906250e-03
  %8958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8957, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8959 = extractvalue %dx.types.ResRet.f32 %8958, 0
  %8960 = fsub fast float %8953, %8959
  %8961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8960)  ; FMax(a,b)
  %8962 = fmul fast float %8469, %8450
  %8963 = call float @dx.op.unary.f32(i32 6, float %8962)  ; FAbs(value)
  %8964 = fcmp fast ogt float %8963, 0x3EB0C6F7A0000000
  br i1 %8964, label %8965, label %8971, !dx.controlflow.hints !174

; <label>:8965                                    ; preds = %8951
  %8966 = fmul fast float %8962, 0xBFF7154760000000
  %8967 = call float @dx.op.unary.f32(i32 21, float %8966)  ; Exp(value)
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fdiv fast float %8968, %8962
  %8970 = fmul fast float %8969, %8479
  br label %8971

; <label>:8971                                    ; preds = %8965, %8951
  %8972 = phi float [ %8970, %8965 ], [ %8479, %8951 ]
  %8973 = fadd fast float %8972, %8481
  %8974 = fmul fast float %8973, %8961
  %8975 = fmul fast float %8466, %8974
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = fmul fast float %8467, %8974
  %8978 = fsub fast float -0.000000e+00, %8977
  %8979 = fmul fast float %8468, %8974
  %8980 = fsub fast float -0.000000e+00, %8979
  %8981 = call float @dx.op.unary.f32(i32 21, float %8976)  ; Exp(value)
  %8982 = call float @dx.op.unary.f32(i32 21, float %8978)  ; Exp(value)
  %8983 = call float @dx.op.unary.f32(i32 21, float %8980)  ; Exp(value)
  %8984 = fmul fast float %8495, %8495
  %8985 = fadd fast float %8984, 1.000000e+00
  %8986 = fmul fast float %8985, 0x3FAE8EC8A0000000
  %8987 = fmul fast float %8986, %8476
  %8988 = fmul fast float %8986, %8477
  %8989 = fmul fast float %8986, %8478
  %8990 = fmul fast float %8495, %8474
  %8991 = fsub fast float 1.000000e+00, %8990
  %8992 = fmul fast float %8474, %8474
  %8993 = fsub fast float 1.000000e+00, %8992
  %8994 = fmul fast float %8993, 0x3FB45F3060000000
  %8995 = fmul fast float %8991, %8991
  %8996 = fdiv fast float 1.000000e+00, %8995
  %8997 = fmul fast float %8994, %8996
  %8998 = fmul fast float %8997, %8471
  %8999 = fmul fast float %8997, %8472
  %9000 = fmul fast float %8997, %8473
  %9001 = fadd fast float %8998, %8987
  %9002 = fadd fast float %8999, %8988
  %9003 = fadd fast float %9000, %8989
  %9004 = fsub fast float 1.000000e+00, %8981
  %9005 = fsub fast float 1.000000e+00, %8982
  %9006 = fsub fast float 1.000000e+00, %8983
  %9007 = fmul fast float %9001, %9004
  %9008 = fmul fast float %9002, %9005
  %9009 = fmul fast float %9003, %9006
  br label %9010

; <label>:9010                                    ; preds = %8971, %8922
  %9011 = phi float [ %8948, %8922 ], [ %9007, %8971 ]
  %9012 = phi float [ %8949, %8922 ], [ %9008, %8971 ]
  %9013 = phi float [ %8950, %8922 ], [ %9009, %8971 ]
  %9014 = phi float [ %8937, %8922 ], [ %8981, %8971 ]
  %9015 = phi float [ %8937, %8922 ], [ %8982, %8971 ]
  %9016 = phi float [ %8937, %8922 ], [ %8983, %8971 ]
  br i1 %8503, label %9017, label %9215, !dx.controlflow.hints !175

; <label>:9017                                    ; preds = %9010
  %9018 = extractvalue %dx.types.CBufRet.f32 %8916, 0
  %9019 = fmul fast float %9018, %8918
  %9020 = fsub fast float %8913, %9011
  %9021 = fsub fast float %8914, %9012
  %9022 = fsub fast float %8915, %9013
  %9023 = fmul fast float %9019, %9020
  %9024 = fmul fast float %9019, %9021
  %9025 = fmul fast float %9019, %9022
  %9026 = fadd fast float %9023, %9011
  %9027 = fadd fast float %9024, %9012
  %9028 = fadd fast float %9025, %9013
  %9029 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9014)  ; FMax(a,b)
  %9030 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9015)  ; FMax(a,b)
  %9031 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9016)  ; FMax(a,b)
  %9032 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8912)  ; FMax(a,b)
  %9033 = call float @dx.op.binary.f32(i32 35, float %8911, float %8921)  ; FMax(a,b)
  %9034 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9033)  ; FMax(a,b)
  %9035 = fdiv fast float %8911, %9034
  %9036 = call float @dx.op.unary.f32(i32 7, float %9035)  ; Saturate(value)
  %9037 = fdiv fast float %8921, %9034
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = fcmp fast une float %9032, 1.000000e+00
  br i1 %9039, label %9040, label %9053, !dx.controlflow.hints !176

; <label>:9040                                    ; preds = %9017
  %9041 = call float @dx.op.unary.f32(i32 23, float %9032)  ; Log(value)
  %9042 = fmul fast float %9041, 0x3FE62E4300000000
  %9043 = fmul fast float %8913, %9042
  %9044 = fsub fast float -0.000000e+00, %9043
  %9045 = fmul fast float %8914, %9042
  %9046 = fsub fast float -0.000000e+00, %9045
  %9047 = fmul fast float %8915, %9042
  %9048 = fsub fast float -0.000000e+00, %9047
  %9049 = fsub fast float 1.000000e+00, %9032
  %9050 = fdiv fast float %9044, %9049
  %9051 = fdiv fast float %9046, %9049
  %9052 = fdiv fast float %9048, %9049
  br label %9053

; <label>:9053                                    ; preds = %9040, %9017
  %9054 = phi float [ %9050, %9040 ], [ %8913, %9017 ]
  %9055 = phi float [ %9051, %9040 ], [ %8914, %9017 ]
  %9056 = phi float [ %9052, %9040 ], [ %8915, %9017 ]
  %9057 = phi float [ %9042, %9040 ], [ 0.000000e+00, %9017 ]
  %9058 = fcmp fast une float %9029, 1.000000e+00
  br i1 %9058, label %9059, label %9066, !dx.controlflow.hints !177

; <label>:9059                                    ; preds = %9053
  %9060 = call float @dx.op.unary.f32(i32 23, float %9029)  ; Log(value)
  %9061 = fmul fast float %9060, 0x3FE62E4300000000
  %9062 = fmul fast float %9026, %9061
  %9063 = fsub fast float -0.000000e+00, %9062
  %9064 = fsub fast float 1.000000e+00, %9029
  %9065 = fdiv fast float %9063, %9064
  br label %9066

; <label>:9066                                    ; preds = %9059, %9053
  %9067 = phi float [ %9065, %9059 ], [ %9026, %9053 ]
  %9068 = phi float [ %9061, %9059 ], [ 0.000000e+00, %9053 ]
  %9069 = fcmp fast une float %9030, 1.000000e+00
  br i1 %9069, label %9070, label %9077, !dx.controlflow.hints !177

; <label>:9070                                    ; preds = %9066
  %9071 = call float @dx.op.unary.f32(i32 23, float %9030)  ; Log(value)
  %9072 = fmul fast float %9071, 0x3FE62E4300000000
  %9073 = fmul fast float %9027, %9072
  %9074 = fsub fast float -0.000000e+00, %9073
  %9075 = fsub fast float 1.000000e+00, %9030
  %9076 = fdiv fast float %9074, %9075
  br label %9077

; <label>:9077                                    ; preds = %9070, %9066
  %9078 = phi float [ %9076, %9070 ], [ %9027, %9066 ]
  %9079 = phi float [ %9072, %9070 ], [ 0.000000e+00, %9066 ]
  %9080 = fcmp fast une float %9031, 1.000000e+00
  br i1 %9080, label %9081, label %9088, !dx.controlflow.hints !177

; <label>:9081                                    ; preds = %9077
  %9082 = call float @dx.op.unary.f32(i32 23, float %9031)  ; Log(value)
  %9083 = fmul fast float %9082, 0x3FE62E4300000000
  %9084 = fmul fast float %9028, %9083
  %9085 = fsub fast float -0.000000e+00, %9084
  %9086 = fsub fast float 1.000000e+00, %9031
  %9087 = fdiv fast float %9085, %9086
  br label %9088

; <label>:9088                                    ; preds = %9081, %9077
  %9089 = phi float [ %9087, %9081 ], [ %9028, %9077 ]
  %9090 = phi float [ %9083, %9081 ], [ 0.000000e+00, %9077 ]
  %9091 = fmul fast float %9054, %9038
  %9092 = fmul fast float %9055, %9038
  %9093 = fmul fast float %9056, %9038
  %9094 = fmul fast float %9057, %9038
  %9095 = fmul fast float %9067, %9036
  %9096 = fmul fast float %9078, %9036
  %9097 = fmul fast float %9089, %9036
  %9098 = fmul fast float %9068, %9036
  %9099 = fmul fast float %9079, %9036
  %9100 = fmul fast float %9090, %9036
  %9101 = fadd fast float %9095, %9091
  %9102 = fadd fast float %9096, %9092
  %9103 = fadd fast float %9097, %9093
  %9104 = fadd fast float %9098, %9094
  %9105 = fadd fast float %9099, %9094
  %9106 = fadd fast float %9100, %9094
  %9107 = fcmp fast une float %9104, 0.000000e+00
  br i1 %9107, label %9108, label %9115, !dx.controlflow.hints !178

; <label>:9108                                    ; preds = %9088
  %9109 = fmul fast float %9104, 0x3FF7154760000000
  %9110 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9111 = fsub fast float 1.000000e+00, %9110
  %9112 = fmul fast float %9101, %9111
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = fdiv fast float %9113, %9104
  br label %9115

; <label>:9115                                    ; preds = %9108, %9088
  %9116 = phi float [ %9110, %9108 ], [ 1.000000e+00, %9088 ]
  %9117 = phi float [ %9114, %9108 ], [ %9101, %9088 ]
  %9118 = fcmp fast une float %9105, 0.000000e+00
  br i1 %9118, label %9119, label %9126, !dx.controlflow.hints !178

; <label>:9119                                    ; preds = %9115
  %9120 = fmul fast float %9105, 0x3FF7154760000000
  %9121 = call float @dx.op.unary.f32(i32 21, float %9120)  ; Exp(value)
  %9122 = fsub fast float 1.000000e+00, %9121
  %9123 = fmul fast float %9102, %9122
  %9124 = fsub fast float -0.000000e+00, %9123
  %9125 = fdiv fast float %9124, %9105
  br label %9126

; <label>:9126                                    ; preds = %9119, %9115
  %9127 = phi float [ %9121, %9119 ], [ 1.000000e+00, %9115 ]
  %9128 = phi float [ %9125, %9119 ], [ %9102, %9115 ]
  %9129 = fcmp fast une float %9106, 0.000000e+00
  br i1 %9129, label %9130, label %9137, !dx.controlflow.hints !178

; <label>:9130                                    ; preds = %9126
  %9131 = fmul fast float %9106, 0x3FF7154760000000
  %9132 = call float @dx.op.unary.f32(i32 21, float %9131)  ; Exp(value)
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %9103, %9133
  %9135 = fsub fast float -0.000000e+00, %9134
  %9136 = fdiv fast float %9135, %9106
  br label %9137

; <label>:9137                                    ; preds = %9130, %9126
  %9138 = phi float [ %9132, %9130 ], [ 1.000000e+00, %9126 ]
  %9139 = phi float [ %9136, %9130 ], [ %9103, %9126 ]
  %9140 = fcmp fast ogt float %9036, %9038
  br i1 %9140, label %9141, label %9161

; <label>:9141                                    ; preds = %9137
  %9142 = fsub fast float 1.000000e+00, %9038
  %9143 = fmul fast float %9054, %9142
  %9144 = fmul fast float %9055, %9142
  %9145 = fmul fast float %9056, %9142
  %9146 = fmul fast float %9057, %9142
  %9147 = fcmp fast une float %9146, 0.000000e+00
  br i1 %9147, label %9148, label %9199, !dx.controlflow.hints !179

; <label>:9148                                    ; preds = %9141
  %9149 = fmul fast float %9146, 0x3FF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %9143, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fmul fast float %9144, %9151
  %9155 = fsub fast float -0.000000e+00, %9154
  %9156 = fmul fast float %9145, %9151
  %9157 = fsub fast float -0.000000e+00, %9156
  %9158 = fdiv fast float %9153, %9146
  %9159 = fdiv fast float %9155, %9146
  %9160 = fdiv fast float %9157, %9146
  br label %9199

; <label>:9161                                    ; preds = %9137
  %9162 = fsub fast float 1.000000e+00, %9036
  %9163 = fmul fast float %9067, %9162
  %9164 = fmul fast float %9078, %9162
  %9165 = fmul fast float %9089, %9162
  %9166 = fmul fast float %9068, %9162
  %9167 = fmul fast float %9079, %9162
  %9168 = fmul fast float %9090, %9162
  %9169 = fcmp fast une float %9166, 0.000000e+00
  br i1 %9169, label %9170, label %9177, !dx.controlflow.hints !178

; <label>:9170                                    ; preds = %9161
  %9171 = fmul fast float %9166, 0x3FF7154760000000
  %9172 = call float @dx.op.unary.f32(i32 21, float %9171)  ; Exp(value)
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = fmul fast float %9163, %9173
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fdiv fast float %9175, %9166
  br label %9177

; <label>:9177                                    ; preds = %9170, %9161
  %9178 = phi float [ %9176, %9170 ], [ %9163, %9161 ]
  %9179 = phi float [ %9172, %9170 ], [ 1.000000e+00, %9161 ]
  %9180 = fcmp fast une float %9167, 0.000000e+00
  br i1 %9180, label %9181, label %9188, !dx.controlflow.hints !178

; <label>:9181                                    ; preds = %9177
  %9182 = fmul fast float %9167, 0x3FF7154760000000
  %9183 = call float @dx.op.unary.f32(i32 21, float %9182)  ; Exp(value)
  %9184 = fsub fast float 1.000000e+00, %9183
  %9185 = fmul fast float %9164, %9184
  %9186 = fsub fast float -0.000000e+00, %9185
  %9187 = fdiv fast float %9186, %9167
  br label %9188

; <label>:9188                                    ; preds = %9181, %9177
  %9189 = phi float [ %9187, %9181 ], [ %9164, %9177 ]
  %9190 = phi float [ %9183, %9181 ], [ 1.000000e+00, %9177 ]
  %9191 = fcmp fast une float %9168, 0.000000e+00
  br i1 %9191, label %9192, label %9199, !dx.controlflow.hints !178

; <label>:9192                                    ; preds = %9188
  %9193 = fmul fast float %9168, 0x3FF7154760000000
  %9194 = call float @dx.op.unary.f32(i32 21, float %9193)  ; Exp(value)
  %9195 = fsub fast float 1.000000e+00, %9194
  %9196 = fmul fast float %9165, %9195
  %9197 = fsub fast float -0.000000e+00, %9196
  %9198 = fdiv fast float %9197, %9168
  br label %9199

; <label>:9199                                    ; preds = %9192, %9188, %9148, %9141
  %9200 = phi float [ %9198, %9192 ], [ %9160, %9148 ], [ %9145, %9141 ], [ %9165, %9188 ]
  %9201 = phi float [ %9189, %9192 ], [ %9159, %9148 ], [ %9144, %9141 ], [ %9189, %9188 ]
  %9202 = phi float [ %9178, %9192 ], [ %9158, %9148 ], [ %9143, %9141 ], [ %9178, %9188 ]
  %9203 = phi float [ %9194, %9192 ], [ %9150, %9148 ], [ 1.000000e+00, %9141 ], [ 1.000000e+00, %9188 ]
  %9204 = phi float [ %9190, %9192 ], [ %9150, %9148 ], [ 1.000000e+00, %9141 ], [ %9190, %9188 ]
  %9205 = phi float [ %9179, %9192 ], [ %9150, %9148 ], [ 1.000000e+00, %9141 ], [ %9179, %9188 ]
  %9206 = fmul fast float %9205, %9117
  %9207 = fmul fast float %9204, %9128
  %9208 = fmul fast float %9203, %9139
  %9209 = fadd fast float %9206, %9202
  %9210 = fadd fast float %9207, %9201
  %9211 = fadd fast float %9208, %9200
  %9212 = fmul fast float %9205, %9116
  %9213 = fmul fast float %9204, %9127
  %9214 = fmul fast float %9203, %9138
  br label %9215

; <label>:9215                                    ; preds = %9199, %9010
  %9216 = phi float [ %9214, %9199 ], [ %9016, %9010 ]
  %9217 = phi float [ %9213, %9199 ], [ %9015, %9010 ]
  %9218 = phi float [ %9212, %9199 ], [ %9014, %9010 ]
  %9219 = phi float [ %9211, %9199 ], [ %9013, %9010 ]
  %9220 = phi float [ %9210, %9199 ], [ %9012, %9010 ]
  %9221 = phi float [ %9209, %9199 ], [ %9011, %9010 ]
  %9222 = fmul fast float %9221, %8167
  %9223 = fmul fast float %9220, %8167
  %9224 = fmul fast float %9219, %8167
  %9225 = fmul fast float %9218, %8458
  %9226 = call float @dx.op.dot3.f32(i32 55, float %9218, float %9217, float %9216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9227 = call float @dx.op.dot3.f32(i32 55, float %9222, float %9223, float %9224, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9228 = select i1 %260, float %9226, float %9218
  %9229 = select i1 %260, float %9226, float %9217
  %9230 = select i1 %260, float 1.000000e+00, float %9216
  %9231 = select i1 %260, float %9227, float %9222
  %9232 = select i1 %260, float 0.000000e+00, float %9223
  %9233 = select i1 %260, float 0.000000e+00, float %9224
  %9234 = fmul fast float %9228, %8452
  %9235 = fmul fast float %9229, %8453
  %9236 = fmul fast float %9230, %8454
  %9237 = fadd fast float %9234, %9231
  %9238 = fadd fast float %9235, %9232
  %9239 = fadd fast float %9233, %9236
  %9240 = fmul fast float %9228, %8455
  %9241 = fmul fast float %9229, %8456
  %9242 = fmul fast float %9230, %8457
  %9243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.i32 %9243, 0
  %9245 = icmp eq i32 %9244, 0
  br i1 %9245, label %9613, label %9246, !dx.controlflow.hints !180

; <label>:9246                                    ; preds = %9215
  %9247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9248 = extractvalue %dx.types.CBufRet.f32 %9247, 2
  %9249 = extractvalue %dx.types.CBufRet.f32 %9247, 3
  %9250 = fmul fast float %9248, %114
  %9251 = fmul fast float %9249, %115
  %9252 = fmul fast float %9250, 2.000000e+00
  %9253 = fmul fast float %9251, 2.000000e+00
  %9254 = fsub fast float 1.000000e+00, %9252
  %9255 = fsub fast float 1.000000e+00, %9253
  %9256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9256, 0
  %9258 = extractvalue %dx.types.CBufRet.f32 %9256, 1
  %9259 = extractvalue %dx.types.CBufRet.f32 %9256, 2
  %9260 = fmul fast float %9254, %9257
  %9261 = fmul fast float %9254, %9258
  %9262 = fmul fast float %9254, %9259
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 0
  %9265 = extractvalue %dx.types.CBufRet.f32 %9263, 1
  %9266 = extractvalue %dx.types.CBufRet.f32 %9263, 2
  %9267 = fmul fast float %9255, %9264
  %9268 = fmul fast float %9255, %9265
  %9269 = fmul fast float %9255, %9266
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 0
  %9272 = extractvalue %dx.types.CBufRet.f32 %9270, 1
  %9273 = extractvalue %dx.types.CBufRet.f32 %9270, 2
  %9274 = fadd fast float %9267, %9271
  %9275 = fadd fast float %9274, %9260
  %9276 = fadd fast float %9268, %9272
  %9277 = fadd fast float %9276, %9261
  %9278 = fadd fast float %9269, %9273
  %9279 = fadd fast float %9278, %9262
  %9280 = fmul fast float %9275, %8451
  %9281 = fmul fast float %9277, %8451
  %9282 = fmul fast float %9279, %8451
  %9283 = fmul fast float %9280, %9280
  %9284 = fmul fast float %9281, %9281
  %9285 = fadd fast float %9283, %9284
  %9286 = fmul fast float %9282, %9282
  %9287 = fadd fast float %9285, %9286
  %9288 = call float @dx.op.unary.f32(i32 24, float %9287)  ; Sqrt(value)
  %9289 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %9290 = fsub fast float %9288, %9289
  %9291 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %9292 = fmul fast float %9290, %9291
  %9293 = call float @dx.op.unary.f32(i32 7, float %9292)  ; Saturate(value)
  %9294 = fadd fast float %9293, -5.000000e-01
  %9295 = fmul fast float %9294, 2.000000e+00
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 2
  %9298 = call float @dx.op.binary.f32(i32 36, float %9297, float %9295)  ; FMin(a,b)
  %9299 = fsub fast float -0.000000e+00, %9297
  %9300 = fcmp fast ogt float %9298, %9299
  br i1 %9300, label %9301, label %9613, !dx.controlflow.hints !181

; <label>:9301                                    ; preds = %9246
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 3
  %9304 = fcmp fast ogt float %9303, 0.000000e+00
  br i1 %9304, label %9305, label %9380, !dx.controlflow.hints !182

; <label>:9305                                    ; preds = %9301
  %9306 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9307 = extractvalue %dx.types.Dimensions %9306, 0
  %9308 = sitofp i32 %9307 to float
  %9309 = extractvalue %dx.types.Dimensions %9306, 1
  %9310 = sitofp i32 %9309 to float
  %9311 = fmul fast float %9250, %9308
  %9312 = fmul fast float %9251, %9310
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9315 = fsub fast float -0.000000e+00, %9314
  %9316 = fptoui float %9315 to i32
  %9317 = fptoui float %9311 to i32
  %9318 = fptoui float %9312 to i32
  %9319 = and i32 %9316, 31
  %9320 = lshr i32 %9317, %9319
  %9321 = lshr i32 %9318, %9319
  %9322 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9316, i32 %9320, i32 %9321, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9323 = extractvalue %dx.types.ResRet.f32 %9322, 0
  %9324 = fcmp fast olt float %9323, -1.000000e+00
  %9325 = fcmp fast ogt float %9323, -1.000000e+00
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 1
  %9328 = select i1 %9325, float %9327, float 1.000000e+00
  %9329 = fadd fast float %9323, 1.000000e+00
  %9330 = fmul fast float %9328, %9329
  %9331 = call float @dx.op.unary.f32(i32 6, float %9330)  ; FAbs(value)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9326, 3
  %9333 = fcmp fast oge float %9331, %9332
  %9334 = select i1 %9333, float 0x4197782600000000, float %9331
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 0
  %9337 = extractvalue %dx.types.CBufRet.f32 %9335, 1
  %9338 = extractvalue %dx.types.CBufRet.f32 %9335, 2
  %9339 = select i1 %9324, float %9336, float %9257
  %9340 = select i1 %9324, float %9337, float %9258
  %9341 = select i1 %9324, float %9338, float %9259
  %9342 = fmul fast float %9339, %9254
  %9343 = fmul fast float %9340, %9254
  %9344 = fmul fast float %9341, %9254
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 0
  %9347 = extractvalue %dx.types.CBufRet.f32 %9345, 1
  %9348 = extractvalue %dx.types.CBufRet.f32 %9345, 2
  %9349 = select i1 %9324, float %9346, float %9264
  %9350 = select i1 %9324, float %9347, float %9265
  %9351 = select i1 %9324, float %9348, float %9266
  %9352 = fmul fast float %9349, %9255
  %9353 = fmul fast float %9350, %9255
  %9354 = fmul fast float %9351, %9255
  %9355 = fadd fast float %9352, %9342
  %9356 = fadd fast float %9353, %9343
  %9357 = fadd fast float %9354, %9344
  %9358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9359 = extractvalue %dx.types.CBufRet.f32 %9358, 0
  %9360 = extractvalue %dx.types.CBufRet.f32 %9358, 1
  %9361 = extractvalue %dx.types.CBufRet.f32 %9358, 2
  %9362 = select i1 %9324, float %9359, float %9271
  %9363 = select i1 %9324, float %9360, float %9272
  %9364 = select i1 %9324, float %9361, float %9273
  %9365 = fadd fast float %9355, %9362
  %9366 = fadd fast float %9356, %9363
  %9367 = fadd fast float %9357, %9364
  %9368 = fmul fast float %9365, %9334
  %9369 = fmul fast float %9366, %9334
  %9370 = fmul fast float %9367, %9334
  %9371 = fmul fast float %9368, %9368
  %9372 = fmul fast float %9369, %9369
  %9373 = fadd fast float %9371, %9372
  %9374 = fmul fast float %9370, %9370
  %9375 = fadd fast float %9373, %9374
  %9376 = call float @dx.op.unary.f32(i32 24, float %9375)  ; Sqrt(value)
  %9377 = fsub fast float %9376, %9289
  %9378 = fmul fast float %9377, %9291
  %9379 = call float @dx.op.unary.f32(i32 7, float %9378)  ; Saturate(value)
  br label %9380

; <label>:9380                                    ; preds = %9305, %9301
  %9381 = phi float [ %9379, %9305 ], [ 1.000000e+00, %9301 ]
  %9382 = fmul fast float %9298, 5.000000e-01
  %9383 = fadd fast float %9382, 5.000000e-01
  %9384 = call float @dx.op.unary.f32(i32 22, float %9383)  ; Frc(value)
  %9385 = call float @dx.op.unary.f32(i32 27, float %9384)  ; Round_ni(value)
  %9386 = call float @dx.op.unary.f32(i32 22, float %9384)  ; Frc(value)
  %9387 = fmul fast float %9386, 2.000000e+00
  %9388 = fadd fast float %9387, -1.000000e+00
  %9389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9250, float %9251, float %9385, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9390 = extractvalue %dx.types.ResRet.f32 %9389, 0
  %9391 = extractvalue %dx.types.ResRet.f32 %9389, 1
  %9392 = extractvalue %dx.types.ResRet.f32 %9389, 2
  %9393 = extractvalue %dx.types.ResRet.f32 %9389, 3
  %9394 = fadd fast float %9390, -5.000000e-01
  %9395 = fadd fast float %9392, -5.000000e-01
  %9396 = fmul fast float %9394, 0xBFD5555560000000
  %9397 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9395, float %9396)  ; FMad(a,b,c)
  %9398 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9391, float 0.000000e+00)  ; FMad(a,b,c)
  %9399 = fadd fast float %9398, %9393
  %9400 = fmul fast float %9394, -7.500000e-01
  %9401 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9395, float %9400)  ; FMad(a,b,c)
  %9402 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9391, float 0.000000e+00)  ; FMad(a,b,c)
  %9403 = fadd fast float %9402, %9393
  %9404 = call float @dx.op.binary.f32(i32 35, float %9397, float -1.000000e+00)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 35, float %9399, float -1.000000e+00)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 35, float %9401, float -1.000000e+00)  ; FMax(a,b)
  %9407 = call float @dx.op.binary.f32(i32 35, float %9403, float -1.000000e+00)  ; FMax(a,b)
  %9408 = call float @dx.op.binary.f32(i32 36, float %9404, float 1.000000e+00)  ; FMin(a,b)
  %9409 = call float @dx.op.binary.f32(i32 36, float %9405, float 1.000000e+00)  ; FMin(a,b)
  %9410 = call float @dx.op.binary.f32(i32 36, float %9406, float 1.000000e+00)  ; FMin(a,b)
  %9411 = call float @dx.op.binary.f32(i32 36, float %9407, float 1.000000e+00)  ; FMin(a,b)
  %9412 = fcmp fast olt float %9408, 0x3FEFFF8020000000
  br i1 %9412, label %9413, label %9528, !dx.controlflow.hints !183

; <label>:9413                                    ; preds = %9380
  %9414 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9416 = extractvalue %dx.types.CBufRet.f32 %9415, 0
  %9417 = extractvalue %dx.types.CBufRet.f32 %9415, 1
  %9418 = extractvalue %dx.types.CBufRet.f32 %9415, 2
  %9419 = extractvalue %dx.types.CBufRet.f32 %9415, 3
  %9420 = fsub fast float %9416, %9408
  %9421 = fsub fast float %9417, %9409
  %9422 = fsub fast float %9418, %9410
  %9423 = fsub fast float %9419, %9411
  %9424 = fmul fast float %9420, %9414
  %9425 = fmul fast float %9421, %9414
  %9426 = fmul fast float %9422, %9414
  %9427 = fmul fast float %9423, %9414
  %9428 = fadd fast float %9424, %9408
  %9429 = fadd fast float %9425, %9409
  %9430 = fsub fast float -0.000000e+00, %9429
  %9431 = fadd fast float %9426, %9410
  %9432 = fadd fast float %9427, %9411
  %9433 = fmul fast float %9428, %9428
  %9434 = fsub fast float %9429, %9433
  %9435 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9434)  ; FMax(a,b)
  %9436 = fdiv fast float 1.000000e+00, %9435
  %9437 = fmul fast float %9429, %9428
  %9438 = fsub fast float %9431, %9437
  %9439 = fsub fast float %9388, %9428
  %9440 = fmul fast float %9388, %9388
  %9441 = fsub fast float %9440, %9429
  %9442 = fmul fast float %9439, %9436
  %9443 = fmul fast float %9442, %9438
  %9444 = fsub fast float %9441, %9443
  %9445 = fmul fast float %9429, %9429
  %9446 = fsub fast float %9432, %9445
  %9447 = fmul fast float %9438, %9438
  %9448 = fmul fast float %9447, %9436
  %9449 = fsub fast float %9446, %9448
  %9450 = fdiv fast float %9444, %9449
  %9451 = fmul fast float %9438, %9450
  %9452 = fsub fast float %9439, %9451
  %9453 = fmul fast float %9452, %9436
  %9454 = fmul fast float %9453, %9428
  %9455 = fsub fast float 1.000000e+00, %9454
  %9456 = fmul fast float %9429, %9450
  %9457 = fsub fast float %9455, %9456
  %9458 = fmul fast float %9453, %9453
  %9459 = fmul fast float %9450, 4.000000e+00
  %9460 = fmul fast float %9459, %9457
  %9461 = fsub fast float %9458, %9460
  %9462 = call float @dx.op.unary.f32(i32 24, float %9461)  ; Sqrt(value)
  %9463 = fcmp fast oge float %9453, 0.000000e+00
  %9464 = fsub fast float -0.000000e+00, %9462
  %9465 = select i1 %9463, float %9464, float %9462
  %9466 = fsub fast float %9465, %9453
  %9467 = fdiv fast float %9466, %9450
  %9468 = fdiv fast float %9457, %9466
  %9469 = fmul fast float %9467, 5.000000e-01
  %9470 = fmul fast float %9468, 2.000000e+00
  %9471 = select i1 %9463, float %9469, float %9470
  %9472 = select i1 %9463, float %9470, float %9469
  %9473 = call float @dx.op.binary.f32(i32 35, float %9471, float %9472)  ; FMax(a,b)
  %9474 = call float @dx.op.binary.f32(i32 36, float %9471, float %9472)  ; FMin(a,b)
  %9475 = fcmp fast ogt float %9388, %9474
  br i1 %9475, label %9476, label %9486

; <label>:9476                                    ; preds = %9413
  %9477 = fsub fast float %9388, %9474
  %9478 = fsub fast float %9473, %9474
  %9479 = fmul fast float %9477, %9478
  %9480 = fmul fast float %9473, %9388
  %9481 = fadd fast float %9473, %9388
  %9482 = fmul fast float %9481, %9428
  %9483 = fadd fast float %9480, %9429
  %9484 = fsub fast float %9483, %9482
  %9485 = fdiv fast float %9484, %9479
  br label %9486

; <label>:9486                                    ; preds = %9476, %9413
  %9487 = phi float [ %9485, %9476 ], [ 0.000000e+00, %9413 ]
  %9488 = fcmp fast ogt float %9388, %9473
  %9489 = fsub fast float %9388, %9473
  br i1 %9488, label %9490, label %9500

; <label>:9490                                    ; preds = %9486
  %9491 = fsub fast float %9473, %9474
  %9492 = fmul fast float %9491, %9489
  %9493 = fmul fast float %9474, %9388
  %9494 = fadd fast float %9474, %9388
  %9495 = fmul fast float %9494, %9428
  %9496 = fsub fast float %9430, %9493
  %9497 = fadd fast float %9496, %9495
  %9498 = fdiv fast float %9497, %9492
  %9499 = fadd fast float %9498, %9487
  br label %9500

; <label>:9500                                    ; preds = %9490, %9486
  %9501 = phi float [ %9499, %9490 ], [ %9487, %9486 ]
  %9502 = fsub fast float %9388, %9474
  %9503 = fmul fast float %9502, %9489
  %9504 = fmul fast float %9474, %9473
  %9505 = fadd fast float %9474, %9473
  %9506 = fmul fast float %9505, %9428
  %9507 = fadd fast float %9504, %9429
  %9508 = fsub fast float %9507, %9506
  %9509 = fdiv fast float %9508, %9503
  %9510 = call float @dx.op.unary.f32(i32 7, float %9501)  ; Saturate(value)
  %9511 = fcmp fast oeq float %8179, 0.000000e+00
  %9512 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9513 = fcmp fast oeq float %9512, 0.000000e+00
  %9514 = or i1 %9511, %9513
  %9515 = fmul fast float %9512, 2.000000e+00
  %9516 = fadd fast float %9297, %9298
  %9517 = fdiv fast float %9516, %9515
  %9518 = call float @dx.op.unary.f32(i32 7, float %9517)  ; Saturate(value)
  %9519 = fmul fast float %9518, 2.000000e+00
  %9520 = fsub fast float 3.000000e+00, %9519
  %9521 = fmul fast float %9518, %9518
  %9522 = fmul fast float %9521, %9520
  %9523 = select i1 %9514, float 1.000000e+00, float %9522
  %9524 = fmul fast float %9509, %8179
  %9525 = fadd fast float %9510, %9524
  %9526 = call float @dx.op.unary.f32(i32 7, float %9525)  ; Saturate(value)
  %9527 = fmul fast float %9523, %9526
  br label %9528

; <label>:9528                                    ; preds = %9500, %9380
  %9529 = phi float [ %9527, %9500 ], [ 0.000000e+00, %9380 ]
  %9530 = fsub fast float 1.000000e+00, %9529
  %9531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9250, float %9251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9532 = extractvalue %dx.types.ResRet.f32 %9531, 0
  %9533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.i32 %9533, 2
  %9535 = icmp eq i32 %9534, 0
  br i1 %9535, label %9541, label %9536

; <label>:9536                                    ; preds = %9528
  %9537 = call float @dx.op.unary.f32(i32 7, float %9529)  ; Saturate(value)
  %9538 = fadd fast float %9532, -1.000000e+00
  %9539 = fmul fast float %9537, %9538
  %9540 = fadd fast float %9539, 1.000000e+00
  br label %9541

; <label>:9541                                    ; preds = %9536, %9528
  %9542 = phi float [ %9540, %9536 ], [ %9530, %9528 ]
  br i1 %9304, label %9543, label %9561

; <label>:9543                                    ; preds = %9541
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9546 = fsub fast float %9381, %9545
  %9547 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9548 = fsub fast float %9381, %9303
  %9549 = call float @dx.op.unary.f32(i32 7, float %9548)  ; Saturate(value)
  %9550 = fsub fast float %9547, %9549
  %9551 = fsub fast float %9383, %9549
  %9552 = fdiv fast float %9551, %9550
  %9553 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9554 = fmul fast float %9553, 2.000000e+00
  %9555 = fsub fast float 3.000000e+00, %9554
  %9556 = fsub fast float %9532, %9542
  %9557 = fmul fast float %9553, %9553
  %9558 = fmul fast float %9557, %9556
  %9559 = fmul fast float %9558, %9555
  %9560 = fadd fast float %9559, %9542
  br label %9561

; <label>:9561                                    ; preds = %9543, %9541
  %9562 = phi float [ %9560, %9543 ], [ %9542, %9541 ]
  %9563 = call float @dx.op.binary.f32(i32 35, float %9532, float %9562)  ; FMax(a,b)
  %9564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.i32 %9564, 2
  %9566 = and i32 %9565, 1
  %9567 = icmp eq i32 %9566, 0
  %9568 = fcmp fast une float %9563, 1.000000e+00
  %9569 = and i1 %9568, %9567
  br i1 %9569, label %9570, label %9589

; <label>:9570                                    ; preds = %9561
  %9571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9250, float %9251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9572 = extractvalue %dx.types.ResRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.ResRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.ResRet.f32 %9571, 2
  %9575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9576 = extractvalue %dx.types.CBufRet.f32 %9575, 1
  %9577 = fmul fast float %9576, %9572
  %9578 = fmul fast float %9576, %9573
  %9579 = fmul fast float %9576, %9574
  %9580 = fcmp fast ogt float %9532, 0x3FEFFF2E40000000
  %9581 = fsub fast float 1.000000e+00, %9563
  %9582 = fsub fast float 1.000000e+00, %9532
  %9583 = fdiv fast float %9581, %9582
  %9584 = call float @dx.op.unary.f32(i32 7, float %9583)  ; Saturate(value)
  %9585 = select i1 %9580, float 0.000000e+00, float %9584
  %9586 = fmul fast float %9577, %9585
  %9587 = fmul fast float %9578, %9585
  %9588 = fmul fast float %9579, %9585
  br label %9589

; <label>:9589                                    ; preds = %9570, %9561
  %9590 = phi float [ 0.000000e+00, %9561 ], [ %9586, %9570 ]
  %9591 = phi float [ 0.000000e+00, %9561 ], [ %9587, %9570 ]
  %9592 = phi float [ 0.000000e+00, %9561 ], [ %9588, %9570 ]
  %9593 = fmul fast float %9590, %8167
  %9594 = fmul fast float %9591, %8167
  %9595 = fmul fast float %9592, %8167
  %9596 = fmul fast float %9563, %9225
  %9597 = call float @dx.op.dot3.f32(i32 55, float %9563, float %9563, float %9563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9598 = call float @dx.op.dot3.f32(i32 55, float %9593, float %9594, float %9595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9599 = select i1 %260, float %9597, float %9563
  %9600 = select i1 %260, float 1.000000e+00, float %9563
  %9601 = select i1 %260, float %9598, float %9593
  %9602 = select i1 %260, float 0.000000e+00, float %9594
  %9603 = select i1 %260, float 0.000000e+00, float %9595
  %9604 = fmul fast float %9599, %9237
  %9605 = fmul fast float %9599, %9238
  %9606 = fmul fast float %9600, %9239
  %9607 = fadd fast float %9604, %9601
  %9608 = fadd fast float %9605, %9602
  %9609 = fadd fast float %9603, %9606
  %9610 = fmul fast float %9599, %9240
  %9611 = fmul fast float %9599, %9241
  %9612 = fmul fast float %9600, %9242
  br label %9613

; <label>:9613                                    ; preds = %9589, %9246, %9215, %8447
  %9614 = phi float [ %8452, %8447 ], [ %9237, %9215 ], [ %9607, %9589 ], [ %9237, %9246 ]
  %9615 = phi float [ %8453, %8447 ], [ %9238, %9215 ], [ %9608, %9589 ], [ %9238, %9246 ]
  %9616 = phi float [ %8454, %8447 ], [ %9239, %9215 ], [ %9609, %9589 ], [ %9239, %9246 ]
  %9617 = phi float [ %8455, %8447 ], [ %9240, %9215 ], [ %9610, %9589 ], [ %9240, %9246 ]
  %9618 = phi float [ %8456, %8447 ], [ %9241, %9215 ], [ %9611, %9589 ], [ %9241, %9246 ]
  %9619 = phi float [ %8457, %8447 ], [ %9242, %9215 ], [ %9612, %9589 ], [ %9242, %9246 ]
  %9620 = phi float [ %8458, %8447 ], [ %9225, %9215 ], [ %9596, %9589 ], [ %9225, %9246 ]
  %9621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9622 = extractvalue %dx.types.CBufRet.f32 %9621, 2
  %9623 = extractvalue %dx.types.CBufRet.f32 %9621, 3
  %9624 = fmul fast float %9622, %114
  %9625 = fmul fast float %9623, %115
  %9626 = call float @dx.op.unary.f32(i32 7, float %9624)  ; Saturate(value)
  %9627 = call float @dx.op.unary.f32(i32 7, float %9625)  ; Saturate(value)
  %9628 = select i1 %8189, i32 2, i32 0
  %9629 = or i32 %9628, 1
  %9630 = uitofp i32 %9629 to float
  %9631 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9626, float %9627, float %9630, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9632 = extractvalue %dx.types.ResRet.f32 %9631, 0
  %9633 = extractvalue %dx.types.ResRet.f32 %9631, 1
  %9634 = extractvalue %dx.types.ResRet.f32 %9631, 2
  %9635 = extractvalue %dx.types.ResRet.f32 %9631, 3
  %9636 = add nuw nsw i32 %9628, 2
  %9637 = uitofp i32 %9636 to float
  %9638 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9626, float %9627, float %9637, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9639 = extractvalue %dx.types.ResRet.f32 %9638, 0
  %9640 = extractvalue %dx.types.ResRet.f32 %9638, 1
  %9641 = extractvalue %dx.types.ResRet.f32 %9638, 2
  %9642 = extractvalue %dx.types.ResRet.f32 %9638, 3
  %9643 = call float @dx.op.binary.f32(i32 35, float %9633, float %9634)  ; FMax(a,b)
  %9644 = call float @dx.op.binary.f32(i32 35, float %9632, float %9643)  ; FMax(a,b)
  %9645 = call float @dx.op.binary.f32(i32 35, float %9644, float %9635)  ; FMax(a,b)
  %9646 = call float @dx.op.binary.f32(i32 36, float %9640, float %9641)  ; FMin(a,b)
  %9647 = call float @dx.op.binary.f32(i32 36, float %9639, float %9646)  ; FMin(a,b)
  %9648 = call float @dx.op.binary.f32(i32 36, float %9647, float %9642)  ; FMin(a,b)
  %9649 = fmul fast float %9645, 2.550000e+02
  %9650 = fadd fast float %9649, 0x3F70101020000000
  %9651 = fptoui float %9650 to i32
  %9652 = fmul fast float %9648, 2.550000e+02
  %9653 = fadd fast float %9652, 0x3F70101020000000
  %9654 = fptoui float %9653 to i32
  %9655 = icmp ult i32 %9651, %9654
  br i1 %9655, label %9656, label %9825

; <label>:9656                                    ; preds = %9613
  %9657 = fcmp fast ogt float %100, 9.843750e-01
  %9658 = fadd fast float %8451, -4.000000e+00
  %9659 = select i1 %9657, float -4.000000e+00, float %9658
  %9660 = call float @dx.op.binary.f32(i32 35, float %9659, float 0.000000e+00)  ; FMax(a,b)
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 0
  %9663 = fadd fast float %9662, %9660
  %9664 = extractvalue %dx.types.CBufRet.f32 %9661, 2
  %9665 = fmul fast float %9663, %9664
  %9666 = call float @dx.op.unary.f32(i32 23, float %9665)  ; Log(value)
  %9667 = extractvalue %dx.types.CBufRet.f32 %9661, 3
  %9668 = fmul fast float %9667, %9666
  %9669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9670 = extractvalue %dx.types.CBufRet.f32 %9669, 2
  %9671 = fmul fast float %9668, %9670
  %9672 = call float @dx.op.unary.f32(i32 7, float %9671)  ; Saturate(value)
  %9673 = uitofp i32 %9651 to float
  %9674 = uitofp i32 %9654 to float
  %9675 = fadd fast float %9673, 5.000000e-01
  %9676 = fadd fast float %9674, 5.000000e-01
  %9677 = fmul fast float %9670, %9675
  %9678 = fmul fast float %9670, %9676
  %9679 = fadd fast float %9677, 0x3F0FFB4800000000
  %9680 = fadd fast float %9678, 0xBF0FFB4800000000
  %9681 = call float @dx.op.binary.f32(i32 35, float %9672, float %9679)  ; FMax(a,b)
  %9682 = call float @dx.op.binary.f32(i32 36, float %9681, float %9680)  ; FMin(a,b)
  %9683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9684 = extractvalue %dx.types.CBufRet.f32 %9683, 1
  %9685 = extractvalue %dx.types.CBufRet.f32 %9683, 2
  %9686 = extractvalue %dx.types.CBufRet.f32 %9683, 0
  %9687 = select i1 %8189, float %9686, float 0.000000e+00
  %9688 = fmul fast float %9684, %9682
  %9689 = fadd fast float %9687, %9688
  %9690 = fadd fast float %9687, %9685
  %9691 = fsub fast float %9684, %9685
  %9692 = fadd fast float %9691, %9687
  %9693 = call float @dx.op.binary.f32(i32 35, float %9689, float %9690)  ; FMax(a,b)
  %9694 = call float @dx.op.binary.f32(i32 36, float %9693, float %9692)  ; FMin(a,b)
  %9695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9626, float %9627, float %9694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9696 = extractvalue %dx.types.ResRet.f32 %9695, 0
  %9697 = extractvalue %dx.types.ResRet.f32 %9695, 1
  %9698 = extractvalue %dx.types.ResRet.f32 %9695, 2
  %9699 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9700 = extractvalue %dx.types.CBufRet.i32 %9699, 0
  %9701 = extractvalue %dx.types.CBufRet.i32 %9699, 1
  %9702 = uitofp i32 %9700 to float
  %9703 = uitofp i32 %9701 to float
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = extractvalue %dx.types.CBufRet.f32 %9704, 1
  %9707 = fmul fast float %9702, %9626
  %9708 = fmul fast float %9703, %9627
  %9709 = fadd fast float %9707, -5.000000e-01
  %9710 = fadd fast float %9708, -5.000000e-01
  %9711 = call float @dx.op.unary.f32(i32 22, float %9709)  ; Frc(value)
  %9712 = call float @dx.op.unary.f32(i32 22, float %9710)  ; Frc(value)
  %9713 = fmul fast float %9711, %9711
  %9714 = fmul fast float %9713, %9711
  %9715 = fsub fast float 3.000000e+00, %9711
  %9716 = fmul fast float %9713, %9715
  %9717 = fmul fast float %9711, 3.000000e+00
  %9718 = fmul fast float %9714, 3.000000e+00
  %9719 = fmul fast float %9713, 6.000000e+00
  %9720 = fsub fast float %9718, %9719
  %9721 = fadd fast float %9720, 4.000000e+00
  %9722 = fmul fast float %9721, 0x3FC5555560000000
  %9723 = fmul fast float %9714, -3.000000e+00
  %9724 = fadd fast float %9713, %9711
  %9725 = fmul fast float %9724, 3.000000e+00
  %9726 = fadd fast float %9723, 1.000000e+00
  %9727 = fadd fast float %9726, %9725
  %9728 = fmul fast float %9714, 0x3FC5555560000000
  %9729 = fmul fast float %9712, %9712
  %9730 = fmul fast float %9729, %9712
  %9731 = fsub fast float 3.000000e+00, %9712
  %9732 = fmul fast float %9729, %9731
  %9733 = fmul fast float %9712, 3.000000e+00
  %9734 = fmul fast float %9730, 3.000000e+00
  %9735 = fmul fast float %9729, 6.000000e+00
  %9736 = fsub fast float %9734, %9735
  %9737 = fadd fast float %9736, 4.000000e+00
  %9738 = fmul fast float %9737, 0x3FC5555560000000
  %9739 = fmul fast float %9730, -3.000000e+00
  %9740 = fadd fast float %9729, %9712
  %9741 = fmul fast float %9740, 3.000000e+00
  %9742 = fadd fast float %9739, 1.000000e+00
  %9743 = fadd fast float %9742, %9741
  %9744 = fmul fast float %9730, 0x3FC5555560000000
  %9745 = fadd fast float %9711, 1.000000e+00
  %9746 = fsub fast float 1.000000e+00, %9717
  %9747 = fadd fast float %9746, %9716
  %9748 = fadd fast float %9747, %9721
  %9749 = fmul fast float %9748, 0x3FC5555560000000
  %9750 = fdiv fast float %9722, %9749
  %9751 = fsub fast float %9745, %9750
  %9752 = fsub fast float 1.000000e+00, %9711
  %9753 = fadd fast float %9727, %9714
  %9754 = fmul fast float %9753, 0x3FC5555560000000
  %9755 = fdiv fast float %9728, %9754
  %9756 = fadd fast float %9752, %9755
  %9757 = fadd fast float %9712, 1.000000e+00
  %9758 = fsub fast float 1.000000e+00, %9733
  %9759 = fadd fast float %9758, %9732
  %9760 = fadd fast float %9759, %9737
  %9761 = fmul fast float %9760, 0x3FC5555560000000
  %9762 = fdiv fast float %9738, %9761
  %9763 = fsub fast float %9757, %9762
  %9764 = fsub fast float 1.000000e+00, %9712
  %9765 = fadd fast float %9743, %9730
  %9766 = fmul fast float %9765, 0x3FC5555560000000
  %9767 = fdiv fast float %9744, %9766
  %9768 = fadd fast float %9767, %9764
  %9769 = fmul fast float %9751, %9705
  %9770 = fsub fast float %9626, %9769
  %9771 = fmul fast float %9756, %9705
  %9772 = fadd fast float %9771, %9626
  %9773 = fmul fast float %9768, %9706
  %9774 = fadd fast float %9773, %9627
  %9775 = fmul fast float %9763, %9706
  %9776 = fsub fast float %9627, %9775
  %9777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9770, float %9776, float %9694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9778 = extractvalue %dx.types.ResRet.f32 %9777, 0
  %9779 = extractvalue %dx.types.ResRet.f32 %9777, 1
  %9780 = extractvalue %dx.types.ResRet.f32 %9777, 2
  %9781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9772, float %9776, float %9694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9782 = extractvalue %dx.types.ResRet.f32 %9781, 0
  %9783 = extractvalue %dx.types.ResRet.f32 %9781, 1
  %9784 = extractvalue %dx.types.ResRet.f32 %9781, 2
  %9785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9770, float %9774, float %9694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9786 = extractvalue %dx.types.ResRet.f32 %9785, 0
  %9787 = extractvalue %dx.types.ResRet.f32 %9785, 1
  %9788 = extractvalue %dx.types.ResRet.f32 %9785, 2
  %9789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9772, float %9774, float %9694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9790 = extractvalue %dx.types.ResRet.f32 %9789, 0
  %9791 = extractvalue %dx.types.ResRet.f32 %9789, 1
  %9792 = extractvalue %dx.types.ResRet.f32 %9789, 2
  %9793 = fsub fast float %9786, %9778
  %9794 = fsub fast float %9787, %9779
  %9795 = fsub fast float %9788, %9780
  %9796 = fmul fast float %9793, %9766
  %9797 = fmul fast float %9794, %9766
  %9798 = fmul fast float %9795, %9766
  %9799 = fadd fast float %9796, %9778
  %9800 = fadd fast float %9797, %9779
  %9801 = fadd fast float %9798, %9780
  %9802 = fsub fast float %9790, %9782
  %9803 = fsub fast float %9791, %9783
  %9804 = fsub fast float %9792, %9784
  %9805 = fmul fast float %9802, %9766
  %9806 = fmul fast float %9803, %9766
  %9807 = fmul fast float %9804, %9766
  %9808 = fsub fast float %9782, %9799
  %9809 = fadd fast float %9808, %9805
  %9810 = fsub fast float %9783, %9800
  %9811 = fadd fast float %9810, %9806
  %9812 = fsub fast float %9784, %9801
  %9813 = fadd fast float %9812, %9807
  %9814 = fmul fast float %9809, %9754
  %9815 = fmul fast float %9811, %9754
  %9816 = fmul fast float %9813, %9754
  %9817 = fadd fast float %9814, %9799
  %9818 = fadd fast float %9815, %9800
  %9819 = fadd fast float %9816, %9801
  %9820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9821 = extractvalue %dx.types.CBufRet.f32 %9820, 1
  %9822 = fmul fast float %9817, %9821
  %9823 = fmul fast float %9818, %9821
  %9824 = fmul fast float %9819, %9821
  br label %9825

; <label>:9825                                    ; preds = %9656, %9613
  %9826 = phi float [ %9696, %9656 ], [ 1.000000e+00, %9613 ]
  %9827 = phi float [ %9697, %9656 ], [ 1.000000e+00, %9613 ]
  %9828 = phi float [ %9698, %9656 ], [ 1.000000e+00, %9613 ]
  %9829 = phi float [ %9822, %9656 ], [ 0.000000e+00, %9613 ]
  %9830 = phi float [ %9823, %9656 ], [ 0.000000e+00, %9613 ]
  %9831 = phi float [ %9824, %9656 ], [ 0.000000e+00, %9613 ]
  %9832 = fmul fast float %9829, %8167
  %9833 = fmul fast float %9830, %8167
  %9834 = fmul fast float %9831, %8167
  %9835 = fmul fast float %9826, %9620
  %9836 = call float @dx.op.dot3.f32(i32 55, float %9826, float %9827, float %9828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9837 = call float @dx.op.dot3.f32(i32 55, float %9832, float %9833, float %9834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9838 = select i1 %260, float %9836, float %9826
  %9839 = select i1 %260, float %9836, float %9827
  %9840 = select i1 %260, float 1.000000e+00, float %9828
  %9841 = select i1 %260, float %9837, float %9832
  %9842 = select i1 %260, float 0.000000e+00, float %9833
  %9843 = select i1 %260, float 0.000000e+00, float %9834
  %9844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.i32 %9844, 3
  %9846 = and i32 %9845, 3
  %9847 = icmp ne i32 %9846, 0
  %9848 = and i32 %9845, 4
  %9849 = icmp ne i32 %9848, 0
  %9850 = and i1 %9847, %9849
  %9851 = and i1 %260, %9850
  br i1 %9851, label %9852, label %9858

; <label>:9852                                    ; preds = %9825
  %9853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9854 = extractvalue %dx.types.CBufRet.f32 %9853, 1
  %9855 = fadd fast float %9835, -1.000000e+00
  %9856 = fmul fast float %9854, %9855
  %9857 = fadd fast float %9856, 1.000000e+00
  br label %9858

; <label>:9858                                    ; preds = %9852, %9825
  %9859 = phi float [ %9857, %9852 ], [ %9835, %9825 ]
  %9860 = fadd fast float %9617, %9614
  %9861 = fmul fast float %9838, %9860
  %9862 = fadd fast float %9861, %9841
  %9863 = fadd fast float %9618, %9615
  %9864 = fmul fast float %9839, %9863
  %9865 = fadd fast float %9864, %9842
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 0
  br i1 %260, label %9868, label %9892

; <label>:9868                                    ; preds = %9858
  %9869 = fadd fast float %9862, %9865
  %9870 = fmul fast float %9867, %9869
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 3
  %9873 = extractvalue %dx.types.CBufRet.f32 %8171, 1
  %9874 = fsub fast float %8176, %8170
  %9875 = fadd fast float %9874, %8177
  %9876 = fsub fast float %9875, %9873
  %9877 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %9878 = fmul fast float %9876, %9877
  %9879 = call float @dx.op.unary.f32(i32 7, float %9878)  ; Saturate(value)
  %9880 = fsub fast float %9879, %9872
  %9881 = fmul fast float %9880, %9859
  %9882 = fadd fast float %9881, %9872
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 0
  %9885 = fsub fast float %9882, %9884
  %9886 = fmul fast float %9885, 1.000000e+01
  %9887 = call float @dx.op.unary.f32(i32 7, float %9886)  ; Saturate(value)
  %9888 = fsub fast float %3860, %8167
  %9889 = fmul fast float %9887, %9888
  %9890 = fadd fast float %9889, %8167
  %9891 = fmul fast float %9890, %9882
  br label %9916

; <label>:9892                                    ; preds = %9858
  %9893 = fadd fast float %9619, %9616
  %9894 = fmul fast float %9840, %9893
  %9895 = fadd fast float %9894, %9843
  %9896 = fmul fast float %9867, %9862
  %9897 = fmul fast float %9867, %9865
  %9898 = fmul fast float %9867, %9895
  %9899 = call float @dx.op.binary.f32(i32 35, float %9897, float %9898)  ; FMax(a,b)
  %9900 = call float @dx.op.binary.f32(i32 35, float %9896, float %9899)  ; FMax(a,b)
  %9901 = call float @dx.op.binary.f32(i32 35, float %9900, float %8167)  ; FMax(a,b)
  %9902 = fcmp fast ugt float %9901, 0x3F10000000000000
  br i1 %9902, label %9904, label %9903

; <label>:9903                                    ; preds = %9892
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9904

; <label>:9904                                    ; preds = %9903, %9892
  %9905 = add i32 %60, 356
  %9906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9905, i32 undef)  ; BufferLoad(srv,index,wot)
  %9907 = extractvalue %dx.types.ResRet.i32 %9906, 0
  %9908 = and i32 %9907, 32
  %9909 = icmp eq i32 %9908, 0
  br i1 %9909, label %9916, label %9910

; <label>:9910                                    ; preds = %9904
  %9911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9912 = extractvalue %dx.types.CBufRet.f32 %9911, 0
  %9913 = fmul fast float %9912, 0x3FE99999A0000000
  %9914 = fadd fast float %9912, %9896
  %9915 = fadd fast float %9913, %9898
  br label %9916

; <label>:9916                                    ; preds = %9910, %9904, %9868
  %9917 = phi float [ %9870, %9868 ], [ %9914, %9910 ], [ %9896, %9904 ]
  %9918 = phi float [ %9891, %9868 ], [ %9897, %9910 ], [ %9897, %9904 ]
  %9919 = phi float [ %9890, %9868 ], [ %9915, %9910 ], [ %9898, %9904 ]
  %9920 = phi float [ %9890, %9868 ], [ %8167, %9910 ], [ %8167, %9904 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9921 = call float @dx.op.binary.f32(i32 36, float %9917, float 3.225500e+04)  ; FMin(a,b)
  %9922 = call float @dx.op.binary.f32(i32 36, float %9918, float 3.225500e+04)  ; FMin(a,b)
  %9923 = call float @dx.op.binary.f32(i32 36, float %9919, float 3.225500e+04)  ; FMin(a,b)
  %9924 = call float @dx.op.binary.f32(i32 36, float %9920, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9923)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9924)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

