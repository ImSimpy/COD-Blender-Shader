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
; shader hash: d3de6cf1bb1fb816aeffe836dedb767a
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
  %454 = add i32 %60, 472
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
  %1173 = add i32 %60, 428
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
  %1225 = add i32 %60, 412
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
  %1251 = add i32 %60, 364
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
  %1274 = add i32 %60, 444
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
  %1472 = add i32 %60, 380
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
  %1556 = add i32 %60, 396
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
  %1912 = add i32 %60, 432
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
  %1964 = add i32 %60, 416
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
  %1990 = add i32 %60, 368
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
  %2013 = add i32 %60, 448
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
  %2211 = add i32 %60, 384
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
  %2295 = add i32 %60, 400
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
  %2651 = add i32 %60, 436
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
  %2703 = add i32 %60, 420
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
  %2729 = add i32 %60, 372
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
  %2752 = add i32 %60, 452
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
  %2950 = add i32 %60, 388
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
  %3034 = add i32 %60, 404
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
  %3276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.f32 %3276, 0
  %3278 = call float @dx.op.dot2.f32(i32 54, float %3264, float %3265, float %3264, float %3265)  ; Dot2(ax,ay,bx,by)
  %3279 = fmul fast float %3278, 0x3FE3333340000000
  %3280 = fsub fast float 1.000000e+00, %3279
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3265, float %3280, float %3264, float %3265, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = call float @dx.op.unary.f32(i32 25, float %3281)  ; Rsqrt(value)
  %3283 = fmul fast float %3282, %3264
  %3284 = fmul fast float %3282, %3265
  %3285 = fmul fast float %3280, %3282
  %3286 = fmul fast float %3285, %121
  %3287 = fmul fast float %3285, %122
  %3288 = fmul fast float %3285, %123
  %3289 = fmul fast float %3283, %85
  %3290 = fmul fast float %3283, %86
  %3291 = fmul fast float %3283, %87
  %3292 = fadd fast float %3286, %3289
  %3293 = fadd fast float %3287, %3290
  %3294 = fadd fast float %3288, %3291
  %3295 = fmul fast float %133, %3284
  %3296 = fmul fast float %134, %3284
  %3297 = fmul fast float %135, %3284
  %3298 = fadd fast float %3292, %3295
  %3299 = fadd fast float %3293, %3296
  %3300 = fadd fast float %3294, %3297
  %3301 = call float @dx.op.dot3.f32(i32 55, float %3298, float %3299, float %3300, float %3298, float %3299, float %3300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3302 = call float @dx.op.unary.f32(i32 25, float %3301)  ; Rsqrt(value)
  %3303 = fmul fast float %3298, %3302
  %3304 = fmul fast float %3299, %3302
  %3305 = fmul fast float %3300, %3302
  %3306 = icmp eq i32 %61, 65535
  br i1 %3306, label %3821, label %3307

; <label>:3307                                    ; preds = %3263
  %3308 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3309 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3310 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3311 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3312 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3313 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3314 = fadd fast float %3308, %62
  %3315 = fadd fast float %3309, %63
  %3316 = fadd fast float %3310, %64
  %3317 = fadd fast float %3311, %62
  %3318 = fadd fast float %3312, %63
  %3319 = fadd fast float %3313, %64
  %3320 = mul i32 %61, 48
  %3321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3320, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = add i32 %3320, 16
  %3326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.f32 %3326, 0
  %3328 = extractvalue %dx.types.ResRet.f32 %3326, 1
  %3329 = extractvalue %dx.types.ResRet.f32 %3326, 2
  %3330 = add i32 %3320, 32
  %3331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.f32 %3331, 0
  %3333 = extractvalue %dx.types.ResRet.f32 %3331, 1
  %3334 = extractvalue %dx.types.ResRet.f32 %3331, 2
  %3335 = extractvalue %dx.types.ResRet.f32 %3331, 3
  %3336 = bitcast float %3335 to i32
  %3337 = fmul fast float %3322, %62
  %3338 = fmul fast float %3323, %63
  %3339 = fmul fast float %3324, %64
  %3340 = fsub fast float %3337, %3327
  %3341 = fsub fast float %3338, %3328
  %3342 = fsub fast float %3339, %3329
  %3343 = call float @dx.op.unary.f32(i32 7, float %3340)  ; Saturate(value)
  %3344 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3346 = fmul fast float %3343, %3332
  %3347 = fmul fast float %3344, %3333
  %3348 = fmul fast float %3345, %3334
  %3349 = fadd fast float %3332, -1.000000e+00
  %3350 = fadd fast float %3333, -1.000000e+00
  %3351 = fadd fast float %3334, -1.000000e+00
  %3352 = call float @dx.op.unary.f32(i32 27, float %3346)  ; Round_ni(value)
  %3353 = call float @dx.op.unary.f32(i32 27, float %3347)  ; Round_ni(value)
  %3354 = call float @dx.op.unary.f32(i32 27, float %3348)  ; Round_ni(value)
  %3355 = call float @dx.op.binary.f32(i32 36, float %3352, float %3349)  ; FMin(a,b)
  %3356 = call float @dx.op.binary.f32(i32 36, float %3353, float %3350)  ; FMin(a,b)
  %3357 = call float @dx.op.binary.f32(i32 36, float %3354, float %3351)  ; FMin(a,b)
  %3358 = fmul fast float %3357, %3333
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3332
  %3361 = fadd fast float %3360, %3355
  %3362 = fptosi float %3361 to i32
  %3363 = add nsw i32 %3362, %3336
  %3364 = shl nsw i32 %3363, 2
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = lshr i32 %3366, 16
  %3368 = icmp eq i32 %3367, 0
  br i1 %3368, label %3790, label %3369

; <label>:3369                                    ; preds = %3307
  br label %3370

; <label>:3370                                    ; preds = %3491, %3369
  %3371 = phi i32 [ %3393, %3491 ], [ %3367, %3369 ]
  %3372 = phi float [ %3492, %3491 ], [ 0.000000e+00, %3369 ]
  %3373 = phi float [ %3493, %3491 ], [ %3277, %3369 ]
  %3374 = phi float [ %3494, %3491 ], [ %3275, %3369 ]
  %3375 = phi float [ %3495, %3491 ], [ 0.000000e+00, %3369 ]
  %3376 = phi float [ %3496, %3491 ], [ 0.000000e+00, %3369 ]
  %3377 = phi float [ %3497, %3491 ], [ %3266, %3369 ]
  %3378 = phi float [ %3498, %3491 ], [ %3267, %3369 ]
  %3379 = phi float [ %3499, %3491 ], [ %3268, %3369 ]
  %3380 = phi float [ %3500, %3491 ], [ %3303, %3369 ]
  %3381 = phi float [ %3501, %3491 ], [ %3304, %3369 ]
  %3382 = phi float [ %3502, %3491 ], [ %3305, %3369 ]
  %3383 = phi float [ %3503, %3491 ], [ %3274, %3369 ]
  %3384 = phi float [ %3504, %3491 ], [ %3273, %3369 ]
  %3385 = phi float [ %3505, %3491 ], [ 0.000000e+00, %3369 ]
  %3386 = phi float [ %3506, %3491 ], [ %3272, %3369 ]
  %3387 = phi float [ %3507, %3491 ], [ %3269, %3369 ]
  %3388 = phi float [ %3508, %3491 ], [ %3270, %3369 ]
  %3389 = phi float [ %3509, %3491 ], [ %3271, %3369 ]
  %3390 = shl nuw nsw i32 %3371, 2
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = lshr i32 %3392, 16
  %3394 = shl i32 %3392, 8
  %3395 = and i32 %3394, 16776960
  %3396 = or i32 %3395, 48
  %3397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3400 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3401 = or i32 %3395, 64
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = extractvalue %dx.types.ResRet.i32 %3402, 1
  %3405 = or i32 %3395, 80
  %3406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 3
  %3409 = or i32 %3395, 96
  %3410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.f32 %3410, 0
  %3412 = extractvalue %dx.types.ResRet.f32 %3410, 1
  %3413 = extractvalue %dx.types.ResRet.f32 %3410, 2
  %3414 = extractvalue %dx.types.ResRet.f32 %3410, 3
  %3415 = or i32 %3395, 112
  %3416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 2
  %3418 = or i32 %3395, 128
  %3419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.f32 %3419, 0
  %3421 = extractvalue %dx.types.ResRet.f32 %3419, 1
  %3422 = extractvalue %dx.types.ResRet.f32 %3419, 2
  %3423 = extractvalue %dx.types.ResRet.f32 %3419, 3
  %3424 = or i32 %3395, 144
  %3425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.f32 %3425, 0
  %3427 = extractvalue %dx.types.ResRet.f32 %3425, 1
  %3428 = extractvalue %dx.types.ResRet.f32 %3425, 2
  %3429 = extractvalue %dx.types.ResRet.f32 %3425, 3
  %3430 = or i32 %3395, 160
  %3431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.ResRet.f32 %3431, 2
  %3435 = extractvalue %dx.types.ResRet.f32 %3431, 3
  %3436 = or i32 %3395, 192
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = or i32 %3395, 208
  %3440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.f32 %3440, 0
  %3442 = or i32 %3395, 248
  %3443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.f32 %3443, 0
  %3445 = extractvalue %dx.types.ResRet.f32 %3443, 1
  %3446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3450 = extractvalue %dx.types.ResRet.f32 %3446, 3
  %3451 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3452 = or i32 %3395, 16
  %3453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = extractvalue %dx.types.ResRet.f32 %3453, 3
  %3458 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3459 = or i32 %3395, 32
  %3460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3459, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = extractvalue %dx.types.ResRet.f32 %3460, 3
  %3465 = call float @dx.op.dot4.f32(i32 56, float %3461, float %3462, float %3463, float %3464, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3466 = call float @dx.op.unary.f32(i32 27, float %3451)  ; Round_ni(value)
  %3467 = call float @dx.op.unary.f32(i32 6, float %3466)  ; FAbs(value)
  %3468 = call float @dx.op.unary.f32(i32 27, float %3458)  ; Round_ni(value)
  %3469 = call float @dx.op.unary.f32(i32 6, float %3468)  ; FAbs(value)
  %3470 = call float @dx.op.unary.f32(i32 6, float %3465)  ; FAbs(value)
  %3471 = call float @dx.op.unary.f32(i32 27, float %3470)  ; Round_ni(value)
  %3472 = fadd fast float %3469, %3467
  %3473 = fadd fast float %3472, %3471
  %3474 = fcmp fast oeq float %3473, 0.000000e+00
  %3475 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %3314, float %3315, float %3316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3476 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %3314, float %3315, float %3316, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3477 = call float @dx.op.dot4.f32(i32 56, float %3447, float %3448, float %3449, float %3450, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3478 = call float @dx.op.dot4.f32(i32 56, float %3454, float %3455, float %3456, float %3457, float %3317, float %3318, float %3319, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3479 = fsub fast float %3475, %3451
  %3480 = fsub fast float %3477, %3451
  %3481 = fsub fast float %3476, %3458
  %3482 = fsub fast float %3478, %3458
  %3483 = call float @dx.op.dot3.f32(i32 55, float %3398, float %3399, float %3400, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3486 = fadd fast float %3485, %3483
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3489 = fcmp fast ogt float %3487, %3488
  %3490 = and i1 %3474, %3489
  br i1 %3490, label %3511, label %3491

; <label>:3491                                    ; preds = %3776, %3594, %3511, %3370
  %3492 = phi float [ %3372, %3511 ], [ %3597, %3594 ], [ %3597, %3776 ], [ %3372, %3370 ]
  %3493 = phi float [ %3373, %3511 ], [ %3373, %3594 ], [ %3751, %3776 ], [ %3373, %3370 ]
  %3494 = phi float [ %3374, %3511 ], [ %3374, %3594 ], [ %3749, %3776 ], [ %3374, %3370 ]
  %3495 = phi float [ %3375, %3511 ], [ %3375, %3594 ], [ %3721, %3776 ], [ %3375, %3370 ]
  %3496 = phi float [ %3376, %3511 ], [ %3376, %3594 ], [ %3719, %3776 ], [ %3376, %3370 ]
  %3497 = phi float [ %3377, %3511 ], [ %3377, %3594 ], [ %3786, %3776 ], [ %3377, %3370 ]
  %3498 = phi float [ %3378, %3511 ], [ %3378, %3594 ], [ %3787, %3776 ], [ %3378, %3370 ]
  %3499 = phi float [ %3379, %3511 ], [ %3379, %3594 ], [ %3788, %3776 ], [ %3379, %3370 ]
  %3500 = phi float [ %3380, %3511 ], [ %3380, %3594 ], [ %3700, %3776 ], [ %3380, %3370 ]
  %3501 = phi float [ %3381, %3511 ], [ %3381, %3594 ], [ %3701, %3776 ], [ %3381, %3370 ]
  %3502 = phi float [ %3382, %3511 ], [ %3382, %3594 ], [ %3702, %3776 ], [ %3382, %3370 ]
  %3503 = phi float [ %3383, %3511 ], [ %3383, %3594 ], [ %3729, %3776 ], [ %3383, %3370 ]
  %3504 = phi float [ %3384, %3511 ], [ %3384, %3594 ], [ %3726, %3776 ], [ %3384, %3370 ]
  %3505 = phi float [ %3385, %3511 ], [ %3385, %3594 ], [ %3723, %3776 ], [ %3385, %3370 ]
  %3506 = phi float [ %3386, %3511 ], [ %3386, %3594 ], [ %3717, %3776 ], [ %3386, %3370 ]
  %3507 = phi float [ %3387, %3511 ], [ %3387, %3594 ], [ %3712, %3776 ], [ %3387, %3370 ]
  %3508 = phi float [ %3388, %3511 ], [ %3388, %3594 ], [ %3713, %3776 ], [ %3388, %3370 ]
  %3509 = phi float [ %3389, %3511 ], [ %3389, %3594 ], [ %3714, %3776 ], [ %3389, %3370 ]
  %3510 = icmp eq i32 %3393, 0
  br i1 %3510, label %3789, label %3370

; <label>:3511                                    ; preds = %3370
  %3512 = extractvalue %dx.types.ResRet.f32 %3397, 3
  %3513 = extractvalue %dx.types.ResRet.f32 %3416, 3
  %3514 = extractvalue %dx.types.ResRet.f32 %3416, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3518 = extractvalue %dx.types.ResRet.i32 %3402, 3
  %3519 = extractvalue %dx.types.ResRet.i32 %3402, 2
  %3520 = bitcast float %3512 to i32
  %3521 = add i32 %3518, 0
  %3522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3524 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3522, %dx.types.Handle %3523, float %3451, float %3458, float undef, float undef, i32 0, i32 0, i32 undef, float %3479, float %3481, float undef, float %3480, float %3482, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = fmul fast float %3525, %3517
  %3527 = fadd fast float %3526, %3516
  %3528 = call float @dx.op.unary.f32(i32 7, float %3527)  ; Saturate(value)
  %3529 = fmul fast float %3451, %3411
  %3530 = call float @dx.op.tertiary.f32(i32 46, float %3412, float %3458, float %3529)  ; FMad(a,b,c)
  %3531 = fadd fast float %3530, %3515
  %3532 = fmul fast float %3451, %3413
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3458, float %3532)  ; FMad(a,b,c)
  %3534 = fadd fast float %3533, %3514
  %3535 = fmul fast float %3479, %3411
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3412, float %3481, float %3535)  ; FMad(a,b,c)
  %3537 = fmul fast float %3479, %3413
  %3538 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3481, float %3537)  ; FMad(a,b,c)
  %3539 = fmul fast float %3480, %3411
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3412, float %3482, float %3539)  ; FMad(a,b,c)
  %3541 = fmul fast float %3480, %3413
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3482, float %3541)  ; FMad(a,b,c)
  %3543 = add i32 %3519, 0
  %3544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3543, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3545 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3544, %dx.types.Handle %3523, float %3531, float %3534, float undef, float undef, i32 0, i32 0, i32 undef, float %3536, float %3538, float undef, float %3540, float %3542, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = and i32 %3520, 1024
  %3548 = icmp ne i32 %3547, 0
  %3549 = fcmp fast ogt float %3546, 0x3FE0101020000000
  %3550 = uitofp i1 %3549 to float
  %3551 = select i1 %3548, float %3550, float %3546
  %3552 = and i32 %3520, 8192
  %3553 = icmp ne i32 %3552, 0
  %3554 = select i1 %3553, float %3513, float 1.000000e+00
  %3555 = fmul fast float %3451, 2.000000e+00
  %3556 = fadd fast float %3555, -1.000000e+00
  %3557 = call float @dx.op.unary.f32(i32 6, float %3556)  ; FAbs(value)
  %3558 = fmul fast float %3557, %3444
  %3559 = fsub fast float %3558, %3444
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = fmul fast float %3458, 2.000000e+00
  %3562 = fadd fast float %3561, -1.000000e+00
  %3563 = call float @dx.op.unary.f32(i32 6, float %3562)  ; FAbs(value)
  %3564 = fmul fast float %3563, %3445
  %3565 = fsub fast float %3564, %3445
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = fmul fast float %3470, %3407
  %3568 = fsub fast float %3567, %3407
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3570 = fmul fast float %3528, %3554
  %3571 = fmul fast float %3570, %3525
  %3572 = fmul fast float %3571, %3560
  %3573 = fmul fast float %3572, %3551
  %3574 = fmul fast float %3573, %3566
  %3575 = fmul fast float %3574, %3569
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 1
  %3578 = extractvalue %dx.types.CBufRet.f32 %3576, 0
  %3579 = fsub fast float %3487, %3578
  %3580 = fmul fast float %3579, %3577
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = fmul fast float %3575, %3408
  %3583 = fadd fast float %3575, %3408
  %3584 = fmul fast float %3583, %3417
  %3585 = fsub fast float %3584, %3417
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = and i32 %3520, 128
  %3588 = icmp ne i32 %3587, 0
  %3589 = select i1 %3588, float %3586, float %3582
  %3590 = fmul fast float %3589, %3581
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = fcmp fast ugt float %3590, %3592
  br i1 %3593, label %3594, label %3491

; <label>:3594                                    ; preds = %3511
  %3595 = select i1 %3553, float %3590, float 0.000000e+00
  %3596 = fadd fast float %3595, %3372
  %3597 = call float @dx.op.unary.f32(i32 7, float %3596)  ; Saturate(value)
  br i1 %3553, label %3491, label %3598

; <label>:3598                                    ; preds = %3594
  %3599 = and i32 %3520, 4
  %3600 = and i32 %3520, 8
  %3601 = add i32 %3403, 0
  %3602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3601, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3604 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3602, %dx.types.Handle %3603, float %3531, float %3534, float undef, float undef, i32 0, i32 0, i32 undef, float %3536, float %3538, float undef, float %3540, float %3542, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3609 = bitcast float %3429 to i32
  %3610 = and i32 %3609, 255
  %3611 = uitofp i32 %3610 to float
  %3612 = lshr i32 %3609, 8
  %3613 = and i32 %3612, 255
  %3614 = uitofp i32 %3613 to float
  %3615 = fmul fast float %3608, %3611
  %3616 = fadd fast float %3615, %3614
  %3617 = fmul fast float %3616, 0x3F70101000000000
  %3618 = add i32 %3404, 0
  %3619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3618, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3620 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3619, %dx.types.Handle %3603, float %3531, float %3534, float undef, float undef, i32 0, i32 0, i32 undef, float %3536, float %3538, float undef, float %3540, float %3542, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = bitcast float %3423 to i32
  %3626 = and i32 %3625, 255
  %3627 = uitofp i32 %3626 to float
  %3628 = lshr i32 %3625, 8
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = lshr i32 %3625, 16
  %3632 = and i32 %3631, 255
  %3633 = uitofp i32 %3632 to float
  %3634 = fmul fast float %3633, 0x3F70101000000000
  %3635 = fmul fast float %3621, %3627
  %3636 = fadd fast float %3635, %3630
  %3637 = fmul fast float %3636, 0x3F70101000000000
  %3638 = fadd fast float %3622, -5.000000e-01
  %3639 = fadd fast float %3624, -5.000000e-01
  %3640 = fmul fast float %3638, %3634
  %3641 = fmul fast float %3639, %3634
  %3642 = fadd fast float %3640, 5.000000e-01
  %3643 = fadd fast float %3641, 5.000000e-01
  %3644 = fmul fast float %3605, %3432
  %3645 = fmul fast float %3606, %3433
  %3646 = fmul fast float %3607, %3434
  %3647 = fmul fast float %3642, 2.000000e+00
  %3648 = fadd fast float %3647, -1.000000e+00
  %3649 = fmul fast float %3643, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = fadd fast float %3648, %3650
  %3652 = fmul fast float %3651, 5.000000e-01
  %3653 = fsub fast float %3648, %3650
  %3654 = fmul fast float %3653, 5.000000e-01
  %3655 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3658 = fsub fast float %3656, %3657
  %3659 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3654, float %3658, float %3652, float %3654, float %3658)  ; Dot3(ax,ay,az,bx,by,bz)
  %3660 = call float @dx.op.unary.f32(i32 25, float %3659)  ; Rsqrt(value)
  %3661 = fmul fast float %3652, %3660
  %3662 = fmul fast float %3654, %3660
  %3663 = fmul fast float %3660, %3658
  %3664 = fmul fast float %3663, %3398
  %3665 = fmul fast float %3663, %3399
  %3666 = fmul fast float %3663, %3400
  %3667 = fmul fast float %3661, %3420
  %3668 = fmul fast float %3661, %3421
  %3669 = fmul fast float %3661, %3422
  %3670 = fadd fast float %3667, %3664
  %3671 = fadd fast float %3668, %3665
  %3672 = fadd fast float %3669, %3666
  %3673 = fmul fast float %3662, %3426
  %3674 = fmul fast float %3662, %3427
  %3675 = fmul fast float %3662, %3428
  %3676 = fadd fast float %3670, %3673
  %3677 = fadd fast float %3671, %3674
  %3678 = fadd fast float %3672, %3675
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3677, float %3678, float %3676, float %3677, float %3678)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call float @dx.op.unary.f32(i32 25, float %3679)  ; Rsqrt(value)
  %3681 = fmul fast float %3676, %3680
  %3682 = fmul fast float %3677, %3680
  %3683 = fmul fast float %3678, %3680
  %3684 = icmp ne i32 %3600, 0
  %3685 = select i1 %3684, float 1.000000e+00, float 0.000000e+00
  %3686 = fmul fast float %3590, %3685
  %3687 = and i32 %3520, 1
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3689, label %3693

; <label>:3689                                    ; preds = %3598
  %3690 = fsub fast float %3681, %3380
  %3691 = fsub fast float %3682, %3381
  %3692 = fsub fast float %3683, %3382
  br label %3693

; <label>:3693                                    ; preds = %3689, %3598
  %3694 = phi float [ %3690, %3689 ], [ %3681, %3598 ]
  %3695 = phi float [ %3691, %3689 ], [ %3682, %3598 ]
  %3696 = phi float [ %3692, %3689 ], [ %3683, %3598 ]
  %3697 = fmul float %3696, %3686
  %3698 = fmul float %3695, %3686
  %3699 = fmul float %3694, %3686
  %3700 = fadd fast float %3699, %3380
  %3701 = fadd fast float %3698, %3381
  %3702 = fadd fast float %3697, %3382
  %3703 = icmp ne i32 %3599, 0
  %3704 = select i1 %3703, float 1.000000e+00, float 0.000000e+00
  %3705 = fmul fast float %3590, %3704
  %3706 = fsub fast float %3644, %3387
  %3707 = fsub fast float %3645, %3388
  %3708 = fsub fast float %3646, %3389
  %3709 = fmul fast float %3706, %3705
  %3710 = fmul fast float %3707, %3705
  %3711 = fmul fast float %3708, %3705
  %3712 = fadd fast float %3709, %3387
  %3713 = fadd fast float %3710, %3388
  %3714 = fadd fast float %3711, %3389
  %3715 = fsub fast float %3617, %3386
  %3716 = fmul fast float %3715, %3705
  %3717 = fadd fast float %3716, %3386
  %3718 = fmul fast float %3705, %3376
  %3719 = fsub fast float %3376, %3718
  %3720 = fmul fast float %3705, %3375
  %3721 = fsub fast float %3375, %3720
  %3722 = fadd fast float %3590, %3385
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fsub fast float %3637, %3384
  %3725 = fmul fast float %3724, %3686
  %3726 = fadd fast float %3725, %3384
  %3727 = fsub fast float %3623, %3383
  %3728 = fmul fast float %3727, %3686
  %3729 = fadd fast float %3728, %3383
  %3730 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3645, float %3646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.CBufRet.f32 %3731, 1
  %3734 = fmul fast float %3733, %3730
  %3735 = fadd fast float %3734, %3732
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3737 = bitcast float %3435 to i32
  %3738 = and i32 %3737, 65535
  %3739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3738)  ; LegacyF16ToF32(value)
  %3740 = lshr i32 %3737, 16
  %3741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3740)  ; LegacyF16ToF32(value)
  %3742 = fcmp fast oge float %3739, 0.000000e+00
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3745 = select i1 %3742, float %3739, float %3744
  %3746 = fadd fast float %3745, %3741
  %3747 = fsub fast float %3736, %3374
  %3748 = fmul fast float %3747, %3590
  %3749 = fadd fast float %3748, %3374
  %3750 = fmul fast float %3746, %3590
  %3751 = call float @dx.op.binary.f32(i32 35, float %3373, float %3750)  ; FMax(a,b)
  %3752 = and i32 %3520, 16
  %3753 = icmp eq i32 %3752, 0
  br i1 %3753, label %3776, label %3754

; <label>:3754                                    ; preds = %3693
  %3755 = bitcast float %3441 to i32
  %3756 = add i32 %3438, 0
  %3757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3756, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3757, %dx.types.Handle %3603, float %3531, float %3534, float undef, float undef, i32 0, i32 0, i32 undef, float %3536, float %3538, float undef, float %3540, float %3542, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = and i32 %3755, 65535
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = fmul fast float %3759, %3432
  %3765 = fmul fast float %3760, %3433
  %3766 = fmul fast float %3761, %3434
  %3767 = and i32 %3520, 16384
  %3768 = icmp ne i32 %3767, 0
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = select i1 %3768, float %3770, float 1.000000e+00
  %3772 = fmul fast float %3771, %3763
  %3773 = fmul fast float %3764, %3772
  %3774 = fmul fast float %3765, %3772
  %3775 = fmul fast float %3766, %3772
  br label %3776

; <label>:3776                                    ; preds = %3754, %3693
  %3777 = phi float [ %3773, %3754 ], [ 0.000000e+00, %3693 ]
  %3778 = phi float [ %3774, %3754 ], [ 0.000000e+00, %3693 ]
  %3779 = phi float [ %3775, %3754 ], [ 0.000000e+00, %3693 ]
  %3780 = fsub fast float %3777, %3377
  %3781 = fsub fast float %3778, %3378
  %3782 = fsub fast float %3779, %3379
  %3783 = fmul fast float %3780, %3590
  %3784 = fmul fast float %3781, %3590
  %3785 = fmul fast float %3782, %3590
  %3786 = fadd fast float %3783, %3377
  %3787 = fadd fast float %3784, %3378
  %3788 = fadd fast float %3785, %3379
  br label %3491

; <label>:3789                                    ; preds = %3491
  br label %3790

; <label>:3790                                    ; preds = %3789, %3307
  %3791 = phi float [ 0.000000e+00, %3307 ], [ %3492, %3789 ]
  %3792 = phi float [ %3277, %3307 ], [ %3493, %3789 ]
  %3793 = phi float [ %3275, %3307 ], [ %3494, %3789 ]
  %3794 = phi float [ 0.000000e+00, %3307 ], [ %3495, %3789 ]
  %3795 = phi float [ 0.000000e+00, %3307 ], [ %3496, %3789 ]
  %3796 = phi float [ %3266, %3307 ], [ %3497, %3789 ]
  %3797 = phi float [ %3267, %3307 ], [ %3498, %3789 ]
  %3798 = phi float [ %3268, %3307 ], [ %3499, %3789 ]
  %3799 = phi float [ %3303, %3307 ], [ %3500, %3789 ]
  %3800 = phi float [ %3304, %3307 ], [ %3501, %3789 ]
  %3801 = phi float [ %3305, %3307 ], [ %3502, %3789 ]
  %3802 = phi float [ %3274, %3307 ], [ %3503, %3789 ]
  %3803 = phi float [ %3273, %3307 ], [ %3504, %3789 ]
  %3804 = phi float [ 0.000000e+00, %3307 ], [ %3505, %3789 ]
  %3805 = phi float [ %3272, %3307 ], [ %3506, %3789 ]
  %3806 = phi float [ %3269, %3307 ], [ %3507, %3789 ]
  %3807 = phi float [ %3270, %3307 ], [ %3508, %3789 ]
  %3808 = phi float [ %3271, %3307 ], [ %3509, %3789 ]
  %3809 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %3799, float %3800, float %3801)  ; Dot3(ax,ay,az,bx,by,bz)
  %3810 = call float @dx.op.unary.f32(i32 25, float %3809)  ; Rsqrt(value)
  %3811 = fmul fast float %3810, %3799
  %3812 = fmul fast float %3810, %3800
  %3813 = fmul fast float %3810, %3801
  %3814 = fadd fast float %3804, %1055
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3812, float %3813, float %3811, float %3812, float %3813)  ; Dot3(ax,ay,az,bx,by,bz)
  %3817 = call float @dx.op.unary.f32(i32 25, float %3816)  ; Rsqrt(value)
  %3818 = fmul fast float %3817, %3811
  %3819 = fmul fast float %3817, %3812
  %3820 = fmul fast float %3817, %3813
  br label %3821

; <label>:3821                                    ; preds = %3790, %3263
  %3822 = phi float [ %3818, %3790 ], [ %3303, %3263 ]
  %3823 = phi float [ %3819, %3790 ], [ %3304, %3263 ]
  %3824 = phi float [ %3820, %3790 ], [ %3305, %3263 ]
  %3825 = phi float [ %3806, %3790 ], [ %3269, %3263 ]
  %3826 = phi float [ %3807, %3790 ], [ %3270, %3263 ]
  %3827 = phi float [ %3808, %3790 ], [ %3271, %3263 ]
  %3828 = phi float [ %3796, %3790 ], [ %3266, %3263 ]
  %3829 = phi float [ %3797, %3790 ], [ %3267, %3263 ]
  %3830 = phi float [ %3798, %3790 ], [ %3268, %3263 ]
  %3831 = phi float [ %3805, %3790 ], [ %3272, %3263 ]
  %3832 = phi float [ %3815, %3790 ], [ %1055, %3263 ]
  %3833 = phi float [ %3803, %3790 ], [ %3273, %3263 ]
  %3834 = phi float [ %3802, %3790 ], [ %3274, %3263 ]
  %3835 = phi float [ %3795, %3790 ], [ 0.000000e+00, %3263 ]
  %3836 = phi float [ %3794, %3790 ], [ 0.000000e+00, %3263 ]
  %3837 = phi float [ %3791, %3790 ], [ 0.000000e+00, %3263 ]
  %3838 = phi float [ %3792, %3790 ], [ %3277, %3263 ]
  %3839 = phi float [ %3793, %3790 ], [ %3275, %3263 ]
  %3840 = fadd fast float %3831, 0xBFB99999A0000000
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3841, 0x3FF1C71C80000000
  %3843 = call float @dx.op.binary.f32(i32 36, float %3831, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3844 = fsub fast float 1.000000e+00, %3842
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = fmul fast float %3845, %3825
  %3847 = fmul fast float %3845, %3826
  %3848 = fmul fast float %3845, %3827
  %3849 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3850 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3851 = call float @dx.op.unary.f32(i32 7, float %3848)  ; Saturate(value)
  %3852 = fmul fast float %3842, %3825
  %3853 = fmul fast float %3842, %3826
  %3854 = fmul fast float %3842, %3827
  %3855 = fadd fast float %3852, %3843
  %3856 = fadd fast float %3853, %3843
  %3857 = fadd fast float %3854, %3843
  %3858 = call float @dx.op.unary.f32(i32 7, float %3855)  ; Saturate(value)
  %3859 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3860 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3861 = call float @dx.op.unary.f32(i32 7, float %3833)  ; Saturate(value)
  %3862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3863 = extractvalue %dx.types.CBufRet.i32 %3862, 3
  %3864 = and i32 %3863, 8
  %3865 = icmp ne i32 %3864, 0
  %3866 = call float @dx.op.binary.f32(i32 35, float %3849, float %3825)  ; FMax(a,b)
  %3867 = call float @dx.op.binary.f32(i32 35, float %3850, float %3825)  ; FMax(a,b)
  %3868 = call float @dx.op.binary.f32(i32 35, float %3851, float %3825)  ; FMax(a,b)
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3850, float %3851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = select i1 %260, float %3825, float %3849
  %3871 = select i1 %260, float %3869, float %3850
  %3872 = select i1 %260, float 1.000000e+00, float %3851
  %3873 = select i1 %3865, float %3866, float %3870
  %3874 = select i1 %3865, float %3867, float %3871
  %3875 = select i1 %3865, float %3868, float %3872
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 0
  %3878 = extractvalue %dx.types.CBufRet.f32 %3876, 1
  %3879 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3880 = fadd fast float %3877, %201
  %3881 = fadd fast float %3878, %202
  %3882 = fadd fast float %3879, %203
  %3883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3884 = extractvalue %dx.types.CBufRet.f32 %3883, 0
  %3885 = extractvalue %dx.types.CBufRet.f32 %3883, 1
  %3886 = fsub fast float %3880, %3884
  %3887 = fsub fast float %3881, %3885
  %3888 = fmul fast float %3886, %3886
  %3889 = fmul fast float %3887, %3887
  %3890 = fadd fast float %3888, %3889
  %3891 = call float @dx.op.unary.f32(i32 24, float %3890)  ; Sqrt(value)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3883, 2
  %3893 = fcmp fast olt float %3891, %3892
  br i1 %3893, label %3894, label %3961

; <label>:3894                                    ; preds = %3821
  %3895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3896 = extractvalue %dx.types.CBufRet.f32 %3895, 0
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.CBufRet.f32 %3895, 1
  %3902 = extractvalue %dx.types.CBufRet.f32 %3897, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3899, 1
  %3904 = extractvalue %dx.types.CBufRet.f32 %3895, 3
  %3905 = extractvalue %dx.types.CBufRet.f32 %3897, 3
  %3906 = extractvalue %dx.types.CBufRet.f32 %3899, 3
  %3907 = fadd fast float %3904, %3880
  %3908 = fadd fast float %3905, %3881
  %3909 = fadd fast float %3906, %3882
  %3910 = fmul fast float %3907, %3896
  %3911 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3898, float %3910)  ; FMad(a,b,c)
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3900, float %3911)  ; FMad(a,b,c)
  %3913 = fmul fast float %3907, %3901
  %3914 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3902, float %3913)  ; FMad(a,b,c)
  %3915 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3903, float %3914)  ; FMad(a,b,c)
  %3916 = fsub fast float %3912, %3904
  %3917 = fsub fast float %3915, %3905
  %3918 = fsub fast float %3916, %3884
  %3919 = fadd fast float %3918, %3892
  %3920 = fsub fast float %3917, %3885
  %3921 = fadd fast float %3920, %3892
  %3922 = extractvalue %dx.types.CBufRet.f32 %3883, 3
  %3923 = fmul fast float %3919, %3922
  %3924 = fmul fast float %3921, %3922
  %3925 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3926 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3927 = fsub fast float 1.000000e+00, %3925
  %3928 = fsub fast float 1.000000e+00, %3926
  %3929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3927, float %3928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = fcmp fast ugt float %3930, 0.000000e+00
  br i1 %3931, label %3932, label %4235

; <label>:3932                                    ; preds = %3894
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 2
  %3935 = fmul fast float %3934, %3930
  %3936 = extractvalue %dx.types.CBufRet.f32 %3933, 3
  %3937 = fadd fast float %3936, %3935
  %3938 = extractvalue %dx.types.CBufRet.f32 %3899, 2
  %3939 = fadd fast float %3937, %3906
  %3940 = fmul fast float %3912, %3900
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3915, float %3903, float %3940)  ; FMad(a,b,c)
  %3942 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3938, float %3941)  ; FMad(a,b,c)
  %3943 = fsub fast float %3942, %3906
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 2
  %3946 = fsub fast float %3943, %3945
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3927, float %3928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3927, float %3928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3955 = fadd fast float %3952, %3948
  %3956 = fmul fast float %3955, 0x3F847AE140000000
  %3957 = fadd fast float %3953, %3949
  %3958 = fmul fast float %3957, 0x3F847AE140000000
  %3959 = fadd fast float %3954, %3950
  %3960 = fmul fast float %3959, 0x3F847AE140000000
  br label %4235

; <label>:3961                                    ; preds = %3821
  %3962 = and i32 %239, 1
  %3963 = icmp eq i32 %3962, 0
  br i1 %3963, label %4235, label %3964

; <label>:3964                                    ; preds = %3961
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3971 = extractvalue %dx.types.CBufRet.f32 %3965, 1
  %3972 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3973 = extractvalue %dx.types.CBufRet.f32 %3969, 1
  %3974 = extractvalue %dx.types.CBufRet.f32 %3965, 3
  %3975 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3976 = extractvalue %dx.types.CBufRet.f32 %3969, 3
  %3977 = fadd fast float %3974, %3880
  %3978 = fadd fast float %3975, %3881
  %3979 = fadd fast float %3976, %3882
  %3980 = fmul fast float %3977, %3966
  %3981 = call float @dx.op.tertiary.f32(i32 46, float %3978, float %3968, float %3980)  ; FMad(a,b,c)
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3979, float %3970, float %3981)  ; FMad(a,b,c)
  %3983 = fmul fast float %3977, %3971
  %3984 = call float @dx.op.tertiary.f32(i32 46, float %3978, float %3972, float %3983)  ; FMad(a,b,c)
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %3979, float %3973, float %3984)  ; FMad(a,b,c)
  %3986 = fsub fast float %3982, %3974
  %3987 = fsub fast float %3985, %3975
  %3988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.CBufRet.f32 %3988, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3988, 2
  %3992 = extractvalue %dx.types.CBufRet.f32 %3988, 3
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %3995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.i32 %3995, 0
  %3997 = extractvalue %dx.types.CBufRet.i32 %3995, 1
  %3998 = udiv i32 %3997, %3996
  %3999 = fsub fast float %3986, %3989
  %4000 = fsub fast float %3987, %3990
  %4001 = call float @dx.op.binary.f32(i32 35, float %3999, float 0.000000e+00)  ; FMax(a,b)
  %4002 = call float @dx.op.binary.f32(i32 35, float %4000, float 0.000000e+00)  ; FMax(a,b)
  %4003 = call float @dx.op.binary.f32(i32 36, float %4001, float %3991)  ; FMin(a,b)
  %4004 = call float @dx.op.binary.f32(i32 36, float %4002, float %3992)  ; FMin(a,b)
  %4005 = add i32 %3996, -1
  %4006 = add i32 %3998, -1
  %4007 = fmul fast float %4003, %3994
  %4008 = fmul fast float %4004, %3994
  %4009 = fptoui float %4007 to i32
  %4010 = fptoui float %4008 to i32
  %4011 = call i32 @dx.op.binary.i32(i32 40, i32 %4009, i32 %4005)  ; UMin(a,b)
  %4012 = call i32 @dx.op.binary.i32(i32 40, i32 %4010, i32 %4006)  ; UMin(a,b)
  %4013 = mul i32 %4012, %3996
  %4014 = add i32 %4013, %4011
  %4015 = shl i32 %4014, 2
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = icmp eq i32 %4017, -1
  br i1 %4018, label %4235, label %4019

; <label>:4019                                    ; preds = %3964
  %4020 = mul i32 %4017, 148
  %4021 = add i32 %4020, 4
  %4022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4021, i32 undef)  ; BufferLoad(srv,index,wot)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = add i32 %4020, 8
  %4025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = add i32 %4020, 36
  %4028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = add i32 %4020, 60
  %4031 = add i32 %4020, 92
  %4032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4031, i32 undef)  ; BufferLoad(srv,index,wot)
  %4033 = extractvalue %dx.types.ResRet.i32 %4032, 0
  %4034 = add i32 %4020, 116
  %4035 = fsub fast float %3986, %4023
  %4036 = fsub fast float %3987, %4026
  %4037 = fmul fast float %3994, %4035
  %4038 = fmul fast float %3994, %4036
  %4039 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4041 = fsub fast float 1.000000e+00, %4040
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = call float @dx.op.unary.f32(i32 83, float %4039)  ; DerivCoarseX(value)
  %4045 = call float @dx.op.unary.f32(i32 83, float %4041)  ; DerivCoarseX(value)
  %4046 = call float @dx.op.unary.f32(i32 84, float %4039)  ; DerivCoarseY(value)
  %4047 = call float @dx.op.unary.f32(i32 84, float %4041)  ; DerivCoarseY(value)
  %4048 = fmul fast float %4044, %4043
  %4049 = fmul fast float %4045, %4043
  %4050 = fmul fast float %4046, %4043
  %4051 = fmul fast float %4047, %4043
  %4052 = call float @dx.op.dot2.f32(i32 54, float %4050, float %4051, float %4050, float %4051)  ; Dot2(ax,ay,bx,by)
  %4053 = call float @dx.op.dot2.f32(i32 54, float %4048, float %4049, float %4048, float %4049)  ; Dot2(ax,ay,bx,by)
  %4054 = call float @dx.op.binary.f32(i32 35, float %4053, float %4052)  ; FMax(a,b)
  %4055 = call float @dx.op.unary.f32(i32 23, float %4054)  ; Log(value)
  %4056 = fmul fast float %4055, 5.000000e-01
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4059 = fadd fast float %4058, %4056
  %4060 = call float @dx.op.binary.f32(i32 35, float %4059, float 0.000000e+00)  ; FMax(a,b)
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4063 = fadd fast float %4062, %4060
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4066 = fadd fast float %4063, %4065
  %4067 = add i32 %4033, 0
  %4068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4067, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4069 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4068, i32 0)  ; GetDimensions(handle,mipLevel)
  %4070 = extractvalue %dx.types.Dimensions %4069, 0
  %4071 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4070)  ; FirstbitLo(value)
  %4072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.i32 %4072, 1
  %4074 = sub nsw i32 %4073, %4071
  %4075 = sitofp i32 %4074 to float
  %4076 = fsub fast float %4066, %4075
  %4077 = call float @dx.op.binary.f32(i32 35, float %4076, float 0.000000e+00)  ; FMax(a,b)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4068, %dx.types.Handle %52, float %4039, float %4041, float %4029, float undef, i32 0, i32 0, i32 undef, float %4077)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4080 = fcmp ule float %4079, 0x3FE0101020000000
  %4081 = extractvalue %dx.types.CBufRet.i32 %4072, 0
  %4082 = and i32 %4081, 128
  %4083 = icmp ne i32 %4082, 0
  %4084 = and i1 %4080, %4083
  br i1 %4084, label %4235, label %4085

; <label>:4085                                    ; preds = %4019
  %4086 = add i32 %4020, 20
  %4087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4086, i32 undef)  ; BufferLoad(srv,index,wot)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = add i32 %4020, 24
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4020, 40
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %4020, 96
  %4096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.i32 %4096, 0
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = fmul fast float %4099, %4039
  %4101 = fmul fast float %4099, %4041
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4103 = fadd fast float %4100, %4102
  %4104 = fadd fast float %4101, %4102
  %4105 = add i32 %4097, 0
  %4106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4105, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4107 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4106, i32 0)  ; GetDimensions(handle,mipLevel)
  %4108 = extractvalue %dx.types.Dimensions %4107, 0
  %4109 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4108)  ; FirstbitLo(value)
  %4110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.i32 %4110, 1
  %4112 = sub nsw i32 %4111, %4109
  %4113 = sitofp i32 %4112 to float
  %4114 = fsub fast float %4063, %4113
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0.000000e+00)  ; FMax(a,b)
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4106, %dx.types.Handle %52, float %4103, float %4104, float %4094, float undef, i32 0, i32 0, i32 undef, float %4115)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = fmul fast float %4117, %4088
  %4119 = fadd fast float %4118, %4091
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4128 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4129 = fadd fast float %4125, %3986
  %4130 = fadd fast float %4127, %3987
  %4131 = fadd fast float %4119, %4128
  %4132 = fmul fast float %4129, %4121
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4122, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4123, float %4133)  ; FMad(a,b,c)
  %4135 = fsub fast float %4134, %4128
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 2
  %4138 = fsub fast float %4135, %4137
  %4139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.i32 %4139, 0
  %4141 = call i32 @dx.op.binary.i32(i32 40, i32 %4017, i32 %4140)  ; UMin(a,b)
  %4142 = mul i32 %4141, 36
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = add i32 %4142, 4
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = fmul fast float %4147, %4039
  %4149 = fmul fast float %4147, %4041
  %4150 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4151 = fadd fast float %4148, %4150
  %4152 = fadd fast float %4149, %4150
  %4153 = icmp eq i32 %4144, 0
  br i1 %4153, label %4222, label %4154

; <label>:4154                                    ; preds = %4085
  br label %4155

; <label>:4155                                    ; preds = %4212, %4154
  %4156 = phi float [ %4213, %4212 ], [ 0.000000e+00, %4154 ]
  %4157 = phi float [ %4214, %4212 ], [ 0.000000e+00, %4154 ]
  %4158 = phi float [ %4215, %4212 ], [ 0.000000e+00, %4154 ]
  %4159 = phi float [ %4216, %4212 ], [ 0.000000e+00, %4154 ]
  %4160 = phi float [ %4217, %4212 ], [ 0.000000e+00, %4154 ]
  %4161 = phi float [ %4218, %4212 ], [ 0.000000e+00, %4154 ]
  %4162 = phi i32 [ %4219, %4212 ], [ 0, %4154 ]
  %4163 = shl i32 %4162, 2
  %4164 = add i32 %4030, %4163
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = add i32 %4034, %4163
  %4168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.i32 %4168, 0
  %4170 = add i32 %4169, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4170, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4171, i32 0)  ; GetDimensions(handle,mipLevel)
  %4173 = extractvalue %dx.types.Dimensions %4172, 0
  %4174 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4173)  ; FirstbitLo(value)
  %4175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.i32 %4175, 1
  %4177 = sub nsw i32 %4176, %4174
  %4178 = sitofp i32 %4177 to float
  %4179 = fsub fast float %4063, %4178
  %4180 = call float @dx.op.binary.f32(i32 35, float %4179, float 0.000000e+00)  ; FMax(a,b)
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4171, %dx.types.Handle %52, float %4151, float %4152, float %4166, float undef, i32 0, i32 0, i32 undef, float %4180)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = fcmp fast ogt float %4182, 0.000000e+00
  br i1 %4183, label %4184, label %4212

; <label>:4184                                    ; preds = %4155
  %4185 = add i32 %4145, %4163
  %4186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.i32 %4186, 0
  %4188 = and i32 %4187, 32767
  %4189 = mul nuw nsw i32 %4188, 928
  %4190 = add nuw nsw i32 %4189, 48
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.ResRet.f32 %4191, 1
  %4194 = extractvalue %dx.types.ResRet.f32 %4191, 2
  %4195 = add nuw nsw i32 %4189, 60
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4200 = fmul fast float %4192, %4182
  %4201 = fmul fast float %4193, %4182
  %4202 = fmul fast float %4194, %4182
  %4203 = fadd fast float %4200, %4156
  %4204 = fadd fast float %4201, %4157
  %4205 = fadd fast float %4202, %4158
  %4206 = fmul fast float %4197, %4182
  %4207 = fmul fast float %4198, %4182
  %4208 = fmul fast float %4199, %4182
  %4209 = fadd fast float %4206, %4159
  %4210 = fadd fast float %4207, %4160
  %4211 = fadd fast float %4208, %4161
  br label %4212

; <label>:4212                                    ; preds = %4184, %4155
  %4213 = phi float [ %4203, %4184 ], [ %4156, %4155 ]
  %4214 = phi float [ %4204, %4184 ], [ %4157, %4155 ]
  %4215 = phi float [ %4205, %4184 ], [ %4158, %4155 ]
  %4216 = phi float [ %4209, %4184 ], [ %4159, %4155 ]
  %4217 = phi float [ %4210, %4184 ], [ %4160, %4155 ]
  %4218 = phi float [ %4211, %4184 ], [ %4161, %4155 ]
  %4219 = add nuw i32 %4162, 1
  %4220 = icmp eq i32 %4219, %4144
  br i1 %4220, label %4221, label %4155

; <label>:4221                                    ; preds = %4212
  br label %4222

; <label>:4222                                    ; preds = %4221, %4085
  %4223 = phi float [ 0.000000e+00, %4085 ], [ %4213, %4221 ]
  %4224 = phi float [ 0.000000e+00, %4085 ], [ %4214, %4221 ]
  %4225 = phi float [ 0.000000e+00, %4085 ], [ %4215, %4221 ]
  %4226 = phi float [ 0.000000e+00, %4085 ], [ %4216, %4221 ]
  %4227 = phi float [ 0.000000e+00, %4085 ], [ %4217, %4221 ]
  %4228 = phi float [ 0.000000e+00, %4085 ], [ %4218, %4221 ]
  %4229 = fadd fast float %4226, %4223
  %4230 = fmul fast float %4229, 0x3F847AE140000000
  %4231 = fadd fast float %4227, %4224
  %4232 = fmul fast float %4231, 0x3F847AE140000000
  %4233 = fadd fast float %4228, %4225
  %4234 = fmul fast float %4233, 0x3F847AE140000000
  br label %4235

; <label>:4235                                    ; preds = %4222, %4019, %3964, %3961, %3932, %3894
  %4236 = phi float [ %3956, %3932 ], [ 0.000000e+00, %3894 ], [ %4230, %4222 ], [ 0.000000e+00, %3964 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %3961 ]
  %4237 = phi float [ %3958, %3932 ], [ 0.000000e+00, %3894 ], [ %4232, %4222 ], [ 0.000000e+00, %3964 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %3961 ]
  %4238 = phi float [ %3960, %3932 ], [ 0.000000e+00, %3894 ], [ %4234, %4222 ], [ 0.000000e+00, %3964 ], [ 0.000000e+00, %4019 ], [ 0.000000e+00, %3961 ]
  %4239 = phi float [ %3946, %3932 ], [ -1.310720e+05, %3894 ], [ %4138, %4222 ], [ -1.310720e+05, %3964 ], [ -1.310720e+05, %4019 ], [ -1.310720e+05, %3961 ]
  %4240 = phi i1 [ true, %3932 ], [ false, %3894 ], [ true, %4222 ], [ false, %3964 ], [ false, %4019 ], [ false, %3961 ]
  %4241 = and i32 %239, 3
  %4242 = icmp eq i32 %4241, 1
  %4243 = select i1 %4242, float 1.000000e+00, float 0.000000e+00
  %4244 = fsub fast float %4239, %203
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = select i1 %4240, float %4245, float 1.000000e+00
  %4247 = fmul fast float %4246, %4243
  %4248 = icmp eq i32 %4241, 3
  %4249 = select i1 %4248, float 1.000000e+00, float %4247
  %4250 = call float @dx.op.binary.f32(i32 35, float %3837, float %4249)  ; FMax(a,b)
  %4251 = fcmp fast olt float %4249, 1.000000e+00
  %4252 = fcmp uge float %75, 0.000000e+00
  %4253 = and i1 %4252, %4251
  br i1 %4253, label %4254, label %4264

; <label>:4254                                    ; preds = %4235
  %4255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4256 = extractvalue %dx.types.ResRet.f32 %4255, 0
  %4257 = extractvalue %dx.types.ResRet.f32 %4255, 1
  %4258 = extractvalue %dx.types.ResRet.f32 %4255, 2
  %4259 = fadd fast float %4256, %4250
  %4260 = fcmp ule float %74, 0.000000e+00
  %4261 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = select i1 %4260, float %4261, float 1.000000e+00
  %4263 = fmul fast float %4262, %4258
  br label %4264

; <label>:4264                                    ; preds = %4254, %4235
  %4265 = phi float [ %4259, %4254 ], [ %4250, %4235 ]
  %4266 = phi float [ %4257, %4254 ], [ 0.000000e+00, %4235 ]
  %4267 = phi float [ %4263, %4254 ], [ 0.000000e+00, %4235 ]
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = fcmp fast une float %4269, 0.000000e+00
  %4272 = fcmp fast une float %4270, 0.000000e+00
  %4273 = or i1 %4271, %4272
  br i1 %4273, label %4274, label %4833

; <label>:4274                                    ; preds = %4264
  br i1 %4271, label %4275, label %4548

; <label>:4275                                    ; preds = %4274
  %4276 = call float @dx.op.unary.f32(i32 23, float %3834)  ; Log(value)
  %4277 = fmul fast float %4276, 4.000000e+00
  %4278 = call float @dx.op.unary.f32(i32 21, float %4277)  ; Exp(value)
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = fmul fast float %4280, %62
  %4282 = fmul fast float %4280, %63
  %4283 = fmul fast float %4280, %64
  %4284 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4287 = call float @dx.op.unary.f32(i32 23, float %4284)  ; Log(value)
  %4288 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4289 = call float @dx.op.unary.f32(i32 23, float %4286)  ; Log(value)
  %4290 = fmul fast float %4287, 4.000000e+00
  %4291 = fmul fast float %4288, 4.000000e+00
  %4292 = fmul fast float %4289, 4.000000e+00
  %4293 = call float @dx.op.unary.f32(i32 21, float %4290)  ; Exp(value)
  %4294 = call float @dx.op.unary.f32(i32 21, float %4291)  ; Exp(value)
  %4295 = call float @dx.op.unary.f32(i32 21, float %4292)  ; Exp(value)
  %4296 = fadd fast float %4294, %4293
  %4297 = fadd fast float %4296, %4295
  %4298 = fdiv fast float 1.000000e+00, %4297
  %4299 = fmul fast float %4298, %4293
  %4300 = fcmp fast ogt float %71, 0.000000e+00
  %4301 = fcmp fast ogt float %72, 0.000000e+00
  %4302 = fcmp fast ogt float %73, 0.000000e+00
  %4303 = fcmp fast olt float %71, 0.000000e+00
  %4304 = fcmp fast olt float %72, 0.000000e+00
  %4305 = fcmp fast olt float %73, 0.000000e+00
  %4306 = zext i1 %4300 to i32
  %4307 = zext i1 %4301 to i32
  %4308 = zext i1 %4302 to i32
  %4309 = zext i1 %4303 to i32
  %4310 = zext i1 %4304 to i32
  %4311 = zext i1 %4305 to i32
  %4312 = sub nsw i32 %4306, %4309
  %4313 = sub nsw i32 %4307, %4310
  %4314 = sub nsw i32 %4308, %4311
  %4315 = call float @dx.op.unary.f32(i32 83, float %4281)  ; DerivCoarseX(value)
  %4316 = call float @dx.op.unary.f32(i32 83, float %4282)  ; DerivCoarseX(value)
  %4317 = call float @dx.op.unary.f32(i32 83, float %4283)  ; DerivCoarseX(value)
  %4318 = call float @dx.op.unary.f32(i32 84, float %4281)  ; DerivCoarseY(value)
  %4319 = call float @dx.op.unary.f32(i32 84, float %4282)  ; DerivCoarseY(value)
  %4320 = call float @dx.op.unary.f32(i32 84, float %4283)  ; DerivCoarseY(value)
  %4321 = fcmp fast ole float %271, %4299
  %4322 = fmul fast float %4298, %4296
  %4323 = fcmp fast ole float %271, %4322
  %4324 = select i1 %4323, float %4283, float %4281
  %4325 = select i1 %4323, float %4281, float %4282
  %4326 = select i1 %4321, float %4282, float %4324
  %4327 = select i1 %4321, float %4283, float %4325
  %4328 = select i1 %4323, float %4317, float %4315
  %4329 = select i1 %4323, float %4315, float %4316
  %4330 = select i1 %4321, float %4316, float %4328
  %4331 = select i1 %4321, float %4317, float %4329
  %4332 = select i1 %4323, float %4320, float %4318
  %4333 = select i1 %4323, float %4318, float %4319
  %4334 = select i1 %4321, float %4319, float %4332
  %4335 = select i1 %4321, float %4320, float %4333
  %4336 = call float @dx.op.unary.f32(i32 27, float %4326)  ; Round_ni(value)
  %4337 = call float @dx.op.unary.f32(i32 27, float %4327)  ; Round_ni(value)
  %4338 = fptosi float %4336 to i32
  %4339 = fptosi float %4337 to i32
  %4340 = xor i32 %4339, %4338
  %4341 = sitofp i32 %4340 to float
  %4342 = fptosi float %4341 to i32
  %4343 = sitofp i32 %4342 to float
  %4344 = fmul fast float %4343, 0x3FE3C6EF40000000
  %4345 = frem fast float %4336, 2.560000e+02
  %4346 = frem fast float %4337, 2.560000e+02
  %4347 = fptoui float %4345 to i32
  %4348 = fptoui float %4346 to i32
  %4349 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4347, i32 %4348, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = fadd fast float %4350, %4344
  %4354 = fadd fast float %4351, %4344
  %4355 = fadd fast float %4352, %4344
  %4356 = call float @dx.op.unary.f32(i32 22, float %4353)  ; Frc(value)
  %4357 = call float @dx.op.unary.f32(i32 22, float %4354)  ; Frc(value)
  %4358 = call float @dx.op.unary.f32(i32 22, float %4355)  ; Frc(value)
  %4359 = fmul fast float %4358, 0x401921FB60000000
  %4360 = call float @dx.op.unary.f32(i32 13, float %4359)  ; Sin(value)
  %4361 = call float @dx.op.unary.f32(i32 12, float %4359)  ; Cos(value)
  %4362 = fsub fast float -0.000000e+00, %4361
  %4363 = fmul fast float %4361, %4326
  %4364 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4327, float %4363)  ; FMad(a,b,c)
  %4365 = fmul fast float %4360, %4326
  %4366 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4327, float %4365)  ; FMad(a,b,c)
  %4367 = fadd fast float %4364, %4356
  %4368 = fadd fast float %4366, %4357
  %4369 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4370 = bitcast float %4369 to i32
  %4371 = icmp eq i32 %4370, 0
  br i1 %4371, label %4410, label %4372

; <label>:4372                                    ; preds = %4275
  %4373 = add i32 %4370, 0
  %4374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4374, %dx.types.Handle %111, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4377, 2
  %4380 = fsub fast float 1.000000e+00, %4269
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4382 = bitcast float %4269 to i32
  %4383 = sitofp i32 %4382 to float
  %4384 = fadd fast float %4383, 0xC1CFBF8940000000
  %4385 = fmul fast float %4379, %4384
  %4386 = fadd fast float %4385, 0x41CFBF8940000000
  %4387 = fptosi float %4386 to i32
  %4388 = bitcast i32 %4387 to float
  %4389 = bitcast float %4381 to i32
  %4390 = sitofp i32 %4389 to float
  %4391 = fadd fast float %4390, 0xC1CFBF8940000000
  %4392 = fmul fast float %4391, %4379
  %4393 = fadd fast float %4392, 0x41CFBF8940000000
  %4394 = fptosi float %4393 to i32
  %4395 = bitcast i32 %4394 to float
  %4396 = fmul fast float %4388, %4378
  %4397 = fmul fast float %4395, %4378
  %4398 = fsub fast float %4381, %4396
  %4399 = fadd fast float %4397, %4381
  %4400 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4402 = fsub fast float %4376, %4400
  %4403 = fsub fast float %4401, %4400
  %4404 = bitcast float %4403 to i32
  %4405 = sub nsw i32 2129859010, %4404
  %4406 = bitcast i32 %4405 to float
  %4407 = fmul fast float %4406, %4402
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = fcmp fast olt float %4408, 0x3F70101020000000
  br i1 %4409, label %4548, label %4410

; <label>:4410                                    ; preds = %4372, %4275
  %4411 = phi float [ %4408, %4372 ], [ %4269, %4275 ]
  %4412 = fmul fast float %4411, %4278
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 1
  %4415 = extractvalue %dx.types.CBufRet.i32 %4413, 0
  %4416 = add i32 %4415, 0
  %4417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4417, %dx.types.Handle %110, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.ResRet.f32 %4418, 3
  %4423 = and i32 %4414, 255
  %4424 = uitofp i32 %4423 to float
  %4425 = lshr i32 %4414, 8
  %4426 = and i32 %4425, 255
  %4427 = uitofp i32 %4426 to float
  %4428 = fmul fast float %4422, %4424
  %4429 = fadd fast float %4428, %4427
  %4430 = fmul fast float %4429, 0x3F70101000000000
  %4431 = fadd fast float %4430, 0xBFB99999A0000000
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fmul fast float %4432, 0x3FF1C71C80000000
  %4434 = call float @dx.op.binary.f32(i32 36, float %4430, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4435 = fsub fast float 1.000000e+00, %4433
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %4436, %4419
  %4438 = fmul fast float %4436, %4420
  %4439 = fmul fast float %4436, %4421
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4443 = fmul fast float %4433, %4419
  %4444 = fmul fast float %4433, %4420
  %4445 = fmul fast float %4433, %4421
  %4446 = fadd fast float %4443, %4434
  %4447 = fadd fast float %4444, %4434
  %4448 = fadd fast float %4445, %4434
  %4449 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4450 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 3
  %4454 = extractvalue %dx.types.CBufRet.i32 %4452, 2
  %4455 = add i32 %4454, 0
  %4456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4456, %dx.types.Handle %110, float %4367, float %4368, float undef, float undef, i32 0, i32 0, i32 undef, float %4330, float %4331, float undef, float %4334, float %4335, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.ResRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.ResRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.ResRet.f32 %4457, 3
  %4462 = and i32 %4453, 255
  %4463 = uitofp i32 %4462 to float
  %4464 = lshr i32 %4453, 8
  %4465 = and i32 %4464, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = lshr i32 %4453, 16
  %4468 = and i32 %4467, 255
  %4469 = uitofp i32 %4468 to float
  %4470 = fmul fast float %4469, 0x3F70101000000000
  %4471 = fmul fast float %4458, %4463
  %4472 = fadd fast float %4471, %4466
  %4473 = fmul fast float %4472, 0x3F70101000000000
  %4474 = fadd fast float %4459, -5.000000e-01
  %4475 = fadd fast float %4461, -5.000000e-01
  %4476 = fmul fast float %4474, %4470
  %4477 = fmul fast float %4475, %4470
  %4478 = fadd fast float %4476, 5.000000e-01
  %4479 = fadd fast float %4477, 5.000000e-01
  %4480 = fmul fast float %4478, 2.000000e+00
  %4481 = fadd fast float %4480, -1.000000e+00
  %4482 = fmul fast float %4479, 2.000000e+00
  %4483 = fadd fast float %4482, -1.000000e+00
  %4484 = fadd fast float %4481, %4483
  %4485 = fmul fast float %4484, 5.000000e-01
  %4486 = fsub fast float %4481, %4483
  %4487 = fmul fast float %4486, 5.000000e-01
  %4488 = call float @dx.op.unary.f32(i32 6, float %4485)  ; FAbs(value)
  %4489 = fsub fast float 1.000000e+00, %4488
  %4490 = call float @dx.op.unary.f32(i32 6, float %4487)  ; FAbs(value)
  %4491 = fsub fast float %4489, %4490
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4485, float %4487, float %4491, float %4485, float %4487, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 25, float %4492)  ; Rsqrt(value)
  %4494 = fmul fast float %4485, %4493
  %4495 = fmul fast float %4487, %4493
  %4496 = select i1 %4323, i32 %4313, i32 %4314
  %4497 = select i1 %4321, i32 %4312, i32 %4496
  %4498 = sitofp i32 %4497 to float
  %4499 = fmul fast float %4491, %4498
  %4500 = fmul fast float %4499, %4493
  %4501 = select i1 %4323, float %4500, float %4495
  %4502 = select i1 %4323, float %4495, float %4500
  %4503 = select i1 %4321, float %4500, float %4494
  %4504 = select i1 %4321, float %4495, float %4501
  %4505 = select i1 %4321, float %4494, float %4502
  %4506 = fsub fast float %4440, %3873
  %4507 = fsub fast float %4441, %3874
  %4508 = fsub fast float %4442, %3875
  %4509 = fmul fast float %4506, %4412
  %4510 = fmul fast float %4507, %4412
  %4511 = fmul fast float %4508, %4412
  %4512 = fadd fast float %4509, %3873
  %4513 = fadd fast float %4510, %3874
  %4514 = fadd fast float %4511, %3875
  %4515 = fsub fast float %4449, %3858
  %4516 = fsub fast float %4450, %3859
  %4517 = fsub fast float %4451, %3860
  %4518 = fmul fast float %4515, %4412
  %4519 = fmul fast float %4516, %4412
  %4520 = fmul fast float %4517, %4412
  %4521 = fadd fast float %4518, %3858
  %4522 = fadd fast float %4519, %3859
  %4523 = fadd fast float %4520, %3860
  %4524 = fadd fast float %4503, %3822
  %4525 = fadd fast float %4504, %3823
  %4526 = fadd fast float %4505, %3824
  %4527 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float %4524, float %4525, float %4526)  ; Dot3(ax,ay,az,bx,by,bz)
  %4528 = call float @dx.op.unary.f32(i32 25, float %4527)  ; Rsqrt(value)
  %4529 = fmul fast float %4524, %4528
  %4530 = fmul fast float %4525, %4528
  %4531 = fmul fast float %4526, %4528
  %4532 = fsub fast float %4529, %3822
  %4533 = fsub fast float %4530, %3823
  %4534 = fsub fast float %4531, %3824
  %4535 = fmul fast float %4532, %4412
  %4536 = fmul fast float %4533, %4412
  %4537 = fmul fast float %4534, %4412
  %4538 = fadd fast float %4535, %3822
  %4539 = fadd fast float %4536, %3823
  %4540 = fadd fast float %4537, %3824
  %4541 = call float @dx.op.binary.f32(i32 36, float %3834, float %4460)  ; FMin(a,b)
  %4542 = fsub fast float %4541, %3834
  %4543 = fmul fast float %4542, %4412
  %4544 = fadd fast float %4543, %3834
  %4545 = fsub fast float %4473, %3861
  %4546 = fmul fast float %4545, %4412
  %4547 = fadd fast float %4546, %3861
  br label %4548

; <label>:4548                                    ; preds = %4410, %4372, %4274
  %4549 = phi float [ %4512, %4410 ], [ %3873, %4372 ], [ %3873, %4274 ]
  %4550 = phi float [ %4513, %4410 ], [ %3874, %4372 ], [ %3874, %4274 ]
  %4551 = phi float [ %4514, %4410 ], [ %3875, %4372 ], [ %3875, %4274 ]
  %4552 = phi float [ %4538, %4410 ], [ %3822, %4372 ], [ %3822, %4274 ]
  %4553 = phi float [ %4539, %4410 ], [ %3823, %4372 ], [ %3823, %4274 ]
  %4554 = phi float [ %4540, %4410 ], [ %3824, %4372 ], [ %3824, %4274 ]
  %4555 = phi float [ %4521, %4410 ], [ %3858, %4372 ], [ %3858, %4274 ]
  %4556 = phi float [ %4522, %4410 ], [ %3859, %4372 ], [ %3859, %4274 ]
  %4557 = phi float [ %4523, %4410 ], [ %3860, %4372 ], [ %3860, %4274 ]
  %4558 = phi float [ %4547, %4410 ], [ %3861, %4372 ], [ %3861, %4274 ]
  %4559 = phi float [ %4544, %4410 ], [ %3834, %4372 ], [ %3834, %4274 ]
  br i1 %4272, label %4560, label %4833

; <label>:4560                                    ; preds = %4548
  %4561 = call float @dx.op.unary.f32(i32 23, float %4559)  ; Log(value)
  %4562 = fmul fast float %4561, 4.000000e+00
  %4563 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 0
  %4566 = fmul fast float %4565, %62
  %4567 = fmul fast float %4565, %63
  %4568 = fmul fast float %4565, %64
  %4569 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4570 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4571 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4572 = call float @dx.op.unary.f32(i32 23, float %4569)  ; Log(value)
  %4573 = call float @dx.op.unary.f32(i32 23, float %4570)  ; Log(value)
  %4574 = call float @dx.op.unary.f32(i32 23, float %4571)  ; Log(value)
  %4575 = fmul fast float %4572, 4.000000e+00
  %4576 = fmul fast float %4573, 4.000000e+00
  %4577 = fmul fast float %4574, 4.000000e+00
  %4578 = call float @dx.op.unary.f32(i32 21, float %4575)  ; Exp(value)
  %4579 = call float @dx.op.unary.f32(i32 21, float %4576)  ; Exp(value)
  %4580 = call float @dx.op.unary.f32(i32 21, float %4577)  ; Exp(value)
  %4581 = fadd fast float %4579, %4578
  %4582 = fadd fast float %4581, %4580
  %4583 = fdiv fast float 1.000000e+00, %4582
  %4584 = fmul fast float %4583, %4578
  %4585 = fcmp fast ogt float %71, 0.000000e+00
  %4586 = fcmp fast ogt float %72, 0.000000e+00
  %4587 = fcmp fast ogt float %73, 0.000000e+00
  %4588 = fcmp fast olt float %71, 0.000000e+00
  %4589 = fcmp fast olt float %72, 0.000000e+00
  %4590 = fcmp fast olt float %73, 0.000000e+00
  %4591 = zext i1 %4585 to i32
  %4592 = zext i1 %4586 to i32
  %4593 = zext i1 %4587 to i32
  %4594 = zext i1 %4588 to i32
  %4595 = zext i1 %4589 to i32
  %4596 = zext i1 %4590 to i32
  %4597 = sub nsw i32 %4591, %4594
  %4598 = sub nsw i32 %4592, %4595
  %4599 = sub nsw i32 %4593, %4596
  %4600 = call float @dx.op.unary.f32(i32 83, float %4566)  ; DerivCoarseX(value)
  %4601 = call float @dx.op.unary.f32(i32 83, float %4567)  ; DerivCoarseX(value)
  %4602 = call float @dx.op.unary.f32(i32 83, float %4568)  ; DerivCoarseX(value)
  %4603 = call float @dx.op.unary.f32(i32 84, float %4566)  ; DerivCoarseY(value)
  %4604 = call float @dx.op.unary.f32(i32 84, float %4567)  ; DerivCoarseY(value)
  %4605 = call float @dx.op.unary.f32(i32 84, float %4568)  ; DerivCoarseY(value)
  %4606 = fcmp fast ole float %271, %4584
  %4607 = fmul fast float %4583, %4581
  %4608 = fcmp fast ole float %271, %4607
  %4609 = select i1 %4608, float %4568, float %4566
  %4610 = select i1 %4608, float %4566, float %4567
  %4611 = select i1 %4606, float %4567, float %4609
  %4612 = select i1 %4606, float %4568, float %4610
  %4613 = select i1 %4608, float %4602, float %4600
  %4614 = select i1 %4608, float %4600, float %4601
  %4615 = select i1 %4606, float %4601, float %4613
  %4616 = select i1 %4606, float %4602, float %4614
  %4617 = select i1 %4608, float %4605, float %4603
  %4618 = select i1 %4608, float %4603, float %4604
  %4619 = select i1 %4606, float %4604, float %4617
  %4620 = select i1 %4606, float %4605, float %4618
  %4621 = call float @dx.op.unary.f32(i32 27, float %4611)  ; Round_ni(value)
  %4622 = call float @dx.op.unary.f32(i32 27, float %4612)  ; Round_ni(value)
  %4623 = fptosi float %4621 to i32
  %4624 = fptosi float %4622 to i32
  %4625 = xor i32 %4624, %4623
  %4626 = sitofp i32 %4625 to float
  %4627 = fptosi float %4626 to i32
  %4628 = sitofp i32 %4627 to float
  %4629 = fmul fast float %4628, 0x3FE3C6EF40000000
  %4630 = frem fast float %4621, 2.560000e+02
  %4631 = frem fast float %4622, 2.560000e+02
  %4632 = fptoui float %4630 to i32
  %4633 = fptoui float %4631 to i32
  %4634 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4632, i32 %4633, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = fadd fast float %4635, %4629
  %4639 = fadd fast float %4636, %4629
  %4640 = fadd fast float %4637, %4629
  %4641 = call float @dx.op.unary.f32(i32 22, float %4638)  ; Frc(value)
  %4642 = call float @dx.op.unary.f32(i32 22, float %4639)  ; Frc(value)
  %4643 = call float @dx.op.unary.f32(i32 22, float %4640)  ; Frc(value)
  %4644 = fmul fast float %4643, 0x401921FB60000000
  %4645 = call float @dx.op.unary.f32(i32 13, float %4644)  ; Sin(value)
  %4646 = call float @dx.op.unary.f32(i32 12, float %4644)  ; Cos(value)
  %4647 = fsub fast float -0.000000e+00, %4646
  %4648 = fmul fast float %4646, %4611
  %4649 = call float @dx.op.tertiary.f32(i32 46, float %4645, float %4612, float %4648)  ; FMad(a,b,c)
  %4650 = fmul fast float %4645, %4611
  %4651 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4612, float %4650)  ; FMad(a,b,c)
  %4652 = fadd fast float %4649, %4641
  %4653 = fadd fast float %4651, %4642
  %4654 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4655 = bitcast float %4654 to i32
  %4656 = icmp eq i32 %4655, 0
  br i1 %4656, label %4695, label %4657

; <label>:4657                                    ; preds = %4560
  %4658 = add i32 %4655, 0
  %4659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4658, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4659, %dx.types.Handle %111, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float %4615, float %4616, float undef, float %4619, float %4620, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4665 = fsub fast float 1.000000e+00, %4270
  %4666 = call float @dx.op.binary.f32(i32 35, float %4665, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4667 = bitcast float %4270 to i32
  %4668 = sitofp i32 %4667 to float
  %4669 = fadd fast float %4668, 0xC1CFBF8940000000
  %4670 = fmul fast float %4664, %4669
  %4671 = fadd fast float %4670, 0x41CFBF8940000000
  %4672 = fptosi float %4671 to i32
  %4673 = bitcast i32 %4672 to float
  %4674 = bitcast float %4666 to i32
  %4675 = sitofp i32 %4674 to float
  %4676 = fadd fast float %4675, 0xC1CFBF8940000000
  %4677 = fmul fast float %4676, %4664
  %4678 = fadd fast float %4677, 0x41CFBF8940000000
  %4679 = fptosi float %4678 to i32
  %4680 = bitcast i32 %4679 to float
  %4681 = fmul fast float %4673, %4663
  %4682 = fmul fast float %4680, %4663
  %4683 = fsub fast float %4666, %4681
  %4684 = fadd fast float %4682, %4666
  %4685 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4687 = fsub fast float %4661, %4685
  %4688 = fsub fast float %4686, %4685
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4691, %4687
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fcmp fast olt float %4693, 0x3F70101020000000
  br i1 %4694, label %4833, label %4695

; <label>:4695                                    ; preds = %4657, %4560
  %4696 = phi float [ %4693, %4657 ], [ %4270, %4560 ]
  %4697 = fmul fast float %4696, %4563
  %4698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.i32 %4698, 1
  %4700 = extractvalue %dx.types.CBufRet.i32 %4698, 0
  %4701 = add i32 %4700, 0
  %4702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4703 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4702, %dx.types.Handle %110, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float %4615, float %4616, float undef, float %4619, float %4620, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.ResRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.ResRet.f32 %4703, 2
  %4707 = extractvalue %dx.types.ResRet.f32 %4703, 3
  %4708 = and i32 %4699, 255
  %4709 = uitofp i32 %4708 to float
  %4710 = lshr i32 %4699, 8
  %4711 = and i32 %4710, 255
  %4712 = uitofp i32 %4711 to float
  %4713 = fmul fast float %4707, %4709
  %4714 = fadd fast float %4713, %4712
  %4715 = fmul fast float %4714, 0x3F70101000000000
  %4716 = fadd fast float %4715, 0xBFB99999A0000000
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4717, 0x3FF1C71C80000000
  %4719 = call float @dx.op.binary.f32(i32 36, float %4715, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4720 = fsub fast float 1.000000e+00, %4718
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4721, %4704
  %4723 = fmul fast float %4721, %4705
  %4724 = fmul fast float %4721, %4706
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = fmul fast float %4718, %4704
  %4729 = fmul fast float %4718, %4705
  %4730 = fmul fast float %4718, %4706
  %4731 = fadd fast float %4728, %4719
  %4732 = fadd fast float %4729, %4719
  %4733 = fadd fast float %4730, %4719
  %4734 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.i32 %4737, 3
  %4739 = extractvalue %dx.types.CBufRet.i32 %4737, 2
  %4740 = add i32 %4739, 0
  %4741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4742 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4741, %dx.types.Handle %110, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float %4615, float %4616, float undef, float %4619, float %4620, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4743 = extractvalue %dx.types.ResRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.ResRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.ResRet.f32 %4742, 2
  %4746 = extractvalue %dx.types.ResRet.f32 %4742, 3
  %4747 = and i32 %4738, 255
  %4748 = uitofp i32 %4747 to float
  %4749 = lshr i32 %4738, 8
  %4750 = and i32 %4749, 255
  %4751 = uitofp i32 %4750 to float
  %4752 = lshr i32 %4738, 16
  %4753 = and i32 %4752, 255
  %4754 = uitofp i32 %4753 to float
  %4755 = fmul fast float %4754, 0x3F70101000000000
  %4756 = fmul fast float %4743, %4748
  %4757 = fadd fast float %4756, %4751
  %4758 = fmul fast float %4757, 0x3F70101000000000
  %4759 = fadd fast float %4744, -5.000000e-01
  %4760 = fadd fast float %4746, -5.000000e-01
  %4761 = fmul fast float %4759, %4755
  %4762 = fmul fast float %4760, %4755
  %4763 = fadd fast float %4761, 5.000000e-01
  %4764 = fadd fast float %4762, 5.000000e-01
  %4765 = fmul fast float %4763, 2.000000e+00
  %4766 = fadd fast float %4765, -1.000000e+00
  %4767 = fmul fast float %4764, 2.000000e+00
  %4768 = fadd fast float %4767, -1.000000e+00
  %4769 = fadd fast float %4766, %4768
  %4770 = fmul fast float %4769, 5.000000e-01
  %4771 = fsub fast float %4766, %4768
  %4772 = fmul fast float %4771, 5.000000e-01
  %4773 = call float @dx.op.unary.f32(i32 6, float %4770)  ; FAbs(value)
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = call float @dx.op.unary.f32(i32 6, float %4772)  ; FAbs(value)
  %4776 = fsub fast float %4774, %4775
  %4777 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4772, float %4776, float %4770, float %4772, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  %4779 = fmul fast float %4770, %4778
  %4780 = fmul fast float %4772, %4778
  %4781 = select i1 %4608, i32 %4598, i32 %4599
  %4782 = select i1 %4606, i32 %4597, i32 %4781
  %4783 = sitofp i32 %4782 to float
  %4784 = fmul fast float %4776, %4783
  %4785 = fmul fast float %4784, %4778
  %4786 = select i1 %4608, float %4785, float %4780
  %4787 = select i1 %4608, float %4780, float %4785
  %4788 = select i1 %4606, float %4785, float %4779
  %4789 = select i1 %4606, float %4780, float %4786
  %4790 = select i1 %4606, float %4779, float %4787
  %4791 = fsub fast float %4725, %4549
  %4792 = fsub fast float %4726, %4550
  %4793 = fsub fast float %4727, %4551
  %4794 = fmul fast float %4791, %4697
  %4795 = fmul fast float %4792, %4697
  %4796 = fmul fast float %4793, %4697
  %4797 = fadd fast float %4794, %4549
  %4798 = fadd fast float %4795, %4550
  %4799 = fadd fast float %4796, %4551
  %4800 = fsub fast float %4734, %4555
  %4801 = fsub fast float %4735, %4556
  %4802 = fsub fast float %4736, %4557
  %4803 = fmul fast float %4800, %4697
  %4804 = fmul fast float %4801, %4697
  %4805 = fmul fast float %4802, %4697
  %4806 = fadd fast float %4803, %4555
  %4807 = fadd fast float %4804, %4556
  %4808 = fadd fast float %4805, %4557
  %4809 = fadd fast float %4788, %4552
  %4810 = fadd fast float %4789, %4553
  %4811 = fadd fast float %4790, %4554
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4810, float %4811, float %4809, float %4810, float %4811)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = call float @dx.op.unary.f32(i32 25, float %4812)  ; Rsqrt(value)
  %4814 = fmul fast float %4809, %4813
  %4815 = fmul fast float %4810, %4813
  %4816 = fmul fast float %4811, %4813
  %4817 = fsub fast float %4814, %4552
  %4818 = fsub fast float %4815, %4553
  %4819 = fsub fast float %4816, %4554
  %4820 = fmul fast float %4817, %4697
  %4821 = fmul fast float %4818, %4697
  %4822 = fmul fast float %4819, %4697
  %4823 = fadd fast float %4820, %4552
  %4824 = fadd fast float %4821, %4553
  %4825 = fadd fast float %4822, %4554
  %4826 = call float @dx.op.binary.f32(i32 36, float %4559, float %4745)  ; FMin(a,b)
  %4827 = fsub fast float %4826, %4559
  %4828 = fmul fast float %4827, %4697
  %4829 = fadd fast float %4828, %4559
  %4830 = fsub fast float %4758, %4558
  %4831 = fmul fast float %4830, %4697
  %4832 = fadd fast float %4831, %4558
  br label %4833

; <label>:4833                                    ; preds = %4695, %4657, %4548, %4264
  %4834 = phi float [ %4797, %4695 ], [ %4549, %4657 ], [ %4549, %4548 ], [ %3873, %4264 ]
  %4835 = phi float [ %4798, %4695 ], [ %4550, %4657 ], [ %4550, %4548 ], [ %3874, %4264 ]
  %4836 = phi float [ %4799, %4695 ], [ %4551, %4657 ], [ %4551, %4548 ], [ %3875, %4264 ]
  %4837 = phi float [ %4823, %4695 ], [ %4552, %4657 ], [ %4552, %4548 ], [ %3822, %4264 ]
  %4838 = phi float [ %4824, %4695 ], [ %4553, %4657 ], [ %4553, %4548 ], [ %3823, %4264 ]
  %4839 = phi float [ %4825, %4695 ], [ %4554, %4657 ], [ %4554, %4548 ], [ %3824, %4264 ]
  %4840 = phi float [ %4806, %4695 ], [ %4555, %4657 ], [ %4555, %4548 ], [ %3858, %4264 ]
  %4841 = phi float [ %4807, %4695 ], [ %4556, %4657 ], [ %4556, %4548 ], [ %3859, %4264 ]
  %4842 = phi float [ %4808, %4695 ], [ %4557, %4657 ], [ %4557, %4548 ], [ %3860, %4264 ]
  %4843 = phi float [ %4832, %4695 ], [ %4558, %4657 ], [ %4558, %4548 ], [ %3861, %4264 ]
  %4844 = phi float [ %4829, %4695 ], [ %4559, %4657 ], [ %4559, %4548 ], [ %3834, %4264 ]
  %4845 = fcmp fast une float %4268, 0.000000e+00
  %4846 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = call float @dx.op.unary.f32(i32 25, float %4846)  ; Rsqrt(value)
  br i1 %4845, label %4855, label %4848

; <label>:4848                                    ; preds = %4833
  %4849 = fmul fast float %4847, %201
  %4850 = fmul fast float %4847, %202
  %4851 = fmul fast float %4847, %203
  %4852 = fsub fast float -0.000000e+00, %4849
  %4853 = fsub fast float -0.000000e+00, %4850
  %4854 = fsub fast float -0.000000e+00, %4851
  br label %5022

; <label>:4855                                    ; preds = %4833
  %4856 = fmul fast float %201, %4847
  %4857 = fsub fast float -0.000000e+00, %4856
  %4858 = fmul fast float %202, %4847
  %4859 = fsub fast float -0.000000e+00, %4858
  %4860 = fmul fast float %203, %4847
  %4861 = fsub fast float -0.000000e+00, %4860
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4857, float %4859, float %4861, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = fmul fast float %4268, 2.500000e+00
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fmul fast float %4268, 0x4013FFFFE0000000
  %4866 = fadd fast float %4865, 0xBFFFFFFFE0000000
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = fmul fast float %4268, 0x4004000020000000
  %4869 = fadd fast float %4868, 0xBFF8000040000000
  %4870 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4871 = fmul fast float %3840, 1.000000e+01
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fsub fast float 3.000000e+00, %4873
  %4875 = fmul fast float %4872, %4872
  %4876 = fmul fast float %4875, %4874
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = fsub fast float 0x3FE3333340000000, %4843
  %4879 = fmul fast float %4878, 0x400AAAAAA0000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4877, %4880
  %4882 = fmul fast float %4834, 0x3FEA2B8620000000
  %4883 = fmul fast float %4835, 0x3FEA2B8620000000
  %4884 = fmul fast float %4836, 0x3FEA2B8620000000
  %4885 = fadd fast float %4882, 0x3FC81DFBA0000000
  %4886 = fmul fast float %4885, %4834
  %4887 = fadd fast float %4886, 0x3F910E6020000000
  %4888 = fadd fast float %4883, 0x3FC81DFBA0000000
  %4889 = fmul fast float %4888, %4835
  %4890 = fadd fast float %4889, 0x3F910E6020000000
  %4891 = fadd fast float %4884, 0x3FC81DFBA0000000
  %4892 = fmul fast float %4891, %4836
  %4893 = fadd fast float %4892, 0x3F910E6020000000
  %4894 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = fsub fast float %4894, %4834
  %4898 = fsub fast float %4895, %4835
  %4899 = fsub fast float %4896, %4836
  %4900 = fmul fast float %4897, %4864
  %4901 = fmul fast float %4900, %4881
  %4902 = fmul fast float %4898, %4864
  %4903 = fmul fast float %4902, %4881
  %4904 = fmul fast float %4899, %4864
  %4905 = fmul fast float %4904, %4881
  %4906 = fadd fast float %4901, %4834
  %4907 = fadd fast float %4903, %4835
  %4908 = fadd fast float %4905, %4836
  %4909 = fmul fast float %4844, %4844
  %4910 = fmul fast float %4909, %4909
  %4911 = fadd fast float %4867, 1.000000e+00
  %4912 = fsub fast float %4911, %4881
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fsub fast float 1.000000e+00, %4910
  %4917 = call float @dx.op.binary.f32(i32 36, float %4913, float %4916)  ; FMin(a,b)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4917, float %4918)  ; FMax(a,b)
  %4920 = fadd fast float %4915, 0xBFE4CCCCC0000000
  %4921 = fmul fast float %4920, 0x4006DB6DA0000000
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 2.000000e+00
  %4924 = fsub fast float 3.000000e+00, %4923
  %4925 = bitcast float %4840 to i32
  %4926 = ashr i32 %4925, 1
  %4927 = add nsw i32 %4926, 532487669
  %4928 = bitcast i32 %4927 to float
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = bitcast float %4929 to i32
  %4931 = sub nsw i32 2129859010, %4930
  %4932 = bitcast i32 %4931 to float
  %4933 = fmul fast float %4932, 2.000000e+00
  %4934 = bitcast float %4841 to i32
  %4935 = ashr i32 %4934, 1
  %4936 = add nsw i32 %4935, 532487669
  %4937 = bitcast i32 %4936 to float
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4941, 2.000000e+00
  %4943 = bitcast float %4842 to i32
  %4944 = ashr i32 %4943, 1
  %4945 = add nsw i32 %4944, 532487669
  %4946 = bitcast i32 %4945 to float
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = bitcast float %4947 to i32
  %4949 = sub nsw i32 2129859010, %4948
  %4950 = bitcast i32 %4949 to float
  %4951 = fmul fast float %4950, 2.000000e+00
  %4952 = fsub fast float 0x4002A9FBE0000000, %4933
  %4953 = fadd fast float %4933, 0x3FD54FDF00000000
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4957, %4957
  %4959 = fsub fast float 0x4002A9FBE0000000, %4942
  %4960 = fadd fast float %4942, 0x3FD54FDF00000000
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %4959
  %4965 = fmul fast float %4964, %4964
  %4966 = fsub fast float 0x4002A9FBE0000000, %4951
  %4967 = fadd fast float %4951, 0x3FD54FDF00000000
  %4968 = bitcast float %4967 to i32
  %4969 = sub nsw i32 2129859010, %4968
  %4970 = bitcast i32 %4969 to float
  %4971 = fmul fast float %4970, %4966
  %4972 = fmul fast float %4971, %4971
  %4973 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4958)  ; FMax(a,b)
  %4974 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4965)  ; FMax(a,b)
  %4975 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4972)  ; FMax(a,b)
  %4976 = fsub fast float 1.000000e+00, %4862
  %4977 = fadd fast float %4976, %4877
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fsub fast float 1.000000e+00, %4249
  %4980 = fmul fast float %4919, %4979
  %4981 = fmul fast float %4922, %4922
  %4982 = fmul fast float %4981, %4980
  %4983 = fmul fast float %4982, %4924
  %4984 = fmul fast float %4979, 0xBFE99999A0000000
  %4985 = fmul fast float %4984, %4864
  %4986 = fmul fast float %4985, %4881
  %4987 = fadd fast float %4986, 1.000000e+00
  %4988 = fadd fast float %4843, -1.000000e+00
  %4989 = fmul fast float %4987, %4988
  %4990 = fadd fast float %4989, 1.000000e+00
  %4991 = fsub fast float %4973, %4840
  %4992 = fsub fast float %4974, %4841
  %4993 = fsub fast float %4975, %4842
  %4994 = fmul fast float %4983, %4991
  %4995 = fmul fast float %4983, %4992
  %4996 = fmul fast float %4983, %4993
  %4997 = fadd fast float %4994, %4840
  %4998 = fadd fast float %4995, %4841
  %4999 = fadd fast float %4996, %4842
  %5000 = fsub fast float %121, %4837
  %5001 = fsub fast float %122, %4838
  %5002 = fsub fast float %123, %4839
  %5003 = fmul fast float %4983, %5000
  %5004 = fmul fast float %4983, %5001
  %5005 = fmul fast float %4983, %5002
  %5006 = fadd fast float %5003, %4837
  %5007 = fadd fast float %5004, %4838
  %5008 = fadd fast float %5005, %4839
  %5009 = fmul fast float %4983, %4978
  %5010 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = fmul fast float %5009, %5011
  %5013 = fadd fast float %5012, %5010
  %5014 = fsub fast float 1.000000e+00, %4844
  %5015 = fmul fast float %4983, %5014
  %5016 = fadd fast float %5015, %4844
  %5017 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = call float @dx.op.unary.f32(i32 25, float %5017)  ; Rsqrt(value)
  %5019 = fmul fast float %5006, %5018
  %5020 = fmul fast float %5007, %5018
  %5021 = fmul fast float %5008, %5018
  br label %5022

; <label>:5022                                    ; preds = %4855, %4848
  %5023 = phi float [ %4854, %4848 ], [ %4861, %4855 ]
  %5024 = phi float [ %4853, %4848 ], [ %4859, %4855 ]
  %5025 = phi float [ %4852, %4848 ], [ %4857, %4855 ]
  %5026 = phi float [ %4851, %4848 ], [ %4860, %4855 ]
  %5027 = phi float [ %4850, %4848 ], [ %4858, %4855 ]
  %5028 = phi float [ %4849, %4848 ], [ %4856, %4855 ]
  %5029 = phi float [ %4834, %4848 ], [ %4906, %4855 ]
  %5030 = phi float [ %4835, %4848 ], [ %4907, %4855 ]
  %5031 = phi float [ %4836, %4848 ], [ %4908, %4855 ]
  %5032 = phi float [ %4837, %4848 ], [ %5019, %4855 ]
  %5033 = phi float [ %4838, %4848 ], [ %5020, %4855 ]
  %5034 = phi float [ %4839, %4848 ], [ %5021, %4855 ]
  %5035 = phi float [ %4840, %4848 ], [ %4997, %4855 ]
  %5036 = phi float [ %4841, %4848 ], [ %4998, %4855 ]
  %5037 = phi float [ %4842, %4848 ], [ %4999, %4855 ]
  %5038 = phi float [ %4843, %4848 ], [ %5013, %4855 ]
  %5039 = phi float [ %4844, %4848 ], [ %5016, %4855 ]
  %5040 = fsub fast float -0.000000e+00, %203
  %5041 = select i1 %260, float 0.000000e+00, float %5037
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5025, float %5024, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5027, float %5026, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = fmul fast float %5044, 2.000000e+00
  %5046 = fmul fast float %5045, %5032
  %5047 = fmul fast float %5045, %5033
  %5048 = fmul fast float %5045, %5034
  %5049 = fsub fast float %5028, %5046
  %5050 = fsub fast float %5027, %5047
  %5051 = fsub fast float %5026, %5048
  %5052 = call float @dx.op.binary.f32(i32 36, float %5039, float 1.000000e+00)  ; FMin(a,b)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = bitcast float %5053 to i32
  %5055 = ashr i32 %5054, 1
  %5056 = add nsw i32 %5055, 532487669
  %5057 = bitcast i32 %5056 to float
  %5058 = fsub fast float 1.000000e+00, %5038
  %5059 = call float @dx.op.binary.f32(i32 35, float %5058, float 0x3F847AE140000000)  ; FMax(a,b)
  %5060 = fmul fast float %5059, %5059
  %5061 = fmul fast float %5060, %5060
  %5062 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5057, float %5061, float %5062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = fsub fast float 1.000000e+00, %5039
  %5066 = bitcast float %5065 to i32
  %5067 = sub nsw i32 2129859010, %5066
  %5068 = bitcast i32 %5067 to float
  %5069 = fsub fast float 1.000000e+00, %81
  %5070 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5072 = fdiv fast float %5069, %5071
  %5073 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fmul fast float %5074, 5.000000e-01
  %5076 = fadd fast float %5075, 5.000000e-01
  %5077 = fmul fast float %5076, %81
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = fmul fast float %5079, %5072
  %5081 = fadd fast float %5077, %5080
  %5082 = fsub fast float 5.000000e-01, %5075
  %5083 = fmul fast float %5082, %5029
  %5084 = fmul fast float %5082, %5030
  %5085 = fmul fast float %5082, %5031
  %5086 = fadd fast float %5081, %5083
  %5087 = fadd fast float %5081, %5084
  %5088 = fadd fast float %5081, %5085
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5091 = fmul fast float %5090, 5.000000e-01
  %5092 = fadd fast float %5091, 5.000000e-01
  %5093 = fmul fast float %5092, %81
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, %5072
  %5097 = fadd fast float %5093, %5096
  %5098 = fsub fast float 5.000000e-01, %5091
  %5099 = fmul fast float %5098, %5029
  %5100 = fmul fast float %5098, %5030
  %5101 = fmul fast float %5098, %5031
  %5102 = fadd fast float %5097, %5099
  %5103 = fadd fast float %5097, %5100
  %5104 = fadd fast float %5097, %5101
  %5105 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = call float @dx.op.binary.f32(i32 36, float %5029, float %5107)  ; FMin(a,b)
  %5109 = fmul fast float %5108, %5053
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = bitcast float %5110 to i32
  %5112 = sub nsw i32 2129859010, %5111
  %5113 = bitcast i32 %5112 to float
  %5114 = call float @dx.op.binary.f32(i32 36, float %5030, float %5107)  ; FMin(a,b)
  %5115 = fmul fast float %5114, %5053
  %5116 = fsub fast float 1.000000e+00, %5115
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = call float @dx.op.binary.f32(i32 36, float %5031, float %5107)  ; FMin(a,b)
  %5121 = fmul fast float %5120, %5053
  %5122 = fsub fast float 1.000000e+00, %5121
  %5123 = bitcast float %5122 to i32
  %5124 = sub nsw i32 2129859010, %5123
  %5125 = bitcast i32 %5124 to float
  %5126 = fmul fast float %5052, %82
  %5127 = fmul fast float %5126, %5086
  %5128 = fmul fast float %5127, %5113
  %5129 = fmul fast float %5052, %83
  %5130 = fmul fast float %5129, %5087
  %5131 = fmul fast float %5130, %5119
  %5132 = fmul fast float %5052, %84
  %5133 = fmul fast float %5132, %5088
  %5134 = fmul fast float %5133, %5125
  %5135 = call float @dx.op.binary.f32(i32 36, float %5035, float %5107)  ; FMin(a,b)
  %5136 = fmul fast float %5135, %5053
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = call float @dx.op.binary.f32(i32 36, float %5036, float %5107)  ; FMin(a,b)
  %5142 = fmul fast float %5141, %5053
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sub nsw i32 2129859010, %5144
  %5146 = bitcast i32 %5145 to float
  %5147 = call float @dx.op.binary.f32(i32 36, float %5041, float %5107)  ; FMin(a,b)
  %5148 = fmul fast float %5147, %5053
  %5149 = fsub fast float 1.000000e+00, %5148
  %5150 = bitcast float %5149 to i32
  %5151 = sub nsw i32 2129859010, %5150
  %5152 = bitcast i32 %5151 to float
  %5153 = fmul fast float %5126, %5102
  %5154 = fmul fast float %5153, %5140
  %5155 = fmul fast float %5129, %5103
  %5156 = fmul fast float %5155, %5146
  %5157 = fmul fast float %5132, %5104
  %5158 = fmul fast float %5157, %5152
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5131, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = select i1 %260, float 0.000000e+00, float %5128
  %5161 = select i1 %260, float %5159, float %5131
  %5162 = select i1 %260, float 0.000000e+00, float %5134
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5156, float %5158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = select i1 %260, float 0.000000e+00, float %5154
  %5165 = select i1 %260, float %5163, float %5156
  %5166 = select i1 %260, float 0.000000e+00, float %5158
  %5167 = fmul fast float %5043, 9.843750e-01
  %5168 = fmul fast float %5038, 9.843750e-01
  %5169 = fadd fast float %5167, 7.812500e-03
  %5170 = fadd fast float %5168, 7.812500e-03
  %5171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5169, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5172 = extractvalue %dx.types.ResRet.f32 %5171, 2
  %5173 = extractvalue %dx.types.ResRet.f32 %5171, 3
  %5174 = fmul fast float %5172, %5035
  %5175 = fmul fast float %5172, %5036
  %5176 = fmul fast float %5172, %5041
  %5177 = fadd fast float %5174, %5173
  %5178 = fadd fast float %5175, %5173
  %5179 = fadd fast float %5176, %5173
  %5180 = fcmp fast ogt float %3835, 0.000000e+00
  br i1 %5180, label %5181, label %5207

; <label>:5181                                    ; preds = %5022
  %5182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3835, float %5043, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.ResRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.ResRet.f32 %5182, 2
  %5186 = fadd fast float %5183, -5.000000e-01
  %5187 = fadd fast float %5184, -5.000000e-01
  %5188 = fadd fast float %5185, -5.000000e-01
  %5189 = fsub fast float 1.000000e+00, %5035
  %5190 = fsub fast float 1.000000e+00, %5036
  %5191 = fsub fast float 1.000000e+00, %5041
  %5192 = fmul fast float %5035, 4.000000e+00
  %5193 = fmul fast float %5192, %5189
  %5194 = fmul fast float %5193, %5186
  %5195 = fmul fast float %5036, 4.000000e+00
  %5196 = fmul fast float %5195, %5190
  %5197 = fmul fast float %5196, %5187
  %5198 = fmul fast float %5041, 4.000000e+00
  %5199 = fmul fast float %5198, %5191
  %5200 = fmul fast float %5199, %5188
  %5201 = fadd fast float %5194, %5177
  %5202 = fadd fast float %5197, %5178
  %5203 = fadd fast float %5200, %5179
  %5204 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  br label %5207

; <label>:5207                                    ; preds = %5181, %5022
  %5208 = phi float [ %5204, %5181 ], [ %5177, %5022 ]
  %5209 = phi float [ %5205, %5181 ], [ %5178, %5022 ]
  %5210 = phi float [ %5206, %5181 ], [ %5179, %5022 ]
  %5211 = call float @dx.op.binary.f32(i32 35, float %5209, float %5210)  ; FMax(a,b)
  %5212 = call float @dx.op.binary.f32(i32 35, float %5208, float %5211)  ; FMax(a,b)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5212, %5038
  %5215 = fadd fast float %5214, %5038
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5218 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5219 = fmul fast float %5215, %5217
  %5220 = fadd fast float %5219, %5218
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fsub fast float 1.000000e+00, %5064
  %5223 = fadd fast float %5222, %5221
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fcmp fast olt float %5224, 1.000000e+00
  br i1 %5225, label %5226, label %5702

; <label>:5226                                    ; preds = %5207
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5229 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5230 = fmul fast float %5228, %114
  %5231 = fmul fast float %5229, %115
  %5232 = fptoui float %5230 to i32
  %5233 = fptoui float %5231 to i32
  %5234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.f32 %5234, 0
  %5236 = extractvalue %dx.types.CBufRet.f32 %5234, 2
  %5237 = extractvalue %dx.types.CBufRet.f32 %5234, 3
  %5238 = fadd fast float %101, -4.000000e+00
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0.000000e+00)  ; FMax(a,b)
  %5240 = fadd fast float %5239, %5235
  %5241 = fmul fast float %5240, %5236
  %5242 = call float @dx.op.unary.f32(i32 23, float %5241)  ; Log(value)
  %5243 = fmul fast float %5242, %5237
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5246 = fmul fast float %5243, %5245
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.i32 %5248, 1
  %5250 = add i32 %5249, -1
  %5251 = uitofp i32 %5249 to float
  %5252 = fmul fast float %5251, %5247
  %5253 = fptoui float %5252 to i32
  %5254 = call i32 @dx.op.binary.i32(i32 40, i32 %5253, i32 %5250)  ; UMin(a,b)
  %5255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.i32 %5255, 2
  %5257 = extractvalue %dx.types.CBufRet.i32 %5255, 3
  %5258 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5233, i32 %5256, i32 %5232)  ; UMad(a,b,c)
  %5259 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5254, i32 %5257, i32 %5258)  ; UMad(a,b,c)
  %5260 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5261 = fptoui float %5260 to i32
  %5262 = lshr i32 %5261, 5
  %5263 = call i32 @dx.op.binary.i32(i32 40, i32 %5262, i32 8191)  ; UMin(a,b)
  %5264 = fsub fast float %4239, %203
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fcmp fast ogt float %5265, 0.000000e+00
  %5267 = fcmp fast ogt float %5051, 0.000000e+00
  %5268 = and i1 %5267, %5266
  br i1 %5268, label %5269, label %5298

; <label>:5269                                    ; preds = %5226
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = call float @dx.op.binary.f32(i32 35, float %5270, float -1.000000e+00)  ; FMax(a,b)
  %5272 = call float @dx.op.binary.f32(i32 36, float %5271, float 1.000000e+00)  ; FMin(a,b)
  %5273 = fmul fast float %5272, %5272
  %5274 = fsub fast float 1.000000e+00, %5273
  %5275 = fmul fast float %5274, 0x3FFC6E2300000000
  %5276 = fsub fast float 1.000000e+00, %5275
  %5277 = fcmp fast ogt float %5276, 0.000000e+00
  %5278 = call float @dx.op.unary.f32(i32 24, float %5276)  ; Sqrt(value)
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = call float @dx.op.unary.f32(i32 23, float %5279)  ; Log(value)
  %5281 = fmul fast float %5280, 5.000000e+00
  %5282 = call float @dx.op.unary.f32(i32 21, float %5281)  ; Exp(value)
  %5283 = fmul fast float %5282, 0x3FEF591A60000000
  %5284 = fadd fast float %5283, 0x3F94DCB540000000
  %5285 = select i1 %5277, float %5284, float 1.000000e+00
  %5286 = fcmp fast oge float %5285, 1.000000e+00
  %5287 = fmul fast float %5270, 2.000000e+00
  %5288 = fadd fast float %5287, %5051
  %5289 = select i1 %5286, float %5288, float %5051
  %5290 = fsub fast float %5289, %5051
  %5291 = fmul fast float %5290, %5265
  %5292 = fadd fast float %5291, %5051
  %5293 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5292, float %5049, float %5050, float %5292)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = call float @dx.op.unary.f32(i32 25, float %5293)  ; Rsqrt(value)
  %5295 = fmul fast float %5294, %5049
  %5296 = fmul fast float %5294, %5050
  %5297 = fmul fast float %5292, %5294
  br label %5298

; <label>:5298                                    ; preds = %5269, %5226
  %5299 = phi float [ %5295, %5269 ], [ %5049, %5226 ]
  %5300 = phi float [ %5296, %5269 ], [ %5050, %5226 ]
  %5301 = phi float [ %5297, %5269 ], [ %5051, %5226 ]
  %5302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.i32 %5302, 2
  %5304 = add nsw i32 %5303, -1
  %5305 = call i32 @dx.op.binary.i32(i32 37, i32 %5304, i32 0)  ; IMax(a,b)
  %5306 = shl i32 %5263, 2
  %5307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.i32 %5307, 0
  %5309 = lshr i32 %5308, 16
  %5310 = and i32 %5308, 65535
  %5311 = lshr i32 %5308, 21
  %5312 = lshr i32 %5310, 5
  %5313 = call i32 @dx.op.binary.i32(i32 40, i32 %5312, i32 %5305)  ; UMin(a,b)
  %5314 = icmp ugt i32 %5311, %5313
  br i1 %5314, label %5678, label %5315

; <label>:5315                                    ; preds = %5298
  br label %5316

; <label>:5316                                    ; preds = %5670, %5315
  %5317 = phi float [ %5671, %5670 ], [ 0.000000e+00, %5315 ]
  %5318 = phi float [ %5672, %5670 ], [ 0.000000e+00, %5315 ]
  %5319 = phi float [ %5673, %5670 ], [ 0.000000e+00, %5315 ]
  %5320 = phi float [ %5674, %5670 ], [ 1.000000e+00, %5315 ]
  %5321 = phi i32 [ %5675, %5670 ], [ %5311, %5315 ]
  %5322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.i32 %5322, 2
  %5324 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5259, i32 %5323, i32 %5321)  ; UMad(a,b,c)
  %5325 = shl i32 %5324, 2
  %5326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5325, i32 undef)  ; BufferLoad(srv,index,wot)
  %5327 = extractvalue %dx.types.ResRet.i32 %5326, 0
  %5328 = shl i32 %5321, 5
  %5329 = sub nsw i32 %5309, %5328
  %5330 = call i32 @dx.op.binary.i32(i32 37, i32 %5329, i32 0)  ; IMax(a,b)
  %5331 = call i32 @dx.op.binary.i32(i32 38, i32 %5330, i32 31)  ; IMin(a,b)
  %5332 = sub nsw i32 1, %5309
  %5333 = add nsw i32 %5332, %5310
  %5334 = call i32 @dx.op.binary.i32(i32 37, i32 %5333, i32 0)  ; IMax(a,b)
  %5335 = call i32 @dx.op.binary.i32(i32 38, i32 %5334, i32 32)  ; IMin(a,b)
  %5336 = and i32 %5335, 31
  %5337 = shl i32 -1, %5336
  %5338 = xor i32 %5337, -1
  %5339 = and i32 %5331, 31
  %5340 = shl i32 %5338, %5339
  %5341 = icmp eq i32 %5335, 32
  %5342 = select i1 %5341, i32 -1, i32 %5340
  %5343 = and i32 %5342, %5327
  %5344 = icmp eq i32 %5343, 0
  br i1 %5344, label %5670, label %5345

; <label>:5345                                    ; preds = %5316
  br label %5346

; <label>:5346                                    ; preds = %5453, %5345
  %5347 = phi float [ %5454, %5453 ], [ %5317, %5345 ]
  %5348 = phi float [ %5455, %5453 ], [ %5318, %5345 ]
  %5349 = phi float [ %5456, %5453 ], [ %5319, %5345 ]
  %5350 = phi float [ %5457, %5453 ], [ %5320, %5345 ]
  %5351 = phi i32 [ %5356, %5453 ], [ %5343, %5345 ]
  %5352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5351)  ; FirstbitLo(value)
  %5353 = add i32 %5352, %5328
  %5354 = and i32 %5352, 31
  %5355 = shl i32 1, %5354
  %5356 = xor i32 %5355, %5351
  %5357 = mul i32 %5353, 72
  %5358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5357, i32 undef)  ; BufferLoad(srv,index,wot)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = extractvalue %dx.types.ResRet.f32 %5358, 1
  %5361 = extractvalue %dx.types.ResRet.f32 %5358, 2
  %5362 = add i32 %5357, 12
  %5363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.i32 %5363, 0
  %5365 = add i32 %5357, 16
  %5366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = extractvalue %dx.types.ResRet.f32 %5366, 1
  %5369 = extractvalue %dx.types.ResRet.f32 %5366, 2
  %5370 = add i32 %5357, 28
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = add i32 %5357, 32
  %5374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5378 = extractvalue %dx.types.ResRet.f32 %5374, 3
  %5379 = add i32 %5357, 48
  %5380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5379, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = extractvalue %dx.types.ResRet.f32 %5380, 1
  %5383 = add i32 %5357, 56
  %5384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.ResRet.f32 %5384, 1
  %5387 = add i32 %5357, 64
  %5388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = mul i32 %5353, 60
  %5392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5391, i32 undef)  ; BufferLoad(srv,index,wot)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  %5394 = extractvalue %dx.types.ResRet.f32 %5392, 1
  %5395 = extractvalue %dx.types.ResRet.f32 %5392, 2
  %5396 = add i32 %5391, 12
  %5397 = add i32 %5391, 48
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = and i32 %5364, 32767
  %5403 = bitcast float %5359 to i32
  %5404 = icmp eq i32 %5403, -1
  %5405 = bitcast float %5360 to i32
  %5406 = and i32 %5364, 32768
  %5407 = icmp ne i32 %5406, 0
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5412 = fsub fast float %5393, %5409
  %5413 = fsub fast float %5394, %5410
  %5414 = fsub fast float %5395, %5411
  %5415 = fsub fast float %201, %5412
  %5416 = fsub fast float %202, %5413
  %5417 = fsub fast float %203, %5414
  %5418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.ResRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.ResRet.f32 %5418, 2
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = add i32 %5391, 24
  %5424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = add i32 %5391, 36
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5436 = call float @dx.op.unary.f32(i32 6, float %5428)  ; FAbs(value)
  %5437 = call float @dx.op.unary.f32(i32 6, float %5434)  ; FAbs(value)
  %5438 = fsub fast float %5399, %5435
  %5439 = fsub fast float %5400, %5436
  %5440 = fsub fast float %5401, %5437
  %5441 = fmul fast float %5438, %5367
  %5442 = fmul fast float %5439, %5368
  %5443 = fmul fast float %5440, %5369
  %5444 = call float @dx.op.binary.f32(i32 36, float %5442, float %5443)  ; FMin(a,b)
  %5445 = call float @dx.op.binary.f32(i32 36, float %5441, float %5444)  ; FMin(a,b)
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = call float @dx.op.binary.f32(i32 36, float %5350, float %5446)  ; FMin(a,b)
  %5448 = uitofp i1 %5407 to float
  %5449 = fadd fast float %5265, 1.000000e+00
  %5450 = fsub fast float %5449, %5448
  %5451 = fmul fast float %5447, %5450
  %5452 = fcmp fast ogt float %5451, 0.000000e+00
  br i1 %5452, label %5459, label %5453

; <label>:5453                                    ; preds = %5601, %5346
  %5454 = phi float [ %5665, %5601 ], [ %5347, %5346 ]
  %5455 = phi float [ %5666, %5601 ], [ %5348, %5346 ]
  %5456 = phi float [ %5667, %5601 ], [ %5349, %5346 ]
  %5457 = phi float [ %5668, %5601 ], [ %5350, %5346 ]
  %5458 = icmp eq i32 %5351, %5355
  br i1 %5458, label %5669, label %5346

; <label>:5459                                    ; preds = %5346
  br i1 %5404, label %5517, label %5460

; <label>:5460                                    ; preds = %5459
  %5461 = fsub fast float -0.000000e+00, %5419
  %5462 = fsub fast float -0.000000e+00, %5420
  %5463 = fsub fast float -0.000000e+00, %5421
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = fsub fast float -0.000000e+00, %5464
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = fadd fast float %5466, %5382
  %5468 = fadd fast float %5381, %5466
  %5469 = fsub fast float -0.000000e+00, %5468
  %5470 = fcmp ogt float %5464, -0.000000e+00
  %5471 = select i1 %5470, float %5469, float %5467
  %5472 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5473 = fdiv fast float 1.000000e+00, %5472
  %5474 = fmul fast float %5471, %5473
  %5475 = call float @dx.op.binary.f32(i32 35, float %5474, float 0.000000e+00)  ; FMax(a,b)
  %5476 = fsub fast float -0.000000e+00, %5425
  %5477 = fsub fast float -0.000000e+00, %5426
  %5478 = fsub fast float -0.000000e+00, %5427
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5476, float %5477, float %5478)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fadd fast float %5481, %5386
  %5483 = fadd fast float %5385, %5481
  %5484 = fsub fast float -0.000000e+00, %5483
  %5485 = fcmp ogt float %5479, -0.000000e+00
  %5486 = select i1 %5485, float %5484, float %5482
  %5487 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5488 = fdiv fast float 1.000000e+00, %5487
  %5489 = fmul fast float %5486, %5488
  %5490 = call float @dx.op.binary.f32(i32 35, float %5489, float 0.000000e+00)  ; FMax(a,b)
  %5491 = fsub fast float -0.000000e+00, %5431
  %5492 = fsub fast float -0.000000e+00, %5432
  %5493 = fsub fast float -0.000000e+00, %5433
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5300, float %5301, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5416, float %5417, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fadd fast float %5496, %5390
  %5498 = fadd fast float %5389, %5496
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = fcmp ogt float %5494, -0.000000e+00
  %5501 = select i1 %5500, float %5499, float %5497
  %5502 = call float @dx.op.unary.f32(i32 6, float %5495)  ; FAbs(value)
  %5503 = fdiv fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5501, %5503
  %5505 = call float @dx.op.binary.f32(i32 35, float %5504, float 0.000000e+00)  ; FMax(a,b)
  %5506 = call float @dx.op.binary.f32(i32 36, float %5490, float %5505)  ; FMin(a,b)
  %5507 = call float @dx.op.binary.f32(i32 36, float %5475, float %5506)  ; FMin(a,b)
  %5508 = fmul fast float %5507, %5299
  %5509 = fmul fast float %5507, %5300
  %5510 = fmul fast float %5507, %5301
  %5511 = fadd fast float %5508, %201
  %5512 = fadd fast float %5509, %202
  %5513 = fadd fast float %5510, %203
  %5514 = fsub fast float %5511, %5359
  %5515 = fsub fast float %5512, %5360
  %5516 = fsub fast float %5513, %5361
  br label %5524

; <label>:5517                                    ; preds = %5459
  %5518 = fmul fast float %5299, 8.096000e+03
  %5519 = fmul fast float %5300, 8.096000e+03
  %5520 = fmul fast float %5301, 8.096000e+03
  %5521 = fadd fast float %5518, %201
  %5522 = fadd fast float %5519, %202
  %5523 = fadd fast float %5520, %203
  br label %5524

; <label>:5524                                    ; preds = %5517, %5460
  %5525 = phi float [ %5299, %5517 ], [ %5514, %5460 ]
  %5526 = phi float [ %5300, %5517 ], [ %5515, %5460 ]
  %5527 = phi float [ %5301, %5517 ], [ %5516, %5460 ]
  %5528 = phi float [ %5521, %5517 ], [ %5511, %5460 ]
  %5529 = phi float [ %5522, %5517 ], [ %5512, %5460 ]
  %5530 = phi float [ %5523, %5517 ], [ %5513, %5460 ]
  %5531 = fcmp fast olt float %5378, 1.000000e+00
  br i1 %5531, label %5532, label %5563, !dx.controlflow.hints !100

; <label>:5532                                    ; preds = %5524
  %5533 = fmul fast float %5527, %5376
  %5534 = fmul fast float %5526, %5377
  %5535 = fsub fast float %5533, %5534
  %5536 = fmul fast float %5525, %5377
  %5537 = fmul fast float %5527, %5375
  %5538 = fsub fast float %5536, %5537
  %5539 = fmul fast float %5526, %5375
  %5540 = fmul fast float %5525, %5376
  %5541 = fsub fast float %5539, %5540
  %5542 = fmul fast float %5535, 2.000000e+00
  %5543 = fmul fast float %5538, 2.000000e+00
  %5544 = fmul fast float %5541, 2.000000e+00
  %5545 = fmul fast float %5542, %5378
  %5546 = fmul fast float %5543, %5378
  %5547 = fmul fast float %5544, %5378
  %5548 = fmul fast float %5544, %5376
  %5549 = fmul fast float %5543, %5377
  %5550 = fmul fast float %5542, %5377
  %5551 = fmul fast float %5544, %5375
  %5552 = fmul fast float %5543, %5375
  %5553 = fmul fast float %5542, %5376
  %5554 = fadd fast float %5548, %5525
  %5555 = fadd fast float %5554, %5545
  %5556 = fsub fast float %5555, %5549
  %5557 = fsub fast float %5526, %5551
  %5558 = fadd fast float %5557, %5546
  %5559 = fadd fast float %5558, %5550
  %5560 = fadd fast float %5547, %5527
  %5561 = fsub fast float %5560, %5553
  %5562 = fadd fast float %5561, %5552
  br label %5563

; <label>:5563                                    ; preds = %5532, %5524
  %5564 = phi float [ %5556, %5532 ], [ %5525, %5524 ]
  %5565 = phi float [ %5559, %5532 ], [ %5526, %5524 ]
  %5566 = phi float [ %5562, %5532 ], [ %5527, %5524 ]
  br i1 %5404, label %5598, label %5567

; <label>:5567                                    ; preds = %5563
  %5568 = fmul fast float %5038, 0x400187C840000000
  %5569 = fadd fast float %5568, 0xC00EFC2120000000
  %5570 = fmul fast float %5569, %5038
  %5571 = fadd fast float %5570, 0x3FE5D16340000000
  %5572 = fmul fast float %5571, %5038
  %5573 = fadd fast float %5572, 1.000000e+00
  %5574 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5575 = fsub fast float %5528, %201
  %5576 = fsub fast float %5529, %202
  %5577 = fsub fast float %5530, %203
  %5578 = fsub fast float %5528, %5359
  %5579 = fsub fast float %5529, %5360
  %5580 = fsub fast float %5530, %5361
  %5581 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5575, float %5576, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5582 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5578, float %5579, float %5580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = fadd fast float %5582, 0x3EE4F8B580000000
  %5584 = fdiv fast float %5581, %5583
  %5585 = bitcast float %5584 to i32
  %5586 = ashr i32 %5585, 1
  %5587 = add nsw i32 %5586, 532487669
  %5588 = bitcast i32 %5587 to float
  %5589 = fmul fast float %5588, %5574
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5590, 0x4009981AE0000000
  %5592 = fsub fast float 0x40111BBD80000000, %5591
  %5593 = fmul fast float %5592, %5590
  %5594 = fadd fast float %5593, 0xC0009F6020000000
  %5595 = fmul fast float %5594, %5590
  %5596 = fadd fast float %5595, 1.000000e+00
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  br label %5601

; <label>:5598                                    ; preds = %5563
  %5599 = icmp ne i32 %5405, -1
  %5600 = zext i1 %5599 to i32
  br label %5601

; <label>:5601                                    ; preds = %5598, %5567
  %5602 = phi float [ %5038, %5598 ], [ %5597, %5567 ]
  %5603 = phi i32 [ %5600, %5598 ], [ 0, %5567 ]
  %5604 = fmul float %5602, 5.000000e+00
  %5605 = fsub float 5.000000e+00, %5604
  %5606 = icmp ne i32 %5603, 0
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 3
  %5609 = fadd fast float %5608, %5605
  %5610 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5609)  ; FMax(a,b)
  %5611 = call float @dx.op.unary.f32(i32 6, float %5564)  ; FAbs(value)
  %5612 = call float @dx.op.unary.f32(i32 6, float %5565)  ; FAbs(value)
  %5613 = fadd fast float %5612, %5611
  %5614 = call float @dx.op.unary.f32(i32 6, float %5566)  ; FAbs(value)
  %5615 = fadd fast float %5613, %5614
  %5616 = fcmp fast oeq float %5615, 0.000000e+00
  %5617 = fdiv fast float 1.000000e+00, %5615
  %5618 = select i1 %5616, float 1.000000e+00, float %5617
  %5619 = fmul fast float %5618, %5564
  %5620 = fmul fast float %5618, %5565
  %5621 = call float @dx.op.unary.f32(i32 6, float %5620)  ; FAbs(value)
  %5622 = call float @dx.op.unary.f32(i32 6, float %5619)  ; FAbs(value)
  %5623 = fsub fast float 1.000000e+00, %5621
  %5624 = fsub fast float 1.000000e+00, %5622
  %5625 = fcmp fast oge float %5619, 0.000000e+00
  %5626 = fcmp fast oge float %5620, 0.000000e+00
  %5627 = select i1 %5625, float 1.000000e+00, float -1.000000e+00
  %5628 = select i1 %5626, float 1.000000e+00, float -1.000000e+00
  %5629 = fcmp fast ole float %5566, 0.000000e+00
  %5630 = fmul fast float %5627, %5623
  %5631 = fmul fast float %5628, %5624
  %5632 = select i1 %5629, float %5630, float %5619
  %5633 = select i1 %5629, float %5631, float %5620
  %5634 = fmul fast float %5632, 5.000000e-01
  %5635 = fmul fast float %5633, 5.000000e-01
  %5636 = fadd fast float %5634, 5.000000e-01
  %5637 = fadd fast float %5635, 5.000000e-01
  %5638 = uitofp i32 %5402 to float
  %5639 = call float @dx.op.binary.f32(i32 36, float %5610, float 3.000000e+00)  ; FMin(a,b)
  %5640 = fadd fast float %5639, 2.000000e+00
  %5641 = call float @dx.op.unary.f32(i32 21, float %5640)  ; Exp(value)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5607, 1
  %5643 = fmul fast float %5642, %5641
  %5644 = fmul fast float %5643, 2.000000e+00
  %5645 = fsub fast float 1.000000e+00, %5644
  %5646 = fmul fast float %5636, %5645
  %5647 = fmul fast float %5637, %5645
  %5648 = fadd fast float %5646, %5643
  %5649 = fadd fast float %5647, %5643
  %5650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5648, float %5649, float %5638, float undef, i32 0, i32 0, i32 undef, float %5610)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = extractvalue %dx.types.ResRet.f32 %5650, 1
  %5653 = extractvalue %dx.types.ResRet.f32 %5650, 2
  %5654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5655 = extractvalue %dx.types.CBufRet.f32 %5654, 3
  %5656 = fmul fast float %5655, %5372
  %5657 = call float @dx.op.binary.f32(i32 36, float %5105, float %5656)  ; FMin(a,b)
  %5658 = select i1 %5606, float %5657, float %5656
  %5659 = fmul fast float %5651, %5451
  %5660 = fmul fast float %5659, %5658
  %5661 = fmul fast float %5652, %5451
  %5662 = fmul fast float %5661, %5658
  %5663 = fmul fast float %5653, %5451
  %5664 = fmul fast float %5663, %5658
  %5665 = fadd fast float %5660, %5347
  %5666 = fadd fast float %5662, %5348
  %5667 = fadd fast float %5664, %5349
  %5668 = fsub fast float %5350, %5451
  br label %5453

; <label>:5669                                    ; preds = %5453
  br label %5670

; <label>:5670                                    ; preds = %5669, %5316
  %5671 = phi float [ %5317, %5316 ], [ %5454, %5669 ]
  %5672 = phi float [ %5318, %5316 ], [ %5455, %5669 ]
  %5673 = phi float [ %5319, %5316 ], [ %5456, %5669 ]
  %5674 = phi float [ %5320, %5316 ], [ %5457, %5669 ]
  %5675 = add i32 %5321, 1
  %5676 = icmp ugt i32 %5675, %5313
  br i1 %5676, label %5677, label %5316, !llvm.loop !101

; <label>:5677                                    ; preds = %5670
  br label %5678

; <label>:5678                                    ; preds = %5677, %5298
  %5679 = phi float [ 0.000000e+00, %5298 ], [ %5671, %5677 ]
  %5680 = phi float [ 0.000000e+00, %5298 ], [ %5672, %5677 ]
  %5681 = phi float [ 0.000000e+00, %5298 ], [ %5673, %5677 ]
  %5682 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5680, float %5681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5683 = select i1 %260, float 0.000000e+00, float %5679
  %5684 = select i1 %260, float %5682, float %5680
  %5685 = select i1 %260, float 0.000000e+00, float %5681
  %5686 = fcmp fast olt float %5224, 0.000000e+00
  %5687 = call float @dx.op.unary.f32(i32 6, float %5224)  ; FAbs(value)
  %5688 = fmul fast float %5687, %5164
  %5689 = fmul fast float %5687, %5165
  %5690 = fmul fast float %5687, %5166
  %5691 = select i1 %5686, float %5164, float %5688
  %5692 = select i1 %5686, float %5165, float %5689
  %5693 = select i1 %5686, float %5166, float %5690
  %5694 = fsub fast float 1.000000e+00, %5687
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = fmul fast float %5695, %5683
  %5697 = fmul fast float %5695, %5684
  %5698 = fmul fast float %5695, %5685
  %5699 = fadd fast float %5691, %5696
  %5700 = fadd fast float %5692, %5697
  %5701 = fadd fast float %5693, %5698
  br label %5702

; <label>:5702                                    ; preds = %5678, %5207
  %5703 = phi float [ %5164, %5207 ], [ %5699, %5678 ]
  %5704 = phi float [ %5165, %5207 ], [ %5700, %5678 ]
  %5705 = phi float [ %5166, %5207 ], [ %5701, %5678 ]
  %5706 = fmul fast float %5213, %5160
  %5707 = fmul fast float %5213, %5161
  %5708 = fmul fast float %5213, %5162
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = fcmp fast ogt float %5709, 0x3E7FF19E20000000
  %5711 = fdiv fast float 1.000000e+00, %5709
  %5712 = select i1 %5710, float %5711, float 0.000000e+00
  %5713 = fmul fast float %5712, %5029
  %5714 = fmul fast float %5712, %5030
  %5715 = fmul fast float %5712, %5031
  %5716 = fadd fast float %5713, -1.000000e+00
  %5717 = fadd fast float %5714, -1.000000e+00
  %5718 = fadd fast float %5715, -1.000000e+00
  %5719 = fmul fast float %5716, 5.000000e-01
  %5720 = fmul fast float %5717, 5.000000e-01
  %5721 = fmul fast float %5718, 5.000000e-01
  %5722 = fadd fast float %5719, 1.000000e+00
  %5723 = fadd fast float %5720, 1.000000e+00
  %5724 = fadd fast float %5721, 1.000000e+00
  %5725 = fmul fast float %5703, %5208
  %5726 = fmul fast float %5704, %5209
  %5727 = fmul fast float %5705, %5210
  %5728 = fsub fast float 1.000000e+00, %5043
  %5729 = bitcast float %5728 to i32
  %5730 = sitofp i32 %5729 to float
  %5731 = fmul fast float %5730, 5.000000e+00
  %5732 = fadd fast float %5731, 0xC1EFBF8940000000
  %5733 = fptosi float %5732 to i32
  %5734 = bitcast i32 %5733 to float
  %5735 = fmul fast float %5734, %3836
  %5736 = fmul fast float %5160, %5735
  %5737 = fmul fast float %5736, %5213
  %5738 = fmul fast float %5737, %5722
  %5739 = fmul fast float %5161, %5735
  %5740 = fmul fast float %5739, %5213
  %5741 = fmul fast float %5740, %5723
  %5742 = fmul fast float %5162, %5735
  %5743 = fmul fast float %5742, %5213
  %5744 = fmul fast float %5743, %5724
  %5745 = fmul fast float %5706, %3832
  %5746 = fmul fast float %5707, %3832
  %5747 = fmul fast float %5708, %3832
  %5748 = fadd fast float %5725, %3828
  %5749 = fadd fast float %5748, %5738
  %5750 = fmul fast float %5749, %3832
  %5751 = fadd fast float %5726, %3829
  %5752 = fadd fast float %5751, %5741
  %5753 = fmul fast float %5752, %3832
  %5754 = fadd fast float %5727, %3830
  %5755 = fadd fast float %5754, %5744
  %5756 = fmul fast float %5755, %3832
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 3
  %5759 = fcmp fast oeq float %5758, 0.000000e+00
  br i1 %5759, label %7463, label %5760

; <label>:5760                                    ; preds = %5702
  %5761 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5757, 2
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = extractvalue %dx.types.CBufRet.f32 %5764, 1
  %5767 = extractvalue %dx.types.CBufRet.f32 %5764, 2
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.CBufRet.f32 %5768, 1
  %5771 = call float @dx.op.dot3.f32(i32 55, float %5765, float %5766, float %5767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = select i1 %260, float %5769, float %5765
  %5773 = select i1 %260, float %5771, float %5766
  %5774 = select i1 %260, float %5770, float %5767
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5777 = fmul fast float %5776, %121
  %5778 = fmul fast float %5776, %122
  %5779 = fmul fast float %5776, %123
  %5780 = fadd fast float %5777, %201
  %5781 = fadd fast float %5778, %202
  %5782 = fadd fast float %5779, %203
  %5783 = fcmp fast olt float %5758, 0.000000e+00
  br i1 %5783, label %7041, label %5784

; <label>:5784                                    ; preds = %5760
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5799 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5800 = fmul fast float %5786, %5780
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5787, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5788, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5789
  %5804 = fmul fast float %5791, %5780
  %5805 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5792, float %5804)  ; FMad(a,b,c)
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5793, float %5805)  ; FMad(a,b,c)
  %5807 = fadd fast float %5806, %5794
  %5808 = fmul fast float %5796, %5780
  %5809 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5797, float %5808)  ; FMad(a,b,c)
  %5810 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5798, float %5809)  ; FMad(a,b,c)
  %5811 = fadd fast float %5810, %5799
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = fcmp fast une float %5813, 0.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 3
  %5819 = fmul fast float %5818, %5803
  %5820 = fmul fast float %5818, %5807
  %5821 = fadd fast float %5819, %5816
  %5822 = fadd fast float %5820, %5817
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.CBufRet.f32 %5823, 3
  %5827 = fmul fast float %5826, %5803
  %5828 = fmul fast float %5826, %5807
  %5829 = fadd fast float %5827, %5824
  %5830 = fadd fast float %5828, %5825
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5833 = fsub fast float %5832, %5811
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = fmul fast float %5833, %5834
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  br i1 %5814, label %5898, label %5838

; <label>:5838                                    ; preds = %5784
  %5839 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 2
  %5842 = fadd fast float %5841, %5839
  %5843 = fcmp fast ogt float %5842, 0.000000e+00
  br i1 %5843, label %5844, label %5868

; <label>:5844                                    ; preds = %5838
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 1
  %5848 = fsub fast float %5829, %5846
  %5849 = fsub fast float %5830, %5847
  %5850 = fcmp fast olt float %5848, 0.000000e+00
  %5851 = fcmp fast olt float %5849, 0.000000e+00
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5857 = select i1 %5850, float %5853, float %5855
  %5858 = select i1 %5851, float %5854, float %5856
  %5859 = fmul fast float %5857, %5848
  %5860 = fmul fast float %5858, %5849
  %5861 = call float @dx.op.unary.f32(i32 6, float %5859)  ; FAbs(value)
  %5862 = call float @dx.op.unary.f32(i32 6, float %5860)  ; FAbs(value)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5864 = call float @dx.op.binary.f32(i32 35, float %5861, float %5862)  ; FMax(a,b)
  %5865 = fsub fast float %5863, %5864
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fmul fast float %5866, %5837
  br label %5868

; <label>:5868                                    ; preds = %5844, %5838
  %5869 = phi float [ %5867, %5844 ], [ 0.000000e+00, %5838 ]
  %5870 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5871 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5872 = fadd fast float %5871, %5870
  %5873 = fcmp fast ogt float %5872, 0.000000e+00
  br i1 %5873, label %5874, label %5898

; <label>:5874                                    ; preds = %5868
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = fsub fast float %5821, %5876
  %5879 = fsub fast float %5822, %5877
  %5880 = fcmp fast olt float %5878, 0.000000e+00
  %5881 = fcmp fast olt float %5879, 0.000000e+00
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5887 = select i1 %5880, float %5883, float %5885
  %5888 = select i1 %5881, float %5884, float %5886
  %5889 = fmul fast float %5887, %5878
  %5890 = fmul fast float %5888, %5879
  %5891 = call float @dx.op.unary.f32(i32 6, float %5889)  ; FAbs(value)
  %5892 = call float @dx.op.unary.f32(i32 6, float %5890)  ; FAbs(value)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5894 = call float @dx.op.binary.f32(i32 35, float %5891, float %5892)  ; FMax(a,b)
  %5895 = fsub fast float %5893, %5894
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = fmul fast float %5896, %5837
  br label %5898

; <label>:5898                                    ; preds = %5874, %5868, %5784
  %5899 = phi float [ 0.000000e+00, %5784 ], [ %5897, %5874 ], [ 0.000000e+00, %5868 ]
  %5900 = phi float [ 0.000000e+00, %5784 ], [ %5869, %5874 ], [ %5869, %5868 ]
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5907 = fsub fast float %5803, %5905
  %5908 = fsub fast float %5807, %5906
  %5909 = fcmp fast olt float %5907, 0.000000e+00
  %5910 = fcmp fast olt float %5908, 0.000000e+00
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = extractvalue %dx.types.CBufRet.f32 %5911, 3
  %5916 = select i1 %5909, float %5912, float %5914
  %5917 = select i1 %5910, float %5913, float %5915
  %5918 = fmul fast float %5916, %5907
  %5919 = fmul fast float %5917, %5908
  %5920 = call float @dx.op.unary.f32(i32 6, float %5918)  ; FAbs(value)
  %5921 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5923 = call float @dx.op.binary.f32(i32 35, float %5920, float %5921)  ; FMax(a,b)
  %5924 = fsub fast float %5922, %5923
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5925, float %5903)  ; FMin(a,b)
  %5927 = fmul fast float %5926, %5837
  %5928 = fsub fast float %5899, %5927
  %5929 = fsub fast float %5900, %5899
  %5930 = fsub fast float %5929, %5927
  %5931 = call float @dx.op.binary.f32(i32 35, float %5899, float %5900)  ; FMax(a,b)
  %5932 = call float @dx.op.binary.f32(i32 35, float %5927, float %5931)  ; FMax(a,b)
  %5933 = fcmp fast olt float %5932, 1.000000e+00
  br i1 %5933, label %5934, label %6332, !dx.controlflow.hints !103

; <label>:5934                                    ; preds = %5898
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = fcmp fast une float %5936, 0.000000e+00
  br i1 %5937, label %5938, label %6332, !dx.controlflow.hints !104

; <label>:5938                                    ; preds = %5934
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.CBufRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.CBufRet.f32 %5939, 2
  %5943 = extractvalue %dx.types.CBufRet.f32 %5939, 3
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.CBufRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.CBufRet.f32 %5944, 3
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.CBufRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5949, 3
  %5954 = fmul fast float %5940, %5780
  %5955 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5941, float %5954)  ; FMad(a,b,c)
  %5956 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5942, float %5955)  ; FMad(a,b,c)
  %5957 = fadd fast float %5956, %5943
  %5958 = fmul fast float %5945, %5780
  %5959 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5946, float %5958)  ; FMad(a,b,c)
  %5960 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5947, float %5959)  ; FMad(a,b,c)
  %5961 = fadd fast float %5960, %5948
  %5962 = fmul fast float %5950, %5780
  %5963 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %5951, float %5962)  ; FMad(a,b,c)
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %5952, float %5963)  ; FMad(a,b,c)
  %5965 = fadd fast float %5964, %5953
  %5966 = fcmp fast oge float %5957, 1.000000e+00
  %5967 = fcmp fast oge float %5961, 1.000000e+00
  %5968 = or i1 %5966, %5967
  %5969 = fcmp fast olt float %5957, 0.000000e+00
  %5970 = fcmp fast olt float %5961, 0.000000e+00
  %5971 = or i1 %5969, %5970
  %5972 = or i1 %5968, %5971
  br i1 %5972, label %6332, label %5973, !dx.controlflow.hints !105

; <label>:5973                                    ; preds = %5938
  %5974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5975 = extractvalue %dx.types.CBufRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.CBufRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.CBufRet.f32 %5974, 2
  %5978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.i32 %5978, 2
  %5980 = uitofp i32 %5979 to float
  %5981 = extractvalue %dx.types.CBufRet.i32 %5978, 3
  %5982 = uitofp i32 %5981 to float
  %5983 = extractvalue %dx.types.CBufRet.f32 %5974, 3
  %5984 = fmul fast float %5983, 2.000000e+00
  %5985 = fsub fast float %5957, %5975
  %5986 = fsub fast float %5961, %5976
  %5987 = fmul fast float %5984, %5985
  %5988 = fmul fast float %5984, %5986
  %5989 = fdiv fast float 1.000000e+00, %5763
  %5990 = fmul fast float %5988, %5989
  %5991 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %5992 = fmul fast float %5977, %5782
  %5993 = fmul fast float %5992, %5984
  %5994 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %5995 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5996 = call float @dx.op.binary.f32(i32 35, float %5994, float %5991)  ; FMax(a,b)
  %5997 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %5998 = fmul fast float %5997, 2.000000e+00
  %5999 = call float @dx.op.unary.f32(i32 23, float %5998)  ; Log(value)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5999, float %5980)  ; FMax(a,b)
  %6001 = call float @dx.op.unary.f32(i32 22, float %6000)  ; Frc(value)
  %6002 = fadd fast float %6001, 0xBFEA666660000000
  %6003 = fmul fast float %6002, 8.000000e+00
  %6004 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 27, float %6000)  ; Round_ni(value)
  %6006 = fadd fast float %6005, %6004
  %6007 = call float @dx.op.binary.f32(i32 36, float %6006, float %5982)  ; FMin(a,b)
  %6008 = call float @dx.op.unary.f32(i32 27, float %6007)  ; Round_ni(value)
  %6009 = fsub fast float -0.000000e+00, %6008
  %6010 = call float @dx.op.unary.f32(i32 21, float %6009)  ; Exp(value)
  %6011 = fmul fast float %6010, %5984
  %6012 = fmul fast float %6011, %5957
  %6013 = fmul fast float %6011, %5961
  %6014 = fmul fast float %6012, 2.500000e-01
  %6015 = fmul fast float %6013, 2.500000e-01
  %6016 = fadd fast float %6014, 5.000000e-01
  %6017 = fadd fast float %6015, 5.000000e-01
  %6018 = fsub fast float %5982, %5980
  %6019 = fptoui float %6018 to i32
  %6020 = add i32 %6019, 320
  %6021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6020)  ; CBufferLoadLegacy(handle,regIndex)
  %6022 = extractvalue %dx.types.CBufRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.CBufRet.f32 %6021, 1
  %6024 = fcmp fast une float %6007, %5982
  %6025 = fsub fast float %5957, %6022
  %6026 = fsub fast float %5961, %6023
  %6027 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6028 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6029 = fmul fast float %6027, %6011
  %6030 = fmul fast float %6028, %6011
  %6031 = fcmp fast olt float %6029, 1.000000e+00
  %6032 = fcmp fast olt float %6030, 1.000000e+00
  %6033 = and i1 %6031, %6032
  %6034 = or i1 %6024, %6033
  br i1 %6034, label %6035, label %6332, !dx.controlflow.hints !106

; <label>:6035                                    ; preds = %5973
  %6036 = fmul fast float %6013, 5.000000e-01
  %6037 = fmul fast float %6012, 5.000000e-01
  %6038 = fadd fast float %6036, 5.000000e-01
  %6039 = fadd fast float %6037, 5.000000e-01
  %6040 = sitofp i32 %5979 to float
  %6041 = fsub fast float %6007, %6040
  %6042 = call float @dx.op.unary.f32(i32 27, float %6041)  ; Round_ni(value)
  %6043 = call float @dx.op.unary.f32(i32 22, float %6007)  ; Frc(value)
  %6044 = call float @dx.op.unary.f32(i32 22, float %6039)  ; Frc(value)
  %6045 = call float @dx.op.unary.f32(i32 22, float %6038)  ; Frc(value)
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6044, float %6045, float %6042, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.ResRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.ResRet.f32 %6046, 2
  %6050 = extractvalue %dx.types.ResRet.f32 %6046, 3
  %6051 = fcmp fast ogt float %6043, 0.000000e+00
  br i1 %6051, label %6052, label %6073, !dx.controlflow.hints !107

; <label>:6052                                    ; preds = %6035
  %6053 = fadd fast float %6042, 1.000000e+00
  %6054 = call float @dx.op.unary.f32(i32 22, float %6016)  ; Frc(value)
  %6055 = call float @dx.op.unary.f32(i32 22, float %6017)  ; Frc(value)
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6054, float %6055, float %6053, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.ResRet.f32 %6056, 3
  %6061 = fsub fast float %6057, %6047
  %6062 = fsub fast float %6058, %6048
  %6063 = fsub fast float %6059, %6049
  %6064 = fsub fast float %6060, %6050
  %6065 = fmul fast float %6061, %6043
  %6066 = fmul fast float %6062, %6043
  %6067 = fmul fast float %6063, %6043
  %6068 = fmul fast float %6064, %6043
  %6069 = fadd fast float %6065, %6047
  %6070 = fadd fast float %6066, %6048
  %6071 = fadd fast float %6067, %6049
  %6072 = fadd fast float %6068, %6050
  br label %6073

; <label>:6073                                    ; preds = %6052, %6035
  %6074 = phi float [ %6069, %6052 ], [ %6047, %6035 ]
  %6075 = phi float [ %6070, %6052 ], [ %6048, %6035 ]
  %6076 = phi float [ %6071, %6052 ], [ %6049, %6035 ]
  %6077 = phi float [ %6072, %6052 ], [ %6050, %6035 ]
  %6078 = fadd fast float %6074, -5.000000e-01
  %6079 = fadd fast float %6076, -5.000000e-01
  %6080 = fmul fast float %6078, 0xBFD5555560000000
  %6081 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6079, float %6080)  ; FMad(a,b,c)
  %6082 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6075, float 0.000000e+00)  ; FMad(a,b,c)
  %6083 = fadd fast float %6082, %6077
  %6084 = fmul fast float %6078, -7.500000e-01
  %6085 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6079, float %6084)  ; FMad(a,b,c)
  %6086 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6075, float 0.000000e+00)  ; FMad(a,b,c)
  %6087 = fadd fast float %6086, %6077
  %6088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6089 = extractvalue %dx.types.CBufRet.f32 %6088, 0
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6095 = fsub fast float %6091, %6081
  %6096 = fsub fast float %6092, %6083
  %6097 = fsub fast float %6093, %6085
  %6098 = fsub fast float %6094, %6087
  %6099 = fmul fast float %6095, %6089
  %6100 = fmul fast float %6096, %6089
  %6101 = fmul fast float %6097, %6089
  %6102 = fmul fast float %6098, %6089
  %6103 = fadd fast float %6099, %6081
  %6104 = fadd fast float %6100, %6083
  %6105 = fadd fast float %6101, %6085
  %6106 = fadd fast float %6102, %6087
  %6107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.i32 %6107, 0
  %6109 = and i32 %6108, 536870911
  %6110 = uitofp i32 %6109 to float
  %6111 = fmul fast float %6110, %5957
  %6112 = fmul fast float %6110, %5961
  %6113 = fptoui float %6111 to i32
  %6114 = fptoui float %6112 to i32
  %6115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6116 = extractvalue %dx.types.ResRet.i32 %6115, 0
  %6117 = and i32 %6116, 31
  %6118 = lshr i32 %6113, %6117
  %6119 = lshr i32 %6114, %6117
  %6120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6121 = extractvalue %dx.types.ResRet.i32 %6120, 0
  %6122 = and i32 %6121, 31
  %6123 = shl i32 1, %6122
  %6124 = call i32 @dx.op.binary.i32(i32 40, i32 %6123, i32 4)  ; UMin(a,b)
  %6125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6126 = extractvalue %dx.types.ResRet.i32 %6125, 0
  %6127 = extractvalue %dx.types.ResRet.i32 %6125, 1
  %6128 = icmp eq i32 %6124, 0
  br i1 %6128, label %6170, label %6129

; <label>:6129                                    ; preds = %6073
  br label %6130

; <label>:6130                                    ; preds = %6158, %6129
  %6131 = phi i32 [ %6161, %6158 ], [ 0, %6129 ]
  %6132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6133 = extractvalue %dx.types.ResRet.i32 %6132, 0
  %6134 = lshr i32 %6133, 16
  %6135 = and i32 %6134, 31
  %6136 = shl i32 %6119, %6135
  %6137 = add i32 %6136, %6118
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = and i32 %6139, 31
  %6141 = shl i32 %6137, %6140
  %6142 = add i32 %6141, %6131
  %6143 = shl i32 %6142, 2
  %6144 = add i32 %6143, 32
  %6145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.i32 %6145, 0
  %6147 = icmp slt i32 %6146, 0
  %6148 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6131
  %6149 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6131
  %6150 = bitcast float* %6148 to i32*
  %6151 = bitcast float* %6149 to i32*
  br i1 %6147, label %6152, label %6158

; <label>:6152                                    ; preds = %6130
  %6153 = and i32 %6146, 1073741823
  %6154 = add nuw nsw i32 %6153, 20
  %6155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6154, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.i32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.i32 %6155, 1
  br label %6158

; <label>:6158                                    ; preds = %6152, %6130
  %6159 = phi i32 [ %6156, %6152 ], [ %6126, %6130 ]
  %6160 = phi i32 [ %6157, %6152 ], [ %6127, %6130 ]
  store i32 %6159, i32* %6150, align 4
  store i32 %6160, i32* %6151, align 4
  %6161 = add nuw i32 %6131, 1
  %6162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.i32 %6162, 2
  %6164 = icmp eq i32 %6163, 0
  %6165 = icmp ugt i32 %6146, -1073741825
  %6166 = and i1 %6165, %6164
  %6167 = icmp ult i32 %6161, %6124
  %6168 = and i1 %6166, %6167
  br i1 %6168, label %6130, label %6169

; <label>:6169                                    ; preds = %6158
  br label %6170

; <label>:6170                                    ; preds = %6169, %6073
  %6171 = phi i32 [ 0, %6073 ], [ %6161, %6169 ]
  %6172 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %6173 = fptoui float %6172 to i32
  %6174 = icmp eq i32 %6173, 0
  br i1 %6174, label %6226, label %6175

; <label>:6175                                    ; preds = %6170
  br label %6176

; <label>:6176                                    ; preds = %6221, %6175
  %6177 = phi i32 [ %6222, %6221 ], [ %6171, %6175 ]
  %6178 = phi i32 [ %6223, %6221 ], [ 0, %6175 ]
  %6179 = lshr i32 %6178, 2
  %6180 = and i32 %6178, 3
  %6181 = add nuw nsw i32 %6179, 83
  %6182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6181)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.i32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.i32 %6182, 1
  %6185 = extractvalue %dx.types.CBufRet.i32 %6182, 2
  %6186 = extractvalue %dx.types.CBufRet.i32 %6182, 3
  %6187 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6183, i32* %6187, align 4
  %6188 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6184, i32* %6188, align 4
  %6189 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6185, i32* %6189, align 4
  %6190 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6186, i32* %6190, align 4
  %6191 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6180
  %6192 = load i32, i32* %6191, align 4, !tbaa !108, !noalias !112
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = lshr i32 %6194, 16
  %6196 = and i32 %6195, 31
  %6197 = shl i32 %6119, %6196
  %6198 = add i32 %6197, %6118
  %6199 = shl i32 %6198, 2
  %6200 = add i32 %6199, %6192
  %6201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.i32 %6201, 0
  %6203 = icmp eq i32 %6202, 0
  br i1 %6203, label %6221, label %6204

; <label>:6204                                    ; preds = %6176
  %6205 = icmp slt i32 %6202, 0
  %6206 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6177
  %6207 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6177
  %6208 = bitcast float* %6206 to i32*
  %6209 = bitcast float* %6207 to i32*
  br i1 %6205, label %6210, label %6217

; <label>:6210                                    ; preds = %6204
  %6211 = and i32 %6202, 1073741823
  %6212 = add i32 %6192, 20
  %6213 = add i32 %6212, %6211
  %6214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6213, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.i32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.i32 %6214, 1
  br label %6217

; <label>:6217                                    ; preds = %6210, %6204
  %6218 = phi i32 [ %6215, %6210 ], [ %6126, %6204 ]
  %6219 = phi i32 [ %6216, %6210 ], [ %6127, %6204 ]
  store i32 %6218, i32* %6208, align 4
  store i32 %6219, i32* %6209, align 4
  %6220 = add i32 %6177, 1
  br label %6221

; <label>:6221                                    ; preds = %6217, %6176
  %6222 = phi i32 [ %6177, %6176 ], [ %6220, %6217 ]
  %6223 = add nuw i32 %6178, 1
  %6224 = icmp eq i32 %6223, %6173
  br i1 %6224, label %6225, label %6176

; <label>:6225                                    ; preds = %6221
  br label %6226

; <label>:6226                                    ; preds = %6225, %6170
  %6227 = phi i32 [ %6171, %6170 ], [ %6222, %6225 ]
  %6228 = icmp eq i32 %6227, 1
  %6229 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6230 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6228, label %6231, label %6234

; <label>:6231                                    ; preds = %6226
  %6232 = load float, float* %6229, align 4
  %6233 = load float, float* %6230, align 4
  br label %6261

; <label>:6234                                    ; preds = %6226
  %6235 = load float, float* %6229, align 4
  %6236 = load float, float* %6230, align 4
  %6237 = fdiv fast float 1.000000e+00, %6236
  %6238 = fsub fast float %6235, %6237
  %6239 = icmp ugt i32 %6227, 1
  br i1 %6239, label %6240, label %6256

; <label>:6240                                    ; preds = %6234
  br label %6241

; <label>:6241                                    ; preds = %6241, %6240
  %6242 = phi float [ %6251, %6241 ], [ %6238, %6240 ]
  %6243 = phi float [ %6252, %6241 ], [ %6235, %6240 ]
  %6244 = phi i32 [ %6253, %6241 ], [ 1, %6240 ]
  %6245 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6244
  %6246 = load float, float* %6245, align 4
  %6247 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6244
  %6248 = load float, float* %6247, align 4
  %6249 = fdiv fast float 1.000000e+00, %6248
  %6250 = fsub fast float %6246, %6249
  %6251 = call float @dx.op.binary.f32(i32 36, float %6242, float %6250)  ; FMin(a,b)
  %6252 = call float @dx.op.binary.f32(i32 35, float %6243, float %6246)  ; FMax(a,b)
  %6253 = add nuw i32 %6244, 1
  %6254 = icmp eq i32 %6253, %6227
  br i1 %6254, label %6255, label %6241

; <label>:6255                                    ; preds = %6241
  br label %6256

; <label>:6256                                    ; preds = %6255, %6234
  %6257 = phi float [ %6238, %6234 ], [ %6251, %6255 ]
  %6258 = phi float [ %6235, %6234 ], [ %6252, %6255 ]
  %6259 = fsub fast float %6258, %6257
  %6260 = fdiv fast float 1.000000e+00, %6259
  br label %6261

; <label>:6261                                    ; preds = %6256, %6231
  %6262 = phi float [ %6232, %6231 ], [ %6258, %6256 ]
  %6263 = phi float [ %6233, %6231 ], [ %6260, %6256 ]
  %6264 = fadd fast float %5965, %6262
  %6265 = fmul fast float %6264, %6263
  %6266 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6267 = fmul fast float %6266, 2.000000e+00
  %6268 = fsub fast float 1.000000e+00, %6267
  %6269 = fmul fast float %6103, %6103
  %6270 = fsub fast float %6104, %6269
  %6271 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6270)  ; FMax(a,b)
  %6272 = fdiv fast float 1.000000e+00, %6271
  %6273 = fmul fast float %6104, %6103
  %6274 = fsub fast float %6105, %6273
  %6275 = fsub fast float %6268, %6103
  %6276 = fmul fast float %6268, %6268
  %6277 = fsub fast float %6276, %6104
  %6278 = fmul fast float %6272, %6274
  %6279 = fmul fast float %6278, %6275
  %6280 = fsub fast float %6277, %6279
  %6281 = fmul fast float %6104, %6104
  %6282 = fsub fast float %6106, %6281
  %6283 = fmul fast float %6274, %6274
  %6284 = fmul fast float %6283, %6272
  %6285 = fsub fast float %6282, %6284
  %6286 = fdiv fast float %6280, %6285
  %6287 = fmul fast float %6286, %6274
  %6288 = fsub fast float %6275, %6287
  %6289 = fmul fast float %6288, %6272
  %6290 = fmul fast float %6289, %6103
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = fmul fast float %6286, %6104
  %6293 = fsub fast float %6291, %6292
  %6294 = fmul fast float %6289, %6289
  %6295 = fmul fast float %6286, 4.000000e+00
  %6296 = fmul fast float %6295, %6293
  %6297 = fsub fast float %6294, %6296
  %6298 = call float @dx.op.unary.f32(i32 24, float %6297)  ; Sqrt(value)
  %6299 = fcmp fast oge float %6289, 0.000000e+00
  %6300 = fsub fast float -0.000000e+00, %6298
  %6301 = select i1 %6299, float %6300, float %6298
  %6302 = fsub fast float %6301, %6289
  %6303 = fdiv fast float %6302, %6286
  %6304 = fdiv fast float %6293, %6302
  %6305 = fmul fast float %6303, 5.000000e-01
  %6306 = fmul fast float %6304, 2.000000e+00
  %6307 = select i1 %6299, float %6305, float %6306
  %6308 = select i1 %6299, float %6306, float %6305
  %6309 = call float @dx.op.binary.f32(i32 35, float %6307, float %6308)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6307, float %6308)  ; FMin(a,b)
  %6311 = fcmp fast ogt float %6268, %6309
  %6312 = fsub fast float %6268, %6310
  %6313 = fsub fast float %6268, %6309
  %6314 = fsub fast float %6309, %6310
  %6315 = select i1 %6311, float %6313, float %6314
  %6316 = fmul float %6312, %6315
  %6317 = select i1 %6311, float %6310, float %6268
  %6318 = fcmp fast ogt float %6268, %6310
  %6319 = fmul fast float %6317, %6309
  %6320 = fadd fast float %6317, %6309
  %6321 = fmul fast float %6320, %6103
  %6322 = fadd fast float %6319, %6104
  %6323 = fsub fast float %6322, %6321
  %6324 = fdiv fast float %6323, %6316
  %6325 = select i1 %6318, float %6324, float 0.000000e+00
  %6326 = fsub fast float 1.000000e+00, %6325
  %6327 = select i1 %6311, float %6326, float %6325
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6088, 3
  %6330 = fmul fast float %6329, %6328
  %6331 = fsub fast float 1.000000e+00, %6330
  br label %6332

; <label>:6332                                    ; preds = %6261, %5973, %5938, %5934, %5898
  %6333 = phi float [ 1.000000e+00, %5898 ], [ %6331, %6261 ], [ 1.000000e+00, %5938 ], [ 1.000000e+00, %5973 ], [ 1.000000e+00, %5934 ]
  %6334 = fcmp fast ogt float %5930, 0.000000e+00
  br i1 %6334, label %6335, label %6499, !dx.controlflow.hints !121

; <label>:6335                                    ; preds = %6332
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = fadd fast float %6337, %5811
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 2
  %6341 = extractvalue %dx.types.CBufRet.f32 %6339, 3
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6344 = call float @dx.op.binary.f32(i32 35, float %6338, float 0.000000e+00)  ; FMax(a,b)
  %6345 = fadd fast float %6344, 0x3F10000000000000
  %6346 = fcmp fast oeq float %6343, 0.000000e+00
  br i1 %6346, label %6347, label %6414

; <label>:6347                                    ; preds = %6335
  %6348 = extractvalue %dx.types.CBufRet.f32 %6339, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6350 = fmul fast float %6349, %5829
  %6351 = fmul fast float %6348, %5830
  %6352 = fadd fast float %6350, 5.000000e-01
  %6353 = call float @dx.op.unary.f32(i32 27, float %6352)  ; Round_ni(value)
  %6354 = fadd fast float %6351, 5.000000e-01
  %6355 = call float @dx.op.unary.f32(i32 27, float %6354)  ; Round_ni(value)
  %6356 = fsub fast float %6352, %6353
  %6357 = fsub fast float %6354, %6355
  %6358 = fadd fast float %6353, -5.000000e-01
  %6359 = fadd fast float %6355, -5.000000e-01
  %6360 = fmul fast float %6356, 2.000000e+00
  %6361 = fsub fast float 3.000000e+00, %6360
  %6362 = fadd fast float %6360, 1.000000e+00
  %6363 = fsub fast float 2.000000e+00, %6356
  %6364 = bitcast float %6361 to i32
  %6365 = sub nsw i32 2129859010, %6364
  %6366 = bitcast i32 %6365 to float
  %6367 = fmul fast float %6366, %6363
  %6368 = fadd fast float %6367, -1.000000e+00
  %6369 = bitcast float %6362 to i32
  %6370 = sub nsw i32 2129859010, %6369
  %6371 = bitcast i32 %6370 to float
  %6372 = fmul fast float %6371, %6356
  %6373 = fadd fast float %6372, 1.000000e+00
  %6374 = fmul fast float %6357, 2.000000e+00
  %6375 = fsub fast float 3.000000e+00, %6374
  %6376 = fadd fast float %6374, 1.000000e+00
  %6377 = fsub fast float 2.000000e+00, %6357
  %6378 = bitcast float %6375 to i32
  %6379 = sub nsw i32 2129859010, %6378
  %6380 = bitcast i32 %6379 to float
  %6381 = fmul fast float %6380, %6377
  %6382 = fadd fast float %6381, -1.000000e+00
  %6383 = bitcast float %6376 to i32
  %6384 = sub nsw i32 2129859010, %6383
  %6385 = bitcast i32 %6384 to float
  %6386 = fmul fast float %6385, %6357
  %6387 = fadd fast float %6386, 1.000000e+00
  %6388 = fadd fast float %6368, %6358
  %6389 = fmul fast float %6388, %6340
  %6390 = fadd fast float %6382, %6359
  %6391 = fmul fast float %6390, %6341
  %6392 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6389, float %6391, float undef, float undef, i32 0, i32 0, i32 undef, float %6345)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = fmul fast float %6393, %6361
  %6395 = fadd fast float %6373, %6358
  %6396 = fmul fast float %6395, %6340
  %6397 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6396, float %6391, float undef, float undef, i32 0, i32 0, i32 undef, float %6345)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6398 = extractvalue %dx.types.ResRet.f32 %6397, 0
  %6399 = fmul fast float %6398, %6362
  %6400 = fadd fast float %6387, %6359
  %6401 = fmul fast float %6400, %6341
  %6402 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6389, float %6401, float undef, float undef, i32 0, i32 0, i32 undef, float %6345)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6403 = extractvalue %dx.types.ResRet.f32 %6402, 0
  %6404 = fmul fast float %6403, %6361
  %6405 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6396, float %6401, float undef, float undef, i32 0, i32 0, i32 undef, float %6345)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6406 = extractvalue %dx.types.ResRet.f32 %6405, 0
  %6407 = fmul fast float %6406, %6362
  %6408 = fadd fast float %6407, %6404
  %6409 = fmul fast float %6408, %6376
  %6410 = fadd fast float %6399, %6394
  %6411 = fmul fast float %6410, %6375
  %6412 = fadd fast float %6411, %6409
  %6413 = fmul fast float %6412, 6.250000e-02
  br label %6499

; <label>:6414                                    ; preds = %6335
  %6415 = fmul fast float %271, 0x401921FB60000000
  %6416 = call float @dx.op.unary.f32(i32 13, float %6415)  ; Sin(value)
  %6417 = call float @dx.op.unary.f32(i32 12, float %6415)  ; Cos(value)
  %6418 = fsub fast float -0.000000e+00, %6416
  br label %6419

; <label>:6419                                    ; preds = %6468, %6414
  %6420 = phi float [ 0.000000e+00, %6414 ], [ %6463, %6468 ]
  %6421 = phi float [ 0.000000e+00, %6414 ], [ %6465, %6468 ]
  %6422 = phi i32 [ 0, %6414 ], [ %6469, %6468 ]
  %6423 = mul i32 %6422, 2
  %6424 = add i32 0, %6423
  %6425 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6424
  %6426 = load float, float* %6425, align 4
  %6427 = mul i32 %6422, 2
  %6428 = add i32 1, %6427
  %6429 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6428
  %6430 = load float, float* %6429, align 4
  %6431 = fmul fast float %6426, %6417
  %6432 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6418, float %6431)  ; FMad(a,b,c)
  %6433 = fmul fast float %6426, %6416
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6430, float %6417, float %6433)  ; FMad(a,b,c)
  %6435 = fmul fast float %6432, %6343
  %6436 = fmul fast float %6434, %6343
  %6437 = fadd fast float %6435, %5829
  %6438 = fadd fast float %6436, %5830
  %6439 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6437, float %6438, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.ResRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.ResRet.f32 %6439, 3
  %6444 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6440, float* %6444, align 4
  %6445 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6441, float* %6445, align 4
  %6446 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6442, float* %6446, align 4
  %6447 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6443, float* %6447, align 4
  %6448 = fsub fast float %6440, %6345
  %6449 = fcmp fast olt float %6448, 0.000000e+00
  %6450 = select i1 %6449, float 0.000000e+00, float 1.000000e+00
  %6451 = fadd fast float %6450, %6420
  %6452 = fmul fast float %6450, %6448
  %6453 = fadd fast float %6452, %6421
  br label %6454

; <label>:6454                                    ; preds = %6454, %6419
  %6455 = phi i32 [ 1, %6419 ], [ %6466, %6454 ]
  %6456 = phi float [ %6453, %6419 ], [ %6465, %6454 ]
  %6457 = phi float [ %6451, %6419 ], [ %6463, %6454 ]
  %6458 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6455
  %6459 = load float, float* %6458, align 4, !tbaa !122, !noalias !112
  %6460 = fsub fast float %6459, %6345
  %6461 = fcmp fast olt float %6460, 0.000000e+00
  %6462 = select i1 %6461, float 0.000000e+00, float 1.000000e+00
  %6463 = fadd fast float %6462, %6457
  %6464 = fmul fast float %6462, %6460
  %6465 = fadd fast float %6464, %6456
  %6466 = add nuw nsw i32 %6455, 1
  %6467 = icmp eq i32 %6466, 4
  br i1 %6467, label %6468, label %6454, !llvm.loop !124

; <label>:6468                                    ; preds = %6454
  %6469 = add nuw nsw i32 %6422, 1
  %6470 = icmp eq i32 %6469, 8
  br i1 %6470, label %6471, label %6419, !llvm.loop !125

; <label>:6471                                    ; preds = %6468
  %6472 = fdiv fast float 1.000000e+00, %6463
  %6473 = fmul fast float %6472, %6465
  %6474 = fdiv fast float 1.000000e+00, %6345
  %6475 = fmul fast float %6473, %6474
  %6476 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6477 = call float @dx.op.binary.f32(i32 35, float %6476, float 0.000000e+00)  ; FMax(a,b)
  %6478 = fmul fast float %6463, 3.125000e-02
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = fmul fast float %6479, 2.000000e+00
  %6481 = fadd fast float %6480, -1.000000e+00
  %6482 = fcmp fast ogt float %6481, 0.000000e+00
  %6483 = fcmp fast olt float %6481, 0.000000e+00
  %6484 = zext i1 %6482 to i32
  %6485 = zext i1 %6483 to i32
  %6486 = sub nsw i32 %6484, %6485
  %6487 = sitofp i32 %6486 to float
  %6488 = fmul fast float %6487, %6481
  %6489 = fsub fast float 1.000000e+00, %6488
  %6490 = fmul fast float %6489, %6489
  %6491 = fmul fast float %6490, %6489
  %6492 = fsub fast float %6489, %6491
  %6493 = fmul fast float %6492, %6477
  %6494 = fsub fast float 1.000000e+00, %6491
  %6495 = fsub fast float %6494, %6493
  %6496 = fmul fast float %6487, 5.000000e-01
  %6497 = fmul fast float %6496, %6495
  %6498 = fsub fast float 5.000000e-01, %6497
  br label %6499

; <label>:6499                                    ; preds = %6471, %6347, %6332
  %6500 = phi float [ 1.000000e+00, %6332 ], [ %6413, %6347 ], [ %6498, %6471 ]
  %6501 = fcmp fast ogt float %5928, 0.000000e+00
  br i1 %6501, label %6502, label %6666, !dx.controlflow.hints !126

; <label>:6502                                    ; preds = %6499
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6505 = fadd fast float %6504, %5811
  %6506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6506, 2
  %6508 = extractvalue %dx.types.CBufRet.f32 %6506, 3
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6511 = call float @dx.op.binary.f32(i32 35, float %6505, float 0.000000e+00)  ; FMax(a,b)
  %6512 = fadd fast float %6511, 0x3F10000000000000
  %6513 = fcmp fast oeq float %6510, 0.000000e+00
  br i1 %6513, label %6514, label %6581

; <label>:6514                                    ; preds = %6502
  %6515 = extractvalue %dx.types.CBufRet.f32 %6506, 1
  %6516 = extractvalue %dx.types.CBufRet.f32 %6506, 0
  %6517 = fmul fast float %6516, %5821
  %6518 = fmul fast float %6515, %5822
  %6519 = fadd fast float %6517, 5.000000e-01
  %6520 = call float @dx.op.unary.f32(i32 27, float %6519)  ; Round_ni(value)
  %6521 = fadd fast float %6518, 5.000000e-01
  %6522 = call float @dx.op.unary.f32(i32 27, float %6521)  ; Round_ni(value)
  %6523 = fsub fast float %6519, %6520
  %6524 = fsub fast float %6521, %6522
  %6525 = fadd fast float %6520, -5.000000e-01
  %6526 = fadd fast float %6522, -5.000000e-01
  %6527 = fmul fast float %6523, 2.000000e+00
  %6528 = fsub fast float 3.000000e+00, %6527
  %6529 = fadd fast float %6527, 1.000000e+00
  %6530 = fsub fast float 2.000000e+00, %6523
  %6531 = bitcast float %6528 to i32
  %6532 = sub nsw i32 2129859010, %6531
  %6533 = bitcast i32 %6532 to float
  %6534 = fmul fast float %6533, %6530
  %6535 = fadd fast float %6534, -1.000000e+00
  %6536 = bitcast float %6529 to i32
  %6537 = sub nsw i32 2129859010, %6536
  %6538 = bitcast i32 %6537 to float
  %6539 = fmul fast float %6538, %6523
  %6540 = fadd fast float %6539, 1.000000e+00
  %6541 = fmul fast float %6524, 2.000000e+00
  %6542 = fsub fast float 3.000000e+00, %6541
  %6543 = fadd fast float %6541, 1.000000e+00
  %6544 = fsub fast float 2.000000e+00, %6524
  %6545 = bitcast float %6542 to i32
  %6546 = sub nsw i32 2129859010, %6545
  %6547 = bitcast i32 %6546 to float
  %6548 = fmul fast float %6547, %6544
  %6549 = fadd fast float %6548, -1.000000e+00
  %6550 = bitcast float %6543 to i32
  %6551 = sub nsw i32 2129859010, %6550
  %6552 = bitcast i32 %6551 to float
  %6553 = fmul fast float %6552, %6524
  %6554 = fadd fast float %6553, 1.000000e+00
  %6555 = fadd fast float %6535, %6525
  %6556 = fmul fast float %6555, %6507
  %6557 = fadd fast float %6549, %6526
  %6558 = fmul fast float %6557, %6508
  %6559 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6556, float %6558, float undef, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6560 = extractvalue %dx.types.ResRet.f32 %6559, 0
  %6561 = fmul fast float %6560, %6528
  %6562 = fadd fast float %6540, %6525
  %6563 = fmul fast float %6562, %6507
  %6564 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6563, float %6558, float undef, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6565 = extractvalue %dx.types.ResRet.f32 %6564, 0
  %6566 = fmul fast float %6565, %6529
  %6567 = fadd fast float %6554, %6526
  %6568 = fmul fast float %6567, %6508
  %6569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6556, float %6568, float undef, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6570 = extractvalue %dx.types.ResRet.f32 %6569, 0
  %6571 = fmul fast float %6570, %6528
  %6572 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6563, float %6568, float undef, float undef, i32 0, i32 0, i32 undef, float %6512)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6573 = extractvalue %dx.types.ResRet.f32 %6572, 0
  %6574 = fmul fast float %6573, %6529
  %6575 = fadd fast float %6574, %6571
  %6576 = fmul fast float %6575, %6543
  %6577 = fadd fast float %6566, %6561
  %6578 = fmul fast float %6577, %6542
  %6579 = fadd fast float %6578, %6576
  %6580 = fmul fast float %6579, 6.250000e-02
  br label %6666

; <label>:6581                                    ; preds = %6502
  %6582 = fmul fast float %271, 0x401921FB60000000
  %6583 = call float @dx.op.unary.f32(i32 13, float %6582)  ; Sin(value)
  %6584 = call float @dx.op.unary.f32(i32 12, float %6582)  ; Cos(value)
  %6585 = fsub fast float -0.000000e+00, %6583
  br label %6586

; <label>:6586                                    ; preds = %6635, %6581
  %6587 = phi float [ 0.000000e+00, %6581 ], [ %6630, %6635 ]
  %6588 = phi float [ 0.000000e+00, %6581 ], [ %6632, %6635 ]
  %6589 = phi i32 [ 0, %6581 ], [ %6636, %6635 ]
  %6590 = mul i32 %6589, 2
  %6591 = add i32 0, %6590
  %6592 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6591
  %6593 = load float, float* %6592, align 4
  %6594 = mul i32 %6589, 2
  %6595 = add i32 1, %6594
  %6596 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6595
  %6597 = load float, float* %6596, align 4
  %6598 = fmul fast float %6593, %6584
  %6599 = call float @dx.op.tertiary.f32(i32 46, float %6597, float %6585, float %6598)  ; FMad(a,b,c)
  %6600 = fmul fast float %6593, %6583
  %6601 = call float @dx.op.tertiary.f32(i32 46, float %6597, float %6584, float %6600)  ; FMad(a,b,c)
  %6602 = fmul fast float %6599, %6510
  %6603 = fmul fast float %6601, %6510
  %6604 = fadd fast float %6602, %5821
  %6605 = fadd fast float %6603, %5822
  %6606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6604, float %6605, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6607 = extractvalue %dx.types.ResRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.ResRet.f32 %6606, 1
  %6609 = extractvalue %dx.types.ResRet.f32 %6606, 2
  %6610 = extractvalue %dx.types.ResRet.f32 %6606, 3
  %6611 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6607, float* %6611, align 4
  %6612 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6608, float* %6612, align 4
  %6613 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6609, float* %6613, align 4
  %6614 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6610, float* %6614, align 4
  %6615 = fsub fast float %6607, %6512
  %6616 = fcmp fast olt float %6615, 0.000000e+00
  %6617 = select i1 %6616, float 0.000000e+00, float 1.000000e+00
  %6618 = fadd fast float %6617, %6587
  %6619 = fmul fast float %6617, %6615
  %6620 = fadd fast float %6619, %6588
  br label %6621

; <label>:6621                                    ; preds = %6621, %6586
  %6622 = phi i32 [ 1, %6586 ], [ %6633, %6621 ]
  %6623 = phi float [ %6620, %6586 ], [ %6632, %6621 ]
  %6624 = phi float [ %6618, %6586 ], [ %6630, %6621 ]
  %6625 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6622
  %6626 = load float, float* %6625, align 4, !tbaa !122, !noalias !112
  %6627 = fsub fast float %6626, %6512
  %6628 = fcmp fast olt float %6627, 0.000000e+00
  %6629 = select i1 %6628, float 0.000000e+00, float 1.000000e+00
  %6630 = fadd fast float %6629, %6624
  %6631 = fmul fast float %6629, %6627
  %6632 = fadd fast float %6631, %6623
  %6633 = add nuw nsw i32 %6622, 1
  %6634 = icmp eq i32 %6633, 4
  br i1 %6634, label %6635, label %6621, !llvm.loop !124

; <label>:6635                                    ; preds = %6621
  %6636 = add nuw nsw i32 %6589, 1
  %6637 = icmp eq i32 %6636, 8
  br i1 %6637, label %6638, label %6586, !llvm.loop !125

; <label>:6638                                    ; preds = %6635
  %6639 = fdiv fast float 1.000000e+00, %6630
  %6640 = fmul fast float %6639, %6632
  %6641 = fdiv fast float 1.000000e+00, %6512
  %6642 = fmul fast float %6640, %6641
  %6643 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  %6644 = call float @dx.op.binary.f32(i32 35, float %6643, float 0.000000e+00)  ; FMax(a,b)
  %6645 = fmul fast float %6630, 3.125000e-02
  %6646 = call float @dx.op.unary.f32(i32 7, float %6645)  ; Saturate(value)
  %6647 = fmul fast float %6646, 2.000000e+00
  %6648 = fadd fast float %6647, -1.000000e+00
  %6649 = fcmp fast ogt float %6648, 0.000000e+00
  %6650 = fcmp fast olt float %6648, 0.000000e+00
  %6651 = zext i1 %6649 to i32
  %6652 = zext i1 %6650 to i32
  %6653 = sub nsw i32 %6651, %6652
  %6654 = sitofp i32 %6653 to float
  %6655 = fmul fast float %6654, %6648
  %6656 = fsub fast float 1.000000e+00, %6655
  %6657 = fmul fast float %6656, %6656
  %6658 = fmul fast float %6657, %6656
  %6659 = fsub fast float %6656, %6658
  %6660 = fmul fast float %6659, %6644
  %6661 = fsub fast float 1.000000e+00, %6658
  %6662 = fsub fast float %6661, %6660
  %6663 = fmul fast float %6654, 5.000000e-01
  %6664 = fmul fast float %6663, %6662
  %6665 = fsub fast float 5.000000e-01, %6664
  br label %6666

; <label>:6666                                    ; preds = %6638, %6514, %6499
  %6667 = phi float [ 1.000000e+00, %6499 ], [ %6580, %6514 ], [ %6665, %6638 ]
  %6668 = fcmp fast ogt float %5927, 0.000000e+00
  br i1 %6668, label %6669, label %6987, !dx.controlflow.hints !127

; <label>:6669                                    ; preds = %6666
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6672 = fadd fast float %6671, %5811
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6677 = extractvalue %dx.types.CBufRet.f32 %6676, 0
  %6678 = call float @dx.op.binary.f32(i32 35, float %6672, float 0.000000e+00)  ; FMax(a,b)
  %6679 = fadd fast float %6678, 0x3F10000000000000
  %6680 = fcmp fast oeq float %6677, 0.000000e+00
  br i1 %5814, label %6681, label %6834, !dx.controlflow.hints !128

; <label>:6681                                    ; preds = %6669
  br i1 %6680, label %6682, label %6749

; <label>:6682                                    ; preds = %6681
  %6683 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6684 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6685 = fmul fast float %6684, %5803
  %6686 = fmul fast float %6683, %5807
  %6687 = fadd fast float %6685, 5.000000e-01
  %6688 = call float @dx.op.unary.f32(i32 27, float %6687)  ; Round_ni(value)
  %6689 = fadd fast float %6686, 5.000000e-01
  %6690 = call float @dx.op.unary.f32(i32 27, float %6689)  ; Round_ni(value)
  %6691 = fsub fast float %6687, %6688
  %6692 = fsub fast float %6689, %6690
  %6693 = fadd fast float %6688, -5.000000e-01
  %6694 = fadd fast float %6690, -5.000000e-01
  %6695 = fmul fast float %6691, 2.000000e+00
  %6696 = fsub fast float 3.000000e+00, %6695
  %6697 = fadd fast float %6695, 1.000000e+00
  %6698 = fsub fast float 2.000000e+00, %6691
  %6699 = bitcast float %6696 to i32
  %6700 = sub nsw i32 2129859010, %6699
  %6701 = bitcast i32 %6700 to float
  %6702 = fmul fast float %6701, %6698
  %6703 = fadd fast float %6702, -1.000000e+00
  %6704 = bitcast float %6697 to i32
  %6705 = sub nsw i32 2129859010, %6704
  %6706 = bitcast i32 %6705 to float
  %6707 = fmul fast float %6706, %6691
  %6708 = fadd fast float %6707, 1.000000e+00
  %6709 = fmul fast float %6692, 2.000000e+00
  %6710 = fsub fast float 3.000000e+00, %6709
  %6711 = fadd fast float %6709, 1.000000e+00
  %6712 = fsub fast float 2.000000e+00, %6692
  %6713 = bitcast float %6710 to i32
  %6714 = sub nsw i32 2129859010, %6713
  %6715 = bitcast i32 %6714 to float
  %6716 = fmul fast float %6715, %6712
  %6717 = fadd fast float %6716, -1.000000e+00
  %6718 = bitcast float %6711 to i32
  %6719 = sub nsw i32 2129859010, %6718
  %6720 = bitcast i32 %6719 to float
  %6721 = fmul fast float %6720, %6692
  %6722 = fadd fast float %6721, 1.000000e+00
  %6723 = fadd fast float %6703, %6693
  %6724 = fmul fast float %6723, %6674
  %6725 = fadd fast float %6717, %6694
  %6726 = fmul fast float %6725, %6675
  %6727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6724, float %6726, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  %6729 = fmul fast float %6728, %6696
  %6730 = fadd fast float %6708, %6693
  %6731 = fmul fast float %6730, %6674
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6731, float %6726, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = fmul fast float %6733, %6697
  %6735 = fadd fast float %6722, %6694
  %6736 = fmul fast float %6735, %6675
  %6737 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6724, float %6736, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6738 = extractvalue %dx.types.ResRet.f32 %6737, 0
  %6739 = fmul fast float %6738, %6696
  %6740 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6731, float %6736, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 0
  %6742 = fmul fast float %6741, %6697
  %6743 = fadd fast float %6742, %6739
  %6744 = fmul fast float %6743, %6711
  %6745 = fadd fast float %6734, %6729
  %6746 = fmul fast float %6745, %6710
  %6747 = fadd fast float %6746, %6744
  %6748 = fmul fast float %6747, 6.250000e-02
  br label %6987

; <label>:6749                                    ; preds = %6681
  %6750 = fmul fast float %271, 0x401921FB60000000
  %6751 = call float @dx.op.unary.f32(i32 13, float %6750)  ; Sin(value)
  %6752 = call float @dx.op.unary.f32(i32 12, float %6750)  ; Cos(value)
  %6753 = fsub fast float -0.000000e+00, %6751
  br label %6754

; <label>:6754                                    ; preds = %6803, %6749
  %6755 = phi float [ 0.000000e+00, %6749 ], [ %6798, %6803 ]
  %6756 = phi float [ 0.000000e+00, %6749 ], [ %6800, %6803 ]
  %6757 = phi i32 [ 0, %6749 ], [ %6804, %6803 ]
  %6758 = mul i32 %6757, 2
  %6759 = add i32 0, %6758
  %6760 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6759
  %6761 = load float, float* %6760, align 4
  %6762 = mul i32 %6757, 2
  %6763 = add i32 1, %6762
  %6764 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6763
  %6765 = load float, float* %6764, align 4
  %6766 = fmul fast float %6761, %6752
  %6767 = call float @dx.op.tertiary.f32(i32 46, float %6765, float %6753, float %6766)  ; FMad(a,b,c)
  %6768 = fmul fast float %6761, %6751
  %6769 = call float @dx.op.tertiary.f32(i32 46, float %6765, float %6752, float %6768)  ; FMad(a,b,c)
  %6770 = fmul fast float %6767, %6677
  %6771 = fmul fast float %6769, %6677
  %6772 = fadd fast float %6770, %5803
  %6773 = fadd fast float %6771, %5807
  %6774 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6772, float %6773, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6775 = extractvalue %dx.types.ResRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.ResRet.f32 %6774, 2
  %6778 = extractvalue %dx.types.ResRet.f32 %6774, 3
  %6779 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6775, float* %6779, align 4
  %6780 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6776, float* %6780, align 4
  %6781 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6777, float* %6781, align 4
  %6782 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6778, float* %6782, align 4
  %6783 = fsub fast float %6775, %6679
  %6784 = fcmp fast olt float %6783, 0.000000e+00
  %6785 = select i1 %6784, float 0.000000e+00, float 1.000000e+00
  %6786 = fadd fast float %6785, %6755
  %6787 = fmul fast float %6785, %6783
  %6788 = fadd fast float %6787, %6756
  br label %6789

; <label>:6789                                    ; preds = %6789, %6754
  %6790 = phi i32 [ 1, %6754 ], [ %6801, %6789 ]
  %6791 = phi float [ %6788, %6754 ], [ %6800, %6789 ]
  %6792 = phi float [ %6786, %6754 ], [ %6798, %6789 ]
  %6793 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6790
  %6794 = load float, float* %6793, align 4, !tbaa !122, !noalias !112
  %6795 = fsub fast float %6794, %6679
  %6796 = fcmp fast olt float %6795, 0.000000e+00
  %6797 = select i1 %6796, float 0.000000e+00, float 1.000000e+00
  %6798 = fadd fast float %6797, %6792
  %6799 = fmul fast float %6797, %6795
  %6800 = fadd fast float %6799, %6791
  %6801 = add nuw nsw i32 %6790, 1
  %6802 = icmp eq i32 %6801, 4
  br i1 %6802, label %6803, label %6789, !llvm.loop !124

; <label>:6803                                    ; preds = %6789
  %6804 = add nuw nsw i32 %6757, 1
  %6805 = icmp eq i32 %6804, 8
  br i1 %6805, label %6806, label %6754, !llvm.loop !125

; <label>:6806                                    ; preds = %6803
  %6807 = fdiv fast float 1.000000e+00, %6798
  %6808 = fmul fast float %6807, %6800
  %6809 = fdiv fast float 1.000000e+00, %6679
  %6810 = fmul fast float %6808, %6809
  %6811 = call float @dx.op.unary.f32(i32 7, float %6810)  ; Saturate(value)
  %6812 = call float @dx.op.binary.f32(i32 35, float %6811, float 0.000000e+00)  ; FMax(a,b)
  %6813 = fmul fast float %6798, 3.125000e-02
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = fmul fast float %6814, 2.000000e+00
  %6816 = fadd fast float %6815, -1.000000e+00
  %6817 = fcmp fast ogt float %6816, 0.000000e+00
  %6818 = fcmp fast olt float %6816, 0.000000e+00
  %6819 = zext i1 %6817 to i32
  %6820 = zext i1 %6818 to i32
  %6821 = sub nsw i32 %6819, %6820
  %6822 = sitofp i32 %6821 to float
  %6823 = fmul fast float %6822, %6816
  %6824 = fsub fast float 1.000000e+00, %6823
  %6825 = fmul fast float %6824, %6824
  %6826 = fmul fast float %6825, %6824
  %6827 = fsub fast float %6824, %6826
  %6828 = fmul fast float %6827, %6812
  %6829 = fsub fast float 1.000000e+00, %6826
  %6830 = fsub fast float %6829, %6828
  %6831 = fmul fast float %6822, 5.000000e-01
  %6832 = fmul fast float %6831, %6830
  %6833 = fsub fast float 5.000000e-01, %6832
  br label %6987

; <label>:6834                                    ; preds = %6669
  br i1 %6680, label %6835, label %6902

; <label>:6835                                    ; preds = %6834
  %6836 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6837 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6838 = fmul fast float %6837, %5803
  %6839 = fmul fast float %6836, %5807
  %6840 = fadd fast float %6838, 5.000000e-01
  %6841 = call float @dx.op.unary.f32(i32 27, float %6840)  ; Round_ni(value)
  %6842 = fadd fast float %6839, 5.000000e-01
  %6843 = call float @dx.op.unary.f32(i32 27, float %6842)  ; Round_ni(value)
  %6844 = fsub fast float %6840, %6841
  %6845 = fsub fast float %6842, %6843
  %6846 = fadd fast float %6841, -5.000000e-01
  %6847 = fadd fast float %6843, -5.000000e-01
  %6848 = fmul fast float %6844, 2.000000e+00
  %6849 = fsub fast float 3.000000e+00, %6848
  %6850 = fadd fast float %6848, 1.000000e+00
  %6851 = fsub fast float 2.000000e+00, %6844
  %6852 = bitcast float %6849 to i32
  %6853 = sub nsw i32 2129859010, %6852
  %6854 = bitcast i32 %6853 to float
  %6855 = fmul fast float %6854, %6851
  %6856 = fadd fast float %6855, -1.000000e+00
  %6857 = bitcast float %6850 to i32
  %6858 = sub nsw i32 2129859010, %6857
  %6859 = bitcast i32 %6858 to float
  %6860 = fmul fast float %6859, %6844
  %6861 = fadd fast float %6860, 1.000000e+00
  %6862 = fmul fast float %6845, 2.000000e+00
  %6863 = fsub fast float 3.000000e+00, %6862
  %6864 = fadd fast float %6862, 1.000000e+00
  %6865 = fsub fast float 2.000000e+00, %6845
  %6866 = bitcast float %6863 to i32
  %6867 = sub nsw i32 2129859010, %6866
  %6868 = bitcast i32 %6867 to float
  %6869 = fmul fast float %6868, %6865
  %6870 = fadd fast float %6869, -1.000000e+00
  %6871 = bitcast float %6864 to i32
  %6872 = sub nsw i32 2129859010, %6871
  %6873 = bitcast i32 %6872 to float
  %6874 = fmul fast float %6873, %6845
  %6875 = fadd fast float %6874, 1.000000e+00
  %6876 = fadd fast float %6856, %6846
  %6877 = fmul fast float %6876, %6674
  %6878 = fadd fast float %6870, %6847
  %6879 = fmul fast float %6878, %6675
  %6880 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6877, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6881 = extractvalue %dx.types.ResRet.f32 %6880, 0
  %6882 = fmul fast float %6881, %6849
  %6883 = fadd fast float %6861, %6846
  %6884 = fmul fast float %6883, %6674
  %6885 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6884, float %6879, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6886 = extractvalue %dx.types.ResRet.f32 %6885, 0
  %6887 = fmul fast float %6886, %6850
  %6888 = fadd fast float %6875, %6847
  %6889 = fmul fast float %6888, %6675
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6877, float %6889, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = fmul fast float %6891, %6849
  %6893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6884, float %6889, float undef, float undef, i32 0, i32 0, i32 undef, float %6679)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6894 = extractvalue %dx.types.ResRet.f32 %6893, 0
  %6895 = fmul fast float %6894, %6850
  %6896 = fadd fast float %6895, %6892
  %6897 = fmul fast float %6896, %6864
  %6898 = fadd fast float %6887, %6882
  %6899 = fmul fast float %6898, %6863
  %6900 = fadd fast float %6899, %6897
  %6901 = fmul fast float %6900, 6.250000e-02
  br label %6987

; <label>:6902                                    ; preds = %6834
  %6903 = fmul fast float %271, 0x401921FB60000000
  %6904 = call float @dx.op.unary.f32(i32 13, float %6903)  ; Sin(value)
  %6905 = call float @dx.op.unary.f32(i32 12, float %6903)  ; Cos(value)
  %6906 = fsub fast float -0.000000e+00, %6904
  br label %6907

; <label>:6907                                    ; preds = %6956, %6902
  %6908 = phi float [ 0.000000e+00, %6902 ], [ %6951, %6956 ]
  %6909 = phi float [ 0.000000e+00, %6902 ], [ %6953, %6956 ]
  %6910 = phi i32 [ 0, %6902 ], [ %6957, %6956 ]
  %6911 = mul i32 %6910, 2
  %6912 = add i32 0, %6911
  %6913 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6912
  %6914 = load float, float* %6913, align 4
  %6915 = mul i32 %6910, 2
  %6916 = add i32 1, %6915
  %6917 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6916
  %6918 = load float, float* %6917, align 4
  %6919 = fmul fast float %6914, %6905
  %6920 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6906, float %6919)  ; FMad(a,b,c)
  %6921 = fmul fast float %6914, %6904
  %6922 = call float @dx.op.tertiary.f32(i32 46, float %6918, float %6905, float %6921)  ; FMad(a,b,c)
  %6923 = fmul fast float %6920, %6677
  %6924 = fmul fast float %6922, %6677
  %6925 = fadd fast float %6923, %5803
  %6926 = fadd fast float %6924, %5807
  %6927 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6925, float %6926, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6928 = extractvalue %dx.types.ResRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.ResRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.ResRet.f32 %6927, 2
  %6931 = extractvalue %dx.types.ResRet.f32 %6927, 3
  %6932 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6928, float* %6932, align 4
  %6933 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6929, float* %6933, align 4
  %6934 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6930, float* %6934, align 4
  %6935 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6931, float* %6935, align 4
  %6936 = fsub fast float %6928, %6679
  %6937 = fcmp fast olt float %6936, 0.000000e+00
  %6938 = select i1 %6937, float 0.000000e+00, float 1.000000e+00
  %6939 = fadd fast float %6938, %6908
  %6940 = fmul fast float %6938, %6936
  %6941 = fadd fast float %6940, %6909
  br label %6942

; <label>:6942                                    ; preds = %6942, %6907
  %6943 = phi i32 [ 1, %6907 ], [ %6954, %6942 ]
  %6944 = phi float [ %6941, %6907 ], [ %6953, %6942 ]
  %6945 = phi float [ %6939, %6907 ], [ %6951, %6942 ]
  %6946 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6943
  %6947 = load float, float* %6946, align 4, !tbaa !122, !noalias !112
  %6948 = fsub fast float %6947, %6679
  %6949 = fcmp fast olt float %6948, 0.000000e+00
  %6950 = select i1 %6949, float 0.000000e+00, float 1.000000e+00
  %6951 = fadd fast float %6950, %6945
  %6952 = fmul fast float %6950, %6948
  %6953 = fadd fast float %6952, %6944
  %6954 = add nuw nsw i32 %6943, 1
  %6955 = icmp eq i32 %6954, 4
  br i1 %6955, label %6956, label %6942, !llvm.loop !124

; <label>:6956                                    ; preds = %6942
  %6957 = add nuw nsw i32 %6910, 1
  %6958 = icmp eq i32 %6957, 8
  br i1 %6958, label %6959, label %6907, !llvm.loop !125

; <label>:6959                                    ; preds = %6956
  %6960 = fdiv fast float 1.000000e+00, %6951
  %6961 = fmul fast float %6960, %6953
  %6962 = fdiv fast float 1.000000e+00, %6679
  %6963 = fmul fast float %6961, %6962
  %6964 = call float @dx.op.unary.f32(i32 7, float %6963)  ; Saturate(value)
  %6965 = call float @dx.op.binary.f32(i32 35, float %6964, float 0.000000e+00)  ; FMax(a,b)
  %6966 = fmul fast float %6951, 3.125000e-02
  %6967 = call float @dx.op.unary.f32(i32 7, float %6966)  ; Saturate(value)
  %6968 = fmul fast float %6967, 2.000000e+00
  %6969 = fadd fast float %6968, -1.000000e+00
  %6970 = fcmp fast ogt float %6969, 0.000000e+00
  %6971 = fcmp fast olt float %6969, 0.000000e+00
  %6972 = zext i1 %6970 to i32
  %6973 = zext i1 %6971 to i32
  %6974 = sub nsw i32 %6972, %6973
  %6975 = sitofp i32 %6974 to float
  %6976 = fmul fast float %6975, %6969
  %6977 = fsub fast float 1.000000e+00, %6976
  %6978 = fmul fast float %6977, %6977
  %6979 = fmul fast float %6978, %6977
  %6980 = fsub fast float %6977, %6979
  %6981 = fmul fast float %6980, %6965
  %6982 = fsub fast float 1.000000e+00, %6979
  %6983 = fsub fast float %6982, %6981
  %6984 = fmul fast float %6975, 5.000000e-01
  %6985 = fmul fast float %6984, %6983
  %6986 = fsub fast float 5.000000e-01, %6985
  br label %6987

; <label>:6987                                    ; preds = %6959, %6835, %6806, %6682, %6666
  %6988 = phi float [ 1.000000e+00, %6666 ], [ %6748, %6682 ], [ %6833, %6806 ], [ %6901, %6835 ], [ %6986, %6959 ]
  %6989 = fsub fast float %6500, %6333
  %6990 = fmul fast float %6989, %5900
  %6991 = fadd fast float %6990, %6333
  %6992 = fsub fast float %6667, %6991
  %6993 = fmul fast float %6992, %5899
  %6994 = fadd fast float %6993, %6991
  %6995 = fsub fast float %6988, %6994
  %6996 = fmul fast float %6995, %5927
  %6997 = fadd fast float %6996, %6994
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7000 = fcmp fast ogt float %6999, 0.000000e+00
  br i1 %7000, label %7001, label %7041, !dx.controlflow.hints !129

; <label>:7001                                    ; preds = %6987
  %7002 = fcmp fast ugt float %6999, 0.000000e+00
  br i1 %7002, label %7003, label %7038

; <label>:7003                                    ; preds = %7001
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7008 = extractvalue %dx.types.CBufRet.f32 %7004, 3
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7014 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7015 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = fadd fast float %7017, %5780
  %7021 = fadd fast float %7018, %5781
  %7022 = fadd fast float %7019, %5782
  %7023 = fmul fast float %7020, %7005
  %7024 = call float @dx.op.tertiary.f32(i32 46, float %7006, float %7021, float %7023)  ; FMad(a,b,c)
  %7025 = call float @dx.op.tertiary.f32(i32 46, float %7007, float %7022, float %7024)  ; FMad(a,b,c)
  %7026 = fadd fast float %7025, %7008
  %7027 = fmul fast float %7020, %7010
  %7028 = call float @dx.op.tertiary.f32(i32 46, float %7011, float %7021, float %7027)  ; FMad(a,b,c)
  %7029 = call float @dx.op.tertiary.f32(i32 46, float %7012, float %7022, float %7028)  ; FMad(a,b,c)
  %7030 = fadd fast float %7029, %7013
  %7031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7026, float %7030, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7032 = extractvalue %dx.types.ResRet.f32 %7031, 0
  %7033 = fmul fast float %7032, %7015
  %7034 = fadd fast float %7033, %7014
  %7035 = call float @dx.op.unary.f32(i32 7, float %7034)  ; Saturate(value)
  %7036 = fmul fast float %7035, %6999
  %7037 = fsub fast float 1.000000e+00, %7036
  br label %7038

; <label>:7038                                    ; preds = %7003, %7001
  %7039 = phi float [ %7037, %7003 ], [ 1.000000e+00, %7001 ]
  %7040 = fmul fast float %7039, %6997
  br label %7041

; <label>:7041                                    ; preds = %7038, %6987, %5760
  %7042 = phi float [ 1.000000e+00, %5760 ], [ %7040, %7038 ], [ %6997, %6987 ]
  %7043 = call float @dx.op.binary.f32(i32 36, float %7042, float %7042)  ; FMin(a,b)
  %7044 = call float @dx.op.binary.f32(i32 36, float %7042, float %7043)  ; FMin(a,b)
  %7045 = fcmp fast ogt float %7044, 0.000000e+00
  br i1 %7045, label %7046, label %7211, !dx.controlflow.hints !130

; <label>:7046                                    ; preds = %7041
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 0
  %7049 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7050 = extractvalue %dx.types.CBufRet.f32 %7047, 2
  %7051 = extractvalue %dx.types.CBufRet.f32 %7047, 3
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.CBufRet.f32 %7052, 3
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7057, 3
  %7062 = fmul fast float %7048, %5780
  %7063 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %7049, float %7062)  ; FMad(a,b,c)
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %7050, float %7063)  ; FMad(a,b,c)
  %7065 = fadd fast float %7064, %7051
  %7066 = fmul fast float %7053, %5780
  %7067 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %7054, float %7066)  ; FMad(a,b,c)
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %7055, float %7067)  ; FMad(a,b,c)
  %7069 = fadd fast float %7068, %7056
  %7070 = fmul fast float %7058, %5780
  %7071 = call float @dx.op.tertiary.f32(i32 46, float %5781, float %7059, float %7070)  ; FMad(a,b,c)
  %7072 = call float @dx.op.tertiary.f32(i32 46, float %5782, float %7060, float %7071)  ; FMad(a,b,c)
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 0
  %7075 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7076 = extractvalue %dx.types.CBufRet.f32 %7073, 3
  %7077 = fmul fast float %7076, %7065
  %7078 = fmul fast float %7076, %7069
  %7079 = fadd fast float %7077, %7074
  %7080 = fadd fast float %7078, %7075
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7084 = fsub fast float %7079, %7082
  %7085 = fsub fast float %7080, %7083
  %7086 = fcmp fast olt float %7084, 0.000000e+00
  %7087 = fcmp fast olt float %7085, 0.000000e+00
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7093 = select i1 %7086, float %7089, float %7091
  %7094 = select i1 %7087, float %7090, float %7092
  %7095 = fmul fast float %7093, %7084
  %7096 = fmul fast float %7094, %7085
  %7097 = call float @dx.op.unary.f32(i32 6, float %7095)  ; FAbs(value)
  %7098 = call float @dx.op.unary.f32(i32 6, float %7096)  ; FAbs(value)
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = call float @dx.op.binary.f32(i32 35, float %7097, float %7098)  ; FMax(a,b)
  %7102 = fsub fast float %7100, %7101
  %7103 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7104 = fcmp fast ogt float %7103, 0.000000e+00
  br i1 %7104, label %7105, label %7146, !dx.controlflow.hints !131

; <label>:7105                                    ; preds = %7046
  %7106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7079, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7108 = fcmp fast ogt float %7107, 0.000000e+00
  br i1 %7108, label %7109, label %7141

; <label>:7109                                    ; preds = %7105
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7079, float %7080, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = extractvalue %dx.types.ResRet.f32 %7110, 1
  %7113 = extractvalue %dx.types.ResRet.f32 %7110, 2
  %7114 = extractvalue %dx.types.ResRet.f32 %7110, 3
  %7115 = fsub fast float 1.000000e+00, %7061
  %7116 = fsub fast float %7115, %7072
  %7117 = fmul fast float %7116, 0x400921FB60000000
  %7118 = fadd fast float %7117, 0x3FF921FB60000000
  %7119 = call float @dx.op.unary.f32(i32 13, float %7118)  ; Sin(value)
  %7120 = fadd fast float %7119, -1.000000e+00
  %7121 = fmul fast float %7120, 0x3FD45F3060000000
  %7122 = fmul fast float %7116, 0x401921FB60000000
  %7123 = fadd fast float %7122, 0x400921FB60000000
  %7124 = call float @dx.op.unary.f32(i32 13, float %7123)  ; Sin(value)
  %7125 = fadd fast float %7124, 0x3E7777A5C0000000
  %7126 = fmul fast float %7125, 0x3FC45F3060000000
  %7127 = fmul fast float %7116, 0x4022D97C80000000
  %7128 = fadd fast float %7127, 0x4012D97C80000000
  %7129 = call float @dx.op.unary.f32(i32 13, float %7128)  ; Sin(value)
  %7130 = fadd fast float %7129, 1.000000e+00
  %7131 = fmul fast float %7130, 0x3FBB2995E0000000
  %7132 = fmul fast float %7116, 0x402921FB60000000
  %7133 = fadd fast float %7132, 0x401921FB60000000
  %7134 = call float @dx.op.unary.f32(i32 13, float %7133)  ; Sin(value)
  %7135 = fadd fast float %7134, 0xBE8777A5C0000000
  %7136 = fmul fast float %7135, 0x3FB45F3060000000
  %7137 = call float @dx.op.dot4.f32(i32 56, float %7111, float %7112, float %7113, float %7114, float %7121, float %7126, float %7131, float %7136)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7138 = fmul fast float %7137, 0xBFF7154760000000
  %7139 = call float @dx.op.unary.f32(i32 21, float %7138)  ; Exp(value)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  br label %7141

; <label>:7141                                    ; preds = %7109, %7105
  %7142 = phi float [ %7140, %7109 ], [ 1.000000e+00, %7105 ]
  %7143 = fadd fast float %7142, -1.000000e+00
  %7144 = fmul fast float %7143, %7103
  %7145 = fadd fast float %7144, 1.000000e+00
  br label %7146

; <label>:7146                                    ; preds = %7141, %7046
  %7147 = phi float [ %7145, %7141 ], [ 1.000000e+00, %7046 ]
  %7148 = fmul fast float %7147, %7042
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.CBufRet.f32 %7149, 2
  %7153 = fadd fast float %7150, %201
  %7154 = fadd fast float %7151, %202
  %7155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7156 = extractvalue %dx.types.CBufRet.f32 %7155, 1
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 0
  %7159 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7160 = extractvalue %dx.types.CBufRet.f32 %7157, 2
  %7161 = fsub fast float -0.000000e+00, %7153
  %7162 = fsub fast float -0.000000e+00, %7154
  %7163 = fsub fast float %5040, %7152
  %7164 = fadd fast float %7163, %7156
  %7165 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7161, float %7162, float %7164)  ; Dot3(ax,ay,az,bx,by,bz)
  %7166 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7158, float %7159, float %7160)  ; Dot3(ax,ay,az,bx,by,bz)
  %7167 = fdiv fast float 1.000000e+00, %7166
  %7168 = fmul fast float %7167, %7165
  %7169 = fmul fast float %7158, %7168
  %7170 = fmul fast float %7159, %7168
  %7171 = fadd fast float %7169, %7153
  %7172 = fadd fast float %7170, %7154
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 0
  %7175 = extractvalue %dx.types.CBufRet.f32 %7173, 1
  %7176 = fsub fast float %7171, %7174
  %7177 = fsub fast float %7172, %7175
  %7178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.f32 %7178, 2
  %7180 = extractvalue %dx.types.CBufRet.f32 %7178, 3
  %7181 = fmul fast float %7176, %7179
  %7182 = fmul fast float %7177, %7180
  %7183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.i32 %7183, 3
  %7185 = icmp eq i32 %7184, 0
  br i1 %7185, label %7191, label %7186

; <label>:7186                                    ; preds = %7146
  %7187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7181, float %7182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7188 = extractvalue %dx.types.ResRet.f32 %7187, 0
  %7189 = extractvalue %dx.types.ResRet.f32 %7187, 1
  %7190 = extractvalue %dx.types.ResRet.f32 %7187, 2
  br label %7196

; <label>:7191                                    ; preds = %7146
  %7192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7181, float %7182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7193 = extractvalue %dx.types.ResRet.f32 %7192, 0
  %7194 = extractvalue %dx.types.ResRet.f32 %7192, 1
  %7195 = extractvalue %dx.types.ResRet.f32 %7192, 2
  br label %7196

; <label>:7196                                    ; preds = %7191, %7186
  %7197 = phi float [ %7188, %7186 ], [ %7193, %7191 ]
  %7198 = phi float [ %7189, %7186 ], [ %7194, %7191 ]
  %7199 = phi float [ %7190, %7186 ], [ %7195, %7191 ]
  %7200 = extractvalue %dx.types.CBufRet.f32 %7155, 2
  %7201 = fmul fast float %7200, %7197
  %7202 = extractvalue %dx.types.CBufRet.f32 %7155, 0
  %7203 = fsub fast float %7168, %7202
  %7204 = fsub fast float %7203, %7201
  %7205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7204)  ; FMax(a,b)
  %7206 = fmul fast float %7205, %7198
  %7207 = call float @dx.op.binary.f32(i32 36, float %7199, float %7206)  ; FMin(a,b)
  %7208 = fmul fast float %7207, 0xBFF7154760000000
  %7209 = call float @dx.op.unary.f32(i32 21, float %7208)  ; Exp(value)
  %7210 = fmul fast float %7148, %7209
  br label %7211

; <label>:7211                                    ; preds = %7196, %7041
  %7212 = phi float [ %7210, %7196 ], [ %7042, %7041 ]
  %7213 = call float @dx.op.binary.f32(i32 36, float %7212, float %7212)  ; FMin(a,b)
  %7214 = call float @dx.op.binary.f32(i32 36, float %7212, float %7213)  ; FMin(a,b)
  %7215 = fcmp fast ogt float %7214, 0.000000e+00
  br i1 %7215, label %7216, label %7463, !dx.controlflow.hints !132

; <label>:7216                                    ; preds = %7211
  %7217 = fmul fast float %7212, %5772
  %7218 = fmul fast float %7212, %5773
  %7219 = fmul fast float %7212, %5774
  %7220 = fsub fast float %203, %4239
  %7221 = fcmp fast ogt float %7220, 0.000000e+00
  %7222 = fmul fast float %5761, 5.120000e+02
  %7223 = fmul fast float %5762, 5.120000e+02
  %7224 = fmul fast float %5763, 5.120000e+02
  %7225 = fadd fast float %7224, %203
  %7226 = fsub fast float %4239, %7225
  %7227 = fmul fast float %7226, 2.000000e+00
  %7228 = fadd fast float %7227, %7225
  %7229 = select i1 %7221, float %7228, float %7225
  %7230 = fsub fast float %7229, %203
  %7231 = call float @dx.op.dot3.f32(i32 55, float %7222, float %7223, float %7230, float %7222, float %7223, float %7230)  ; Dot3(ax,ay,az,bx,by,bz)
  %7232 = call float @dx.op.unary.f32(i32 25, float %7231)  ; Rsqrt(value)
  %7233 = fmul fast float %7232, %7222
  %7234 = fmul fast float %7232, %7223
  %7235 = fmul fast float %7232, %7230
  %7236 = fsub fast float %4239, %203
  %7237 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7236)  ; Dot3(ax,ay,az,bx,by,bz)
  %7238 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7233, float %7234, float %7235)  ; Dot3(ax,ay,az,bx,by,bz)
  %7239 = fdiv fast float 1.000000e+00, %7238
  %7240 = fmul fast float %7239, %7237
  %7241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7220, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7242 = fcmp fast ogt float %7241, 0.000000e+00
  %7243 = fcmp fast olt float %7241, 0.000000e+00
  %7244 = zext i1 %7242 to i32
  %7245 = zext i1 %7243 to i32
  %7246 = sub nsw i32 %7244, %7245
  %7247 = sitofp i32 %7246 to float
  %7248 = fsub fast float %7229, %4239
  %7249 = call float @dx.op.dot3.f32(i32 55, float %7222, float %7223, float %7248, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7250 = fcmp fast ogt float %7249, 0.000000e+00
  %7251 = fcmp fast olt float %7249, 0.000000e+00
  %7252 = zext i1 %7250 to i32
  %7253 = zext i1 %7251 to i32
  %7254 = sub nsw i32 %7252, %7253
  %7255 = sitofp i32 %7254 to float
  %7256 = fcmp fast une float %7247, %7255
  br i1 %7256, label %7257, label %7267

; <label>:7257                                    ; preds = %7216
  %7258 = fmul fast float %7240, %7235
  %7259 = fmul fast float %7240, %7234
  %7260 = fmul fast float %7240, %7233
  %7261 = fmul fast float %7260, %7260
  %7262 = fmul fast float %7259, %7259
  %7263 = fadd fast float %7261, %7262
  %7264 = fmul fast float %7258, %7258
  %7265 = fadd fast float %7263, %7264
  %7266 = call float @dx.op.unary.f32(i32 24, float %7265)  ; Sqrt(value)
  br label %7277

; <label>:7267                                    ; preds = %7216
  %7268 = icmp slt i32 %7246, 0
  br i1 %7268, label %7269, label %7277

; <label>:7269                                    ; preds = %7267
  %7270 = fsub fast float %203, %7229
  %7271 = fmul fast float %7222, %7222
  %7272 = fmul fast float %7223, %7223
  %7273 = fadd fast float %7271, %7272
  %7274 = fmul fast float %7270, %7270
  %7275 = fadd fast float %7273, %7274
  %7276 = call float @dx.op.unary.f32(i32 24, float %7275)  ; Sqrt(value)
  br label %7277

; <label>:7277                                    ; preds = %7269, %7267, %7257
  %7278 = phi float [ %7266, %7257 ], [ %7276, %7269 ], [ 0.000000e+00, %7267 ]
  %7279 = fsub fast float -0.000000e+00, %7278
  %7280 = select i1 %7221, float -0.000000e+00, float %7279
  %7281 = fmul fast float %4236, 0x3FF7154760000000
  %7282 = fmul fast float %7281, %7280
  %7283 = fmul fast float %4237, 0x3FF7154760000000
  %7284 = fmul fast float %7283, %7280
  %7285 = fmul fast float %4238, 0x3FF7154760000000
  %7286 = fmul fast float %7285, %7280
  %7287 = call float @dx.op.unary.f32(i32 21, float %7282)  ; Exp(value)
  %7288 = call float @dx.op.unary.f32(i32 21, float %7284)  ; Exp(value)
  %7289 = call float @dx.op.unary.f32(i32 21, float %7286)  ; Exp(value)
  %7290 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7291 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  %7292 = call float @dx.op.unary.f32(i32 7, float %7289)  ; Saturate(value)
  %7293 = fmul fast float %7217, %7290
  %7294 = fmul fast float %7218, %7291
  %7295 = fmul fast float %7219, %7292
  %7296 = fsub fast float %5761, %5028
  %7297 = fsub fast float %5762, %5027
  %7298 = fsub fast float %5763, %5026
  %7299 = call float @dx.op.dot3.f32(i32 55, float %7296, float %7297, float %7298, float %7296, float %7297, float %7298)  ; Dot3(ax,ay,az,bx,by,bz)
  %7300 = call float @dx.op.unary.f32(i32 25, float %7299)  ; Rsqrt(value)
  %7301 = fmul fast float %7300, %7296
  %7302 = fmul fast float %7300, %7297
  %7303 = fmul fast float %7300, %7298
  %7304 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %7305 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5024, float %5023, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = call float @dx.op.unary.f32(i32 7, float %7304)  ; Saturate(value)
  %7307 = fmul fast float %7306, %7306
  %7308 = fmul fast float %7307, %5068
  %7309 = call float @dx.op.unary.f32(i32 7, float %7308)  ; Saturate(value)
  %7310 = fmul fast float %7309, %7306
  %7311 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7312 = fmul fast float %7311, %7311
  %7313 = call float @dx.op.unary.f32(i32 6, float %7304)  ; FAbs(value)
  %7314 = fsub fast float 1.000000e+00, %5061
  %7315 = fmul fast float %5043, %5043
  %7316 = fmul fast float %7315, %7314
  %7317 = fadd fast float %7316, %5061
  %7318 = bitcast float %7317 to i32
  %7319 = ashr i32 %7318, 1
  %7320 = add nsw i32 %7319, 532487669
  %7321 = bitcast i32 %7320 to float
  %7322 = fadd fast float %7321, %5043
  %7323 = fmul fast float %5061, %7312
  %7324 = fsub fast float 1.000000e+00, %7312
  %7325 = fadd fast float %7324, %7323
  %7326 = fmul fast float %7313, %7313
  %7327 = fmul fast float %7326, %7314
  %7328 = fadd fast float %7327, %5061
  %7329 = bitcast float %7328 to i32
  %7330 = ashr i32 %7329, 1
  %7331 = add nsw i32 %7330, 532487669
  %7332 = bitcast i32 %7331 to float
  %7333 = fadd fast float %7332, %7313
  %7334 = fmul fast float %7325, %7325
  %7335 = fmul fast float %7334, %7322
  %7336 = fmul fast float %7335, %7333
  %7337 = fdiv fast float 0x3FF0A00000000000, %7336
  %7338 = fmul fast float %7337, %5061
  %7339 = call float @dx.op.unary.f32(i32 6, float %7305)  ; FAbs(value)
  %7340 = fsub fast float 1.000000e+00, %7339
  %7341 = bitcast float %7340 to i32
  %7342 = sitofp i32 %7341 to float
  %7343 = fmul fast float %7342, 5.000000e+00
  %7344 = fadd fast float %7343, 0xC1EFBF8940000000
  %7345 = fptosi float %7344 to i32
  %7346 = bitcast i32 %7345 to float
  %7347 = fsub fast float 1.000000e+00, %5035
  %7348 = fsub fast float 1.000000e+00, %5036
  %7349 = fsub fast float 1.000000e+00, %5041
  %7350 = fmul fast float %7346, %7347
  %7351 = fmul fast float %7346, %7348
  %7352 = fmul fast float %7346, %7349
  %7353 = fadd fast float %7350, %5035
  %7354 = fadd fast float %7351, %5036
  %7355 = fadd fast float %7352, %5041
  br i1 %5180, label %7356, label %7379

; <label>:7356                                    ; preds = %7277
  %7357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3835, float %7339, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7358 = extractvalue %dx.types.ResRet.f32 %7357, 0
  %7359 = extractvalue %dx.types.ResRet.f32 %7357, 1
  %7360 = extractvalue %dx.types.ResRet.f32 %7357, 2
  %7361 = fadd fast float %7358, -5.000000e-01
  %7362 = fadd fast float %7359, -5.000000e-01
  %7363 = fadd fast float %7360, -5.000000e-01
  %7364 = fmul fast float %5035, 4.000000e+00
  %7365 = fmul fast float %7364, %7347
  %7366 = fmul fast float %7365, %7361
  %7367 = fmul fast float %5036, 4.000000e+00
  %7368 = fmul fast float %7367, %7348
  %7369 = fmul fast float %7368, %7362
  %7370 = fmul fast float %5041, 4.000000e+00
  %7371 = fmul fast float %7370, %7349
  %7372 = fmul fast float %7371, %7363
  %7373 = fadd fast float %7366, %7353
  %7374 = fadd fast float %7369, %7354
  %7375 = fadd fast float %7372, %7355
  %7376 = call float @dx.op.unary.f32(i32 7, float %7373)  ; Saturate(value)
  %7377 = call float @dx.op.unary.f32(i32 7, float %7374)  ; Saturate(value)
  %7378 = call float @dx.op.unary.f32(i32 7, float %7375)  ; Saturate(value)
  br label %7379

; <label>:7379                                    ; preds = %7356, %7277
  %7380 = phi float [ %7376, %7356 ], [ %7353, %7277 ]
  %7381 = phi float [ %7377, %7356 ], [ %7354, %7277 ]
  %7382 = phi float [ %7378, %7356 ], [ %7355, %7277 ]
  %7383 = fmul fast float %7304, 9.843750e-01
  %7384 = fadd fast float %7383, 7.812500e-03
  %7385 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7384, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 2
  %7387 = extractvalue %dx.types.ResRet.f32 %7385, 3
  %7388 = fmul fast float %7386, %5035
  %7389 = fmul fast float %7386, %5036
  %7390 = fmul fast float %7386, %5041
  %7391 = fadd fast float %7388, %7387
  %7392 = fadd fast float %7389, %7387
  %7393 = fadd fast float %7390, %7387
  br i1 %5180, label %7394, label %7417

; <label>:7394                                    ; preds = %7379
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3835, float %7304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = extractvalue %dx.types.ResRet.f32 %7395, 1
  %7398 = extractvalue %dx.types.ResRet.f32 %7395, 2
  %7399 = fadd fast float %7396, -5.000000e-01
  %7400 = fadd fast float %7397, -5.000000e-01
  %7401 = fadd fast float %7398, -5.000000e-01
  %7402 = fmul fast float %5035, 4.000000e+00
  %7403 = fmul fast float %7402, %7347
  %7404 = fmul fast float %7403, %7399
  %7405 = fmul fast float %5036, 4.000000e+00
  %7406 = fmul fast float %7405, %7348
  %7407 = fmul fast float %7406, %7400
  %7408 = fmul fast float %5041, 4.000000e+00
  %7409 = fmul fast float %7408, %7349
  %7410 = fmul fast float %7409, %7401
  %7411 = fadd fast float %7404, %7391
  %7412 = fadd fast float %7407, %7392
  %7413 = fadd fast float %7410, %7393
  %7414 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7415 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7416 = call float @dx.op.unary.f32(i32 7, float %7413)  ; Saturate(value)
  br label %7417

; <label>:7417                                    ; preds = %7394, %7379
  %7418 = phi float [ %7414, %7394 ], [ %7391, %7379 ]
  %7419 = phi float [ %7415, %7394 ], [ %7392, %7379 ]
  %7420 = phi float [ %7416, %7394 ], [ %7393, %7379 ]
  %7421 = call float @dx.op.binary.f32(i32 35, float %7419, float %7420)  ; FMax(a,b)
  %7422 = call float @dx.op.binary.f32(i32 35, float %7418, float %7421)  ; FMax(a,b)
  %7423 = fsub fast float 1.000000e+00, %7422
  %7424 = fmul fast float %7380, %7338
  %7425 = fmul fast float %7381, %7338
  %7426 = fmul fast float %7382, %7338
  %7427 = fsub fast float 1.000000e+00, %7305
  %7428 = bitcast float %7427 to i32
  %7429 = sitofp i32 %7428 to float
  %7430 = fmul fast float %7429, 5.000000e+00
  %7431 = fadd fast float %7430, 0xC1EFBF8940000000
  %7432 = fptosi float %7431 to i32
  %7433 = bitcast i32 %7432 to float
  %7434 = fmul fast float %7433, %3836
  %7435 = fmul fast float %7423, %7434
  %7436 = fmul fast float %7435, %5722
  %7437 = fmul fast float %7435, %5723
  %7438 = fmul fast float %7435, %5724
  %7439 = fadd fast float %7436, %7424
  %7440 = fadd fast float %7437, %7425
  %7441 = fadd fast float %7438, %7426
  %7442 = fmul fast float %7310, %7293
  %7443 = fmul fast float %7442, %7423
  %7444 = fmul fast float %7310, %7294
  %7445 = fmul fast float %7444, %7423
  %7446 = fmul fast float %7310, %7295
  %7447 = fmul fast float %7446, %7423
  %7448 = fmul fast float %7442, %7439
  %7449 = fmul fast float %7444, %7440
  %7450 = fmul fast float %7446, %7441
  %7451 = fadd fast float %7443, %5706
  %7452 = fmul fast float %7451, %3832
  %7453 = fadd fast float %7445, %5707
  %7454 = fmul fast float %7453, %3832
  %7455 = fadd fast float %7447, %5708
  %7456 = fmul fast float %7455, %3832
  %7457 = fadd fast float %7448, %5749
  %7458 = fmul fast float %7457, %3832
  %7459 = fadd fast float %7449, %5752
  %7460 = fmul fast float %7459, %3832
  %7461 = fadd fast float %7450, %5755
  %7462 = fmul fast float %7461, %3832
  br label %7463

; <label>:7463                                    ; preds = %7417, %7211, %5702
  %7464 = phi float [ %5750, %5702 ], [ %5750, %7211 ], [ %7458, %7417 ]
  %7465 = phi float [ %5753, %5702 ], [ %5753, %7211 ], [ %7460, %7417 ]
  %7466 = phi float [ %5756, %5702 ], [ %5756, %7211 ], [ %7462, %7417 ]
  %7467 = phi float [ %5745, %5702 ], [ %5745, %7211 ], [ %7452, %7417 ]
  %7468 = phi float [ %5746, %5702 ], [ %5746, %7211 ], [ %7454, %7417 ]
  %7469 = phi float [ %5747, %5702 ], [ %5747, %7211 ], [ %7456, %7417 ]
  %7470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7471 = extractvalue %dx.types.CBufRet.i32 %7470, 0
  %7472 = icmp eq i32 %7471, 0
  br i1 %7472, label %8135, label %7473

; <label>:7473                                    ; preds = %7463
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 2
  %7476 = extractvalue %dx.types.CBufRet.f32 %7474, 3
  %7477 = fmul fast float %7475, %114
  %7478 = fmul fast float %7476, %115
  %7479 = fptoui float %7477 to i32
  %7480 = fptoui float %7478 to i32
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7485 = fadd fast float %101, -4.000000e+00
  %7486 = call float @dx.op.binary.f32(i32 35, float %7485, float 0.000000e+00)  ; FMax(a,b)
  %7487 = fadd fast float %7486, %7482
  %7488 = fmul fast float %7487, %7483
  %7489 = call float @dx.op.unary.f32(i32 23, float %7488)  ; Log(value)
  %7490 = fmul fast float %7489, %7484
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7493 = fmul fast float %7490, %7492
  %7494 = call float @dx.op.unary.f32(i32 7, float %7493)  ; Saturate(value)
  %7495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7496 = extractvalue %dx.types.CBufRet.i32 %7495, 1
  %7497 = add i32 %7496, -1
  %7498 = uitofp i32 %7496 to float
  %7499 = fmul fast float %7498, %7494
  %7500 = fptoui float %7499 to i32
  %7501 = call i32 @dx.op.binary.i32(i32 40, i32 %7500, i32 %7497)  ; UMin(a,b)
  %7502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.i32 %7502, 2
  %7504 = extractvalue %dx.types.CBufRet.i32 %7502, 3
  %7505 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7480, i32 %7503, i32 %7479)  ; UMad(a,b,c)
  %7506 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7501, i32 %7504, i32 %7505)  ; UMad(a,b,c)
  %7507 = add nsw i32 %7471, -1
  %7508 = call i32 @dx.op.binary.i32(i32 37, i32 %7507, i32 0)  ; IMax(a,b)
  %7509 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7510 = fptoui float %7509 to i32
  %7511 = lshr i32 %7510, 5
  %7512 = call i32 @dx.op.binary.i32(i32 40, i32 %7511, i32 8191)  ; UMin(a,b)
  %7513 = shl i32 %7512, 2
  %7514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7513, i32 undef)  ; BufferLoad(srv,index,wot)
  %7515 = extractvalue %dx.types.ResRet.i32 %7514, 0
  %7516 = lshr i32 %7515, 16
  %7517 = and i32 %7515, 65535
  %7518 = lshr i32 %7515, 21
  %7519 = lshr i32 %7517, 5
  %7520 = call i32 @dx.op.binary.i32(i32 40, i32 %7519, i32 %7508)  ; UMin(a,b)
  %7521 = icmp ugt i32 %7518, %7520
  br i1 %7521, label %8135, label %7522

; <label>:7522                                    ; preds = %7473
  br label %7523

; <label>:7523                                    ; preds = %8125, %7522
  %7524 = phi i32 [ %8132, %8125 ], [ %7518, %7522 ]
  %7525 = phi float [ %8126, %8125 ], [ %7464, %7522 ]
  %7526 = phi float [ %8127, %8125 ], [ %7465, %7522 ]
  %7527 = phi float [ %8128, %8125 ], [ %7466, %7522 ]
  %7528 = phi float [ %8129, %8125 ], [ %7467, %7522 ]
  %7529 = phi float [ %8130, %8125 ], [ %7468, %7522 ]
  %7530 = phi float [ %8131, %8125 ], [ %7469, %7522 ]
  %7531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.i32 %7531, 0
  %7533 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7506, i32 %7532, i32 %7524)  ; UMad(a,b,c)
  %7534 = shl i32 %7533, 2
  %7535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7534, i32 undef)  ; BufferLoad(srv,index,wot)
  %7536 = extractvalue %dx.types.ResRet.i32 %7535, 0
  %7537 = shl i32 %7524, 5
  %7538 = sub nsw i32 %7516, %7537
  %7539 = call i32 @dx.op.binary.i32(i32 37, i32 %7538, i32 0)  ; IMax(a,b)
  %7540 = call i32 @dx.op.binary.i32(i32 38, i32 %7539, i32 31)  ; IMin(a,b)
  %7541 = sub nsw i32 1, %7516
  %7542 = add nsw i32 %7541, %7517
  %7543 = call i32 @dx.op.binary.i32(i32 37, i32 %7542, i32 0)  ; IMax(a,b)
  %7544 = call i32 @dx.op.binary.i32(i32 38, i32 %7543, i32 32)  ; IMin(a,b)
  %7545 = and i32 %7544, 31
  %7546 = shl i32 -1, %7545
  %7547 = xor i32 %7546, -1
  %7548 = and i32 %7540, 31
  %7549 = shl i32 %7547, %7548
  %7550 = icmp eq i32 %7544, 32
  %7551 = select i1 %7550, i32 -1, i32 %7549
  %7552 = and i32 %7551, %7536
  %7553 = icmp eq i32 %7552, 0
  br i1 %7553, label %8125, label %7554

; <label>:7554                                    ; preds = %7523
  br label %7555

; <label>:7555                                    ; preds = %7689, %7554
  %7556 = phi i32 [ %7567, %7689 ], [ %7552, %7554 ]
  %7557 = phi float [ %7690, %7689 ], [ %7525, %7554 ]
  %7558 = phi float [ %7691, %7689 ], [ %7526, %7554 ]
  %7559 = phi float [ %7692, %7689 ], [ %7527, %7554 ]
  %7560 = phi float [ %7693, %7689 ], [ %7528, %7554 ]
  %7561 = phi float [ %7694, %7689 ], [ %7529, %7554 ]
  %7562 = phi float [ %7695, %7689 ], [ %7530, %7554 ]
  %7563 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7556)  ; FirstbitLo(value)
  %7564 = add i32 %7563, %7537
  %7565 = and i32 %7563, 31
  %7566 = shl i32 1, %7565
  %7567 = xor i32 %7566, %7556
  %7568 = mul i32 %7564, 112
  %7569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7568, i32 undef)  ; BufferLoad(srv,index,wot)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = extractvalue %dx.types.ResRet.f32 %7569, 1
  %7572 = extractvalue %dx.types.ResRet.f32 %7569, 2
  %7573 = or i32 %7568, 12
  %7574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7573, i32 undef)  ; BufferLoad(srv,index,wot)
  %7575 = extractvalue %dx.types.ResRet.f32 %7574, 0
  %7576 = add i32 %7568, 16
  %7577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7576, i32 undef)  ; BufferLoad(srv,index,wot)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.ResRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.ResRet.f32 %7577, 2
  %7581 = add i32 %7568, 28
  %7582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7581, i32 undef)  ; BufferLoad(srv,index,wot)
  %7583 = extractvalue %dx.types.ResRet.i32 %7582, 0
  %7584 = add i32 %7568, 44
  %7585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7584, i32 undef)  ; BufferLoad(srv,index,wot)
  %7586 = extractvalue %dx.types.ResRet.f32 %7585, 0
  %7587 = add i32 %7568, 48
  %7588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7587, i32 undef)  ; BufferLoad(srv,index,wot)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.ResRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.ResRet.f32 %7588, 2
  %7592 = extractvalue %dx.types.ResRet.f32 %7588, 3
  %7593 = add i32 %7568, 64
  %7594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7593, i32 undef)  ; BufferLoad(srv,index,wot)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = extractvalue %dx.types.ResRet.f32 %7594, 1
  %7597 = extractvalue %dx.types.ResRet.f32 %7594, 2
  %7598 = extractvalue %dx.types.ResRet.f32 %7594, 3
  %7599 = add i32 %7568, 80
  %7600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7599, i32 undef)  ; BufferLoad(srv,index,wot)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 1
  %7602 = extractvalue %dx.types.ResRet.f32 %7600, 2
  %7603 = add i32 %7568, 92
  %7604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7603, i32 undef)  ; BufferLoad(srv,index,wot)
  %7605 = extractvalue %dx.types.ResRet.i32 %7604, 0
  %7606 = call float @dx.op.dot3.f32(i32 55, float %7570, float %7571, float %7572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7607 = select i1 %260, float %7601, float %7570
  %7608 = select i1 %260, float %7606, float %7571
  %7609 = select i1 %260, float %7602, float %7572
  %7610 = and i32 %7605, 65535
  %7611 = uitofp i32 %7610 to float
  %7612 = lshr i32 %7605, 16
  %7613 = uitofp i32 %7612 to float
  %7614 = and i32 %7583, 65535
  %7615 = and i32 %7583, 50331648
  %7616 = icmp eq i32 %7615, 33554432
  %7617 = fsub fast float %7589, %201
  %7618 = fsub fast float %7590, %202
  %7619 = fsub fast float %7591, %203
  %7620 = call float @dx.op.dot3.f32(i32 55, float %7617, float %7618, float %7619, float %7617, float %7618, float %7619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7621 = call float @dx.op.unary.f32(i32 24, float %7620)  ; Sqrt(value)
  %7622 = fdiv fast float 1.000000e+00, %7621
  %7623 = fmul fast float %7622, %7617
  %7624 = fmul fast float %7622, %7618
  %7625 = fmul fast float %7622, %7619
  %7626 = fadd fast float %7621, %7575
  %7627 = fdiv fast float 1.000000e+00, %7626
  %7628 = fmul float %7586, %7627
  %7629 = fmul float %7628, %7628
  %7630 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  br i1 %7616, label %7631, label %7652

; <label>:7631                                    ; preds = %7555
  %7632 = fmul fast float %7597, %7578
  %7633 = fmul fast float %7597, %7579
  %7634 = fmul fast float %7597, %7580
  %7635 = fadd fast float %7617, %7632
  %7636 = fadd fast float %7618, %7633
  %7637 = fadd fast float %7619, %7634
  %7638 = call float @dx.op.dot3.f32(i32 55, float %7635, float %7636, float %7637, float %7635, float %7636, float %7637)  ; Dot3(ax,ay,az,bx,by,bz)
  %7639 = call float @dx.op.unary.f32(i32 25, float %7638)  ; Rsqrt(value)
  %7640 = fmul fast float %7639, %7635
  %7641 = fmul fast float %7639, %7636
  %7642 = fmul fast float %7639, %7637
  %7643 = fsub fast float %201, %7589
  %7644 = fsub fast float %202, %7590
  %7645 = fsub fast float %203, %7591
  %7646 = fsub fast float -0.000000e+00, %7643
  %7647 = fsub fast float -0.000000e+00, %7644
  %7648 = fsub fast float -0.000000e+00, %7645
  %7649 = call float @dx.op.dot3.f32(i32 55, float %7646, float %7647, float %7648, float %7578, float %7579, float %7580)  ; Dot3(ax,ay,az,bx,by,bz)
  %7650 = fcmp fast ogt float %7649, 0.000000e+00
  %7651 = uitofp i1 %7650 to float
  br label %7652

; <label>:7652                                    ; preds = %7631, %7555
  %7653 = phi float [ %7651, %7631 ], [ 1.000000e+00, %7555 ]
  %7654 = phi float [ %7640, %7631 ], [ %7623, %7555 ]
  %7655 = phi float [ %7641, %7631 ], [ %7624, %7555 ]
  %7656 = phi float [ %7642, %7631 ], [ %7625, %7555 ]
  %7657 = call float @dx.op.dot3.f32(i32 55, float %7578, float %7579, float %7580, float %7654, float %7655, float %7656)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = fmul fast float %7657, %7657
  %7659 = call float @dx.op.unary.f32(i32 7, float %7658)  ; Saturate(value)
  %7660 = fsub fast float 1.000000e+00, %7659
  %7661 = fmul fast float %7660, 5.000000e-01
  %7662 = fcmp fast ogt float %7657, 0.000000e+00
  %7663 = fsub fast float 1.000000e+00, %7661
  %7664 = select i1 %7662, float %7661, float %7663
  %7665 = fmul fast float %7664, %7613
  %7666 = fadd fast float %7665, %7611
  %7667 = fmul fast float %7666, 0x3EF0001000000000
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7667, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = fmul fast float %7657, %7595
  %7671 = fadd fast float %7670, %7596
  %7672 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7673 = select i1 %7616, float 1.000000e+00, float %7672
  %7674 = select i1 %7616, float %7672, float 1.000000e+00
  %7675 = fmul fast float %7621, %7592
  %7676 = fsub fast float 1.000000e+00, %7675
  %7677 = fmul fast float %7676, %7598
  %7678 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7679 = fmul fast float %7678, %7674
  %7680 = fmul fast float %7679, 2.000000e+00
  %7681 = fsub fast float 3.000000e+00, %7680
  %7682 = fmul fast float %7669, %7653
  %7683 = fmul fast float %7679, %7679
  %7684 = fmul fast float %7683, %7682
  %7685 = fmul fast float %7684, %7681
  %7686 = call float @dx.op.binary.f32(i32 36, float %7685, float %7685)  ; FMin(a,b)
  %7687 = call float @dx.op.binary.f32(i32 36, float %7685, float %7686)  ; FMin(a,b)
  %7688 = fcmp fast ogt float %7687, 0.000000e+00
  br i1 %7688, label %7697, label %7689, !dx.controlflow.hints !133

; <label>:7689                                    ; preds = %8081, %7843, %7652
  %7690 = phi float [ %7557, %7843 ], [ %7557, %7652 ], [ %8121, %8081 ]
  %7691 = phi float [ %7558, %7843 ], [ %7558, %7652 ], [ %8122, %8081 ]
  %7692 = phi float [ %7559, %7843 ], [ %7559, %7652 ], [ %8123, %8081 ]
  %7693 = phi float [ %7560, %7843 ], [ %7560, %7652 ], [ %8115, %8081 ]
  %7694 = phi float [ %7561, %7843 ], [ %7561, %7652 ], [ %8116, %8081 ]
  %7695 = phi float [ %7562, %7843 ], [ %7562, %7652 ], [ %8117, %8081 ]
  %7696 = icmp eq i32 %7556, %7566
  br i1 %7696, label %8124, label %7555

; <label>:7697                                    ; preds = %7652
  %7698 = icmp eq i32 %7614, 255
  br i1 %7698, label %7843, label %7699, !dx.controlflow.hints !134

; <label>:7699                                    ; preds = %7697
  %7700 = mul nuw nsw i32 %7614, 176
  %7701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7700, i32 undef)  ; BufferLoad(srv,index,wot)
  %7702 = extractvalue %dx.types.ResRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.ResRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.ResRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.ResRet.f32 %7701, 3
  %7706 = add nuw nsw i32 %7700, 16
  %7707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7706, i32 undef)  ; BufferLoad(srv,index,wot)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.ResRet.f32 %7707, 1
  %7710 = add nuw nsw i32 %7700, 32
  %7711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7710, i32 undef)  ; BufferLoad(srv,index,wot)
  %7712 = extractvalue %dx.types.ResRet.f32 %7711, 0
  %7713 = extractvalue %dx.types.ResRet.f32 %7711, 1
  %7714 = extractvalue %dx.types.ResRet.f32 %7711, 2
  %7715 = add nuw nsw i32 %7700, 48
  %7716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7715, i32 undef)  ; BufferLoad(srv,index,wot)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = extractvalue %dx.types.ResRet.f32 %7716, 1
  %7719 = extractvalue %dx.types.ResRet.f32 %7716, 2
  %7720 = extractvalue %dx.types.ResRet.f32 %7716, 3
  %7721 = add nuw nsw i32 %7700, 64
  %7722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7721, i32 undef)  ; BufferLoad(srv,index,wot)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 0
  %7724 = extractvalue %dx.types.ResRet.f32 %7722, 1
  %7725 = extractvalue %dx.types.ResRet.f32 %7722, 2
  %7726 = extractvalue %dx.types.ResRet.f32 %7722, 3
  %7727 = add nuw nsw i32 %7700, 80
  %7728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7727, i32 undef)  ; BufferLoad(srv,index,wot)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = extractvalue %dx.types.ResRet.f32 %7728, 1
  %7731 = extractvalue %dx.types.ResRet.f32 %7728, 2
  %7732 = extractvalue %dx.types.ResRet.f32 %7728, 3
  %7733 = add nuw nsw i32 %7700, 96
  %7734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7733, i32 undef)  ; BufferLoad(srv,index,wot)
  %7735 = extractvalue %dx.types.ResRet.f32 %7734, 0
  %7736 = extractvalue %dx.types.ResRet.f32 %7734, 1
  %7737 = extractvalue %dx.types.ResRet.f32 %7734, 2
  %7738 = extractvalue %dx.types.ResRet.f32 %7734, 3
  %7739 = bitcast float %7709 to i32
  %7740 = fmul fast float %7714, %121
  %7741 = fmul fast float %7714, %122
  %7742 = fmul fast float %7714, %123
  %7743 = fadd fast float %7740, %201
  %7744 = fadd fast float %7741, %202
  %7745 = fadd fast float %7742, %203
  %7746 = fmul fast float %7743, %7717
  %7747 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7723, float %7746)  ; FMad(a,b,c)
  %7748 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7729, float %7747)  ; FMad(a,b,c)
  %7749 = fadd fast float %7748, %7735
  %7750 = fmul fast float %7743, %7718
  %7751 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7724, float %7750)  ; FMad(a,b,c)
  %7752 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7730, float %7751)  ; FMad(a,b,c)
  %7753 = fadd fast float %7752, %7736
  %7754 = fmul fast float %7743, %7719
  %7755 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7725, float %7754)  ; FMad(a,b,c)
  %7756 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7731, float %7755)  ; FMad(a,b,c)
  %7757 = fadd fast float %7756, %7737
  %7758 = fmul fast float %7743, %7720
  %7759 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7726, float %7758)  ; FMad(a,b,c)
  %7760 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7732, float %7759)  ; FMad(a,b,c)
  %7761 = fadd fast float %7760, %7738
  %7762 = fdiv fast float %7749, %7761
  %7763 = fdiv fast float %7753, %7761
  %7764 = fdiv fast float %7757, %7761
  %7765 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7764)  ; FMax(a,b)
  %7766 = fmul fast float %271, 0x401921FB60000000
  %7767 = call float @dx.op.unary.f32(i32 13, float %7766)  ; Sin(value)
  %7768 = call float @dx.op.unary.f32(i32 12, float %7766)  ; Cos(value)
  %7769 = fmul fast float %7768, %7713
  %7770 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7713, float 0.000000e+00)  ; FMad(a,b,c)
  %7771 = fmul fast float %7713, %7767
  %7772 = fsub fast float -0.000000e+00, %7771
  %7773 = call float @dx.op.tertiary.f32(i32 46, float %7768, float %7713, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7774

; <label>:7774                                    ; preds = %7774, %7699
  %7775 = phi float [ 0.000000e+00, %7699 ], [ %7807, %7774 ]
  %7776 = phi float [ 0.000000e+00, %7699 ], [ %7809, %7774 ]
  %7777 = phi i32 [ 0, %7699 ], [ %7810, %7774 ]
  %7778 = mul i32 %7777, 2
  %7779 = add i32 0, %7778
  %7780 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7779
  %7781 = load float, float* %7780, align 4
  %7782 = mul i32 %7777, 2
  %7783 = add i32 1, %7782
  %7784 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7783
  %7785 = load float, float* %7784, align 4
  %7786 = fmul fast float %7769, %7781
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7772, float %7786)  ; FMad(a,b,c)
  %7788 = fmul fast float %7781, %7770
  %7789 = call float @dx.op.tertiary.f32(i32 46, float %7785, float %7773, float %7788)  ; FMad(a,b,c)
  %7790 = fadd fast float %7787, %7762
  %7791 = fadd fast float %7789, %7763
  %7792 = fmul fast float %7790, %7708
  %7793 = fmul fast float %7791, %7708
  %7794 = call float @dx.op.binary.f32(i32 35, float %7792, float %7704)  ; FMax(a,b)
  %7795 = call float @dx.op.binary.f32(i32 35, float %7793, float %7704)  ; FMax(a,b)
  %7796 = call float @dx.op.binary.f32(i32 36, float %7794, float %7705)  ; FMin(a,b)
  %7797 = call float @dx.op.binary.f32(i32 36, float %7795, float %7705)  ; FMin(a,b)
  %7798 = fadd fast float %7796, %7702
  %7799 = fadd fast float %7797, %7703
  %7800 = uitofp i32 %7739 to float
  %7801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7798, float %7799, float %7800, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = fsub fast float %7802, %7765
  %7804 = fsub fast float %7803, %7712
  %7805 = fcmp fast ogt float %7804, 0.000000e+00
  %7806 = select i1 %7805, float 1.000000e+00, float 0.000000e+00
  %7807 = fadd fast float %7806, %7775
  %7808 = select i1 %7805, float %7804, float 0.000000e+00
  %7809 = fadd fast float %7808, %7776
  %7810 = add nuw nsw i32 %7777, 1
  %7811 = icmp eq i32 %7810, 8
  br i1 %7811, label %7812, label %7774

; <label>:7812                                    ; preds = %7774
  %7813 = fdiv fast float 1.000000e+00, %7807
  %7814 = fmul fast float %7813, %7809
  %7815 = fdiv fast float 1.000000e+00, %7765
  %7816 = fmul fast float %7814, %7815
  %7817 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7818 = call float @dx.op.binary.f32(i32 35, float %7817, float 0.000000e+00)  ; FMax(a,b)
  %7819 = fmul fast float %7807, 1.250000e-01
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = fmul fast float %7820, 2.000000e+00
  %7822 = fadd fast float %7821, -1.000000e+00
  %7823 = fcmp fast ogt float %7822, 0.000000e+00
  %7824 = fcmp fast olt float %7822, 0.000000e+00
  %7825 = zext i1 %7823 to i32
  %7826 = zext i1 %7824 to i32
  %7827 = sub nsw i32 %7825, %7826
  %7828 = sitofp i32 %7827 to float
  %7829 = fmul fast float %7828, %7822
  %7830 = fsub fast float 1.000000e+00, %7829
  %7831 = fmul fast float %7830, %7830
  %7832 = fmul fast float %7831, %7830
  %7833 = fsub fast float %7830, %7832
  %7834 = fmul fast float %7833, %7818
  %7835 = fsub fast float 1.000000e+00, %7832
  %7836 = fsub fast float %7835, %7834
  %7837 = fmul fast float %7828, 5.000000e-01
  %7838 = fmul fast float %7837, %7836
  %7839 = fsub fast float -5.000000e-01, %7838
  %7840 = fmul fast float %7839, %7673
  %7841 = fadd fast float %7840, 1.000000e+00
  %7842 = fmul fast float %7841, %7685
  br label %7843

; <label>:7843                                    ; preds = %7812, %7697
  %7844 = phi float [ %7842, %7812 ], [ %7685, %7697 ]
  %7845 = call float @dx.op.binary.f32(i32 36, float %7844, float %7844)  ; FMin(a,b)
  %7846 = call float @dx.op.binary.f32(i32 36, float %7844, float %7845)  ; FMin(a,b)
  %7847 = fcmp fast ogt float %7846, 0.000000e+00
  br i1 %7847, label %7848, label %7689, !dx.controlflow.hints !135

; <label>:7848                                    ; preds = %7843
  %7849 = fmul fast float %7844, %7607
  %7850 = fmul fast float %7844, %7608
  %7851 = fmul fast float %7844, %7609
  %7852 = fsub fast float %7591, %4239
  %7853 = fcmp fast ogt float %7852, 0.000000e+00
  %7854 = fsub fast float %203, %4239
  %7855 = fcmp fast ogt float %7854, 0.000000e+00
  %7856 = xor i1 %7855, %7853
  %7857 = fsub fast float %4239, %7591
  %7858 = fmul fast float %7857, 2.000000e+00
  %7859 = fadd fast float %7858, %7591
  %7860 = select i1 %7856, float %7591, float %7859
  %7861 = fsub fast float %7860, %203
  %7862 = call float @dx.op.dot3.f32(i32 55, float %7617, float %7618, float %7861, float %7617, float %7618, float %7861)  ; Dot3(ax,ay,az,bx,by,bz)
  %7863 = call float @dx.op.unary.f32(i32 25, float %7862)  ; Rsqrt(value)
  %7864 = fmul fast float %7863, %7617
  %7865 = fmul fast float %7863, %7618
  %7866 = fmul fast float %7863, %7861
  %7867 = fsub fast float %4239, %203
  %7868 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7867)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7864, float %7865, float %7866)  ; Dot3(ax,ay,az,bx,by,bz)
  %7870 = fdiv fast float 1.000000e+00, %7869
  %7871 = fmul fast float %7870, %7868
  %7872 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7854, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7873 = fcmp fast ogt float %7872, 0.000000e+00
  %7874 = fcmp fast olt float %7872, 0.000000e+00
  %7875 = zext i1 %7873 to i32
  %7876 = zext i1 %7874 to i32
  %7877 = sub nsw i32 %7875, %7876
  %7878 = sitofp i32 %7877 to float
  %7879 = fsub fast float %7860, %4239
  %7880 = call float @dx.op.dot3.f32(i32 55, float %7617, float %7618, float %7879, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7881 = fcmp fast ogt float %7880, 0.000000e+00
  %7882 = fcmp fast olt float %7880, 0.000000e+00
  %7883 = zext i1 %7881 to i32
  %7884 = zext i1 %7882 to i32
  %7885 = sub nsw i32 %7883, %7884
  %7886 = sitofp i32 %7885 to float
  %7887 = fcmp fast une float %7878, %7886
  br i1 %7887, label %7888, label %7898

; <label>:7888                                    ; preds = %7848
  %7889 = fmul fast float %7871, %7866
  %7890 = fmul fast float %7871, %7865
  %7891 = fmul fast float %7871, %7864
  %7892 = fmul fast float %7891, %7891
  %7893 = fmul fast float %7890, %7890
  %7894 = fadd fast float %7892, %7893
  %7895 = fmul fast float %7889, %7889
  %7896 = fadd fast float %7894, %7895
  %7897 = call float @dx.op.unary.f32(i32 24, float %7896)  ; Sqrt(value)
  br label %7910

; <label>:7898                                    ; preds = %7848
  %7899 = icmp slt i32 %7877, 0
  br i1 %7899, label %7900, label %7910

; <label>:7900                                    ; preds = %7898
  %7901 = fsub fast float %201, %7589
  %7902 = fsub fast float %202, %7590
  %7903 = fsub fast float %203, %7860
  %7904 = fmul fast float %7901, %7901
  %7905 = fmul fast float %7902, %7902
  %7906 = fadd fast float %7904, %7905
  %7907 = fmul fast float %7903, %7903
  %7908 = fadd fast float %7906, %7907
  %7909 = call float @dx.op.unary.f32(i32 24, float %7908)  ; Sqrt(value)
  br label %7910

; <label>:7910                                    ; preds = %7900, %7898, %7888
  %7911 = phi float [ %7897, %7888 ], [ %7909, %7900 ], [ 0.000000e+00, %7898 ]
  %7912 = and i1 %7855, %7853
  %7913 = fsub fast float -0.000000e+00, %7911
  %7914 = select i1 %7912, float -0.000000e+00, float %7913
  %7915 = fmul fast float %4236, 0x3FF7154760000000
  %7916 = fmul fast float %7915, %7914
  %7917 = fmul fast float %4237, 0x3FF7154760000000
  %7918 = fmul fast float %7917, %7914
  %7919 = fmul fast float %4238, 0x3FF7154760000000
  %7920 = fmul fast float %7919, %7914
  %7921 = call float @dx.op.unary.f32(i32 21, float %7916)  ; Exp(value)
  %7922 = call float @dx.op.unary.f32(i32 21, float %7918)  ; Exp(value)
  %7923 = call float @dx.op.unary.f32(i32 21, float %7920)  ; Exp(value)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  %7925 = call float @dx.op.unary.f32(i32 7, float %7922)  ; Saturate(value)
  %7926 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7927 = fmul fast float %7849, %7924
  %7928 = fmul fast float %7850, %7925
  %7929 = fmul fast float %7851, %7926
  %7930 = fsub fast float %7623, %5028
  %7931 = fsub fast float %7624, %5027
  %7932 = fsub fast float %7625, %5026
  %7933 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %7932, float %7930, float %7931, float %7932)  ; Dot3(ax,ay,az,bx,by,bz)
  %7934 = call float @dx.op.unary.f32(i32 25, float %7933)  ; Rsqrt(value)
  %7935 = fmul fast float %7934, %7930
  %7936 = fmul fast float %7934, %7931
  %7937 = fmul fast float %7934, %7932
  %7938 = call float @dx.op.dot3.f32(i32 55, float %7623, float %7624, float %7625, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %7939 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5024, float %5023, float %7935, float %7936, float %7937)  ; Dot3(ax,ay,az,bx,by,bz)
  %7940 = call float @dx.op.unary.f32(i32 7, float %7938)  ; Saturate(value)
  %7941 = fmul fast float %7940, %7630
  %7942 = fmul fast float %7940, %7940
  %7943 = fmul fast float %7942, %5068
  %7944 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7945 = fmul fast float %7941, %7944
  %7946 = bitcast float %7620 to i32
  %7947 = ashr i32 %7946, 1
  %7948 = sub nsw i32 1597463007, %7947
  %7949 = bitcast i32 %7948 to float
  %7950 = fmul fast float %7949, %7617
  %7951 = fmul fast float %7949, %7618
  %7952 = fmul fast float %7949, %7619
  %7953 = fsub fast float %7950, %5028
  %7954 = fsub fast float %7951, %5027
  %7955 = fsub fast float %7952, %5026
  %7956 = call float @dx.op.dot3.f32(i32 55, float %7953, float %7954, float %7955, float %7953, float %7954, float %7955)  ; Dot3(ax,ay,az,bx,by,bz)
  %7957 = call float @dx.op.unary.f32(i32 25, float %7956)  ; Rsqrt(value)
  %7958 = fmul fast float %7953, %7957
  %7959 = fmul fast float %7954, %7957
  %7960 = fmul fast float %7955, %7957
  %7961 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %7958, float %7959, float %7960)  ; Dot3(ax,ay,az,bx,by,bz)
  %7962 = fmul fast float %7961, %7961
  %7963 = call float @dx.op.unary.f32(i32 6, float %7938)  ; FAbs(value)
  %7964 = fsub fast float 1.000000e+00, %5061
  %7965 = fmul fast float %5043, %5043
  %7966 = fmul fast float %7965, %7964
  %7967 = fadd fast float %7966, %5061
  %7968 = bitcast float %7967 to i32
  %7969 = ashr i32 %7968, 1
  %7970 = add nsw i32 %7969, 532487669
  %7971 = bitcast i32 %7970 to float
  %7972 = fadd fast float %7971, %5043
  %7973 = fmul fast float %5061, %7962
  %7974 = fsub fast float 1.000000e+00, %7962
  %7975 = fadd fast float %7974, %7973
  %7976 = fmul fast float %7963, %7963
  %7977 = fmul fast float %7976, %7964
  %7978 = fadd fast float %7977, %5061
  %7979 = bitcast float %7978 to i32
  %7980 = ashr i32 %7979, 1
  %7981 = add nsw i32 %7980, 532487669
  %7982 = bitcast i32 %7981 to float
  %7983 = fadd fast float %7982, %7963
  %7984 = fmul fast float %7975, %7975
  %7985 = fmul fast float %7984, %7972
  %7986 = fmul fast float %7985, %7983
  %7987 = fdiv fast float 1.000000e+00, %7986
  %7988 = bitcast float %5061 to i32
  %7989 = sitofp i32 %7988 to float
  %7990 = fmul fast float %7989, 0x3FE7F73180000000
  %7991 = fadd fast float %7990, 0x41AFE27C40000000
  %7992 = fptosi float %7991 to i32
  %7993 = bitcast i32 %7992 to float
  %7994 = fmul fast float %7586, 0x3FD80E9D60000000
  %7995 = fmul fast float %7994, %7949
  %7996 = fadd fast float %7993, %7995
  %7997 = bitcast float %7996 to i32
  %7998 = sub nsw i32 2129859010, %7997
  %7999 = bitcast i32 %7998 to float
  %8000 = fmul fast float %5061, %7987
  %8001 = fmul fast float %8000, %7993
  %8002 = fmul fast float %8001, %7999
  %8003 = call float @dx.op.unary.f32(i32 6, float %7939)  ; FAbs(value)
  %8004 = fsub fast float 1.000000e+00, %8003
  %8005 = bitcast float %8004 to i32
  %8006 = sitofp i32 %8005 to float
  %8007 = fmul fast float %8006, 5.000000e+00
  %8008 = fadd fast float %8007, 0xC1EFBF8940000000
  %8009 = fptosi float %8008 to i32
  %8010 = bitcast i32 %8009 to float
  %8011 = fsub fast float 1.000000e+00, %5035
  %8012 = fsub fast float 1.000000e+00, %5036
  %8013 = fsub fast float 1.000000e+00, %5041
  %8014 = fmul fast float %8010, %8011
  %8015 = fmul fast float %8010, %8012
  %8016 = fmul fast float %8010, %8013
  %8017 = fadd fast float %8014, %5035
  %8018 = fadd fast float %8015, %5036
  %8019 = fadd fast float %8016, %5041
  br i1 %5180, label %8020, label %8043

; <label>:8020                                    ; preds = %7910
  %8021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3835, float %8003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = fadd fast float %8022, -5.000000e-01
  %8026 = fadd fast float %8023, -5.000000e-01
  %8027 = fadd fast float %8024, -5.000000e-01
  %8028 = fmul fast float %5035, 4.000000e+00
  %8029 = fmul fast float %8028, %8011
  %8030 = fmul fast float %8029, %8025
  %8031 = fmul fast float %5036, 4.000000e+00
  %8032 = fmul fast float %8031, %8012
  %8033 = fmul fast float %8032, %8026
  %8034 = fmul fast float %5041, 4.000000e+00
  %8035 = fmul fast float %8034, %8013
  %8036 = fmul fast float %8035, %8027
  %8037 = fadd fast float %8030, %8017
  %8038 = fadd fast float %8033, %8018
  %8039 = fadd fast float %8036, %8019
  %8040 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  br label %8043

; <label>:8043                                    ; preds = %8020, %7910
  %8044 = phi float [ %8040, %8020 ], [ %8017, %7910 ]
  %8045 = phi float [ %8041, %8020 ], [ %8018, %7910 ]
  %8046 = phi float [ %8042, %8020 ], [ %8019, %7910 ]
  %8047 = fmul fast float %7938, 9.843750e-01
  %8048 = fadd fast float %8047, 7.812500e-03
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8048, float %5170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 2
  %8051 = extractvalue %dx.types.ResRet.f32 %8049, 3
  %8052 = fmul fast float %8050, %5035
  %8053 = fmul fast float %8050, %5036
  %8054 = fmul fast float %8050, %5041
  %8055 = fadd fast float %8052, %8051
  %8056 = fadd fast float %8053, %8051
  %8057 = fadd fast float %8054, %8051
  br i1 %5180, label %8058, label %8081

; <label>:8058                                    ; preds = %8043
  %8059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3835, float %7938, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.ResRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.ResRet.f32 %8059, 2
  %8063 = fadd fast float %8060, -5.000000e-01
  %8064 = fadd fast float %8061, -5.000000e-01
  %8065 = fadd fast float %8062, -5.000000e-01
  %8066 = fmul fast float %5035, 4.000000e+00
  %8067 = fmul fast float %8066, %8011
  %8068 = fmul fast float %8067, %8063
  %8069 = fmul fast float %5036, 4.000000e+00
  %8070 = fmul fast float %8069, %8012
  %8071 = fmul fast float %8070, %8064
  %8072 = fmul fast float %5041, 4.000000e+00
  %8073 = fmul fast float %8072, %8013
  %8074 = fmul fast float %8073, %8065
  %8075 = fadd fast float %8068, %8055
  %8076 = fadd fast float %8071, %8056
  %8077 = fadd fast float %8074, %8057
  %8078 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8079 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8080 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  br label %8081

; <label>:8081                                    ; preds = %8058, %8043
  %8082 = phi float [ %8078, %8058 ], [ %8055, %8043 ]
  %8083 = phi float [ %8079, %8058 ], [ %8056, %8043 ]
  %8084 = phi float [ %8080, %8058 ], [ %8057, %8043 ]
  %8085 = call float @dx.op.binary.f32(i32 35, float %8083, float %8084)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8082, float %8085)  ; FMax(a,b)
  %8087 = fsub fast float 1.000000e+00, %8086
  %8088 = fmul fast float %8044, %8002
  %8089 = fmul fast float %8045, %8002
  %8090 = fmul fast float %8046, %8002
  %8091 = fsub fast float 1.000000e+00, %7939
  %8092 = bitcast float %8091 to i32
  %8093 = sitofp i32 %8092 to float
  %8094 = fmul fast float %8093, 5.000000e+00
  %8095 = fadd fast float %8094, 0xC1EFBF8940000000
  %8096 = fptosi float %8095 to i32
  %8097 = bitcast i32 %8096 to float
  %8098 = fmul fast float %8097, %3836
  %8099 = fmul fast float %8087, %8098
  %8100 = fmul fast float %8099, %5722
  %8101 = fmul fast float %8099, %5723
  %8102 = fmul fast float %8099, %5724
  %8103 = fadd fast float %8100, %8088
  %8104 = fadd fast float %8101, %8089
  %8105 = fadd fast float %8102, %8090
  %8106 = fmul fast float %7927, %3832
  %8107 = fmul fast float %8106, %7945
  %8108 = fmul fast float %8107, %8087
  %8109 = fmul fast float %7928, %3832
  %8110 = fmul fast float %8109, %7945
  %8111 = fmul fast float %8110, %8087
  %8112 = fmul fast float %7929, %3832
  %8113 = fmul fast float %8112, %7945
  %8114 = fmul fast float %8113, %8087
  %8115 = fadd fast float %8108, %7560
  %8116 = fadd fast float %8111, %7561
  %8117 = fadd fast float %8114, %7562
  %8118 = fmul fast float %8107, %8103
  %8119 = fmul fast float %8110, %8104
  %8120 = fmul fast float %8113, %8105
  %8121 = fadd fast float %8118, %7557
  %8122 = fadd fast float %8119, %7558
  %8123 = fadd fast float %8120, %7559
  br label %7689

; <label>:8124                                    ; preds = %7689
  br label %8125

; <label>:8125                                    ; preds = %8124, %7523
  %8126 = phi float [ %7525, %7523 ], [ %7690, %8124 ]
  %8127 = phi float [ %7526, %7523 ], [ %7691, %8124 ]
  %8128 = phi float [ %7527, %7523 ], [ %7692, %8124 ]
  %8129 = phi float [ %7528, %7523 ], [ %7693, %8124 ]
  %8130 = phi float [ %7529, %7523 ], [ %7694, %8124 ]
  %8131 = phi float [ %7530, %7523 ], [ %7695, %8124 ]
  %8132 = add i32 %7524, 1
  %8133 = icmp ugt i32 %8132, %7520
  br i1 %8133, label %8134, label %7523

; <label>:8134                                    ; preds = %8125
  br label %8135

; <label>:8135                                    ; preds = %8134, %7473, %7463
  %8136 = phi float [ %7464, %7463 ], [ %7464, %7473 ], [ %8126, %8134 ]
  %8137 = phi float [ %7465, %7463 ], [ %7465, %7473 ], [ %8127, %8134 ]
  %8138 = phi float [ %7466, %7463 ], [ %7466, %7473 ], [ %8128, %8134 ]
  %8139 = phi float [ %7467, %7463 ], [ %7467, %7473 ], [ %8129, %8134 ]
  %8140 = phi float [ %7468, %7463 ], [ %7468, %7473 ], [ %8130, %8134 ]
  %8141 = phi float [ %7469, %7463 ], [ %7469, %7473 ], [ %8131, %8134 ]
  %8142 = fmul fast float %3832, %3832
  %8143 = fsub fast float 1.000000e+00, %8142
  %8144 = call float @dx.op.dot3.f32(i32 55, float %8143, float %8143, float %8143, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8145 = fsub fast float 1.000000e+00, %8144
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8148 = fmul fast float %8147, %5728
  %8149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8150 = extractvalue %dx.types.CBufRet.f32 %8149, 3
  %8151 = fsub fast float 1.000000e+00, %3839
  %8152 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8153 = fadd fast float %8141, %3838
  %8154 = fmul fast float %8153, %3839
  %8155 = fmul fast float %8152, %8150
  %8156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8156, 3
  %8158 = fmul fast float %8139, %5029
  %8159 = fmul fast float %8140, %5030
  %8160 = fmul fast float %8141, %5031
  %8161 = fcmp fast ogt float %101, %223
  %8162 = and i1 %8161, %4242
  %8163 = or i1 %4248, %8162
  %8164 = icmp eq i32 %4241, 2
  %8165 = fcmp fast ole float %101, %223
  %8166 = and i1 %8165, %8164
  %8167 = or i1 %8166, %8163
  br i1 %8162, label %8168, label %8425

; <label>:8168                                    ; preds = %8135
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 2
  %8171 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8172 = fmul fast float %8170, %114
  %8173 = fmul fast float %8171, %115
  %8174 = call float @dx.op.unary.f32(i32 7, float %8172)  ; Saturate(value)
  %8175 = call float @dx.op.unary.f32(i32 7, float %8173)  ; Saturate(value)
  %8176 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8174, float %8175, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8177 = extractvalue %dx.types.ResRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.ResRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.ResRet.f32 %8176, 2
  %8180 = extractvalue %dx.types.ResRet.f32 %8176, 3
  %8181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8174, float %8175, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  %8185 = extractvalue %dx.types.ResRet.f32 %8181, 3
  %8186 = call float @dx.op.binary.f32(i32 35, float %8178, float %8179)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8177, float %8186)  ; FMax(a,b)
  %8188 = call float @dx.op.binary.f32(i32 35, float %8187, float %8180)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8183, float %8184)  ; FMin(a,b)
  %8190 = call float @dx.op.binary.f32(i32 36, float %8182, float %8189)  ; FMin(a,b)
  %8191 = call float @dx.op.binary.f32(i32 36, float %8190, float %8185)  ; FMin(a,b)
  %8192 = fmul fast float %8188, 2.550000e+02
  %8193 = fadd fast float %8192, 0x3F70101020000000
  %8194 = fptoui float %8193 to i32
  %8195 = fmul fast float %8191, 2.550000e+02
  %8196 = fadd fast float %8195, 0x3F70101020000000
  %8197 = fptoui float %8196 to i32
  %8198 = icmp ult i32 %8194, %8197
  br i1 %8198, label %8199, label %8367

; <label>:8199                                    ; preds = %8168
  %8200 = fcmp fast ogt float %100, 9.843750e-01
  %8201 = fadd fast float %101, -4.000000e+00
  %8202 = select i1 %8200, float -4.000000e+00, float %8201
  %8203 = call float @dx.op.binary.f32(i32 35, float %8202, float 0.000000e+00)  ; FMax(a,b)
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = fadd fast float %8205, %8203
  %8207 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8208 = fmul fast float %8206, %8207
  %8209 = call float @dx.op.unary.f32(i32 23, float %8208)  ; Log(value)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8204, 3
  %8211 = fmul fast float %8210, %8209
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 2
  %8214 = fmul fast float %8211, %8213
  %8215 = call float @dx.op.unary.f32(i32 7, float %8214)  ; Saturate(value)
  %8216 = uitofp i32 %8194 to float
  %8217 = uitofp i32 %8197 to float
  %8218 = fadd fast float %8216, 5.000000e-01
  %8219 = fadd fast float %8217, 5.000000e-01
  %8220 = fmul fast float %8213, %8218
  %8221 = fmul fast float %8213, %8219
  %8222 = fadd fast float %8220, 0x3F0FFB4800000000
  %8223 = fadd fast float %8221, 0xBF0FFB4800000000
  %8224 = call float @dx.op.binary.f32(i32 35, float %8215, float %8222)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8224, float %8223)  ; FMin(a,b)
  %8226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8227 = extractvalue %dx.types.CBufRet.f32 %8226, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8226, 2
  %8229 = extractvalue %dx.types.CBufRet.f32 %8226, 0
  %8230 = fmul fast float %8227, %8225
  %8231 = fadd fast float %8229, %8230
  %8232 = fadd fast float %8229, %8228
  %8233 = fsub fast float %8227, %8228
  %8234 = fadd fast float %8233, %8229
  %8235 = call float @dx.op.binary.f32(i32 35, float %8231, float %8232)  ; FMax(a,b)
  %8236 = call float @dx.op.binary.f32(i32 36, float %8235, float %8234)  ; FMin(a,b)
  %8237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8174, float %8175, float %8236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8238 = extractvalue %dx.types.ResRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.ResRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.ResRet.f32 %8237, 2
  %8241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.i32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.i32 %8241, 1
  %8244 = uitofp i32 %8242 to float
  %8245 = uitofp i32 %8243 to float
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.CBufRet.f32 %8246, 1
  %8249 = fmul fast float %8244, %8174
  %8250 = fmul fast float %8245, %8175
  %8251 = fadd fast float %8249, -5.000000e-01
  %8252 = fadd fast float %8250, -5.000000e-01
  %8253 = call float @dx.op.unary.f32(i32 22, float %8251)  ; Frc(value)
  %8254 = call float @dx.op.unary.f32(i32 22, float %8252)  ; Frc(value)
  %8255 = fmul fast float %8253, %8253
  %8256 = fmul fast float %8255, %8253
  %8257 = fsub fast float 3.000000e+00, %8253
  %8258 = fmul fast float %8255, %8257
  %8259 = fmul fast float %8253, 3.000000e+00
  %8260 = fmul fast float %8256, 3.000000e+00
  %8261 = fmul fast float %8255, 6.000000e+00
  %8262 = fsub fast float %8260, %8261
  %8263 = fadd fast float %8262, 4.000000e+00
  %8264 = fmul fast float %8263, 0x3FC5555560000000
  %8265 = fmul fast float %8256, -3.000000e+00
  %8266 = fadd fast float %8255, %8253
  %8267 = fmul fast float %8266, 3.000000e+00
  %8268 = fadd fast float %8265, 1.000000e+00
  %8269 = fadd fast float %8268, %8267
  %8270 = fmul fast float %8256, 0x3FC5555560000000
  %8271 = fmul fast float %8254, %8254
  %8272 = fmul fast float %8271, %8254
  %8273 = fsub fast float 3.000000e+00, %8254
  %8274 = fmul fast float %8271, %8273
  %8275 = fmul fast float %8254, 3.000000e+00
  %8276 = fmul fast float %8272, 3.000000e+00
  %8277 = fmul fast float %8271, 6.000000e+00
  %8278 = fsub fast float %8276, %8277
  %8279 = fadd fast float %8278, 4.000000e+00
  %8280 = fmul fast float %8279, 0x3FC5555560000000
  %8281 = fmul fast float %8272, -3.000000e+00
  %8282 = fadd fast float %8271, %8254
  %8283 = fmul fast float %8282, 3.000000e+00
  %8284 = fadd fast float %8281, 1.000000e+00
  %8285 = fadd fast float %8284, %8283
  %8286 = fmul fast float %8272, 0x3FC5555560000000
  %8287 = fadd fast float %8253, 1.000000e+00
  %8288 = fsub fast float 1.000000e+00, %8259
  %8289 = fadd fast float %8288, %8258
  %8290 = fadd fast float %8289, %8263
  %8291 = fmul fast float %8290, 0x3FC5555560000000
  %8292 = fdiv fast float %8264, %8291
  %8293 = fsub fast float %8287, %8292
  %8294 = fsub fast float 1.000000e+00, %8253
  %8295 = fadd fast float %8269, %8256
  %8296 = fmul fast float %8295, 0x3FC5555560000000
  %8297 = fdiv fast float %8270, %8296
  %8298 = fadd fast float %8294, %8297
  %8299 = fadd fast float %8254, 1.000000e+00
  %8300 = fsub fast float 1.000000e+00, %8275
  %8301 = fadd fast float %8300, %8274
  %8302 = fadd fast float %8301, %8279
  %8303 = fmul fast float %8302, 0x3FC5555560000000
  %8304 = fdiv fast float %8280, %8303
  %8305 = fsub fast float %8299, %8304
  %8306 = fsub fast float 1.000000e+00, %8254
  %8307 = fadd fast float %8285, %8272
  %8308 = fmul fast float %8307, 0x3FC5555560000000
  %8309 = fdiv fast float %8286, %8308
  %8310 = fadd fast float %8309, %8306
  %8311 = fmul fast float %8293, %8247
  %8312 = fsub fast float %8174, %8311
  %8313 = fmul fast float %8298, %8247
  %8314 = fadd fast float %8313, %8174
  %8315 = fmul fast float %8310, %8248
  %8316 = fadd fast float %8315, %8175
  %8317 = fmul fast float %8305, %8248
  %8318 = fsub fast float %8175, %8317
  %8319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8312, float %8318, float %8236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8320 = extractvalue %dx.types.ResRet.f32 %8319, 0
  %8321 = extractvalue %dx.types.ResRet.f32 %8319, 1
  %8322 = extractvalue %dx.types.ResRet.f32 %8319, 2
  %8323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8314, float %8318, float %8236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8324 = extractvalue %dx.types.ResRet.f32 %8323, 0
  %8325 = extractvalue %dx.types.ResRet.f32 %8323, 1
  %8326 = extractvalue %dx.types.ResRet.f32 %8323, 2
  %8327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8312, float %8316, float %8236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8328 = extractvalue %dx.types.ResRet.f32 %8327, 0
  %8329 = extractvalue %dx.types.ResRet.f32 %8327, 1
  %8330 = extractvalue %dx.types.ResRet.f32 %8327, 2
  %8331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8314, float %8316, float %8236, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8332 = extractvalue %dx.types.ResRet.f32 %8331, 0
  %8333 = extractvalue %dx.types.ResRet.f32 %8331, 1
  %8334 = extractvalue %dx.types.ResRet.f32 %8331, 2
  %8335 = fsub fast float %8328, %8320
  %8336 = fsub fast float %8329, %8321
  %8337 = fsub fast float %8330, %8322
  %8338 = fmul fast float %8335, %8308
  %8339 = fmul fast float %8336, %8308
  %8340 = fmul fast float %8337, %8308
  %8341 = fadd fast float %8338, %8320
  %8342 = fadd fast float %8339, %8321
  %8343 = fadd fast float %8340, %8322
  %8344 = fsub fast float %8332, %8324
  %8345 = fsub fast float %8333, %8325
  %8346 = fsub fast float %8334, %8326
  %8347 = fmul fast float %8344, %8308
  %8348 = fmul fast float %8345, %8308
  %8349 = fmul fast float %8346, %8308
  %8350 = fsub fast float %8324, %8341
  %8351 = fadd fast float %8350, %8347
  %8352 = fsub fast float %8325, %8342
  %8353 = fadd fast float %8352, %8348
  %8354 = fsub fast float %8326, %8343
  %8355 = fadd fast float %8354, %8349
  %8356 = fmul fast float %8351, %8296
  %8357 = fmul fast float %8353, %8296
  %8358 = fmul fast float %8355, %8296
  %8359 = fadd fast float %8356, %8341
  %8360 = fadd fast float %8357, %8342
  %8361 = fadd fast float %8358, %8343
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8364 = fmul fast float %8359, %8363
  %8365 = fmul fast float %8360, %8363
  %8366 = fmul fast float %8361, %8363
  br label %8367

; <label>:8367                                    ; preds = %8199, %8168
  %8368 = phi float [ %8238, %8199 ], [ 1.000000e+00, %8168 ]
  %8369 = phi float [ %8239, %8199 ], [ 1.000000e+00, %8168 ]
  %8370 = phi float [ %8240, %8199 ], [ 1.000000e+00, %8168 ]
  %8371 = phi float [ %8364, %8199 ], [ 0.000000e+00, %8168 ]
  %8372 = phi float [ %8365, %8199 ], [ 0.000000e+00, %8168 ]
  %8373 = phi float [ %8366, %8199 ], [ 0.000000e+00, %8168 ]
  %8374 = fmul fast float %8371, %8145
  %8375 = fmul fast float %8372, %8145
  %8376 = fmul fast float %8373, %8145
  %8377 = call float @dx.op.dot3.f32(i32 55, float %8368, float %8369, float %8370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8378 = call float @dx.op.dot3.f32(i32 55, float %8374, float %8375, float %8376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8379 = select i1 %260, float %8377, float %8368
  %8380 = select i1 %260, float %8377, float %8369
  %8381 = select i1 %260, float 1.000000e+00, float %8370
  %8382 = select i1 %260, float %8378, float %8374
  %8383 = select i1 %260, float 0.000000e+00, float %8375
  %8384 = select i1 %260, float 0.000000e+00, float %8376
  %8385 = fmul fast float %8379, %8158
  %8386 = fmul fast float %8380, %8159
  %8387 = fmul fast float %8381, %8160
  %8388 = fadd fast float %8385, %8382
  %8389 = fadd fast float %8386, %8383
  %8390 = fadd fast float %8384, %8387
  %8391 = fmul fast float %8379, %8136
  %8392 = fmul fast float %8380, %8137
  %8393 = fmul fast float %8381, %8138
  %8394 = fmul fast float %150, %8170
  %8395 = fmul fast float %152, %8171
  %8396 = fsub fast float 1.000000e+00, %8394
  %8397 = fsub fast float 1.000000e+00, %8395
  %8398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8399 = extractvalue %dx.types.CBufRet.f32 %8398, 0
  %8400 = extractvalue %dx.types.CBufRet.f32 %8398, 1
  %8401 = extractvalue %dx.types.CBufRet.f32 %8398, 2
  %8402 = fmul fast float %8396, %8399
  %8403 = fmul fast float %8396, %8400
  %8404 = fmul fast float %8396, %8401
  %8405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8406 = extractvalue %dx.types.CBufRet.f32 %8405, 0
  %8407 = extractvalue %dx.types.CBufRet.f32 %8405, 1
  %8408 = extractvalue %dx.types.CBufRet.f32 %8405, 2
  %8409 = fmul fast float %8397, %8406
  %8410 = fmul fast float %8397, %8407
  %8411 = fmul fast float %8397, %8408
  %8412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.CBufRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.CBufRet.f32 %8412, 2
  %8416 = fadd fast float %8409, %8413
  %8417 = fadd fast float %8416, %8402
  %8418 = fadd fast float %8410, %8414
  %8419 = fadd fast float %8418, %8403
  %8420 = fadd fast float %8411, %8415
  %8421 = fadd fast float %8420, %8404
  %8422 = fmul fast float %8417, %223
  %8423 = fmul fast float %8419, %223
  %8424 = fmul fast float %8421, %223
  br label %8425

; <label>:8425                                    ; preds = %8367, %8135
  %8426 = phi float [ %8422, %8367 ], [ %201, %8135 ]
  %8427 = phi float [ %8423, %8367 ], [ %202, %8135 ]
  %8428 = phi float [ %8424, %8367 ], [ %203, %8135 ]
  %8429 = phi float [ %223, %8367 ], [ %101, %8135 ]
  %8430 = phi float [ %8388, %8367 ], [ %8158, %8135 ]
  %8431 = phi float [ %8389, %8367 ], [ %8159, %8135 ]
  %8432 = phi float [ %8390, %8367 ], [ %8160, %8135 ]
  %8433 = phi float [ %8391, %8367 ], [ %8136, %8135 ]
  %8434 = phi float [ %8392, %8367 ], [ %8137, %8135 ]
  %8435 = phi float [ %8393, %8367 ], [ %8138, %8135 ]
  %8436 = phi float [ %8368, %8367 ], [ 1.000000e+00, %8135 ]
  br i1 %8167, label %9591, label %8437

; <label>:8437                                    ; preds = %8425
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8442 = extractvalue %dx.types.CBufRet.f32 %8438, 3
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8445 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8446 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8447 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8451 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %8452 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8454 = extractvalue %dx.types.CBufRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.CBufRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.CBufRet.f32 %8453, 2
  %8457 = extractvalue %dx.types.CBufRet.f32 %8453, 3
  %8458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8459 = extractvalue %dx.types.CBufRet.f32 %8458, 3
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 3
  %8462 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8463 = extractvalue %dx.types.CBufRet.f32 %8460, 1
  %8464 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8465 = fcmp fast olt float %8464, -5.000000e-01
  %8466 = call float @dx.op.dot3.f32(i32 55, float %8426, float %8427, float %8428, float %8426, float %8427, float %8428)  ; Dot3(ax,ay,az,bx,by,bz)
  %8467 = call float @dx.op.unary.f32(i32 25, float %8466)  ; Rsqrt(value)
  %8468 = fmul fast float %8467, %8466
  %8469 = fmul fast float %8467, %8426
  %8470 = fmul fast float %8467, %8427
  %8471 = fmul fast float %8467, %8428
  %8472 = fadd fast float %8468, %8442
  %8473 = call float @dx.op.dot3.f32(i32 55, float %8469, float %8470, float %8471, float %8439, float %8440, float %8441)  ; Dot3(ax,ay,az,bx,by,bz)
  %8474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8475 = extractvalue %dx.types.CBufRet.i32 %8474, 1
  %8476 = and i32 %8475, 1
  %8477 = icmp ne i32 %8476, 0
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8480 = fcmp fast ogt float %8479, 0.000000e+00
  %8481 = and i1 %8477, %8480
  br i1 %8481, label %8482, label %8888, !dx.controlflow.hints !136

; <label>:8482                                    ; preds = %8437
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8489 = fsub fast float %8486, %8488
  %8490 = and i32 %8475, 2
  %8491 = extractvalue %dx.types.CBufRet.i32 %8474, 0
  %8492 = call i32 @dx.op.binary.i32(i32 40, i32 %8491, i32 3)  ; UMin(a,b)
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8497 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8498 = fsub fast float %8494, %8496
  %8499 = fsub fast float %8495, %8497
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 0
  %8502 = fcmp fast ogt float %8501, 0.000000e+00
  %8503 = fsub fast float -0.000000e+00, %8498
  %8504 = fsub fast float -0.000000e+00, %8499
  %8505 = call float @dx.op.dot2.f32(i32 54, float %8469, float %8470, float %8469, float %8470)  ; Dot2(ax,ay,bx,by)
  %8506 = call float @dx.op.dot2.f32(i32 54, float %8469, float %8470, float %8503, float %8504)  ; Dot2(ax,ay,bx,by)
  %8507 = fmul fast float %8506, 2.000000e+00
  %8508 = call float @dx.op.dot2.f32(i32 54, float %8503, float %8504, float %8503, float %8504)  ; Dot2(ax,ay,bx,by)
  %8509 = fmul fast float %8501, %8501
  %8510 = fsub fast float %8508, %8509
  %8511 = fmul fast float %8507, %8507
  %8512 = fmul fast float %8505, 4.000000e+00
  %8513 = fmul fast float %8512, %8510
  %8514 = fsub fast float %8511, %8513
  %8515 = fcmp fast ogt float %8514, 0.000000e+00
  br i1 %8515, label %8516, label %8531

; <label>:8516                                    ; preds = %8482
  %8517 = fcmp fast ogt float %8507, 0.000000e+00
  %8518 = call float @dx.op.unary.f32(i32 24, float %8514)  ; Sqrt(value)
  %8519 = fsub fast float -0.000000e+00, %8518
  %8520 = select i1 %8517, float %8518, float %8519
  %8521 = fadd fast float %8520, %8507
  %8522 = fmul float %8521, -5.000000e-01
  %8523 = fdiv fast float %8522, %8505
  %8524 = call float @dx.op.binary.f32(i32 35, float %8523, float 0.000000e+00)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8468, float %8524)  ; FMin(a,b)
  %8526 = fdiv fast float %8510, %8522
  %8527 = call float @dx.op.binary.f32(i32 35, float %8526, float 0.000000e+00)  ; FMax(a,b)
  %8528 = call float @dx.op.binary.f32(i32 36, float %8468, float %8527)  ; FMin(a,b)
  %8529 = call float @dx.op.binary.f32(i32 36, float %8525, float %8528)  ; FMin(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8525, float %8528)  ; FMax(a,b)
  br label %8531

; <label>:8531                                    ; preds = %8516, %8482
  %8532 = phi float [ %8530, %8516 ], [ -1.000000e+00, %8482 ]
  %8533 = phi float [ %8529, %8516 ], [ -1.000000e+00, %8482 ]
  %8534 = phi i1 [ true, %8516 ], [ false, %8482 ]
  %8535 = and i1 %8502, %8534
  br i1 %8535, label %8536, label %8538

; <label>:8536                                    ; preds = %8531
  %8537 = fcmp fast oeq float %8533, %8532
  br i1 %8537, label %8841, label %8539

; <label>:8538                                    ; preds = %8531
  br i1 %8502, label %8841, label %8539

; <label>:8539                                    ; preds = %8538, %8536
  %8540 = phi float [ %8468, %8538 ], [ %8532, %8536 ]
  %8541 = phi float [ 0.000000e+00, %8538 ], [ %8533, %8536 ]
  %8542 = icmp ne i32 %8490, 0
  %8543 = fmul fast float %8540, %8471
  %8544 = fadd fast float %8543, %8484
  %8545 = fmul fast float %8544, %8540
  %8546 = select i1 %8542, float 0.000000e+00, float %8545
  %8547 = fcmp fast oeq float %8471, 0.000000e+00
  %8548 = fdiv fast float %8489, %8471
  %8549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8548)  ; FMax(a,b)
  %8550 = select i1 %8547, float %8540, float %8549
  %8551 = call float @dx.op.binary.f32(i32 36, float %8540, float %8550)  ; FMin(a,b)
  %8552 = fcmp fast ogt float %8471, 0.000000e+00
  %8553 = fcmp fast olt float %8489, 0.000000e+00
  br i1 %8552, label %8554, label %8611

; <label>:8554                                    ; preds = %8539
  %8555 = icmp eq i32 %8490, 0
  br i1 %8553, label %8556, label %8600

; <label>:8556                                    ; preds = %8554
  %8557 = select i1 %8555, float %8540, float 0.000000e+00
  %8558 = fsub fast float -0.000000e+00, %8557
  %8559 = call float @dx.op.unary.f32(i32 6, float %8558)  ; FAbs(value)
  %8560 = fmul fast float %8557, %8471
  %8561 = fadd fast float %8560, %8484
  %8562 = fmul fast float %8559, %8561
  %8563 = fsub fast float %8546, %8562
  %8564 = fsub fast float %8540, %8559
  %8565 = select i1 %8555, float %8564, float 0.000000e+00
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 0
  %8568 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8569 = extractvalue %dx.types.CBufRet.f32 %8566, 2
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 0
  %8572 = extractvalue %dx.types.CBufRet.f32 %8570, 1
  %8573 = extractvalue %dx.types.CBufRet.f32 %8570, 2
  %8574 = extractvalue %dx.types.CBufRet.f32 %8570, 3
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8577 = call float @dx.op.binary.f32(i32 36, float %8563, float %8576)  ; FMin(a,b)
  %8578 = fmul fast float %8574, %8565
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fsub fast float %8571, %8567
  %8581 = fsub fast float %8572, %8568
  %8582 = fsub fast float %8573, %8569
  %8583 = fmul fast float %8579, %8580
  %8584 = fmul fast float %8579, %8581
  %8585 = fmul fast float %8579, %8582
  %8586 = fadd fast float %8583, %8567
  %8587 = fadd fast float %8584, %8568
  %8588 = fadd fast float %8585, %8569
  %8589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8590 = extractvalue %dx.types.CBufRet.f32 %8589, 0
  %8591 = extractvalue %dx.types.CBufRet.f32 %8589, 1
  %8592 = fadd fast float %8591, %8590
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8589, 2
  %8595 = extractvalue %dx.types.CBufRet.f32 %8589, 3
  %8596 = fadd fast float %8595, %8594
  %8597 = call float @dx.op.unary.f32(i32 7, float %8596)  ; Saturate(value)
  %8598 = fmul fast float %8593, %8577
  %8599 = fmul fast float %8598, %8597
  br label %8841

; <label>:8600                                    ; preds = %8554
  br i1 %8555, label %8601, label %8622

; <label>:8601                                    ; preds = %8600
  %8602 = call float @dx.op.binary.f32(i32 36, float %8551, float %8541)  ; FMin(a,b)
  %8603 = fsub fast float %8551, %8602
  %8604 = fsub fast float %8603, %8540
  %8605 = call float @dx.op.unary.f32(i32 6, float %8604)  ; FAbs(value)
  %8606 = fadd fast float %8603, %8540
  %8607 = fmul fast float %8606, %8471
  %8608 = fadd fast float %8607, %8484
  %8609 = fmul fast float %8608, %8605
  %8610 = fsub fast float %8546, %8609
  br label %8622

; <label>:8611                                    ; preds = %8539
  br i1 %8553, label %8612, label %8622

; <label>:8612                                    ; preds = %8611
  %8613 = call float @dx.op.binary.f32(i32 35, float %8541, float %8551)  ; FMax(a,b)
  %8614 = icmp eq i32 %8490, 0
  %8615 = select i1 %8614, float %8551, float 0.000000e+00
  %8616 = fsub fast float -0.000000e+00, %8615
  %8617 = call float @dx.op.unary.f32(i32 6, float %8616)  ; FAbs(value)
  %8618 = fmul fast float %8615, %8471
  %8619 = fadd fast float %8618, %8484
  %8620 = fmul fast float %8617, %8619
  %8621 = fsub fast float %8546, %8620
  br label %8622

; <label>:8622                                    ; preds = %8612, %8611, %8601, %8600
  %8623 = phi float [ %8541, %8600 ], [ %8541, %8601 ], [ %8613, %8612 ], [ %8541, %8611 ]
  %8624 = phi float [ 0.000000e+00, %8600 ], [ %8605, %8601 ], [ %8617, %8612 ], [ 0.000000e+00, %8611 ]
  %8625 = phi float [ %8546, %8600 ], [ %8610, %8601 ], [ %8621, %8612 ], [ %8546, %8611 ]
  %8626 = phi float [ %8551, %8600 ], [ %8551, %8601 ], [ %8540, %8612 ], [ %8540, %8611 ]
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8627, align 4, !tbaa !122, !noalias !137
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8628, align 4, !tbaa !122, !noalias !137
  %8629 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8629, align 4, !tbaa !122, !noalias !137
  %8630 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8630, align 4, !tbaa !122, !noalias !137
  %8631 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8631, align 4, !tbaa !122, !noalias !137
  %8632 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8632, align 4, !tbaa !122, !noalias !137
  %8633 = icmp sgt i32 %8492, 0
  br i1 %8633, label %8634, label %8695

; <label>:8634                                    ; preds = %8622
  br label %8635

; <label>:8635                                    ; preds = %8684, %8634
  %8636 = phi i32 [ %8685, %8684 ], [ 0, %8634 ]
  %8637 = phi i32 [ %8686, %8684 ], [ 0, %8634 ]
  %8638 = add nuw i32 %8637, 171
  %8639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8638)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.CBufRet.f32 %8639, 1
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = fsub fast float %8640, %8643
  %8646 = fsub fast float %8641, %8644
  %8647 = extractvalue %dx.types.CBufRet.f32 %8639, 2
  %8648 = fsub fast float -0.000000e+00, %8645
  %8649 = fsub fast float -0.000000e+00, %8646
  %8650 = call float @dx.op.dot2.f32(i32 54, float %8469, float %8470, float %8648, float %8649)  ; Dot2(ax,ay,bx,by)
  %8651 = fmul fast float %8650, 2.000000e+00
  %8652 = call float @dx.op.dot2.f32(i32 54, float %8648, float %8649, float %8648, float %8649)  ; Dot2(ax,ay,bx,by)
  %8653 = fmul fast float %8647, %8647
  %8654 = fsub fast float %8652, %8653
  %8655 = fmul fast float %8651, %8651
  %8656 = fmul fast float %8512, %8654
  %8657 = fsub fast float %8655, %8656
  %8658 = fcmp fast ogt float %8657, 0.000000e+00
  br i1 %8658, label %8659, label %8674

; <label>:8659                                    ; preds = %8635
  %8660 = fcmp fast ogt float %8651, 0.000000e+00
  %8661 = call float @dx.op.unary.f32(i32 24, float %8657)  ; Sqrt(value)
  %8662 = fsub fast float -0.000000e+00, %8661
  %8663 = select i1 %8660, float %8661, float %8662
  %8664 = fadd fast float %8663, %8651
  %8665 = fmul float %8664, -5.000000e-01
  %8666 = fdiv fast float %8665, %8505
  %8667 = call float @dx.op.binary.f32(i32 35, float %8666, float 0.000000e+00)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 36, float %8540, float %8667)  ; FMin(a,b)
  %8669 = fdiv fast float %8654, %8665
  %8670 = call float @dx.op.binary.f32(i32 35, float %8669, float 0.000000e+00)  ; FMax(a,b)
  %8671 = call float @dx.op.binary.f32(i32 36, float %8540, float %8670)  ; FMin(a,b)
  %8672 = call float @dx.op.binary.f32(i32 36, float %8668, float %8671)  ; FMin(a,b)
  %8673 = call float @dx.op.binary.f32(i32 35, float %8668, float %8671)  ; FMax(a,b)
  br label %8674

; <label>:8674                                    ; preds = %8659, %8635
  %8675 = phi float [ %8673, %8659 ], [ -1.000000e+00, %8635 ]
  %8676 = phi float [ %8672, %8659 ], [ -1.000000e+00, %8635 ]
  %8677 = phi i1 [ true, %8659 ], [ false, %8635 ]
  br i1 %8677, label %8678, label %8684

; <label>:8678                                    ; preds = %8674
  %8679 = call float @dx.op.binary.f32(i32 35, float %8623, float %8676)  ; FMax(a,b)
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8637
  store float %8679, float* %8680, align 4, !tbaa !122, !noalias !137
  %8681 = call float @dx.op.binary.f32(i32 35, float %8623, float %8675)  ; FMax(a,b)
  %8682 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8637
  store float %8681, float* %8682, align 4, !tbaa !122, !noalias !137
  %8683 = add nsw i32 %8636, 1
  br label %8684

; <label>:8684                                    ; preds = %8678, %8674
  %8685 = phi i32 [ %8683, %8678 ], [ %8636, %8674 ]
  %8686 = add nuw nsw i32 %8637, 1
  %8687 = icmp eq i32 %8686, %8492
  br i1 %8687, label %8688, label %8635

; <label>:8688                                    ; preds = %8684
  %8689 = load float, float* %8629, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8690 = load float, float* %8628, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8691 = load float, float* %8627, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8692 = load float, float* %8632, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8693 = load float, float* %8631, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8694 = load float, float* %8630, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8695

; <label>:8695                                    ; preds = %8688, %8622
  %8696 = phi float [ -1.000000e+00, %8622 ], [ %8694, %8688 ]
  %8697 = phi float [ -1.000000e+00, %8622 ], [ %8693, %8688 ]
  %8698 = phi float [ -1.000000e+00, %8622 ], [ %8692, %8688 ]
  %8699 = phi float [ -1.000000e+00, %8622 ], [ %8691, %8688 ]
  %8700 = phi float [ -1.000000e+00, %8622 ], [ %8690, %8688 ]
  %8701 = phi float [ -1.000000e+00, %8622 ], [ %8689, %8688 ]
  %8702 = phi i32 [ 0, %8622 ], [ %8685, %8688 ]
  %8703 = call float @dx.op.binary.f32(i32 36, float %8700, float %8701)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 36, float %8699, float %8703)  ; FMin(a,b)
  %8705 = call float @dx.op.binary.f32(i32 35, float %8699, float %8700)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 36, float %8705, float %8701)  ; FMin(a,b)
  %8707 = call float @dx.op.binary.f32(i32 36, float %8699, float %8700)  ; FMin(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8707, float %8706)  ; FMax(a,b)
  %8709 = call float @dx.op.binary.f32(i32 35, float %8700, float %8701)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8699, float %8709)  ; FMax(a,b)
  store float %8704, float* %8627, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8708, float* %8628, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8710, float* %8629, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8711 = call float @dx.op.binary.f32(i32 36, float %8697, float %8698)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8696, float %8711)  ; FMin(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8696, float %8697)  ; FMax(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8713, float %8698)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8696, float %8697)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 35, float %8715, float %8714)  ; FMax(a,b)
  %8717 = call float @dx.op.binary.f32(i32 35, float %8697, float %8698)  ; FMax(a,b)
  %8718 = call float @dx.op.binary.f32(i32 35, float %8696, float %8717)  ; FMax(a,b)
  store float %8712, float* %8630, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8716, float* %8631, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8718, float* %8632, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8719 = sub nsw i32 3, %8702
  %8720 = icmp sgt i32 %8719, 2
  br i1 %8720, label %8721, label %8759

; <label>:8721                                    ; preds = %8695
  %8722 = icmp eq i32 %8490, 0
  %8723 = fsub fast float %8540, %8624
  %8724 = select i1 %8722, float %8723, float %8624
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 0
  %8727 = extractvalue %dx.types.CBufRet.f32 %8725, 1
  %8728 = extractvalue %dx.types.CBufRet.f32 %8725, 2
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.CBufRet.f32 %8729, 1
  %8732 = extractvalue %dx.types.CBufRet.f32 %8729, 2
  %8733 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 3
  %8736 = call float @dx.op.binary.f32(i32 36, float %8625, float %8735)  ; FMin(a,b)
  %8737 = fmul fast float %8733, %8724
  %8738 = call float @dx.op.unary.f32(i32 7, float %8737)  ; Saturate(value)
  %8739 = fsub fast float %8730, %8726
  %8740 = fsub fast float %8731, %8727
  %8741 = fsub fast float %8732, %8728
  %8742 = fmul fast float %8738, %8739
  %8743 = fmul fast float %8738, %8740
  %8744 = fmul fast float %8738, %8741
  %8745 = fadd fast float %8742, %8726
  %8746 = fadd fast float %8743, %8727
  %8747 = fadd fast float %8744, %8728
  %8748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8749 = extractvalue %dx.types.CBufRet.f32 %8748, 0
  %8750 = extractvalue %dx.types.CBufRet.f32 %8748, 1
  %8751 = fadd fast float %8750, %8749
  %8752 = call float @dx.op.unary.f32(i32 7, float %8751)  ; Saturate(value)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8748, 2
  %8754 = extractvalue %dx.types.CBufRet.f32 %8748, 3
  %8755 = fadd fast float %8754, %8753
  %8756 = call float @dx.op.unary.f32(i32 7, float %8755)  ; Saturate(value)
  %8757 = fmul fast float %8752, %8736
  %8758 = fmul fast float %8757, %8756
  br label %8841

; <label>:8759                                    ; preds = %8695
  %8760 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8719
  %8761 = load float, float* %8760, align 4, !tbaa !122, !noalias !137
  %8762 = fcmp fast olt float %8761, %8626
  %8763 = icmp sgt i32 %8702, 0
  %8764 = and i1 %8763, %8762
  br i1 %8764, label %8765, label %8802

; <label>:8765                                    ; preds = %8759
  br label %8766

; <label>:8766                                    ; preds = %8795, %8765
  %8767 = phi float [ %8796, %8795 ], [ %8624, %8765 ]
  %8768 = phi float [ %8797, %8795 ], [ %8625, %8765 ]
  %8769 = phi float [ %8777, %8795 ], [ %8761, %8765 ]
  %8770 = phi i32 [ %8774, %8795 ], [ %8719, %8765 ]
  %8771 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8770
  %8772 = load float, float* %8771, align 4, !tbaa !122, !noalias !137
  %8773 = icmp slt i32 %8770, 2
  %8774 = add nsw i32 %8770, 1
  %8775 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8774
  %8776 = load float, float* %8775, align 4, !tbaa !122, !noalias !137
  %8777 = select i1 %8773, float %8776, float %8540
  %8778 = call float @dx.op.binary.f32(i32 36, float %8777, float %8772)  ; FMin(a,b)
  %8779 = call float @dx.op.binary.f32(i32 36, float %8626, float %8778)  ; FMin(a,b)
  %8780 = icmp eq i32 %8490, 0
  %8781 = fadd fast float %8779, %8769
  %8782 = fmul fast float %8781, %8471
  %8783 = fadd fast float %8782, %8484
  br i1 %8780, label %8789, label %8784

; <label>:8784                                    ; preds = %8766
  %8785 = fsub fast float %8779, %8769
  %8786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8785)  ; FMax(a,b)
  %8787 = fmul fast float %8786, %8783
  %8788 = fadd fast float %8787, %8768
  br label %8795

; <label>:8789                                    ; preds = %8766
  %8790 = fsub fast float %8769, %8779
  %8791 = call float @dx.op.unary.f32(i32 6, float %8790)  ; FAbs(value)
  %8792 = fadd fast float %8791, %8767
  %8793 = fmul fast float %8791, %8783
  %8794 = fsub fast float %8768, %8793
  br label %8795

; <label>:8795                                    ; preds = %8789, %8784
  %8796 = phi float [ %8786, %8784 ], [ %8792, %8789 ]
  %8797 = phi float [ %8788, %8784 ], [ %8794, %8789 ]
  %8798 = fcmp fast olt float %8777, %8626
  %8799 = icmp slt i32 %8774, 3
  %8800 = and i1 %8799, %8798
  br i1 %8800, label %8766, label %8801

; <label>:8801                                    ; preds = %8795
  br label %8802

; <label>:8802                                    ; preds = %8801, %8759
  %8803 = phi float [ %8624, %8759 ], [ %8796, %8801 ]
  %8804 = phi float [ %8625, %8759 ], [ %8797, %8801 ]
  %8805 = fsub fast float %8540, %8803
  %8806 = select i1 %8542, float %8803, float %8805
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8812 = extractvalue %dx.types.CBufRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.CBufRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.CBufRet.f32 %8811, 2
  %8815 = extractvalue %dx.types.CBufRet.f32 %8811, 3
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8818 = call float @dx.op.binary.f32(i32 36, float %8804, float %8817)  ; FMin(a,b)
  %8819 = fmul fast float %8815, %8806
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = fsub fast float %8812, %8808
  %8822 = fsub fast float %8813, %8809
  %8823 = fsub fast float %8814, %8810
  %8824 = fmul fast float %8820, %8821
  %8825 = fmul fast float %8820, %8822
  %8826 = fmul fast float %8820, %8823
  %8827 = fadd fast float %8824, %8808
  %8828 = fadd fast float %8825, %8809
  %8829 = fadd fast float %8826, %8810
  %8830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8830, 0
  %8832 = extractvalue %dx.types.CBufRet.f32 %8830, 1
  %8833 = fadd fast float %8832, %8831
  %8834 = call float @dx.op.unary.f32(i32 7, float %8833)  ; Saturate(value)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8830, 2
  %8836 = extractvalue %dx.types.CBufRet.f32 %8830, 3
  %8837 = fadd fast float %8836, %8835
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fmul fast float %8834, %8818
  %8840 = fmul fast float %8839, %8838
  br label %8841

; <label>:8841                                    ; preds = %8802, %8721, %8556, %8538, %8536
  %8842 = phi float [ %8565, %8556 ], [ %8724, %8721 ], [ %8806, %8802 ], [ 0.000000e+00, %8536 ], [ 0.000000e+00, %8538 ]
  %8843 = phi float [ %8599, %8556 ], [ %8758, %8721 ], [ %8840, %8802 ], [ 0.000000e+00, %8536 ], [ 0.000000e+00, %8538 ]
  %8844 = phi float [ %8586, %8556 ], [ %8745, %8721 ], [ %8827, %8802 ], [ 0.000000e+00, %8536 ], [ 0.000000e+00, %8538 ]
  %8845 = phi float [ %8587, %8556 ], [ %8746, %8721 ], [ %8828, %8802 ], [ 0.000000e+00, %8536 ], [ 0.000000e+00, %8538 ]
  %8846 = phi float [ %8588, %8556 ], [ %8747, %8721 ], [ %8829, %8802 ], [ 0.000000e+00, %8536 ], [ 0.000000e+00, %8538 ]
  %8847 = fmul fast float %8479, %8843
  %8848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8849 = extractvalue %dx.types.CBufRet.f32 %8848, 2
  %8850 = fsub fast float %8486, %8849
  %8851 = fcmp fast olt float %8847, -2.000000e+01
  %8852 = call float @dx.op.unary.f32(i32 21, float %8847)  ; Exp(value)
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8855 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8857 = extractvalue %dx.types.CBufRet.f32 %8856, 2
  %8858 = fmul fast float %8855, %8850
  %8859 = call float @dx.op.unary.f32(i32 7, float %8858)  ; Saturate(value)
  %8860 = fsub fast float 1.000000e+00, %8859
  %8861 = fmul fast float %8471, 5.000000e-01
  %8862 = fadd fast float %8861, 5.000000e-01
  %8863 = call float @dx.op.unary.f32(i32 7, float %8862)  ; Saturate(value)
  %8864 = fsub fast float 1.000000e+00, %8863
  %8865 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8860)  ; FMax(a,b)
  %8866 = fdiv fast float %8864, %8865
  %8867 = fsub fast float %8850, %8428
  %8868 = call float @dx.op.unary.f32(i32 6, float %8867)  ; FAbs(value)
  %8869 = fmul fast float %8868, %8854
  %8870 = call float @dx.op.unary.f32(i32 7, float %8866)  ; Saturate(value)
  %8871 = fsub fast float 1.000000e+00, %8869
  %8872 = fmul fast float %8871, %8870
  %8873 = fadd fast float %8872, %8869
  %8874 = fmul fast float %8857, %8850
  %8875 = call float @dx.op.unary.f32(i32 7, float %8874)  ; Saturate(value)
  %8876 = fsub fast float 1.000000e+00, %8873
  %8877 = fmul fast float %8876, %8875
  %8878 = fadd fast float %8877, %8873
  %8879 = call float @dx.op.unary.f32(i32 7, float %8878)  ; Saturate(value)
  %8880 = fadd fast float %8852, -1.000000e+00
  %8881 = select i1 %8851, float -1.000000e+00, float %8880
  %8882 = fmul fast float %8879, %8881
  %8883 = fadd fast float %8882, 1.000000e+00
  %8884 = fsub fast float -0.000000e+00, %8882
  %8885 = fmul fast float %8844, %8884
  %8886 = fmul fast float %8845, %8884
  %8887 = fmul fast float %8846, %8884
  br label %8888

; <label>:8888                                    ; preds = %8841, %8437
  %8889 = phi float [ %8842, %8841 ], [ 0.000000e+00, %8437 ]
  %8890 = phi float [ %8883, %8841 ], [ 1.000000e+00, %8437 ]
  %8891 = phi float [ %8885, %8841 ], [ 0.000000e+00, %8437 ]
  %8892 = phi float [ %8886, %8841 ], [ 0.000000e+00, %8437 ]
  %8893 = phi float [ %8887, %8841 ], [ 0.000000e+00, %8437 ]
  %8894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8895 = extractvalue %dx.types.CBufRet.f32 %8894, 1
  %8896 = fsub fast float 1.000000e+00, %8890
  %8897 = fmul fast float %8896, %8472
  %8898 = fmul fast float %8897, %8895
  %8899 = fsub fast float %8472, %8898
  br i1 %8465, label %8900, label %8929, !dx.controlflow.hints !173

; <label>:8900                                    ; preds = %8888
  %8901 = fmul fast float %8473, %8462
  %8902 = fadd fast float %8901, %8463
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fmul fast float %8444, %8899
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = fmul fast float %8445, %8899
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8909 = call float @dx.op.unary.f32(i32 21, float %8907)  ; Exp(value)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8452, float %8908)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 35, float %8452, float %8909)  ; FMax(a,b)
  %8912 = fsub fast float %8911, %8910
  %8913 = fmul fast float %8912, %8903
  %8914 = fadd fast float %8913, %8910
  %8915 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8916 = fsub fast float %8449, %8454
  %8917 = fsub fast float %8450, %8455
  %8918 = fsub fast float %8451, %8456
  %8919 = fmul fast float %8903, %8916
  %8920 = fmul fast float %8903, %8917
  %8921 = fmul fast float %8903, %8918
  %8922 = fadd fast float %8919, %8454
  %8923 = fadd fast float %8920, %8455
  %8924 = fadd fast float %8921, %8456
  %8925 = fsub fast float 1.000000e+00, %8915
  %8926 = fmul fast float %8925, %8922
  %8927 = fmul fast float %8925, %8923
  %8928 = fmul fast float %8925, %8924
  br label %8988

; <label>:8929                                    ; preds = %8888
  %8930 = fmul fast float %8899, %8461
  %8931 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8932 = fsub fast float 2.000000e+00, %8931
  %8933 = fmul fast float %8931, 9.921875e-01
  %8934 = fmul fast float %8933, %8932
  %8935 = fadd fast float %8934, 3.906250e-03
  %8936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8935, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8937 = extractvalue %dx.types.ResRet.f32 %8936, 0
  %8938 = fsub fast float %8931, %8937
  %8939 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8938)  ; FMax(a,b)
  %8940 = fmul fast float %8447, %8428
  %8941 = call float @dx.op.unary.f32(i32 6, float %8940)  ; FAbs(value)
  %8942 = fcmp fast ogt float %8941, 0x3EB0C6F7A0000000
  br i1 %8942, label %8943, label %8949, !dx.controlflow.hints !174

; <label>:8943                                    ; preds = %8929
  %8944 = fmul fast float %8940, 0xBFF7154760000000
  %8945 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8946 = fsub fast float 1.000000e+00, %8945
  %8947 = fdiv fast float %8946, %8940
  %8948 = fmul fast float %8947, %8457
  br label %8949

; <label>:8949                                    ; preds = %8943, %8929
  %8950 = phi float [ %8948, %8943 ], [ %8457, %8929 ]
  %8951 = fadd fast float %8950, %8459
  %8952 = fmul fast float %8951, %8939
  %8953 = fmul fast float %8444, %8952
  %8954 = fsub fast float -0.000000e+00, %8953
  %8955 = fmul fast float %8445, %8952
  %8956 = fsub fast float -0.000000e+00, %8955
  %8957 = fmul fast float %8446, %8952
  %8958 = fsub fast float -0.000000e+00, %8957
  %8959 = call float @dx.op.unary.f32(i32 21, float %8954)  ; Exp(value)
  %8960 = call float @dx.op.unary.f32(i32 21, float %8956)  ; Exp(value)
  %8961 = call float @dx.op.unary.f32(i32 21, float %8958)  ; Exp(value)
  %8962 = fmul fast float %8473, %8473
  %8963 = fadd fast float %8962, 1.000000e+00
  %8964 = fmul fast float %8963, 0x3FAE8EC8A0000000
  %8965 = fmul fast float %8964, %8454
  %8966 = fmul fast float %8964, %8455
  %8967 = fmul fast float %8964, %8456
  %8968 = fmul fast float %8473, %8452
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = fmul fast float %8452, %8452
  %8971 = fsub fast float 1.000000e+00, %8970
  %8972 = fmul fast float %8971, 0x3FB45F3060000000
  %8973 = fmul fast float %8969, %8969
  %8974 = fdiv fast float 1.000000e+00, %8973
  %8975 = fmul fast float %8972, %8974
  %8976 = fmul fast float %8975, %8449
  %8977 = fmul fast float %8975, %8450
  %8978 = fmul fast float %8975, %8451
  %8979 = fadd fast float %8976, %8965
  %8980 = fadd fast float %8977, %8966
  %8981 = fadd fast float %8978, %8967
  %8982 = fsub fast float 1.000000e+00, %8959
  %8983 = fsub fast float 1.000000e+00, %8960
  %8984 = fsub fast float 1.000000e+00, %8961
  %8985 = fmul fast float %8979, %8982
  %8986 = fmul fast float %8980, %8983
  %8987 = fmul fast float %8981, %8984
  br label %8988

; <label>:8988                                    ; preds = %8949, %8900
  %8989 = phi float [ %8926, %8900 ], [ %8985, %8949 ]
  %8990 = phi float [ %8927, %8900 ], [ %8986, %8949 ]
  %8991 = phi float [ %8928, %8900 ], [ %8987, %8949 ]
  %8992 = phi float [ %8915, %8900 ], [ %8959, %8949 ]
  %8993 = phi float [ %8915, %8900 ], [ %8960, %8949 ]
  %8994 = phi float [ %8915, %8900 ], [ %8961, %8949 ]
  br i1 %8481, label %8995, label %9193, !dx.controlflow.hints !175

; <label>:8995                                    ; preds = %8988
  %8996 = extractvalue %dx.types.CBufRet.f32 %8894, 0
  %8997 = fmul fast float %8996, %8896
  %8998 = fsub fast float %8891, %8989
  %8999 = fsub fast float %8892, %8990
  %9000 = fsub fast float %8893, %8991
  %9001 = fmul fast float %8997, %8998
  %9002 = fmul fast float %8997, %8999
  %9003 = fmul fast float %8997, %9000
  %9004 = fadd fast float %9001, %8989
  %9005 = fadd fast float %9002, %8990
  %9006 = fadd fast float %9003, %8991
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8992)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8993)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8994)  ; FMax(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8890)  ; FMax(a,b)
  %9011 = call float @dx.op.binary.f32(i32 35, float %8889, float %8899)  ; FMax(a,b)
  %9012 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9011)  ; FMax(a,b)
  %9013 = fdiv fast float %8889, %9012
  %9014 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9015 = fdiv fast float %8899, %9012
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = fcmp fast une float %9010, 1.000000e+00
  br i1 %9017, label %9018, label %9031, !dx.controlflow.hints !176

; <label>:9018                                    ; preds = %8995
  %9019 = call float @dx.op.unary.f32(i32 23, float %9010)  ; Log(value)
  %9020 = fmul fast float %9019, 0x3FE62E4300000000
  %9021 = fmul fast float %8891, %9020
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fmul fast float %8892, %9020
  %9024 = fsub fast float -0.000000e+00, %9023
  %9025 = fmul fast float %8893, %9020
  %9026 = fsub fast float -0.000000e+00, %9025
  %9027 = fsub fast float 1.000000e+00, %9010
  %9028 = fdiv fast float %9022, %9027
  %9029 = fdiv fast float %9024, %9027
  %9030 = fdiv fast float %9026, %9027
  br label %9031

; <label>:9031                                    ; preds = %9018, %8995
  %9032 = phi float [ %9028, %9018 ], [ %8891, %8995 ]
  %9033 = phi float [ %9029, %9018 ], [ %8892, %8995 ]
  %9034 = phi float [ %9030, %9018 ], [ %8893, %8995 ]
  %9035 = phi float [ %9020, %9018 ], [ 0.000000e+00, %8995 ]
  %9036 = fcmp fast une float %9007, 1.000000e+00
  br i1 %9036, label %9037, label %9044, !dx.controlflow.hints !177

; <label>:9037                                    ; preds = %9031
  %9038 = call float @dx.op.unary.f32(i32 23, float %9007)  ; Log(value)
  %9039 = fmul fast float %9038, 0x3FE62E4300000000
  %9040 = fmul fast float %9004, %9039
  %9041 = fsub fast float -0.000000e+00, %9040
  %9042 = fsub fast float 1.000000e+00, %9007
  %9043 = fdiv fast float %9041, %9042
  br label %9044

; <label>:9044                                    ; preds = %9037, %9031
  %9045 = phi float [ %9043, %9037 ], [ %9004, %9031 ]
  %9046 = phi float [ %9039, %9037 ], [ 0.000000e+00, %9031 ]
  %9047 = fcmp fast une float %9008, 1.000000e+00
  br i1 %9047, label %9048, label %9055, !dx.controlflow.hints !177

; <label>:9048                                    ; preds = %9044
  %9049 = call float @dx.op.unary.f32(i32 23, float %9008)  ; Log(value)
  %9050 = fmul fast float %9049, 0x3FE62E4300000000
  %9051 = fmul fast float %9005, %9050
  %9052 = fsub fast float -0.000000e+00, %9051
  %9053 = fsub fast float 1.000000e+00, %9008
  %9054 = fdiv fast float %9052, %9053
  br label %9055

; <label>:9055                                    ; preds = %9048, %9044
  %9056 = phi float [ %9054, %9048 ], [ %9005, %9044 ]
  %9057 = phi float [ %9050, %9048 ], [ 0.000000e+00, %9044 ]
  %9058 = fcmp fast une float %9009, 1.000000e+00
  br i1 %9058, label %9059, label %9066, !dx.controlflow.hints !177

; <label>:9059                                    ; preds = %9055
  %9060 = call float @dx.op.unary.f32(i32 23, float %9009)  ; Log(value)
  %9061 = fmul fast float %9060, 0x3FE62E4300000000
  %9062 = fmul fast float %9006, %9061
  %9063 = fsub fast float -0.000000e+00, %9062
  %9064 = fsub fast float 1.000000e+00, %9009
  %9065 = fdiv fast float %9063, %9064
  br label %9066

; <label>:9066                                    ; preds = %9059, %9055
  %9067 = phi float [ %9065, %9059 ], [ %9006, %9055 ]
  %9068 = phi float [ %9061, %9059 ], [ 0.000000e+00, %9055 ]
  %9069 = fmul fast float %9032, %9016
  %9070 = fmul fast float %9033, %9016
  %9071 = fmul fast float %9034, %9016
  %9072 = fmul fast float %9035, %9016
  %9073 = fmul fast float %9045, %9014
  %9074 = fmul fast float %9056, %9014
  %9075 = fmul fast float %9067, %9014
  %9076 = fmul fast float %9046, %9014
  %9077 = fmul fast float %9057, %9014
  %9078 = fmul fast float %9068, %9014
  %9079 = fadd fast float %9073, %9069
  %9080 = fadd fast float %9074, %9070
  %9081 = fadd fast float %9075, %9071
  %9082 = fadd fast float %9076, %9072
  %9083 = fadd fast float %9077, %9072
  %9084 = fadd fast float %9078, %9072
  %9085 = fcmp fast une float %9082, 0.000000e+00
  br i1 %9085, label %9086, label %9093, !dx.controlflow.hints !178

; <label>:9086                                    ; preds = %9066
  %9087 = fmul fast float %9082, 0x3FF7154760000000
  %9088 = call float @dx.op.unary.f32(i32 21, float %9087)  ; Exp(value)
  %9089 = fsub fast float 1.000000e+00, %9088
  %9090 = fmul fast float %9079, %9089
  %9091 = fsub fast float -0.000000e+00, %9090
  %9092 = fdiv fast float %9091, %9082
  br label %9093

; <label>:9093                                    ; preds = %9086, %9066
  %9094 = phi float [ %9088, %9086 ], [ 1.000000e+00, %9066 ]
  %9095 = phi float [ %9092, %9086 ], [ %9079, %9066 ]
  %9096 = fcmp fast une float %9083, 0.000000e+00
  br i1 %9096, label %9097, label %9104, !dx.controlflow.hints !178

; <label>:9097                                    ; preds = %9093
  %9098 = fmul fast float %9083, 0x3FF7154760000000
  %9099 = call float @dx.op.unary.f32(i32 21, float %9098)  ; Exp(value)
  %9100 = fsub fast float 1.000000e+00, %9099
  %9101 = fmul fast float %9080, %9100
  %9102 = fsub fast float -0.000000e+00, %9101
  %9103 = fdiv fast float %9102, %9083
  br label %9104

; <label>:9104                                    ; preds = %9097, %9093
  %9105 = phi float [ %9099, %9097 ], [ 1.000000e+00, %9093 ]
  %9106 = phi float [ %9103, %9097 ], [ %9080, %9093 ]
  %9107 = fcmp fast une float %9084, 0.000000e+00
  br i1 %9107, label %9108, label %9115, !dx.controlflow.hints !178

; <label>:9108                                    ; preds = %9104
  %9109 = fmul fast float %9084, 0x3FF7154760000000
  %9110 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9111 = fsub fast float 1.000000e+00, %9110
  %9112 = fmul fast float %9081, %9111
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = fdiv fast float %9113, %9084
  br label %9115

; <label>:9115                                    ; preds = %9108, %9104
  %9116 = phi float [ %9110, %9108 ], [ 1.000000e+00, %9104 ]
  %9117 = phi float [ %9114, %9108 ], [ %9081, %9104 ]
  %9118 = fcmp fast ogt float %9014, %9016
  br i1 %9118, label %9119, label %9139

; <label>:9119                                    ; preds = %9115
  %9120 = fsub fast float 1.000000e+00, %9016
  %9121 = fmul fast float %9032, %9120
  %9122 = fmul fast float %9033, %9120
  %9123 = fmul fast float %9034, %9120
  %9124 = fmul fast float %9035, %9120
  %9125 = fcmp fast une float %9124, 0.000000e+00
  br i1 %9125, label %9126, label %9177, !dx.controlflow.hints !179

; <label>:9126                                    ; preds = %9119
  %9127 = fmul fast float %9124, 0x3FF7154760000000
  %9128 = call float @dx.op.unary.f32(i32 21, float %9127)  ; Exp(value)
  %9129 = fsub fast float 1.000000e+00, %9128
  %9130 = fmul fast float %9121, %9129
  %9131 = fsub fast float -0.000000e+00, %9130
  %9132 = fmul fast float %9122, %9129
  %9133 = fsub fast float -0.000000e+00, %9132
  %9134 = fmul fast float %9123, %9129
  %9135 = fsub fast float -0.000000e+00, %9134
  %9136 = fdiv fast float %9131, %9124
  %9137 = fdiv fast float %9133, %9124
  %9138 = fdiv fast float %9135, %9124
  br label %9177

; <label>:9139                                    ; preds = %9115
  %9140 = fsub fast float 1.000000e+00, %9014
  %9141 = fmul fast float %9045, %9140
  %9142 = fmul fast float %9056, %9140
  %9143 = fmul fast float %9067, %9140
  %9144 = fmul fast float %9046, %9140
  %9145 = fmul fast float %9057, %9140
  %9146 = fmul fast float %9068, %9140
  %9147 = fcmp fast une float %9144, 0.000000e+00
  br i1 %9147, label %9148, label %9155, !dx.controlflow.hints !178

; <label>:9148                                    ; preds = %9139
  %9149 = fmul fast float %9144, 0x3FF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %9141, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fdiv fast float %9153, %9144
  br label %9155

; <label>:9155                                    ; preds = %9148, %9139
  %9156 = phi float [ %9154, %9148 ], [ %9141, %9139 ]
  %9157 = phi float [ %9150, %9148 ], [ 1.000000e+00, %9139 ]
  %9158 = fcmp fast une float %9145, 0.000000e+00
  br i1 %9158, label %9159, label %9166, !dx.controlflow.hints !178

; <label>:9159                                    ; preds = %9155
  %9160 = fmul fast float %9145, 0x3FF7154760000000
  %9161 = call float @dx.op.unary.f32(i32 21, float %9160)  ; Exp(value)
  %9162 = fsub fast float 1.000000e+00, %9161
  %9163 = fmul fast float %9142, %9162
  %9164 = fsub fast float -0.000000e+00, %9163
  %9165 = fdiv fast float %9164, %9145
  br label %9166

; <label>:9166                                    ; preds = %9159, %9155
  %9167 = phi float [ %9165, %9159 ], [ %9142, %9155 ]
  %9168 = phi float [ %9161, %9159 ], [ 1.000000e+00, %9155 ]
  %9169 = fcmp fast une float %9146, 0.000000e+00
  br i1 %9169, label %9170, label %9177, !dx.controlflow.hints !178

; <label>:9170                                    ; preds = %9166
  %9171 = fmul fast float %9146, 0x3FF7154760000000
  %9172 = call float @dx.op.unary.f32(i32 21, float %9171)  ; Exp(value)
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = fmul fast float %9143, %9173
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fdiv fast float %9175, %9146
  br label %9177

; <label>:9177                                    ; preds = %9170, %9166, %9126, %9119
  %9178 = phi float [ %9176, %9170 ], [ %9138, %9126 ], [ %9123, %9119 ], [ %9143, %9166 ]
  %9179 = phi float [ %9167, %9170 ], [ %9137, %9126 ], [ %9122, %9119 ], [ %9167, %9166 ]
  %9180 = phi float [ %9156, %9170 ], [ %9136, %9126 ], [ %9121, %9119 ], [ %9156, %9166 ]
  %9181 = phi float [ %9172, %9170 ], [ %9128, %9126 ], [ 1.000000e+00, %9119 ], [ 1.000000e+00, %9166 ]
  %9182 = phi float [ %9168, %9170 ], [ %9128, %9126 ], [ 1.000000e+00, %9119 ], [ %9168, %9166 ]
  %9183 = phi float [ %9157, %9170 ], [ %9128, %9126 ], [ 1.000000e+00, %9119 ], [ %9157, %9166 ]
  %9184 = fmul fast float %9183, %9095
  %9185 = fmul fast float %9182, %9106
  %9186 = fmul fast float %9181, %9117
  %9187 = fadd fast float %9184, %9180
  %9188 = fadd fast float %9185, %9179
  %9189 = fadd fast float %9186, %9178
  %9190 = fmul fast float %9183, %9094
  %9191 = fmul fast float %9182, %9105
  %9192 = fmul fast float %9181, %9116
  br label %9193

; <label>:9193                                    ; preds = %9177, %8988
  %9194 = phi float [ %9192, %9177 ], [ %8994, %8988 ]
  %9195 = phi float [ %9191, %9177 ], [ %8993, %8988 ]
  %9196 = phi float [ %9190, %9177 ], [ %8992, %8988 ]
  %9197 = phi float [ %9189, %9177 ], [ %8991, %8988 ]
  %9198 = phi float [ %9188, %9177 ], [ %8990, %8988 ]
  %9199 = phi float [ %9187, %9177 ], [ %8989, %8988 ]
  %9200 = fmul fast float %9199, %8145
  %9201 = fmul fast float %9198, %8145
  %9202 = fmul fast float %9197, %8145
  %9203 = fmul fast float %9196, %8436
  %9204 = call float @dx.op.dot3.f32(i32 55, float %9196, float %9195, float %9194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9205 = call float @dx.op.dot3.f32(i32 55, float %9200, float %9201, float %9202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9206 = select i1 %260, float %9204, float %9196
  %9207 = select i1 %260, float %9204, float %9195
  %9208 = select i1 %260, float 1.000000e+00, float %9194
  %9209 = select i1 %260, float %9205, float %9200
  %9210 = select i1 %260, float 0.000000e+00, float %9201
  %9211 = select i1 %260, float 0.000000e+00, float %9202
  %9212 = fmul fast float %9206, %8430
  %9213 = fmul fast float %9207, %8431
  %9214 = fmul fast float %9208, %8432
  %9215 = fadd fast float %9212, %9209
  %9216 = fadd fast float %9213, %9210
  %9217 = fadd fast float %9211, %9214
  %9218 = fmul fast float %9206, %8433
  %9219 = fmul fast float %9207, %8434
  %9220 = fmul fast float %9208, %8435
  %9221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.i32 %9221, 0
  %9223 = icmp eq i32 %9222, 0
  br i1 %9223, label %9591, label %9224, !dx.controlflow.hints !180

; <label>:9224                                    ; preds = %9193
  %9225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9226 = extractvalue %dx.types.CBufRet.f32 %9225, 2
  %9227 = extractvalue %dx.types.CBufRet.f32 %9225, 3
  %9228 = fmul fast float %9226, %114
  %9229 = fmul fast float %9227, %115
  %9230 = fmul fast float %9228, 2.000000e+00
  %9231 = fmul fast float %9229, 2.000000e+00
  %9232 = fsub fast float 1.000000e+00, %9230
  %9233 = fsub fast float 1.000000e+00, %9231
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 0
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 1
  %9237 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9238 = fmul fast float %9232, %9235
  %9239 = fmul fast float %9232, %9236
  %9240 = fmul fast float %9232, %9237
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %9243 = extractvalue %dx.types.CBufRet.f32 %9241, 1
  %9244 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %9245 = fmul fast float %9233, %9242
  %9246 = fmul fast float %9233, %9243
  %9247 = fmul fast float %9233, %9244
  %9248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9249 = extractvalue %dx.types.CBufRet.f32 %9248, 0
  %9250 = extractvalue %dx.types.CBufRet.f32 %9248, 1
  %9251 = extractvalue %dx.types.CBufRet.f32 %9248, 2
  %9252 = fadd fast float %9245, %9249
  %9253 = fadd fast float %9252, %9238
  %9254 = fadd fast float %9246, %9250
  %9255 = fadd fast float %9254, %9239
  %9256 = fadd fast float %9247, %9251
  %9257 = fadd fast float %9256, %9240
  %9258 = fmul fast float %9253, %8429
  %9259 = fmul fast float %9255, %8429
  %9260 = fmul fast float %9257, %8429
  %9261 = fmul fast float %9258, %9258
  %9262 = fmul fast float %9259, %9259
  %9263 = fadd fast float %9261, %9262
  %9264 = fmul fast float %9260, %9260
  %9265 = fadd fast float %9263, %9264
  %9266 = call float @dx.op.unary.f32(i32 24, float %9265)  ; Sqrt(value)
  %9267 = extractvalue %dx.types.CBufRet.f32 %8156, 0
  %9268 = fsub fast float %9266, %9267
  %9269 = extractvalue %dx.types.CBufRet.f32 %8156, 2
  %9270 = fmul fast float %9268, %9269
  %9271 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9272 = fadd fast float %9271, -5.000000e-01
  %9273 = fmul fast float %9272, 2.000000e+00
  %9274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9274, 2
  %9276 = call float @dx.op.binary.f32(i32 36, float %9275, float %9273)  ; FMin(a,b)
  %9277 = fsub fast float -0.000000e+00, %9275
  %9278 = fcmp fast ogt float %9276, %9277
  br i1 %9278, label %9279, label %9591, !dx.controlflow.hints !181

; <label>:9279                                    ; preds = %9224
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 3
  %9282 = fcmp fast ogt float %9281, 0.000000e+00
  br i1 %9282, label %9283, label %9358, !dx.controlflow.hints !182

; <label>:9283                                    ; preds = %9279
  %9284 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9285 = extractvalue %dx.types.Dimensions %9284, 0
  %9286 = sitofp i32 %9285 to float
  %9287 = extractvalue %dx.types.Dimensions %9284, 1
  %9288 = sitofp i32 %9287 to float
  %9289 = fmul fast float %9228, %9286
  %9290 = fmul fast float %9229, %9288
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = fptoui float %9293 to i32
  %9295 = fptoui float %9289 to i32
  %9296 = fptoui float %9290 to i32
  %9297 = and i32 %9294, 31
  %9298 = lshr i32 %9295, %9297
  %9299 = lshr i32 %9296, %9297
  %9300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9294, i32 %9298, i32 %9299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9301 = extractvalue %dx.types.ResRet.f32 %9300, 0
  %9302 = fcmp fast olt float %9301, -1.000000e+00
  %9303 = fcmp fast ogt float %9301, -1.000000e+00
  %9304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9304, 1
  %9306 = select i1 %9303, float %9305, float 1.000000e+00
  %9307 = fadd fast float %9301, 1.000000e+00
  %9308 = fmul fast float %9306, %9307
  %9309 = call float @dx.op.unary.f32(i32 6, float %9308)  ; FAbs(value)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9304, 3
  %9311 = fcmp fast oge float %9309, %9310
  %9312 = select i1 %9311, float 0x4197782600000000, float %9309
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9315 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9316 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9317 = select i1 %9302, float %9314, float %9235
  %9318 = select i1 %9302, float %9315, float %9236
  %9319 = select i1 %9302, float %9316, float %9237
  %9320 = fmul fast float %9317, %9232
  %9321 = fmul fast float %9318, %9232
  %9322 = fmul fast float %9319, %9232
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 0
  %9325 = extractvalue %dx.types.CBufRet.f32 %9323, 1
  %9326 = extractvalue %dx.types.CBufRet.f32 %9323, 2
  %9327 = select i1 %9302, float %9324, float %9242
  %9328 = select i1 %9302, float %9325, float %9243
  %9329 = select i1 %9302, float %9326, float %9244
  %9330 = fmul fast float %9327, %9233
  %9331 = fmul fast float %9328, %9233
  %9332 = fmul fast float %9329, %9233
  %9333 = fadd fast float %9330, %9320
  %9334 = fadd fast float %9331, %9321
  %9335 = fadd fast float %9332, %9322
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9338 = extractvalue %dx.types.CBufRet.f32 %9336, 1
  %9339 = extractvalue %dx.types.CBufRet.f32 %9336, 2
  %9340 = select i1 %9302, float %9337, float %9249
  %9341 = select i1 %9302, float %9338, float %9250
  %9342 = select i1 %9302, float %9339, float %9251
  %9343 = fadd fast float %9333, %9340
  %9344 = fadd fast float %9334, %9341
  %9345 = fadd fast float %9335, %9342
  %9346 = fmul fast float %9343, %9312
  %9347 = fmul fast float %9344, %9312
  %9348 = fmul fast float %9345, %9312
  %9349 = fmul fast float %9346, %9346
  %9350 = fmul fast float %9347, %9347
  %9351 = fadd fast float %9349, %9350
  %9352 = fmul fast float %9348, %9348
  %9353 = fadd fast float %9351, %9352
  %9354 = call float @dx.op.unary.f32(i32 24, float %9353)  ; Sqrt(value)
  %9355 = fsub fast float %9354, %9267
  %9356 = fmul fast float %9355, %9269
  %9357 = call float @dx.op.unary.f32(i32 7, float %9356)  ; Saturate(value)
  br label %9358

; <label>:9358                                    ; preds = %9283, %9279
  %9359 = phi float [ %9357, %9283 ], [ 1.000000e+00, %9279 ]
  %9360 = fmul fast float %9276, 5.000000e-01
  %9361 = fadd fast float %9360, 5.000000e-01
  %9362 = call float @dx.op.unary.f32(i32 22, float %9361)  ; Frc(value)
  %9363 = call float @dx.op.unary.f32(i32 27, float %9362)  ; Round_ni(value)
  %9364 = call float @dx.op.unary.f32(i32 22, float %9362)  ; Frc(value)
  %9365 = fmul fast float %9364, 2.000000e+00
  %9366 = fadd fast float %9365, -1.000000e+00
  %9367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9228, float %9229, float %9363, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9368 = extractvalue %dx.types.ResRet.f32 %9367, 0
  %9369 = extractvalue %dx.types.ResRet.f32 %9367, 1
  %9370 = extractvalue %dx.types.ResRet.f32 %9367, 2
  %9371 = extractvalue %dx.types.ResRet.f32 %9367, 3
  %9372 = fadd fast float %9368, -5.000000e-01
  %9373 = fadd fast float %9370, -5.000000e-01
  %9374 = fmul fast float %9372, 0xBFD5555560000000
  %9375 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9373, float %9374)  ; FMad(a,b,c)
  %9376 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9369, float 0.000000e+00)  ; FMad(a,b,c)
  %9377 = fadd fast float %9376, %9371
  %9378 = fmul fast float %9372, -7.500000e-01
  %9379 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9373, float %9378)  ; FMad(a,b,c)
  %9380 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9369, float 0.000000e+00)  ; FMad(a,b,c)
  %9381 = fadd fast float %9380, %9371
  %9382 = call float @dx.op.binary.f32(i32 35, float %9375, float -1.000000e+00)  ; FMax(a,b)
  %9383 = call float @dx.op.binary.f32(i32 35, float %9377, float -1.000000e+00)  ; FMax(a,b)
  %9384 = call float @dx.op.binary.f32(i32 35, float %9379, float -1.000000e+00)  ; FMax(a,b)
  %9385 = call float @dx.op.binary.f32(i32 35, float %9381, float -1.000000e+00)  ; FMax(a,b)
  %9386 = call float @dx.op.binary.f32(i32 36, float %9382, float 1.000000e+00)  ; FMin(a,b)
  %9387 = call float @dx.op.binary.f32(i32 36, float %9383, float 1.000000e+00)  ; FMin(a,b)
  %9388 = call float @dx.op.binary.f32(i32 36, float %9384, float 1.000000e+00)  ; FMin(a,b)
  %9389 = call float @dx.op.binary.f32(i32 36, float %9385, float 1.000000e+00)  ; FMin(a,b)
  %9390 = fcmp fast olt float %9386, 0x3FEFFF8020000000
  br i1 %9390, label %9391, label %9506, !dx.controlflow.hints !183

; <label>:9391                                    ; preds = %9358
  %9392 = extractvalue %dx.types.CBufRet.f32 %9274, 3
  %9393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9394 = extractvalue %dx.types.CBufRet.f32 %9393, 0
  %9395 = extractvalue %dx.types.CBufRet.f32 %9393, 1
  %9396 = extractvalue %dx.types.CBufRet.f32 %9393, 2
  %9397 = extractvalue %dx.types.CBufRet.f32 %9393, 3
  %9398 = fsub fast float %9394, %9386
  %9399 = fsub fast float %9395, %9387
  %9400 = fsub fast float %9396, %9388
  %9401 = fsub fast float %9397, %9389
  %9402 = fmul fast float %9398, %9392
  %9403 = fmul fast float %9399, %9392
  %9404 = fmul fast float %9400, %9392
  %9405 = fmul fast float %9401, %9392
  %9406 = fadd fast float %9402, %9386
  %9407 = fadd fast float %9403, %9387
  %9408 = fsub fast float -0.000000e+00, %9407
  %9409 = fadd fast float %9404, %9388
  %9410 = fadd fast float %9405, %9389
  %9411 = fmul fast float %9406, %9406
  %9412 = fsub fast float %9407, %9411
  %9413 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9412)  ; FMax(a,b)
  %9414 = fdiv fast float 1.000000e+00, %9413
  %9415 = fmul fast float %9407, %9406
  %9416 = fsub fast float %9409, %9415
  %9417 = fsub fast float %9366, %9406
  %9418 = fmul fast float %9366, %9366
  %9419 = fsub fast float %9418, %9407
  %9420 = fmul fast float %9417, %9414
  %9421 = fmul fast float %9420, %9416
  %9422 = fsub fast float %9419, %9421
  %9423 = fmul fast float %9407, %9407
  %9424 = fsub fast float %9410, %9423
  %9425 = fmul fast float %9416, %9416
  %9426 = fmul fast float %9425, %9414
  %9427 = fsub fast float %9424, %9426
  %9428 = fdiv fast float %9422, %9427
  %9429 = fmul fast float %9416, %9428
  %9430 = fsub fast float %9417, %9429
  %9431 = fmul fast float %9430, %9414
  %9432 = fmul fast float %9431, %9406
  %9433 = fsub fast float 1.000000e+00, %9432
  %9434 = fmul fast float %9407, %9428
  %9435 = fsub fast float %9433, %9434
  %9436 = fmul fast float %9431, %9431
  %9437 = fmul fast float %9428, 4.000000e+00
  %9438 = fmul fast float %9437, %9435
  %9439 = fsub fast float %9436, %9438
  %9440 = call float @dx.op.unary.f32(i32 24, float %9439)  ; Sqrt(value)
  %9441 = fcmp fast oge float %9431, 0.000000e+00
  %9442 = fsub fast float -0.000000e+00, %9440
  %9443 = select i1 %9441, float %9442, float %9440
  %9444 = fsub fast float %9443, %9431
  %9445 = fdiv fast float %9444, %9428
  %9446 = fdiv fast float %9435, %9444
  %9447 = fmul fast float %9445, 5.000000e-01
  %9448 = fmul fast float %9446, 2.000000e+00
  %9449 = select i1 %9441, float %9447, float %9448
  %9450 = select i1 %9441, float %9448, float %9447
  %9451 = call float @dx.op.binary.f32(i32 35, float %9449, float %9450)  ; FMax(a,b)
  %9452 = call float @dx.op.binary.f32(i32 36, float %9449, float %9450)  ; FMin(a,b)
  %9453 = fcmp fast ogt float %9366, %9452
  br i1 %9453, label %9454, label %9464

; <label>:9454                                    ; preds = %9391
  %9455 = fsub fast float %9366, %9452
  %9456 = fsub fast float %9451, %9452
  %9457 = fmul fast float %9455, %9456
  %9458 = fmul fast float %9451, %9366
  %9459 = fadd fast float %9451, %9366
  %9460 = fmul fast float %9459, %9406
  %9461 = fadd fast float %9458, %9407
  %9462 = fsub fast float %9461, %9460
  %9463 = fdiv fast float %9462, %9457
  br label %9464

; <label>:9464                                    ; preds = %9454, %9391
  %9465 = phi float [ %9463, %9454 ], [ 0.000000e+00, %9391 ]
  %9466 = fcmp fast ogt float %9366, %9451
  %9467 = fsub fast float %9366, %9451
  br i1 %9466, label %9468, label %9478

; <label>:9468                                    ; preds = %9464
  %9469 = fsub fast float %9451, %9452
  %9470 = fmul fast float %9469, %9467
  %9471 = fmul fast float %9452, %9366
  %9472 = fadd fast float %9452, %9366
  %9473 = fmul fast float %9472, %9406
  %9474 = fsub fast float %9408, %9471
  %9475 = fadd fast float %9474, %9473
  %9476 = fdiv fast float %9475, %9470
  %9477 = fadd fast float %9476, %9465
  br label %9478

; <label>:9478                                    ; preds = %9468, %9464
  %9479 = phi float [ %9477, %9468 ], [ %9465, %9464 ]
  %9480 = fsub fast float %9366, %9452
  %9481 = fmul fast float %9480, %9467
  %9482 = fmul fast float %9452, %9451
  %9483 = fadd fast float %9452, %9451
  %9484 = fmul fast float %9483, %9406
  %9485 = fadd fast float %9482, %9407
  %9486 = fsub fast float %9485, %9484
  %9487 = fdiv fast float %9486, %9481
  %9488 = call float @dx.op.unary.f32(i32 7, float %9479)  ; Saturate(value)
  %9489 = fcmp fast oeq float %8157, 0.000000e+00
  %9490 = extractvalue %dx.types.CBufRet.f32 %9274, 0
  %9491 = fcmp fast oeq float %9490, 0.000000e+00
  %9492 = or i1 %9489, %9491
  %9493 = fmul fast float %9490, 2.000000e+00
  %9494 = fadd fast float %9275, %9276
  %9495 = fdiv fast float %9494, %9493
  %9496 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9497 = fmul fast float %9496, 2.000000e+00
  %9498 = fsub fast float 3.000000e+00, %9497
  %9499 = fmul fast float %9496, %9496
  %9500 = fmul fast float %9499, %9498
  %9501 = select i1 %9492, float 1.000000e+00, float %9500
  %9502 = fmul fast float %9487, %8157
  %9503 = fadd fast float %9488, %9502
  %9504 = call float @dx.op.unary.f32(i32 7, float %9503)  ; Saturate(value)
  %9505 = fmul fast float %9501, %9504
  br label %9506

; <label>:9506                                    ; preds = %9478, %9358
  %9507 = phi float [ %9505, %9478 ], [ 0.000000e+00, %9358 ]
  %9508 = fsub fast float 1.000000e+00, %9507
  %9509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9228, float %9229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9510 = extractvalue %dx.types.ResRet.f32 %9509, 0
  %9511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.i32 %9511, 2
  %9513 = icmp eq i32 %9512, 0
  br i1 %9513, label %9519, label %9514

; <label>:9514                                    ; preds = %9506
  %9515 = call float @dx.op.unary.f32(i32 7, float %9507)  ; Saturate(value)
  %9516 = fadd fast float %9510, -1.000000e+00
  %9517 = fmul fast float %9515, %9516
  %9518 = fadd fast float %9517, 1.000000e+00
  br label %9519

; <label>:9519                                    ; preds = %9514, %9506
  %9520 = phi float [ %9518, %9514 ], [ %9508, %9506 ]
  br i1 %9282, label %9521, label %9539

; <label>:9521                                    ; preds = %9519
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 1
  %9524 = fsub fast float %9359, %9523
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = fsub fast float %9359, %9281
  %9527 = call float @dx.op.unary.f32(i32 7, float %9526)  ; Saturate(value)
  %9528 = fsub fast float %9525, %9527
  %9529 = fsub fast float %9361, %9527
  %9530 = fdiv fast float %9529, %9528
  %9531 = call float @dx.op.unary.f32(i32 7, float %9530)  ; Saturate(value)
  %9532 = fmul fast float %9531, 2.000000e+00
  %9533 = fsub fast float 3.000000e+00, %9532
  %9534 = fsub fast float %9510, %9520
  %9535 = fmul fast float %9531, %9531
  %9536 = fmul fast float %9535, %9534
  %9537 = fmul fast float %9536, %9533
  %9538 = fadd fast float %9537, %9520
  br label %9539

; <label>:9539                                    ; preds = %9521, %9519
  %9540 = phi float [ %9538, %9521 ], [ %9520, %9519 ]
  %9541 = call float @dx.op.binary.f32(i32 35, float %9510, float %9540)  ; FMax(a,b)
  %9542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9543 = extractvalue %dx.types.CBufRet.i32 %9542, 2
  %9544 = and i32 %9543, 1
  %9545 = icmp eq i32 %9544, 0
  %9546 = fcmp fast une float %9541, 1.000000e+00
  %9547 = and i1 %9546, %9545
  br i1 %9547, label %9548, label %9567

; <label>:9548                                    ; preds = %9539
  %9549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9228, float %9229, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9550 = extractvalue %dx.types.ResRet.f32 %9549, 0
  %9551 = extractvalue %dx.types.ResRet.f32 %9549, 1
  %9552 = extractvalue %dx.types.ResRet.f32 %9549, 2
  %9553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9554 = extractvalue %dx.types.CBufRet.f32 %9553, 1
  %9555 = fmul fast float %9554, %9550
  %9556 = fmul fast float %9554, %9551
  %9557 = fmul fast float %9554, %9552
  %9558 = fcmp fast ogt float %9510, 0x3FEFFF2E40000000
  %9559 = fsub fast float 1.000000e+00, %9541
  %9560 = fsub fast float 1.000000e+00, %9510
  %9561 = fdiv fast float %9559, %9560
  %9562 = call float @dx.op.unary.f32(i32 7, float %9561)  ; Saturate(value)
  %9563 = select i1 %9558, float 0.000000e+00, float %9562
  %9564 = fmul fast float %9555, %9563
  %9565 = fmul fast float %9556, %9563
  %9566 = fmul fast float %9557, %9563
  br label %9567

; <label>:9567                                    ; preds = %9548, %9539
  %9568 = phi float [ 0.000000e+00, %9539 ], [ %9564, %9548 ]
  %9569 = phi float [ 0.000000e+00, %9539 ], [ %9565, %9548 ]
  %9570 = phi float [ 0.000000e+00, %9539 ], [ %9566, %9548 ]
  %9571 = fmul fast float %9568, %8145
  %9572 = fmul fast float %9569, %8145
  %9573 = fmul fast float %9570, %8145
  %9574 = fmul fast float %9541, %9203
  %9575 = call float @dx.op.dot3.f32(i32 55, float %9541, float %9541, float %9541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9576 = call float @dx.op.dot3.f32(i32 55, float %9571, float %9572, float %9573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9577 = select i1 %260, float %9575, float %9541
  %9578 = select i1 %260, float 1.000000e+00, float %9541
  %9579 = select i1 %260, float %9576, float %9571
  %9580 = select i1 %260, float 0.000000e+00, float %9572
  %9581 = select i1 %260, float 0.000000e+00, float %9573
  %9582 = fmul fast float %9577, %9215
  %9583 = fmul fast float %9577, %9216
  %9584 = fmul fast float %9578, %9217
  %9585 = fadd fast float %9582, %9579
  %9586 = fadd fast float %9583, %9580
  %9587 = fadd fast float %9581, %9584
  %9588 = fmul fast float %9577, %9218
  %9589 = fmul fast float %9577, %9219
  %9590 = fmul fast float %9578, %9220
  br label %9591

; <label>:9591                                    ; preds = %9567, %9224, %9193, %8425
  %9592 = phi float [ %8430, %8425 ], [ %9215, %9193 ], [ %9585, %9567 ], [ %9215, %9224 ]
  %9593 = phi float [ %8431, %8425 ], [ %9216, %9193 ], [ %9586, %9567 ], [ %9216, %9224 ]
  %9594 = phi float [ %8432, %8425 ], [ %9217, %9193 ], [ %9587, %9567 ], [ %9217, %9224 ]
  %9595 = phi float [ %8433, %8425 ], [ %9218, %9193 ], [ %9588, %9567 ], [ %9218, %9224 ]
  %9596 = phi float [ %8434, %8425 ], [ %9219, %9193 ], [ %9589, %9567 ], [ %9219, %9224 ]
  %9597 = phi float [ %8435, %8425 ], [ %9220, %9193 ], [ %9590, %9567 ], [ %9220, %9224 ]
  %9598 = phi float [ %8436, %8425 ], [ %9203, %9193 ], [ %9574, %9567 ], [ %9203, %9224 ]
  %9599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.f32 %9599, 2
  %9601 = extractvalue %dx.types.CBufRet.f32 %9599, 3
  %9602 = fmul fast float %9600, %114
  %9603 = fmul fast float %9601, %115
  %9604 = call float @dx.op.unary.f32(i32 7, float %9602)  ; Saturate(value)
  %9605 = call float @dx.op.unary.f32(i32 7, float %9603)  ; Saturate(value)
  %9606 = select i1 %8167, i32 2, i32 0
  %9607 = or i32 %9606, 1
  %9608 = uitofp i32 %9607 to float
  %9609 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9604, float %9605, float %9608, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9610 = extractvalue %dx.types.ResRet.f32 %9609, 0
  %9611 = extractvalue %dx.types.ResRet.f32 %9609, 1
  %9612 = extractvalue %dx.types.ResRet.f32 %9609, 2
  %9613 = extractvalue %dx.types.ResRet.f32 %9609, 3
  %9614 = add nuw nsw i32 %9606, 2
  %9615 = uitofp i32 %9614 to float
  %9616 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9604, float %9605, float %9615, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9617 = extractvalue %dx.types.ResRet.f32 %9616, 0
  %9618 = extractvalue %dx.types.ResRet.f32 %9616, 1
  %9619 = extractvalue %dx.types.ResRet.f32 %9616, 2
  %9620 = extractvalue %dx.types.ResRet.f32 %9616, 3
  %9621 = call float @dx.op.binary.f32(i32 35, float %9611, float %9612)  ; FMax(a,b)
  %9622 = call float @dx.op.binary.f32(i32 35, float %9610, float %9621)  ; FMax(a,b)
  %9623 = call float @dx.op.binary.f32(i32 35, float %9622, float %9613)  ; FMax(a,b)
  %9624 = call float @dx.op.binary.f32(i32 36, float %9618, float %9619)  ; FMin(a,b)
  %9625 = call float @dx.op.binary.f32(i32 36, float %9617, float %9624)  ; FMin(a,b)
  %9626 = call float @dx.op.binary.f32(i32 36, float %9625, float %9620)  ; FMin(a,b)
  %9627 = fmul fast float %9623, 2.550000e+02
  %9628 = fadd fast float %9627, 0x3F70101020000000
  %9629 = fptoui float %9628 to i32
  %9630 = fmul fast float %9626, 2.550000e+02
  %9631 = fadd fast float %9630, 0x3F70101020000000
  %9632 = fptoui float %9631 to i32
  %9633 = icmp ult i32 %9629, %9632
  br i1 %9633, label %9634, label %9803

; <label>:9634                                    ; preds = %9591
  %9635 = fcmp fast ogt float %100, 9.843750e-01
  %9636 = fadd fast float %8429, -4.000000e+00
  %9637 = select i1 %9635, float -4.000000e+00, float %9636
  %9638 = call float @dx.op.binary.f32(i32 35, float %9637, float 0.000000e+00)  ; FMax(a,b)
  %9639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9640 = extractvalue %dx.types.CBufRet.f32 %9639, 0
  %9641 = fadd fast float %9640, %9638
  %9642 = extractvalue %dx.types.CBufRet.f32 %9639, 2
  %9643 = fmul fast float %9641, %9642
  %9644 = call float @dx.op.unary.f32(i32 23, float %9643)  ; Log(value)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9639, 3
  %9646 = fmul fast float %9645, %9644
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 2
  %9649 = fmul fast float %9646, %9648
  %9650 = call float @dx.op.unary.f32(i32 7, float %9649)  ; Saturate(value)
  %9651 = uitofp i32 %9629 to float
  %9652 = uitofp i32 %9632 to float
  %9653 = fadd fast float %9651, 5.000000e-01
  %9654 = fadd fast float %9652, 5.000000e-01
  %9655 = fmul fast float %9648, %9653
  %9656 = fmul fast float %9648, %9654
  %9657 = fadd fast float %9655, 0x3F0FFB4800000000
  %9658 = fadd fast float %9656, 0xBF0FFB4800000000
  %9659 = call float @dx.op.binary.f32(i32 35, float %9650, float %9657)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 36, float %9659, float %9658)  ; FMin(a,b)
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 1
  %9663 = extractvalue %dx.types.CBufRet.f32 %9661, 2
  %9664 = extractvalue %dx.types.CBufRet.f32 %9661, 0
  %9665 = select i1 %8167, float %9664, float 0.000000e+00
  %9666 = fmul fast float %9662, %9660
  %9667 = fadd fast float %9665, %9666
  %9668 = fadd fast float %9665, %9663
  %9669 = fsub fast float %9662, %9663
  %9670 = fadd fast float %9669, %9665
  %9671 = call float @dx.op.binary.f32(i32 35, float %9667, float %9668)  ; FMax(a,b)
  %9672 = call float @dx.op.binary.f32(i32 36, float %9671, float %9670)  ; FMin(a,b)
  %9673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9604, float %9605, float %9672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9674 = extractvalue %dx.types.ResRet.f32 %9673, 0
  %9675 = extractvalue %dx.types.ResRet.f32 %9673, 1
  %9676 = extractvalue %dx.types.ResRet.f32 %9673, 2
  %9677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9678 = extractvalue %dx.types.CBufRet.i32 %9677, 0
  %9679 = extractvalue %dx.types.CBufRet.i32 %9677, 1
  %9680 = uitofp i32 %9678 to float
  %9681 = uitofp i32 %9679 to float
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 0
  %9684 = extractvalue %dx.types.CBufRet.f32 %9682, 1
  %9685 = fmul fast float %9680, %9604
  %9686 = fmul fast float %9681, %9605
  %9687 = fadd fast float %9685, -5.000000e-01
  %9688 = fadd fast float %9686, -5.000000e-01
  %9689 = call float @dx.op.unary.f32(i32 22, float %9687)  ; Frc(value)
  %9690 = call float @dx.op.unary.f32(i32 22, float %9688)  ; Frc(value)
  %9691 = fmul fast float %9689, %9689
  %9692 = fmul fast float %9691, %9689
  %9693 = fsub fast float 3.000000e+00, %9689
  %9694 = fmul fast float %9691, %9693
  %9695 = fmul fast float %9689, 3.000000e+00
  %9696 = fmul fast float %9692, 3.000000e+00
  %9697 = fmul fast float %9691, 6.000000e+00
  %9698 = fsub fast float %9696, %9697
  %9699 = fadd fast float %9698, 4.000000e+00
  %9700 = fmul fast float %9699, 0x3FC5555560000000
  %9701 = fmul fast float %9692, -3.000000e+00
  %9702 = fadd fast float %9691, %9689
  %9703 = fmul fast float %9702, 3.000000e+00
  %9704 = fadd fast float %9701, 1.000000e+00
  %9705 = fadd fast float %9704, %9703
  %9706 = fmul fast float %9692, 0x3FC5555560000000
  %9707 = fmul fast float %9690, %9690
  %9708 = fmul fast float %9707, %9690
  %9709 = fsub fast float 3.000000e+00, %9690
  %9710 = fmul fast float %9707, %9709
  %9711 = fmul fast float %9690, 3.000000e+00
  %9712 = fmul fast float %9708, 3.000000e+00
  %9713 = fmul fast float %9707, 6.000000e+00
  %9714 = fsub fast float %9712, %9713
  %9715 = fadd fast float %9714, 4.000000e+00
  %9716 = fmul fast float %9715, 0x3FC5555560000000
  %9717 = fmul fast float %9708, -3.000000e+00
  %9718 = fadd fast float %9707, %9690
  %9719 = fmul fast float %9718, 3.000000e+00
  %9720 = fadd fast float %9717, 1.000000e+00
  %9721 = fadd fast float %9720, %9719
  %9722 = fmul fast float %9708, 0x3FC5555560000000
  %9723 = fadd fast float %9689, 1.000000e+00
  %9724 = fsub fast float 1.000000e+00, %9695
  %9725 = fadd fast float %9724, %9694
  %9726 = fadd fast float %9725, %9699
  %9727 = fmul fast float %9726, 0x3FC5555560000000
  %9728 = fdiv fast float %9700, %9727
  %9729 = fsub fast float %9723, %9728
  %9730 = fsub fast float 1.000000e+00, %9689
  %9731 = fadd fast float %9705, %9692
  %9732 = fmul fast float %9731, 0x3FC5555560000000
  %9733 = fdiv fast float %9706, %9732
  %9734 = fadd fast float %9730, %9733
  %9735 = fadd fast float %9690, 1.000000e+00
  %9736 = fsub fast float 1.000000e+00, %9711
  %9737 = fadd fast float %9736, %9710
  %9738 = fadd fast float %9737, %9715
  %9739 = fmul fast float %9738, 0x3FC5555560000000
  %9740 = fdiv fast float %9716, %9739
  %9741 = fsub fast float %9735, %9740
  %9742 = fsub fast float 1.000000e+00, %9690
  %9743 = fadd fast float %9721, %9708
  %9744 = fmul fast float %9743, 0x3FC5555560000000
  %9745 = fdiv fast float %9722, %9744
  %9746 = fadd fast float %9745, %9742
  %9747 = fmul fast float %9729, %9683
  %9748 = fsub fast float %9604, %9747
  %9749 = fmul fast float %9734, %9683
  %9750 = fadd fast float %9749, %9604
  %9751 = fmul fast float %9746, %9684
  %9752 = fadd fast float %9751, %9605
  %9753 = fmul fast float %9741, %9684
  %9754 = fsub fast float %9605, %9753
  %9755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9748, float %9754, float %9672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9756 = extractvalue %dx.types.ResRet.f32 %9755, 0
  %9757 = extractvalue %dx.types.ResRet.f32 %9755, 1
  %9758 = extractvalue %dx.types.ResRet.f32 %9755, 2
  %9759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9750, float %9754, float %9672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9760 = extractvalue %dx.types.ResRet.f32 %9759, 0
  %9761 = extractvalue %dx.types.ResRet.f32 %9759, 1
  %9762 = extractvalue %dx.types.ResRet.f32 %9759, 2
  %9763 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9748, float %9752, float %9672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9764 = extractvalue %dx.types.ResRet.f32 %9763, 0
  %9765 = extractvalue %dx.types.ResRet.f32 %9763, 1
  %9766 = extractvalue %dx.types.ResRet.f32 %9763, 2
  %9767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9750, float %9752, float %9672, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9768 = extractvalue %dx.types.ResRet.f32 %9767, 0
  %9769 = extractvalue %dx.types.ResRet.f32 %9767, 1
  %9770 = extractvalue %dx.types.ResRet.f32 %9767, 2
  %9771 = fsub fast float %9764, %9756
  %9772 = fsub fast float %9765, %9757
  %9773 = fsub fast float %9766, %9758
  %9774 = fmul fast float %9771, %9744
  %9775 = fmul fast float %9772, %9744
  %9776 = fmul fast float %9773, %9744
  %9777 = fadd fast float %9774, %9756
  %9778 = fadd fast float %9775, %9757
  %9779 = fadd fast float %9776, %9758
  %9780 = fsub fast float %9768, %9760
  %9781 = fsub fast float %9769, %9761
  %9782 = fsub fast float %9770, %9762
  %9783 = fmul fast float %9780, %9744
  %9784 = fmul fast float %9781, %9744
  %9785 = fmul fast float %9782, %9744
  %9786 = fsub fast float %9760, %9777
  %9787 = fadd fast float %9786, %9783
  %9788 = fsub fast float %9761, %9778
  %9789 = fadd fast float %9788, %9784
  %9790 = fsub fast float %9762, %9779
  %9791 = fadd fast float %9790, %9785
  %9792 = fmul fast float %9787, %9732
  %9793 = fmul fast float %9789, %9732
  %9794 = fmul fast float %9791, %9732
  %9795 = fadd fast float %9792, %9777
  %9796 = fadd fast float %9793, %9778
  %9797 = fadd fast float %9794, %9779
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 1
  %9800 = fmul fast float %9795, %9799
  %9801 = fmul fast float %9796, %9799
  %9802 = fmul fast float %9797, %9799
  br label %9803

; <label>:9803                                    ; preds = %9634, %9591
  %9804 = phi float [ %9674, %9634 ], [ 1.000000e+00, %9591 ]
  %9805 = phi float [ %9675, %9634 ], [ 1.000000e+00, %9591 ]
  %9806 = phi float [ %9676, %9634 ], [ 1.000000e+00, %9591 ]
  %9807 = phi float [ %9800, %9634 ], [ 0.000000e+00, %9591 ]
  %9808 = phi float [ %9801, %9634 ], [ 0.000000e+00, %9591 ]
  %9809 = phi float [ %9802, %9634 ], [ 0.000000e+00, %9591 ]
  %9810 = fmul fast float %9807, %8145
  %9811 = fmul fast float %9808, %8145
  %9812 = fmul fast float %9809, %8145
  %9813 = fmul fast float %9804, %9598
  %9814 = call float @dx.op.dot3.f32(i32 55, float %9804, float %9805, float %9806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9815 = call float @dx.op.dot3.f32(i32 55, float %9810, float %9811, float %9812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9816 = select i1 %260, float %9814, float %9804
  %9817 = select i1 %260, float %9814, float %9805
  %9818 = select i1 %260, float 1.000000e+00, float %9806
  %9819 = select i1 %260, float %9815, float %9810
  %9820 = select i1 %260, float 0.000000e+00, float %9811
  %9821 = select i1 %260, float 0.000000e+00, float %9812
  %9822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.i32 %9822, 3
  %9824 = and i32 %9823, 3
  %9825 = icmp ne i32 %9824, 0
  %9826 = and i32 %9823, 4
  %9827 = icmp ne i32 %9826, 0
  %9828 = and i1 %9825, %9827
  %9829 = and i1 %260, %9828
  br i1 %9829, label %9830, label %9836

; <label>:9830                                    ; preds = %9803
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 1
  %9833 = fadd fast float %9813, -1.000000e+00
  %9834 = fmul fast float %9832, %9833
  %9835 = fadd fast float %9834, 1.000000e+00
  br label %9836

; <label>:9836                                    ; preds = %9830, %9803
  %9837 = phi float [ %9835, %9830 ], [ %9813, %9803 ]
  %9838 = fadd fast float %9595, %9592
  %9839 = fmul fast float %9816, %9838
  %9840 = fadd fast float %9839, %9819
  %9841 = fadd fast float %9596, %9593
  %9842 = fmul fast float %9817, %9841
  %9843 = fadd fast float %9842, %9820
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  br i1 %260, label %9846, label %9869

; <label>:9846                                    ; preds = %9836
  %9847 = fadd fast float %9840, %9843
  %9848 = fmul fast float %9845, %9847
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 3
  %9851 = extractvalue %dx.types.CBufRet.f32 %8149, 1
  %9852 = fsub fast float %8154, %8148
  %9853 = fadd fast float %9852, %8155
  %9854 = fsub fast float %9853, %9851
  %9855 = extractvalue %dx.types.CBufRet.f32 %8149, 2
  %9856 = fmul fast float %9854, %9855
  %9857 = call float @dx.op.unary.f32(i32 7, float %9856)  ; Saturate(value)
  %9858 = fsub fast float %9857, %9850
  %9859 = fmul fast float %9858, %9837
  %9860 = fadd fast float %9859, %9850
  %9861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9862 = extractvalue %dx.types.CBufRet.f32 %9861, 0
  %9863 = fsub fast float %9860, %9862
  %9864 = fmul fast float %9863, 1.000000e+01
  %9865 = call float @dx.op.unary.f32(i32 7, float %9864)  ; Saturate(value)
  %9866 = fmul fast float %9865, %8144
  %9867 = fadd fast float %9866, %8145
  %9868 = fmul fast float %9867, %9860
  br label %9893

; <label>:9869                                    ; preds = %9836
  %9870 = fadd fast float %9597, %9594
  %9871 = fmul fast float %9818, %9870
  %9872 = fadd fast float %9871, %9821
  %9873 = fmul fast float %9845, %9840
  %9874 = fmul fast float %9845, %9843
  %9875 = fmul fast float %9845, %9872
  %9876 = call float @dx.op.binary.f32(i32 35, float %9874, float %9875)  ; FMax(a,b)
  %9877 = call float @dx.op.binary.f32(i32 35, float %9873, float %9876)  ; FMax(a,b)
  %9878 = call float @dx.op.binary.f32(i32 35, float %9877, float %8145)  ; FMax(a,b)
  %9879 = fcmp fast ugt float %9878, 0x3F10000000000000
  br i1 %9879, label %9881, label %9880

; <label>:9880                                    ; preds = %9869
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9881

; <label>:9881                                    ; preds = %9880, %9869
  %9882 = add i32 %60, 356
  %9883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9882, i32 undef)  ; BufferLoad(srv,index,wot)
  %9884 = extractvalue %dx.types.ResRet.i32 %9883, 0
  %9885 = and i32 %9884, 32
  %9886 = icmp eq i32 %9885, 0
  br i1 %9886, label %9893, label %9887

; <label>:9887                                    ; preds = %9881
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 0
  %9890 = fmul fast float %9889, 0x3FE99999A0000000
  %9891 = fadd fast float %9889, %9873
  %9892 = fadd fast float %9890, %9875
  br label %9893

; <label>:9893                                    ; preds = %9887, %9881, %9846
  %9894 = phi float [ %9848, %9846 ], [ %9891, %9887 ], [ %9873, %9881 ]
  %9895 = phi float [ %9868, %9846 ], [ %9874, %9887 ], [ %9874, %9881 ]
  %9896 = phi float [ %9867, %9846 ], [ %9892, %9887 ], [ %9875, %9881 ]
  %9897 = phi float [ %9867, %9846 ], [ %8145, %9887 ], [ %8145, %9881 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 3.225500e+04)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9895, float 3.225500e+04)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 36, float %9896, float 3.225500e+04)  ; FMin(a,b)
  %9901 = call float @dx.op.binary.f32(i32 36, float %9897, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9898)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9899)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9900)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9901)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

