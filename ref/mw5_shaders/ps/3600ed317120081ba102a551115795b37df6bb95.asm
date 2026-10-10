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
; shader hash: c34a783525b2e4c9ccfa23f27e2dda86
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
  %204 = add i32 %60, 360
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = extractvalue %dx.types.ResRet.i32 %205, 2
  %209 = extractvalue %dx.types.ResRet.i32 %205, 3
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %121
  %217 = fmul fast float %215, %122
  %218 = fmul fast float %215, %123
  %219 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %220, %201
  %222 = fmul fast float %220, %202
  %223 = fmul fast float %220, %203
  %224 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fmul fast float %224, %224
  %226 = fmul fast float %225, %212
  %227 = fadd fast float %226, %213
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fmul fast float %230, %219
  %232 = fsub fast float %210, %231
  %233 = fmul fast float %232, %211
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, %228
  %236 = fmul fast float %114, 5.000000e-01
  %237 = fmul fast float %115, 5.000000e-01
  %238 = fptosi float %236 to i32
  %239 = fptosi float %237 to i32
  %240 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 18
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F4C00EBA0000000
  %245 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %246 = fadd fast float %245, -1.000000e+00
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = sitofp i32 %248 to float
  %250 = extractvalue %dx.types.Dimensions %247, 1
  %251 = sitofp i32 %250 to float
  %252 = fcmp fast oge float %236, %249
  %253 = fcmp fast oge float %237, %251
  %254 = or i1 %252, %253
  %255 = select i1 %254, float 0x4197782600000000, float %246
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %259 = fmul fast float %257, %114
  %260 = fmul fast float %258, %115
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 114688
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, float %259, float 0.000000e+00
  %266 = select i1 %264, float %260, float 0.000000e+00
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %55, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fmul fast float %268, 2.550000e+02
  %270 = fptoui float %269 to i32
  %271 = select i1 %264, i32 %270, i32 0
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 3
  %274 = and i32 %273, 3
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %273, 4
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %275, %277
  br i1 %278, label %279, label %288

; <label>:279                                     ; preds = %0
  %280 = fmul fast float %149, %115
  %281 = fmul fast float %148, %114
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %54, float %281, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fsub fast float 1.000000e+00, %283
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = fcmp fast olt float %284, %286
  br label %291

; <label>:288                                     ; preds = %0
  %289 = icmp eq i32 %276, 0
  %290 = and i1 %275, %289
  br label %291

; <label>:291                                     ; preds = %288, %279
  %292 = phi i1 [ %287, %279 ], [ %290, %288 ]
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = fmul fast float %294, 0x3FE3C6EF40000000
  %296 = frem fast float %114, 2.560000e+02
  %297 = frem fast float %115, 2.560000e+02
  %298 = fptoui float %296 to i32
  %299 = fptoui float %297 to i32
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fadd fast float %301, %295
  %303 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %304 = add i32 %60, 156
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %60, 216
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %60, 36
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %60, 288
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %60, 172
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %60, 232
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %60, 52
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %60, 304
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %60, 188
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %60, 248
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %60, 68
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %60, 320
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %60, 204
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = shl i32 %432, 4
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %432, 7
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %432, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = add i32 %60, 264
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = lshr i32 %444, 8
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F70101020000000
  %452 = lshr i32 %444, 16
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = add i32 %60, 84
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %60, 336
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = fmul fast float %467, 0x3F50624DE0000000
  %471 = fmul fast float %469, 0x3F50624DE0000000
  %472 = add i32 %60, 348
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 32
  %476 = icmp eq i32 %475, 0
  %477 = and i32 %474, 64
  %478 = icmp eq i32 %477, 0
  %479 = and i32 %474, 128
  %480 = icmp eq i32 %479, 0
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 2
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %500, label %485

; <label>:485                                     ; preds = %291
  %486 = add i32 %60, 520
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %488, 0
  %490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %490, %dx.types.Handle %111, float %92, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = fmul fast float %495, %94
  %497 = fmul fast float %492, %95
  %498 = fmul fast float %493, %96
  %499 = fmul fast float %494, %97
  br label %500

; <label>:500                                     ; preds = %485, %291
  %501 = phi float [ %97, %291 ], [ %499, %485 ]
  %502 = phi float [ %96, %291 ], [ %498, %485 ]
  %503 = phi float [ %95, %291 ], [ %497, %485 ]
  %504 = phi float [ %94, %291 ], [ %496, %485 ]
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 2
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %528, label %509

; <label>:509                                     ; preds = %500
  %510 = add i32 %60, 44
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 1
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %503, float 1.000000e+00
  %516 = add i32 %60, 60
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 1
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %502, float 1.000000e+00
  %522 = add i32 %60, 76
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %526, float %501, float 1.000000e+00
  br label %528

; <label>:528                                     ; preds = %509, %500
  %529 = phi float [ %501, %500 ], [ %527, %509 ]
  %530 = phi float [ %502, %500 ], [ %521, %509 ]
  %531 = phi float [ %503, %500 ], [ %515, %509 ]
  %532 = lshr i32 %506, 20
  %533 = and i32 %532, 3
  %534 = add nuw nsw i32 %533, 1
  %535 = add i32 %60, 24
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %60, 28
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = or i32 %540, %537
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %1077, label %543

; <label>:543                                     ; preds = %528
  %544 = and i32 %537, 262144
  %545 = icmp ne i32 %544, 0
  %546 = select i1 %545, float %65, float 1.000000e+00
  %547 = select i1 %545, float %66, float 0.000000e+00
  %548 = select i1 %545, float %67, float 0.000000e+00
  %549 = select i1 %545, float %68, float 1.000000e+00
  %550 = select i1 %545, float %69, float %92
  %551 = select i1 %545, float %70, float %93
  %552 = add i32 %60, 284
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = fmul fast float %556, 0x3F50624DE0000000
  %558 = add i32 %60, 88
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 16
  %562 = and i32 %561, 255
  %563 = lshr i32 %560, 24
  %564 = add i32 %60, 292
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 65535
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %566, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = add i32 %60, 32
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = shl i32 %573, 4
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %573, 7
  %581 = and i32 %580, 32752
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %585 = fmul fast float %584, 1.000000e+03
  %586 = fmul fast float %344, %585
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = fadd fast float %587, %334
  %589 = fmul fast float %345, %585
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = fadd fast float %590, %336
  %592 = fmul fast float %557, %585
  %593 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  %594 = fmul fast float %593, 0x401921FB60000000
  %595 = fadd fast float %594, %576
  %596 = call float @dx.op.unary.f32(i32 13, float %595)  ; Sin(value)
  %597 = call float @dx.op.unary.f32(i32 12, float %595)  ; Cos(value)
  %598 = fsub fast float -0.000000e+00, %596
  %599 = fadd fast float %550, -5.000000e-01
  %600 = fadd fast float %551, -5.000000e-01
  %601 = fmul fast float %568, %599
  %602 = fmul fast float %570, %600
  %603 = fadd fast float %601, 5.000000e-01
  %604 = fadd fast float %602, 5.000000e-01
  %605 = fmul fast float %579, %603
  %606 = fmul fast float %582, %604
  %607 = fmul fast float %597, %605
  %608 = call float @dx.op.tertiary.f32(i32 46, float %598, float %606, float %607)  ; FMad(a,b,c)
  %609 = fmul fast float %596, %605
  %610 = call float @dx.op.tertiary.f32(i32 46, float %597, float %606, float %609)  ; FMad(a,b,c)
  %611 = fadd fast float %588, %608
  %612 = fadd fast float %591, %610
  %613 = icmp ugt i32 %562, 1
  %614 = icmp ugt i32 %560, 33554431
  %615 = or i1 %614, %613
  br i1 %615, label %616, label %641

; <label>:616                                     ; preds = %543
  %617 = add i32 %60, 228
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = fmul fast float %584, %621
  %623 = call float @dx.op.unary.f32(i32 22, float %622)  ; Frc(value)
  %624 = mul nuw nsw i32 %562, %563
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %623, %625
  %627 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %628 = fptoui float %627 to i32
  %629 = urem i32 %628, %562
  %630 = udiv i32 %628, %563
  %631 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %632 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %633 = uitofp i32 %629 to float
  %634 = uitofp i32 %630 to float
  %635 = fadd fast float %631, %633
  %636 = fadd fast float %632, %634
  %637 = uitofp i32 %562 to float
  %638 = uitofp i32 %563 to float
  %639 = fdiv fast float %635, %637
  %640 = fdiv fast float %636, %638
  br label %641

; <label>:641                                     ; preds = %616, %543
  %642 = phi float [ %639, %616 ], [ %611, %543 ]
  %643 = phi float [ %640, %616 ], [ %612, %543 ]
  %644 = and i32 %537, 256
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %692, label %646

; <label>:646                                     ; preds = %641
  %647 = add i32 %60, 472
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %111, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = add i32 %60, 100
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = shl i32 %656, 4
  %658 = and i32 %657, 32752
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %656, 7
  %661 = and i32 %660, 32752
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = fsub fast float 1.000000e+00, %504
  %664 = call float @dx.op.binary.f32(i32 35, float %663, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %665 = bitcast float %504 to i32
  %666 = sitofp i32 %665 to float
  %667 = fadd fast float %666, 0xC1CFBF8940000000
  %668 = fmul fast float %662, %667
  %669 = fadd fast float %668, 0x41CFBF8940000000
  %670 = fptosi float %669 to i32
  %671 = bitcast i32 %670 to float
  %672 = bitcast float %664 to i32
  %673 = sitofp i32 %672 to float
  %674 = fadd fast float %673, 0xC1CFBF8940000000
  %675 = fmul fast float %674, %662
  %676 = fadd fast float %675, 0x41CFBF8940000000
  %677 = fptosi float %676 to i32
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %671, %659
  %680 = fmul fast float %678, %659
  %681 = fsub fast float %664, %679
  %682 = fadd fast float %680, %664
  %683 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %684 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %685 = fsub fast float %653, %683
  %686 = fsub fast float %684, %683
  %687 = bitcast float %686 to i32
  %688 = sub nsw i32 2129859010, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %689, %685
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  br label %692

; <label>:692                                     ; preds = %646, %641
  %693 = phi float [ %691, %646 ], [ %504, %641 ]
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 128
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %714, label %698

; <label>:698                                     ; preds = %692
  %699 = add i32 %60, 456
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %111, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 524288
  %709 = icmp ne i32 %708, 0
  %710 = fcmp fast ogt float %705, 0x3FE0101020000000
  %711 = select i1 %710, float 1.000000e+00, float 0.000000e+00
  %712 = select i1 %709, float %711, float %705
  %713 = fmul fast float %712, %693
  br label %714

; <label>:714                                     ; preds = %698, %692
  %715 = phi float [ %713, %698 ], [ %693, %692 ]
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 16
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %918, label %720

; <label>:720                                     ; preds = %714
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %60, 408
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %110, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = and i32 %722, 255
  %734 = uitofp i32 %733 to float
  %735 = lshr i32 %722, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %732, %734
  %739 = fadd fast float %738, %737
  %740 = fmul fast float %739, 0x3F70101000000000
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 512
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %753, label %745

; <label>:745                                     ; preds = %720
  %746 = add i32 %60, 488
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %111, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  br label %753

; <label>:753                                     ; preds = %745, %720
  %754 = phi float [ %752, %745 ], [ 1.000000e+00, %720 ]
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 33554432
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %865, label %759

; <label>:759                                     ; preds = %753
  %760 = add i32 %60, 224
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 65535
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %762, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = add i32 %60, 228
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %788 = add i32 %60, 220
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 24
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = and i32 %790, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101020000000
  %797 = lshr i32 %790, 8
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %790, 16
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = bitcast float %729 to i32
  %806 = ashr i32 %805, 1
  %807 = sub nsw i32 1597463174, %806
  %808 = bitcast i32 %807 to float
  %809 = fmul fast float %729, 5.000000e-01
  %810 = fmul fast float %808, %808
  %811 = fmul fast float %810, %809
  %812 = fsub fast float 1.500000e+00, %811
  %813 = fmul fast float %808, %729
  %814 = fmul fast float %813, %812
  %815 = bitcast float %730 to i32
  %816 = ashr i32 %815, 1
  %817 = sub nsw i32 1597463174, %816
  %818 = bitcast i32 %817 to float
  %819 = fmul fast float %730, 5.000000e-01
  %820 = fmul fast float %818, %818
  %821 = fmul fast float %820, %819
  %822 = fsub fast float 1.500000e+00, %821
  %823 = fmul fast float %818, %730
  %824 = fmul fast float %823, %822
  %825 = bitcast float %731 to i32
  %826 = ashr i32 %825, 1
  %827 = sub nsw i32 1597463174, %826
  %828 = bitcast i32 %827 to float
  %829 = fmul fast float %731, 5.000000e-01
  %830 = fmul fast float %828, %828
  %831 = fmul fast float %830, %829
  %832 = fsub fast float 1.500000e+00, %831
  %833 = fmul fast float %828, %731
  %834 = fmul fast float %833, %832
  %835 = fsub fast float %814, %796
  %836 = fsub fast float %824, %800
  %837 = fsub fast float %834, %804
  %838 = fmul fast float %835, %764
  %839 = fmul fast float %836, %766
  %840 = fmul fast float %837, %771
  %841 = fadd fast float %838, %779
  %842 = fadd fast float %839, %783
  %843 = fadd fast float %840, %787
  %844 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %845 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %846 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %847 = fmul fast float %844, %844
  %848 = fmul fast float %845, %845
  %849 = fmul fast float %846, %846
  %850 = fsub fast float %847, %729
  %851 = fsub fast float %848, %730
  %852 = fsub fast float %849, %731
  %853 = fmul fast float %850, %754
  %854 = fmul fast float %851, %754
  %855 = fmul fast float %852, %754
  %856 = fadd fast float %853, %729
  %857 = fadd fast float %854, %730
  %858 = fadd fast float %855, %731
  %859 = fadd fast float %776, %740
  %860 = fsub fast float %859, %793
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fsub fast float %861, %740
  %863 = fmul fast float %862, %754
  %864 = fadd fast float %863, %740
  br label %918

; <label>:865                                     ; preds = %753
  %866 = and i32 %756, 134217728
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %902, label %868

; <label>:868                                     ; preds = %865
  %869 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %870 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %871 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %872 = fadd fast float %869, -5.000000e-01
  %873 = fadd fast float %870, -5.000000e-01
  %874 = fadd fast float %871, -5.000000e-01
  %875 = fmul fast float %872, %754
  %876 = fmul fast float %873, %754
  %877 = fmul fast float %874, %754
  %878 = fadd fast float %875, 5.000000e-01
  %879 = fadd fast float %876, 5.000000e-01
  %880 = fadd fast float %877, 5.000000e-01
  %881 = call float @dx.op.unary.f32(i32 24, float %729)  ; Sqrt(value)
  %882 = call float @dx.op.unary.f32(i32 24, float %730)  ; Sqrt(value)
  %883 = call float @dx.op.unary.f32(i32 24, float %731)  ; Sqrt(value)
  %884 = fmul fast float %878, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %884
  %886 = fmul fast float %885, %881
  %887 = fadd fast float %886, %884
  %888 = fmul fast float %887, %881
  %889 = fmul fast float %879, 2.000000e+00
  %890 = fsub fast float 1.000000e+00, %889
  %891 = fmul fast float %890, %882
  %892 = fadd fast float %891, %889
  %893 = fmul fast float %892, %882
  %894 = fmul fast float %880, 2.000000e+00
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %883
  %897 = fadd fast float %896, %894
  %898 = fmul fast float %897, %883
  %899 = fmul fast float %888, %888
  %900 = fmul fast float %893, %893
  %901 = fmul fast float %898, %898
  br label %918

; <label>:902                                     ; preds = %865
  %903 = fmul fast float %321, %321
  %904 = fmul fast float %325, %325
  %905 = fmul fast float %329, %329
  %906 = fadd fast float %903, -1.000000e+00
  %907 = fadd fast float %904, -1.000000e+00
  %908 = fadd fast float %905, -1.000000e+00
  %909 = fmul fast float %754, %906
  %910 = fmul fast float %754, %907
  %911 = fmul fast float %754, %908
  %912 = fadd fast float %909, 1.000000e+00
  %913 = fadd fast float %910, 1.000000e+00
  %914 = fadd fast float %911, 1.000000e+00
  %915 = fmul fast float %912, %729
  %916 = fmul fast float %913, %730
  %917 = fmul fast float %914, %731
  br label %918

; <label>:918                                     ; preds = %902, %868, %759, %714
  %919 = phi float [ %864, %759 ], [ %740, %868 ], [ %740, %902 ], [ 0x3FA23C0BE0000000, %714 ]
  %920 = phi float [ %856, %759 ], [ %899, %868 ], [ %915, %902 ], [ 1.000000e+00, %714 ]
  %921 = phi float [ %857, %759 ], [ %900, %868 ], [ %916, %902 ], [ 1.000000e+00, %714 ]
  %922 = phi float [ %858, %759 ], [ %901, %868 ], [ %917, %902 ], [ 1.000000e+00, %714 ]
  %923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.i32 %923, 1
  %925 = and i32 %924, 1
  %926 = icmp ne i32 %925, 0
  %927 = add i32 %60, 356
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 32
  %931 = icmp ne i32 %930, 0
  %932 = and i1 %926, %931
  %933 = select i1 %932, float 1.000000e+00, float %920
  %934 = select i1 %932, float 0x3FD3333340000000, float %921
  %935 = select i1 %932, float 0x3FD3333340000000, float %922
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 32
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %1012, label %940

; <label>:940                                     ; preds = %918
  %941 = add i32 %60, 92
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %60, 424
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = add i32 %946, 0
  %948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %948, %dx.types.Handle %110, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = extractvalue %dx.types.ResRet.f32 %949, 3
  %954 = and i32 %943, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %943, 8
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %943, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101000000000
  %963 = fmul fast float %950, %955
  %964 = fadd fast float %963, %958
  %965 = fmul fast float %964, 0x3F70101000000000
  %966 = fadd fast float %951, -5.000000e-01
  %967 = fadd fast float %953, -5.000000e-01
  %968 = fmul fast float %966, %962
  %969 = fmul fast float %967, %962
  %970 = fadd fast float %968, 5.000000e-01
  %971 = fadd fast float %969, 5.000000e-01
  %972 = fmul fast float %970, 2.000000e+00
  %973 = fadd fast float %972, -1.000000e+00
  %974 = fmul fast float %971, 2.000000e+00
  %975 = fadd fast float %974, -1.000000e+00
  %976 = fadd fast float %973, %975
  %977 = fmul fast float %976, 5.000000e-01
  %978 = fsub fast float %973, %975
  %979 = fmul fast float %978, 5.000000e-01
  %980 = call float @dx.op.unary.f32(i32 6, float %977)  ; FAbs(value)
  %981 = fsub fast float 1.000000e+00, %980
  %982 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %983 = fsub fast float %981, %982
  %984 = call float @dx.op.dot3.f32(i32 55, float %977, float %979, float %983, float %977, float %979, float %983)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.unary.f32(i32 25, float %984)  ; Rsqrt(value)
  %986 = fmul fast float %977, %985
  %987 = fmul fast float %979, %985
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 67108864
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1008, label %992

; <label>:992                                     ; preds = %940
  %993 = add i32 %60, 280
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 65535
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %995, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = fsub fast float %965, %1003
  %1005 = fmul fast float %1004, %997
  %1006 = fadd fast float %1005, %1001
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  br label %1008

; <label>:1008                                    ; preds = %992, %940
  %1009 = phi float [ %1007, %992 ], [ %965, %940 ]
  %1010 = call float @dx.op.dot2.f32(i32 54, float %986, float %987, float %546, float %547)  ; Dot2(ax,ay,bx,by)
  %1011 = call float @dx.op.dot2.f32(i32 54, float %986, float %987, float %548, float %549)  ; Dot2(ax,ay,bx,by)
  br label %1012

; <label>:1012                                    ; preds = %1008, %918
  %1013 = phi float [ %1009, %1008 ], [ 0x3FD6666660000000, %918 ]
  %1014 = phi float [ %1010, %1008 ], [ 0.000000e+00, %918 ]
  %1015 = phi float [ %1011, %1008 ], [ 0.000000e+00, %918 ]
  %1016 = phi float [ %952, %1008 ], [ 1.000000e+00, %918 ]
  %1017 = add i32 %60, 160
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 22
  %1021 = shl nuw nsw i32 %1020, 5
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 64
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1060, label %1027

; <label>:1027                                    ; preds = %1012
  %1028 = add i32 %60, 440
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 131072
  %1036 = icmp eq i32 %1035, 0
  %1037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %110, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = fmul fast float %1038, %309
  %1042 = fmul fast float %1039, %312
  %1043 = fmul fast float %1040, %315
  br i1 %1036, label %1050, label %1044

; <label>:1044                                    ; preds = %1027
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = fmul fast float %1046, %1041
  %1048 = fmul fast float %1046, %1042
  %1049 = fmul fast float %1046, %1043
  br label %1050

; <label>:1050                                    ; preds = %1044, %1027
  %1051 = phi float [ %1047, %1044 ], [ %1041, %1027 ]
  %1052 = phi float [ %1048, %1044 ], [ %1042, %1027 ]
  %1053 = phi float [ %1049, %1044 ], [ %1043, %1027 ]
  %1054 = fmul fast float %1051, %1022
  %1055 = select i1 %292, float %1054, float %1051
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1052, float %1053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = select i1 %292, float 0.000000e+00, float %1051
  %1058 = select i1 %292, float %1056, float %1052
  %1059 = select i1 %292, float 0.000000e+00, float %1053
  br label %1060

; <label>:1060                                    ; preds = %1050, %1012
  %1061 = phi float [ %1057, %1050 ], [ 0.000000e+00, %1012 ]
  %1062 = phi float [ %1058, %1050 ], [ 0.000000e+00, %1012 ]
  %1063 = phi float [ %1059, %1050 ], [ 0.000000e+00, %1012 ]
  %1064 = add i32 %60, 96
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 255
  %1068 = uitofp i32 %1067 to float
  %1069 = lshr i32 %1066, 8
  %1070 = and i32 %1069, 255
  %1071 = uitofp i32 %1070 to float
  %1072 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1073 = fmul fast float %1071, %1072
  %1074 = fadd fast float %1073, %1068
  %1075 = fmul fast float %1074, 0x3F70101020000000
  %1076 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  br label %1077

; <label>:1077                                    ; preds = %1060, %528
  %1078 = phi float [ 0.000000e+00, %528 ], [ %1014, %1060 ]
  %1079 = phi float [ 0.000000e+00, %528 ], [ %1015, %1060 ]
  %1080 = phi float [ 0.000000e+00, %528 ], [ %933, %1060 ]
  %1081 = phi float [ 0.000000e+00, %528 ], [ %934, %1060 ]
  %1082 = phi float [ 0.000000e+00, %528 ], [ %935, %1060 ]
  %1083 = phi float [ 0.000000e+00, %528 ], [ %1061, %1060 ]
  %1084 = phi float [ 0.000000e+00, %528 ], [ %1062, %1060 ]
  %1085 = phi float [ 0.000000e+00, %528 ], [ %1063, %1060 ]
  %1086 = phi float [ 0.000000e+00, %528 ], [ %919, %1060 ]
  %1087 = phi float [ 0.000000e+00, %528 ], [ %715, %1060 ]
  %1088 = phi float [ 0.000000e+00, %528 ], [ %1013, %1060 ]
  %1089 = phi float [ 0.000000e+00, %528 ], [ %1016, %1060 ]
  %1090 = phi float [ 0.000000e+00, %528 ], [ %1076, %1060 ]
  br i1 %476, label %1817, label %1091

; <label>:1091                                    ; preds = %1077
  %1092 = icmp ult i32 %534, 2
  %1093 = add i32 %60, 40
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %60, 44
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = or i32 %1098, %1095
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1817, label %1101

; <label>:1101                                    ; preds = %1091
  %1102 = and i32 %1095, 262144
  %1103 = icmp ne i32 %1102, 0
  %1104 = select i1 %1103, float %65, float 1.000000e+00
  %1105 = select i1 %1103, float %66, float 0.000000e+00
  %1106 = select i1 %1103, float %67, float 0.000000e+00
  %1107 = select i1 %1103, float %68, float 1.000000e+00
  %1108 = select i1 %1103, float %69, float %92
  %1109 = select i1 %1103, float %70, float %93
  %1110 = add i32 %60, 300
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = lshr i32 %1112, 16
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fmul fast float %1114, 0x3F50624DE0000000
  %1116 = add i32 %60, 104
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = lshr i32 %1118, 16
  %1120 = and i32 %1119, 255
  %1121 = lshr i32 %1118, 24
  %1122 = add i32 %60, 308
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = and i32 %1124, 65535
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = lshr i32 %1124, 16
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = add i32 %60, 48
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = lshr i32 %1131, 22
  %1133 = shl nuw nsw i32 %1132, 5
  %1134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1133)  ; LegacyF16ToF32(value)
  %1135 = shl i32 %1131, 4
  %1136 = and i32 %1135, 32752
  %1137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1136)  ; LegacyF16ToF32(value)
  %1138 = lshr i32 %1131, 7
  %1139 = and i32 %1138, 32752
  %1140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1139)  ; LegacyF16ToF32(value)
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1143 = fmul fast float %1142, 1.000000e+03
  %1144 = fmul fast float %386, %1143
  %1145 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1146 = fadd fast float %1145, %376
  %1147 = fmul fast float %387, %1143
  %1148 = call float @dx.op.unary.f32(i32 22, float %1147)  ; Frc(value)
  %1149 = fadd fast float %1148, %378
  %1150 = fmul fast float %1115, %1143
  %1151 = call float @dx.op.unary.f32(i32 22, float %1150)  ; Frc(value)
  %1152 = fmul fast float %1151, 0x401921FB60000000
  %1153 = fadd fast float %1152, %1134
  %1154 = call float @dx.op.unary.f32(i32 13, float %1153)  ; Sin(value)
  %1155 = call float @dx.op.unary.f32(i32 12, float %1153)  ; Cos(value)
  %1156 = fsub fast float -0.000000e+00, %1154
  %1157 = fadd fast float %1108, -5.000000e-01
  %1158 = fadd fast float %1109, -5.000000e-01
  %1159 = fmul fast float %1126, %1157
  %1160 = fmul fast float %1128, %1158
  %1161 = fadd fast float %1159, 5.000000e-01
  %1162 = fadd fast float %1160, 5.000000e-01
  %1163 = fmul fast float %1137, %1161
  %1164 = fmul fast float %1140, %1162
  %1165 = fmul fast float %1155, %1163
  %1166 = call float @dx.op.tertiary.f32(i32 46, float %1156, float %1164, float %1165)  ; FMad(a,b,c)
  %1167 = fmul fast float %1154, %1163
  %1168 = call float @dx.op.tertiary.f32(i32 46, float %1155, float %1164, float %1167)  ; FMad(a,b,c)
  %1169 = fadd fast float %1146, %1166
  %1170 = fadd fast float %1149, %1168
  %1171 = icmp ugt i32 %1120, 1
  %1172 = icmp ugt i32 %1118, 33554431
  %1173 = or i1 %1172, %1171
  br i1 %1173, label %1174, label %1199

; <label>:1174                                    ; preds = %1101
  %1175 = add i32 %60, 244
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 16
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = fmul fast float %1142, %1179
  %1181 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1182 = mul nuw nsw i32 %1120, %1121
  %1183 = uitofp i32 %1182 to float
  %1184 = fmul fast float %1181, %1183
  %1185 = call float @dx.op.unary.f32(i32 27, float %1184)  ; Round_ni(value)
  %1186 = fptoui float %1185 to i32
  %1187 = urem i32 %1186, %1120
  %1188 = udiv i32 %1186, %1121
  %1189 = call float @dx.op.unary.f32(i32 22, float %1169)  ; Frc(value)
  %1190 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1191 = uitofp i32 %1187 to float
  %1192 = uitofp i32 %1188 to float
  %1193 = fadd fast float %1189, %1191
  %1194 = fadd fast float %1190, %1192
  %1195 = uitofp i32 %1120 to float
  %1196 = uitofp i32 %1121 to float
  %1197 = fdiv fast float %1193, %1195
  %1198 = fdiv fast float %1194, %1196
  br label %1199

; <label>:1199                                    ; preds = %1174, %1101
  %1200 = phi float [ %1197, %1174 ], [ %1169, %1101 ]
  %1201 = phi float [ %1198, %1174 ], [ %1170, %1101 ]
  %1202 = and i32 %1095, 256
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1250, label %1204

; <label>:1204                                    ; preds = %1199
  %1205 = add i32 %60, 476
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %1207, 0
  %1209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1209, %dx.types.Handle %111, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1211 = extractvalue %dx.types.ResRet.f32 %1210, 0
  %1212 = add i32 %60, 116
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = shl i32 %1214, 4
  %1216 = and i32 %1215, 32752
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = lshr i32 %1214, 7
  %1219 = and i32 %1218, 32752
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = fsub fast float 1.000000e+00, %531
  %1222 = call float @dx.op.binary.f32(i32 35, float %1221, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1223 = bitcast float %531 to i32
  %1224 = sitofp i32 %1223 to float
  %1225 = fadd fast float %1224, 0xC1CFBF8940000000
  %1226 = fmul fast float %1220, %1225
  %1227 = fadd fast float %1226, 0x41CFBF8940000000
  %1228 = fptosi float %1227 to i32
  %1229 = bitcast i32 %1228 to float
  %1230 = bitcast float %1222 to i32
  %1231 = sitofp i32 %1230 to float
  %1232 = fadd fast float %1231, 0xC1CFBF8940000000
  %1233 = fmul fast float %1232, %1220
  %1234 = fadd fast float %1233, 0x41CFBF8940000000
  %1235 = fptosi float %1234 to i32
  %1236 = bitcast i32 %1235 to float
  %1237 = fmul fast float %1229, %1217
  %1238 = fmul fast float %1236, %1217
  %1239 = fsub fast float %1222, %1237
  %1240 = fadd fast float %1238, %1222
  %1241 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1242 = call float @dx.op.unary.f32(i32 7, float %1240)  ; Saturate(value)
  %1243 = fsub fast float %1211, %1241
  %1244 = fsub fast float %1242, %1241
  %1245 = bitcast float %1244 to i32
  %1246 = sub nsw i32 2129859010, %1245
  %1247 = bitcast i32 %1246 to float
  %1248 = fmul fast float %1247, %1243
  %1249 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  br label %1250

; <label>:1250                                    ; preds = %1204, %1199
  %1251 = phi float [ %1249, %1204 ], [ %531, %1199 ]
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 128
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1272, label %1256

; <label>:1256                                    ; preds = %1250
  %1257 = add i32 %60, 460
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %1259, 0
  %1261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1261, %dx.types.Handle %111, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1263 = extractvalue %dx.types.ResRet.f32 %1262, 0
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 524288
  %1267 = icmp ne i32 %1266, 0
  %1268 = fcmp fast ogt float %1263, 0x3FE0101020000000
  %1269 = select i1 %1268, float 1.000000e+00, float 0.000000e+00
  %1270 = select i1 %1267, float %1269, float %1263
  %1271 = fmul fast float %1270, %1251
  br label %1272

; <label>:1272                                    ; preds = %1256, %1250
  %1273 = phi float [ %1271, %1256 ], [ %1251, %1250 ]
  %1274 = fcmp fast ult float %1273, 0x3F70101020000000
  br i1 %1274, label %1817, label %1275

; <label>:1275                                    ; preds = %1272
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 16
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1478, label %1280

; <label>:1280                                    ; preds = %1275
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = add i32 %60, 412
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = add i32 %1285, 0
  %1287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1287, %dx.types.Handle %110, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = extractvalue %dx.types.ResRet.f32 %1288, 3
  %1293 = and i32 %1282, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = lshr i32 %1282, 8
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1292, %1294
  %1299 = fadd fast float %1298, %1297
  %1300 = fmul fast float %1299, 0x3F70101000000000
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = and i32 %1302, 512
  %1304 = icmp eq i32 %1303, 0
  br i1 %1304, label %1313, label %1305

; <label>:1305                                    ; preds = %1280
  %1306 = add i32 %60, 492
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1308, 0
  %1310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1310, %dx.types.Handle %111, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  br label %1313

; <label>:1313                                    ; preds = %1305, %1280
  %1314 = phi float [ %1312, %1305 ], [ 1.000000e+00, %1280 ]
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = and i32 %1316, 33554432
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1425, label %1319

; <label>:1319                                    ; preds = %1313
  %1320 = add i32 %60, 240
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 65535
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = lshr i32 %1322, 16
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = add i32 %60, 244
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 65535
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1348 = add i32 %60, 236
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = lshr i32 %1350, 24
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101020000000
  %1354 = and i32 %1350, 255
  %1355 = uitofp i32 %1354 to float
  %1356 = fmul fast float %1355, 0x3F70101020000000
  %1357 = lshr i32 %1350, 8
  %1358 = and i32 %1357, 255
  %1359 = uitofp i32 %1358 to float
  %1360 = fmul fast float %1359, 0x3F70101020000000
  %1361 = lshr i32 %1350, 16
  %1362 = and i32 %1361, 255
  %1363 = uitofp i32 %1362 to float
  %1364 = fmul fast float %1363, 0x3F70101020000000
  %1365 = bitcast float %1289 to i32
  %1366 = ashr i32 %1365, 1
  %1367 = sub nsw i32 1597463174, %1366
  %1368 = bitcast i32 %1367 to float
  %1369 = fmul fast float %1289, 5.000000e-01
  %1370 = fmul fast float %1368, %1368
  %1371 = fmul fast float %1370, %1369
  %1372 = fsub fast float 1.500000e+00, %1371
  %1373 = fmul fast float %1368, %1289
  %1374 = fmul fast float %1373, %1372
  %1375 = bitcast float %1290 to i32
  %1376 = ashr i32 %1375, 1
  %1377 = sub nsw i32 1597463174, %1376
  %1378 = bitcast i32 %1377 to float
  %1379 = fmul fast float %1290, 5.000000e-01
  %1380 = fmul fast float %1378, %1378
  %1381 = fmul fast float %1380, %1379
  %1382 = fsub fast float 1.500000e+00, %1381
  %1383 = fmul fast float %1378, %1290
  %1384 = fmul fast float %1383, %1382
  %1385 = bitcast float %1291 to i32
  %1386 = ashr i32 %1385, 1
  %1387 = sub nsw i32 1597463174, %1386
  %1388 = bitcast i32 %1387 to float
  %1389 = fmul fast float %1291, 5.000000e-01
  %1390 = fmul fast float %1388, %1388
  %1391 = fmul fast float %1390, %1389
  %1392 = fsub fast float 1.500000e+00, %1391
  %1393 = fmul fast float %1388, %1291
  %1394 = fmul fast float %1393, %1392
  %1395 = fsub fast float %1374, %1356
  %1396 = fsub fast float %1384, %1360
  %1397 = fsub fast float %1394, %1364
  %1398 = fmul fast float %1395, %1324
  %1399 = fmul fast float %1396, %1326
  %1400 = fmul fast float %1397, %1331
  %1401 = fadd fast float %1398, %1339
  %1402 = fadd fast float %1399, %1343
  %1403 = fadd fast float %1400, %1347
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  %1406 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1407 = fmul fast float %1404, %1404
  %1408 = fmul fast float %1405, %1405
  %1409 = fmul fast float %1406, %1406
  %1410 = fsub fast float %1407, %1289
  %1411 = fsub fast float %1408, %1290
  %1412 = fsub fast float %1409, %1291
  %1413 = fmul fast float %1410, %1314
  %1414 = fmul fast float %1411, %1314
  %1415 = fmul fast float %1412, %1314
  %1416 = fadd fast float %1413, %1289
  %1417 = fadd fast float %1414, %1290
  %1418 = fadd fast float %1415, %1291
  %1419 = fadd fast float %1336, %1300
  %1420 = fsub fast float %1419, %1353
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  %1422 = fsub fast float %1421, %1300
  %1423 = fmul fast float %1422, %1314
  %1424 = fadd fast float %1423, %1300
  br label %1478

; <label>:1425                                    ; preds = %1313
  %1426 = and i32 %1316, 134217728
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1462, label %1428

; <label>:1428                                    ; preds = %1425
  %1429 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %1430 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1431 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %1432 = fadd fast float %1429, -5.000000e-01
  %1433 = fadd fast float %1430, -5.000000e-01
  %1434 = fadd fast float %1431, -5.000000e-01
  %1435 = fmul fast float %1432, %1314
  %1436 = fmul fast float %1433, %1314
  %1437 = fmul fast float %1434, %1314
  %1438 = fadd fast float %1435, 5.000000e-01
  %1439 = fadd fast float %1436, 5.000000e-01
  %1440 = fadd fast float %1437, 5.000000e-01
  %1441 = call float @dx.op.unary.f32(i32 24, float %1289)  ; Sqrt(value)
  %1442 = call float @dx.op.unary.f32(i32 24, float %1290)  ; Sqrt(value)
  %1443 = call float @dx.op.unary.f32(i32 24, float %1291)  ; Sqrt(value)
  %1444 = fmul fast float %1438, 2.000000e+00
  %1445 = fsub fast float 1.000000e+00, %1444
  %1446 = fmul fast float %1445, %1441
  %1447 = fadd fast float %1446, %1444
  %1448 = fmul fast float %1447, %1441
  %1449 = fmul fast float %1439, 2.000000e+00
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = fmul fast float %1450, %1442
  %1452 = fadd fast float %1451, %1449
  %1453 = fmul fast float %1452, %1442
  %1454 = fmul fast float %1440, 2.000000e+00
  %1455 = fsub fast float 1.000000e+00, %1454
  %1456 = fmul fast float %1455, %1443
  %1457 = fadd fast float %1456, %1454
  %1458 = fmul fast float %1457, %1443
  %1459 = fmul fast float %1448, %1448
  %1460 = fmul fast float %1453, %1453
  %1461 = fmul fast float %1458, %1458
  br label %1478

; <label>:1462                                    ; preds = %1425
  %1463 = fmul fast float %363, %363
  %1464 = fmul fast float %367, %367
  %1465 = fmul fast float %371, %371
  %1466 = fadd fast float %1463, -1.000000e+00
  %1467 = fadd fast float %1464, -1.000000e+00
  %1468 = fadd fast float %1465, -1.000000e+00
  %1469 = fmul fast float %1314, %1466
  %1470 = fmul fast float %1314, %1467
  %1471 = fmul fast float %1314, %1468
  %1472 = fadd fast float %1469, 1.000000e+00
  %1473 = fadd fast float %1470, 1.000000e+00
  %1474 = fadd fast float %1471, 1.000000e+00
  %1475 = fmul fast float %1472, %1289
  %1476 = fmul fast float %1473, %1290
  %1477 = fmul fast float %1474, %1291
  br label %1478

; <label>:1478                                    ; preds = %1462, %1428, %1319, %1275
  %1479 = phi float [ %1424, %1319 ], [ %1300, %1428 ], [ %1300, %1462 ], [ 0x3FA23C0BE0000000, %1275 ]
  %1480 = phi float [ %1416, %1319 ], [ %1459, %1428 ], [ %1475, %1462 ], [ 1.000000e+00, %1275 ]
  %1481 = phi float [ %1417, %1319 ], [ %1460, %1428 ], [ %1476, %1462 ], [ 1.000000e+00, %1275 ]
  %1482 = phi float [ %1418, %1319 ], [ %1461, %1428 ], [ %1477, %1462 ], [ 1.000000e+00, %1275 ]
  %1483 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.i32 %1483, 1
  %1485 = and i32 %1484, 1
  %1486 = icmp ne i32 %1485, 0
  %1487 = add i32 %60, 356
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 32
  %1491 = icmp ne i32 %1490, 0
  %1492 = and i1 %1486, %1491
  %1493 = select i1 %1492, float 1.000000e+00, float %1480
  %1494 = select i1 %1492, float 0x3FD3333340000000, float %1481
  %1495 = select i1 %1492, float 0x3FD3333340000000, float %1482
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = and i32 %1497, 32
  %1499 = icmp eq i32 %1498, 0
  br i1 %1499, label %1572, label %1500

; <label>:1500                                    ; preds = %1478
  %1501 = add i32 %60, 108
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = add i32 %60, 428
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1504, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = add i32 %1506, 0
  %1508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1508, %dx.types.Handle %110, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = extractvalue %dx.types.ResRet.f32 %1509, 1
  %1512 = extractvalue %dx.types.ResRet.f32 %1509, 2
  %1513 = extractvalue %dx.types.ResRet.f32 %1509, 3
  %1514 = and i32 %1503, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = lshr i32 %1503, 8
  %1517 = and i32 %1516, 255
  %1518 = uitofp i32 %1517 to float
  %1519 = lshr i32 %1503, 16
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101000000000
  %1523 = fmul fast float %1510, %1515
  %1524 = fadd fast float %1523, %1518
  %1525 = fmul fast float %1524, 0x3F70101000000000
  %1526 = fadd fast float %1511, -5.000000e-01
  %1527 = fadd fast float %1513, -5.000000e-01
  %1528 = fmul fast float %1526, %1522
  %1529 = fmul fast float %1527, %1522
  %1530 = fadd fast float %1528, 5.000000e-01
  %1531 = fadd fast float %1529, 5.000000e-01
  %1532 = fmul fast float %1530, 2.000000e+00
  %1533 = fadd fast float %1532, -1.000000e+00
  %1534 = fmul fast float %1531, 2.000000e+00
  %1535 = fadd fast float %1534, -1.000000e+00
  %1536 = fadd fast float %1533, %1535
  %1537 = fmul fast float %1536, 5.000000e-01
  %1538 = fsub fast float %1533, %1535
  %1539 = fmul fast float %1538, 5.000000e-01
  %1540 = call float @dx.op.unary.f32(i32 6, float %1537)  ; FAbs(value)
  %1541 = fsub fast float 1.000000e+00, %1540
  %1542 = call float @dx.op.unary.f32(i32 6, float %1539)  ; FAbs(value)
  %1543 = fsub fast float %1541, %1542
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1537, float %1539, float %1543, float %1537, float %1539, float %1543)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = call float @dx.op.unary.f32(i32 25, float %1544)  ; Rsqrt(value)
  %1546 = fmul fast float %1537, %1545
  %1547 = fmul fast float %1539, %1545
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 67108864
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1568, label %1552

; <label>:1552                                    ; preds = %1500
  %1553 = add i32 %60, 296
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 65535
  %1557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1556)  ; LegacyF16ToF32(value)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 65535
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = lshr i32 %1555, 16
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = fsub fast float %1525, %1563
  %1565 = fmul fast float %1564, %1557
  %1566 = fadd fast float %1565, %1561
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  br label %1568

; <label>:1568                                    ; preds = %1552, %1500
  %1569 = phi float [ %1567, %1552 ], [ %1525, %1500 ]
  %1570 = call float @dx.op.dot2.f32(i32 54, float %1546, float %1547, float %1104, float %1105)  ; Dot2(ax,ay,bx,by)
  %1571 = call float @dx.op.dot2.f32(i32 54, float %1546, float %1547, float %1106, float %1107)  ; Dot2(ax,ay,bx,by)
  br label %1572

; <label>:1572                                    ; preds = %1568, %1478
  %1573 = phi float [ %1569, %1568 ], [ 0x3FD6666660000000, %1478 ]
  %1574 = phi float [ %1570, %1568 ], [ 0.000000e+00, %1478 ]
  %1575 = phi float [ %1571, %1568 ], [ 0.000000e+00, %1478 ]
  %1576 = phi float [ %1512, %1568 ], [ 1.000000e+00, %1478 ]
  %1577 = add i32 %60, 176
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = lshr i32 %1579, 22
  %1581 = shl nuw nsw i32 %1580, 5
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 64
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1620, label %1587

; <label>:1587                                    ; preds = %1572
  %1588 = add i32 %60, 444
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = add i32 %1590, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 131072
  %1596 = icmp eq i32 %1595, 0
  %1597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1592, %dx.types.Handle %110, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  %1599 = extractvalue %dx.types.ResRet.f32 %1597, 1
  %1600 = extractvalue %dx.types.ResRet.f32 %1597, 2
  %1601 = fmul fast float %1598, %351
  %1602 = fmul fast float %1599, %354
  %1603 = fmul fast float %1600, %357
  br i1 %1596, label %1610, label %1604

; <label>:1604                                    ; preds = %1587
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = fmul fast float %1606, %1601
  %1608 = fmul fast float %1606, %1602
  %1609 = fmul fast float %1606, %1603
  br label %1610

; <label>:1610                                    ; preds = %1604, %1587
  %1611 = phi float [ %1607, %1604 ], [ %1601, %1587 ]
  %1612 = phi float [ %1608, %1604 ], [ %1602, %1587 ]
  %1613 = phi float [ %1609, %1604 ], [ %1603, %1587 ]
  %1614 = fmul fast float %1611, %1582
  %1615 = select i1 %292, float %1614, float %1611
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = select i1 %292, float 0.000000e+00, float %1611
  %1618 = select i1 %292, float %1616, float %1612
  %1619 = select i1 %292, float 0.000000e+00, float %1613
  br label %1620

; <label>:1620                                    ; preds = %1610, %1572
  %1621 = phi float [ %1617, %1610 ], [ 0.000000e+00, %1572 ]
  %1622 = phi float [ %1618, %1610 ], [ 0.000000e+00, %1572 ]
  %1623 = phi float [ %1619, %1610 ], [ 0.000000e+00, %1572 ]
  %1624 = add i32 %60, 112
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = lshr i32 %1626, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = fmul fast float %1631, %1632
  %1634 = fadd fast float %1633, %1628
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  br i1 %1092, label %1637, label %1645

; <label>:1637                                    ; preds = %1620
  %1638 = fsub fast float 1.000000e+00, %1273
  %1639 = fmul fast float %1638, %1080
  %1640 = fmul fast float %1638, %1081
  %1641 = fmul fast float %1638, %1082
  %1642 = fmul fast float %1638, %1083
  %1643 = fmul fast float %1638, %1084
  %1644 = fmul fast float %1638, %1085
  br label %1645

; <label>:1645                                    ; preds = %1637, %1620
  %1646 = phi float [ %1639, %1637 ], [ %1080, %1620 ]
  %1647 = phi float [ %1640, %1637 ], [ %1081, %1620 ]
  %1648 = phi float [ %1641, %1637 ], [ %1082, %1620 ]
  %1649 = phi float [ %1642, %1637 ], [ %1083, %1620 ]
  %1650 = phi float [ %1643, %1637 ], [ %1084, %1620 ]
  %1651 = phi float [ %1644, %1637 ], [ %1085, %1620 ]
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 3
  %1655 = icmp eq i32 %1654, 3
  br i1 %1655, label %1734, label %1656

; <label>:1656                                    ; preds = %1645
  %1657 = and i32 %1653, 16
  %1658 = icmp ne i32 %1657, 0
  %1659 = select i1 %1658, float %1273, float 0.000000e+00
  %1660 = icmp eq i32 %1654, 0
  br i1 %1660, label %1661, label %1689

; <label>:1661                                    ; preds = %1656
  %1662 = and i32 %1653, 64
  %1663 = icmp ne i32 %1662, 0
  %1664 = select i1 %1663, float %1273, float 0.000000e+00
  %1665 = fsub fast float %1493, %1646
  %1666 = fsub fast float %1494, %1647
  %1667 = fsub fast float %1495, %1648
  %1668 = fmul fast float %1659, %1665
  %1669 = fmul fast float %1659, %1666
  %1670 = fmul fast float %1659, %1667
  %1671 = fadd fast float %1668, %1646
  %1672 = fadd fast float %1669, %1647
  %1673 = fadd fast float %1670, %1648
  %1674 = fsub fast float %1479, %1086
  %1675 = fmul fast float %1659, %1674
  %1676 = fadd fast float %1675, %1086
  %1677 = fsub fast float %1621, %1649
  %1678 = fsub fast float %1622, %1650
  %1679 = fsub fast float %1623, %1651
  %1680 = fmul fast float %1664, %1677
  %1681 = fmul fast float %1664, %1678
  %1682 = fmul fast float %1664, %1679
  %1683 = fadd fast float %1680, %1649
  %1684 = fadd fast float %1681, %1650
  %1685 = fadd fast float %1682, %1651
  %1686 = fsub fast float %1636, %1090
  %1687 = fmul fast float %1659, %1686
  %1688 = fadd fast float %1687, %1090
  br label %1734

; <label>:1689                                    ; preds = %1656
  %1690 = icmp eq i32 %1654, 1
  br i1 %1690, label %1691, label %1704

; <label>:1691                                    ; preds = %1689
  %1692 = fadd fast float %1493, -1.000000e+00
  %1693 = fadd fast float %1494, -1.000000e+00
  %1694 = fadd fast float %1495, -1.000000e+00
  %1695 = fmul fast float %1659, %1692
  %1696 = fmul fast float %1659, %1693
  %1697 = fmul fast float %1659, %1694
  %1698 = fadd fast float %1695, 1.000000e+00
  %1699 = fadd fast float %1696, 1.000000e+00
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fmul fast float %1698, %1646
  %1702 = fmul fast float %1699, %1647
  %1703 = fmul fast float %1700, %1648
  br label %1734

; <label>:1704                                    ; preds = %1689
  %1705 = icmp eq i32 %1654, 2
  br i1 %1705, label %1706, label %1734

; <label>:1706                                    ; preds = %1704
  %1707 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fmul fast float %1710, %1659
  %1714 = fmul fast float %1711, %1659
  %1715 = fmul fast float %1712, %1659
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fmul fast float %1716, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1646
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1646
  %1724 = fmul fast float %1717, 2.000000e+00
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1725, %1647
  %1727 = fadd fast float %1726, %1724
  %1728 = fmul fast float %1727, %1647
  %1729 = fmul fast float %1718, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1648
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1648
  br label %1734

; <label>:1734                                    ; preds = %1706, %1704, %1691, %1661, %1645
  %1735 = phi float [ %1646, %1645 ], [ %1723, %1706 ], [ %1646, %1704 ], [ %1701, %1691 ], [ %1671, %1661 ]
  %1736 = phi float [ %1647, %1645 ], [ %1728, %1706 ], [ %1647, %1704 ], [ %1702, %1691 ], [ %1672, %1661 ]
  %1737 = phi float [ %1648, %1645 ], [ %1733, %1706 ], [ %1648, %1704 ], [ %1703, %1691 ], [ %1673, %1661 ]
  %1738 = phi float [ %1649, %1645 ], [ %1649, %1706 ], [ %1649, %1704 ], [ %1649, %1691 ], [ %1683, %1661 ]
  %1739 = phi float [ %1650, %1645 ], [ %1650, %1706 ], [ %1650, %1704 ], [ %1650, %1691 ], [ %1684, %1661 ]
  %1740 = phi float [ %1651, %1645 ], [ %1651, %1706 ], [ %1651, %1704 ], [ %1651, %1691 ], [ %1685, %1661 ]
  %1741 = phi float [ %1086, %1645 ], [ %1086, %1706 ], [ %1086, %1704 ], [ %1086, %1691 ], [ %1676, %1661 ]
  %1742 = phi float [ %1090, %1645 ], [ %1090, %1706 ], [ %1090, %1704 ], [ %1090, %1691 ], [ %1688, %1661 ]
  %1743 = and i32 %1653, 12
  %1744 = icmp eq i32 %1743, 12
  br i1 %1744, label %1817, label %1745

; <label>:1745                                    ; preds = %1734
  %1746 = and i32 %1653, 2097184
  %1747 = icmp eq i32 %1746, 2097184
  %1748 = select i1 %1747, float %1273, float 0.000000e+00
  %1749 = and i32 %1653, 4194336
  %1750 = icmp eq i32 %1749, 4194336
  %1751 = select i1 %1750, float %1273, float 0.000000e+00
  %1752 = and i32 %1653, 8388640
  %1753 = icmp eq i32 %1752, 8388640
  %1754 = select i1 %1753, float %1273, float 0.000000e+00
  %1755 = icmp eq i32 %1743, 0
  br i1 %1755, label %1756, label %1769

; <label>:1756                                    ; preds = %1745
  %1757 = fsub fast float %1574, %1078
  %1758 = fsub fast float %1575, %1079
  %1759 = fmul fast float %1748, %1757
  %1760 = fmul fast float %1748, %1758
  %1761 = fadd fast float %1759, %1078
  %1762 = fadd fast float %1760, %1079
  %1763 = fsub fast float %1576, %1089
  %1764 = fmul fast float %1751, %1763
  %1765 = fadd fast float %1764, %1089
  %1766 = fsub fast float %1573, %1088
  %1767 = fmul fast float %1754, %1766
  %1768 = fadd fast float %1767, %1088
  br label %1817

; <label>:1769                                    ; preds = %1745
  %1770 = icmp eq i32 %1743, 4
  br i1 %1770, label %1771, label %1803

; <label>:1771                                    ; preds = %1769
  %1772 = fmul fast float %1748, %1574
  %1773 = fmul fast float %1748, %1575
  %1774 = fadd fast float %1772, %1078
  %1775 = fadd fast float %1773, %1079
  %1776 = call float @dx.op.binary.f32(i32 36, float %1089, float %1576)  ; FMin(a,b)
  %1777 = fsub fast float %1776, %1089
  %1778 = fmul fast float %1777, %1751
  %1779 = fadd fast float %1778, %1089
  %1780 = fadd fast float %1573, %1088
  %1781 = fmul fast float %1780, 0x3FF337FAE0000000
  %1782 = fmul fast float %1088, %1088
  %1783 = fmul fast float %1573, %1573
  %1784 = fadd fast float %1783, %1782
  %1785 = fmul fast float %1784, 0x3FE5152B00000000
  %1786 = fmul fast float %1088, 0xBFCC1F85E0000000
  %1787 = fmul fast float %1786, %1573
  %1788 = fadd fast float %1787, 0xBFE1363700000000
  %1789 = fadd fast float %1788, %1781
  %1790 = fsub fast float %1789, %1785
  %1791 = fmul fast float %1780, 0x3FBA6F0D00000000
  %1792 = fmul fast float %1784, 0x3FD0432880000000
  %1793 = fmul fast float %1088, 0xBFEF110800000000
  %1794 = fmul fast float %1793, %1573
  %1795 = fadd fast float %1794, 1.000000e+00
  %1796 = fsub fast float %1795, %1791
  %1797 = fadd fast float %1796, %1792
  %1798 = fdiv fast float %1790, %1797
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = fsub fast float %1799, %1088
  %1801 = fmul fast float %1800, %1754
  %1802 = fadd fast float %1801, %1088
  br label %1817

; <label>:1803                                    ; preds = %1769
  %1804 = icmp eq i32 %1743, 8
  br i1 %1804, label %1805, label %1817

; <label>:1805                                    ; preds = %1803
  %1806 = fmul fast float %1748, %1574
  %1807 = fmul fast float %1748, %1575
  %1808 = fadd fast float %1806, %1078
  %1809 = fadd fast float %1807, %1079
  %1810 = call float @dx.op.binary.f32(i32 36, float %1089, float %1576)  ; FMin(a,b)
  %1811 = fsub fast float %1810, %1089
  %1812 = fmul fast float %1811, %1751
  %1813 = fadd fast float %1812, %1089
  %1814 = fsub fast float %1573, %1088
  %1815 = fmul fast float %1754, %1814
  %1816 = fadd fast float %1815, %1088
  br label %1817

; <label>:1817                                    ; preds = %1805, %1803, %1771, %1756, %1734, %1272, %1091, %1077
  %1818 = phi float [ %1078, %1734 ], [ %1078, %1272 ], [ %1078, %1077 ], [ %1808, %1805 ], [ %1078, %1803 ], [ %1774, %1771 ], [ %1761, %1756 ], [ %1078, %1091 ]
  %1819 = phi float [ %1079, %1734 ], [ %1079, %1272 ], [ %1079, %1077 ], [ %1809, %1805 ], [ %1079, %1803 ], [ %1775, %1771 ], [ %1762, %1756 ], [ %1079, %1091 ]
  %1820 = phi float [ %1735, %1734 ], [ %1080, %1272 ], [ %1080, %1077 ], [ %1735, %1805 ], [ %1735, %1803 ], [ %1735, %1771 ], [ %1735, %1756 ], [ %1080, %1091 ]
  %1821 = phi float [ %1736, %1734 ], [ %1081, %1272 ], [ %1081, %1077 ], [ %1736, %1805 ], [ %1736, %1803 ], [ %1736, %1771 ], [ %1736, %1756 ], [ %1081, %1091 ]
  %1822 = phi float [ %1737, %1734 ], [ %1082, %1272 ], [ %1082, %1077 ], [ %1737, %1805 ], [ %1737, %1803 ], [ %1737, %1771 ], [ %1737, %1756 ], [ %1082, %1091 ]
  %1823 = phi float [ %1738, %1734 ], [ %1083, %1272 ], [ %1083, %1077 ], [ %1738, %1805 ], [ %1738, %1803 ], [ %1738, %1771 ], [ %1738, %1756 ], [ %1083, %1091 ]
  %1824 = phi float [ %1739, %1734 ], [ %1084, %1272 ], [ %1084, %1077 ], [ %1739, %1805 ], [ %1739, %1803 ], [ %1739, %1771 ], [ %1739, %1756 ], [ %1084, %1091 ]
  %1825 = phi float [ %1740, %1734 ], [ %1085, %1272 ], [ %1085, %1077 ], [ %1740, %1805 ], [ %1740, %1803 ], [ %1740, %1771 ], [ %1740, %1756 ], [ %1085, %1091 ]
  %1826 = phi float [ %1741, %1734 ], [ %1086, %1272 ], [ %1086, %1077 ], [ %1741, %1805 ], [ %1741, %1803 ], [ %1741, %1771 ], [ %1741, %1756 ], [ %1086, %1091 ]
  %1827 = phi float [ %1088, %1734 ], [ %1088, %1272 ], [ %1088, %1077 ], [ %1816, %1805 ], [ %1088, %1803 ], [ %1802, %1771 ], [ %1768, %1756 ], [ %1088, %1091 ]
  %1828 = phi float [ %1089, %1734 ], [ %1089, %1272 ], [ %1089, %1077 ], [ %1813, %1805 ], [ %1089, %1803 ], [ %1779, %1771 ], [ %1765, %1756 ], [ %1089, %1091 ]
  %1829 = phi float [ %1742, %1734 ], [ %1090, %1272 ], [ %1090, %1077 ], [ %1742, %1805 ], [ %1742, %1803 ], [ %1742, %1771 ], [ %1742, %1756 ], [ %1090, %1091 ]
  br i1 %478, label %2556, label %1830

; <label>:1830                                    ; preds = %1817
  %1831 = icmp ult i32 %534, 3
  %1832 = add i32 %60, 56
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = add i32 %60, 60
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = or i32 %1837, %1834
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %2556, label %1840

; <label>:1840                                    ; preds = %1830
  %1841 = and i32 %1834, 262144
  %1842 = icmp ne i32 %1841, 0
  %1843 = select i1 %1842, float %65, float 1.000000e+00
  %1844 = select i1 %1842, float %66, float 0.000000e+00
  %1845 = select i1 %1842, float %67, float 0.000000e+00
  %1846 = select i1 %1842, float %68, float 1.000000e+00
  %1847 = select i1 %1842, float %69, float %92
  %1848 = select i1 %1842, float %70, float %93
  %1849 = add i32 %60, 316
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = lshr i32 %1851, 16
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = fmul fast float %1853, 0x3F50624DE0000000
  %1855 = add i32 %60, 120
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 16
  %1859 = and i32 %1858, 255
  %1860 = lshr i32 %1857, 24
  %1861 = add i32 %60, 324
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 65535
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = lshr i32 %1863, 16
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = add i32 %60, 64
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = lshr i32 %1870, 22
  %1872 = shl nuw nsw i32 %1871, 5
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = shl i32 %1870, 4
  %1875 = and i32 %1874, 32752
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = lshr i32 %1870, 7
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1882 = fmul fast float %1881, 1.000000e+03
  %1883 = fmul fast float %428, %1882
  %1884 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1885 = fadd fast float %1884, %418
  %1886 = fmul fast float %429, %1882
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = fadd fast float %1887, %420
  %1889 = fmul fast float %1854, %1882
  %1890 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1891 = fmul fast float %1890, 0x401921FB60000000
  %1892 = fadd fast float %1891, %1873
  %1893 = call float @dx.op.unary.f32(i32 13, float %1892)  ; Sin(value)
  %1894 = call float @dx.op.unary.f32(i32 12, float %1892)  ; Cos(value)
  %1895 = fsub fast float -0.000000e+00, %1893
  %1896 = fadd fast float %1847, -5.000000e-01
  %1897 = fadd fast float %1848, -5.000000e-01
  %1898 = fmul fast float %1865, %1896
  %1899 = fmul fast float %1867, %1897
  %1900 = fadd fast float %1898, 5.000000e-01
  %1901 = fadd fast float %1899, 5.000000e-01
  %1902 = fmul fast float %1876, %1900
  %1903 = fmul fast float %1879, %1901
  %1904 = fmul fast float %1894, %1902
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1895, float %1903, float %1904)  ; FMad(a,b,c)
  %1906 = fmul fast float %1893, %1902
  %1907 = call float @dx.op.tertiary.f32(i32 46, float %1894, float %1903, float %1906)  ; FMad(a,b,c)
  %1908 = fadd fast float %1885, %1905
  %1909 = fadd fast float %1888, %1907
  %1910 = icmp ugt i32 %1859, 1
  %1911 = icmp ugt i32 %1857, 33554431
  %1912 = or i1 %1911, %1910
  br i1 %1912, label %1913, label %1938

; <label>:1913                                    ; preds = %1840
  %1914 = add i32 %60, 260
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = lshr i32 %1916, 16
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = fmul fast float %1881, %1918
  %1920 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1921 = mul nuw nsw i32 %1859, %1860
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1920, %1922
  %1924 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1925 = fptoui float %1924 to i32
  %1926 = urem i32 %1925, %1859
  %1927 = udiv i32 %1925, %1860
  %1928 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1929 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1930 = uitofp i32 %1926 to float
  %1931 = uitofp i32 %1927 to float
  %1932 = fadd fast float %1928, %1930
  %1933 = fadd fast float %1929, %1931
  %1934 = uitofp i32 %1859 to float
  %1935 = uitofp i32 %1860 to float
  %1936 = fdiv fast float %1932, %1934
  %1937 = fdiv fast float %1933, %1935
  br label %1938

; <label>:1938                                    ; preds = %1913, %1840
  %1939 = phi float [ %1936, %1913 ], [ %1908, %1840 ]
  %1940 = phi float [ %1937, %1913 ], [ %1909, %1840 ]
  %1941 = and i32 %1834, 256
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %1989, label %1943

; <label>:1943                                    ; preds = %1938
  %1944 = add i32 %60, 480
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1948, %dx.types.Handle %111, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = add i32 %60, 132
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = shl i32 %1953, 4
  %1955 = and i32 %1954, 32752
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = lshr i32 %1953, 7
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = fsub fast float 1.000000e+00, %530
  %1961 = call float @dx.op.binary.f32(i32 35, float %1960, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1962 = bitcast float %530 to i32
  %1963 = sitofp i32 %1962 to float
  %1964 = fadd fast float %1963, 0xC1CFBF8940000000
  %1965 = fmul fast float %1959, %1964
  %1966 = fadd fast float %1965, 0x41CFBF8940000000
  %1967 = fptosi float %1966 to i32
  %1968 = bitcast i32 %1967 to float
  %1969 = bitcast float %1961 to i32
  %1970 = sitofp i32 %1969 to float
  %1971 = fadd fast float %1970, 0xC1CFBF8940000000
  %1972 = fmul fast float %1971, %1959
  %1973 = fadd fast float %1972, 0x41CFBF8940000000
  %1974 = fptosi float %1973 to i32
  %1975 = bitcast i32 %1974 to float
  %1976 = fmul fast float %1968, %1956
  %1977 = fmul fast float %1975, %1956
  %1978 = fsub fast float %1961, %1976
  %1979 = fadd fast float %1977, %1961
  %1980 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1982 = fsub fast float %1950, %1980
  %1983 = fsub fast float %1981, %1980
  %1984 = bitcast float %1983 to i32
  %1985 = sub nsw i32 2129859010, %1984
  %1986 = bitcast i32 %1985 to float
  %1987 = fmul fast float %1986, %1982
  %1988 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  br label %1989

; <label>:1989                                    ; preds = %1943, %1938
  %1990 = phi float [ %1988, %1943 ], [ %530, %1938 ]
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 128
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2011, label %1995

; <label>:1995                                    ; preds = %1989
  %1996 = add i32 %60, 464
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = add i32 %1998, 0
  %2000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2001 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2000, %dx.types.Handle %111, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2002 = extractvalue %dx.types.ResRet.f32 %2001, 0
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 524288
  %2006 = icmp ne i32 %2005, 0
  %2007 = fcmp fast ogt float %2002, 0x3FE0101020000000
  %2008 = select i1 %2007, float 1.000000e+00, float 0.000000e+00
  %2009 = select i1 %2006, float %2008, float %2002
  %2010 = fmul fast float %2009, %1990
  br label %2011

; <label>:2011                                    ; preds = %1995, %1989
  %2012 = phi float [ %2010, %1995 ], [ %1990, %1989 ]
  %2013 = fcmp fast ult float %2012, 0x3F70101020000000
  br i1 %2013, label %2556, label %2014

; <label>:2014                                    ; preds = %2011
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 16
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2217, label %2019

; <label>:2019                                    ; preds = %2014
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = add i32 %60, 416
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = add i32 %2024, 0
  %2026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2025, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2027 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2026, %dx.types.Handle %110, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.ResRet.f32 %2027, 1
  %2030 = extractvalue %dx.types.ResRet.f32 %2027, 2
  %2031 = extractvalue %dx.types.ResRet.f32 %2027, 3
  %2032 = and i32 %2021, 255
  %2033 = uitofp i32 %2032 to float
  %2034 = lshr i32 %2021, 8
  %2035 = and i32 %2034, 255
  %2036 = uitofp i32 %2035 to float
  %2037 = fmul fast float %2031, %2033
  %2038 = fadd fast float %2037, %2036
  %2039 = fmul fast float %2038, 0x3F70101000000000
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 512
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2052, label %2044

; <label>:2044                                    ; preds = %2019
  %2045 = add i32 %60, 496
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2047, 0
  %2049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2049, %dx.types.Handle %111, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  br label %2052

; <label>:2052                                    ; preds = %2044, %2019
  %2053 = phi float [ %2051, %2044 ], [ 1.000000e+00, %2019 ]
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = and i32 %2055, 33554432
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2164, label %2058

; <label>:2058                                    ; preds = %2052
  %2059 = add i32 %60, 256
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 65535
  %2063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2062)  ; LegacyF16ToF32(value)
  %2064 = lshr i32 %2061, 16
  %2065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2064)  ; LegacyF16ToF32(value)
  %2066 = add i32 %60, 260
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 65535
  %2070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2069)  ; LegacyF16ToF32(value)
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2087 = add i32 %60, 252
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = lshr i32 %2089, 24
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2091, 0x3F70101020000000
  %2093 = and i32 %2089, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = fmul fast float %2094, 0x3F70101020000000
  %2096 = lshr i32 %2089, 8
  %2097 = and i32 %2096, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = lshr i32 %2089, 16
  %2101 = and i32 %2100, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = bitcast float %2028 to i32
  %2105 = ashr i32 %2104, 1
  %2106 = sub nsw i32 1597463174, %2105
  %2107 = bitcast i32 %2106 to float
  %2108 = fmul fast float %2028, 5.000000e-01
  %2109 = fmul fast float %2107, %2107
  %2110 = fmul fast float %2109, %2108
  %2111 = fsub fast float 1.500000e+00, %2110
  %2112 = fmul fast float %2107, %2028
  %2113 = fmul fast float %2112, %2111
  %2114 = bitcast float %2029 to i32
  %2115 = ashr i32 %2114, 1
  %2116 = sub nsw i32 1597463174, %2115
  %2117 = bitcast i32 %2116 to float
  %2118 = fmul fast float %2029, 5.000000e-01
  %2119 = fmul fast float %2117, %2117
  %2120 = fmul fast float %2119, %2118
  %2121 = fsub fast float 1.500000e+00, %2120
  %2122 = fmul fast float %2117, %2029
  %2123 = fmul fast float %2122, %2121
  %2124 = bitcast float %2030 to i32
  %2125 = ashr i32 %2124, 1
  %2126 = sub nsw i32 1597463174, %2125
  %2127 = bitcast i32 %2126 to float
  %2128 = fmul fast float %2030, 5.000000e-01
  %2129 = fmul fast float %2127, %2127
  %2130 = fmul fast float %2129, %2128
  %2131 = fsub fast float 1.500000e+00, %2130
  %2132 = fmul fast float %2127, %2030
  %2133 = fmul fast float %2132, %2131
  %2134 = fsub fast float %2113, %2095
  %2135 = fsub fast float %2123, %2099
  %2136 = fsub fast float %2133, %2103
  %2137 = fmul fast float %2134, %2063
  %2138 = fmul fast float %2135, %2065
  %2139 = fmul fast float %2136, %2070
  %2140 = fadd fast float %2137, %2078
  %2141 = fadd fast float %2138, %2082
  %2142 = fadd fast float %2139, %2086
  %2143 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  %2144 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2146 = fmul fast float %2143, %2143
  %2147 = fmul fast float %2144, %2144
  %2148 = fmul fast float %2145, %2145
  %2149 = fsub fast float %2146, %2028
  %2150 = fsub fast float %2147, %2029
  %2151 = fsub fast float %2148, %2030
  %2152 = fmul fast float %2149, %2053
  %2153 = fmul fast float %2150, %2053
  %2154 = fmul fast float %2151, %2053
  %2155 = fadd fast float %2152, %2028
  %2156 = fadd fast float %2153, %2029
  %2157 = fadd fast float %2154, %2030
  %2158 = fadd fast float %2075, %2039
  %2159 = fsub fast float %2158, %2092
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fsub fast float %2160, %2039
  %2162 = fmul fast float %2161, %2053
  %2163 = fadd fast float %2162, %2039
  br label %2217

; <label>:2164                                    ; preds = %2052
  %2165 = and i32 %2055, 134217728
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2201, label %2167

; <label>:2167                                    ; preds = %2164
  %2168 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2169 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2170 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2171 = fadd fast float %2168, -5.000000e-01
  %2172 = fadd fast float %2169, -5.000000e-01
  %2173 = fadd fast float %2170, -5.000000e-01
  %2174 = fmul fast float %2171, %2053
  %2175 = fmul fast float %2172, %2053
  %2176 = fmul fast float %2173, %2053
  %2177 = fadd fast float %2174, 5.000000e-01
  %2178 = fadd fast float %2175, 5.000000e-01
  %2179 = fadd fast float %2176, 5.000000e-01
  %2180 = call float @dx.op.unary.f32(i32 24, float %2028)  ; Sqrt(value)
  %2181 = call float @dx.op.unary.f32(i32 24, float %2029)  ; Sqrt(value)
  %2182 = call float @dx.op.unary.f32(i32 24, float %2030)  ; Sqrt(value)
  %2183 = fmul fast float %2177, 2.000000e+00
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fmul fast float %2184, %2180
  %2186 = fadd fast float %2185, %2183
  %2187 = fmul fast float %2186, %2180
  %2188 = fmul fast float %2178, 2.000000e+00
  %2189 = fsub fast float 1.000000e+00, %2188
  %2190 = fmul fast float %2189, %2181
  %2191 = fadd fast float %2190, %2188
  %2192 = fmul fast float %2191, %2181
  %2193 = fmul fast float %2179, 2.000000e+00
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = fmul fast float %2194, %2182
  %2196 = fadd fast float %2195, %2193
  %2197 = fmul fast float %2196, %2182
  %2198 = fmul fast float %2187, %2187
  %2199 = fmul fast float %2192, %2192
  %2200 = fmul fast float %2197, %2197
  br label %2217

; <label>:2201                                    ; preds = %2164
  %2202 = fmul fast float %405, %405
  %2203 = fmul fast float %409, %409
  %2204 = fmul fast float %413, %413
  %2205 = fadd fast float %2202, -1.000000e+00
  %2206 = fadd fast float %2203, -1.000000e+00
  %2207 = fadd fast float %2204, -1.000000e+00
  %2208 = fmul fast float %2053, %2205
  %2209 = fmul fast float %2053, %2206
  %2210 = fmul fast float %2053, %2207
  %2211 = fadd fast float %2208, 1.000000e+00
  %2212 = fadd fast float %2209, 1.000000e+00
  %2213 = fadd fast float %2210, 1.000000e+00
  %2214 = fmul fast float %2211, %2028
  %2215 = fmul fast float %2212, %2029
  %2216 = fmul fast float %2213, %2030
  br label %2217

; <label>:2217                                    ; preds = %2201, %2167, %2058, %2014
  %2218 = phi float [ %2163, %2058 ], [ %2039, %2167 ], [ %2039, %2201 ], [ 0x3FA23C0BE0000000, %2014 ]
  %2219 = phi float [ %2155, %2058 ], [ %2198, %2167 ], [ %2214, %2201 ], [ 1.000000e+00, %2014 ]
  %2220 = phi float [ %2156, %2058 ], [ %2199, %2167 ], [ %2215, %2201 ], [ 1.000000e+00, %2014 ]
  %2221 = phi float [ %2157, %2058 ], [ %2200, %2167 ], [ %2216, %2201 ], [ 1.000000e+00, %2014 ]
  %2222 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2223 = extractvalue %dx.types.CBufRet.i32 %2222, 1
  %2224 = and i32 %2223, 1
  %2225 = icmp ne i32 %2224, 0
  %2226 = add i32 %60, 356
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 32
  %2230 = icmp ne i32 %2229, 0
  %2231 = and i1 %2225, %2230
  %2232 = select i1 %2231, float 1.000000e+00, float %2219
  %2233 = select i1 %2231, float 0x3FD3333340000000, float %2220
  %2234 = select i1 %2231, float 0x3FD3333340000000, float %2221
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 32
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2311, label %2239

; <label>:2239                                    ; preds = %2217
  %2240 = add i32 %60, 124
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %60, 432
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = add i32 %2245, 0
  %2247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2247, %dx.types.Handle %110, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = extractvalue %dx.types.ResRet.f32 %2248, 3
  %2253 = and i32 %2242, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = lshr i32 %2242, 8
  %2256 = and i32 %2255, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = lshr i32 %2242, 16
  %2259 = and i32 %2258, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101000000000
  %2262 = fmul fast float %2249, %2254
  %2263 = fadd fast float %2262, %2257
  %2264 = fmul fast float %2263, 0x3F70101000000000
  %2265 = fadd fast float %2250, -5.000000e-01
  %2266 = fadd fast float %2252, -5.000000e-01
  %2267 = fmul fast float %2265, %2261
  %2268 = fmul fast float %2266, %2261
  %2269 = fadd fast float %2267, 5.000000e-01
  %2270 = fadd fast float %2268, 5.000000e-01
  %2271 = fmul fast float %2269, 2.000000e+00
  %2272 = fadd fast float %2271, -1.000000e+00
  %2273 = fmul fast float %2270, 2.000000e+00
  %2274 = fadd fast float %2273, -1.000000e+00
  %2275 = fadd fast float %2272, %2274
  %2276 = fmul fast float %2275, 5.000000e-01
  %2277 = fsub fast float %2272, %2274
  %2278 = fmul fast float %2277, 5.000000e-01
  %2279 = call float @dx.op.unary.f32(i32 6, float %2276)  ; FAbs(value)
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = call float @dx.op.unary.f32(i32 6, float %2278)  ; FAbs(value)
  %2282 = fsub fast float %2280, %2281
  %2283 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2278, float %2282, float %2276, float %2278, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %2284 = call float @dx.op.unary.f32(i32 25, float %2283)  ; Rsqrt(value)
  %2285 = fmul fast float %2276, %2284
  %2286 = fmul fast float %2278, %2284
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 67108864
  %2290 = icmp eq i32 %2289, 0
  br i1 %2290, label %2307, label %2291

; <label>:2291                                    ; preds = %2239
  %2292 = add i32 %60, 312
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 65535
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 65535
  %2300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2299)  ; LegacyF16ToF32(value)
  %2301 = lshr i32 %2294, 16
  %2302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2301)  ; LegacyF16ToF32(value)
  %2303 = fsub fast float %2264, %2302
  %2304 = fmul fast float %2303, %2296
  %2305 = fadd fast float %2304, %2300
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  br label %2307

; <label>:2307                                    ; preds = %2291, %2239
  %2308 = phi float [ %2306, %2291 ], [ %2264, %2239 ]
  %2309 = call float @dx.op.dot2.f32(i32 54, float %2285, float %2286, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  %2310 = call float @dx.op.dot2.f32(i32 54, float %2285, float %2286, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  br label %2311

; <label>:2311                                    ; preds = %2307, %2217
  %2312 = phi float [ %2308, %2307 ], [ 0x3FD6666660000000, %2217 ]
  %2313 = phi float [ %2309, %2307 ], [ 0.000000e+00, %2217 ]
  %2314 = phi float [ %2310, %2307 ], [ 0.000000e+00, %2217 ]
  %2315 = phi float [ %2251, %2307 ], [ 1.000000e+00, %2217 ]
  %2316 = add i32 %60, 192
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = lshr i32 %2318, 22
  %2320 = shl nuw nsw i32 %2319, 5
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 64
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2359, label %2326

; <label>:2326                                    ; preds = %2311
  %2327 = add i32 %60, 448
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %2329, 0
  %2331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 131072
  %2335 = icmp eq i32 %2334, 0
  %2336 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2331, %dx.types.Handle %110, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.ResRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.ResRet.f32 %2336, 2
  %2340 = fmul fast float %2337, %393
  %2341 = fmul fast float %2338, %396
  %2342 = fmul fast float %2339, %399
  br i1 %2335, label %2349, label %2343

; <label>:2343                                    ; preds = %2326
  %2344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2344, 0
  %2346 = fmul fast float %2345, %2340
  %2347 = fmul fast float %2345, %2341
  %2348 = fmul fast float %2345, %2342
  br label %2349

; <label>:2349                                    ; preds = %2343, %2326
  %2350 = phi float [ %2346, %2343 ], [ %2340, %2326 ]
  %2351 = phi float [ %2347, %2343 ], [ %2341, %2326 ]
  %2352 = phi float [ %2348, %2343 ], [ %2342, %2326 ]
  %2353 = fmul fast float %2350, %2321
  %2354 = select i1 %292, float %2353, float %2350
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2351, float %2352, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = select i1 %292, float 0.000000e+00, float %2350
  %2357 = select i1 %292, float %2355, float %2351
  %2358 = select i1 %292, float 0.000000e+00, float %2352
  br label %2359

; <label>:2359                                    ; preds = %2349, %2311
  %2360 = phi float [ %2356, %2349 ], [ 0.000000e+00, %2311 ]
  %2361 = phi float [ %2357, %2349 ], [ 0.000000e+00, %2311 ]
  %2362 = phi float [ %2358, %2349 ], [ 0.000000e+00, %2311 ]
  %2363 = add i32 %60, 128
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = lshr i32 %2365, 8
  %2369 = and i32 %2368, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = call float @dx.op.dot3.f32(i32 55, float %2232, float %2233, float %2234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2372 = fmul fast float %2370, %2371
  %2373 = fadd fast float %2372, %2367
  %2374 = fmul fast float %2373, 0x3F70101020000000
  %2375 = call float @dx.op.unary.f32(i32 7, float %2374)  ; Saturate(value)
  br i1 %1831, label %2376, label %2384

; <label>:2376                                    ; preds = %2359
  %2377 = fsub fast float 1.000000e+00, %2012
  %2378 = fmul fast float %2377, %1820
  %2379 = fmul fast float %2377, %1821
  %2380 = fmul fast float %2377, %1822
  %2381 = fmul fast float %2377, %1823
  %2382 = fmul fast float %2377, %1824
  %2383 = fmul fast float %2377, %1825
  br label %2384

; <label>:2384                                    ; preds = %2376, %2359
  %2385 = phi float [ %2378, %2376 ], [ %1820, %2359 ]
  %2386 = phi float [ %2379, %2376 ], [ %1821, %2359 ]
  %2387 = phi float [ %2380, %2376 ], [ %1822, %2359 ]
  %2388 = phi float [ %2381, %2376 ], [ %1823, %2359 ]
  %2389 = phi float [ %2382, %2376 ], [ %1824, %2359 ]
  %2390 = phi float [ %2383, %2376 ], [ %1825, %2359 ]
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 3
  %2394 = icmp eq i32 %2393, 3
  br i1 %2394, label %2473, label %2395

; <label>:2395                                    ; preds = %2384
  %2396 = and i32 %2392, 16
  %2397 = icmp ne i32 %2396, 0
  %2398 = select i1 %2397, float %2012, float 0.000000e+00
  %2399 = icmp eq i32 %2393, 0
  br i1 %2399, label %2400, label %2428

; <label>:2400                                    ; preds = %2395
  %2401 = and i32 %2392, 64
  %2402 = icmp ne i32 %2401, 0
  %2403 = select i1 %2402, float %2012, float 0.000000e+00
  %2404 = fsub fast float %2232, %2385
  %2405 = fsub fast float %2233, %2386
  %2406 = fsub fast float %2234, %2387
  %2407 = fmul fast float %2398, %2404
  %2408 = fmul fast float %2398, %2405
  %2409 = fmul fast float %2398, %2406
  %2410 = fadd fast float %2407, %2385
  %2411 = fadd fast float %2408, %2386
  %2412 = fadd fast float %2409, %2387
  %2413 = fsub fast float %2218, %1826
  %2414 = fmul fast float %2398, %2413
  %2415 = fadd fast float %2414, %1826
  %2416 = fsub fast float %2360, %2388
  %2417 = fsub fast float %2361, %2389
  %2418 = fsub fast float %2362, %2390
  %2419 = fmul fast float %2403, %2416
  %2420 = fmul fast float %2403, %2417
  %2421 = fmul fast float %2403, %2418
  %2422 = fadd fast float %2419, %2388
  %2423 = fadd fast float %2420, %2389
  %2424 = fadd fast float %2421, %2390
  %2425 = fsub fast float %2375, %1829
  %2426 = fmul fast float %2398, %2425
  %2427 = fadd fast float %2426, %1829
  br label %2473

; <label>:2428                                    ; preds = %2395
  %2429 = icmp eq i32 %2393, 1
  br i1 %2429, label %2430, label %2443

; <label>:2430                                    ; preds = %2428
  %2431 = fadd fast float %2232, -1.000000e+00
  %2432 = fadd fast float %2233, -1.000000e+00
  %2433 = fadd fast float %2234, -1.000000e+00
  %2434 = fmul fast float %2398, %2431
  %2435 = fmul fast float %2398, %2432
  %2436 = fmul fast float %2398, %2433
  %2437 = fadd fast float %2434, 1.000000e+00
  %2438 = fadd fast float %2435, 1.000000e+00
  %2439 = fadd fast float %2436, 1.000000e+00
  %2440 = fmul fast float %2437, %2385
  %2441 = fmul fast float %2438, %2386
  %2442 = fmul fast float %2439, %2387
  br label %2473

; <label>:2443                                    ; preds = %2428
  %2444 = icmp eq i32 %2393, 2
  br i1 %2444, label %2445, label %2473

; <label>:2445                                    ; preds = %2443
  %2446 = call float @dx.op.unary.f32(i32 24, float %2232)  ; Sqrt(value)
  %2447 = call float @dx.op.unary.f32(i32 24, float %2233)  ; Sqrt(value)
  %2448 = call float @dx.op.unary.f32(i32 24, float %2234)  ; Sqrt(value)
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fadd fast float %2447, -5.000000e-01
  %2451 = fadd fast float %2448, -5.000000e-01
  %2452 = fmul fast float %2449, %2398
  %2453 = fmul fast float %2450, %2398
  %2454 = fmul fast float %2451, %2398
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = fadd fast float %2453, 5.000000e-01
  %2457 = fadd fast float %2454, 5.000000e-01
  %2458 = fmul fast float %2455, 2.000000e+00
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2459, %2385
  %2461 = fadd fast float %2460, %2458
  %2462 = fmul fast float %2461, %2385
  %2463 = fmul fast float %2456, 2.000000e+00
  %2464 = fsub fast float 1.000000e+00, %2463
  %2465 = fmul fast float %2464, %2386
  %2466 = fadd fast float %2465, %2463
  %2467 = fmul fast float %2466, %2386
  %2468 = fmul fast float %2457, 2.000000e+00
  %2469 = fsub fast float 1.000000e+00, %2468
  %2470 = fmul fast float %2469, %2387
  %2471 = fadd fast float %2470, %2468
  %2472 = fmul fast float %2471, %2387
  br label %2473

; <label>:2473                                    ; preds = %2445, %2443, %2430, %2400, %2384
  %2474 = phi float [ %2385, %2384 ], [ %2462, %2445 ], [ %2385, %2443 ], [ %2440, %2430 ], [ %2410, %2400 ]
  %2475 = phi float [ %2386, %2384 ], [ %2467, %2445 ], [ %2386, %2443 ], [ %2441, %2430 ], [ %2411, %2400 ]
  %2476 = phi float [ %2387, %2384 ], [ %2472, %2445 ], [ %2387, %2443 ], [ %2442, %2430 ], [ %2412, %2400 ]
  %2477 = phi float [ %2388, %2384 ], [ %2388, %2445 ], [ %2388, %2443 ], [ %2388, %2430 ], [ %2422, %2400 ]
  %2478 = phi float [ %2389, %2384 ], [ %2389, %2445 ], [ %2389, %2443 ], [ %2389, %2430 ], [ %2423, %2400 ]
  %2479 = phi float [ %2390, %2384 ], [ %2390, %2445 ], [ %2390, %2443 ], [ %2390, %2430 ], [ %2424, %2400 ]
  %2480 = phi float [ %1826, %2384 ], [ %1826, %2445 ], [ %1826, %2443 ], [ %1826, %2430 ], [ %2415, %2400 ]
  %2481 = phi float [ %1829, %2384 ], [ %1829, %2445 ], [ %1829, %2443 ], [ %1829, %2430 ], [ %2427, %2400 ]
  %2482 = and i32 %2392, 12
  %2483 = icmp eq i32 %2482, 12
  br i1 %2483, label %2556, label %2484

; <label>:2484                                    ; preds = %2473
  %2485 = and i32 %2392, 2097184
  %2486 = icmp eq i32 %2485, 2097184
  %2487 = select i1 %2486, float %2012, float 0.000000e+00
  %2488 = and i32 %2392, 4194336
  %2489 = icmp eq i32 %2488, 4194336
  %2490 = select i1 %2489, float %2012, float 0.000000e+00
  %2491 = and i32 %2392, 8388640
  %2492 = icmp eq i32 %2491, 8388640
  %2493 = select i1 %2492, float %2012, float 0.000000e+00
  %2494 = icmp eq i32 %2482, 0
  br i1 %2494, label %2495, label %2508

; <label>:2495                                    ; preds = %2484
  %2496 = fsub fast float %2313, %1818
  %2497 = fsub fast float %2314, %1819
  %2498 = fmul fast float %2487, %2496
  %2499 = fmul fast float %2487, %2497
  %2500 = fadd fast float %2498, %1818
  %2501 = fadd fast float %2499, %1819
  %2502 = fsub fast float %2315, %1828
  %2503 = fmul fast float %2490, %2502
  %2504 = fadd fast float %2503, %1828
  %2505 = fsub fast float %2312, %1827
  %2506 = fmul fast float %2493, %2505
  %2507 = fadd fast float %2506, %1827
  br label %2556

; <label>:2508                                    ; preds = %2484
  %2509 = icmp eq i32 %2482, 4
  br i1 %2509, label %2510, label %2542

; <label>:2510                                    ; preds = %2508
  %2511 = fmul fast float %2487, %2313
  %2512 = fmul fast float %2487, %2314
  %2513 = fadd fast float %2511, %1818
  %2514 = fadd fast float %2512, %1819
  %2515 = call float @dx.op.binary.f32(i32 36, float %1828, float %2315)  ; FMin(a,b)
  %2516 = fsub fast float %2515, %1828
  %2517 = fmul fast float %2516, %2490
  %2518 = fadd fast float %2517, %1828
  %2519 = fadd fast float %2312, %1827
  %2520 = fmul fast float %2519, 0x3FF337FAE0000000
  %2521 = fmul fast float %1827, %1827
  %2522 = fmul fast float %2312, %2312
  %2523 = fadd fast float %2522, %2521
  %2524 = fmul fast float %2523, 0x3FE5152B00000000
  %2525 = fmul fast float %1827, 0xBFCC1F85E0000000
  %2526 = fmul fast float %2525, %2312
  %2527 = fadd fast float %2526, 0xBFE1363700000000
  %2528 = fadd fast float %2527, %2520
  %2529 = fsub fast float %2528, %2524
  %2530 = fmul fast float %2519, 0x3FBA6F0D00000000
  %2531 = fmul fast float %2523, 0x3FD0432880000000
  %2532 = fmul fast float %1827, 0xBFEF110800000000
  %2533 = fmul fast float %2532, %2312
  %2534 = fadd fast float %2533, 1.000000e+00
  %2535 = fsub fast float %2534, %2530
  %2536 = fadd fast float %2535, %2531
  %2537 = fdiv fast float %2529, %2536
  %2538 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2539 = fsub fast float %2538, %1827
  %2540 = fmul fast float %2539, %2493
  %2541 = fadd fast float %2540, %1827
  br label %2556

; <label>:2542                                    ; preds = %2508
  %2543 = icmp eq i32 %2482, 8
  br i1 %2543, label %2544, label %2556

; <label>:2544                                    ; preds = %2542
  %2545 = fmul fast float %2487, %2313
  %2546 = fmul fast float %2487, %2314
  %2547 = fadd fast float %2545, %1818
  %2548 = fadd fast float %2546, %1819
  %2549 = call float @dx.op.binary.f32(i32 36, float %1828, float %2315)  ; FMin(a,b)
  %2550 = fsub fast float %2549, %1828
  %2551 = fmul fast float %2550, %2490
  %2552 = fadd fast float %2551, %1828
  %2553 = fsub fast float %2312, %1827
  %2554 = fmul fast float %2493, %2553
  %2555 = fadd fast float %2554, %1827
  br label %2556

; <label>:2556                                    ; preds = %2544, %2542, %2510, %2495, %2473, %2011, %1830, %1817
  %2557 = phi float [ %1818, %2473 ], [ %1818, %2011 ], [ %1818, %1817 ], [ %2547, %2544 ], [ %1818, %2542 ], [ %2513, %2510 ], [ %2500, %2495 ], [ %1818, %1830 ]
  %2558 = phi float [ %1819, %2473 ], [ %1819, %2011 ], [ %1819, %1817 ], [ %2548, %2544 ], [ %1819, %2542 ], [ %2514, %2510 ], [ %2501, %2495 ], [ %1819, %1830 ]
  %2559 = phi float [ %2474, %2473 ], [ %1820, %2011 ], [ %1820, %1817 ], [ %2474, %2544 ], [ %2474, %2542 ], [ %2474, %2510 ], [ %2474, %2495 ], [ %1820, %1830 ]
  %2560 = phi float [ %2475, %2473 ], [ %1821, %2011 ], [ %1821, %1817 ], [ %2475, %2544 ], [ %2475, %2542 ], [ %2475, %2510 ], [ %2475, %2495 ], [ %1821, %1830 ]
  %2561 = phi float [ %2476, %2473 ], [ %1822, %2011 ], [ %1822, %1817 ], [ %2476, %2544 ], [ %2476, %2542 ], [ %2476, %2510 ], [ %2476, %2495 ], [ %1822, %1830 ]
  %2562 = phi float [ %2477, %2473 ], [ %1823, %2011 ], [ %1823, %1817 ], [ %2477, %2544 ], [ %2477, %2542 ], [ %2477, %2510 ], [ %2477, %2495 ], [ %1823, %1830 ]
  %2563 = phi float [ %2478, %2473 ], [ %1824, %2011 ], [ %1824, %1817 ], [ %2478, %2544 ], [ %2478, %2542 ], [ %2478, %2510 ], [ %2478, %2495 ], [ %1824, %1830 ]
  %2564 = phi float [ %2479, %2473 ], [ %1825, %2011 ], [ %1825, %1817 ], [ %2479, %2544 ], [ %2479, %2542 ], [ %2479, %2510 ], [ %2479, %2495 ], [ %1825, %1830 ]
  %2565 = phi float [ %2480, %2473 ], [ %1826, %2011 ], [ %1826, %1817 ], [ %2480, %2544 ], [ %2480, %2542 ], [ %2480, %2510 ], [ %2480, %2495 ], [ %1826, %1830 ]
  %2566 = phi float [ %1827, %2473 ], [ %1827, %2011 ], [ %1827, %1817 ], [ %2555, %2544 ], [ %1827, %2542 ], [ %2541, %2510 ], [ %2507, %2495 ], [ %1827, %1830 ]
  %2567 = phi float [ %1828, %2473 ], [ %1828, %2011 ], [ %1828, %1817 ], [ %2552, %2544 ], [ %1828, %2542 ], [ %2518, %2510 ], [ %2504, %2495 ], [ %1828, %1830 ]
  %2568 = phi float [ %2481, %2473 ], [ %1829, %2011 ], [ %1829, %1817 ], [ %2481, %2544 ], [ %2481, %2542 ], [ %2481, %2510 ], [ %2481, %2495 ], [ %1829, %1830 ]
  br i1 %480, label %3295, label %2569

; <label>:2569                                    ; preds = %2556
  %2570 = icmp ult i32 %534, 4
  %2571 = add i32 %60, 72
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = add i32 %60, 76
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = or i32 %2576, %2573
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %3295, label %2579

; <label>:2579                                    ; preds = %2569
  %2580 = and i32 %2573, 262144
  %2581 = icmp ne i32 %2580, 0
  %2582 = select i1 %2581, float %65, float 1.000000e+00
  %2583 = select i1 %2581, float %66, float 0.000000e+00
  %2584 = select i1 %2581, float %67, float 0.000000e+00
  %2585 = select i1 %2581, float %68, float 1.000000e+00
  %2586 = select i1 %2581, float %69, float %92
  %2587 = select i1 %2581, float %70, float %93
  %2588 = add i32 %60, 332
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = lshr i32 %2590, 16
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = fmul fast float %2592, 0x3F50624DE0000000
  %2594 = add i32 %60, 136
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = lshr i32 %2596, 16
  %2598 = and i32 %2597, 255
  %2599 = lshr i32 %2596, 24
  %2600 = add i32 %60, 340
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 65535
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = lshr i32 %2602, 16
  %2606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2605)  ; LegacyF16ToF32(value)
  %2607 = add i32 %60, 80
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = lshr i32 %2609, 22
  %2611 = shl nuw nsw i32 %2610, 5
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = shl i32 %2609, 4
  %2614 = and i32 %2613, 32752
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = lshr i32 %2609, 7
  %2617 = and i32 %2616, 32752
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2621 = fmul fast float %2620, 1.000000e+03
  %2622 = fmul fast float %470, %2621
  %2623 = call float @dx.op.unary.f32(i32 22, float %2622)  ; Frc(value)
  %2624 = fadd fast float %2623, %460
  %2625 = fmul fast float %471, %2621
  %2626 = call float @dx.op.unary.f32(i32 22, float %2625)  ; Frc(value)
  %2627 = fadd fast float %2626, %462
  %2628 = fmul fast float %2593, %2621
  %2629 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2630 = fmul fast float %2629, 0x401921FB60000000
  %2631 = fadd fast float %2630, %2612
  %2632 = call float @dx.op.unary.f32(i32 13, float %2631)  ; Sin(value)
  %2633 = call float @dx.op.unary.f32(i32 12, float %2631)  ; Cos(value)
  %2634 = fsub fast float -0.000000e+00, %2632
  %2635 = fadd fast float %2586, -5.000000e-01
  %2636 = fadd fast float %2587, -5.000000e-01
  %2637 = fmul fast float %2604, %2635
  %2638 = fmul fast float %2606, %2636
  %2639 = fadd fast float %2637, 5.000000e-01
  %2640 = fadd fast float %2638, 5.000000e-01
  %2641 = fmul fast float %2615, %2639
  %2642 = fmul fast float %2618, %2640
  %2643 = fmul fast float %2633, %2641
  %2644 = call float @dx.op.tertiary.f32(i32 46, float %2634, float %2642, float %2643)  ; FMad(a,b,c)
  %2645 = fmul fast float %2632, %2641
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2633, float %2642, float %2645)  ; FMad(a,b,c)
  %2647 = fadd fast float %2624, %2644
  %2648 = fadd fast float %2627, %2646
  %2649 = icmp ugt i32 %2598, 1
  %2650 = icmp ugt i32 %2596, 33554431
  %2651 = or i1 %2650, %2649
  br i1 %2651, label %2652, label %2677

; <label>:2652                                    ; preds = %2579
  %2653 = add i32 %60, 276
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = lshr i32 %2655, 16
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = fmul fast float %2620, %2657
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = mul nuw nsw i32 %2598, %2599
  %2661 = uitofp i32 %2660 to float
  %2662 = fmul fast float %2659, %2661
  %2663 = call float @dx.op.unary.f32(i32 27, float %2662)  ; Round_ni(value)
  %2664 = fptoui float %2663 to i32
  %2665 = urem i32 %2664, %2598
  %2666 = udiv i32 %2664, %2599
  %2667 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2668 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2669 = uitofp i32 %2665 to float
  %2670 = uitofp i32 %2666 to float
  %2671 = fadd fast float %2667, %2669
  %2672 = fadd fast float %2668, %2670
  %2673 = uitofp i32 %2598 to float
  %2674 = uitofp i32 %2599 to float
  %2675 = fdiv fast float %2671, %2673
  %2676 = fdiv fast float %2672, %2674
  br label %2677

; <label>:2677                                    ; preds = %2652, %2579
  %2678 = phi float [ %2675, %2652 ], [ %2647, %2579 ]
  %2679 = phi float [ %2676, %2652 ], [ %2648, %2579 ]
  %2680 = and i32 %2573, 256
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2728, label %2682

; <label>:2682                                    ; preds = %2677
  %2683 = add i32 %60, 484
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = add i32 %2685, 0
  %2687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2686, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2688 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2687, %dx.types.Handle %111, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2689 = extractvalue %dx.types.ResRet.f32 %2688, 0
  %2690 = add i32 %60, 148
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = shl i32 %2692, 4
  %2694 = and i32 %2693, 32752
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = lshr i32 %2692, 7
  %2697 = and i32 %2696, 32752
  %2698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2697)  ; LegacyF16ToF32(value)
  %2699 = fsub fast float 1.000000e+00, %529
  %2700 = call float @dx.op.binary.f32(i32 35, float %2699, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2701 = bitcast float %529 to i32
  %2702 = sitofp i32 %2701 to float
  %2703 = fadd fast float %2702, 0xC1CFBF8940000000
  %2704 = fmul fast float %2698, %2703
  %2705 = fadd fast float %2704, 0x41CFBF8940000000
  %2706 = fptosi float %2705 to i32
  %2707 = bitcast i32 %2706 to float
  %2708 = bitcast float %2700 to i32
  %2709 = sitofp i32 %2708 to float
  %2710 = fadd fast float %2709, 0xC1CFBF8940000000
  %2711 = fmul fast float %2710, %2698
  %2712 = fadd fast float %2711, 0x41CFBF8940000000
  %2713 = fptosi float %2712 to i32
  %2714 = bitcast i32 %2713 to float
  %2715 = fmul fast float %2707, %2695
  %2716 = fmul fast float %2714, %2695
  %2717 = fsub fast float %2700, %2715
  %2718 = fadd fast float %2716, %2700
  %2719 = call float @dx.op.unary.f32(i32 7, float %2717)  ; Saturate(value)
  %2720 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  %2721 = fsub fast float %2689, %2719
  %2722 = fsub fast float %2720, %2719
  %2723 = bitcast float %2722 to i32
  %2724 = sub nsw i32 2129859010, %2723
  %2725 = bitcast i32 %2724 to float
  %2726 = fmul fast float %2725, %2721
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  br label %2728

; <label>:2728                                    ; preds = %2682, %2677
  %2729 = phi float [ %2727, %2682 ], [ %529, %2677 ]
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 128
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %2750, label %2734

; <label>:2734                                    ; preds = %2728
  %2735 = add i32 %60, 468
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = add i32 %2737, 0
  %2739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2739, %dx.types.Handle %111, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2741 = extractvalue %dx.types.ResRet.f32 %2740, 0
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 524288
  %2745 = icmp ne i32 %2744, 0
  %2746 = fcmp fast ogt float %2741, 0x3FE0101020000000
  %2747 = select i1 %2746, float 1.000000e+00, float 0.000000e+00
  %2748 = select i1 %2745, float %2747, float %2741
  %2749 = fmul fast float %2748, %2729
  br label %2750

; <label>:2750                                    ; preds = %2734, %2728
  %2751 = phi float [ %2749, %2734 ], [ %2729, %2728 ]
  %2752 = fcmp fast ult float %2751, 0x3F70101020000000
  br i1 %2752, label %3295, label %2753

; <label>:2753                                    ; preds = %2750
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 16
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2956, label %2758

; <label>:2758                                    ; preds = %2753
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = add i32 %60, 420
  %2762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.i32 %2762, 0
  %2764 = add i32 %2763, 0
  %2765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2765, %dx.types.Handle %110, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = extractvalue %dx.types.ResRet.f32 %2766, 3
  %2771 = and i32 %2760, 255
  %2772 = uitofp i32 %2771 to float
  %2773 = lshr i32 %2760, 8
  %2774 = and i32 %2773, 255
  %2775 = uitofp i32 %2774 to float
  %2776 = fmul fast float %2770, %2772
  %2777 = fadd fast float %2776, %2775
  %2778 = fmul fast float %2777, 0x3F70101000000000
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 512
  %2782 = icmp eq i32 %2781, 0
  br i1 %2782, label %2791, label %2783

; <label>:2783                                    ; preds = %2758
  %2784 = add i32 %60, 500
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = add i32 %2786, 0
  %2788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2789 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2788, %dx.types.Handle %111, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  br label %2791

; <label>:2791                                    ; preds = %2783, %2758
  %2792 = phi float [ %2790, %2783 ], [ 1.000000e+00, %2758 ]
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = and i32 %2794, 33554432
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %2903, label %2797

; <label>:2797                                    ; preds = %2791
  %2798 = add i32 %60, 272
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, 65535
  %2802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2801)  ; LegacyF16ToF32(value)
  %2803 = lshr i32 %2800, 16
  %2804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2803)  ; LegacyF16ToF32(value)
  %2805 = add i32 %60, 276
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 65535
  %2809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2808)  ; LegacyF16ToF32(value)
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2826 = add i32 %60, 268
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = lshr i32 %2828, 24
  %2830 = uitofp i32 %2829 to float
  %2831 = fmul fast float %2830, 0x3F70101020000000
  %2832 = and i32 %2828, 255
  %2833 = uitofp i32 %2832 to float
  %2834 = fmul fast float %2833, 0x3F70101020000000
  %2835 = lshr i32 %2828, 8
  %2836 = and i32 %2835, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = fmul fast float %2837, 0x3F70101020000000
  %2839 = lshr i32 %2828, 16
  %2840 = and i32 %2839, 255
  %2841 = uitofp i32 %2840 to float
  %2842 = fmul fast float %2841, 0x3F70101020000000
  %2843 = bitcast float %2767 to i32
  %2844 = ashr i32 %2843, 1
  %2845 = sub nsw i32 1597463174, %2844
  %2846 = bitcast i32 %2845 to float
  %2847 = fmul fast float %2767, 5.000000e-01
  %2848 = fmul fast float %2846, %2846
  %2849 = fmul fast float %2848, %2847
  %2850 = fsub fast float 1.500000e+00, %2849
  %2851 = fmul fast float %2846, %2767
  %2852 = fmul fast float %2851, %2850
  %2853 = bitcast float %2768 to i32
  %2854 = ashr i32 %2853, 1
  %2855 = sub nsw i32 1597463174, %2854
  %2856 = bitcast i32 %2855 to float
  %2857 = fmul fast float %2768, 5.000000e-01
  %2858 = fmul fast float %2856, %2856
  %2859 = fmul fast float %2858, %2857
  %2860 = fsub fast float 1.500000e+00, %2859
  %2861 = fmul fast float %2856, %2768
  %2862 = fmul fast float %2861, %2860
  %2863 = bitcast float %2769 to i32
  %2864 = ashr i32 %2863, 1
  %2865 = sub nsw i32 1597463174, %2864
  %2866 = bitcast i32 %2865 to float
  %2867 = fmul fast float %2769, 5.000000e-01
  %2868 = fmul fast float %2866, %2866
  %2869 = fmul fast float %2868, %2867
  %2870 = fsub fast float 1.500000e+00, %2869
  %2871 = fmul fast float %2866, %2769
  %2872 = fmul fast float %2871, %2870
  %2873 = fsub fast float %2852, %2834
  %2874 = fsub fast float %2862, %2838
  %2875 = fsub fast float %2872, %2842
  %2876 = fmul fast float %2873, %2802
  %2877 = fmul fast float %2874, %2804
  %2878 = fmul fast float %2875, %2809
  %2879 = fadd fast float %2876, %2817
  %2880 = fadd fast float %2877, %2821
  %2881 = fadd fast float %2878, %2825
  %2882 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2885 = fmul fast float %2882, %2882
  %2886 = fmul fast float %2883, %2883
  %2887 = fmul fast float %2884, %2884
  %2888 = fsub fast float %2885, %2767
  %2889 = fsub fast float %2886, %2768
  %2890 = fsub fast float %2887, %2769
  %2891 = fmul fast float %2888, %2792
  %2892 = fmul fast float %2889, %2792
  %2893 = fmul fast float %2890, %2792
  %2894 = fadd fast float %2891, %2767
  %2895 = fadd fast float %2892, %2768
  %2896 = fadd fast float %2893, %2769
  %2897 = fadd fast float %2814, %2778
  %2898 = fsub fast float %2897, %2831
  %2899 = call float @dx.op.unary.f32(i32 7, float %2898)  ; Saturate(value)
  %2900 = fsub fast float %2899, %2778
  %2901 = fmul fast float %2900, %2792
  %2902 = fadd fast float %2901, %2778
  br label %2956

; <label>:2903                                    ; preds = %2791
  %2904 = and i32 %2794, 134217728
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2940, label %2906

; <label>:2906                                    ; preds = %2903
  %2907 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %2908 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %2909 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fadd fast float %2908, -5.000000e-01
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fmul fast float %2910, %2792
  %2914 = fmul fast float %2911, %2792
  %2915 = fmul fast float %2912, %2792
  %2916 = fadd fast float %2913, 5.000000e-01
  %2917 = fadd fast float %2914, 5.000000e-01
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = call float @dx.op.unary.f32(i32 24, float %2767)  ; Sqrt(value)
  %2920 = call float @dx.op.unary.f32(i32 24, float %2768)  ; Sqrt(value)
  %2921 = call float @dx.op.unary.f32(i32 24, float %2769)  ; Sqrt(value)
  %2922 = fmul fast float %2916, 2.000000e+00
  %2923 = fsub fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2923, %2919
  %2925 = fadd fast float %2924, %2922
  %2926 = fmul fast float %2925, %2919
  %2927 = fmul fast float %2917, 2.000000e+00
  %2928 = fsub fast float 1.000000e+00, %2927
  %2929 = fmul fast float %2928, %2920
  %2930 = fadd fast float %2929, %2927
  %2931 = fmul fast float %2930, %2920
  %2932 = fmul fast float %2918, 2.000000e+00
  %2933 = fsub fast float 1.000000e+00, %2932
  %2934 = fmul fast float %2933, %2921
  %2935 = fadd fast float %2934, %2932
  %2936 = fmul fast float %2935, %2921
  %2937 = fmul fast float %2926, %2926
  %2938 = fmul fast float %2931, %2931
  %2939 = fmul fast float %2936, %2936
  br label %2956

; <label>:2940                                    ; preds = %2903
  %2941 = fmul fast float %447, %447
  %2942 = fmul fast float %451, %451
  %2943 = fmul fast float %455, %455
  %2944 = fadd fast float %2941, -1.000000e+00
  %2945 = fadd fast float %2942, -1.000000e+00
  %2946 = fadd fast float %2943, -1.000000e+00
  %2947 = fmul fast float %2792, %2944
  %2948 = fmul fast float %2792, %2945
  %2949 = fmul fast float %2792, %2946
  %2950 = fadd fast float %2947, 1.000000e+00
  %2951 = fadd fast float %2948, 1.000000e+00
  %2952 = fadd fast float %2949, 1.000000e+00
  %2953 = fmul fast float %2950, %2767
  %2954 = fmul fast float %2951, %2768
  %2955 = fmul fast float %2952, %2769
  br label %2956

; <label>:2956                                    ; preds = %2940, %2906, %2797, %2753
  %2957 = phi float [ %2902, %2797 ], [ %2778, %2906 ], [ %2778, %2940 ], [ 0x3FA23C0BE0000000, %2753 ]
  %2958 = phi float [ %2894, %2797 ], [ %2937, %2906 ], [ %2953, %2940 ], [ 1.000000e+00, %2753 ]
  %2959 = phi float [ %2895, %2797 ], [ %2938, %2906 ], [ %2954, %2940 ], [ 1.000000e+00, %2753 ]
  %2960 = phi float [ %2896, %2797 ], [ %2939, %2906 ], [ %2955, %2940 ], [ 1.000000e+00, %2753 ]
  %2961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2962 = extractvalue %dx.types.CBufRet.i32 %2961, 1
  %2963 = and i32 %2962, 1
  %2964 = icmp ne i32 %2963, 0
  %2965 = add i32 %60, 356
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 32
  %2969 = icmp ne i32 %2968, 0
  %2970 = and i1 %2964, %2969
  %2971 = select i1 %2970, float 1.000000e+00, float %2958
  %2972 = select i1 %2970, float 0x3FD3333340000000, float %2959
  %2973 = select i1 %2970, float 0x3FD3333340000000, float %2960
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 32
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3050, label %2978

; <label>:2978                                    ; preds = %2956
  %2979 = add i32 %60, 140
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = add i32 %60, 436
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = add i32 %2984, 0
  %2986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2986, %dx.types.Handle %110, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2988 = extractvalue %dx.types.ResRet.f32 %2987, 0
  %2989 = extractvalue %dx.types.ResRet.f32 %2987, 1
  %2990 = extractvalue %dx.types.ResRet.f32 %2987, 2
  %2991 = extractvalue %dx.types.ResRet.f32 %2987, 3
  %2992 = and i32 %2981, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = lshr i32 %2981, 8
  %2995 = and i32 %2994, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = lshr i32 %2981, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101000000000
  %3001 = fmul fast float %2988, %2993
  %3002 = fadd fast float %3001, %2996
  %3003 = fmul fast float %3002, 0x3F70101000000000
  %3004 = fadd fast float %2989, -5.000000e-01
  %3005 = fadd fast float %2991, -5.000000e-01
  %3006 = fmul fast float %3004, %3000
  %3007 = fmul fast float %3005, %3000
  %3008 = fadd fast float %3006, 5.000000e-01
  %3009 = fadd fast float %3007, 5.000000e-01
  %3010 = fmul fast float %3008, 2.000000e+00
  %3011 = fadd fast float %3010, -1.000000e+00
  %3012 = fmul fast float %3009, 2.000000e+00
  %3013 = fadd fast float %3012, -1.000000e+00
  %3014 = fadd fast float %3011, %3013
  %3015 = fmul fast float %3014, 5.000000e-01
  %3016 = fsub fast float %3011, %3013
  %3017 = fmul fast float %3016, 5.000000e-01
  %3018 = call float @dx.op.unary.f32(i32 6, float %3015)  ; FAbs(value)
  %3019 = fsub fast float 1.000000e+00, %3018
  %3020 = call float @dx.op.unary.f32(i32 6, float %3017)  ; FAbs(value)
  %3021 = fsub fast float %3019, %3020
  %3022 = call float @dx.op.dot3.f32(i32 55, float %3015, float %3017, float %3021, float %3015, float %3017, float %3021)  ; Dot3(ax,ay,az,bx,by,bz)
  %3023 = call float @dx.op.unary.f32(i32 25, float %3022)  ; Rsqrt(value)
  %3024 = fmul fast float %3015, %3023
  %3025 = fmul fast float %3017, %3023
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 67108864
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3046, label %3030

; <label>:3030                                    ; preds = %2978
  %3031 = add i32 %60, 328
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 65535
  %3035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3034)  ; LegacyF16ToF32(value)
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = and i32 %3037, 65535
  %3039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3038)  ; LegacyF16ToF32(value)
  %3040 = lshr i32 %3033, 16
  %3041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3040)  ; LegacyF16ToF32(value)
  %3042 = fsub fast float %3003, %3041
  %3043 = fmul fast float %3042, %3035
  %3044 = fadd fast float %3043, %3039
  %3045 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  br label %3046

; <label>:3046                                    ; preds = %3030, %2978
  %3047 = phi float [ %3045, %3030 ], [ %3003, %2978 ]
  %3048 = call float @dx.op.dot2.f32(i32 54, float %3024, float %3025, float %2582, float %2583)  ; Dot2(ax,ay,bx,by)
  %3049 = call float @dx.op.dot2.f32(i32 54, float %3024, float %3025, float %2584, float %2585)  ; Dot2(ax,ay,bx,by)
  br label %3050

; <label>:3050                                    ; preds = %3046, %2956
  %3051 = phi float [ %3047, %3046 ], [ 0x3FD6666660000000, %2956 ]
  %3052 = phi float [ %3048, %3046 ], [ 0.000000e+00, %2956 ]
  %3053 = phi float [ %3049, %3046 ], [ 0.000000e+00, %2956 ]
  %3054 = phi float [ %2990, %3046 ], [ 1.000000e+00, %2956 ]
  %3055 = add i32 %60, 208
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 22
  %3059 = shl nuw nsw i32 %3058, 5
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 64
  %3064 = icmp eq i32 %3063, 0
  br i1 %3064, label %3098, label %3065

; <label>:3065                                    ; preds = %3050
  %3066 = add i32 %60, 452
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = add i32 %3068, 0
  %3070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 131072
  %3074 = icmp eq i32 %3073, 0
  %3075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3070, %dx.types.Handle %110, float %2678, float %2679, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.ResRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.ResRet.f32 %3075, 2
  %3079 = fmul fast float %3076, %435
  %3080 = fmul fast float %3077, %438
  %3081 = fmul fast float %3078, %441
  br i1 %3074, label %3088, label %3082

; <label>:3082                                    ; preds = %3065
  %3083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3084 = extractvalue %dx.types.CBufRet.f32 %3083, 0
  %3085 = fmul fast float %3084, %3079
  %3086 = fmul fast float %3084, %3080
  %3087 = fmul fast float %3084, %3081
  br label %3088

; <label>:3088                                    ; preds = %3082, %3065
  %3089 = phi float [ %3085, %3082 ], [ %3079, %3065 ]
  %3090 = phi float [ %3086, %3082 ], [ %3080, %3065 ]
  %3091 = phi float [ %3087, %3082 ], [ %3081, %3065 ]
  %3092 = fmul fast float %3089, %3060
  %3093 = select i1 %292, float %3092, float %3089
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3090, float %3091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = select i1 %292, float 0.000000e+00, float %3089
  %3096 = select i1 %292, float %3094, float %3090
  %3097 = select i1 %292, float 0.000000e+00, float %3091
  br label %3098

; <label>:3098                                    ; preds = %3088, %3050
  %3099 = phi float [ %3095, %3088 ], [ 0.000000e+00, %3050 ]
  %3100 = phi float [ %3096, %3088 ], [ 0.000000e+00, %3050 ]
  %3101 = phi float [ %3097, %3088 ], [ 0.000000e+00, %3050 ]
  %3102 = add i32 %60, 144
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = and i32 %3104, 255
  %3106 = uitofp i32 %3105 to float
  %3107 = lshr i32 %3104, 8
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = call float @dx.op.dot3.f32(i32 55, float %2971, float %2972, float %2973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3111 = fmul fast float %3109, %3110
  %3112 = fadd fast float %3111, %3106
  %3113 = fmul fast float %3112, 0x3F70101020000000
  %3114 = call float @dx.op.unary.f32(i32 7, float %3113)  ; Saturate(value)
  br i1 %2570, label %3115, label %3123

; <label>:3115                                    ; preds = %3098
  %3116 = fsub fast float 1.000000e+00, %2751
  %3117 = fmul fast float %3116, %2559
  %3118 = fmul fast float %3116, %2560
  %3119 = fmul fast float %3116, %2561
  %3120 = fmul fast float %3116, %2562
  %3121 = fmul fast float %3116, %2563
  %3122 = fmul fast float %3116, %2564
  br label %3123

; <label>:3123                                    ; preds = %3115, %3098
  %3124 = phi float [ %3117, %3115 ], [ %2559, %3098 ]
  %3125 = phi float [ %3118, %3115 ], [ %2560, %3098 ]
  %3126 = phi float [ %3119, %3115 ], [ %2561, %3098 ]
  %3127 = phi float [ %3120, %3115 ], [ %2562, %3098 ]
  %3128 = phi float [ %3121, %3115 ], [ %2563, %3098 ]
  %3129 = phi float [ %3122, %3115 ], [ %2564, %3098 ]
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 3
  %3133 = icmp eq i32 %3132, 3
  br i1 %3133, label %3212, label %3134

; <label>:3134                                    ; preds = %3123
  %3135 = and i32 %3131, 16
  %3136 = icmp ne i32 %3135, 0
  %3137 = select i1 %3136, float %2751, float 0.000000e+00
  %3138 = icmp eq i32 %3132, 0
  br i1 %3138, label %3139, label %3167

; <label>:3139                                    ; preds = %3134
  %3140 = and i32 %3131, 64
  %3141 = icmp ne i32 %3140, 0
  %3142 = select i1 %3141, float %2751, float 0.000000e+00
  %3143 = fsub fast float %2971, %3124
  %3144 = fsub fast float %2972, %3125
  %3145 = fsub fast float %2973, %3126
  %3146 = fmul fast float %3137, %3143
  %3147 = fmul fast float %3137, %3144
  %3148 = fmul fast float %3137, %3145
  %3149 = fadd fast float %3146, %3124
  %3150 = fadd fast float %3147, %3125
  %3151 = fadd fast float %3148, %3126
  %3152 = fsub fast float %2957, %2565
  %3153 = fmul fast float %3137, %3152
  %3154 = fadd fast float %3153, %2565
  %3155 = fsub fast float %3099, %3127
  %3156 = fsub fast float %3100, %3128
  %3157 = fsub fast float %3101, %3129
  %3158 = fmul fast float %3142, %3155
  %3159 = fmul fast float %3142, %3156
  %3160 = fmul fast float %3142, %3157
  %3161 = fadd fast float %3158, %3127
  %3162 = fadd fast float %3159, %3128
  %3163 = fadd fast float %3160, %3129
  %3164 = fsub fast float %3114, %2568
  %3165 = fmul fast float %3137, %3164
  %3166 = fadd fast float %3165, %2568
  br label %3212

; <label>:3167                                    ; preds = %3134
  %3168 = icmp eq i32 %3132, 1
  br i1 %3168, label %3169, label %3182

; <label>:3169                                    ; preds = %3167
  %3170 = fadd fast float %2971, -1.000000e+00
  %3171 = fadd fast float %2972, -1.000000e+00
  %3172 = fadd fast float %2973, -1.000000e+00
  %3173 = fmul fast float %3137, %3170
  %3174 = fmul fast float %3137, %3171
  %3175 = fmul fast float %3137, %3172
  %3176 = fadd fast float %3173, 1.000000e+00
  %3177 = fadd fast float %3174, 1.000000e+00
  %3178 = fadd fast float %3175, 1.000000e+00
  %3179 = fmul fast float %3176, %3124
  %3180 = fmul fast float %3177, %3125
  %3181 = fmul fast float %3178, %3126
  br label %3212

; <label>:3182                                    ; preds = %3167
  %3183 = icmp eq i32 %3132, 2
  br i1 %3183, label %3184, label %3212

; <label>:3184                                    ; preds = %3182
  %3185 = call float @dx.op.unary.f32(i32 24, float %2971)  ; Sqrt(value)
  %3186 = call float @dx.op.unary.f32(i32 24, float %2972)  ; Sqrt(value)
  %3187 = call float @dx.op.unary.f32(i32 24, float %2973)  ; Sqrt(value)
  %3188 = fadd fast float %3185, -5.000000e-01
  %3189 = fadd fast float %3186, -5.000000e-01
  %3190 = fadd fast float %3187, -5.000000e-01
  %3191 = fmul fast float %3188, %3137
  %3192 = fmul fast float %3189, %3137
  %3193 = fmul fast float %3190, %3137
  %3194 = fadd fast float %3191, 5.000000e-01
  %3195 = fadd fast float %3192, 5.000000e-01
  %3196 = fadd fast float %3193, 5.000000e-01
  %3197 = fmul fast float %3194, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3124
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3124
  %3202 = fmul fast float %3195, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3125
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3125
  %3207 = fmul fast float %3196, 2.000000e+00
  %3208 = fsub fast float 1.000000e+00, %3207
  %3209 = fmul fast float %3208, %3126
  %3210 = fadd fast float %3209, %3207
  %3211 = fmul fast float %3210, %3126
  br label %3212

; <label>:3212                                    ; preds = %3184, %3182, %3169, %3139, %3123
  %3213 = phi float [ %3124, %3123 ], [ %3201, %3184 ], [ %3124, %3182 ], [ %3179, %3169 ], [ %3149, %3139 ]
  %3214 = phi float [ %3125, %3123 ], [ %3206, %3184 ], [ %3125, %3182 ], [ %3180, %3169 ], [ %3150, %3139 ]
  %3215 = phi float [ %3126, %3123 ], [ %3211, %3184 ], [ %3126, %3182 ], [ %3181, %3169 ], [ %3151, %3139 ]
  %3216 = phi float [ %3127, %3123 ], [ %3127, %3184 ], [ %3127, %3182 ], [ %3127, %3169 ], [ %3161, %3139 ]
  %3217 = phi float [ %3128, %3123 ], [ %3128, %3184 ], [ %3128, %3182 ], [ %3128, %3169 ], [ %3162, %3139 ]
  %3218 = phi float [ %3129, %3123 ], [ %3129, %3184 ], [ %3129, %3182 ], [ %3129, %3169 ], [ %3163, %3139 ]
  %3219 = phi float [ %2565, %3123 ], [ %2565, %3184 ], [ %2565, %3182 ], [ %2565, %3169 ], [ %3154, %3139 ]
  %3220 = phi float [ %2568, %3123 ], [ %2568, %3184 ], [ %2568, %3182 ], [ %2568, %3169 ], [ %3166, %3139 ]
  %3221 = and i32 %3131, 12
  %3222 = icmp eq i32 %3221, 12
  br i1 %3222, label %3295, label %3223

; <label>:3223                                    ; preds = %3212
  %3224 = and i32 %3131, 2097184
  %3225 = icmp eq i32 %3224, 2097184
  %3226 = select i1 %3225, float %2751, float 0.000000e+00
  %3227 = and i32 %3131, 4194336
  %3228 = icmp eq i32 %3227, 4194336
  %3229 = select i1 %3228, float %2751, float 0.000000e+00
  %3230 = and i32 %3131, 8388640
  %3231 = icmp eq i32 %3230, 8388640
  %3232 = select i1 %3231, float %2751, float 0.000000e+00
  %3233 = icmp eq i32 %3221, 0
  br i1 %3233, label %3234, label %3247

; <label>:3234                                    ; preds = %3223
  %3235 = fsub fast float %3052, %2557
  %3236 = fsub fast float %3053, %2558
  %3237 = fmul fast float %3226, %3235
  %3238 = fmul fast float %3226, %3236
  %3239 = fadd fast float %3237, %2557
  %3240 = fadd fast float %3238, %2558
  %3241 = fsub fast float %3054, %2567
  %3242 = fmul fast float %3229, %3241
  %3243 = fadd fast float %3242, %2567
  %3244 = fsub fast float %3051, %2566
  %3245 = fmul fast float %3232, %3244
  %3246 = fadd fast float %3245, %2566
  br label %3295

; <label>:3247                                    ; preds = %3223
  %3248 = icmp eq i32 %3221, 4
  br i1 %3248, label %3249, label %3281

; <label>:3249                                    ; preds = %3247
  %3250 = fmul fast float %3226, %3052
  %3251 = fmul fast float %3226, %3053
  %3252 = fadd fast float %3250, %2557
  %3253 = fadd fast float %3251, %2558
  %3254 = call float @dx.op.binary.f32(i32 36, float %2567, float %3054)  ; FMin(a,b)
  %3255 = fsub fast float %3254, %2567
  %3256 = fmul fast float %3255, %3229
  %3257 = fadd fast float %3256, %2567
  %3258 = fadd fast float %3051, %2566
  %3259 = fmul fast float %3258, 0x3FF337FAE0000000
  %3260 = fmul fast float %2566, %2566
  %3261 = fmul fast float %3051, %3051
  %3262 = fadd fast float %3261, %3260
  %3263 = fmul fast float %3262, 0x3FE5152B00000000
  %3264 = fmul fast float %2566, 0xBFCC1F85E0000000
  %3265 = fmul fast float %3264, %3051
  %3266 = fadd fast float %3265, 0xBFE1363700000000
  %3267 = fadd fast float %3266, %3259
  %3268 = fsub fast float %3267, %3263
  %3269 = fmul fast float %3258, 0x3FBA6F0D00000000
  %3270 = fmul fast float %3262, 0x3FD0432880000000
  %3271 = fmul fast float %2566, 0xBFEF110800000000
  %3272 = fmul fast float %3271, %3051
  %3273 = fadd fast float %3272, 1.000000e+00
  %3274 = fsub fast float %3273, %3269
  %3275 = fadd fast float %3274, %3270
  %3276 = fdiv fast float %3268, %3275
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3278 = fsub fast float %3277, %2566
  %3279 = fmul fast float %3278, %3232
  %3280 = fadd fast float %3279, %2566
  br label %3295

; <label>:3281                                    ; preds = %3247
  %3282 = icmp eq i32 %3221, 8
  br i1 %3282, label %3283, label %3295

; <label>:3283                                    ; preds = %3281
  %3284 = fmul fast float %3226, %3052
  %3285 = fmul fast float %3226, %3053
  %3286 = fadd fast float %3284, %2557
  %3287 = fadd fast float %3285, %2558
  %3288 = call float @dx.op.binary.f32(i32 36, float %2567, float %3054)  ; FMin(a,b)
  %3289 = fsub fast float %3288, %2567
  %3290 = fmul fast float %3289, %3229
  %3291 = fadd fast float %3290, %2567
  %3292 = fsub fast float %3051, %2566
  %3293 = fmul fast float %3232, %3292
  %3294 = fadd fast float %3293, %2566
  br label %3295

; <label>:3295                                    ; preds = %3283, %3281, %3249, %3234, %3212, %2750, %2569, %2556
  %3296 = phi float [ %2557, %3212 ], [ %2557, %2750 ], [ %2557, %2556 ], [ %2557, %2569 ], [ %3239, %3234 ], [ %3252, %3249 ], [ %2557, %3281 ], [ %3286, %3283 ]
  %3297 = phi float [ %2558, %3212 ], [ %2558, %2750 ], [ %2558, %2556 ], [ %2558, %2569 ], [ %3240, %3234 ], [ %3253, %3249 ], [ %2558, %3281 ], [ %3287, %3283 ]
  %3298 = phi float [ %3213, %3212 ], [ %2559, %2750 ], [ %2559, %2556 ], [ %2559, %2569 ], [ %3213, %3234 ], [ %3213, %3249 ], [ %3213, %3281 ], [ %3213, %3283 ]
  %3299 = phi float [ %3214, %3212 ], [ %2560, %2750 ], [ %2560, %2556 ], [ %2560, %2569 ], [ %3214, %3234 ], [ %3214, %3249 ], [ %3214, %3281 ], [ %3214, %3283 ]
  %3300 = phi float [ %3215, %3212 ], [ %2561, %2750 ], [ %2561, %2556 ], [ %2561, %2569 ], [ %3215, %3234 ], [ %3215, %3249 ], [ %3215, %3281 ], [ %3215, %3283 ]
  %3301 = phi float [ %3216, %3212 ], [ %2562, %2750 ], [ %2562, %2556 ], [ %2562, %2569 ], [ %3216, %3234 ], [ %3216, %3249 ], [ %3216, %3281 ], [ %3216, %3283 ]
  %3302 = phi float [ %3217, %3212 ], [ %2563, %2750 ], [ %2563, %2556 ], [ %2563, %2569 ], [ %3217, %3234 ], [ %3217, %3249 ], [ %3217, %3281 ], [ %3217, %3283 ]
  %3303 = phi float [ %3218, %3212 ], [ %2564, %2750 ], [ %2564, %2556 ], [ %2564, %2569 ], [ %3218, %3234 ], [ %3218, %3249 ], [ %3218, %3281 ], [ %3218, %3283 ]
  %3304 = phi float [ %3219, %3212 ], [ %2565, %2750 ], [ %2565, %2556 ], [ %2565, %2569 ], [ %3219, %3234 ], [ %3219, %3249 ], [ %3219, %3281 ], [ %3219, %3283 ]
  %3305 = phi float [ %2566, %3212 ], [ %2566, %2750 ], [ %2566, %2556 ], [ %2566, %2569 ], [ %3246, %3234 ], [ %3280, %3249 ], [ %2566, %3281 ], [ %3294, %3283 ]
  %3306 = phi float [ %2567, %3212 ], [ %2567, %2750 ], [ %2567, %2556 ], [ %2567, %2569 ], [ %3243, %3234 ], [ %3257, %3249 ], [ %2567, %3281 ], [ %3291, %3283 ]
  %3307 = phi float [ %3220, %3212 ], [ %2568, %2750 ], [ %2568, %2556 ], [ %2568, %2569 ], [ %3220, %3234 ], [ %3220, %3249 ], [ %3220, %3281 ], [ %3220, %3283 ]
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = call float @dx.op.dot2.f32(i32 54, float %3296, float %3297, float %3296, float %3297)  ; Dot2(ax,ay,bx,by)
  %3311 = fmul fast float %3310, 0x3FE3333340000000
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = call float @dx.op.dot3.f32(i32 55, float %3296, float %3297, float %3312, float %3296, float %3297, float %3312)  ; Dot3(ax,ay,az,bx,by,bz)
  %3314 = call float @dx.op.unary.f32(i32 25, float %3313)  ; Rsqrt(value)
  %3315 = fmul fast float %3314, %3296
  %3316 = fmul fast float %3314, %3297
  %3317 = fmul fast float %3312, %3314
  %3318 = fmul fast float %3317, %121
  %3319 = fmul fast float %3317, %122
  %3320 = fmul fast float %3317, %123
  %3321 = fmul fast float %3315, %85
  %3322 = fmul fast float %3315, %86
  %3323 = fmul fast float %3315, %87
  %3324 = fadd fast float %3318, %3321
  %3325 = fadd fast float %3319, %3322
  %3326 = fadd fast float %3320, %3323
  %3327 = fmul fast float %133, %3316
  %3328 = fmul fast float %134, %3316
  %3329 = fmul fast float %135, %3316
  %3330 = fadd fast float %3324, %3327
  %3331 = fadd fast float %3325, %3328
  %3332 = fadd fast float %3326, %3329
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float %3330, float %3331, float %3332)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = call float @dx.op.unary.f32(i32 25, float %3333)  ; Rsqrt(value)
  %3335 = fmul fast float %3330, %3334
  %3336 = fmul fast float %3331, %3334
  %3337 = fmul fast float %3332, %3334
  %3338 = icmp eq i32 %61, 65535
  br i1 %3338, label %3853, label %3339

; <label>:3339                                    ; preds = %3295
  %3340 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3341 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3342 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3343 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3344 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3345 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3346 = fadd fast float %3340, %62
  %3347 = fadd fast float %3341, %63
  %3348 = fadd fast float %3342, %64
  %3349 = fadd fast float %3343, %62
  %3350 = fadd fast float %3344, %63
  %3351 = fadd fast float %3345, %64
  %3352 = mul i32 %61, 48
  %3353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3356 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3357 = add i32 %3352, 16
  %3358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3362 = add i32 %3352, 32
  %3363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = extractvalue %dx.types.ResRet.f32 %3363, 3
  %3368 = bitcast float %3367 to i32
  %3369 = fmul fast float %3354, %62
  %3370 = fmul fast float %3355, %63
  %3371 = fmul fast float %3356, %64
  %3372 = fsub fast float %3369, %3359
  %3373 = fsub fast float %3370, %3360
  %3374 = fsub fast float %3371, %3361
  %3375 = call float @dx.op.unary.f32(i32 7, float %3372)  ; Saturate(value)
  %3376 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3377 = call float @dx.op.unary.f32(i32 7, float %3374)  ; Saturate(value)
  %3378 = fmul fast float %3375, %3364
  %3379 = fmul fast float %3376, %3365
  %3380 = fmul fast float %3377, %3366
  %3381 = fadd fast float %3364, -1.000000e+00
  %3382 = fadd fast float %3365, -1.000000e+00
  %3383 = fadd fast float %3366, -1.000000e+00
  %3384 = call float @dx.op.unary.f32(i32 27, float %3378)  ; Round_ni(value)
  %3385 = call float @dx.op.unary.f32(i32 27, float %3379)  ; Round_ni(value)
  %3386 = call float @dx.op.unary.f32(i32 27, float %3380)  ; Round_ni(value)
  %3387 = call float @dx.op.binary.f32(i32 36, float %3384, float %3381)  ; FMin(a,b)
  %3388 = call float @dx.op.binary.f32(i32 36, float %3385, float %3382)  ; FMin(a,b)
  %3389 = call float @dx.op.binary.f32(i32 36, float %3386, float %3383)  ; FMin(a,b)
  %3390 = fmul fast float %3389, %3365
  %3391 = fadd fast float %3390, %3388
  %3392 = fmul fast float %3391, %3364
  %3393 = fadd fast float %3392, %3387
  %3394 = fptosi float %3393 to i32
  %3395 = add nsw i32 %3394, %3368
  %3396 = shl nsw i32 %3395, 2
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = lshr i32 %3398, 16
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3822, label %3401

; <label>:3401                                    ; preds = %3339
  br label %3402

; <label>:3402                                    ; preds = %3523, %3401
  %3403 = phi i32 [ %3425, %3523 ], [ %3399, %3401 ]
  %3404 = phi float [ %3524, %3523 ], [ 0.000000e+00, %3401 ]
  %3405 = phi float [ %3525, %3523 ], [ %3309, %3401 ]
  %3406 = phi float [ %3526, %3523 ], [ %3307, %3401 ]
  %3407 = phi float [ %3527, %3523 ], [ 0.000000e+00, %3401 ]
  %3408 = phi float [ %3528, %3523 ], [ 0.000000e+00, %3401 ]
  %3409 = phi float [ %3529, %3523 ], [ %3301, %3401 ]
  %3410 = phi float [ %3530, %3523 ], [ %3302, %3401 ]
  %3411 = phi float [ %3531, %3523 ], [ %3303, %3401 ]
  %3412 = phi float [ %3532, %3523 ], [ %3335, %3401 ]
  %3413 = phi float [ %3533, %3523 ], [ %3336, %3401 ]
  %3414 = phi float [ %3534, %3523 ], [ %3337, %3401 ]
  %3415 = phi float [ %3535, %3523 ], [ %3306, %3401 ]
  %3416 = phi float [ %3536, %3523 ], [ %3305, %3401 ]
  %3417 = phi float [ %3537, %3523 ], [ 0.000000e+00, %3401 ]
  %3418 = phi float [ %3538, %3523 ], [ %3304, %3401 ]
  %3419 = phi float [ %3539, %3523 ], [ %3298, %3401 ]
  %3420 = phi float [ %3540, %3523 ], [ %3299, %3401 ]
  %3421 = phi float [ %3541, %3523 ], [ %3300, %3401 ]
  %3422 = shl nuw nsw i32 %3403, 2
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = lshr i32 %3424, 16
  %3426 = shl i32 %3424, 8
  %3427 = and i32 %3426, 16776960
  %3428 = or i32 %3427, 48
  %3429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3428, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = or i32 %3427, 64
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.i32 %3434, 1
  %3437 = or i32 %3427, 80
  %3438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.f32 %3438, 2
  %3440 = extractvalue %dx.types.ResRet.f32 %3438, 3
  %3441 = or i32 %3427, 96
  %3442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.f32 %3442, 0
  %3444 = extractvalue %dx.types.ResRet.f32 %3442, 1
  %3445 = extractvalue %dx.types.ResRet.f32 %3442, 2
  %3446 = extractvalue %dx.types.ResRet.f32 %3442, 3
  %3447 = or i32 %3427, 112
  %3448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.f32 %3448, 2
  %3450 = or i32 %3427, 128
  %3451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.f32 %3451, 0
  %3453 = extractvalue %dx.types.ResRet.f32 %3451, 1
  %3454 = extractvalue %dx.types.ResRet.f32 %3451, 2
  %3455 = extractvalue %dx.types.ResRet.f32 %3451, 3
  %3456 = or i32 %3427, 144
  %3457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = or i32 %3427, 160
  %3463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = extractvalue %dx.types.ResRet.f32 %3463, 1
  %3466 = extractvalue %dx.types.ResRet.f32 %3463, 2
  %3467 = extractvalue %dx.types.ResRet.f32 %3463, 3
  %3468 = or i32 %3427, 192
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = or i32 %3427, 208
  %3472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.f32 %3472, 0
  %3474 = or i32 %3427, 248
  %3475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.ResRet.f32 %3475, 1
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = call float @dx.op.dot4.f32(i32 56, float %3479, float %3480, float %3481, float %3482, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3484 = or i32 %3427, 16
  %3485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.ResRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.ResRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.ResRet.f32 %3485, 3
  %3490 = call float @dx.op.dot4.f32(i32 56, float %3486, float %3487, float %3488, float %3489, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3491 = or i32 %3427, 32
  %3492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.f32 %3492, 0
  %3494 = extractvalue %dx.types.ResRet.f32 %3492, 1
  %3495 = extractvalue %dx.types.ResRet.f32 %3492, 2
  %3496 = extractvalue %dx.types.ResRet.f32 %3492, 3
  %3497 = call float @dx.op.dot4.f32(i32 56, float %3493, float %3494, float %3495, float %3496, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3498 = call float @dx.op.unary.f32(i32 27, float %3483)  ; Round_ni(value)
  %3499 = call float @dx.op.unary.f32(i32 6, float %3498)  ; FAbs(value)
  %3500 = call float @dx.op.unary.f32(i32 27, float %3490)  ; Round_ni(value)
  %3501 = call float @dx.op.unary.f32(i32 6, float %3500)  ; FAbs(value)
  %3502 = call float @dx.op.unary.f32(i32 6, float %3497)  ; FAbs(value)
  %3503 = call float @dx.op.unary.f32(i32 27, float %3502)  ; Round_ni(value)
  %3504 = fadd fast float %3501, %3499
  %3505 = fadd fast float %3504, %3503
  %3506 = fcmp fast oeq float %3505, 0.000000e+00
  %3507 = call float @dx.op.dot4.f32(i32 56, float %3479, float %3480, float %3481, float %3482, float %3346, float %3347, float %3348, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3508 = call float @dx.op.dot4.f32(i32 56, float %3486, float %3487, float %3488, float %3489, float %3346, float %3347, float %3348, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3509 = call float @dx.op.dot4.f32(i32 56, float %3479, float %3480, float %3481, float %3482, float %3349, float %3350, float %3351, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3510 = call float @dx.op.dot4.f32(i32 56, float %3486, float %3487, float %3488, float %3489, float %3349, float %3350, float %3351, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3511 = fsub fast float %3507, %3483
  %3512 = fsub fast float %3509, %3483
  %3513 = fsub fast float %3508, %3490
  %3514 = fsub fast float %3510, %3490
  %3515 = call float @dx.op.dot3.f32(i32 55, float %3430, float %3431, float %3432, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3518 = fadd fast float %3517, %3515
  %3519 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3521 = fcmp fast ogt float %3519, %3520
  %3522 = and i1 %3506, %3521
  br i1 %3522, label %3543, label %3523

; <label>:3523                                    ; preds = %3808, %3626, %3543, %3402
  %3524 = phi float [ %3404, %3543 ], [ %3629, %3626 ], [ %3629, %3808 ], [ %3404, %3402 ]
  %3525 = phi float [ %3405, %3543 ], [ %3405, %3626 ], [ %3783, %3808 ], [ %3405, %3402 ]
  %3526 = phi float [ %3406, %3543 ], [ %3406, %3626 ], [ %3781, %3808 ], [ %3406, %3402 ]
  %3527 = phi float [ %3407, %3543 ], [ %3407, %3626 ], [ %3753, %3808 ], [ %3407, %3402 ]
  %3528 = phi float [ %3408, %3543 ], [ %3408, %3626 ], [ %3751, %3808 ], [ %3408, %3402 ]
  %3529 = phi float [ %3409, %3543 ], [ %3409, %3626 ], [ %3818, %3808 ], [ %3409, %3402 ]
  %3530 = phi float [ %3410, %3543 ], [ %3410, %3626 ], [ %3819, %3808 ], [ %3410, %3402 ]
  %3531 = phi float [ %3411, %3543 ], [ %3411, %3626 ], [ %3820, %3808 ], [ %3411, %3402 ]
  %3532 = phi float [ %3412, %3543 ], [ %3412, %3626 ], [ %3732, %3808 ], [ %3412, %3402 ]
  %3533 = phi float [ %3413, %3543 ], [ %3413, %3626 ], [ %3733, %3808 ], [ %3413, %3402 ]
  %3534 = phi float [ %3414, %3543 ], [ %3414, %3626 ], [ %3734, %3808 ], [ %3414, %3402 ]
  %3535 = phi float [ %3415, %3543 ], [ %3415, %3626 ], [ %3761, %3808 ], [ %3415, %3402 ]
  %3536 = phi float [ %3416, %3543 ], [ %3416, %3626 ], [ %3758, %3808 ], [ %3416, %3402 ]
  %3537 = phi float [ %3417, %3543 ], [ %3417, %3626 ], [ %3755, %3808 ], [ %3417, %3402 ]
  %3538 = phi float [ %3418, %3543 ], [ %3418, %3626 ], [ %3749, %3808 ], [ %3418, %3402 ]
  %3539 = phi float [ %3419, %3543 ], [ %3419, %3626 ], [ %3744, %3808 ], [ %3419, %3402 ]
  %3540 = phi float [ %3420, %3543 ], [ %3420, %3626 ], [ %3745, %3808 ], [ %3420, %3402 ]
  %3541 = phi float [ %3421, %3543 ], [ %3421, %3626 ], [ %3746, %3808 ], [ %3421, %3402 ]
  %3542 = icmp eq i32 %3425, 0
  br i1 %3542, label %3821, label %3402

; <label>:3543                                    ; preds = %3402
  %3544 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3545 = extractvalue %dx.types.ResRet.f32 %3448, 3
  %3546 = extractvalue %dx.types.ResRet.f32 %3448, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3448, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3438, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3438, 0
  %3550 = extractvalue %dx.types.ResRet.i32 %3434, 3
  %3551 = extractvalue %dx.types.ResRet.i32 %3434, 2
  %3552 = bitcast float %3544 to i32
  %3553 = add i32 %3550, 0
  %3554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3553, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3556 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3554, %dx.types.Handle %3555, float %3483, float %3490, float undef, float undef, i32 0, i32 0, i32 undef, float %3511, float %3513, float undef, float %3512, float %3514, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = fmul fast float %3557, %3549
  %3559 = fadd fast float %3558, %3548
  %3560 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3561 = fmul fast float %3483, %3443
  %3562 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3490, float %3561)  ; FMad(a,b,c)
  %3563 = fadd fast float %3562, %3547
  %3564 = fmul fast float %3483, %3445
  %3565 = call float @dx.op.tertiary.f32(i32 46, float %3446, float %3490, float %3564)  ; FMad(a,b,c)
  %3566 = fadd fast float %3565, %3546
  %3567 = fmul fast float %3511, %3443
  %3568 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3513, float %3567)  ; FMad(a,b,c)
  %3569 = fmul fast float %3511, %3445
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3446, float %3513, float %3569)  ; FMad(a,b,c)
  %3571 = fmul fast float %3512, %3443
  %3572 = call float @dx.op.tertiary.f32(i32 46, float %3444, float %3514, float %3571)  ; FMad(a,b,c)
  %3573 = fmul fast float %3512, %3445
  %3574 = call float @dx.op.tertiary.f32(i32 46, float %3446, float %3514, float %3573)  ; FMad(a,b,c)
  %3575 = add i32 %3551, 0
  %3576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3575, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3576, %dx.types.Handle %3555, float %3563, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3568, float %3570, float undef, float %3572, float %3574, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = and i32 %3552, 1024
  %3580 = icmp ne i32 %3579, 0
  %3581 = fcmp fast ogt float %3578, 0x3FE0101020000000
  %3582 = uitofp i1 %3581 to float
  %3583 = select i1 %3580, float %3582, float %3578
  %3584 = and i32 %3552, 8192
  %3585 = icmp ne i32 %3584, 0
  %3586 = select i1 %3585, float %3545, float 1.000000e+00
  %3587 = fmul fast float %3483, 2.000000e+00
  %3588 = fadd fast float %3587, -1.000000e+00
  %3589 = call float @dx.op.unary.f32(i32 6, float %3588)  ; FAbs(value)
  %3590 = fmul fast float %3589, %3476
  %3591 = fsub fast float %3590, %3476
  %3592 = call float @dx.op.unary.f32(i32 7, float %3591)  ; Saturate(value)
  %3593 = fmul fast float %3490, 2.000000e+00
  %3594 = fadd fast float %3593, -1.000000e+00
  %3595 = call float @dx.op.unary.f32(i32 6, float %3594)  ; FAbs(value)
  %3596 = fmul fast float %3595, %3477
  %3597 = fsub fast float %3596, %3477
  %3598 = call float @dx.op.unary.f32(i32 7, float %3597)  ; Saturate(value)
  %3599 = fmul fast float %3502, %3439
  %3600 = fsub fast float %3599, %3439
  %3601 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3602 = fmul fast float %3560, %3586
  %3603 = fmul fast float %3602, %3557
  %3604 = fmul fast float %3603, %3592
  %3605 = fmul fast float %3604, %3583
  %3606 = fmul fast float %3605, %3598
  %3607 = fmul fast float %3606, %3601
  %3608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3609 = extractvalue %dx.types.CBufRet.f32 %3608, 1
  %3610 = extractvalue %dx.types.CBufRet.f32 %3608, 0
  %3611 = fsub fast float %3519, %3610
  %3612 = fmul fast float %3611, %3609
  %3613 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  %3614 = fmul fast float %3607, %3440
  %3615 = fadd fast float %3607, %3440
  %3616 = fmul fast float %3615, %3449
  %3617 = fsub fast float %3616, %3449
  %3618 = call float @dx.op.unary.f32(i32 7, float %3617)  ; Saturate(value)
  %3619 = and i32 %3552, 128
  %3620 = icmp ne i32 %3619, 0
  %3621 = select i1 %3620, float %3618, float %3614
  %3622 = fmul fast float %3621, %3613
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 0
  %3625 = fcmp fast ugt float %3622, %3624
  br i1 %3625, label %3626, label %3523

; <label>:3626                                    ; preds = %3543
  %3627 = select i1 %3585, float %3622, float 0.000000e+00
  %3628 = fadd fast float %3627, %3404
  %3629 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  br i1 %3585, label %3523, label %3630

; <label>:3630                                    ; preds = %3626
  %3631 = and i32 %3552, 4
  %3632 = and i32 %3552, 8
  %3633 = add i32 %3435, 0
  %3634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3633, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3636 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3634, %dx.types.Handle %3635, float %3563, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3568, float %3570, float undef, float %3572, float %3574, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = bitcast float %3461 to i32
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = lshr i32 %3641, 8
  %3645 = and i32 %3644, 255
  %3646 = uitofp i32 %3645 to float
  %3647 = fmul fast float %3640, %3643
  %3648 = fadd fast float %3647, %3646
  %3649 = fmul fast float %3648, 0x3F70101000000000
  %3650 = add i32 %3436, 0
  %3651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3650, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3652 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3651, %dx.types.Handle %3635, float %3563, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3568, float %3570, float undef, float %3572, float %3574, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = bitcast float %3455 to i32
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = lshr i32 %3657, 8
  %3661 = and i32 %3660, 255
  %3662 = uitofp i32 %3661 to float
  %3663 = lshr i32 %3657, 16
  %3664 = and i32 %3663, 255
  %3665 = uitofp i32 %3664 to float
  %3666 = fmul fast float %3665, 0x3F70101000000000
  %3667 = fmul fast float %3653, %3659
  %3668 = fadd fast float %3667, %3662
  %3669 = fmul fast float %3668, 0x3F70101000000000
  %3670 = fadd fast float %3654, -5.000000e-01
  %3671 = fadd fast float %3656, -5.000000e-01
  %3672 = fmul fast float %3670, %3666
  %3673 = fmul fast float %3671, %3666
  %3674 = fadd fast float %3672, 5.000000e-01
  %3675 = fadd fast float %3673, 5.000000e-01
  %3676 = fmul fast float %3637, %3464
  %3677 = fmul fast float %3638, %3465
  %3678 = fmul fast float %3639, %3466
  %3679 = fmul fast float %3674, 2.000000e+00
  %3680 = fadd fast float %3679, -1.000000e+00
  %3681 = fmul fast float %3675, 2.000000e+00
  %3682 = fadd fast float %3681, -1.000000e+00
  %3683 = fadd fast float %3680, %3682
  %3684 = fmul fast float %3683, 5.000000e-01
  %3685 = fsub fast float %3680, %3682
  %3686 = fmul fast float %3685, 5.000000e-01
  %3687 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3688 = fsub fast float 1.000000e+00, %3687
  %3689 = call float @dx.op.unary.f32(i32 6, float %3686)  ; FAbs(value)
  %3690 = fsub fast float %3688, %3689
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3684, float %3686, float %3690, float %3684, float %3686, float %3690)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = call float @dx.op.unary.f32(i32 25, float %3691)  ; Rsqrt(value)
  %3693 = fmul fast float %3684, %3692
  %3694 = fmul fast float %3686, %3692
  %3695 = fmul fast float %3692, %3690
  %3696 = fmul fast float %3695, %3430
  %3697 = fmul fast float %3695, %3431
  %3698 = fmul fast float %3695, %3432
  %3699 = fmul fast float %3693, %3452
  %3700 = fmul fast float %3693, %3453
  %3701 = fmul fast float %3693, %3454
  %3702 = fadd fast float %3699, %3696
  %3703 = fadd fast float %3700, %3697
  %3704 = fadd fast float %3701, %3698
  %3705 = fmul fast float %3694, %3458
  %3706 = fmul fast float %3694, %3459
  %3707 = fmul fast float %3694, %3460
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = fadd fast float %3704, %3707
  %3711 = call float @dx.op.dot3.f32(i32 55, float %3708, float %3709, float %3710, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = call float @dx.op.unary.f32(i32 25, float %3711)  ; Rsqrt(value)
  %3713 = fmul fast float %3708, %3712
  %3714 = fmul fast float %3709, %3712
  %3715 = fmul fast float %3710, %3712
  %3716 = icmp ne i32 %3632, 0
  %3717 = select i1 %3716, float 1.000000e+00, float 0.000000e+00
  %3718 = fmul fast float %3622, %3717
  %3719 = and i32 %3552, 1
  %3720 = icmp eq i32 %3719, 0
  br i1 %3720, label %3721, label %3725

; <label>:3721                                    ; preds = %3630
  %3722 = fsub fast float %3713, %3412
  %3723 = fsub fast float %3714, %3413
  %3724 = fsub fast float %3715, %3414
  br label %3725

; <label>:3725                                    ; preds = %3721, %3630
  %3726 = phi float [ %3722, %3721 ], [ %3713, %3630 ]
  %3727 = phi float [ %3723, %3721 ], [ %3714, %3630 ]
  %3728 = phi float [ %3724, %3721 ], [ %3715, %3630 ]
  %3729 = fmul float %3728, %3718
  %3730 = fmul float %3727, %3718
  %3731 = fmul float %3726, %3718
  %3732 = fadd fast float %3731, %3412
  %3733 = fadd fast float %3730, %3413
  %3734 = fadd fast float %3729, %3414
  %3735 = icmp ne i32 %3631, 0
  %3736 = select i1 %3735, float 1.000000e+00, float 0.000000e+00
  %3737 = fmul fast float %3622, %3736
  %3738 = fsub fast float %3676, %3419
  %3739 = fsub fast float %3677, %3420
  %3740 = fsub fast float %3678, %3421
  %3741 = fmul fast float %3738, %3737
  %3742 = fmul fast float %3739, %3737
  %3743 = fmul fast float %3740, %3737
  %3744 = fadd fast float %3741, %3419
  %3745 = fadd fast float %3742, %3420
  %3746 = fadd fast float %3743, %3421
  %3747 = fsub fast float %3649, %3418
  %3748 = fmul fast float %3747, %3737
  %3749 = fadd fast float %3748, %3418
  %3750 = fmul fast float %3737, %3408
  %3751 = fsub fast float %3408, %3750
  %3752 = fmul fast float %3737, %3407
  %3753 = fsub fast float %3407, %3752
  %3754 = fadd fast float %3622, %3417
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fsub fast float %3669, %3416
  %3757 = fmul fast float %3756, %3718
  %3758 = fadd fast float %3757, %3416
  %3759 = fsub fast float %3655, %3415
  %3760 = fmul fast float %3759, %3718
  %3761 = fadd fast float %3760, %3415
  %3762 = call float @dx.op.dot3.f32(i32 55, float %3676, float %3677, float %3678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = fmul fast float %3765, %3762
  %3767 = fadd fast float %3766, %3764
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = bitcast float %3467 to i32
  %3770 = and i32 %3769, 65535
  %3771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3770)  ; LegacyF16ToF32(value)
  %3772 = lshr i32 %3769, 16
  %3773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3772)  ; LegacyF16ToF32(value)
  %3774 = fcmp fast oge float %3771, 0.000000e+00
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = select i1 %3774, float %3771, float %3776
  %3778 = fadd fast float %3777, %3773
  %3779 = fsub fast float %3768, %3406
  %3780 = fmul fast float %3779, %3622
  %3781 = fadd fast float %3780, %3406
  %3782 = fmul fast float %3778, %3622
  %3783 = call float @dx.op.binary.f32(i32 35, float %3405, float %3782)  ; FMax(a,b)
  %3784 = and i32 %3552, 16
  %3785 = icmp eq i32 %3784, 0
  br i1 %3785, label %3808, label %3786

; <label>:3786                                    ; preds = %3725
  %3787 = bitcast float %3473 to i32
  %3788 = add i32 %3470, 0
  %3789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3788, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3789, %dx.types.Handle %3635, float %3563, float %3566, float undef, float undef, i32 0, i32 0, i32 undef, float %3568, float %3570, float undef, float %3572, float %3574, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = and i32 %3787, 65535
  %3795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3794)  ; LegacyF16ToF32(value)
  %3796 = fmul fast float %3791, %3464
  %3797 = fmul fast float %3792, %3465
  %3798 = fmul fast float %3793, %3466
  %3799 = and i32 %3552, 16384
  %3800 = icmp ne i32 %3799, 0
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3803 = select i1 %3800, float %3802, float 1.000000e+00
  %3804 = fmul fast float %3803, %3795
  %3805 = fmul fast float %3796, %3804
  %3806 = fmul fast float %3797, %3804
  %3807 = fmul fast float %3798, %3804
  br label %3808

; <label>:3808                                    ; preds = %3786, %3725
  %3809 = phi float [ %3805, %3786 ], [ 0.000000e+00, %3725 ]
  %3810 = phi float [ %3806, %3786 ], [ 0.000000e+00, %3725 ]
  %3811 = phi float [ %3807, %3786 ], [ 0.000000e+00, %3725 ]
  %3812 = fsub fast float %3809, %3409
  %3813 = fsub fast float %3810, %3410
  %3814 = fsub fast float %3811, %3411
  %3815 = fmul fast float %3812, %3622
  %3816 = fmul fast float %3813, %3622
  %3817 = fmul fast float %3814, %3622
  %3818 = fadd fast float %3815, %3409
  %3819 = fadd fast float %3816, %3410
  %3820 = fadd fast float %3817, %3411
  br label %3523

; <label>:3821                                    ; preds = %3523
  br label %3822

; <label>:3822                                    ; preds = %3821, %3339
  %3823 = phi float [ 0.000000e+00, %3339 ], [ %3524, %3821 ]
  %3824 = phi float [ %3309, %3339 ], [ %3525, %3821 ]
  %3825 = phi float [ %3307, %3339 ], [ %3526, %3821 ]
  %3826 = phi float [ 0.000000e+00, %3339 ], [ %3527, %3821 ]
  %3827 = phi float [ 0.000000e+00, %3339 ], [ %3528, %3821 ]
  %3828 = phi float [ %3301, %3339 ], [ %3529, %3821 ]
  %3829 = phi float [ %3302, %3339 ], [ %3530, %3821 ]
  %3830 = phi float [ %3303, %3339 ], [ %3531, %3821 ]
  %3831 = phi float [ %3335, %3339 ], [ %3532, %3821 ]
  %3832 = phi float [ %3336, %3339 ], [ %3533, %3821 ]
  %3833 = phi float [ %3337, %3339 ], [ %3534, %3821 ]
  %3834 = phi float [ %3306, %3339 ], [ %3535, %3821 ]
  %3835 = phi float [ %3305, %3339 ], [ %3536, %3821 ]
  %3836 = phi float [ 0.000000e+00, %3339 ], [ %3537, %3821 ]
  %3837 = phi float [ %3304, %3339 ], [ %3538, %3821 ]
  %3838 = phi float [ %3298, %3339 ], [ %3539, %3821 ]
  %3839 = phi float [ %3299, %3339 ], [ %3540, %3821 ]
  %3840 = phi float [ %3300, %3339 ], [ %3541, %3821 ]
  %3841 = call float @dx.op.dot3.f32(i32 55, float %3831, float %3832, float %3833, float %3831, float %3832, float %3833)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = call float @dx.op.unary.f32(i32 25, float %3841)  ; Rsqrt(value)
  %3843 = fmul fast float %3842, %3831
  %3844 = fmul fast float %3842, %3832
  %3845 = fmul fast float %3842, %3833
  %3846 = fadd fast float %3836, %1087
  %3847 = call float @dx.op.unary.f32(i32 7, float %3846)  ; Saturate(value)
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %3843, float %3844, float %3845)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3849, %3843
  %3851 = fmul fast float %3849, %3844
  %3852 = fmul fast float %3849, %3845
  br label %3853

; <label>:3853                                    ; preds = %3822, %3295
  %3854 = phi float [ %3850, %3822 ], [ %3335, %3295 ]
  %3855 = phi float [ %3851, %3822 ], [ %3336, %3295 ]
  %3856 = phi float [ %3852, %3822 ], [ %3337, %3295 ]
  %3857 = phi float [ %3838, %3822 ], [ %3298, %3295 ]
  %3858 = phi float [ %3839, %3822 ], [ %3299, %3295 ]
  %3859 = phi float [ %3840, %3822 ], [ %3300, %3295 ]
  %3860 = phi float [ %3828, %3822 ], [ %3301, %3295 ]
  %3861 = phi float [ %3829, %3822 ], [ %3302, %3295 ]
  %3862 = phi float [ %3830, %3822 ], [ %3303, %3295 ]
  %3863 = phi float [ %3837, %3822 ], [ %3304, %3295 ]
  %3864 = phi float [ %3847, %3822 ], [ %1087, %3295 ]
  %3865 = phi float [ %3835, %3822 ], [ %3305, %3295 ]
  %3866 = phi float [ %3834, %3822 ], [ %3306, %3295 ]
  %3867 = phi float [ %3827, %3822 ], [ 0.000000e+00, %3295 ]
  %3868 = phi float [ %3826, %3822 ], [ 0.000000e+00, %3295 ]
  %3869 = phi float [ %3823, %3822 ], [ 0.000000e+00, %3295 ]
  %3870 = phi float [ %3824, %3822 ], [ %3309, %3295 ]
  %3871 = phi float [ %3825, %3822 ], [ %3307, %3295 ]
  %3872 = add i32 %60, 392
  %3873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.i32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.i32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.i32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.i32 %3873, 3
  %3878 = bitcast i32 %3874 to float
  %3879 = bitcast i32 %3875 to float
  %3880 = bitcast i32 %3876 to float
  %3881 = bitcast i32 %3877 to float
  %3882 = fsub fast float %3857, %3878
  %3883 = fsub fast float %3858, %3879
  %3884 = fsub fast float %3859, %3880
  %3885 = fmul fast float %3882, %235
  %3886 = fmul fast float %3883, %235
  %3887 = fmul fast float %3884, %235
  %3888 = fadd fast float %3885, %3878
  %3889 = fadd fast float %3886, %3879
  %3890 = fadd fast float %3887, %3880
  %3891 = fsub fast float %3864, %3881
  %3892 = fmul fast float %3891, %235
  %3893 = fadd fast float %3892, %3881
  %3894 = fadd fast float %3863, 0xBFB99999A0000000
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = fmul fast float %3895, 0x3FF1C71C80000000
  %3897 = call float @dx.op.binary.f32(i32 36, float %3863, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3898 = fsub fast float 1.000000e+00, %3896
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3888, %3899
  %3901 = fmul fast float %3889, %3899
  %3902 = fmul fast float %3890, %3899
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = fmul fast float %3888, %3896
  %3907 = fmul fast float %3889, %3896
  %3908 = fmul fast float %3890, %3896
  %3909 = fadd fast float %3906, %3897
  %3910 = fadd fast float %3907, %3897
  %3911 = fadd fast float %3908, %3897
  %3912 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3913 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3915 = call float @dx.op.unary.f32(i32 7, float %3865)  ; Saturate(value)
  %3916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.i32 %3916, 3
  %3918 = and i32 %3917, 8
  %3919 = icmp ne i32 %3918, 0
  %3920 = call float @dx.op.binary.f32(i32 35, float %3903, float %3888)  ; FMax(a,b)
  %3921 = call float @dx.op.binary.f32(i32 35, float %3904, float %3888)  ; FMax(a,b)
  %3922 = call float @dx.op.binary.f32(i32 35, float %3905, float %3888)  ; FMax(a,b)
  %3923 = call float @dx.op.dot3.f32(i32 55, float %3903, float %3904, float %3905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3924 = select i1 %292, float %3888, float %3903
  %3925 = select i1 %292, float %3923, float %3904
  %3926 = select i1 %292, float 1.000000e+00, float %3905
  %3927 = select i1 %3919, float %3920, float %3924
  %3928 = select i1 %3919, float %3921, float %3925
  %3929 = select i1 %3919, float %3922, float %3926
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = extractvalue %dx.types.CBufRet.f32 %3930, 1
  %3933 = extractvalue %dx.types.CBufRet.f32 %3930, 2
  %3934 = fadd fast float %3931, %201
  %3935 = fadd fast float %3932, %202
  %3936 = fadd fast float %3933, %203
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fsub fast float %3934, %3938
  %3941 = fsub fast float %3935, %3939
  %3942 = fmul fast float %3940, %3940
  %3943 = fmul fast float %3941, %3941
  %3944 = fadd fast float %3942, %3943
  %3945 = call float @dx.op.unary.f32(i32 24, float %3944)  ; Sqrt(value)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3937, 2
  %3947 = fcmp fast olt float %3945, %3946
  br i1 %3947, label %3948, label %4015

; <label>:3948                                    ; preds = %3853
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.CBufRet.f32 %3949, 1
  %3956 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3953, 1
  %3958 = extractvalue %dx.types.CBufRet.f32 %3949, 3
  %3959 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3960 = extractvalue %dx.types.CBufRet.f32 %3953, 3
  %3961 = fadd fast float %3958, %3934
  %3962 = fadd fast float %3959, %3935
  %3963 = fadd fast float %3960, %3936
  %3964 = fmul fast float %3961, %3950
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3962, float %3952, float %3964)  ; FMad(a,b,c)
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3954, float %3965)  ; FMad(a,b,c)
  %3967 = fmul fast float %3961, %3955
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3962, float %3956, float %3967)  ; FMad(a,b,c)
  %3969 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3957, float %3968)  ; FMad(a,b,c)
  %3970 = fsub fast float %3966, %3958
  %3971 = fsub fast float %3969, %3959
  %3972 = fsub fast float %3970, %3938
  %3973 = fadd fast float %3972, %3946
  %3974 = fsub fast float %3971, %3939
  %3975 = fadd fast float %3974, %3946
  %3976 = extractvalue %dx.types.CBufRet.f32 %3937, 3
  %3977 = fmul fast float %3973, %3976
  %3978 = fmul fast float %3975, %3976
  %3979 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3980 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3981 = fsub fast float 1.000000e+00, %3979
  %3982 = fsub fast float 1.000000e+00, %3980
  %3983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3981, float %3982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = fcmp fast ugt float %3984, 0.000000e+00
  br i1 %3985, label %3986, label %4289

; <label>:3986                                    ; preds = %3948
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 2
  %3989 = fmul fast float %3988, %3984
  %3990 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3991 = fadd fast float %3990, %3989
  %3992 = extractvalue %dx.types.CBufRet.f32 %3953, 2
  %3993 = fadd fast float %3991, %3960
  %3994 = fmul fast float %3966, %3954
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %3969, float %3957, float %3994)  ; FMad(a,b,c)
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3992, float %3995)  ; FMad(a,b,c)
  %3997 = fsub fast float %3996, %3960
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4000 = fsub fast float %3997, %3999
  %4001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3981, float %3982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4002 = extractvalue %dx.types.ResRet.f32 %4001, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %4001, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %4001, 2
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3981, float %3982, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = fadd fast float %4006, %4002
  %4010 = fmul fast float %4009, 0x3F847AE140000000
  %4011 = fadd fast float %4007, %4003
  %4012 = fmul fast float %4011, 0x3F847AE140000000
  %4013 = fadd fast float %4008, %4004
  %4014 = fmul fast float %4013, 0x3F847AE140000000
  br label %4289

; <label>:4015                                    ; preds = %3853
  %4016 = and i32 %271, 1
  %4017 = icmp eq i32 %4016, 0
  br i1 %4017, label %4289, label %4018

; <label>:4018                                    ; preds = %4015
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4026 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4027 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4028 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4029 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4030 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4031 = fadd fast float %4028, %3934
  %4032 = fadd fast float %4029, %3935
  %4033 = fadd fast float %4030, %3936
  %4034 = fmul fast float %4031, %4020
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4022, float %4034)  ; FMad(a,b,c)
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4024, float %4035)  ; FMad(a,b,c)
  %4037 = fmul fast float %4031, %4025
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %4032, float %4026, float %4037)  ; FMad(a,b,c)
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4033, float %4027, float %4038)  ; FMad(a,b,c)
  %4040 = fsub fast float %4036, %4028
  %4041 = fsub fast float %4039, %4029
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4046 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4049 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.i32 %4049, 0
  %4051 = extractvalue %dx.types.CBufRet.i32 %4049, 1
  %4052 = udiv i32 %4051, %4050
  %4053 = fsub fast float %4040, %4043
  %4054 = fsub fast float %4041, %4044
  %4055 = call float @dx.op.binary.f32(i32 35, float %4053, float 0.000000e+00)  ; FMax(a,b)
  %4056 = call float @dx.op.binary.f32(i32 35, float %4054, float 0.000000e+00)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 36, float %4055, float %4045)  ; FMin(a,b)
  %4058 = call float @dx.op.binary.f32(i32 36, float %4056, float %4046)  ; FMin(a,b)
  %4059 = add i32 %4050, -1
  %4060 = add i32 %4052, -1
  %4061 = fmul fast float %4057, %4048
  %4062 = fmul fast float %4058, %4048
  %4063 = fptoui float %4061 to i32
  %4064 = fptoui float %4062 to i32
  %4065 = call i32 @dx.op.binary.i32(i32 40, i32 %4063, i32 %4059)  ; UMin(a,b)
  %4066 = call i32 @dx.op.binary.i32(i32 40, i32 %4064, i32 %4060)  ; UMin(a,b)
  %4067 = mul i32 %4066, %4050
  %4068 = add i32 %4067, %4065
  %4069 = shl i32 %4068, 2
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4069, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = icmp eq i32 %4071, -1
  br i1 %4072, label %4289, label %4073

; <label>:4073                                    ; preds = %4018
  %4074 = mul i32 %4071, 148
  %4075 = add i32 %4074, 4
  %4076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4078 = add i32 %4074, 8
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = add i32 %4074, 36
  %4082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4081, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = add i32 %4074, 60
  %4085 = add i32 %4074, 92
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = add i32 %4074, 116
  %4089 = fsub fast float %4040, %4077
  %4090 = fsub fast float %4041, %4080
  %4091 = fmul fast float %4048, %4089
  %4092 = fmul fast float %4048, %4090
  %4093 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = fsub fast float 1.000000e+00, %4094
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4098 = call float @dx.op.unary.f32(i32 83, float %4093)  ; DerivCoarseX(value)
  %4099 = call float @dx.op.unary.f32(i32 83, float %4095)  ; DerivCoarseX(value)
  %4100 = call float @dx.op.unary.f32(i32 84, float %4093)  ; DerivCoarseY(value)
  %4101 = call float @dx.op.unary.f32(i32 84, float %4095)  ; DerivCoarseY(value)
  %4102 = fmul fast float %4098, %4097
  %4103 = fmul fast float %4099, %4097
  %4104 = fmul fast float %4100, %4097
  %4105 = fmul fast float %4101, %4097
  %4106 = call float @dx.op.dot2.f32(i32 54, float %4104, float %4105, float %4104, float %4105)  ; Dot2(ax,ay,bx,by)
  %4107 = call float @dx.op.dot2.f32(i32 54, float %4102, float %4103, float %4102, float %4103)  ; Dot2(ax,ay,bx,by)
  %4108 = call float @dx.op.binary.f32(i32 35, float %4107, float %4106)  ; FMax(a,b)
  %4109 = call float @dx.op.unary.f32(i32 23, float %4108)  ; Log(value)
  %4110 = fmul fast float %4109, 5.000000e-01
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 1
  %4113 = fadd fast float %4112, %4110
  %4114 = call float @dx.op.binary.f32(i32 35, float %4113, float 0.000000e+00)  ; FMax(a,b)
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4117 = fadd fast float %4116, %4114
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4120 = fadd fast float %4117, %4119
  %4121 = add i32 %4087, 0
  %4122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4121, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4123 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4122, i32 0)  ; GetDimensions(handle,mipLevel)
  %4124 = extractvalue %dx.types.Dimensions %4123, 0
  %4125 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4124)  ; FirstbitLo(value)
  %4126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.i32 %4126, 1
  %4128 = sub nsw i32 %4127, %4125
  %4129 = sitofp i32 %4128 to float
  %4130 = fsub fast float %4120, %4129
  %4131 = call float @dx.op.binary.f32(i32 35, float %4130, float 0.000000e+00)  ; FMax(a,b)
  %4132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4122, %dx.types.Handle %52, float %4093, float %4095, float %4083, float undef, i32 0, i32 0, i32 undef, float %4131)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = fcmp ule float %4133, 0x3FE0101020000000
  %4135 = extractvalue %dx.types.CBufRet.i32 %4126, 0
  %4136 = and i32 %4135, 128
  %4137 = icmp ne i32 %4136, 0
  %4138 = and i1 %4134, %4137
  br i1 %4138, label %4289, label %4139

; <label>:4139                                    ; preds = %4073
  %4140 = add i32 %4074, 20
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = add i32 %4074, 24
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = add i32 %4074, 40
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = add i32 %4074, 96
  %4150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.i32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 2
  %4154 = fmul fast float %4153, %4093
  %4155 = fmul fast float %4153, %4095
  %4156 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4157 = fadd fast float %4154, %4156
  %4158 = fadd fast float %4155, %4156
  %4159 = add i32 %4151, 0
  %4160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4159, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4161 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4160, i32 0)  ; GetDimensions(handle,mipLevel)
  %4162 = extractvalue %dx.types.Dimensions %4161, 0
  %4163 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4162)  ; FirstbitLo(value)
  %4164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.i32 %4164, 1
  %4166 = sub nsw i32 %4165, %4163
  %4167 = sitofp i32 %4166 to float
  %4168 = fsub fast float %4117, %4167
  %4169 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4160, %dx.types.Handle %52, float %4157, float %4158, float %4148, float undef, i32 0, i32 0, i32 undef, float %4169)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = fmul fast float %4171, %4142
  %4173 = fadd fast float %4172, %4145
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.CBufRet.f32 %4174, 2
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 3
  %4182 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4183 = fadd fast float %4179, %4040
  %4184 = fadd fast float %4181, %4041
  %4185 = fadd fast float %4173, %4182
  %4186 = fmul fast float %4183, %4175
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4176, float %4186)  ; FMad(a,b,c)
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4177, float %4187)  ; FMad(a,b,c)
  %4189 = fsub fast float %4188, %4182
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 2
  %4192 = fsub fast float %4189, %4191
  %4193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.i32 %4193, 0
  %4195 = call i32 @dx.op.binary.i32(i32 40, i32 %4071, i32 %4194)  ; UMin(a,b)
  %4196 = mul i32 %4195, 36
  %4197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.i32 %4197, 0
  %4199 = add i32 %4196, 4
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = fmul fast float %4201, %4093
  %4203 = fmul fast float %4201, %4095
  %4204 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4205 = fadd fast float %4202, %4204
  %4206 = fadd fast float %4203, %4204
  %4207 = icmp eq i32 %4198, 0
  br i1 %4207, label %4276, label %4208

; <label>:4208                                    ; preds = %4139
  br label %4209

; <label>:4209                                    ; preds = %4266, %4208
  %4210 = phi float [ %4267, %4266 ], [ 0.000000e+00, %4208 ]
  %4211 = phi float [ %4268, %4266 ], [ 0.000000e+00, %4208 ]
  %4212 = phi float [ %4269, %4266 ], [ 0.000000e+00, %4208 ]
  %4213 = phi float [ %4270, %4266 ], [ 0.000000e+00, %4208 ]
  %4214 = phi float [ %4271, %4266 ], [ 0.000000e+00, %4208 ]
  %4215 = phi float [ %4272, %4266 ], [ 0.000000e+00, %4208 ]
  %4216 = phi i32 [ %4273, %4266 ], [ 0, %4208 ]
  %4217 = shl i32 %4216, 2
  %4218 = add i32 %4084, %4217
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = add i32 %4088, %4217
  %4222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.i32 %4222, 0
  %4224 = add i32 %4223, 0
  %4225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4224, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4225, i32 0)  ; GetDimensions(handle,mipLevel)
  %4227 = extractvalue %dx.types.Dimensions %4226, 0
  %4228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4227)  ; FirstbitLo(value)
  %4229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.i32 %4229, 1
  %4231 = sub nsw i32 %4230, %4228
  %4232 = sitofp i32 %4231 to float
  %4233 = fsub fast float %4117, %4232
  %4234 = call float @dx.op.binary.f32(i32 35, float %4233, float 0.000000e+00)  ; FMax(a,b)
  %4235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4225, %dx.types.Handle %52, float %4205, float %4206, float %4220, float undef, i32 0, i32 0, i32 undef, float %4234)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = fcmp fast ogt float %4236, 0.000000e+00
  br i1 %4237, label %4238, label %4266

; <label>:4238                                    ; preds = %4209
  %4239 = add i32 %4199, %4217
  %4240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.i32 %4240, 0
  %4242 = and i32 %4241, 32767
  %4243 = mul nuw nsw i32 %4242, 928
  %4244 = add nuw nsw i32 %4243, 48
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = add nuw nsw i32 %4243, 60
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = fmul fast float %4246, %4236
  %4255 = fmul fast float %4247, %4236
  %4256 = fmul fast float %4248, %4236
  %4257 = fadd fast float %4254, %4210
  %4258 = fadd fast float %4255, %4211
  %4259 = fadd fast float %4256, %4212
  %4260 = fmul fast float %4251, %4236
  %4261 = fmul fast float %4252, %4236
  %4262 = fmul fast float %4253, %4236
  %4263 = fadd fast float %4260, %4213
  %4264 = fadd fast float %4261, %4214
  %4265 = fadd fast float %4262, %4215
  br label %4266

; <label>:4266                                    ; preds = %4238, %4209
  %4267 = phi float [ %4257, %4238 ], [ %4210, %4209 ]
  %4268 = phi float [ %4258, %4238 ], [ %4211, %4209 ]
  %4269 = phi float [ %4259, %4238 ], [ %4212, %4209 ]
  %4270 = phi float [ %4263, %4238 ], [ %4213, %4209 ]
  %4271 = phi float [ %4264, %4238 ], [ %4214, %4209 ]
  %4272 = phi float [ %4265, %4238 ], [ %4215, %4209 ]
  %4273 = add nuw i32 %4216, 1
  %4274 = icmp eq i32 %4273, %4198
  br i1 %4274, label %4275, label %4209

; <label>:4275                                    ; preds = %4266
  br label %4276

; <label>:4276                                    ; preds = %4275, %4139
  %4277 = phi float [ 0.000000e+00, %4139 ], [ %4267, %4275 ]
  %4278 = phi float [ 0.000000e+00, %4139 ], [ %4268, %4275 ]
  %4279 = phi float [ 0.000000e+00, %4139 ], [ %4269, %4275 ]
  %4280 = phi float [ 0.000000e+00, %4139 ], [ %4270, %4275 ]
  %4281 = phi float [ 0.000000e+00, %4139 ], [ %4271, %4275 ]
  %4282 = phi float [ 0.000000e+00, %4139 ], [ %4272, %4275 ]
  %4283 = fadd fast float %4280, %4277
  %4284 = fmul fast float %4283, 0x3F847AE140000000
  %4285 = fadd fast float %4281, %4278
  %4286 = fmul fast float %4285, 0x3F847AE140000000
  %4287 = fadd fast float %4282, %4279
  %4288 = fmul fast float %4287, 0x3F847AE140000000
  br label %4289

; <label>:4289                                    ; preds = %4276, %4073, %4018, %4015, %3986, %3948
  %4290 = phi float [ %4010, %3986 ], [ 0.000000e+00, %3948 ], [ %4284, %4276 ], [ 0.000000e+00, %4018 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4015 ]
  %4291 = phi float [ %4012, %3986 ], [ 0.000000e+00, %3948 ], [ %4286, %4276 ], [ 0.000000e+00, %4018 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4015 ]
  %4292 = phi float [ %4014, %3986 ], [ 0.000000e+00, %3948 ], [ %4288, %4276 ], [ 0.000000e+00, %4018 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4015 ]
  %4293 = phi float [ %4000, %3986 ], [ -1.310720e+05, %3948 ], [ %4192, %4276 ], [ -1.310720e+05, %4018 ], [ -1.310720e+05, %4073 ], [ -1.310720e+05, %4015 ]
  %4294 = phi i1 [ true, %3986 ], [ false, %3948 ], [ true, %4276 ], [ false, %4018 ], [ false, %4073 ], [ false, %4015 ]
  %4295 = and i32 %271, 3
  %4296 = icmp eq i32 %4295, 1
  %4297 = select i1 %4296, float 1.000000e+00, float 0.000000e+00
  %4298 = fsub fast float %4293, %203
  %4299 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4300 = select i1 %4294, float %4299, float 1.000000e+00
  %4301 = fmul fast float %4300, %4297
  %4302 = icmp eq i32 %4295, 3
  %4303 = select i1 %4302, float 1.000000e+00, float %4301
  %4304 = call float @dx.op.binary.f32(i32 35, float %3869, float %4303)  ; FMax(a,b)
  %4305 = fcmp fast olt float %4303, 1.000000e+00
  %4306 = fcmp uge float %75, 0.000000e+00
  %4307 = and i1 %4306, %4305
  br i1 %4307, label %4308, label %4318

; <label>:4308                                    ; preds = %4289
  %4309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.ResRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.ResRet.f32 %4309, 2
  %4313 = fadd fast float %4310, %4304
  %4314 = fcmp ule float %74, 0.000000e+00
  %4315 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4316 = select i1 %4314, float %4315, float 1.000000e+00
  %4317 = fmul fast float %4316, %4312
  br label %4318

; <label>:4318                                    ; preds = %4308, %4289
  %4319 = phi float [ %4313, %4308 ], [ %4304, %4289 ]
  %4320 = phi float [ %4311, %4308 ], [ 0.000000e+00, %4289 ]
  %4321 = phi float [ %4317, %4308 ], [ 0.000000e+00, %4289 ]
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = fcmp fast une float %4323, 0.000000e+00
  %4326 = fcmp fast une float %4324, 0.000000e+00
  %4327 = or i1 %4325, %4326
  br i1 %4327, label %4328, label %4887

; <label>:4328                                    ; preds = %4318
  br i1 %4325, label %4329, label %4602

; <label>:4329                                    ; preds = %4328
  %4330 = call float @dx.op.unary.f32(i32 23, float %3866)  ; Log(value)
  %4331 = fmul fast float %4330, 4.000000e+00
  %4332 = call float @dx.op.unary.f32(i32 21, float %4331)  ; Exp(value)
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = fmul fast float %4334, %62
  %4336 = fmul fast float %4334, %63
  %4337 = fmul fast float %4334, %64
  %4338 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4339 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4340 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4341 = call float @dx.op.unary.f32(i32 23, float %4338)  ; Log(value)
  %4342 = call float @dx.op.unary.f32(i32 23, float %4339)  ; Log(value)
  %4343 = call float @dx.op.unary.f32(i32 23, float %4340)  ; Log(value)
  %4344 = fmul fast float %4341, 4.000000e+00
  %4345 = fmul fast float %4342, 4.000000e+00
  %4346 = fmul fast float %4343, 4.000000e+00
  %4347 = call float @dx.op.unary.f32(i32 21, float %4344)  ; Exp(value)
  %4348 = call float @dx.op.unary.f32(i32 21, float %4345)  ; Exp(value)
  %4349 = call float @dx.op.unary.f32(i32 21, float %4346)  ; Exp(value)
  %4350 = fadd fast float %4348, %4347
  %4351 = fadd fast float %4350, %4349
  %4352 = fdiv fast float 1.000000e+00, %4351
  %4353 = fmul fast float %4352, %4347
  %4354 = fcmp fast ogt float %71, 0.000000e+00
  %4355 = fcmp fast ogt float %72, 0.000000e+00
  %4356 = fcmp fast ogt float %73, 0.000000e+00
  %4357 = fcmp fast olt float %71, 0.000000e+00
  %4358 = fcmp fast olt float %72, 0.000000e+00
  %4359 = fcmp fast olt float %73, 0.000000e+00
  %4360 = zext i1 %4354 to i32
  %4361 = zext i1 %4355 to i32
  %4362 = zext i1 %4356 to i32
  %4363 = zext i1 %4357 to i32
  %4364 = zext i1 %4358 to i32
  %4365 = zext i1 %4359 to i32
  %4366 = sub nsw i32 %4360, %4363
  %4367 = sub nsw i32 %4361, %4364
  %4368 = sub nsw i32 %4362, %4365
  %4369 = call float @dx.op.unary.f32(i32 83, float %4335)  ; DerivCoarseX(value)
  %4370 = call float @dx.op.unary.f32(i32 83, float %4336)  ; DerivCoarseX(value)
  %4371 = call float @dx.op.unary.f32(i32 83, float %4337)  ; DerivCoarseX(value)
  %4372 = call float @dx.op.unary.f32(i32 84, float %4335)  ; DerivCoarseY(value)
  %4373 = call float @dx.op.unary.f32(i32 84, float %4336)  ; DerivCoarseY(value)
  %4374 = call float @dx.op.unary.f32(i32 84, float %4337)  ; DerivCoarseY(value)
  %4375 = fcmp fast ole float %303, %4353
  %4376 = fmul fast float %4352, %4350
  %4377 = fcmp fast ole float %303, %4376
  %4378 = select i1 %4377, float %4337, float %4335
  %4379 = select i1 %4377, float %4335, float %4336
  %4380 = select i1 %4375, float %4336, float %4378
  %4381 = select i1 %4375, float %4337, float %4379
  %4382 = select i1 %4377, float %4371, float %4369
  %4383 = select i1 %4377, float %4369, float %4370
  %4384 = select i1 %4375, float %4370, float %4382
  %4385 = select i1 %4375, float %4371, float %4383
  %4386 = select i1 %4377, float %4374, float %4372
  %4387 = select i1 %4377, float %4372, float %4373
  %4388 = select i1 %4375, float %4373, float %4386
  %4389 = select i1 %4375, float %4374, float %4387
  %4390 = call float @dx.op.unary.f32(i32 27, float %4380)  ; Round_ni(value)
  %4391 = call float @dx.op.unary.f32(i32 27, float %4381)  ; Round_ni(value)
  %4392 = fptosi float %4390 to i32
  %4393 = fptosi float %4391 to i32
  %4394 = xor i32 %4393, %4392
  %4395 = sitofp i32 %4394 to float
  %4396 = fptosi float %4395 to i32
  %4397 = sitofp i32 %4396 to float
  %4398 = fmul fast float %4397, 0x3FE3C6EF40000000
  %4399 = frem fast float %4390, 2.560000e+02
  %4400 = frem fast float %4391, 2.560000e+02
  %4401 = fptoui float %4399 to i32
  %4402 = fptoui float %4400 to i32
  %4403 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4401, i32 %4402, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = fadd fast float %4404, %4398
  %4408 = fadd fast float %4405, %4398
  %4409 = fadd fast float %4406, %4398
  %4410 = call float @dx.op.unary.f32(i32 22, float %4407)  ; Frc(value)
  %4411 = call float @dx.op.unary.f32(i32 22, float %4408)  ; Frc(value)
  %4412 = call float @dx.op.unary.f32(i32 22, float %4409)  ; Frc(value)
  %4413 = fmul fast float %4412, 0x401921FB60000000
  %4414 = call float @dx.op.unary.f32(i32 13, float %4413)  ; Sin(value)
  %4415 = call float @dx.op.unary.f32(i32 12, float %4413)  ; Cos(value)
  %4416 = fsub fast float -0.000000e+00, %4415
  %4417 = fmul fast float %4415, %4380
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4381, float %4417)  ; FMad(a,b,c)
  %4419 = fmul fast float %4414, %4380
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4416, float %4381, float %4419)  ; FMad(a,b,c)
  %4421 = fadd fast float %4418, %4410
  %4422 = fadd fast float %4420, %4411
  %4423 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4424 = bitcast float %4423 to i32
  %4425 = icmp eq i32 %4424, 0
  br i1 %4425, label %4464, label %4426

; <label>:4426                                    ; preds = %4329
  %4427 = add i32 %4424, 0
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4428, %dx.types.Handle %111, float %4421, float %4422, float undef, float undef, i32 0, i32 0, i32 undef, float %4384, float %4385, float undef, float %4388, float %4389, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4434 = fsub fast float 1.000000e+00, %4323
  %4435 = call float @dx.op.binary.f32(i32 35, float %4434, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4436 = bitcast float %4323 to i32
  %4437 = sitofp i32 %4436 to float
  %4438 = fadd fast float %4437, 0xC1CFBF8940000000
  %4439 = fmul fast float %4433, %4438
  %4440 = fadd fast float %4439, 0x41CFBF8940000000
  %4441 = fptosi float %4440 to i32
  %4442 = bitcast i32 %4441 to float
  %4443 = bitcast float %4435 to i32
  %4444 = sitofp i32 %4443 to float
  %4445 = fadd fast float %4444, 0xC1CFBF8940000000
  %4446 = fmul fast float %4445, %4433
  %4447 = fadd fast float %4446, 0x41CFBF8940000000
  %4448 = fptosi float %4447 to i32
  %4449 = bitcast i32 %4448 to float
  %4450 = fmul fast float %4442, %4432
  %4451 = fmul fast float %4449, %4432
  %4452 = fsub fast float %4435, %4450
  %4453 = fadd fast float %4451, %4435
  %4454 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4455 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4456 = fsub fast float %4430, %4454
  %4457 = fsub fast float %4455, %4454
  %4458 = bitcast float %4457 to i32
  %4459 = sub nsw i32 2129859010, %4458
  %4460 = bitcast i32 %4459 to float
  %4461 = fmul fast float %4460, %4456
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fcmp fast olt float %4462, 0x3F70101020000000
  br i1 %4463, label %4602, label %4464

; <label>:4464                                    ; preds = %4426, %4329
  %4465 = phi float [ %4462, %4426 ], [ %4323, %4329 ]
  %4466 = fmul fast float %4465, %4332
  %4467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.i32 %4467, 1
  %4469 = extractvalue %dx.types.CBufRet.i32 %4467, 0
  %4470 = add i32 %4469, 0
  %4471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4472 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4471, %dx.types.Handle %110, float %4421, float %4422, float undef, float undef, i32 0, i32 0, i32 undef, float %4384, float %4385, float undef, float %4388, float %4389, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.ResRet.f32 %4472, 1
  %4475 = extractvalue %dx.types.ResRet.f32 %4472, 2
  %4476 = extractvalue %dx.types.ResRet.f32 %4472, 3
  %4477 = and i32 %4468, 255
  %4478 = uitofp i32 %4477 to float
  %4479 = lshr i32 %4468, 8
  %4480 = and i32 %4479, 255
  %4481 = uitofp i32 %4480 to float
  %4482 = fmul fast float %4476, %4478
  %4483 = fadd fast float %4482, %4481
  %4484 = fmul fast float %4483, 0x3F70101000000000
  %4485 = fadd fast float %4484, 0xBFB99999A0000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4486, 0x3FF1C71C80000000
  %4488 = call float @dx.op.binary.f32(i32 36, float %4484, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4489 = fsub fast float 1.000000e+00, %4487
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, %4473
  %4492 = fmul fast float %4490, %4474
  %4493 = fmul fast float %4490, %4475
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = fmul fast float %4487, %4473
  %4498 = fmul fast float %4487, %4474
  %4499 = fmul fast float %4487, %4475
  %4500 = fadd fast float %4497, %4488
  %4501 = fadd fast float %4498, %4488
  %4502 = fadd fast float %4499, %4488
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.i32 %4506, 3
  %4508 = extractvalue %dx.types.CBufRet.i32 %4506, 2
  %4509 = add i32 %4508, 0
  %4510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4510, %dx.types.Handle %110, float %4421, float %4422, float undef, float undef, i32 0, i32 0, i32 undef, float %4384, float %4385, float undef, float %4388, float %4389, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = extractvalue %dx.types.ResRet.f32 %4511, 3
  %4516 = and i32 %4507, 255
  %4517 = uitofp i32 %4516 to float
  %4518 = lshr i32 %4507, 8
  %4519 = and i32 %4518, 255
  %4520 = uitofp i32 %4519 to float
  %4521 = lshr i32 %4507, 16
  %4522 = and i32 %4521, 255
  %4523 = uitofp i32 %4522 to float
  %4524 = fmul fast float %4523, 0x3F70101000000000
  %4525 = fmul fast float %4512, %4517
  %4526 = fadd fast float %4525, %4520
  %4527 = fmul fast float %4526, 0x3F70101000000000
  %4528 = fadd fast float %4513, -5.000000e-01
  %4529 = fadd fast float %4515, -5.000000e-01
  %4530 = fmul fast float %4528, %4524
  %4531 = fmul fast float %4529, %4524
  %4532 = fadd fast float %4530, 5.000000e-01
  %4533 = fadd fast float %4531, 5.000000e-01
  %4534 = fmul fast float %4532, 2.000000e+00
  %4535 = fadd fast float %4534, -1.000000e+00
  %4536 = fmul fast float %4533, 2.000000e+00
  %4537 = fadd fast float %4536, -1.000000e+00
  %4538 = fadd fast float %4535, %4537
  %4539 = fmul fast float %4538, 5.000000e-01
  %4540 = fsub fast float %4535, %4537
  %4541 = fmul fast float %4540, 5.000000e-01
  %4542 = call float @dx.op.unary.f32(i32 6, float %4539)  ; FAbs(value)
  %4543 = fsub fast float 1.000000e+00, %4542
  %4544 = call float @dx.op.unary.f32(i32 6, float %4541)  ; FAbs(value)
  %4545 = fsub fast float %4543, %4544
  %4546 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4541, float %4545, float %4539, float %4541, float %4545)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = call float @dx.op.unary.f32(i32 25, float %4546)  ; Rsqrt(value)
  %4548 = fmul fast float %4539, %4547
  %4549 = fmul fast float %4541, %4547
  %4550 = select i1 %4377, i32 %4367, i32 %4368
  %4551 = select i1 %4375, i32 %4366, i32 %4550
  %4552 = sitofp i32 %4551 to float
  %4553 = fmul fast float %4545, %4552
  %4554 = fmul fast float %4553, %4547
  %4555 = select i1 %4377, float %4554, float %4549
  %4556 = select i1 %4377, float %4549, float %4554
  %4557 = select i1 %4375, float %4554, float %4548
  %4558 = select i1 %4375, float %4549, float %4555
  %4559 = select i1 %4375, float %4548, float %4556
  %4560 = fsub fast float %4494, %3927
  %4561 = fsub fast float %4495, %3928
  %4562 = fsub fast float %4496, %3929
  %4563 = fmul fast float %4560, %4466
  %4564 = fmul fast float %4561, %4466
  %4565 = fmul fast float %4562, %4466
  %4566 = fadd fast float %4563, %3927
  %4567 = fadd fast float %4564, %3928
  %4568 = fadd fast float %4565, %3929
  %4569 = fsub fast float %4503, %3912
  %4570 = fsub fast float %4504, %3913
  %4571 = fsub fast float %4505, %3914
  %4572 = fmul fast float %4569, %4466
  %4573 = fmul fast float %4570, %4466
  %4574 = fmul fast float %4571, %4466
  %4575 = fadd fast float %4572, %3912
  %4576 = fadd fast float %4573, %3913
  %4577 = fadd fast float %4574, %3914
  %4578 = fadd fast float %4557, %3854
  %4579 = fadd fast float %4558, %3855
  %4580 = fadd fast float %4559, %3856
  %4581 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = call float @dx.op.unary.f32(i32 25, float %4581)  ; Rsqrt(value)
  %4583 = fmul fast float %4578, %4582
  %4584 = fmul fast float %4579, %4582
  %4585 = fmul fast float %4580, %4582
  %4586 = fsub fast float %4583, %3854
  %4587 = fsub fast float %4584, %3855
  %4588 = fsub fast float %4585, %3856
  %4589 = fmul fast float %4586, %4466
  %4590 = fmul fast float %4587, %4466
  %4591 = fmul fast float %4588, %4466
  %4592 = fadd fast float %4589, %3854
  %4593 = fadd fast float %4590, %3855
  %4594 = fadd fast float %4591, %3856
  %4595 = call float @dx.op.binary.f32(i32 36, float %3866, float %4514)  ; FMin(a,b)
  %4596 = fsub fast float %4595, %3866
  %4597 = fmul fast float %4596, %4466
  %4598 = fadd fast float %4597, %3866
  %4599 = fsub fast float %4527, %3915
  %4600 = fmul fast float %4599, %4466
  %4601 = fadd fast float %4600, %3915
  br label %4602

; <label>:4602                                    ; preds = %4464, %4426, %4328
  %4603 = phi float [ %4566, %4464 ], [ %3927, %4426 ], [ %3927, %4328 ]
  %4604 = phi float [ %4567, %4464 ], [ %3928, %4426 ], [ %3928, %4328 ]
  %4605 = phi float [ %4568, %4464 ], [ %3929, %4426 ], [ %3929, %4328 ]
  %4606 = phi float [ %4575, %4464 ], [ %3912, %4426 ], [ %3912, %4328 ]
  %4607 = phi float [ %4576, %4464 ], [ %3913, %4426 ], [ %3913, %4328 ]
  %4608 = phi float [ %4577, %4464 ], [ %3914, %4426 ], [ %3914, %4328 ]
  %4609 = phi float [ %4592, %4464 ], [ %3854, %4426 ], [ %3854, %4328 ]
  %4610 = phi float [ %4593, %4464 ], [ %3855, %4426 ], [ %3855, %4328 ]
  %4611 = phi float [ %4594, %4464 ], [ %3856, %4426 ], [ %3856, %4328 ]
  %4612 = phi float [ %4601, %4464 ], [ %3915, %4426 ], [ %3915, %4328 ]
  %4613 = phi float [ %4598, %4464 ], [ %3866, %4426 ], [ %3866, %4328 ]
  br i1 %4326, label %4614, label %4887

; <label>:4614                                    ; preds = %4602
  %4615 = call float @dx.op.unary.f32(i32 23, float %4613)  ; Log(value)
  %4616 = fmul fast float %4615, 4.000000e+00
  %4617 = call float @dx.op.unary.f32(i32 21, float %4616)  ; Exp(value)
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = fmul fast float %4619, %62
  %4621 = fmul fast float %4619, %63
  %4622 = fmul fast float %4619, %64
  %4623 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 23, float %4623)  ; Log(value)
  %4627 = call float @dx.op.unary.f32(i32 23, float %4624)  ; Log(value)
  %4628 = call float @dx.op.unary.f32(i32 23, float %4625)  ; Log(value)
  %4629 = fmul fast float %4626, 4.000000e+00
  %4630 = fmul fast float %4627, 4.000000e+00
  %4631 = fmul fast float %4628, 4.000000e+00
  %4632 = call float @dx.op.unary.f32(i32 21, float %4629)  ; Exp(value)
  %4633 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4634 = call float @dx.op.unary.f32(i32 21, float %4631)  ; Exp(value)
  %4635 = fadd fast float %4633, %4632
  %4636 = fadd fast float %4635, %4634
  %4637 = fdiv fast float 1.000000e+00, %4636
  %4638 = fmul fast float %4637, %4632
  %4639 = fcmp fast ogt float %71, 0.000000e+00
  %4640 = fcmp fast ogt float %72, 0.000000e+00
  %4641 = fcmp fast ogt float %73, 0.000000e+00
  %4642 = fcmp fast olt float %71, 0.000000e+00
  %4643 = fcmp fast olt float %72, 0.000000e+00
  %4644 = fcmp fast olt float %73, 0.000000e+00
  %4645 = zext i1 %4639 to i32
  %4646 = zext i1 %4640 to i32
  %4647 = zext i1 %4641 to i32
  %4648 = zext i1 %4642 to i32
  %4649 = zext i1 %4643 to i32
  %4650 = zext i1 %4644 to i32
  %4651 = sub nsw i32 %4645, %4648
  %4652 = sub nsw i32 %4646, %4649
  %4653 = sub nsw i32 %4647, %4650
  %4654 = call float @dx.op.unary.f32(i32 83, float %4620)  ; DerivCoarseX(value)
  %4655 = call float @dx.op.unary.f32(i32 83, float %4621)  ; DerivCoarseX(value)
  %4656 = call float @dx.op.unary.f32(i32 83, float %4622)  ; DerivCoarseX(value)
  %4657 = call float @dx.op.unary.f32(i32 84, float %4620)  ; DerivCoarseY(value)
  %4658 = call float @dx.op.unary.f32(i32 84, float %4621)  ; DerivCoarseY(value)
  %4659 = call float @dx.op.unary.f32(i32 84, float %4622)  ; DerivCoarseY(value)
  %4660 = fcmp fast ole float %303, %4638
  %4661 = fmul fast float %4637, %4635
  %4662 = fcmp fast ole float %303, %4661
  %4663 = select i1 %4662, float %4622, float %4620
  %4664 = select i1 %4662, float %4620, float %4621
  %4665 = select i1 %4660, float %4621, float %4663
  %4666 = select i1 %4660, float %4622, float %4664
  %4667 = select i1 %4662, float %4656, float %4654
  %4668 = select i1 %4662, float %4654, float %4655
  %4669 = select i1 %4660, float %4655, float %4667
  %4670 = select i1 %4660, float %4656, float %4668
  %4671 = select i1 %4662, float %4659, float %4657
  %4672 = select i1 %4662, float %4657, float %4658
  %4673 = select i1 %4660, float %4658, float %4671
  %4674 = select i1 %4660, float %4659, float %4672
  %4675 = call float @dx.op.unary.f32(i32 27, float %4665)  ; Round_ni(value)
  %4676 = call float @dx.op.unary.f32(i32 27, float %4666)  ; Round_ni(value)
  %4677 = fptosi float %4675 to i32
  %4678 = fptosi float %4676 to i32
  %4679 = xor i32 %4678, %4677
  %4680 = sitofp i32 %4679 to float
  %4681 = fptosi float %4680 to i32
  %4682 = sitofp i32 %4681 to float
  %4683 = fmul fast float %4682, 0x3FE3C6EF40000000
  %4684 = frem fast float %4675, 2.560000e+02
  %4685 = frem fast float %4676, 2.560000e+02
  %4686 = fptoui float %4684 to i32
  %4687 = fptoui float %4685 to i32
  %4688 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4686, i32 %4687, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = fadd fast float %4689, %4683
  %4693 = fadd fast float %4690, %4683
  %4694 = fadd fast float %4691, %4683
  %4695 = call float @dx.op.unary.f32(i32 22, float %4692)  ; Frc(value)
  %4696 = call float @dx.op.unary.f32(i32 22, float %4693)  ; Frc(value)
  %4697 = call float @dx.op.unary.f32(i32 22, float %4694)  ; Frc(value)
  %4698 = fmul fast float %4697, 0x401921FB60000000
  %4699 = call float @dx.op.unary.f32(i32 13, float %4698)  ; Sin(value)
  %4700 = call float @dx.op.unary.f32(i32 12, float %4698)  ; Cos(value)
  %4701 = fsub fast float -0.000000e+00, %4700
  %4702 = fmul fast float %4700, %4665
  %4703 = call float @dx.op.tertiary.f32(i32 46, float %4699, float %4666, float %4702)  ; FMad(a,b,c)
  %4704 = fmul fast float %4699, %4665
  %4705 = call float @dx.op.tertiary.f32(i32 46, float %4701, float %4666, float %4704)  ; FMad(a,b,c)
  %4706 = fadd fast float %4703, %4695
  %4707 = fadd fast float %4705, %4696
  %4708 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4709 = bitcast float %4708 to i32
  %4710 = icmp eq i32 %4709, 0
  br i1 %4710, label %4749, label %4711

; <label>:4711                                    ; preds = %4614
  %4712 = add i32 %4709, 0
  %4713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4713, %dx.types.Handle %111, float %4706, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4669, float %4670, float undef, float %4673, float %4674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 1
  %4718 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4719 = fsub fast float 1.000000e+00, %4324
  %4720 = call float @dx.op.binary.f32(i32 35, float %4719, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4721 = bitcast float %4324 to i32
  %4722 = sitofp i32 %4721 to float
  %4723 = fadd fast float %4722, 0xC1CFBF8940000000
  %4724 = fmul fast float %4718, %4723
  %4725 = fadd fast float %4724, 0x41CFBF8940000000
  %4726 = fptosi float %4725 to i32
  %4727 = bitcast i32 %4726 to float
  %4728 = bitcast float %4720 to i32
  %4729 = sitofp i32 %4728 to float
  %4730 = fadd fast float %4729, 0xC1CFBF8940000000
  %4731 = fmul fast float %4730, %4718
  %4732 = fadd fast float %4731, 0x41CFBF8940000000
  %4733 = fptosi float %4732 to i32
  %4734 = bitcast i32 %4733 to float
  %4735 = fmul fast float %4727, %4717
  %4736 = fmul fast float %4734, %4717
  %4737 = fsub fast float %4720, %4735
  %4738 = fadd fast float %4736, %4720
  %4739 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4741 = fsub fast float %4715, %4739
  %4742 = fsub fast float %4740, %4739
  %4743 = bitcast float %4742 to i32
  %4744 = sub nsw i32 2129859010, %4743
  %4745 = bitcast i32 %4744 to float
  %4746 = fmul fast float %4745, %4741
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fcmp fast olt float %4747, 0x3F70101020000000
  br i1 %4748, label %4887, label %4749

; <label>:4749                                    ; preds = %4711, %4614
  %4750 = phi float [ %4747, %4711 ], [ %4324, %4614 ]
  %4751 = fmul fast float %4750, %4617
  %4752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.i32 %4752, 1
  %4754 = extractvalue %dx.types.CBufRet.i32 %4752, 0
  %4755 = add i32 %4754, 0
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4756, %dx.types.Handle %110, float %4706, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4669, float %4670, float undef, float %4673, float %4674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  %4761 = extractvalue %dx.types.ResRet.f32 %4757, 3
  %4762 = and i32 %4753, 255
  %4763 = uitofp i32 %4762 to float
  %4764 = lshr i32 %4753, 8
  %4765 = and i32 %4764, 255
  %4766 = uitofp i32 %4765 to float
  %4767 = fmul fast float %4761, %4763
  %4768 = fadd fast float %4767, %4766
  %4769 = fmul fast float %4768, 0x3F70101000000000
  %4770 = fadd fast float %4769, 0xBFB99999A0000000
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4771, 0x3FF1C71C80000000
  %4773 = call float @dx.op.binary.f32(i32 36, float %4769, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4774 = fsub fast float 1.000000e+00, %4772
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = fmul fast float %4775, %4758
  %4777 = fmul fast float %4775, %4759
  %4778 = fmul fast float %4775, %4760
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4782 = fmul fast float %4772, %4758
  %4783 = fmul fast float %4772, %4759
  %4784 = fmul fast float %4772, %4760
  %4785 = fadd fast float %4782, %4773
  %4786 = fadd fast float %4783, %4773
  %4787 = fadd fast float %4784, %4773
  %4788 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4789 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 3
  %4793 = extractvalue %dx.types.CBufRet.i32 %4791, 2
  %4794 = add i32 %4793, 0
  %4795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4795, %dx.types.Handle %110, float %4706, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float %4669, float %4670, float undef, float %4673, float %4674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4800 = extractvalue %dx.types.ResRet.f32 %4796, 3
  %4801 = and i32 %4792, 255
  %4802 = uitofp i32 %4801 to float
  %4803 = lshr i32 %4792, 8
  %4804 = and i32 %4803, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = lshr i32 %4792, 16
  %4807 = and i32 %4806, 255
  %4808 = uitofp i32 %4807 to float
  %4809 = fmul fast float %4808, 0x3F70101000000000
  %4810 = fmul fast float %4797, %4802
  %4811 = fadd fast float %4810, %4805
  %4812 = fmul fast float %4811, 0x3F70101000000000
  %4813 = fadd fast float %4798, -5.000000e-01
  %4814 = fadd fast float %4800, -5.000000e-01
  %4815 = fmul fast float %4813, %4809
  %4816 = fmul fast float %4814, %4809
  %4817 = fadd fast float %4815, 5.000000e-01
  %4818 = fadd fast float %4816, 5.000000e-01
  %4819 = fmul fast float %4817, 2.000000e+00
  %4820 = fadd fast float %4819, -1.000000e+00
  %4821 = fmul fast float %4818, 2.000000e+00
  %4822 = fadd fast float %4821, -1.000000e+00
  %4823 = fadd fast float %4820, %4822
  %4824 = fmul fast float %4823, 5.000000e-01
  %4825 = fsub fast float %4820, %4822
  %4826 = fmul fast float %4825, 5.000000e-01
  %4827 = call float @dx.op.unary.f32(i32 6, float %4824)  ; FAbs(value)
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = call float @dx.op.unary.f32(i32 6, float %4826)  ; FAbs(value)
  %4830 = fsub fast float %4828, %4829
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4826, float %4830, float %4824, float %4826, float %4830)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  %4833 = fmul fast float %4824, %4832
  %4834 = fmul fast float %4826, %4832
  %4835 = select i1 %4662, i32 %4652, i32 %4653
  %4836 = select i1 %4660, i32 %4651, i32 %4835
  %4837 = sitofp i32 %4836 to float
  %4838 = fmul fast float %4830, %4837
  %4839 = fmul fast float %4838, %4832
  %4840 = select i1 %4662, float %4839, float %4834
  %4841 = select i1 %4662, float %4834, float %4839
  %4842 = select i1 %4660, float %4839, float %4833
  %4843 = select i1 %4660, float %4834, float %4840
  %4844 = select i1 %4660, float %4833, float %4841
  %4845 = fsub fast float %4779, %4603
  %4846 = fsub fast float %4780, %4604
  %4847 = fsub fast float %4781, %4605
  %4848 = fmul fast float %4845, %4751
  %4849 = fmul fast float %4846, %4751
  %4850 = fmul fast float %4847, %4751
  %4851 = fadd fast float %4848, %4603
  %4852 = fadd fast float %4849, %4604
  %4853 = fadd fast float %4850, %4605
  %4854 = fsub fast float %4788, %4606
  %4855 = fsub fast float %4789, %4607
  %4856 = fsub fast float %4790, %4608
  %4857 = fmul fast float %4854, %4751
  %4858 = fmul fast float %4855, %4751
  %4859 = fmul fast float %4856, %4751
  %4860 = fadd fast float %4857, %4606
  %4861 = fadd fast float %4858, %4607
  %4862 = fadd fast float %4859, %4608
  %4863 = fadd fast float %4842, %4609
  %4864 = fadd fast float %4843, %4610
  %4865 = fadd fast float %4844, %4611
  %4866 = call float @dx.op.dot3.f32(i32 55, float %4863, float %4864, float %4865, float %4863, float %4864, float %4865)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call float @dx.op.unary.f32(i32 25, float %4866)  ; Rsqrt(value)
  %4868 = fmul fast float %4863, %4867
  %4869 = fmul fast float %4864, %4867
  %4870 = fmul fast float %4865, %4867
  %4871 = fsub fast float %4868, %4609
  %4872 = fsub fast float %4869, %4610
  %4873 = fsub fast float %4870, %4611
  %4874 = fmul fast float %4871, %4751
  %4875 = fmul fast float %4872, %4751
  %4876 = fmul fast float %4873, %4751
  %4877 = fadd fast float %4874, %4609
  %4878 = fadd fast float %4875, %4610
  %4879 = fadd fast float %4876, %4611
  %4880 = call float @dx.op.binary.f32(i32 36, float %4613, float %4799)  ; FMin(a,b)
  %4881 = fsub fast float %4880, %4613
  %4882 = fmul fast float %4881, %4751
  %4883 = fadd fast float %4882, %4613
  %4884 = fsub fast float %4812, %4612
  %4885 = fmul fast float %4884, %4751
  %4886 = fadd fast float %4885, %4612
  br label %4887

; <label>:4887                                    ; preds = %4749, %4711, %4602, %4318
  %4888 = phi float [ %4851, %4749 ], [ %4603, %4711 ], [ %4603, %4602 ], [ %3927, %4318 ]
  %4889 = phi float [ %4852, %4749 ], [ %4604, %4711 ], [ %4604, %4602 ], [ %3928, %4318 ]
  %4890 = phi float [ %4853, %4749 ], [ %4605, %4711 ], [ %4605, %4602 ], [ %3929, %4318 ]
  %4891 = phi float [ %4860, %4749 ], [ %4606, %4711 ], [ %4606, %4602 ], [ %3912, %4318 ]
  %4892 = phi float [ %4861, %4749 ], [ %4607, %4711 ], [ %4607, %4602 ], [ %3913, %4318 ]
  %4893 = phi float [ %4862, %4749 ], [ %4608, %4711 ], [ %4608, %4602 ], [ %3914, %4318 ]
  %4894 = phi float [ %4877, %4749 ], [ %4609, %4711 ], [ %4609, %4602 ], [ %3854, %4318 ]
  %4895 = phi float [ %4878, %4749 ], [ %4610, %4711 ], [ %4610, %4602 ], [ %3855, %4318 ]
  %4896 = phi float [ %4879, %4749 ], [ %4611, %4711 ], [ %4611, %4602 ], [ %3856, %4318 ]
  %4897 = phi float [ %4886, %4749 ], [ %4612, %4711 ], [ %4612, %4602 ], [ %3915, %4318 ]
  %4898 = phi float [ %4883, %4749 ], [ %4613, %4711 ], [ %4613, %4602 ], [ %3866, %4318 ]
  %4899 = fcmp fast une float %4322, 0.000000e+00
  %4900 = fsub fast float -0.000000e+00, %221
  %4901 = fsub fast float -0.000000e+00, %222
  %4902 = fsub fast float -0.000000e+00, %223
  br i1 %4899, label %4903, label %5064

; <label>:4903                                    ; preds = %4887
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = fmul fast float %4322, 2.500000e+00
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4322, 0x4013FFFFE0000000
  %4908 = fadd fast float %4907, 0xBFFFFFFFE0000000
  %4909 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4910 = fmul fast float %4322, 0x4004000020000000
  %4911 = fadd fast float %4910, 0xBFF8000040000000
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %3894, 1.000000e+01
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4914, 2.000000e+00
  %4916 = fsub fast float 3.000000e+00, %4915
  %4917 = fmul fast float %4914, %4914
  %4918 = fmul fast float %4917, %4916
  %4919 = fsub fast float 1.000000e+00, %4918
  %4920 = fsub fast float 0x3FE3333340000000, %4897
  %4921 = fmul fast float %4920, 0x400AAAAAA0000000
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4919, %4922
  %4924 = fmul fast float %4888, 0x3FEA2B8620000000
  %4925 = fmul fast float %4889, 0x3FEA2B8620000000
  %4926 = fmul fast float %4890, 0x3FEA2B8620000000
  %4927 = fadd fast float %4924, 0x3FC81DFBA0000000
  %4928 = fmul fast float %4927, %4888
  %4929 = fadd fast float %4928, 0x3F910E6020000000
  %4930 = fadd fast float %4925, 0x3FC81DFBA0000000
  %4931 = fmul fast float %4930, %4889
  %4932 = fadd fast float %4931, 0x3F910E6020000000
  %4933 = fadd fast float %4926, 0x3FC81DFBA0000000
  %4934 = fmul fast float %4933, %4890
  %4935 = fadd fast float %4934, 0x3F910E6020000000
  %4936 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = fsub fast float %4936, %4888
  %4940 = fsub fast float %4937, %4889
  %4941 = fsub fast float %4938, %4890
  %4942 = fmul fast float %4939, %4906
  %4943 = fmul fast float %4942, %4923
  %4944 = fmul fast float %4940, %4906
  %4945 = fmul fast float %4944, %4923
  %4946 = fmul fast float %4941, %4906
  %4947 = fmul fast float %4946, %4923
  %4948 = fadd fast float %4943, %4888
  %4949 = fadd fast float %4945, %4889
  %4950 = fadd fast float %4947, %4890
  %4951 = fmul fast float %4898, %4898
  %4952 = fmul fast float %4951, %4951
  %4953 = fadd fast float %4909, 1.000000e+00
  %4954 = fsub fast float %4953, %4923
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = fsub fast float 1.000000e+00, %4952
  %4959 = call float @dx.op.binary.f32(i32 36, float %4955, float %4958)  ; FMin(a,b)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4959, float %4960)  ; FMax(a,b)
  %4962 = fadd fast float %4957, 0xBFE4CCCCC0000000
  %4963 = fmul fast float %4962, 0x4006DB6DA0000000
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fmul fast float %4964, 2.000000e+00
  %4966 = fsub fast float 3.000000e+00, %4965
  %4967 = bitcast float %4891 to i32
  %4968 = ashr i32 %4967, 1
  %4969 = add nsw i32 %4968, 532487669
  %4970 = bitcast i32 %4969 to float
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4974, 2.000000e+00
  %4976 = bitcast float %4892 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, 2.000000e+00
  %4985 = bitcast float %4893 to i32
  %4986 = ashr i32 %4985, 1
  %4987 = add nsw i32 %4986, 532487669
  %4988 = bitcast i32 %4987 to float
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = fsub fast float 0x4002A9FBE0000000, %4975
  %4995 = fadd fast float %4975, 0x3FD54FDF00000000
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4998, %4994
  %5000 = fmul fast float %4999, %4999
  %5001 = fsub fast float 0x4002A9FBE0000000, %4984
  %5002 = fadd fast float %4984, 0x3FD54FDF00000000
  %5003 = bitcast float %5002 to i32
  %5004 = sub nsw i32 2129859010, %5003
  %5005 = bitcast i32 %5004 to float
  %5006 = fmul fast float %5005, %5001
  %5007 = fmul fast float %5006, %5006
  %5008 = fsub fast float 0x4002A9FBE0000000, %4993
  %5009 = fadd fast float %4993, 0x3FD54FDF00000000
  %5010 = bitcast float %5009 to i32
  %5011 = sub nsw i32 2129859010, %5010
  %5012 = bitcast i32 %5011 to float
  %5013 = fmul fast float %5012, %5008
  %5014 = fmul fast float %5013, %5013
  %5015 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5000)  ; FMax(a,b)
  %5016 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5007)  ; FMax(a,b)
  %5017 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5014)  ; FMax(a,b)
  %5018 = fsub fast float 1.000000e+00, %4904
  %5019 = fadd fast float %5018, %4919
  %5020 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5021 = fsub fast float 1.000000e+00, %4303
  %5022 = fmul fast float %4961, %5021
  %5023 = fmul fast float %4964, %4964
  %5024 = fmul fast float %5023, %5022
  %5025 = fmul fast float %5024, %4966
  %5026 = fmul fast float %5021, 0xBFE99999A0000000
  %5027 = fmul fast float %5026, %4906
  %5028 = fmul fast float %5027, %4923
  %5029 = fadd fast float %5028, 1.000000e+00
  %5030 = fadd fast float %4897, -1.000000e+00
  %5031 = fmul fast float %5029, %5030
  %5032 = fadd fast float %5031, 1.000000e+00
  %5033 = fsub fast float %5015, %4891
  %5034 = fsub fast float %5016, %4892
  %5035 = fsub fast float %5017, %4893
  %5036 = fmul fast float %5025, %5033
  %5037 = fmul fast float %5025, %5034
  %5038 = fmul fast float %5025, %5035
  %5039 = fadd fast float %5036, %4891
  %5040 = fadd fast float %5037, %4892
  %5041 = fadd fast float %5038, %4893
  %5042 = fsub fast float %121, %4894
  %5043 = fsub fast float %122, %4895
  %5044 = fsub fast float %123, %4896
  %5045 = fmul fast float %5025, %5042
  %5046 = fmul fast float %5025, %5043
  %5047 = fmul fast float %5025, %5044
  %5048 = fadd fast float %5045, %4894
  %5049 = fadd fast float %5046, %4895
  %5050 = fadd fast float %5047, %4896
  %5051 = fmul fast float %5025, %5020
  %5052 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = fmul fast float %5051, %5053
  %5055 = fadd fast float %5054, %5052
  %5056 = fsub fast float 1.000000e+00, %4898
  %5057 = fmul fast float %5025, %5056
  %5058 = fadd fast float %5057, %4898
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.unary.f32(i32 25, float %5059)  ; Rsqrt(value)
  %5061 = fmul fast float %5048, %5060
  %5062 = fmul fast float %5049, %5060
  %5063 = fmul fast float %5050, %5060
  br label %5064

; <label>:5064                                    ; preds = %4903, %4887
  %5065 = phi float [ %4948, %4903 ], [ %4888, %4887 ]
  %5066 = phi float [ %4949, %4903 ], [ %4889, %4887 ]
  %5067 = phi float [ %4950, %4903 ], [ %4890, %4887 ]
  %5068 = phi float [ %5039, %4903 ], [ %4891, %4887 ]
  %5069 = phi float [ %5040, %4903 ], [ %4892, %4887 ]
  %5070 = phi float [ %5041, %4903 ], [ %4893, %4887 ]
  %5071 = phi float [ %5061, %4903 ], [ %4894, %4887 ]
  %5072 = phi float [ %5062, %4903 ], [ %4895, %4887 ]
  %5073 = phi float [ %5063, %4903 ], [ %4896, %4887 ]
  %5074 = phi float [ %5055, %4903 ], [ %4897, %4887 ]
  %5075 = phi float [ %5058, %4903 ], [ %4898, %4887 ]
  %5076 = fsub fast float -0.000000e+00, %203
  %5077 = select i1 %292, float 0.000000e+00, float %5070
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5080 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = fmul fast float %5080, 2.000000e+00
  %5082 = fmul fast float %5081, %5071
  %5083 = fmul fast float %5081, %5072
  %5084 = fmul fast float %5081, %5073
  %5085 = fsub fast float %221, %5082
  %5086 = fsub fast float %222, %5083
  %5087 = fsub fast float %223, %5084
  %5088 = call float @dx.op.binary.f32(i32 36, float %5075, float 1.000000e+00)  ; FMin(a,b)
  %5089 = fsub fast float 1.000000e+00, %5088
  %5090 = bitcast float %5089 to i32
  %5091 = ashr i32 %5090, 1
  %5092 = add nsw i32 %5091, 532487669
  %5093 = bitcast i32 %5092 to float
  %5094 = fsub fast float 1.000000e+00, %5074
  %5095 = call float @dx.op.binary.f32(i32 35, float %5094, float 0x3F847AE140000000)  ; FMax(a,b)
  %5096 = fmul fast float %5095, %5095
  %5097 = fmul fast float %5096, %5096
  %5098 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5093, float %5097, float %5098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = fsub fast float 1.000000e+00, %5075
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = fsub fast float 1.000000e+00, %81
  %5106 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5108 = fdiv fast float %5105, %5107
  %5109 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5110, 5.000000e-01
  %5112 = fadd fast float %5111, 5.000000e-01
  %5113 = fmul fast float %5112, %81
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %5115, %5108
  %5117 = fadd fast float %5113, %5116
  %5118 = fsub fast float 5.000000e-01, %5111
  %5119 = fmul fast float %5118, %5065
  %5120 = fmul fast float %5118, %5066
  %5121 = fmul fast float %5118, %5067
  %5122 = fadd fast float %5117, %5119
  %5123 = fadd fast float %5117, %5120
  %5124 = fadd fast float %5117, %5121
  %5125 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = fmul fast float %5126, 5.000000e-01
  %5128 = fadd fast float %5127, 5.000000e-01
  %5129 = fmul fast float %5128, %81
  %5130 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fmul fast float %5131, %5108
  %5133 = fadd fast float %5129, %5132
  %5134 = fsub fast float 5.000000e-01, %5127
  %5135 = fmul fast float %5134, %5065
  %5136 = fmul fast float %5134, %5066
  %5137 = fmul fast float %5134, %5067
  %5138 = fadd fast float %5133, %5135
  %5139 = fadd fast float %5133, %5136
  %5140 = fadd fast float %5133, %5137
  %5141 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = call float @dx.op.binary.f32(i32 36, float %5065, float %5143)  ; FMin(a,b)
  %5145 = fmul fast float %5144, %5089
  %5146 = fsub fast float 1.000000e+00, %5145
  %5147 = bitcast float %5146 to i32
  %5148 = sub nsw i32 2129859010, %5147
  %5149 = bitcast i32 %5148 to float
  %5150 = call float @dx.op.binary.f32(i32 36, float %5066, float %5143)  ; FMin(a,b)
  %5151 = fmul fast float %5150, %5089
  %5152 = fsub fast float 1.000000e+00, %5151
  %5153 = bitcast float %5152 to i32
  %5154 = sub nsw i32 2129859010, %5153
  %5155 = bitcast i32 %5154 to float
  %5156 = call float @dx.op.binary.f32(i32 36, float %5067, float %5143)  ; FMin(a,b)
  %5157 = fmul fast float %5156, %5089
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = bitcast float %5158 to i32
  %5160 = sub nsw i32 2129859010, %5159
  %5161 = bitcast i32 %5160 to float
  %5162 = fmul fast float %5088, %82
  %5163 = fmul fast float %5162, %5122
  %5164 = fmul fast float %5163, %5149
  %5165 = fmul fast float %5088, %83
  %5166 = fmul fast float %5165, %5123
  %5167 = fmul fast float %5166, %5155
  %5168 = fmul fast float %5088, %84
  %5169 = fmul fast float %5168, %5124
  %5170 = fmul fast float %5169, %5161
  %5171 = call float @dx.op.binary.f32(i32 36, float %5068, float %5143)  ; FMin(a,b)
  %5172 = fmul fast float %5171, %5089
  %5173 = fsub fast float 1.000000e+00, %5172
  %5174 = bitcast float %5173 to i32
  %5175 = sub nsw i32 2129859010, %5174
  %5176 = bitcast i32 %5175 to float
  %5177 = call float @dx.op.binary.f32(i32 36, float %5069, float %5143)  ; FMin(a,b)
  %5178 = fmul fast float %5177, %5089
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = call float @dx.op.binary.f32(i32 36, float %5077, float %5143)  ; FMin(a,b)
  %5184 = fmul fast float %5183, %5089
  %5185 = fsub fast float 1.000000e+00, %5184
  %5186 = bitcast float %5185 to i32
  %5187 = sub nsw i32 2129859010, %5186
  %5188 = bitcast i32 %5187 to float
  %5189 = fmul fast float %5162, %5138
  %5190 = fmul fast float %5189, %5176
  %5191 = fmul fast float %5165, %5139
  %5192 = fmul fast float %5191, %5182
  %5193 = fmul fast float %5168, %5140
  %5194 = fmul fast float %5193, %5188
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5167, float %5170, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = select i1 %292, float 0.000000e+00, float %5164
  %5197 = select i1 %292, float %5195, float %5167
  %5198 = select i1 %292, float 0.000000e+00, float %5170
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5192, float %5194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = select i1 %292, float 0.000000e+00, float %5190
  %5201 = select i1 %292, float %5199, float %5192
  %5202 = select i1 %292, float 0.000000e+00, float %5194
  %5203 = fmul fast float %5079, 9.843750e-01
  %5204 = fmul fast float %5074, 9.843750e-01
  %5205 = fadd fast float %5203, 7.812500e-03
  %5206 = fadd fast float %5204, 7.812500e-03
  %5207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5205, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 2
  %5209 = extractvalue %dx.types.ResRet.f32 %5207, 3
  %5210 = fmul fast float %5208, %5068
  %5211 = fmul fast float %5208, %5069
  %5212 = fmul fast float %5208, %5077
  %5213 = fadd fast float %5210, %5209
  %5214 = fadd fast float %5211, %5209
  %5215 = fadd fast float %5212, %5209
  %5216 = fcmp fast ogt float %3867, 0.000000e+00
  br i1 %5216, label %5217, label %5243

; <label>:5217                                    ; preds = %5064
  %5218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3867, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.ResRet.f32 %5218, 1
  %5221 = extractvalue %dx.types.ResRet.f32 %5218, 2
  %5222 = fadd fast float %5219, -5.000000e-01
  %5223 = fadd fast float %5220, -5.000000e-01
  %5224 = fadd fast float %5221, -5.000000e-01
  %5225 = fsub fast float 1.000000e+00, %5068
  %5226 = fsub fast float 1.000000e+00, %5069
  %5227 = fsub fast float 1.000000e+00, %5077
  %5228 = fmul fast float %5068, 4.000000e+00
  %5229 = fmul fast float %5228, %5225
  %5230 = fmul fast float %5229, %5222
  %5231 = fmul fast float %5069, 4.000000e+00
  %5232 = fmul fast float %5231, %5226
  %5233 = fmul fast float %5232, %5223
  %5234 = fmul fast float %5077, 4.000000e+00
  %5235 = fmul fast float %5234, %5227
  %5236 = fmul fast float %5235, %5224
  %5237 = fadd fast float %5230, %5213
  %5238 = fadd fast float %5233, %5214
  %5239 = fadd fast float %5236, %5215
  %5240 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  br label %5243

; <label>:5243                                    ; preds = %5217, %5064
  %5244 = phi float [ %5240, %5217 ], [ %5213, %5064 ]
  %5245 = phi float [ %5241, %5217 ], [ %5214, %5064 ]
  %5246 = phi float [ %5242, %5217 ], [ %5215, %5064 ]
  %5247 = call float @dx.op.binary.f32(i32 35, float %5245, float %5246)  ; FMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5244, float %5247)  ; FMax(a,b)
  %5249 = fsub fast float 1.000000e+00, %5248
  %5250 = fmul fast float %5248, %5074
  %5251 = fadd fast float %5250, %5074
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5255 = fmul fast float %5251, %5253
  %5256 = fadd fast float %5255, %5254
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fsub fast float 1.000000e+00, %5100
  %5259 = fadd fast float %5258, %5257
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fcmp fast olt float %5260, 1.000000e+00
  br i1 %5261, label %5262, label %5738

; <label>:5262                                    ; preds = %5243
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5266 = fmul fast float %5264, %114
  %5267 = fmul fast float %5265, %115
  %5268 = fptoui float %5266 to i32
  %5269 = fptoui float %5267 to i32
  %5270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5271 = extractvalue %dx.types.CBufRet.f32 %5270, 0
  %5272 = extractvalue %dx.types.CBufRet.f32 %5270, 2
  %5273 = extractvalue %dx.types.CBufRet.f32 %5270, 3
  %5274 = fadd fast float %101, -4.000000e+00
  %5275 = call float @dx.op.binary.f32(i32 35, float %5274, float 0.000000e+00)  ; FMax(a,b)
  %5276 = fadd fast float %5275, %5271
  %5277 = fmul fast float %5276, %5272
  %5278 = call float @dx.op.unary.f32(i32 23, float %5277)  ; Log(value)
  %5279 = fmul fast float %5278, %5273
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5282 = fmul fast float %5279, %5281
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.i32 %5284, 1
  %5286 = add i32 %5285, -1
  %5287 = uitofp i32 %5285 to float
  %5288 = fmul fast float %5287, %5283
  %5289 = fptoui float %5288 to i32
  %5290 = call i32 @dx.op.binary.i32(i32 40, i32 %5289, i32 %5286)  ; UMin(a,b)
  %5291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.i32 %5291, 2
  %5293 = extractvalue %dx.types.CBufRet.i32 %5291, 3
  %5294 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5269, i32 %5292, i32 %5268)  ; UMad(a,b,c)
  %5295 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5290, i32 %5293, i32 %5294)  ; UMad(a,b,c)
  %5296 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5297 = fptoui float %5296 to i32
  %5298 = lshr i32 %5297, 5
  %5299 = call i32 @dx.op.binary.i32(i32 40, i32 %5298, i32 8191)  ; UMin(a,b)
  %5300 = fsub fast float %4293, %203
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fcmp fast ogt float %5301, 0.000000e+00
  %5303 = fcmp fast ogt float %5087, 0.000000e+00
  %5304 = and i1 %5303, %5302
  br i1 %5304, label %5305, label %5334

; <label>:5305                                    ; preds = %5262
  %5306 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5087, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5307 = call float @dx.op.binary.f32(i32 35, float %5306, float -1.000000e+00)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 36, float %5307, float 1.000000e+00)  ; FMin(a,b)
  %5309 = fmul fast float %5308, %5308
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = fmul fast float %5310, 0x3FFC6E2300000000
  %5312 = fsub fast float 1.000000e+00, %5311
  %5313 = fcmp fast ogt float %5312, 0.000000e+00
  %5314 = call float @dx.op.unary.f32(i32 24, float %5312)  ; Sqrt(value)
  %5315 = fsub fast float 1.000000e+00, %5314
  %5316 = call float @dx.op.unary.f32(i32 23, float %5315)  ; Log(value)
  %5317 = fmul fast float %5316, 5.000000e+00
  %5318 = call float @dx.op.unary.f32(i32 21, float %5317)  ; Exp(value)
  %5319 = fmul fast float %5318, 0x3FEF591A60000000
  %5320 = fadd fast float %5319, 0x3F94DCB540000000
  %5321 = select i1 %5313, float %5320, float 1.000000e+00
  %5322 = fcmp fast oge float %5321, 1.000000e+00
  %5323 = fmul fast float %5306, 2.000000e+00
  %5324 = fadd fast float %5323, %5087
  %5325 = select i1 %5322, float %5324, float %5087
  %5326 = fsub fast float %5325, %5087
  %5327 = fmul fast float %5326, %5301
  %5328 = fadd fast float %5327, %5087
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5085, float %5086, float %5328, float %5085, float %5086, float %5328)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 25, float %5329)  ; Rsqrt(value)
  %5331 = fmul fast float %5330, %5085
  %5332 = fmul fast float %5330, %5086
  %5333 = fmul fast float %5328, %5330
  br label %5334

; <label>:5334                                    ; preds = %5305, %5262
  %5335 = phi float [ %5331, %5305 ], [ %5085, %5262 ]
  %5336 = phi float [ %5332, %5305 ], [ %5086, %5262 ]
  %5337 = phi float [ %5333, %5305 ], [ %5087, %5262 ]
  %5338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5339 = extractvalue %dx.types.CBufRet.i32 %5338, 2
  %5340 = add nsw i32 %5339, -1
  %5341 = call i32 @dx.op.binary.i32(i32 37, i32 %5340, i32 0)  ; IMax(a,b)
  %5342 = shl i32 %5299, 2
  %5343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.i32 %5343, 0
  %5345 = lshr i32 %5344, 16
  %5346 = and i32 %5344, 65535
  %5347 = lshr i32 %5344, 21
  %5348 = lshr i32 %5346, 5
  %5349 = call i32 @dx.op.binary.i32(i32 40, i32 %5348, i32 %5341)  ; UMin(a,b)
  %5350 = icmp ugt i32 %5347, %5349
  br i1 %5350, label %5714, label %5351

; <label>:5351                                    ; preds = %5334
  br label %5352

; <label>:5352                                    ; preds = %5706, %5351
  %5353 = phi float [ %5707, %5706 ], [ 0.000000e+00, %5351 ]
  %5354 = phi float [ %5708, %5706 ], [ 0.000000e+00, %5351 ]
  %5355 = phi float [ %5709, %5706 ], [ 0.000000e+00, %5351 ]
  %5356 = phi float [ %5710, %5706 ], [ 1.000000e+00, %5351 ]
  %5357 = phi i32 [ %5711, %5706 ], [ %5347, %5351 ]
  %5358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.i32 %5358, 2
  %5360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5295, i32 %5359, i32 %5357)  ; UMad(a,b,c)
  %5361 = shl i32 %5360, 2
  %5362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.i32 %5362, 0
  %5364 = shl i32 %5357, 5
  %5365 = sub nsw i32 %5345, %5364
  %5366 = call i32 @dx.op.binary.i32(i32 37, i32 %5365, i32 0)  ; IMax(a,b)
  %5367 = call i32 @dx.op.binary.i32(i32 38, i32 %5366, i32 31)  ; IMin(a,b)
  %5368 = sub nsw i32 1, %5345
  %5369 = add nsw i32 %5368, %5346
  %5370 = call i32 @dx.op.binary.i32(i32 37, i32 %5369, i32 0)  ; IMax(a,b)
  %5371 = call i32 @dx.op.binary.i32(i32 38, i32 %5370, i32 32)  ; IMin(a,b)
  %5372 = and i32 %5371, 31
  %5373 = shl i32 -1, %5372
  %5374 = xor i32 %5373, -1
  %5375 = and i32 %5367, 31
  %5376 = shl i32 %5374, %5375
  %5377 = icmp eq i32 %5371, 32
  %5378 = select i1 %5377, i32 -1, i32 %5376
  %5379 = and i32 %5378, %5363
  %5380 = icmp eq i32 %5379, 0
  br i1 %5380, label %5706, label %5381

; <label>:5381                                    ; preds = %5352
  br label %5382

; <label>:5382                                    ; preds = %5489, %5381
  %5383 = phi float [ %5490, %5489 ], [ %5353, %5381 ]
  %5384 = phi float [ %5491, %5489 ], [ %5354, %5381 ]
  %5385 = phi float [ %5492, %5489 ], [ %5355, %5381 ]
  %5386 = phi float [ %5493, %5489 ], [ %5356, %5381 ]
  %5387 = phi i32 [ %5392, %5489 ], [ %5379, %5381 ]
  %5388 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5387)  ; FirstbitLo(value)
  %5389 = add i32 %5388, %5364
  %5390 = and i32 %5388, 31
  %5391 = shl i32 1, %5390
  %5392 = xor i32 %5391, %5387
  %5393 = mul i32 %5389, 72
  %5394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5398 = add i32 %5393, 12
  %5399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.i32 %5399, 0
  %5401 = add i32 %5393, 16
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.ResRet.f32 %5402, 2
  %5406 = add i32 %5393, 28
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = add i32 %5393, 32
  %5410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5409, i32 undef)  ; BufferLoad(srv,index,wot)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.ResRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.ResRet.f32 %5410, 2
  %5414 = extractvalue %dx.types.ResRet.f32 %5410, 3
  %5415 = add i32 %5393, 48
  %5416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.ResRet.f32 %5416, 1
  %5419 = add i32 %5393, 56
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = add i32 %5393, 64
  %5424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = mul i32 %5389, 60
  %5428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5429 = extractvalue %dx.types.ResRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.ResRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.ResRet.f32 %5428, 2
  %5432 = add i32 %5427, 12
  %5433 = add i32 %5427, 48
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = and i32 %5400, 32767
  %5439 = bitcast float %5395 to i32
  %5440 = icmp eq i32 %5439, -1
  %5441 = bitcast float %5396 to i32
  %5442 = and i32 %5400, 32768
  %5443 = icmp ne i32 %5442, 0
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5444, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5444, 2
  %5448 = fsub fast float %5429, %5445
  %5449 = fsub fast float %5430, %5446
  %5450 = fsub fast float %5431, %5447
  %5451 = fsub fast float %201, %5448
  %5452 = fsub fast float %202, %5449
  %5453 = fsub fast float %203, %5450
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5432, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = add i32 %5427, 24
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = add i32 %5427, 36
  %5466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 6, float %5458)  ; FAbs(value)
  %5472 = call float @dx.op.unary.f32(i32 6, float %5464)  ; FAbs(value)
  %5473 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5474 = fsub fast float %5435, %5471
  %5475 = fsub fast float %5436, %5472
  %5476 = fsub fast float %5437, %5473
  %5477 = fmul fast float %5474, %5403
  %5478 = fmul fast float %5475, %5404
  %5479 = fmul fast float %5476, %5405
  %5480 = call float @dx.op.binary.f32(i32 36, float %5478, float %5479)  ; FMin(a,b)
  %5481 = call float @dx.op.binary.f32(i32 36, float %5477, float %5480)  ; FMin(a,b)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = call float @dx.op.binary.f32(i32 36, float %5386, float %5482)  ; FMin(a,b)
  %5484 = uitofp i1 %5443 to float
  %5485 = fadd fast float %5301, 1.000000e+00
  %5486 = fsub fast float %5485, %5484
  %5487 = fmul fast float %5483, %5486
  %5488 = fcmp fast ogt float %5487, 0.000000e+00
  br i1 %5488, label %5495, label %5489

; <label>:5489                                    ; preds = %5637, %5382
  %5490 = phi float [ %5701, %5637 ], [ %5383, %5382 ]
  %5491 = phi float [ %5702, %5637 ], [ %5384, %5382 ]
  %5492 = phi float [ %5703, %5637 ], [ %5385, %5382 ]
  %5493 = phi float [ %5704, %5637 ], [ %5386, %5382 ]
  %5494 = icmp eq i32 %5387, %5391
  br i1 %5494, label %5705, label %5382

; <label>:5495                                    ; preds = %5382
  br i1 %5440, label %5553, label %5496

; <label>:5496                                    ; preds = %5495
  %5497 = fsub fast float -0.000000e+00, %5455
  %5498 = fsub fast float -0.000000e+00, %5456
  %5499 = fsub fast float -0.000000e+00, %5457
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5336, float %5337, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fsub fast float -0.000000e+00, %5500
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fadd fast float %5502, %5418
  %5504 = fadd fast float %5417, %5502
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = fcmp ogt float %5500, -0.000000e+00
  %5507 = select i1 %5506, float %5505, float %5503
  %5508 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5509 = fdiv fast float 1.000000e+00, %5508
  %5510 = fmul fast float %5507, %5509
  %5511 = call float @dx.op.binary.f32(i32 35, float %5510, float 0.000000e+00)  ; FMax(a,b)
  %5512 = fsub fast float -0.000000e+00, %5461
  %5513 = fsub fast float -0.000000e+00, %5462
  %5514 = fsub fast float -0.000000e+00, %5463
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5336, float %5337, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fsub fast float -0.000000e+00, %5515
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fadd fast float %5517, %5422
  %5519 = fadd fast float %5421, %5517
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = fcmp ogt float %5515, -0.000000e+00
  %5522 = select i1 %5521, float %5520, float %5518
  %5523 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5524 = fdiv fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5522, %5524
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5527 = fsub fast float -0.000000e+00, %5467
  %5528 = fsub fast float -0.000000e+00, %5468
  %5529 = fsub fast float -0.000000e+00, %5469
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5335, float %5336, float %5337, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fadd fast float %5532, %5426
  %5534 = fadd fast float %5425, %5532
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fcmp ogt float %5530, -0.000000e+00
  %5537 = select i1 %5536, float %5535, float %5533
  %5538 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5539 = fdiv fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5537, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 36, float %5526, float %5541)  ; FMin(a,b)
  %5543 = call float @dx.op.binary.f32(i32 36, float %5511, float %5542)  ; FMin(a,b)
  %5544 = fmul fast float %5543, %5335
  %5545 = fmul fast float %5543, %5336
  %5546 = fmul fast float %5543, %5337
  %5547 = fadd fast float %5544, %201
  %5548 = fadd fast float %5545, %202
  %5549 = fadd fast float %5546, %203
  %5550 = fsub fast float %5547, %5395
  %5551 = fsub fast float %5548, %5396
  %5552 = fsub fast float %5549, %5397
  br label %5560

; <label>:5553                                    ; preds = %5495
  %5554 = fmul fast float %5335, 8.096000e+03
  %5555 = fmul fast float %5336, 8.096000e+03
  %5556 = fmul fast float %5337, 8.096000e+03
  %5557 = fadd fast float %5554, %201
  %5558 = fadd fast float %5555, %202
  %5559 = fadd fast float %5556, %203
  br label %5560

; <label>:5560                                    ; preds = %5553, %5496
  %5561 = phi float [ %5335, %5553 ], [ %5550, %5496 ]
  %5562 = phi float [ %5336, %5553 ], [ %5551, %5496 ]
  %5563 = phi float [ %5337, %5553 ], [ %5552, %5496 ]
  %5564 = phi float [ %5557, %5553 ], [ %5547, %5496 ]
  %5565 = phi float [ %5558, %5553 ], [ %5548, %5496 ]
  %5566 = phi float [ %5559, %5553 ], [ %5549, %5496 ]
  %5567 = fcmp fast olt float %5414, 1.000000e+00
  br i1 %5567, label %5568, label %5599, !dx.controlflow.hints !100

; <label>:5568                                    ; preds = %5560
  %5569 = fmul fast float %5563, %5412
  %5570 = fmul fast float %5562, %5413
  %5571 = fsub fast float %5569, %5570
  %5572 = fmul fast float %5561, %5413
  %5573 = fmul fast float %5563, %5411
  %5574 = fsub fast float %5572, %5573
  %5575 = fmul fast float %5562, %5411
  %5576 = fmul fast float %5561, %5412
  %5577 = fsub fast float %5575, %5576
  %5578 = fmul fast float %5571, 2.000000e+00
  %5579 = fmul fast float %5574, 2.000000e+00
  %5580 = fmul fast float %5577, 2.000000e+00
  %5581 = fmul fast float %5578, %5414
  %5582 = fmul fast float %5579, %5414
  %5583 = fmul fast float %5580, %5414
  %5584 = fmul fast float %5580, %5412
  %5585 = fmul fast float %5579, %5413
  %5586 = fmul fast float %5578, %5413
  %5587 = fmul fast float %5580, %5411
  %5588 = fmul fast float %5579, %5411
  %5589 = fmul fast float %5578, %5412
  %5590 = fadd fast float %5584, %5561
  %5591 = fadd fast float %5590, %5581
  %5592 = fsub fast float %5591, %5585
  %5593 = fsub fast float %5562, %5587
  %5594 = fadd fast float %5593, %5582
  %5595 = fadd fast float %5594, %5586
  %5596 = fadd fast float %5583, %5563
  %5597 = fsub fast float %5596, %5589
  %5598 = fadd fast float %5597, %5588
  br label %5599

; <label>:5599                                    ; preds = %5568, %5560
  %5600 = phi float [ %5592, %5568 ], [ %5561, %5560 ]
  %5601 = phi float [ %5595, %5568 ], [ %5562, %5560 ]
  %5602 = phi float [ %5598, %5568 ], [ %5563, %5560 ]
  br i1 %5440, label %5634, label %5603

; <label>:5603                                    ; preds = %5599
  %5604 = fmul fast float %5074, 0x400187C840000000
  %5605 = fadd fast float %5604, 0xC00EFC2120000000
  %5606 = fmul fast float %5605, %5074
  %5607 = fadd fast float %5606, 0x3FE5D16340000000
  %5608 = fmul fast float %5607, %5074
  %5609 = fadd fast float %5608, 1.000000e+00
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fsub fast float %5564, %201
  %5612 = fsub fast float %5565, %202
  %5613 = fsub fast float %5566, %203
  %5614 = fsub fast float %5564, %5395
  %5615 = fsub fast float %5565, %5396
  %5616 = fsub fast float %5566, %5397
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fadd fast float %5618, 0x3EE4F8B580000000
  %5620 = fdiv fast float %5617, %5619
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %5610
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5626, 0x4009981AE0000000
  %5628 = fsub fast float 0x40111BBD80000000, %5627
  %5629 = fmul fast float %5628, %5626
  %5630 = fadd fast float %5629, 0xC0009F6020000000
  %5631 = fmul fast float %5630, %5626
  %5632 = fadd fast float %5631, 1.000000e+00
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  br label %5637

; <label>:5634                                    ; preds = %5599
  %5635 = icmp ne i32 %5441, -1
  %5636 = zext i1 %5635 to i32
  br label %5637

; <label>:5637                                    ; preds = %5634, %5603
  %5638 = phi float [ %5074, %5634 ], [ %5633, %5603 ]
  %5639 = phi i32 [ %5636, %5634 ], [ 0, %5603 ]
  %5640 = fmul float %5638, 5.000000e+00
  %5641 = fsub float 5.000000e+00, %5640
  %5642 = icmp ne i32 %5639, 0
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 3
  %5645 = fadd fast float %5644, %5641
  %5646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5645)  ; FMax(a,b)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5648 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5649 = fadd fast float %5648, %5647
  %5650 = call float @dx.op.unary.f32(i32 6, float %5602)  ; FAbs(value)
  %5651 = fadd fast float %5649, %5650
  %5652 = fcmp fast oeq float %5651, 0.000000e+00
  %5653 = fdiv fast float 1.000000e+00, %5651
  %5654 = select i1 %5652, float 1.000000e+00, float %5653
  %5655 = fmul fast float %5654, %5600
  %5656 = fmul fast float %5654, %5601
  %5657 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5658 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5659 = fsub fast float 1.000000e+00, %5657
  %5660 = fsub fast float 1.000000e+00, %5658
  %5661 = fcmp fast oge float %5655, 0.000000e+00
  %5662 = fcmp fast oge float %5656, 0.000000e+00
  %5663 = select i1 %5661, float 1.000000e+00, float -1.000000e+00
  %5664 = select i1 %5662, float 1.000000e+00, float -1.000000e+00
  %5665 = fcmp fast ole float %5602, 0.000000e+00
  %5666 = fmul fast float %5663, %5659
  %5667 = fmul fast float %5664, %5660
  %5668 = select i1 %5665, float %5666, float %5655
  %5669 = select i1 %5665, float %5667, float %5656
  %5670 = fmul fast float %5668, 5.000000e-01
  %5671 = fmul fast float %5669, 5.000000e-01
  %5672 = fadd fast float %5670, 5.000000e-01
  %5673 = fadd fast float %5671, 5.000000e-01
  %5674 = uitofp i32 %5438 to float
  %5675 = call float @dx.op.binary.f32(i32 36, float %5646, float 3.000000e+00)  ; FMin(a,b)
  %5676 = fadd fast float %5675, 2.000000e+00
  %5677 = call float @dx.op.unary.f32(i32 21, float %5676)  ; Exp(value)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5643, 1
  %5679 = fmul fast float %5678, %5677
  %5680 = fmul fast float %5679, 2.000000e+00
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5672, %5681
  %5683 = fmul fast float %5673, %5681
  %5684 = fadd fast float %5682, %5679
  %5685 = fadd fast float %5683, %5679
  %5686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5684, float %5685, float %5674, float undef, i32 0, i32 0, i32 undef, float %5646)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5692 = fmul fast float %5691, %5408
  %5693 = call float @dx.op.binary.f32(i32 36, float %5141, float %5692)  ; FMin(a,b)
  %5694 = select i1 %5642, float %5693, float %5692
  %5695 = fmul fast float %5687, %5487
  %5696 = fmul fast float %5695, %5694
  %5697 = fmul fast float %5688, %5487
  %5698 = fmul fast float %5697, %5694
  %5699 = fmul fast float %5689, %5487
  %5700 = fmul fast float %5699, %5694
  %5701 = fadd fast float %5696, %5383
  %5702 = fadd fast float %5698, %5384
  %5703 = fadd fast float %5700, %5385
  %5704 = fsub fast float %5386, %5487
  br label %5489

; <label>:5705                                    ; preds = %5489
  br label %5706

; <label>:5706                                    ; preds = %5705, %5352
  %5707 = phi float [ %5353, %5352 ], [ %5490, %5705 ]
  %5708 = phi float [ %5354, %5352 ], [ %5491, %5705 ]
  %5709 = phi float [ %5355, %5352 ], [ %5492, %5705 ]
  %5710 = phi float [ %5356, %5352 ], [ %5493, %5705 ]
  %5711 = add i32 %5357, 1
  %5712 = icmp ugt i32 %5711, %5349
  br i1 %5712, label %5713, label %5352, !llvm.loop !101

; <label>:5713                                    ; preds = %5706
  br label %5714

; <label>:5714                                    ; preds = %5713, %5334
  %5715 = phi float [ 0.000000e+00, %5334 ], [ %5707, %5713 ]
  %5716 = phi float [ 0.000000e+00, %5334 ], [ %5708, %5713 ]
  %5717 = phi float [ 0.000000e+00, %5334 ], [ %5709, %5713 ]
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = select i1 %292, float 0.000000e+00, float %5715
  %5720 = select i1 %292, float %5718, float %5716
  %5721 = select i1 %292, float 0.000000e+00, float %5717
  %5722 = fcmp fast olt float %5260, 0.000000e+00
  %5723 = call float @dx.op.unary.f32(i32 6, float %5260)  ; FAbs(value)
  %5724 = fmul fast float %5723, %5200
  %5725 = fmul fast float %5723, %5201
  %5726 = fmul fast float %5723, %5202
  %5727 = select i1 %5722, float %5200, float %5724
  %5728 = select i1 %5722, float %5201, float %5725
  %5729 = select i1 %5722, float %5202, float %5726
  %5730 = fsub fast float 1.000000e+00, %5723
  %5731 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5732 = fmul fast float %5731, %5719
  %5733 = fmul fast float %5731, %5720
  %5734 = fmul fast float %5731, %5721
  %5735 = fadd fast float %5727, %5732
  %5736 = fadd fast float %5728, %5733
  %5737 = fadd fast float %5729, %5734
  br label %5738

; <label>:5738                                    ; preds = %5714, %5243
  %5739 = phi float [ %5200, %5243 ], [ %5735, %5714 ]
  %5740 = phi float [ %5201, %5243 ], [ %5736, %5714 ]
  %5741 = phi float [ %5202, %5243 ], [ %5737, %5714 ]
  %5742 = fmul fast float %5249, %5196
  %5743 = fmul fast float %5249, %5197
  %5744 = fmul fast float %5249, %5198
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5066, float %5067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fcmp fast ogt float %5745, 0x3E7FF19E20000000
  %5747 = fdiv fast float 1.000000e+00, %5745
  %5748 = select i1 %5746, float %5747, float 0.000000e+00
  %5749 = fmul fast float %5748, %5065
  %5750 = fmul fast float %5748, %5066
  %5751 = fmul fast float %5748, %5067
  %5752 = fadd fast float %5749, -1.000000e+00
  %5753 = fadd fast float %5750, -1.000000e+00
  %5754 = fadd fast float %5751, -1.000000e+00
  %5755 = fmul fast float %5752, 5.000000e-01
  %5756 = fmul fast float %5753, 5.000000e-01
  %5757 = fmul fast float %5754, 5.000000e-01
  %5758 = fadd fast float %5755, 1.000000e+00
  %5759 = fadd fast float %5756, 1.000000e+00
  %5760 = fadd fast float %5757, 1.000000e+00
  %5761 = fmul fast float %5739, %5244
  %5762 = fmul fast float %5740, %5245
  %5763 = fmul fast float %5741, %5246
  %5764 = fsub fast float 1.000000e+00, %5079
  %5765 = bitcast float %5764 to i32
  %5766 = sitofp i32 %5765 to float
  %5767 = fmul fast float %5766, 5.000000e+00
  %5768 = fadd fast float %5767, 0xC1EFBF8940000000
  %5769 = fptosi float %5768 to i32
  %5770 = bitcast i32 %5769 to float
  %5771 = fmul fast float %5770, %3868
  %5772 = fmul fast float %5196, %5771
  %5773 = fmul fast float %5772, %5249
  %5774 = fmul fast float %5773, %5758
  %5775 = fmul fast float %5197, %5771
  %5776 = fmul fast float %5775, %5249
  %5777 = fmul fast float %5776, %5759
  %5778 = fmul fast float %5198, %5771
  %5779 = fmul fast float %5778, %5249
  %5780 = fmul fast float %5779, %5760
  %5781 = fmul fast float %5742, %3893
  %5782 = fmul fast float %5743, %3893
  %5783 = fmul fast float %5744, %3893
  %5784 = fadd fast float %5761, %3860
  %5785 = fadd fast float %5784, %5774
  %5786 = fmul fast float %5785, %3893
  %5787 = fadd fast float %5762, %3861
  %5788 = fadd fast float %5787, %5777
  %5789 = fmul fast float %5788, %3893
  %5790 = fadd fast float %5763, %3862
  %5791 = fadd fast float %5790, %5780
  %5792 = fmul fast float %5791, %3893
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 3
  %5795 = fcmp fast oeq float %5794, 0.000000e+00
  br i1 %5795, label %7499, label %5796

; <label>:5796                                    ; preds = %5738
  %5797 = extractvalue %dx.types.CBufRet.f32 %5793, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5793, 1
  %5799 = extractvalue %dx.types.CBufRet.f32 %5793, 2
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5802, float %5803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = select i1 %292, float %5805, float %5801
  %5809 = select i1 %292, float %5807, float %5802
  %5810 = select i1 %292, float %5806, float %5803
  %5811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.f32 %5811, 2
  %5813 = fmul fast float %5812, %121
  %5814 = fmul fast float %5812, %122
  %5815 = fmul fast float %5812, %123
  %5816 = fadd fast float %5813, %201
  %5817 = fadd fast float %5814, %202
  %5818 = fadd fast float %5815, %203
  %5819 = fcmp fast olt float %5794, 0.000000e+00
  br i1 %5819, label %7077, label %5820

; <label>:5820                                    ; preds = %5796
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.CBufRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.CBufRet.f32 %5821, 2
  %5825 = extractvalue %dx.types.CBufRet.f32 %5821, 3
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.CBufRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5830 = extractvalue %dx.types.CBufRet.f32 %5826, 3
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5836 = fmul fast float %5822, %5816
  %5837 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5823, float %5836)  ; FMad(a,b,c)
  %5838 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5824, float %5837)  ; FMad(a,b,c)
  %5839 = fadd fast float %5838, %5825
  %5840 = fmul fast float %5827, %5816
  %5841 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5828, float %5840)  ; FMad(a,b,c)
  %5842 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5829, float %5841)  ; FMad(a,b,c)
  %5843 = fadd fast float %5842, %5830
  %5844 = fmul fast float %5832, %5816
  %5845 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5833, float %5844)  ; FMad(a,b,c)
  %5846 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5834, float %5845)  ; FMad(a,b,c)
  %5847 = fadd fast float %5846, %5835
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 0
  %5850 = fcmp fast une float %5849, 0.000000e+00
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.CBufRet.f32 %5851, 3
  %5855 = fmul fast float %5854, %5839
  %5856 = fmul fast float %5854, %5843
  %5857 = fadd fast float %5855, %5852
  %5858 = fadd fast float %5856, %5853
  %5859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5860 = extractvalue %dx.types.CBufRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.CBufRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.CBufRet.f32 %5859, 3
  %5863 = fmul fast float %5862, %5839
  %5864 = fmul fast float %5862, %5843
  %5865 = fadd fast float %5863, %5860
  %5866 = fadd fast float %5864, %5861
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5869 = fsub fast float %5868, %5847
  %5870 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %5871 = fmul fast float %5869, %5870
  %5872 = fsub fast float 1.000000e+00, %5871
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  br i1 %5850, label %5934, label %5874

; <label>:5874                                    ; preds = %5820
  %5875 = extractvalue %dx.types.CBufRet.f32 %5859, 2
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 2
  %5878 = fadd fast float %5877, %5875
  %5879 = fcmp fast ogt float %5878, 0.000000e+00
  br i1 %5879, label %5880, label %5904

; <label>:5880                                    ; preds = %5874
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.CBufRet.f32 %5881, 1
  %5884 = fsub fast float %5865, %5882
  %5885 = fsub fast float %5866, %5883
  %5886 = fcmp fast olt float %5884, 0.000000e+00
  %5887 = fcmp fast olt float %5885, 0.000000e+00
  %5888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5889 = extractvalue %dx.types.CBufRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.CBufRet.f32 %5888, 1
  %5891 = extractvalue %dx.types.CBufRet.f32 %5888, 2
  %5892 = extractvalue %dx.types.CBufRet.f32 %5888, 3
  %5893 = select i1 %5886, float %5889, float %5891
  %5894 = select i1 %5887, float %5890, float %5892
  %5895 = fmul fast float %5893, %5884
  %5896 = fmul fast float %5894, %5885
  %5897 = call float @dx.op.unary.f32(i32 6, float %5895)  ; FAbs(value)
  %5898 = call float @dx.op.unary.f32(i32 6, float %5896)  ; FAbs(value)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5900 = call float @dx.op.binary.f32(i32 35, float %5897, float %5898)  ; FMax(a,b)
  %5901 = fsub fast float %5899, %5900
  %5902 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  %5903 = fmul fast float %5902, %5873
  br label %5904

; <label>:5904                                    ; preds = %5880, %5874
  %5905 = phi float [ %5903, %5880 ], [ 0.000000e+00, %5874 ]
  %5906 = extractvalue %dx.types.CBufRet.f32 %5851, 2
  %5907 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5908 = fadd fast float %5907, %5906
  %5909 = fcmp fast ogt float %5908, 0.000000e+00
  br i1 %5909, label %5910, label %5934

; <label>:5910                                    ; preds = %5904
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = fsub fast float %5857, %5912
  %5915 = fsub fast float %5858, %5913
  %5916 = fcmp fast olt float %5914, 0.000000e+00
  %5917 = fcmp fast olt float %5915, 0.000000e+00
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.CBufRet.f32 %5918, 2
  %5922 = extractvalue %dx.types.CBufRet.f32 %5918, 3
  %5923 = select i1 %5916, float %5919, float %5921
  %5924 = select i1 %5917, float %5920, float %5922
  %5925 = fmul fast float %5923, %5914
  %5926 = fmul fast float %5924, %5915
  %5927 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5928 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5930 = call float @dx.op.binary.f32(i32 35, float %5927, float %5928)  ; FMax(a,b)
  %5931 = fsub fast float %5929, %5930
  %5932 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5933 = fmul fast float %5932, %5873
  br label %5934

; <label>:5934                                    ; preds = %5910, %5904, %5820
  %5935 = phi float [ 0.000000e+00, %5820 ], [ %5933, %5910 ], [ 0.000000e+00, %5904 ]
  %5936 = phi float [ 0.000000e+00, %5820 ], [ %5905, %5910 ], [ %5905, %5904 ]
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 1
  %5939 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = fsub fast float %5839, %5941
  %5944 = fsub fast float %5843, %5942
  %5945 = fcmp fast olt float %5943, 0.000000e+00
  %5946 = fcmp fast olt float %5944, 0.000000e+00
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = extractvalue %dx.types.CBufRet.f32 %5947, 3
  %5952 = select i1 %5945, float %5948, float %5950
  %5953 = select i1 %5946, float %5949, float %5951
  %5954 = fmul fast float %5952, %5943
  %5955 = fmul fast float %5953, %5944
  %5956 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5957 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5811, 0
  %5959 = call float @dx.op.binary.f32(i32 35, float %5956, float %5957)  ; FMax(a,b)
  %5960 = fsub fast float %5958, %5959
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = call float @dx.op.binary.f32(i32 36, float %5961, float %5939)  ; FMin(a,b)
  %5963 = fmul fast float %5962, %5873
  %5964 = fsub fast float %5935, %5963
  %5965 = fsub fast float %5936, %5935
  %5966 = fsub fast float %5965, %5963
  %5967 = call float @dx.op.binary.f32(i32 35, float %5935, float %5936)  ; FMax(a,b)
  %5968 = call float @dx.op.binary.f32(i32 35, float %5963, float %5967)  ; FMax(a,b)
  %5969 = fcmp fast olt float %5968, 1.000000e+00
  br i1 %5969, label %5970, label %6368, !dx.controlflow.hints !103

; <label>:5970                                    ; preds = %5934
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = fcmp fast une float %5972, 0.000000e+00
  br i1 %5973, label %5974, label %6368, !dx.controlflow.hints !104

; <label>:5974                                    ; preds = %5970
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.CBufRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.CBufRet.f32 %5975, 2
  %5979 = extractvalue %dx.types.CBufRet.f32 %5975, 3
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.CBufRet.f32 %5980, 2
  %5984 = extractvalue %dx.types.CBufRet.f32 %5980, 3
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5989 = extractvalue %dx.types.CBufRet.f32 %5985, 3
  %5990 = fmul fast float %5976, %5816
  %5991 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5977, float %5990)  ; FMad(a,b,c)
  %5992 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5978, float %5991)  ; FMad(a,b,c)
  %5993 = fadd fast float %5992, %5979
  %5994 = fmul fast float %5981, %5816
  %5995 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5982, float %5994)  ; FMad(a,b,c)
  %5996 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5983, float %5995)  ; FMad(a,b,c)
  %5997 = fadd fast float %5996, %5984
  %5998 = fmul fast float %5986, %5816
  %5999 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %5987, float %5998)  ; FMad(a,b,c)
  %6000 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %5988, float %5999)  ; FMad(a,b,c)
  %6001 = fadd fast float %6000, %5989
  %6002 = fcmp fast oge float %5993, 1.000000e+00
  %6003 = fcmp fast oge float %5997, 1.000000e+00
  %6004 = or i1 %6002, %6003
  %6005 = fcmp fast olt float %5993, 0.000000e+00
  %6006 = fcmp fast olt float %5997, 0.000000e+00
  %6007 = or i1 %6005, %6006
  %6008 = or i1 %6004, %6007
  br i1 %6008, label %6368, label %6009, !dx.controlflow.hints !105

; <label>:6009                                    ; preds = %5974
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.CBufRet.f32 %6010, 2
  %6014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.i32 %6014, 2
  %6016 = uitofp i32 %6015 to float
  %6017 = extractvalue %dx.types.CBufRet.i32 %6014, 3
  %6018 = uitofp i32 %6017 to float
  %6019 = extractvalue %dx.types.CBufRet.f32 %6010, 3
  %6020 = fmul fast float %6019, 2.000000e+00
  %6021 = fsub fast float %5993, %6011
  %6022 = fsub fast float %5997, %6012
  %6023 = fmul fast float %6020, %6021
  %6024 = fmul fast float %6020, %6022
  %6025 = fdiv fast float 1.000000e+00, %5799
  %6026 = fmul fast float %6024, %6025
  %6027 = call float @dx.op.unary.f32(i32 6, float %6026)  ; FAbs(value)
  %6028 = fmul fast float %6013, %5818
  %6029 = fmul fast float %6028, %6020
  %6030 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6031 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6032 = call float @dx.op.binary.f32(i32 35, float %6030, float %6027)  ; FMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 35, float %6031, float %6032)  ; FMax(a,b)
  %6034 = fmul fast float %6033, 2.000000e+00
  %6035 = call float @dx.op.unary.f32(i32 23, float %6034)  ; Log(value)
  %6036 = call float @dx.op.binary.f32(i32 35, float %6035, float %6016)  ; FMax(a,b)
  %6037 = call float @dx.op.unary.f32(i32 22, float %6036)  ; Frc(value)
  %6038 = fadd fast float %6037, 0xBFEA666660000000
  %6039 = fmul fast float %6038, 8.000000e+00
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = call float @dx.op.unary.f32(i32 27, float %6036)  ; Round_ni(value)
  %6042 = fadd fast float %6041, %6040
  %6043 = call float @dx.op.binary.f32(i32 36, float %6042, float %6018)  ; FMin(a,b)
  %6044 = call float @dx.op.unary.f32(i32 27, float %6043)  ; Round_ni(value)
  %6045 = fsub fast float -0.000000e+00, %6044
  %6046 = call float @dx.op.unary.f32(i32 21, float %6045)  ; Exp(value)
  %6047 = fmul fast float %6046, %6020
  %6048 = fmul fast float %6047, %5993
  %6049 = fmul fast float %6047, %5997
  %6050 = fmul fast float %6048, 2.500000e-01
  %6051 = fmul fast float %6049, 2.500000e-01
  %6052 = fadd fast float %6050, 5.000000e-01
  %6053 = fadd fast float %6051, 5.000000e-01
  %6054 = fsub fast float %6018, %6016
  %6055 = fptoui float %6054 to i32
  %6056 = add i32 %6055, 320
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6056)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6060 = fcmp fast une float %6043, %6018
  %6061 = fsub fast float %5993, %6058
  %6062 = fsub fast float %5997, %6059
  %6063 = call float @dx.op.unary.f32(i32 6, float %6061)  ; FAbs(value)
  %6064 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6065 = fmul fast float %6063, %6047
  %6066 = fmul fast float %6064, %6047
  %6067 = fcmp fast olt float %6065, 1.000000e+00
  %6068 = fcmp fast olt float %6066, 1.000000e+00
  %6069 = and i1 %6067, %6068
  %6070 = or i1 %6060, %6069
  br i1 %6070, label %6071, label %6368, !dx.controlflow.hints !106

; <label>:6071                                    ; preds = %6009
  %6072 = fmul fast float %6049, 5.000000e-01
  %6073 = fmul fast float %6048, 5.000000e-01
  %6074 = fadd fast float %6072, 5.000000e-01
  %6075 = fadd fast float %6073, 5.000000e-01
  %6076 = sitofp i32 %6015 to float
  %6077 = fsub fast float %6043, %6076
  %6078 = call float @dx.op.unary.f32(i32 27, float %6077)  ; Round_ni(value)
  %6079 = call float @dx.op.unary.f32(i32 22, float %6043)  ; Frc(value)
  %6080 = call float @dx.op.unary.f32(i32 22, float %6075)  ; Frc(value)
  %6081 = call float @dx.op.unary.f32(i32 22, float %6074)  ; Frc(value)
  %6082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6080, float %6081, float %6078, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = extractvalue %dx.types.ResRet.f32 %6082, 3
  %6087 = fcmp fast ogt float %6079, 0.000000e+00
  br i1 %6087, label %6088, label %6109, !dx.controlflow.hints !107

; <label>:6088                                    ; preds = %6071
  %6089 = fadd fast float %6078, 1.000000e+00
  %6090 = call float @dx.op.unary.f32(i32 22, float %6052)  ; Frc(value)
  %6091 = call float @dx.op.unary.f32(i32 22, float %6053)  ; Frc(value)
  %6092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6090, float %6091, float %6089, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 0
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6095 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6096 = extractvalue %dx.types.ResRet.f32 %6092, 3
  %6097 = fsub fast float %6093, %6083
  %6098 = fsub fast float %6094, %6084
  %6099 = fsub fast float %6095, %6085
  %6100 = fsub fast float %6096, %6086
  %6101 = fmul fast float %6097, %6079
  %6102 = fmul fast float %6098, %6079
  %6103 = fmul fast float %6099, %6079
  %6104 = fmul fast float %6100, %6079
  %6105 = fadd fast float %6101, %6083
  %6106 = fadd fast float %6102, %6084
  %6107 = fadd fast float %6103, %6085
  %6108 = fadd fast float %6104, %6086
  br label %6109

; <label>:6109                                    ; preds = %6088, %6071
  %6110 = phi float [ %6105, %6088 ], [ %6083, %6071 ]
  %6111 = phi float [ %6106, %6088 ], [ %6084, %6071 ]
  %6112 = phi float [ %6107, %6088 ], [ %6085, %6071 ]
  %6113 = phi float [ %6108, %6088 ], [ %6086, %6071 ]
  %6114 = fadd fast float %6110, -5.000000e-01
  %6115 = fadd fast float %6112, -5.000000e-01
  %6116 = fmul fast float %6114, 0xBFD5555560000000
  %6117 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6115, float %6116)  ; FMad(a,b,c)
  %6118 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6111, float 0.000000e+00)  ; FMad(a,b,c)
  %6119 = fadd fast float %6118, %6113
  %6120 = fmul fast float %6114, -7.500000e-01
  %6121 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6115, float %6120)  ; FMad(a,b,c)
  %6122 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6111, float 0.000000e+00)  ; FMad(a,b,c)
  %6123 = fadd fast float %6122, %6113
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.CBufRet.f32 %6126, 2
  %6130 = extractvalue %dx.types.CBufRet.f32 %6126, 3
  %6131 = fsub fast float %6127, %6117
  %6132 = fsub fast float %6128, %6119
  %6133 = fsub fast float %6129, %6121
  %6134 = fsub fast float %6130, %6123
  %6135 = fmul fast float %6131, %6125
  %6136 = fmul fast float %6132, %6125
  %6137 = fmul fast float %6133, %6125
  %6138 = fmul fast float %6134, %6125
  %6139 = fadd fast float %6135, %6117
  %6140 = fadd fast float %6136, %6119
  %6141 = fadd fast float %6137, %6121
  %6142 = fadd fast float %6138, %6123
  %6143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6144 = extractvalue %dx.types.ResRet.i32 %6143, 0
  %6145 = and i32 %6144, 536870911
  %6146 = uitofp i32 %6145 to float
  %6147 = fmul fast float %6146, %5993
  %6148 = fmul fast float %6146, %5997
  %6149 = fptoui float %6147 to i32
  %6150 = fptoui float %6148 to i32
  %6151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = and i32 %6152, 31
  %6154 = lshr i32 %6149, %6153
  %6155 = lshr i32 %6150, %6153
  %6156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.i32 %6156, 0
  %6158 = and i32 %6157, 31
  %6159 = shl i32 1, %6158
  %6160 = call i32 @dx.op.binary.i32(i32 40, i32 %6159, i32 4)  ; UMin(a,b)
  %6161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.i32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.i32 %6161, 1
  %6164 = icmp eq i32 %6160, 0
  br i1 %6164, label %6206, label %6165

; <label>:6165                                    ; preds = %6109
  br label %6166

; <label>:6166                                    ; preds = %6194, %6165
  %6167 = phi i32 [ %6197, %6194 ], [ 0, %6165 ]
  %6168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6169 = extractvalue %dx.types.ResRet.i32 %6168, 0
  %6170 = lshr i32 %6169, 16
  %6171 = and i32 %6170, 31
  %6172 = shl i32 %6155, %6171
  %6173 = add i32 %6172, %6154
  %6174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6175 = extractvalue %dx.types.ResRet.i32 %6174, 0
  %6176 = and i32 %6175, 31
  %6177 = shl i32 %6173, %6176
  %6178 = add i32 %6177, %6167
  %6179 = shl i32 %6178, 2
  %6180 = add i32 %6179, 32
  %6181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.i32 %6181, 0
  %6183 = icmp slt i32 %6182, 0
  %6184 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6167
  %6185 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6167
  %6186 = bitcast float* %6184 to i32*
  %6187 = bitcast float* %6185 to i32*
  br i1 %6183, label %6188, label %6194

; <label>:6188                                    ; preds = %6166
  %6189 = and i32 %6182, 1073741823
  %6190 = add nuw nsw i32 %6189, 20
  %6191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6190, i32 undef)  ; BufferLoad(srv,index,wot)
  %6192 = extractvalue %dx.types.ResRet.i32 %6191, 0
  %6193 = extractvalue %dx.types.ResRet.i32 %6191, 1
  br label %6194

; <label>:6194                                    ; preds = %6188, %6166
  %6195 = phi i32 [ %6192, %6188 ], [ %6162, %6166 ]
  %6196 = phi i32 [ %6193, %6188 ], [ %6163, %6166 ]
  store i32 %6195, i32* %6186, align 4
  store i32 %6196, i32* %6187, align 4
  %6197 = add nuw i32 %6167, 1
  %6198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6199 = extractvalue %dx.types.CBufRet.i32 %6198, 2
  %6200 = icmp eq i32 %6199, 0
  %6201 = icmp ugt i32 %6182, -1073741825
  %6202 = and i1 %6201, %6200
  %6203 = icmp ult i32 %6197, %6160
  %6204 = and i1 %6202, %6203
  br i1 %6204, label %6166, label %6205

; <label>:6205                                    ; preds = %6194
  br label %6206

; <label>:6206                                    ; preds = %6205, %6109
  %6207 = phi i32 [ 0, %6109 ], [ %6197, %6205 ]
  %6208 = extractvalue %dx.types.CBufRet.f32 %5971, 2
  %6209 = fptoui float %6208 to i32
  %6210 = icmp eq i32 %6209, 0
  br i1 %6210, label %6262, label %6211

; <label>:6211                                    ; preds = %6206
  br label %6212

; <label>:6212                                    ; preds = %6257, %6211
  %6213 = phi i32 [ %6258, %6257 ], [ %6207, %6211 ]
  %6214 = phi i32 [ %6259, %6257 ], [ 0, %6211 ]
  %6215 = lshr i32 %6214, 2
  %6216 = and i32 %6214, 3
  %6217 = add nuw nsw i32 %6215, 83
  %6218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6217)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.i32 %6218, 0
  %6220 = extractvalue %dx.types.CBufRet.i32 %6218, 1
  %6221 = extractvalue %dx.types.CBufRet.i32 %6218, 2
  %6222 = extractvalue %dx.types.CBufRet.i32 %6218, 3
  %6223 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6219, i32* %6223, align 4
  %6224 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6220, i32* %6224, align 4
  %6225 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6221, i32* %6225, align 4
  %6226 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6222, i32* %6226, align 4
  %6227 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6216
  %6228 = load i32, i32* %6227, align 4, !tbaa !108, !noalias !112
  %6229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6230 = extractvalue %dx.types.ResRet.i32 %6229, 0
  %6231 = lshr i32 %6230, 16
  %6232 = and i32 %6231, 31
  %6233 = shl i32 %6155, %6232
  %6234 = add i32 %6233, %6154
  %6235 = shl i32 %6234, 2
  %6236 = add i32 %6235, %6228
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = icmp eq i32 %6238, 0
  br i1 %6239, label %6257, label %6240

; <label>:6240                                    ; preds = %6212
  %6241 = icmp slt i32 %6238, 0
  %6242 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6213
  %6243 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6213
  %6244 = bitcast float* %6242 to i32*
  %6245 = bitcast float* %6243 to i32*
  br i1 %6241, label %6246, label %6253

; <label>:6246                                    ; preds = %6240
  %6247 = and i32 %6238, 1073741823
  %6248 = add i32 %6228, 20
  %6249 = add i32 %6248, %6247
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = extractvalue %dx.types.ResRet.i32 %6250, 1
  br label %6253

; <label>:6253                                    ; preds = %6246, %6240
  %6254 = phi i32 [ %6251, %6246 ], [ %6162, %6240 ]
  %6255 = phi i32 [ %6252, %6246 ], [ %6163, %6240 ]
  store i32 %6254, i32* %6244, align 4
  store i32 %6255, i32* %6245, align 4
  %6256 = add i32 %6213, 1
  br label %6257

; <label>:6257                                    ; preds = %6253, %6212
  %6258 = phi i32 [ %6213, %6212 ], [ %6256, %6253 ]
  %6259 = add nuw i32 %6214, 1
  %6260 = icmp eq i32 %6259, %6209
  br i1 %6260, label %6261, label %6212

; <label>:6261                                    ; preds = %6257
  br label %6262

; <label>:6262                                    ; preds = %6261, %6206
  %6263 = phi i32 [ %6207, %6206 ], [ %6258, %6261 ]
  %6264 = icmp eq i32 %6263, 1
  %6265 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6266 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6264, label %6267, label %6270

; <label>:6267                                    ; preds = %6262
  %6268 = load float, float* %6265, align 4
  %6269 = load float, float* %6266, align 4
  br label %6297

; <label>:6270                                    ; preds = %6262
  %6271 = load float, float* %6265, align 4
  %6272 = load float, float* %6266, align 4
  %6273 = fdiv fast float 1.000000e+00, %6272
  %6274 = fsub fast float %6271, %6273
  %6275 = icmp ugt i32 %6263, 1
  br i1 %6275, label %6276, label %6292

; <label>:6276                                    ; preds = %6270
  br label %6277

; <label>:6277                                    ; preds = %6277, %6276
  %6278 = phi float [ %6287, %6277 ], [ %6274, %6276 ]
  %6279 = phi float [ %6288, %6277 ], [ %6271, %6276 ]
  %6280 = phi i32 [ %6289, %6277 ], [ 1, %6276 ]
  %6281 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6280
  %6282 = load float, float* %6281, align 4
  %6283 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6280
  %6284 = load float, float* %6283, align 4
  %6285 = fdiv fast float 1.000000e+00, %6284
  %6286 = fsub fast float %6282, %6285
  %6287 = call float @dx.op.binary.f32(i32 36, float %6278, float %6286)  ; FMin(a,b)
  %6288 = call float @dx.op.binary.f32(i32 35, float %6279, float %6282)  ; FMax(a,b)
  %6289 = add nuw i32 %6280, 1
  %6290 = icmp eq i32 %6289, %6263
  br i1 %6290, label %6291, label %6277

; <label>:6291                                    ; preds = %6277
  br label %6292

; <label>:6292                                    ; preds = %6291, %6270
  %6293 = phi float [ %6274, %6270 ], [ %6287, %6291 ]
  %6294 = phi float [ %6271, %6270 ], [ %6288, %6291 ]
  %6295 = fsub fast float %6294, %6293
  %6296 = fdiv fast float 1.000000e+00, %6295
  br label %6297

; <label>:6297                                    ; preds = %6292, %6267
  %6298 = phi float [ %6268, %6267 ], [ %6294, %6292 ]
  %6299 = phi float [ %6269, %6267 ], [ %6296, %6292 ]
  %6300 = fadd fast float %6001, %6298
  %6301 = fmul fast float %6300, %6299
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = fmul fast float %6302, 2.000000e+00
  %6304 = fsub fast float 1.000000e+00, %6303
  %6305 = fmul fast float %6139, %6139
  %6306 = fsub fast float %6140, %6305
  %6307 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6306)  ; FMax(a,b)
  %6308 = fdiv fast float 1.000000e+00, %6307
  %6309 = fmul fast float %6140, %6139
  %6310 = fsub fast float %6141, %6309
  %6311 = fsub fast float %6304, %6139
  %6312 = fmul fast float %6304, %6304
  %6313 = fsub fast float %6312, %6140
  %6314 = fmul fast float %6308, %6310
  %6315 = fmul fast float %6314, %6311
  %6316 = fsub fast float %6313, %6315
  %6317 = fmul fast float %6140, %6140
  %6318 = fsub fast float %6142, %6317
  %6319 = fmul fast float %6310, %6310
  %6320 = fmul fast float %6319, %6308
  %6321 = fsub fast float %6318, %6320
  %6322 = fdiv fast float %6316, %6321
  %6323 = fmul fast float %6322, %6310
  %6324 = fsub fast float %6311, %6323
  %6325 = fmul fast float %6324, %6308
  %6326 = fmul fast float %6325, %6139
  %6327 = fsub fast float 1.000000e+00, %6326
  %6328 = fmul fast float %6322, %6140
  %6329 = fsub fast float %6327, %6328
  %6330 = fmul fast float %6325, %6325
  %6331 = fmul fast float %6322, 4.000000e+00
  %6332 = fmul fast float %6331, %6329
  %6333 = fsub fast float %6330, %6332
  %6334 = call float @dx.op.unary.f32(i32 24, float %6333)  ; Sqrt(value)
  %6335 = fcmp fast oge float %6325, 0.000000e+00
  %6336 = fsub fast float -0.000000e+00, %6334
  %6337 = select i1 %6335, float %6336, float %6334
  %6338 = fsub fast float %6337, %6325
  %6339 = fdiv fast float %6338, %6322
  %6340 = fdiv fast float %6329, %6338
  %6341 = fmul fast float %6339, 5.000000e-01
  %6342 = fmul fast float %6340, 2.000000e+00
  %6343 = select i1 %6335, float %6341, float %6342
  %6344 = select i1 %6335, float %6342, float %6341
  %6345 = call float @dx.op.binary.f32(i32 35, float %6343, float %6344)  ; FMax(a,b)
  %6346 = call float @dx.op.binary.f32(i32 36, float %6343, float %6344)  ; FMin(a,b)
  %6347 = fcmp fast ogt float %6304, %6345
  %6348 = fsub fast float %6304, %6346
  %6349 = fsub fast float %6304, %6345
  %6350 = fsub fast float %6345, %6346
  %6351 = select i1 %6347, float %6349, float %6350
  %6352 = fmul float %6348, %6351
  %6353 = select i1 %6347, float %6346, float %6304
  %6354 = fcmp fast ogt float %6304, %6346
  %6355 = fmul fast float %6353, %6345
  %6356 = fadd fast float %6353, %6345
  %6357 = fmul fast float %6356, %6139
  %6358 = fadd fast float %6355, %6140
  %6359 = fsub fast float %6358, %6357
  %6360 = fdiv fast float %6359, %6352
  %6361 = select i1 %6354, float %6360, float 0.000000e+00
  %6362 = fsub fast float 1.000000e+00, %6361
  %6363 = select i1 %6347, float %6362, float %6361
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6124, 3
  %6366 = fmul fast float %6365, %6364
  %6367 = fsub fast float 1.000000e+00, %6366
  br label %6368

; <label>:6368                                    ; preds = %6297, %6009, %5974, %5970, %5934
  %6369 = phi float [ 1.000000e+00, %5934 ], [ %6367, %6297 ], [ 1.000000e+00, %5974 ], [ 1.000000e+00, %6009 ], [ 1.000000e+00, %5970 ]
  %6370 = fcmp fast ogt float %5966, 0.000000e+00
  br i1 %6370, label %6371, label %6535, !dx.controlflow.hints !121

; <label>:6371                                    ; preds = %6368
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6374 = fadd fast float %6373, %5847
  %6375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6376 = extractvalue %dx.types.CBufRet.f32 %6375, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6375, 3
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6380 = call float @dx.op.binary.f32(i32 35, float %6374, float 0.000000e+00)  ; FMax(a,b)
  %6381 = fadd fast float %6380, 0x3F10000000000000
  %6382 = fcmp fast oeq float %6379, 0.000000e+00
  br i1 %6382, label %6383, label %6450

; <label>:6383                                    ; preds = %6371
  %6384 = extractvalue %dx.types.CBufRet.f32 %6375, 1
  %6385 = extractvalue %dx.types.CBufRet.f32 %6375, 0
  %6386 = fmul fast float %6385, %5865
  %6387 = fmul fast float %6384, %5866
  %6388 = fadd fast float %6386, 5.000000e-01
  %6389 = call float @dx.op.unary.f32(i32 27, float %6388)  ; Round_ni(value)
  %6390 = fadd fast float %6387, 5.000000e-01
  %6391 = call float @dx.op.unary.f32(i32 27, float %6390)  ; Round_ni(value)
  %6392 = fsub fast float %6388, %6389
  %6393 = fsub fast float %6390, %6391
  %6394 = fadd fast float %6389, -5.000000e-01
  %6395 = fadd fast float %6391, -5.000000e-01
  %6396 = fmul fast float %6392, 2.000000e+00
  %6397 = fsub fast float 3.000000e+00, %6396
  %6398 = fadd fast float %6396, 1.000000e+00
  %6399 = fsub fast float 2.000000e+00, %6392
  %6400 = bitcast float %6397 to i32
  %6401 = sub nsw i32 2129859010, %6400
  %6402 = bitcast i32 %6401 to float
  %6403 = fmul fast float %6402, %6399
  %6404 = fadd fast float %6403, -1.000000e+00
  %6405 = bitcast float %6398 to i32
  %6406 = sub nsw i32 2129859010, %6405
  %6407 = bitcast i32 %6406 to float
  %6408 = fmul fast float %6407, %6392
  %6409 = fadd fast float %6408, 1.000000e+00
  %6410 = fmul fast float %6393, 2.000000e+00
  %6411 = fsub fast float 3.000000e+00, %6410
  %6412 = fadd fast float %6410, 1.000000e+00
  %6413 = fsub fast float 2.000000e+00, %6393
  %6414 = bitcast float %6411 to i32
  %6415 = sub nsw i32 2129859010, %6414
  %6416 = bitcast i32 %6415 to float
  %6417 = fmul fast float %6416, %6413
  %6418 = fadd fast float %6417, -1.000000e+00
  %6419 = bitcast float %6412 to i32
  %6420 = sub nsw i32 2129859010, %6419
  %6421 = bitcast i32 %6420 to float
  %6422 = fmul fast float %6421, %6393
  %6423 = fadd fast float %6422, 1.000000e+00
  %6424 = fadd fast float %6404, %6394
  %6425 = fmul fast float %6424, %6376
  %6426 = fadd fast float %6418, %6395
  %6427 = fmul fast float %6426, %6377
  %6428 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6425, float %6427, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  %6430 = fmul fast float %6429, %6397
  %6431 = fadd fast float %6409, %6394
  %6432 = fmul fast float %6431, %6376
  %6433 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6432, float %6427, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6434 = extractvalue %dx.types.ResRet.f32 %6433, 0
  %6435 = fmul fast float %6434, %6398
  %6436 = fadd fast float %6423, %6395
  %6437 = fmul fast float %6436, %6377
  %6438 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6425, float %6437, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6439 = extractvalue %dx.types.ResRet.f32 %6438, 0
  %6440 = fmul fast float %6439, %6397
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6432, float %6437, float undef, float undef, i32 0, i32 0, i32 undef, float %6381)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = fmul fast float %6442, %6398
  %6444 = fadd fast float %6443, %6440
  %6445 = fmul fast float %6444, %6412
  %6446 = fadd fast float %6435, %6430
  %6447 = fmul fast float %6446, %6411
  %6448 = fadd fast float %6447, %6445
  %6449 = fmul fast float %6448, 6.250000e-02
  br label %6535

; <label>:6450                                    ; preds = %6371
  %6451 = fmul fast float %303, 0x401921FB60000000
  %6452 = call float @dx.op.unary.f32(i32 13, float %6451)  ; Sin(value)
  %6453 = call float @dx.op.unary.f32(i32 12, float %6451)  ; Cos(value)
  %6454 = fsub fast float -0.000000e+00, %6452
  br label %6455

; <label>:6455                                    ; preds = %6504, %6450
  %6456 = phi float [ 0.000000e+00, %6450 ], [ %6499, %6504 ]
  %6457 = phi float [ 0.000000e+00, %6450 ], [ %6501, %6504 ]
  %6458 = phi i32 [ 0, %6450 ], [ %6505, %6504 ]
  %6459 = mul i32 %6458, 2
  %6460 = add i32 0, %6459
  %6461 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6460
  %6462 = load float, float* %6461, align 4
  %6463 = mul i32 %6458, 2
  %6464 = add i32 1, %6463
  %6465 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6464
  %6466 = load float, float* %6465, align 4
  %6467 = fmul fast float %6462, %6453
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6454, float %6467)  ; FMad(a,b,c)
  %6469 = fmul fast float %6462, %6452
  %6470 = call float @dx.op.tertiary.f32(i32 46, float %6466, float %6453, float %6469)  ; FMad(a,b,c)
  %6471 = fmul fast float %6468, %6379
  %6472 = fmul fast float %6470, %6379
  %6473 = fadd fast float %6471, %5865
  %6474 = fadd fast float %6472, %5866
  %6475 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6473, float %6474, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6476 = extractvalue %dx.types.ResRet.f32 %6475, 0
  %6477 = extractvalue %dx.types.ResRet.f32 %6475, 1
  %6478 = extractvalue %dx.types.ResRet.f32 %6475, 2
  %6479 = extractvalue %dx.types.ResRet.f32 %6475, 3
  %6480 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6476, float* %6480, align 4
  %6481 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6477, float* %6481, align 4
  %6482 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6478, float* %6482, align 4
  %6483 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6479, float* %6483, align 4
  %6484 = fsub fast float %6476, %6381
  %6485 = fcmp fast olt float %6484, 0.000000e+00
  %6486 = select i1 %6485, float 0.000000e+00, float 1.000000e+00
  %6487 = fadd fast float %6486, %6456
  %6488 = fmul fast float %6486, %6484
  %6489 = fadd fast float %6488, %6457
  br label %6490

; <label>:6490                                    ; preds = %6490, %6455
  %6491 = phi i32 [ 1, %6455 ], [ %6502, %6490 ]
  %6492 = phi float [ %6489, %6455 ], [ %6501, %6490 ]
  %6493 = phi float [ %6487, %6455 ], [ %6499, %6490 ]
  %6494 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6491
  %6495 = load float, float* %6494, align 4, !tbaa !122, !noalias !112
  %6496 = fsub fast float %6495, %6381
  %6497 = fcmp fast olt float %6496, 0.000000e+00
  %6498 = select i1 %6497, float 0.000000e+00, float 1.000000e+00
  %6499 = fadd fast float %6498, %6493
  %6500 = fmul fast float %6498, %6496
  %6501 = fadd fast float %6500, %6492
  %6502 = add nuw nsw i32 %6491, 1
  %6503 = icmp eq i32 %6502, 4
  br i1 %6503, label %6504, label %6490, !llvm.loop !124

; <label>:6504                                    ; preds = %6490
  %6505 = add nuw nsw i32 %6458, 1
  %6506 = icmp eq i32 %6505, 8
  br i1 %6506, label %6507, label %6455, !llvm.loop !125

; <label>:6507                                    ; preds = %6504
  %6508 = fdiv fast float 1.000000e+00, %6499
  %6509 = fmul fast float %6508, %6501
  %6510 = fdiv fast float 1.000000e+00, %6381
  %6511 = fmul fast float %6509, %6510
  %6512 = call float @dx.op.unary.f32(i32 7, float %6511)  ; Saturate(value)
  %6513 = call float @dx.op.binary.f32(i32 35, float %6512, float 0.000000e+00)  ; FMax(a,b)
  %6514 = fmul fast float %6499, 3.125000e-02
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6515, 2.000000e+00
  %6517 = fadd fast float %6516, -1.000000e+00
  %6518 = fcmp fast ogt float %6517, 0.000000e+00
  %6519 = fcmp fast olt float %6517, 0.000000e+00
  %6520 = zext i1 %6518 to i32
  %6521 = zext i1 %6519 to i32
  %6522 = sub nsw i32 %6520, %6521
  %6523 = sitofp i32 %6522 to float
  %6524 = fmul fast float %6523, %6517
  %6525 = fsub fast float 1.000000e+00, %6524
  %6526 = fmul fast float %6525, %6525
  %6527 = fmul fast float %6526, %6525
  %6528 = fsub fast float %6525, %6527
  %6529 = fmul fast float %6528, %6513
  %6530 = fsub fast float 1.000000e+00, %6527
  %6531 = fsub fast float %6530, %6529
  %6532 = fmul fast float %6523, 5.000000e-01
  %6533 = fmul fast float %6532, %6531
  %6534 = fsub fast float 5.000000e-01, %6533
  br label %6535

; <label>:6535                                    ; preds = %6507, %6383, %6368
  %6536 = phi float [ 1.000000e+00, %6368 ], [ %6449, %6383 ], [ %6534, %6507 ]
  %6537 = fcmp fast ogt float %5964, 0.000000e+00
  br i1 %6537, label %6538, label %6702, !dx.controlflow.hints !126

; <label>:6538                                    ; preds = %6535
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 1
  %6541 = fadd fast float %6540, %5847
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 3
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6547 = call float @dx.op.binary.f32(i32 35, float %6541, float 0.000000e+00)  ; FMax(a,b)
  %6548 = fadd fast float %6547, 0x3F10000000000000
  %6549 = fcmp fast oeq float %6546, 0.000000e+00
  br i1 %6549, label %6550, label %6617

; <label>:6550                                    ; preds = %6538
  %6551 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6552 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6553 = fmul fast float %6552, %5857
  %6554 = fmul fast float %6551, %5858
  %6555 = fadd fast float %6553, 5.000000e-01
  %6556 = call float @dx.op.unary.f32(i32 27, float %6555)  ; Round_ni(value)
  %6557 = fadd fast float %6554, 5.000000e-01
  %6558 = call float @dx.op.unary.f32(i32 27, float %6557)  ; Round_ni(value)
  %6559 = fsub fast float %6555, %6556
  %6560 = fsub fast float %6557, %6558
  %6561 = fadd fast float %6556, -5.000000e-01
  %6562 = fadd fast float %6558, -5.000000e-01
  %6563 = fmul fast float %6559, 2.000000e+00
  %6564 = fsub fast float 3.000000e+00, %6563
  %6565 = fadd fast float %6563, 1.000000e+00
  %6566 = fsub fast float 2.000000e+00, %6559
  %6567 = bitcast float %6564 to i32
  %6568 = sub nsw i32 2129859010, %6567
  %6569 = bitcast i32 %6568 to float
  %6570 = fmul fast float %6569, %6566
  %6571 = fadd fast float %6570, -1.000000e+00
  %6572 = bitcast float %6565 to i32
  %6573 = sub nsw i32 2129859010, %6572
  %6574 = bitcast i32 %6573 to float
  %6575 = fmul fast float %6574, %6559
  %6576 = fadd fast float %6575, 1.000000e+00
  %6577 = fmul fast float %6560, 2.000000e+00
  %6578 = fsub fast float 3.000000e+00, %6577
  %6579 = fadd fast float %6577, 1.000000e+00
  %6580 = fsub fast float 2.000000e+00, %6560
  %6581 = bitcast float %6578 to i32
  %6582 = sub nsw i32 2129859010, %6581
  %6583 = bitcast i32 %6582 to float
  %6584 = fmul fast float %6583, %6580
  %6585 = fadd fast float %6584, -1.000000e+00
  %6586 = bitcast float %6579 to i32
  %6587 = sub nsw i32 2129859010, %6586
  %6588 = bitcast i32 %6587 to float
  %6589 = fmul fast float %6588, %6560
  %6590 = fadd fast float %6589, 1.000000e+00
  %6591 = fadd fast float %6571, %6561
  %6592 = fmul fast float %6591, %6543
  %6593 = fadd fast float %6585, %6562
  %6594 = fmul fast float %6593, %6544
  %6595 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6592, float %6594, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6596 = extractvalue %dx.types.ResRet.f32 %6595, 0
  %6597 = fmul fast float %6596, %6564
  %6598 = fadd fast float %6576, %6561
  %6599 = fmul fast float %6598, %6543
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6599, float %6594, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = fmul fast float %6601, %6565
  %6603 = fadd fast float %6590, %6562
  %6604 = fmul fast float %6603, %6544
  %6605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6592, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6606 = extractvalue %dx.types.ResRet.f32 %6605, 0
  %6607 = fmul fast float %6606, %6564
  %6608 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6599, float %6604, float undef, float undef, i32 0, i32 0, i32 undef, float %6548)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6609 = extractvalue %dx.types.ResRet.f32 %6608, 0
  %6610 = fmul fast float %6609, %6565
  %6611 = fadd fast float %6610, %6607
  %6612 = fmul fast float %6611, %6579
  %6613 = fadd fast float %6602, %6597
  %6614 = fmul fast float %6613, %6578
  %6615 = fadd fast float %6614, %6612
  %6616 = fmul fast float %6615, 6.250000e-02
  br label %6702

; <label>:6617                                    ; preds = %6538
  %6618 = fmul fast float %303, 0x401921FB60000000
  %6619 = call float @dx.op.unary.f32(i32 13, float %6618)  ; Sin(value)
  %6620 = call float @dx.op.unary.f32(i32 12, float %6618)  ; Cos(value)
  %6621 = fsub fast float -0.000000e+00, %6619
  br label %6622

; <label>:6622                                    ; preds = %6671, %6617
  %6623 = phi float [ 0.000000e+00, %6617 ], [ %6666, %6671 ]
  %6624 = phi float [ 0.000000e+00, %6617 ], [ %6668, %6671 ]
  %6625 = phi i32 [ 0, %6617 ], [ %6672, %6671 ]
  %6626 = mul i32 %6625, 2
  %6627 = add i32 0, %6626
  %6628 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6627
  %6629 = load float, float* %6628, align 4
  %6630 = mul i32 %6625, 2
  %6631 = add i32 1, %6630
  %6632 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6631
  %6633 = load float, float* %6632, align 4
  %6634 = fmul fast float %6629, %6620
  %6635 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6621, float %6634)  ; FMad(a,b,c)
  %6636 = fmul fast float %6629, %6619
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6633, float %6620, float %6636)  ; FMad(a,b,c)
  %6638 = fmul fast float %6635, %6546
  %6639 = fmul fast float %6637, %6546
  %6640 = fadd fast float %6638, %5857
  %6641 = fadd fast float %6639, %5858
  %6642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6640, float %6641, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6646 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6647 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6643, float* %6647, align 4
  %6648 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6644, float* %6648, align 4
  %6649 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6645, float* %6649, align 4
  %6650 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6646, float* %6650, align 4
  %6651 = fsub fast float %6643, %6548
  %6652 = fcmp fast olt float %6651, 0.000000e+00
  %6653 = select i1 %6652, float 0.000000e+00, float 1.000000e+00
  %6654 = fadd fast float %6653, %6623
  %6655 = fmul fast float %6653, %6651
  %6656 = fadd fast float %6655, %6624
  br label %6657

; <label>:6657                                    ; preds = %6657, %6622
  %6658 = phi i32 [ 1, %6622 ], [ %6669, %6657 ]
  %6659 = phi float [ %6656, %6622 ], [ %6668, %6657 ]
  %6660 = phi float [ %6654, %6622 ], [ %6666, %6657 ]
  %6661 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6658
  %6662 = load float, float* %6661, align 4, !tbaa !122, !noalias !112
  %6663 = fsub fast float %6662, %6548
  %6664 = fcmp fast olt float %6663, 0.000000e+00
  %6665 = select i1 %6664, float 0.000000e+00, float 1.000000e+00
  %6666 = fadd fast float %6665, %6660
  %6667 = fmul fast float %6665, %6663
  %6668 = fadd fast float %6667, %6659
  %6669 = add nuw nsw i32 %6658, 1
  %6670 = icmp eq i32 %6669, 4
  br i1 %6670, label %6671, label %6657, !llvm.loop !124

; <label>:6671                                    ; preds = %6657
  %6672 = add nuw nsw i32 %6625, 1
  %6673 = icmp eq i32 %6672, 8
  br i1 %6673, label %6674, label %6622, !llvm.loop !125

; <label>:6674                                    ; preds = %6671
  %6675 = fdiv fast float 1.000000e+00, %6666
  %6676 = fmul fast float %6675, %6668
  %6677 = fdiv fast float 1.000000e+00, %6548
  %6678 = fmul fast float %6676, %6677
  %6679 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6680 = call float @dx.op.binary.f32(i32 35, float %6679, float 0.000000e+00)  ; FMax(a,b)
  %6681 = fmul fast float %6666, 3.125000e-02
  %6682 = call float @dx.op.unary.f32(i32 7, float %6681)  ; Saturate(value)
  %6683 = fmul fast float %6682, 2.000000e+00
  %6684 = fadd fast float %6683, -1.000000e+00
  %6685 = fcmp fast ogt float %6684, 0.000000e+00
  %6686 = fcmp fast olt float %6684, 0.000000e+00
  %6687 = zext i1 %6685 to i32
  %6688 = zext i1 %6686 to i32
  %6689 = sub nsw i32 %6687, %6688
  %6690 = sitofp i32 %6689 to float
  %6691 = fmul fast float %6690, %6684
  %6692 = fsub fast float 1.000000e+00, %6691
  %6693 = fmul fast float %6692, %6692
  %6694 = fmul fast float %6693, %6692
  %6695 = fsub fast float %6692, %6694
  %6696 = fmul fast float %6695, %6680
  %6697 = fsub fast float 1.000000e+00, %6694
  %6698 = fsub fast float %6697, %6696
  %6699 = fmul fast float %6690, 5.000000e-01
  %6700 = fmul fast float %6699, %6698
  %6701 = fsub fast float 5.000000e-01, %6700
  br label %6702

; <label>:6702                                    ; preds = %6674, %6550, %6535
  %6703 = phi float [ 1.000000e+00, %6535 ], [ %6616, %6550 ], [ %6701, %6674 ]
  %6704 = fcmp fast ogt float %5963, 0.000000e+00
  br i1 %6704, label %6705, label %7023, !dx.controlflow.hints !127

; <label>:6705                                    ; preds = %6702
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6708 = fadd fast float %6707, %5847
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6713 = extractvalue %dx.types.CBufRet.f32 %6712, 0
  %6714 = call float @dx.op.binary.f32(i32 35, float %6708, float 0.000000e+00)  ; FMax(a,b)
  %6715 = fadd fast float %6714, 0x3F10000000000000
  %6716 = fcmp fast oeq float %6713, 0.000000e+00
  br i1 %5850, label %6717, label %6870, !dx.controlflow.hints !128

; <label>:6717                                    ; preds = %6705
  br i1 %6716, label %6718, label %6785

; <label>:6718                                    ; preds = %6717
  %6719 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6721 = fmul fast float %6720, %5839
  %6722 = fmul fast float %6719, %5843
  %6723 = fadd fast float %6721, 5.000000e-01
  %6724 = call float @dx.op.unary.f32(i32 27, float %6723)  ; Round_ni(value)
  %6725 = fadd fast float %6722, 5.000000e-01
  %6726 = call float @dx.op.unary.f32(i32 27, float %6725)  ; Round_ni(value)
  %6727 = fsub fast float %6723, %6724
  %6728 = fsub fast float %6725, %6726
  %6729 = fadd fast float %6724, -5.000000e-01
  %6730 = fadd fast float %6726, -5.000000e-01
  %6731 = fmul fast float %6727, 2.000000e+00
  %6732 = fsub fast float 3.000000e+00, %6731
  %6733 = fadd fast float %6731, 1.000000e+00
  %6734 = fsub fast float 2.000000e+00, %6727
  %6735 = bitcast float %6732 to i32
  %6736 = sub nsw i32 2129859010, %6735
  %6737 = bitcast i32 %6736 to float
  %6738 = fmul fast float %6737, %6734
  %6739 = fadd fast float %6738, -1.000000e+00
  %6740 = bitcast float %6733 to i32
  %6741 = sub nsw i32 2129859010, %6740
  %6742 = bitcast i32 %6741 to float
  %6743 = fmul fast float %6742, %6727
  %6744 = fadd fast float %6743, 1.000000e+00
  %6745 = fmul fast float %6728, 2.000000e+00
  %6746 = fsub fast float 3.000000e+00, %6745
  %6747 = fadd fast float %6745, 1.000000e+00
  %6748 = fsub fast float 2.000000e+00, %6728
  %6749 = bitcast float %6746 to i32
  %6750 = sub nsw i32 2129859010, %6749
  %6751 = bitcast i32 %6750 to float
  %6752 = fmul fast float %6751, %6748
  %6753 = fadd fast float %6752, -1.000000e+00
  %6754 = bitcast float %6747 to i32
  %6755 = sub nsw i32 2129859010, %6754
  %6756 = bitcast i32 %6755 to float
  %6757 = fmul fast float %6756, %6728
  %6758 = fadd fast float %6757, 1.000000e+00
  %6759 = fadd fast float %6739, %6729
  %6760 = fmul fast float %6759, %6710
  %6761 = fadd fast float %6753, %6730
  %6762 = fmul fast float %6761, %6711
  %6763 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6760, float %6762, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6764 = extractvalue %dx.types.ResRet.f32 %6763, 0
  %6765 = fmul fast float %6764, %6732
  %6766 = fadd fast float %6744, %6729
  %6767 = fmul fast float %6766, %6710
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6767, float %6762, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = fmul fast float %6769, %6733
  %6771 = fadd fast float %6758, %6730
  %6772 = fmul fast float %6771, %6711
  %6773 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6760, float %6772, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6774 = extractvalue %dx.types.ResRet.f32 %6773, 0
  %6775 = fmul fast float %6774, %6732
  %6776 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6767, float %6772, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6777 = extractvalue %dx.types.ResRet.f32 %6776, 0
  %6778 = fmul fast float %6777, %6733
  %6779 = fadd fast float %6778, %6775
  %6780 = fmul fast float %6779, %6747
  %6781 = fadd fast float %6770, %6765
  %6782 = fmul fast float %6781, %6746
  %6783 = fadd fast float %6782, %6780
  %6784 = fmul fast float %6783, 6.250000e-02
  br label %7023

; <label>:6785                                    ; preds = %6717
  %6786 = fmul fast float %303, 0x401921FB60000000
  %6787 = call float @dx.op.unary.f32(i32 13, float %6786)  ; Sin(value)
  %6788 = call float @dx.op.unary.f32(i32 12, float %6786)  ; Cos(value)
  %6789 = fsub fast float -0.000000e+00, %6787
  br label %6790

; <label>:6790                                    ; preds = %6839, %6785
  %6791 = phi float [ 0.000000e+00, %6785 ], [ %6834, %6839 ]
  %6792 = phi float [ 0.000000e+00, %6785 ], [ %6836, %6839 ]
  %6793 = phi i32 [ 0, %6785 ], [ %6840, %6839 ]
  %6794 = mul i32 %6793, 2
  %6795 = add i32 0, %6794
  %6796 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6795
  %6797 = load float, float* %6796, align 4
  %6798 = mul i32 %6793, 2
  %6799 = add i32 1, %6798
  %6800 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6799
  %6801 = load float, float* %6800, align 4
  %6802 = fmul fast float %6797, %6788
  %6803 = call float @dx.op.tertiary.f32(i32 46, float %6801, float %6789, float %6802)  ; FMad(a,b,c)
  %6804 = fmul fast float %6797, %6787
  %6805 = call float @dx.op.tertiary.f32(i32 46, float %6801, float %6788, float %6804)  ; FMad(a,b,c)
  %6806 = fmul fast float %6803, %6713
  %6807 = fmul fast float %6805, %6713
  %6808 = fadd fast float %6806, %5839
  %6809 = fadd fast float %6807, %5843
  %6810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6808, float %6809, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.ResRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.ResRet.f32 %6810, 2
  %6814 = extractvalue %dx.types.ResRet.f32 %6810, 3
  %6815 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6811, float* %6815, align 4
  %6816 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6812, float* %6816, align 4
  %6817 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6813, float* %6817, align 4
  %6818 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6814, float* %6818, align 4
  %6819 = fsub fast float %6811, %6715
  %6820 = fcmp fast olt float %6819, 0.000000e+00
  %6821 = select i1 %6820, float 0.000000e+00, float 1.000000e+00
  %6822 = fadd fast float %6821, %6791
  %6823 = fmul fast float %6821, %6819
  %6824 = fadd fast float %6823, %6792
  br label %6825

; <label>:6825                                    ; preds = %6825, %6790
  %6826 = phi i32 [ 1, %6790 ], [ %6837, %6825 ]
  %6827 = phi float [ %6824, %6790 ], [ %6836, %6825 ]
  %6828 = phi float [ %6822, %6790 ], [ %6834, %6825 ]
  %6829 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6826
  %6830 = load float, float* %6829, align 4, !tbaa !122, !noalias !112
  %6831 = fsub fast float %6830, %6715
  %6832 = fcmp fast olt float %6831, 0.000000e+00
  %6833 = select i1 %6832, float 0.000000e+00, float 1.000000e+00
  %6834 = fadd fast float %6833, %6828
  %6835 = fmul fast float %6833, %6831
  %6836 = fadd fast float %6835, %6827
  %6837 = add nuw nsw i32 %6826, 1
  %6838 = icmp eq i32 %6837, 4
  br i1 %6838, label %6839, label %6825, !llvm.loop !124

; <label>:6839                                    ; preds = %6825
  %6840 = add nuw nsw i32 %6793, 1
  %6841 = icmp eq i32 %6840, 8
  br i1 %6841, label %6842, label %6790, !llvm.loop !125

; <label>:6842                                    ; preds = %6839
  %6843 = fdiv fast float 1.000000e+00, %6834
  %6844 = fmul fast float %6843, %6836
  %6845 = fdiv fast float 1.000000e+00, %6715
  %6846 = fmul fast float %6844, %6845
  %6847 = call float @dx.op.unary.f32(i32 7, float %6846)  ; Saturate(value)
  %6848 = call float @dx.op.binary.f32(i32 35, float %6847, float 0.000000e+00)  ; FMax(a,b)
  %6849 = fmul fast float %6834, 3.125000e-02
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = fmul fast float %6850, 2.000000e+00
  %6852 = fadd fast float %6851, -1.000000e+00
  %6853 = fcmp fast ogt float %6852, 0.000000e+00
  %6854 = fcmp fast olt float %6852, 0.000000e+00
  %6855 = zext i1 %6853 to i32
  %6856 = zext i1 %6854 to i32
  %6857 = sub nsw i32 %6855, %6856
  %6858 = sitofp i32 %6857 to float
  %6859 = fmul fast float %6858, %6852
  %6860 = fsub fast float 1.000000e+00, %6859
  %6861 = fmul fast float %6860, %6860
  %6862 = fmul fast float %6861, %6860
  %6863 = fsub fast float %6860, %6862
  %6864 = fmul fast float %6863, %6848
  %6865 = fsub fast float 1.000000e+00, %6862
  %6866 = fsub fast float %6865, %6864
  %6867 = fmul fast float %6858, 5.000000e-01
  %6868 = fmul fast float %6867, %6866
  %6869 = fsub fast float 5.000000e-01, %6868
  br label %7023

; <label>:6870                                    ; preds = %6705
  br i1 %6716, label %6871, label %6938

; <label>:6871                                    ; preds = %6870
  %6872 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6873 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6874 = fmul fast float %6873, %5839
  %6875 = fmul fast float %6872, %5843
  %6876 = fadd fast float %6874, 5.000000e-01
  %6877 = call float @dx.op.unary.f32(i32 27, float %6876)  ; Round_ni(value)
  %6878 = fadd fast float %6875, 5.000000e-01
  %6879 = call float @dx.op.unary.f32(i32 27, float %6878)  ; Round_ni(value)
  %6880 = fsub fast float %6876, %6877
  %6881 = fsub fast float %6878, %6879
  %6882 = fadd fast float %6877, -5.000000e-01
  %6883 = fadd fast float %6879, -5.000000e-01
  %6884 = fmul fast float %6880, 2.000000e+00
  %6885 = fsub fast float 3.000000e+00, %6884
  %6886 = fadd fast float %6884, 1.000000e+00
  %6887 = fsub fast float 2.000000e+00, %6880
  %6888 = bitcast float %6885 to i32
  %6889 = sub nsw i32 2129859010, %6888
  %6890 = bitcast i32 %6889 to float
  %6891 = fmul fast float %6890, %6887
  %6892 = fadd fast float %6891, -1.000000e+00
  %6893 = bitcast float %6886 to i32
  %6894 = sub nsw i32 2129859010, %6893
  %6895 = bitcast i32 %6894 to float
  %6896 = fmul fast float %6895, %6880
  %6897 = fadd fast float %6896, 1.000000e+00
  %6898 = fmul fast float %6881, 2.000000e+00
  %6899 = fsub fast float 3.000000e+00, %6898
  %6900 = fadd fast float %6898, 1.000000e+00
  %6901 = fsub fast float 2.000000e+00, %6881
  %6902 = bitcast float %6899 to i32
  %6903 = sub nsw i32 2129859010, %6902
  %6904 = bitcast i32 %6903 to float
  %6905 = fmul fast float %6904, %6901
  %6906 = fadd fast float %6905, -1.000000e+00
  %6907 = bitcast float %6900 to i32
  %6908 = sub nsw i32 2129859010, %6907
  %6909 = bitcast i32 %6908 to float
  %6910 = fmul fast float %6909, %6881
  %6911 = fadd fast float %6910, 1.000000e+00
  %6912 = fadd fast float %6892, %6882
  %6913 = fmul fast float %6912, %6710
  %6914 = fadd fast float %6906, %6883
  %6915 = fmul fast float %6914, %6711
  %6916 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6913, float %6915, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6917 = extractvalue %dx.types.ResRet.f32 %6916, 0
  %6918 = fmul fast float %6917, %6885
  %6919 = fadd fast float %6897, %6882
  %6920 = fmul fast float %6919, %6710
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6920, float %6915, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = fmul fast float %6922, %6886
  %6924 = fadd fast float %6911, %6883
  %6925 = fmul fast float %6924, %6711
  %6926 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6913, float %6925, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6927 = extractvalue %dx.types.ResRet.f32 %6926, 0
  %6928 = fmul fast float %6927, %6885
  %6929 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6920, float %6925, float undef, float undef, i32 0, i32 0, i32 undef, float %6715)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6930 = extractvalue %dx.types.ResRet.f32 %6929, 0
  %6931 = fmul fast float %6930, %6886
  %6932 = fadd fast float %6931, %6928
  %6933 = fmul fast float %6932, %6900
  %6934 = fadd fast float %6923, %6918
  %6935 = fmul fast float %6934, %6899
  %6936 = fadd fast float %6935, %6933
  %6937 = fmul fast float %6936, 6.250000e-02
  br label %7023

; <label>:6938                                    ; preds = %6870
  %6939 = fmul fast float %303, 0x401921FB60000000
  %6940 = call float @dx.op.unary.f32(i32 13, float %6939)  ; Sin(value)
  %6941 = call float @dx.op.unary.f32(i32 12, float %6939)  ; Cos(value)
  %6942 = fsub fast float -0.000000e+00, %6940
  br label %6943

; <label>:6943                                    ; preds = %6992, %6938
  %6944 = phi float [ 0.000000e+00, %6938 ], [ %6987, %6992 ]
  %6945 = phi float [ 0.000000e+00, %6938 ], [ %6989, %6992 ]
  %6946 = phi i32 [ 0, %6938 ], [ %6993, %6992 ]
  %6947 = mul i32 %6946, 2
  %6948 = add i32 0, %6947
  %6949 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6948
  %6950 = load float, float* %6949, align 4
  %6951 = mul i32 %6946, 2
  %6952 = add i32 1, %6951
  %6953 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6952
  %6954 = load float, float* %6953, align 4
  %6955 = fmul fast float %6950, %6941
  %6956 = call float @dx.op.tertiary.f32(i32 46, float %6954, float %6942, float %6955)  ; FMad(a,b,c)
  %6957 = fmul fast float %6950, %6940
  %6958 = call float @dx.op.tertiary.f32(i32 46, float %6954, float %6941, float %6957)  ; FMad(a,b,c)
  %6959 = fmul fast float %6956, %6713
  %6960 = fmul fast float %6958, %6713
  %6961 = fadd fast float %6959, %5839
  %6962 = fadd fast float %6960, %5843
  %6963 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6961, float %6962, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  %6967 = extractvalue %dx.types.ResRet.f32 %6963, 3
  %6968 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6964, float* %6968, align 4
  %6969 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6965, float* %6969, align 4
  %6970 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6966, float* %6970, align 4
  %6971 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6967, float* %6971, align 4
  %6972 = fsub fast float %6964, %6715
  %6973 = fcmp fast olt float %6972, 0.000000e+00
  %6974 = select i1 %6973, float 0.000000e+00, float 1.000000e+00
  %6975 = fadd fast float %6974, %6944
  %6976 = fmul fast float %6974, %6972
  %6977 = fadd fast float %6976, %6945
  br label %6978

; <label>:6978                                    ; preds = %6978, %6943
  %6979 = phi i32 [ 1, %6943 ], [ %6990, %6978 ]
  %6980 = phi float [ %6977, %6943 ], [ %6989, %6978 ]
  %6981 = phi float [ %6975, %6943 ], [ %6987, %6978 ]
  %6982 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6979
  %6983 = load float, float* %6982, align 4, !tbaa !122, !noalias !112
  %6984 = fsub fast float %6983, %6715
  %6985 = fcmp fast olt float %6984, 0.000000e+00
  %6986 = select i1 %6985, float 0.000000e+00, float 1.000000e+00
  %6987 = fadd fast float %6986, %6981
  %6988 = fmul fast float %6986, %6984
  %6989 = fadd fast float %6988, %6980
  %6990 = add nuw nsw i32 %6979, 1
  %6991 = icmp eq i32 %6990, 4
  br i1 %6991, label %6992, label %6978, !llvm.loop !124

; <label>:6992                                    ; preds = %6978
  %6993 = add nuw nsw i32 %6946, 1
  %6994 = icmp eq i32 %6993, 8
  br i1 %6994, label %6995, label %6943, !llvm.loop !125

; <label>:6995                                    ; preds = %6992
  %6996 = fdiv fast float 1.000000e+00, %6987
  %6997 = fmul fast float %6996, %6989
  %6998 = fdiv fast float 1.000000e+00, %6715
  %6999 = fmul fast float %6997, %6998
  %7000 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7001 = call float @dx.op.binary.f32(i32 35, float %7000, float 0.000000e+00)  ; FMax(a,b)
  %7002 = fmul fast float %6987, 3.125000e-02
  %7003 = call float @dx.op.unary.f32(i32 7, float %7002)  ; Saturate(value)
  %7004 = fmul fast float %7003, 2.000000e+00
  %7005 = fadd fast float %7004, -1.000000e+00
  %7006 = fcmp fast ogt float %7005, 0.000000e+00
  %7007 = fcmp fast olt float %7005, 0.000000e+00
  %7008 = zext i1 %7006 to i32
  %7009 = zext i1 %7007 to i32
  %7010 = sub nsw i32 %7008, %7009
  %7011 = sitofp i32 %7010 to float
  %7012 = fmul fast float %7011, %7005
  %7013 = fsub fast float 1.000000e+00, %7012
  %7014 = fmul fast float %7013, %7013
  %7015 = fmul fast float %7014, %7013
  %7016 = fsub fast float %7013, %7015
  %7017 = fmul fast float %7016, %7001
  %7018 = fsub fast float 1.000000e+00, %7015
  %7019 = fsub fast float %7018, %7017
  %7020 = fmul fast float %7011, 5.000000e-01
  %7021 = fmul fast float %7020, %7019
  %7022 = fsub fast float 5.000000e-01, %7021
  br label %7023

; <label>:7023                                    ; preds = %6995, %6871, %6842, %6718, %6702
  %7024 = phi float [ 1.000000e+00, %6702 ], [ %6784, %6718 ], [ %6869, %6842 ], [ %6937, %6871 ], [ %7022, %6995 ]
  %7025 = fsub fast float %6536, %6369
  %7026 = fmul fast float %7025, %5936
  %7027 = fadd fast float %7026, %6369
  %7028 = fsub fast float %6703, %7027
  %7029 = fmul fast float %7028, %5935
  %7030 = fadd fast float %7029, %7027
  %7031 = fsub fast float %7024, %7030
  %7032 = fmul fast float %7031, %5963
  %7033 = fadd fast float %7032, %7030
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7036 = fcmp fast ogt float %7035, 0.000000e+00
  br i1 %7036, label %7037, label %7077, !dx.controlflow.hints !129

; <label>:7037                                    ; preds = %7023
  %7038 = fcmp fast ugt float %7035, 0.000000e+00
  br i1 %7038, label %7039, label %7074

; <label>:7039                                    ; preds = %7037
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7044 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7050 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7051 = extractvalue %dx.types.CBufRet.f32 %7034, 1
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7056 = fadd fast float %7053, %5816
  %7057 = fadd fast float %7054, %5817
  %7058 = fadd fast float %7055, %5818
  %7059 = fmul fast float %7056, %7041
  %7060 = call float @dx.op.tertiary.f32(i32 46, float %7042, float %7057, float %7059)  ; FMad(a,b,c)
  %7061 = call float @dx.op.tertiary.f32(i32 46, float %7043, float %7058, float %7060)  ; FMad(a,b,c)
  %7062 = fadd fast float %7061, %7044
  %7063 = fmul fast float %7056, %7046
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %7047, float %7057, float %7063)  ; FMad(a,b,c)
  %7065 = call float @dx.op.tertiary.f32(i32 46, float %7048, float %7058, float %7064)  ; FMad(a,b,c)
  %7066 = fadd fast float %7065, %7049
  %7067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7062, float %7066, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7068 = extractvalue %dx.types.ResRet.f32 %7067, 0
  %7069 = fmul fast float %7068, %7051
  %7070 = fadd fast float %7069, %7050
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = fmul fast float %7071, %7035
  %7073 = fsub fast float 1.000000e+00, %7072
  br label %7074

; <label>:7074                                    ; preds = %7039, %7037
  %7075 = phi float [ %7073, %7039 ], [ 1.000000e+00, %7037 ]
  %7076 = fmul fast float %7075, %7033
  br label %7077

; <label>:7077                                    ; preds = %7074, %7023, %5796
  %7078 = phi float [ 1.000000e+00, %5796 ], [ %7076, %7074 ], [ %7033, %7023 ]
  %7079 = call float @dx.op.binary.f32(i32 36, float %7078, float %7078)  ; FMin(a,b)
  %7080 = call float @dx.op.binary.f32(i32 36, float %7078, float %7079)  ; FMin(a,b)
  %7081 = fcmp fast ogt float %7080, 0.000000e+00
  br i1 %7081, label %7082, label %7247, !dx.controlflow.hints !130

; <label>:7082                                    ; preds = %7077
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7086 = extractvalue %dx.types.CBufRet.f32 %7083, 2
  %7087 = extractvalue %dx.types.CBufRet.f32 %7083, 3
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.f32 %7088, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %7092 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7097 = extractvalue %dx.types.CBufRet.f32 %7093, 3
  %7098 = fmul fast float %7084, %5816
  %7099 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %7085, float %7098)  ; FMad(a,b,c)
  %7100 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %7086, float %7099)  ; FMad(a,b,c)
  %7101 = fadd fast float %7100, %7087
  %7102 = fmul fast float %7089, %5816
  %7103 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %7090, float %7102)  ; FMad(a,b,c)
  %7104 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %7091, float %7103)  ; FMad(a,b,c)
  %7105 = fadd fast float %7104, %7092
  %7106 = fmul fast float %7094, %5816
  %7107 = call float @dx.op.tertiary.f32(i32 46, float %5817, float %7095, float %7106)  ; FMad(a,b,c)
  %7108 = call float @dx.op.tertiary.f32(i32 46, float %5818, float %7096, float %7107)  ; FMad(a,b,c)
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = extractvalue %dx.types.CBufRet.f32 %7109, 3
  %7113 = fmul fast float %7112, %7101
  %7114 = fmul fast float %7112, %7105
  %7115 = fadd fast float %7113, %7110
  %7116 = fadd fast float %7114, %7111
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7119 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7120 = fsub fast float %7115, %7118
  %7121 = fsub fast float %7116, %7119
  %7122 = fcmp fast olt float %7120, 0.000000e+00
  %7123 = fcmp fast olt float %7121, 0.000000e+00
  %7124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7125 = extractvalue %dx.types.CBufRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.CBufRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.CBufRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.CBufRet.f32 %7124, 3
  %7129 = select i1 %7122, float %7125, float %7127
  %7130 = select i1 %7123, float %7126, float %7128
  %7131 = fmul fast float %7129, %7120
  %7132 = fmul fast float %7130, %7121
  %7133 = call float @dx.op.unary.f32(i32 6, float %7131)  ; FAbs(value)
  %7134 = call float @dx.op.unary.f32(i32 6, float %7132)  ; FAbs(value)
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = call float @dx.op.binary.f32(i32 35, float %7133, float %7134)  ; FMax(a,b)
  %7138 = fsub fast float %7136, %7137
  %7139 = call float @dx.op.unary.f32(i32 7, float %7138)  ; Saturate(value)
  %7140 = fcmp fast ogt float %7139, 0.000000e+00
  br i1 %7140, label %7141, label %7182, !dx.controlflow.hints !131

; <label>:7141                                    ; preds = %7082
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7115, float %7116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 1
  %7144 = fcmp fast ogt float %7143, 0.000000e+00
  br i1 %7144, label %7145, label %7177

; <label>:7145                                    ; preds = %7141
  %7146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7115, float %7116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7147 = extractvalue %dx.types.ResRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.ResRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.ResRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.ResRet.f32 %7146, 3
  %7151 = fsub fast float 1.000000e+00, %7097
  %7152 = fsub fast float %7151, %7108
  %7153 = fmul fast float %7152, 0x400921FB60000000
  %7154 = fadd fast float %7153, 0x3FF921FB60000000
  %7155 = call float @dx.op.unary.f32(i32 13, float %7154)  ; Sin(value)
  %7156 = fadd fast float %7155, -1.000000e+00
  %7157 = fmul fast float %7156, 0x3FD45F3060000000
  %7158 = fmul fast float %7152, 0x401921FB60000000
  %7159 = fadd fast float %7158, 0x400921FB60000000
  %7160 = call float @dx.op.unary.f32(i32 13, float %7159)  ; Sin(value)
  %7161 = fadd fast float %7160, 0x3E7777A5C0000000
  %7162 = fmul fast float %7161, 0x3FC45F3060000000
  %7163 = fmul fast float %7152, 0x4022D97C80000000
  %7164 = fadd fast float %7163, 0x4012D97C80000000
  %7165 = call float @dx.op.unary.f32(i32 13, float %7164)  ; Sin(value)
  %7166 = fadd fast float %7165, 1.000000e+00
  %7167 = fmul fast float %7166, 0x3FBB2995E0000000
  %7168 = fmul fast float %7152, 0x402921FB60000000
  %7169 = fadd fast float %7168, 0x401921FB60000000
  %7170 = call float @dx.op.unary.f32(i32 13, float %7169)  ; Sin(value)
  %7171 = fadd fast float %7170, 0xBE8777A5C0000000
  %7172 = fmul fast float %7171, 0x3FB45F3060000000
  %7173 = call float @dx.op.dot4.f32(i32 56, float %7147, float %7148, float %7149, float %7150, float %7157, float %7162, float %7167, float %7172)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7174 = fmul fast float %7173, 0xBFF7154760000000
  %7175 = call float @dx.op.unary.f32(i32 21, float %7174)  ; Exp(value)
  %7176 = call float @dx.op.unary.f32(i32 7, float %7175)  ; Saturate(value)
  br label %7177

; <label>:7177                                    ; preds = %7145, %7141
  %7178 = phi float [ %7176, %7145 ], [ 1.000000e+00, %7141 ]
  %7179 = fadd fast float %7178, -1.000000e+00
  %7180 = fmul fast float %7179, %7139
  %7181 = fadd fast float %7180, 1.000000e+00
  br label %7182

; <label>:7182                                    ; preds = %7177, %7082
  %7183 = phi float [ %7181, %7177 ], [ 1.000000e+00, %7082 ]
  %7184 = fmul fast float %7183, %7078
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.CBufRet.f32 %7185, 2
  %7189 = fadd fast float %7186, %201
  %7190 = fadd fast float %7187, %202
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 1
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 0
  %7195 = extractvalue %dx.types.CBufRet.f32 %7193, 1
  %7196 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7197 = fsub fast float -0.000000e+00, %7189
  %7198 = fsub fast float -0.000000e+00, %7190
  %7199 = fsub fast float %5076, %7188
  %7200 = fadd fast float %7199, %7192
  %7201 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7197, float %7198, float %7200)  ; Dot3(ax,ay,az,bx,by,bz)
  %7202 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7194, float %7195, float %7196)  ; Dot3(ax,ay,az,bx,by,bz)
  %7203 = fdiv fast float 1.000000e+00, %7202
  %7204 = fmul fast float %7203, %7201
  %7205 = fmul fast float %7194, %7204
  %7206 = fmul fast float %7195, %7204
  %7207 = fadd fast float %7205, %7189
  %7208 = fadd fast float %7206, %7190
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.CBufRet.f32 %7209, 1
  %7212 = fsub fast float %7207, %7210
  %7213 = fsub fast float %7208, %7211
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 2
  %7216 = extractvalue %dx.types.CBufRet.f32 %7214, 3
  %7217 = fmul fast float %7212, %7215
  %7218 = fmul fast float %7213, %7216
  %7219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7220 = extractvalue %dx.types.CBufRet.i32 %7219, 3
  %7221 = icmp eq i32 %7220, 0
  br i1 %7221, label %7227, label %7222

; <label>:7222                                    ; preds = %7182
  %7223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7224 = extractvalue %dx.types.ResRet.f32 %7223, 0
  %7225 = extractvalue %dx.types.ResRet.f32 %7223, 1
  %7226 = extractvalue %dx.types.ResRet.f32 %7223, 2
  br label %7232

; <label>:7227                                    ; preds = %7182
  %7228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7217, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = extractvalue %dx.types.ResRet.f32 %7228, 1
  %7231 = extractvalue %dx.types.ResRet.f32 %7228, 2
  br label %7232

; <label>:7232                                    ; preds = %7227, %7222
  %7233 = phi float [ %7224, %7222 ], [ %7229, %7227 ]
  %7234 = phi float [ %7225, %7222 ], [ %7230, %7227 ]
  %7235 = phi float [ %7226, %7222 ], [ %7231, %7227 ]
  %7236 = extractvalue %dx.types.CBufRet.f32 %7191, 2
  %7237 = fmul fast float %7236, %7233
  %7238 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7239 = fsub fast float %7204, %7238
  %7240 = fsub fast float %7239, %7237
  %7241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7240)  ; FMax(a,b)
  %7242 = fmul fast float %7241, %7234
  %7243 = call float @dx.op.binary.f32(i32 36, float %7235, float %7242)  ; FMin(a,b)
  %7244 = fmul fast float %7243, 0xBFF7154760000000
  %7245 = call float @dx.op.unary.f32(i32 21, float %7244)  ; Exp(value)
  %7246 = fmul fast float %7184, %7245
  br label %7247

; <label>:7247                                    ; preds = %7232, %7077
  %7248 = phi float [ %7246, %7232 ], [ %7078, %7077 ]
  %7249 = call float @dx.op.binary.f32(i32 36, float %7248, float %7248)  ; FMin(a,b)
  %7250 = call float @dx.op.binary.f32(i32 36, float %7248, float %7249)  ; FMin(a,b)
  %7251 = fcmp fast ogt float %7250, 0.000000e+00
  br i1 %7251, label %7252, label %7499, !dx.controlflow.hints !132

; <label>:7252                                    ; preds = %7247
  %7253 = fmul fast float %7248, %5808
  %7254 = fmul fast float %7248, %5809
  %7255 = fmul fast float %7248, %5810
  %7256 = fsub fast float %203, %4293
  %7257 = fcmp fast ogt float %7256, 0.000000e+00
  %7258 = fmul fast float %5797, 5.120000e+02
  %7259 = fmul fast float %5798, 5.120000e+02
  %7260 = fmul fast float %5799, 5.120000e+02
  %7261 = fadd fast float %7260, %203
  %7262 = fsub fast float %4293, %7261
  %7263 = fmul fast float %7262, 2.000000e+00
  %7264 = fadd fast float %7263, %7261
  %7265 = select i1 %7257, float %7264, float %7261
  %7266 = fsub fast float %7265, %203
  %7267 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7259, float %7266, float %7258, float %7259, float %7266)  ; Dot3(ax,ay,az,bx,by,bz)
  %7268 = call float @dx.op.unary.f32(i32 25, float %7267)  ; Rsqrt(value)
  %7269 = fmul fast float %7268, %7258
  %7270 = fmul fast float %7268, %7259
  %7271 = fmul fast float %7268, %7266
  %7272 = fsub fast float %4293, %203
  %7273 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7272)  ; Dot3(ax,ay,az,bx,by,bz)
  %7274 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7269, float %7270, float %7271)  ; Dot3(ax,ay,az,bx,by,bz)
  %7275 = fdiv fast float 1.000000e+00, %7274
  %7276 = fmul fast float %7275, %7273
  %7277 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7256, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7278 = fcmp fast ogt float %7277, 0.000000e+00
  %7279 = fcmp fast olt float %7277, 0.000000e+00
  %7280 = zext i1 %7278 to i32
  %7281 = zext i1 %7279 to i32
  %7282 = sub nsw i32 %7280, %7281
  %7283 = sitofp i32 %7282 to float
  %7284 = fsub fast float %7265, %4293
  %7285 = call float @dx.op.dot3.f32(i32 55, float %7258, float %7259, float %7284, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7286 = fcmp fast ogt float %7285, 0.000000e+00
  %7287 = fcmp fast olt float %7285, 0.000000e+00
  %7288 = zext i1 %7286 to i32
  %7289 = zext i1 %7287 to i32
  %7290 = sub nsw i32 %7288, %7289
  %7291 = sitofp i32 %7290 to float
  %7292 = fcmp fast une float %7283, %7291
  br i1 %7292, label %7293, label %7303

; <label>:7293                                    ; preds = %7252
  %7294 = fmul fast float %7276, %7271
  %7295 = fmul fast float %7276, %7270
  %7296 = fmul fast float %7276, %7269
  %7297 = fmul fast float %7296, %7296
  %7298 = fmul fast float %7295, %7295
  %7299 = fadd fast float %7297, %7298
  %7300 = fmul fast float %7294, %7294
  %7301 = fadd fast float %7299, %7300
  %7302 = call float @dx.op.unary.f32(i32 24, float %7301)  ; Sqrt(value)
  br label %7313

; <label>:7303                                    ; preds = %7252
  %7304 = icmp slt i32 %7282, 0
  br i1 %7304, label %7305, label %7313

; <label>:7305                                    ; preds = %7303
  %7306 = fsub fast float %203, %7265
  %7307 = fmul fast float %7258, %7258
  %7308 = fmul fast float %7259, %7259
  %7309 = fadd fast float %7307, %7308
  %7310 = fmul fast float %7306, %7306
  %7311 = fadd fast float %7309, %7310
  %7312 = call float @dx.op.unary.f32(i32 24, float %7311)  ; Sqrt(value)
  br label %7313

; <label>:7313                                    ; preds = %7305, %7303, %7293
  %7314 = phi float [ %7302, %7293 ], [ %7312, %7305 ], [ 0.000000e+00, %7303 ]
  %7315 = fsub fast float -0.000000e+00, %7314
  %7316 = select i1 %7257, float -0.000000e+00, float %7315
  %7317 = fmul fast float %4290, 0x3FF7154760000000
  %7318 = fmul fast float %7317, %7316
  %7319 = fmul fast float %4291, 0x3FF7154760000000
  %7320 = fmul fast float %7319, %7316
  %7321 = fmul fast float %4292, 0x3FF7154760000000
  %7322 = fmul fast float %7321, %7316
  %7323 = call float @dx.op.unary.f32(i32 21, float %7318)  ; Exp(value)
  %7324 = call float @dx.op.unary.f32(i32 21, float %7320)  ; Exp(value)
  %7325 = call float @dx.op.unary.f32(i32 21, float %7322)  ; Exp(value)
  %7326 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7327 = call float @dx.op.unary.f32(i32 7, float %7324)  ; Saturate(value)
  %7328 = call float @dx.op.unary.f32(i32 7, float %7325)  ; Saturate(value)
  %7329 = fmul fast float %7253, %7326
  %7330 = fmul fast float %7254, %7327
  %7331 = fmul fast float %7255, %7328
  %7332 = fsub fast float %5797, %221
  %7333 = fsub fast float %5798, %222
  %7334 = fsub fast float %5799, %223
  %7335 = call float @dx.op.dot3.f32(i32 55, float %7332, float %7333, float %7334, float %7332, float %7333, float %7334)  ; Dot3(ax,ay,az,bx,by,bz)
  %7336 = call float @dx.op.unary.f32(i32 25, float %7335)  ; Rsqrt(value)
  %7337 = fmul fast float %7336, %7332
  %7338 = fmul fast float %7336, %7333
  %7339 = fmul fast float %7336, %7334
  %7340 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %7341 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %7337, float %7338, float %7339)  ; Dot3(ax,ay,az,bx,by,bz)
  %7342 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7343 = fmul fast float %7342, %7342
  %7344 = fmul fast float %7343, %5104
  %7345 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7346 = fmul fast float %7345, %7342
  %7347 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %7337, float %7338, float %7339)  ; Dot3(ax,ay,az,bx,by,bz)
  %7348 = fmul fast float %7347, %7347
  %7349 = call float @dx.op.unary.f32(i32 6, float %7340)  ; FAbs(value)
  %7350 = fsub fast float 1.000000e+00, %5097
  %7351 = fmul fast float %5079, %5079
  %7352 = fmul fast float %7351, %7350
  %7353 = fadd fast float %7352, %5097
  %7354 = bitcast float %7353 to i32
  %7355 = ashr i32 %7354, 1
  %7356 = add nsw i32 %7355, 532487669
  %7357 = bitcast i32 %7356 to float
  %7358 = fadd fast float %7357, %5079
  %7359 = fmul fast float %5097, %7348
  %7360 = fsub fast float 1.000000e+00, %7348
  %7361 = fadd fast float %7360, %7359
  %7362 = fmul fast float %7349, %7349
  %7363 = fmul fast float %7362, %7350
  %7364 = fadd fast float %7363, %5097
  %7365 = bitcast float %7364 to i32
  %7366 = ashr i32 %7365, 1
  %7367 = add nsw i32 %7366, 532487669
  %7368 = bitcast i32 %7367 to float
  %7369 = fadd fast float %7368, %7349
  %7370 = fmul fast float %7361, %7361
  %7371 = fmul fast float %7370, %7358
  %7372 = fmul fast float %7371, %7369
  %7373 = fdiv fast float 0x3FF0A00000000000, %7372
  %7374 = fmul fast float %7373, %5097
  %7375 = call float @dx.op.unary.f32(i32 6, float %7341)  ; FAbs(value)
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = bitcast float %7376 to i32
  %7378 = sitofp i32 %7377 to float
  %7379 = fmul fast float %7378, 5.000000e+00
  %7380 = fadd fast float %7379, 0xC1EFBF8940000000
  %7381 = fptosi float %7380 to i32
  %7382 = bitcast i32 %7381 to float
  %7383 = fsub fast float 1.000000e+00, %5068
  %7384 = fsub fast float 1.000000e+00, %5069
  %7385 = fsub fast float 1.000000e+00, %5077
  %7386 = fmul fast float %7382, %7383
  %7387 = fmul fast float %7382, %7384
  %7388 = fmul fast float %7382, %7385
  %7389 = fadd fast float %7386, %5068
  %7390 = fadd fast float %7387, %5069
  %7391 = fadd fast float %7388, %5077
  br i1 %5216, label %7392, label %7415

; <label>:7392                                    ; preds = %7313
  %7393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3867, float %7375, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7394 = extractvalue %dx.types.ResRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.ResRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.ResRet.f32 %7393, 2
  %7397 = fadd fast float %7394, -5.000000e-01
  %7398 = fadd fast float %7395, -5.000000e-01
  %7399 = fadd fast float %7396, -5.000000e-01
  %7400 = fmul fast float %5068, 4.000000e+00
  %7401 = fmul fast float %7400, %7383
  %7402 = fmul fast float %7401, %7397
  %7403 = fmul fast float %5069, 4.000000e+00
  %7404 = fmul fast float %7403, %7384
  %7405 = fmul fast float %7404, %7398
  %7406 = fmul fast float %5077, 4.000000e+00
  %7407 = fmul fast float %7406, %7385
  %7408 = fmul fast float %7407, %7399
  %7409 = fadd fast float %7402, %7389
  %7410 = fadd fast float %7405, %7390
  %7411 = fadd fast float %7408, %7391
  %7412 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7413 = call float @dx.op.unary.f32(i32 7, float %7410)  ; Saturate(value)
  %7414 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  br label %7415

; <label>:7415                                    ; preds = %7392, %7313
  %7416 = phi float [ %7412, %7392 ], [ %7389, %7313 ]
  %7417 = phi float [ %7413, %7392 ], [ %7390, %7313 ]
  %7418 = phi float [ %7414, %7392 ], [ %7391, %7313 ]
  %7419 = fmul fast float %7340, 9.843750e-01
  %7420 = fadd fast float %7419, 7.812500e-03
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7420, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7424 = fmul fast float %7422, %5068
  %7425 = fmul fast float %7422, %5069
  %7426 = fmul fast float %7422, %5077
  %7427 = fadd fast float %7424, %7423
  %7428 = fadd fast float %7425, %7423
  %7429 = fadd fast float %7426, %7423
  br i1 %5216, label %7430, label %7453

; <label>:7430                                    ; preds = %7415
  %7431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3867, float %7340, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7432 = extractvalue %dx.types.ResRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.ResRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.ResRet.f32 %7431, 2
  %7435 = fadd fast float %7432, -5.000000e-01
  %7436 = fadd fast float %7433, -5.000000e-01
  %7437 = fadd fast float %7434, -5.000000e-01
  %7438 = fmul fast float %5068, 4.000000e+00
  %7439 = fmul fast float %7438, %7383
  %7440 = fmul fast float %7439, %7435
  %7441 = fmul fast float %5069, 4.000000e+00
  %7442 = fmul fast float %7441, %7384
  %7443 = fmul fast float %7442, %7436
  %7444 = fmul fast float %5077, 4.000000e+00
  %7445 = fmul fast float %7444, %7385
  %7446 = fmul fast float %7445, %7437
  %7447 = fadd fast float %7440, %7427
  %7448 = fadd fast float %7443, %7428
  %7449 = fadd fast float %7446, %7429
  %7450 = call float @dx.op.unary.f32(i32 7, float %7447)  ; Saturate(value)
  %7451 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7452 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  br label %7453

; <label>:7453                                    ; preds = %7430, %7415
  %7454 = phi float [ %7450, %7430 ], [ %7427, %7415 ]
  %7455 = phi float [ %7451, %7430 ], [ %7428, %7415 ]
  %7456 = phi float [ %7452, %7430 ], [ %7429, %7415 ]
  %7457 = call float @dx.op.binary.f32(i32 35, float %7455, float %7456)  ; FMax(a,b)
  %7458 = call float @dx.op.binary.f32(i32 35, float %7454, float %7457)  ; FMax(a,b)
  %7459 = fsub fast float 1.000000e+00, %7458
  %7460 = fmul fast float %7416, %7374
  %7461 = fmul fast float %7417, %7374
  %7462 = fmul fast float %7418, %7374
  %7463 = fsub fast float 1.000000e+00, %7341
  %7464 = bitcast float %7463 to i32
  %7465 = sitofp i32 %7464 to float
  %7466 = fmul fast float %7465, 5.000000e+00
  %7467 = fadd fast float %7466, 0xC1EFBF8940000000
  %7468 = fptosi float %7467 to i32
  %7469 = bitcast i32 %7468 to float
  %7470 = fmul fast float %7469, %3868
  %7471 = fmul fast float %7459, %7470
  %7472 = fmul fast float %7471, %5758
  %7473 = fmul fast float %7471, %5759
  %7474 = fmul fast float %7471, %5760
  %7475 = fadd fast float %7472, %7460
  %7476 = fadd fast float %7473, %7461
  %7477 = fadd fast float %7474, %7462
  %7478 = fmul fast float %7346, %7329
  %7479 = fmul fast float %7478, %7459
  %7480 = fmul fast float %7346, %7330
  %7481 = fmul fast float %7480, %7459
  %7482 = fmul fast float %7346, %7331
  %7483 = fmul fast float %7482, %7459
  %7484 = fmul fast float %7478, %7475
  %7485 = fmul fast float %7480, %7476
  %7486 = fmul fast float %7482, %7477
  %7487 = fadd fast float %7479, %5742
  %7488 = fmul fast float %7487, %3893
  %7489 = fadd fast float %7481, %5743
  %7490 = fmul fast float %7489, %3893
  %7491 = fadd fast float %7483, %5744
  %7492 = fmul fast float %7491, %3893
  %7493 = fadd fast float %7484, %5785
  %7494 = fmul fast float %7493, %3893
  %7495 = fadd fast float %7485, %5788
  %7496 = fmul fast float %7495, %3893
  %7497 = fadd fast float %7486, %5791
  %7498 = fmul fast float %7497, %3893
  br label %7499

; <label>:7499                                    ; preds = %7453, %7247, %5738
  %7500 = phi float [ %5786, %5738 ], [ %5786, %7247 ], [ %7494, %7453 ]
  %7501 = phi float [ %5789, %5738 ], [ %5789, %7247 ], [ %7496, %7453 ]
  %7502 = phi float [ %5792, %5738 ], [ %5792, %7247 ], [ %7498, %7453 ]
  %7503 = phi float [ %5781, %5738 ], [ %5781, %7247 ], [ %7488, %7453 ]
  %7504 = phi float [ %5782, %5738 ], [ %5782, %7247 ], [ %7490, %7453 ]
  %7505 = phi float [ %5783, %5738 ], [ %5783, %7247 ], [ %7492, %7453 ]
  %7506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.i32 %7506, 0
  %7508 = icmp eq i32 %7507, 0
  br i1 %7508, label %8171, label %7509

; <label>:7509                                    ; preds = %7499
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 2
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 3
  %7513 = fmul fast float %7511, %114
  %7514 = fmul fast float %7512, %115
  %7515 = fptoui float %7513 to i32
  %7516 = fptoui float %7514 to i32
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7520 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7521 = fadd fast float %101, -4.000000e+00
  %7522 = call float @dx.op.binary.f32(i32 35, float %7521, float 0.000000e+00)  ; FMax(a,b)
  %7523 = fadd fast float %7522, %7518
  %7524 = fmul fast float %7523, %7519
  %7525 = call float @dx.op.unary.f32(i32 23, float %7524)  ; Log(value)
  %7526 = fmul fast float %7525, %7520
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7529 = fmul fast float %7526, %7528
  %7530 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7531 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.i32 %7531, 1
  %7533 = add i32 %7532, -1
  %7534 = uitofp i32 %7532 to float
  %7535 = fmul fast float %7534, %7530
  %7536 = fptoui float %7535 to i32
  %7537 = call i32 @dx.op.binary.i32(i32 40, i32 %7536, i32 %7533)  ; UMin(a,b)
  %7538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.i32 %7538, 2
  %7540 = extractvalue %dx.types.CBufRet.i32 %7538, 3
  %7541 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7516, i32 %7539, i32 %7515)  ; UMad(a,b,c)
  %7542 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7537, i32 %7540, i32 %7541)  ; UMad(a,b,c)
  %7543 = add nsw i32 %7507, -1
  %7544 = call i32 @dx.op.binary.i32(i32 37, i32 %7543, i32 0)  ; IMax(a,b)
  %7545 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7546 = fptoui float %7545 to i32
  %7547 = lshr i32 %7546, 5
  %7548 = call i32 @dx.op.binary.i32(i32 40, i32 %7547, i32 8191)  ; UMin(a,b)
  %7549 = shl i32 %7548, 2
  %7550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7549, i32 undef)  ; BufferLoad(srv,index,wot)
  %7551 = extractvalue %dx.types.ResRet.i32 %7550, 0
  %7552 = lshr i32 %7551, 16
  %7553 = and i32 %7551, 65535
  %7554 = lshr i32 %7551, 21
  %7555 = lshr i32 %7553, 5
  %7556 = call i32 @dx.op.binary.i32(i32 40, i32 %7555, i32 %7544)  ; UMin(a,b)
  %7557 = icmp ugt i32 %7554, %7556
  br i1 %7557, label %8171, label %7558

; <label>:7558                                    ; preds = %7509
  br label %7559

; <label>:7559                                    ; preds = %8161, %7558
  %7560 = phi i32 [ %8168, %8161 ], [ %7554, %7558 ]
  %7561 = phi float [ %8162, %8161 ], [ %7500, %7558 ]
  %7562 = phi float [ %8163, %8161 ], [ %7501, %7558 ]
  %7563 = phi float [ %8164, %8161 ], [ %7502, %7558 ]
  %7564 = phi float [ %8165, %8161 ], [ %7503, %7558 ]
  %7565 = phi float [ %8166, %8161 ], [ %7504, %7558 ]
  %7566 = phi float [ %8167, %8161 ], [ %7505, %7558 ]
  %7567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.i32 %7567, 0
  %7569 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7542, i32 %7568, i32 %7560)  ; UMad(a,b,c)
  %7570 = shl i32 %7569, 2
  %7571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7570, i32 undef)  ; BufferLoad(srv,index,wot)
  %7572 = extractvalue %dx.types.ResRet.i32 %7571, 0
  %7573 = shl i32 %7560, 5
  %7574 = sub nsw i32 %7552, %7573
  %7575 = call i32 @dx.op.binary.i32(i32 37, i32 %7574, i32 0)  ; IMax(a,b)
  %7576 = call i32 @dx.op.binary.i32(i32 38, i32 %7575, i32 31)  ; IMin(a,b)
  %7577 = sub nsw i32 1, %7552
  %7578 = add nsw i32 %7577, %7553
  %7579 = call i32 @dx.op.binary.i32(i32 37, i32 %7578, i32 0)  ; IMax(a,b)
  %7580 = call i32 @dx.op.binary.i32(i32 38, i32 %7579, i32 32)  ; IMin(a,b)
  %7581 = and i32 %7580, 31
  %7582 = shl i32 -1, %7581
  %7583 = xor i32 %7582, -1
  %7584 = and i32 %7576, 31
  %7585 = shl i32 %7583, %7584
  %7586 = icmp eq i32 %7580, 32
  %7587 = select i1 %7586, i32 -1, i32 %7585
  %7588 = and i32 %7587, %7572
  %7589 = icmp eq i32 %7588, 0
  br i1 %7589, label %8161, label %7590

; <label>:7590                                    ; preds = %7559
  br label %7591

; <label>:7591                                    ; preds = %7725, %7590
  %7592 = phi i32 [ %7603, %7725 ], [ %7588, %7590 ]
  %7593 = phi float [ %7726, %7725 ], [ %7561, %7590 ]
  %7594 = phi float [ %7727, %7725 ], [ %7562, %7590 ]
  %7595 = phi float [ %7728, %7725 ], [ %7563, %7590 ]
  %7596 = phi float [ %7729, %7725 ], [ %7564, %7590 ]
  %7597 = phi float [ %7730, %7725 ], [ %7565, %7590 ]
  %7598 = phi float [ %7731, %7725 ], [ %7566, %7590 ]
  %7599 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7592)  ; FirstbitLo(value)
  %7600 = add i32 %7599, %7573
  %7601 = and i32 %7599, 31
  %7602 = shl i32 1, %7601
  %7603 = xor i32 %7602, %7592
  %7604 = mul i32 %7600, 112
  %7605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7604, i32 undef)  ; BufferLoad(srv,index,wot)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.ResRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.ResRet.f32 %7605, 2
  %7609 = or i32 %7604, 12
  %7610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7609, i32 undef)  ; BufferLoad(srv,index,wot)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = add i32 %7604, 16
  %7613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7612, i32 undef)  ; BufferLoad(srv,index,wot)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = extractvalue %dx.types.ResRet.f32 %7613, 1
  %7616 = extractvalue %dx.types.ResRet.f32 %7613, 2
  %7617 = add i32 %7604, 28
  %7618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7617, i32 undef)  ; BufferLoad(srv,index,wot)
  %7619 = extractvalue %dx.types.ResRet.i32 %7618, 0
  %7620 = add i32 %7604, 44
  %7621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7620, i32 undef)  ; BufferLoad(srv,index,wot)
  %7622 = extractvalue %dx.types.ResRet.f32 %7621, 0
  %7623 = add i32 %7604, 48
  %7624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7623, i32 undef)  ; BufferLoad(srv,index,wot)
  %7625 = extractvalue %dx.types.ResRet.f32 %7624, 0
  %7626 = extractvalue %dx.types.ResRet.f32 %7624, 1
  %7627 = extractvalue %dx.types.ResRet.f32 %7624, 2
  %7628 = extractvalue %dx.types.ResRet.f32 %7624, 3
  %7629 = add i32 %7604, 64
  %7630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7629, i32 undef)  ; BufferLoad(srv,index,wot)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = extractvalue %dx.types.ResRet.f32 %7630, 1
  %7633 = extractvalue %dx.types.ResRet.f32 %7630, 2
  %7634 = extractvalue %dx.types.ResRet.f32 %7630, 3
  %7635 = add i32 %7604, 80
  %7636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7635, i32 undef)  ; BufferLoad(srv,index,wot)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7639 = add i32 %7604, 92
  %7640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7639, i32 undef)  ; BufferLoad(srv,index,wot)
  %7641 = extractvalue %dx.types.ResRet.i32 %7640, 0
  %7642 = call float @dx.op.dot3.f32(i32 55, float %7606, float %7607, float %7608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7643 = select i1 %292, float %7637, float %7606
  %7644 = select i1 %292, float %7642, float %7607
  %7645 = select i1 %292, float %7638, float %7608
  %7646 = and i32 %7641, 65535
  %7647 = uitofp i32 %7646 to float
  %7648 = lshr i32 %7641, 16
  %7649 = uitofp i32 %7648 to float
  %7650 = and i32 %7619, 65535
  %7651 = and i32 %7619, 50331648
  %7652 = icmp eq i32 %7651, 33554432
  %7653 = fsub fast float %7625, %201
  %7654 = fsub fast float %7626, %202
  %7655 = fsub fast float %7627, %203
  %7656 = call float @dx.op.dot3.f32(i32 55, float %7653, float %7654, float %7655, float %7653, float %7654, float %7655)  ; Dot3(ax,ay,az,bx,by,bz)
  %7657 = call float @dx.op.unary.f32(i32 24, float %7656)  ; Sqrt(value)
  %7658 = fdiv fast float 1.000000e+00, %7657
  %7659 = fmul fast float %7658, %7653
  %7660 = fmul fast float %7658, %7654
  %7661 = fmul fast float %7658, %7655
  %7662 = fadd fast float %7657, %7611
  %7663 = fdiv fast float 1.000000e+00, %7662
  %7664 = fmul float %7622, %7663
  %7665 = fmul float %7664, %7664
  %7666 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  br i1 %7652, label %7667, label %7688

; <label>:7667                                    ; preds = %7591
  %7668 = fmul fast float %7633, %7614
  %7669 = fmul fast float %7633, %7615
  %7670 = fmul fast float %7633, %7616
  %7671 = fadd fast float %7653, %7668
  %7672 = fadd fast float %7654, %7669
  %7673 = fadd fast float %7655, %7670
  %7674 = call float @dx.op.dot3.f32(i32 55, float %7671, float %7672, float %7673, float %7671, float %7672, float %7673)  ; Dot3(ax,ay,az,bx,by,bz)
  %7675 = call float @dx.op.unary.f32(i32 25, float %7674)  ; Rsqrt(value)
  %7676 = fmul fast float %7675, %7671
  %7677 = fmul fast float %7675, %7672
  %7678 = fmul fast float %7675, %7673
  %7679 = fsub fast float %201, %7625
  %7680 = fsub fast float %202, %7626
  %7681 = fsub fast float %203, %7627
  %7682 = fsub fast float -0.000000e+00, %7679
  %7683 = fsub fast float -0.000000e+00, %7680
  %7684 = fsub fast float -0.000000e+00, %7681
  %7685 = call float @dx.op.dot3.f32(i32 55, float %7682, float %7683, float %7684, float %7614, float %7615, float %7616)  ; Dot3(ax,ay,az,bx,by,bz)
  %7686 = fcmp fast ogt float %7685, 0.000000e+00
  %7687 = uitofp i1 %7686 to float
  br label %7688

; <label>:7688                                    ; preds = %7667, %7591
  %7689 = phi float [ %7687, %7667 ], [ 1.000000e+00, %7591 ]
  %7690 = phi float [ %7676, %7667 ], [ %7659, %7591 ]
  %7691 = phi float [ %7677, %7667 ], [ %7660, %7591 ]
  %7692 = phi float [ %7678, %7667 ], [ %7661, %7591 ]
  %7693 = call float @dx.op.dot3.f32(i32 55, float %7614, float %7615, float %7616, float %7690, float %7691, float %7692)  ; Dot3(ax,ay,az,bx,by,bz)
  %7694 = fmul fast float %7693, %7693
  %7695 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  %7696 = fsub fast float 1.000000e+00, %7695
  %7697 = fmul fast float %7696, 5.000000e-01
  %7698 = fcmp fast ogt float %7693, 0.000000e+00
  %7699 = fsub fast float 1.000000e+00, %7697
  %7700 = select i1 %7698, float %7697, float %7699
  %7701 = fmul fast float %7700, %7649
  %7702 = fadd fast float %7701, %7647
  %7703 = fmul fast float %7702, 0x3EF0001000000000
  %7704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7703, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 0
  %7706 = fmul fast float %7693, %7631
  %7707 = fadd fast float %7706, %7632
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = select i1 %7652, float 1.000000e+00, float %7708
  %7710 = select i1 %7652, float %7708, float 1.000000e+00
  %7711 = fmul fast float %7657, %7628
  %7712 = fsub fast float 1.000000e+00, %7711
  %7713 = fmul fast float %7712, %7634
  %7714 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7715 = fmul fast float %7714, %7710
  %7716 = fmul fast float %7715, 2.000000e+00
  %7717 = fsub fast float 3.000000e+00, %7716
  %7718 = fmul fast float %7705, %7689
  %7719 = fmul fast float %7715, %7715
  %7720 = fmul fast float %7719, %7718
  %7721 = fmul fast float %7720, %7717
  %7722 = call float @dx.op.binary.f32(i32 36, float %7721, float %7721)  ; FMin(a,b)
  %7723 = call float @dx.op.binary.f32(i32 36, float %7721, float %7722)  ; FMin(a,b)
  %7724 = fcmp fast ogt float %7723, 0.000000e+00
  br i1 %7724, label %7733, label %7725, !dx.controlflow.hints !133

; <label>:7725                                    ; preds = %8117, %7879, %7688
  %7726 = phi float [ %7593, %7879 ], [ %7593, %7688 ], [ %8157, %8117 ]
  %7727 = phi float [ %7594, %7879 ], [ %7594, %7688 ], [ %8158, %8117 ]
  %7728 = phi float [ %7595, %7879 ], [ %7595, %7688 ], [ %8159, %8117 ]
  %7729 = phi float [ %7596, %7879 ], [ %7596, %7688 ], [ %8151, %8117 ]
  %7730 = phi float [ %7597, %7879 ], [ %7597, %7688 ], [ %8152, %8117 ]
  %7731 = phi float [ %7598, %7879 ], [ %7598, %7688 ], [ %8153, %8117 ]
  %7732 = icmp eq i32 %7592, %7602
  br i1 %7732, label %8160, label %7591

; <label>:7733                                    ; preds = %7688
  %7734 = icmp eq i32 %7650, 255
  br i1 %7734, label %7879, label %7735, !dx.controlflow.hints !134

; <label>:7735                                    ; preds = %7733
  %7736 = mul nuw nsw i32 %7650, 176
  %7737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7736, i32 undef)  ; BufferLoad(srv,index,wot)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.ResRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.ResRet.f32 %7737, 2
  %7741 = extractvalue %dx.types.ResRet.f32 %7737, 3
  %7742 = add nuw nsw i32 %7736, 16
  %7743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7742, i32 undef)  ; BufferLoad(srv,index,wot)
  %7744 = extractvalue %dx.types.ResRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.ResRet.f32 %7743, 1
  %7746 = add nuw nsw i32 %7736, 32
  %7747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7746, i32 undef)  ; BufferLoad(srv,index,wot)
  %7748 = extractvalue %dx.types.ResRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.ResRet.f32 %7747, 1
  %7750 = extractvalue %dx.types.ResRet.f32 %7747, 2
  %7751 = add nuw nsw i32 %7736, 48
  %7752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7751, i32 undef)  ; BufferLoad(srv,index,wot)
  %7753 = extractvalue %dx.types.ResRet.f32 %7752, 0
  %7754 = extractvalue %dx.types.ResRet.f32 %7752, 1
  %7755 = extractvalue %dx.types.ResRet.f32 %7752, 2
  %7756 = extractvalue %dx.types.ResRet.f32 %7752, 3
  %7757 = add nuw nsw i32 %7736, 64
  %7758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7757, i32 undef)  ; BufferLoad(srv,index,wot)
  %7759 = extractvalue %dx.types.ResRet.f32 %7758, 0
  %7760 = extractvalue %dx.types.ResRet.f32 %7758, 1
  %7761 = extractvalue %dx.types.ResRet.f32 %7758, 2
  %7762 = extractvalue %dx.types.ResRet.f32 %7758, 3
  %7763 = add nuw nsw i32 %7736, 80
  %7764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7763, i32 undef)  ; BufferLoad(srv,index,wot)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = extractvalue %dx.types.ResRet.f32 %7764, 1
  %7767 = extractvalue %dx.types.ResRet.f32 %7764, 2
  %7768 = extractvalue %dx.types.ResRet.f32 %7764, 3
  %7769 = add nuw nsw i32 %7736, 96
  %7770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7769, i32 undef)  ; BufferLoad(srv,index,wot)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.ResRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.ResRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.ResRet.f32 %7770, 3
  %7775 = bitcast float %7745 to i32
  %7776 = fmul fast float %7750, %121
  %7777 = fmul fast float %7750, %122
  %7778 = fmul fast float %7750, %123
  %7779 = fadd fast float %7776, %201
  %7780 = fadd fast float %7777, %202
  %7781 = fadd fast float %7778, %203
  %7782 = fmul fast float %7779, %7753
  %7783 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7759, float %7782)  ; FMad(a,b,c)
  %7784 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7765, float %7783)  ; FMad(a,b,c)
  %7785 = fadd fast float %7784, %7771
  %7786 = fmul fast float %7779, %7754
  %7787 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7760, float %7786)  ; FMad(a,b,c)
  %7788 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7766, float %7787)  ; FMad(a,b,c)
  %7789 = fadd fast float %7788, %7772
  %7790 = fmul fast float %7779, %7755
  %7791 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7761, float %7790)  ; FMad(a,b,c)
  %7792 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7767, float %7791)  ; FMad(a,b,c)
  %7793 = fadd fast float %7792, %7773
  %7794 = fmul fast float %7779, %7756
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7762, float %7794)  ; FMad(a,b,c)
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7768, float %7795)  ; FMad(a,b,c)
  %7797 = fadd fast float %7796, %7774
  %7798 = fdiv fast float %7785, %7797
  %7799 = fdiv fast float %7789, %7797
  %7800 = fdiv fast float %7793, %7797
  %7801 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7800)  ; FMax(a,b)
  %7802 = fmul fast float %303, 0x401921FB60000000
  %7803 = call float @dx.op.unary.f32(i32 13, float %7802)  ; Sin(value)
  %7804 = call float @dx.op.unary.f32(i32 12, float %7802)  ; Cos(value)
  %7805 = fmul fast float %7804, %7749
  %7806 = call float @dx.op.tertiary.f32(i32 46, float %7803, float %7749, float 0.000000e+00)  ; FMad(a,b,c)
  %7807 = fmul fast float %7749, %7803
  %7808 = fsub fast float -0.000000e+00, %7807
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7749, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7810

; <label>:7810                                    ; preds = %7810, %7735
  %7811 = phi float [ 0.000000e+00, %7735 ], [ %7843, %7810 ]
  %7812 = phi float [ 0.000000e+00, %7735 ], [ %7845, %7810 ]
  %7813 = phi i32 [ 0, %7735 ], [ %7846, %7810 ]
  %7814 = mul i32 %7813, 2
  %7815 = add i32 0, %7814
  %7816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7815
  %7817 = load float, float* %7816, align 4
  %7818 = mul i32 %7813, 2
  %7819 = add i32 1, %7818
  %7820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7819
  %7821 = load float, float* %7820, align 4
  %7822 = fmul fast float %7805, %7817
  %7823 = call float @dx.op.tertiary.f32(i32 46, float %7821, float %7808, float %7822)  ; FMad(a,b,c)
  %7824 = fmul fast float %7817, %7806
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %7821, float %7809, float %7824)  ; FMad(a,b,c)
  %7826 = fadd fast float %7823, %7798
  %7827 = fadd fast float %7825, %7799
  %7828 = fmul fast float %7826, %7744
  %7829 = fmul fast float %7827, %7744
  %7830 = call float @dx.op.binary.f32(i32 35, float %7828, float %7740)  ; FMax(a,b)
  %7831 = call float @dx.op.binary.f32(i32 35, float %7829, float %7740)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 36, float %7830, float %7741)  ; FMin(a,b)
  %7833 = call float @dx.op.binary.f32(i32 36, float %7831, float %7741)  ; FMin(a,b)
  %7834 = fadd fast float %7832, %7738
  %7835 = fadd fast float %7833, %7739
  %7836 = uitofp i32 %7775 to float
  %7837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7834, float %7835, float %7836, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7838 = extractvalue %dx.types.ResRet.f32 %7837, 0
  %7839 = fsub fast float %7838, %7801
  %7840 = fsub fast float %7839, %7748
  %7841 = fcmp fast ogt float %7840, 0.000000e+00
  %7842 = select i1 %7841, float 1.000000e+00, float 0.000000e+00
  %7843 = fadd fast float %7842, %7811
  %7844 = select i1 %7841, float %7840, float 0.000000e+00
  %7845 = fadd fast float %7844, %7812
  %7846 = add nuw nsw i32 %7813, 1
  %7847 = icmp eq i32 %7846, 8
  br i1 %7847, label %7848, label %7810

; <label>:7848                                    ; preds = %7810
  %7849 = fdiv fast float 1.000000e+00, %7843
  %7850 = fmul fast float %7849, %7845
  %7851 = fdiv fast float 1.000000e+00, %7801
  %7852 = fmul fast float %7850, %7851
  %7853 = call float @dx.op.unary.f32(i32 7, float %7852)  ; Saturate(value)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7853, float 0.000000e+00)  ; FMax(a,b)
  %7855 = fmul fast float %7843, 1.250000e-01
  %7856 = call float @dx.op.unary.f32(i32 7, float %7855)  ; Saturate(value)
  %7857 = fmul fast float %7856, 2.000000e+00
  %7858 = fadd fast float %7857, -1.000000e+00
  %7859 = fcmp fast ogt float %7858, 0.000000e+00
  %7860 = fcmp fast olt float %7858, 0.000000e+00
  %7861 = zext i1 %7859 to i32
  %7862 = zext i1 %7860 to i32
  %7863 = sub nsw i32 %7861, %7862
  %7864 = sitofp i32 %7863 to float
  %7865 = fmul fast float %7864, %7858
  %7866 = fsub fast float 1.000000e+00, %7865
  %7867 = fmul fast float %7866, %7866
  %7868 = fmul fast float %7867, %7866
  %7869 = fsub fast float %7866, %7868
  %7870 = fmul fast float %7869, %7854
  %7871 = fsub fast float 1.000000e+00, %7868
  %7872 = fsub fast float %7871, %7870
  %7873 = fmul fast float %7864, 5.000000e-01
  %7874 = fmul fast float %7873, %7872
  %7875 = fsub fast float -5.000000e-01, %7874
  %7876 = fmul fast float %7875, %7709
  %7877 = fadd fast float %7876, 1.000000e+00
  %7878 = fmul fast float %7877, %7721
  br label %7879

; <label>:7879                                    ; preds = %7848, %7733
  %7880 = phi float [ %7878, %7848 ], [ %7721, %7733 ]
  %7881 = call float @dx.op.binary.f32(i32 36, float %7880, float %7880)  ; FMin(a,b)
  %7882 = call float @dx.op.binary.f32(i32 36, float %7880, float %7881)  ; FMin(a,b)
  %7883 = fcmp fast ogt float %7882, 0.000000e+00
  br i1 %7883, label %7884, label %7725, !dx.controlflow.hints !135

; <label>:7884                                    ; preds = %7879
  %7885 = fmul fast float %7880, %7643
  %7886 = fmul fast float %7880, %7644
  %7887 = fmul fast float %7880, %7645
  %7888 = fsub fast float %7627, %4293
  %7889 = fcmp fast ogt float %7888, 0.000000e+00
  %7890 = fsub fast float %203, %4293
  %7891 = fcmp fast ogt float %7890, 0.000000e+00
  %7892 = xor i1 %7891, %7889
  %7893 = fsub fast float %4293, %7627
  %7894 = fmul fast float %7893, 2.000000e+00
  %7895 = fadd fast float %7894, %7627
  %7896 = select i1 %7892, float %7627, float %7895
  %7897 = fsub fast float %7896, %203
  %7898 = call float @dx.op.dot3.f32(i32 55, float %7653, float %7654, float %7897, float %7653, float %7654, float %7897)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = call float @dx.op.unary.f32(i32 25, float %7898)  ; Rsqrt(value)
  %7900 = fmul fast float %7899, %7653
  %7901 = fmul fast float %7899, %7654
  %7902 = fmul fast float %7899, %7897
  %7903 = fsub fast float %4293, %203
  %7904 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7903)  ; Dot3(ax,ay,az,bx,by,bz)
  %7905 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7900, float %7901, float %7902)  ; Dot3(ax,ay,az,bx,by,bz)
  %7906 = fdiv fast float 1.000000e+00, %7905
  %7907 = fmul fast float %7906, %7904
  %7908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7890, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7909 = fcmp fast ogt float %7908, 0.000000e+00
  %7910 = fcmp fast olt float %7908, 0.000000e+00
  %7911 = zext i1 %7909 to i32
  %7912 = zext i1 %7910 to i32
  %7913 = sub nsw i32 %7911, %7912
  %7914 = sitofp i32 %7913 to float
  %7915 = fsub fast float %7896, %4293
  %7916 = call float @dx.op.dot3.f32(i32 55, float %7653, float %7654, float %7915, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7917 = fcmp fast ogt float %7916, 0.000000e+00
  %7918 = fcmp fast olt float %7916, 0.000000e+00
  %7919 = zext i1 %7917 to i32
  %7920 = zext i1 %7918 to i32
  %7921 = sub nsw i32 %7919, %7920
  %7922 = sitofp i32 %7921 to float
  %7923 = fcmp fast une float %7914, %7922
  br i1 %7923, label %7924, label %7934

; <label>:7924                                    ; preds = %7884
  %7925 = fmul fast float %7907, %7902
  %7926 = fmul fast float %7907, %7901
  %7927 = fmul fast float %7907, %7900
  %7928 = fmul fast float %7927, %7927
  %7929 = fmul fast float %7926, %7926
  %7930 = fadd fast float %7928, %7929
  %7931 = fmul fast float %7925, %7925
  %7932 = fadd fast float %7930, %7931
  %7933 = call float @dx.op.unary.f32(i32 24, float %7932)  ; Sqrt(value)
  br label %7946

; <label>:7934                                    ; preds = %7884
  %7935 = icmp slt i32 %7913, 0
  br i1 %7935, label %7936, label %7946

; <label>:7936                                    ; preds = %7934
  %7937 = fsub fast float %201, %7625
  %7938 = fsub fast float %202, %7626
  %7939 = fsub fast float %203, %7896
  %7940 = fmul fast float %7937, %7937
  %7941 = fmul fast float %7938, %7938
  %7942 = fadd fast float %7940, %7941
  %7943 = fmul fast float %7939, %7939
  %7944 = fadd fast float %7942, %7943
  %7945 = call float @dx.op.unary.f32(i32 24, float %7944)  ; Sqrt(value)
  br label %7946

; <label>:7946                                    ; preds = %7936, %7934, %7924
  %7947 = phi float [ %7933, %7924 ], [ %7945, %7936 ], [ 0.000000e+00, %7934 ]
  %7948 = and i1 %7891, %7889
  %7949 = fsub fast float -0.000000e+00, %7947
  %7950 = select i1 %7948, float -0.000000e+00, float %7949
  %7951 = fmul fast float %4290, 0x3FF7154760000000
  %7952 = fmul fast float %7951, %7950
  %7953 = fmul fast float %4291, 0x3FF7154760000000
  %7954 = fmul fast float %7953, %7950
  %7955 = fmul fast float %4292, 0x3FF7154760000000
  %7956 = fmul fast float %7955, %7950
  %7957 = call float @dx.op.unary.f32(i32 21, float %7952)  ; Exp(value)
  %7958 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7959 = call float @dx.op.unary.f32(i32 21, float %7956)  ; Exp(value)
  %7960 = call float @dx.op.unary.f32(i32 7, float %7957)  ; Saturate(value)
  %7961 = call float @dx.op.unary.f32(i32 7, float %7958)  ; Saturate(value)
  %7962 = call float @dx.op.unary.f32(i32 7, float %7959)  ; Saturate(value)
  %7963 = fmul fast float %7885, %7960
  %7964 = fmul fast float %7886, %7961
  %7965 = fmul fast float %7887, %7962
  %7966 = fsub fast float %7659, %221
  %7967 = fsub fast float %7660, %222
  %7968 = fsub fast float %7661, %223
  %7969 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7968, float %7966, float %7967, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7970 = call float @dx.op.unary.f32(i32 25, float %7969)  ; Rsqrt(value)
  %7971 = fmul fast float %7970, %7966
  %7972 = fmul fast float %7970, %7967
  %7973 = fmul fast float %7970, %7968
  %7974 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %7975 = call float @dx.op.dot3.f32(i32 55, float %4900, float %4901, float %4902, float %7971, float %7972, float %7973)  ; Dot3(ax,ay,az,bx,by,bz)
  %7976 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7977 = fmul fast float %7976, %7666
  %7978 = fmul fast float %7976, %7976
  %7979 = fmul fast float %7978, %5104
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = fmul fast float %7977, %7980
  %7982 = bitcast float %7656 to i32
  %7983 = ashr i32 %7982, 1
  %7984 = sub nsw i32 1597463007, %7983
  %7985 = bitcast i32 %7984 to float
  %7986 = fmul fast float %7985, %7653
  %7987 = fmul fast float %7985, %7654
  %7988 = fmul fast float %7985, %7655
  %7989 = fsub fast float %7986, %221
  %7990 = fsub fast float %7987, %222
  %7991 = fsub fast float %7988, %223
  %7992 = call float @dx.op.dot3.f32(i32 55, float %7989, float %7990, float %7991, float %7989, float %7990, float %7991)  ; Dot3(ax,ay,az,bx,by,bz)
  %7993 = call float @dx.op.unary.f32(i32 25, float %7992)  ; Rsqrt(value)
  %7994 = fmul fast float %7989, %7993
  %7995 = fmul fast float %7990, %7993
  %7996 = fmul fast float %7991, %7993
  %7997 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %7994, float %7995, float %7996)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = fmul fast float %7997, %7997
  %7999 = call float @dx.op.unary.f32(i32 6, float %7974)  ; FAbs(value)
  %8000 = fsub fast float 1.000000e+00, %5097
  %8001 = fmul fast float %5079, %5079
  %8002 = fmul fast float %8001, %8000
  %8003 = fadd fast float %8002, %5097
  %8004 = bitcast float %8003 to i32
  %8005 = ashr i32 %8004, 1
  %8006 = add nsw i32 %8005, 532487669
  %8007 = bitcast i32 %8006 to float
  %8008 = fadd fast float %8007, %5079
  %8009 = fmul fast float %5097, %7998
  %8010 = fsub fast float 1.000000e+00, %7998
  %8011 = fadd fast float %8010, %8009
  %8012 = fmul fast float %7999, %7999
  %8013 = fmul fast float %8012, %8000
  %8014 = fadd fast float %8013, %5097
  %8015 = bitcast float %8014 to i32
  %8016 = ashr i32 %8015, 1
  %8017 = add nsw i32 %8016, 532487669
  %8018 = bitcast i32 %8017 to float
  %8019 = fadd fast float %8018, %7999
  %8020 = fmul fast float %8011, %8011
  %8021 = fmul fast float %8020, %8008
  %8022 = fmul fast float %8021, %8019
  %8023 = fdiv fast float 1.000000e+00, %8022
  %8024 = bitcast float %5097 to i32
  %8025 = sitofp i32 %8024 to float
  %8026 = fmul fast float %8025, 0x3FE7F73180000000
  %8027 = fadd fast float %8026, 0x41AFE27C40000000
  %8028 = fptosi float %8027 to i32
  %8029 = bitcast i32 %8028 to float
  %8030 = fmul fast float %7622, 0x3FD80E9D60000000
  %8031 = fmul fast float %8030, %7985
  %8032 = fadd fast float %8029, %8031
  %8033 = bitcast float %8032 to i32
  %8034 = sub nsw i32 2129859010, %8033
  %8035 = bitcast i32 %8034 to float
  %8036 = fmul fast float %5097, %8023
  %8037 = fmul fast float %8036, %8029
  %8038 = fmul fast float %8037, %8035
  %8039 = call float @dx.op.unary.f32(i32 6, float %7975)  ; FAbs(value)
  %8040 = fsub fast float 1.000000e+00, %8039
  %8041 = bitcast float %8040 to i32
  %8042 = sitofp i32 %8041 to float
  %8043 = fmul fast float %8042, 5.000000e+00
  %8044 = fadd fast float %8043, 0xC1EFBF8940000000
  %8045 = fptosi float %8044 to i32
  %8046 = bitcast i32 %8045 to float
  %8047 = fsub fast float 1.000000e+00, %5068
  %8048 = fsub fast float 1.000000e+00, %5069
  %8049 = fsub fast float 1.000000e+00, %5077
  %8050 = fmul fast float %8046, %8047
  %8051 = fmul fast float %8046, %8048
  %8052 = fmul fast float %8046, %8049
  %8053 = fadd fast float %8050, %5068
  %8054 = fadd fast float %8051, %5069
  %8055 = fadd fast float %8052, %5077
  br i1 %5216, label %8056, label %8079

; <label>:8056                                    ; preds = %7946
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3867, float %8039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.ResRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.ResRet.f32 %8057, 2
  %8061 = fadd fast float %8058, -5.000000e-01
  %8062 = fadd fast float %8059, -5.000000e-01
  %8063 = fadd fast float %8060, -5.000000e-01
  %8064 = fmul fast float %5068, 4.000000e+00
  %8065 = fmul fast float %8064, %8047
  %8066 = fmul fast float %8065, %8061
  %8067 = fmul fast float %5069, 4.000000e+00
  %8068 = fmul fast float %8067, %8048
  %8069 = fmul fast float %8068, %8062
  %8070 = fmul fast float %5077, 4.000000e+00
  %8071 = fmul fast float %8070, %8049
  %8072 = fmul fast float %8071, %8063
  %8073 = fadd fast float %8066, %8053
  %8074 = fadd fast float %8069, %8054
  %8075 = fadd fast float %8072, %8055
  %8076 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  %8077 = call float @dx.op.unary.f32(i32 7, float %8074)  ; Saturate(value)
  %8078 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  br label %8079

; <label>:8079                                    ; preds = %8056, %7946
  %8080 = phi float [ %8076, %8056 ], [ %8053, %7946 ]
  %8081 = phi float [ %8077, %8056 ], [ %8054, %7946 ]
  %8082 = phi float [ %8078, %8056 ], [ %8055, %7946 ]
  %8083 = fmul fast float %7974, 9.843750e-01
  %8084 = fadd fast float %8083, 7.812500e-03
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8084, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 3
  %8088 = fmul fast float %8086, %5068
  %8089 = fmul fast float %8086, %5069
  %8090 = fmul fast float %8086, %5077
  %8091 = fadd fast float %8088, %8087
  %8092 = fadd fast float %8089, %8087
  %8093 = fadd fast float %8090, %8087
  br i1 %5216, label %8094, label %8117

; <label>:8094                                    ; preds = %8079
  %8095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3867, float %7974, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8096 = extractvalue %dx.types.ResRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.ResRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.ResRet.f32 %8095, 2
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fadd fast float %8097, -5.000000e-01
  %8101 = fadd fast float %8098, -5.000000e-01
  %8102 = fmul fast float %5068, 4.000000e+00
  %8103 = fmul fast float %8102, %8047
  %8104 = fmul fast float %8103, %8099
  %8105 = fmul fast float %5069, 4.000000e+00
  %8106 = fmul fast float %8105, %8048
  %8107 = fmul fast float %8106, %8100
  %8108 = fmul fast float %5077, 4.000000e+00
  %8109 = fmul fast float %8108, %8049
  %8110 = fmul fast float %8109, %8101
  %8111 = fadd fast float %8104, %8091
  %8112 = fadd fast float %8107, %8092
  %8113 = fadd fast float %8110, %8093
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8116 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  br label %8117

; <label>:8117                                    ; preds = %8094, %8079
  %8118 = phi float [ %8114, %8094 ], [ %8091, %8079 ]
  %8119 = phi float [ %8115, %8094 ], [ %8092, %8079 ]
  %8120 = phi float [ %8116, %8094 ], [ %8093, %8079 ]
  %8121 = call float @dx.op.binary.f32(i32 35, float %8119, float %8120)  ; FMax(a,b)
  %8122 = call float @dx.op.binary.f32(i32 35, float %8118, float %8121)  ; FMax(a,b)
  %8123 = fsub fast float 1.000000e+00, %8122
  %8124 = fmul fast float %8080, %8038
  %8125 = fmul fast float %8081, %8038
  %8126 = fmul fast float %8082, %8038
  %8127 = fsub fast float 1.000000e+00, %7975
  %8128 = bitcast float %8127 to i32
  %8129 = sitofp i32 %8128 to float
  %8130 = fmul fast float %8129, 5.000000e+00
  %8131 = fadd fast float %8130, 0xC1EFBF8940000000
  %8132 = fptosi float %8131 to i32
  %8133 = bitcast i32 %8132 to float
  %8134 = fmul fast float %8133, %3868
  %8135 = fmul fast float %8123, %8134
  %8136 = fmul fast float %8135, %5758
  %8137 = fmul fast float %8135, %5759
  %8138 = fmul fast float %8135, %5760
  %8139 = fadd fast float %8136, %8124
  %8140 = fadd fast float %8137, %8125
  %8141 = fadd fast float %8138, %8126
  %8142 = fmul fast float %7963, %3893
  %8143 = fmul fast float %8142, %7981
  %8144 = fmul fast float %8143, %8123
  %8145 = fmul fast float %7964, %3893
  %8146 = fmul fast float %8145, %7981
  %8147 = fmul fast float %8146, %8123
  %8148 = fmul fast float %7965, %3893
  %8149 = fmul fast float %8148, %7981
  %8150 = fmul fast float %8149, %8123
  %8151 = fadd fast float %8144, %7596
  %8152 = fadd fast float %8147, %7597
  %8153 = fadd fast float %8150, %7598
  %8154 = fmul fast float %8143, %8139
  %8155 = fmul fast float %8146, %8140
  %8156 = fmul fast float %8149, %8141
  %8157 = fadd fast float %8154, %7593
  %8158 = fadd fast float %8155, %7594
  %8159 = fadd fast float %8156, %7595
  br label %7725

; <label>:8160                                    ; preds = %7725
  br label %8161

; <label>:8161                                    ; preds = %8160, %7559
  %8162 = phi float [ %7561, %7559 ], [ %7726, %8160 ]
  %8163 = phi float [ %7562, %7559 ], [ %7727, %8160 ]
  %8164 = phi float [ %7563, %7559 ], [ %7728, %8160 ]
  %8165 = phi float [ %7564, %7559 ], [ %7729, %8160 ]
  %8166 = phi float [ %7565, %7559 ], [ %7730, %8160 ]
  %8167 = phi float [ %7566, %7559 ], [ %7731, %8160 ]
  %8168 = add i32 %7560, 1
  %8169 = icmp ugt i32 %8168, %7556
  br i1 %8169, label %8170, label %7559

; <label>:8170                                    ; preds = %8161
  br label %8171

; <label>:8171                                    ; preds = %8170, %7509, %7499
  %8172 = phi float [ %7500, %7499 ], [ %7500, %7509 ], [ %8162, %8170 ]
  %8173 = phi float [ %7501, %7499 ], [ %7501, %7509 ], [ %8163, %8170 ]
  %8174 = phi float [ %7502, %7499 ], [ %7502, %7509 ], [ %8164, %8170 ]
  %8175 = phi float [ %7503, %7499 ], [ %7503, %7509 ], [ %8165, %8170 ]
  %8176 = phi float [ %7504, %7499 ], [ %7504, %7509 ], [ %8166, %8170 ]
  %8177 = phi float [ %7505, %7499 ], [ %7505, %7509 ], [ %8167, %8170 ]
  %8178 = fmul fast float %3893, %3893
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = call float @dx.op.dot3.f32(i32 55, float %8179, float %8179, float %8179, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8181 = fsub fast float 1.000000e+00, %8180
  %8182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8183 = extractvalue %dx.types.CBufRet.f32 %8182, 0
  %8184 = fmul fast float %8183, %5764
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 3
  %8187 = fsub fast float 1.000000e+00, %3871
  %8188 = call float @dx.op.unary.f32(i32 7, float %8187)  ; Saturate(value)
  %8189 = fadd fast float %8177, %3870
  %8190 = fmul fast float %8189, %3871
  %8191 = fmul fast float %8188, %8186
  %8192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %8193 = extractvalue %dx.types.ResRet.i32 %8192, 3
  %8194 = bitcast i32 %8193 to float
  %8195 = fsub fast float %8181, %8194
  %8196 = fmul fast float %8195, %235
  %8197 = fadd fast float %8196, %8194
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 3
  %8200 = fmul fast float %8175, %5065
  %8201 = fmul fast float %8176, %5066
  %8202 = fmul fast float %8177, %5067
  %8203 = fcmp fast ogt float %101, %255
  %8204 = and i1 %8203, %4296
  %8205 = or i1 %4302, %8204
  %8206 = icmp eq i32 %4295, 2
  %8207 = fcmp fast ole float %101, %255
  %8208 = and i1 %8207, %8206
  %8209 = or i1 %8208, %8205
  br i1 %8204, label %8210, label %8467

; <label>:8210                                    ; preds = %8171
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8213 = extractvalue %dx.types.CBufRet.f32 %8211, 3
  %8214 = fmul fast float %8212, %114
  %8215 = fmul fast float %8213, %115
  %8216 = call float @dx.op.unary.f32(i32 7, float %8214)  ; Saturate(value)
  %8217 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8218 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8216, float %8217, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8219 = extractvalue %dx.types.ResRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.ResRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.ResRet.f32 %8218, 2
  %8222 = extractvalue %dx.types.ResRet.f32 %8218, 3
  %8223 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8216, float %8217, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8224 = extractvalue %dx.types.ResRet.f32 %8223, 0
  %8225 = extractvalue %dx.types.ResRet.f32 %8223, 1
  %8226 = extractvalue %dx.types.ResRet.f32 %8223, 2
  %8227 = extractvalue %dx.types.ResRet.f32 %8223, 3
  %8228 = call float @dx.op.binary.f32(i32 35, float %8220, float %8221)  ; FMax(a,b)
  %8229 = call float @dx.op.binary.f32(i32 35, float %8219, float %8228)  ; FMax(a,b)
  %8230 = call float @dx.op.binary.f32(i32 35, float %8229, float %8222)  ; FMax(a,b)
  %8231 = call float @dx.op.binary.f32(i32 36, float %8225, float %8226)  ; FMin(a,b)
  %8232 = call float @dx.op.binary.f32(i32 36, float %8224, float %8231)  ; FMin(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8232, float %8227)  ; FMin(a,b)
  %8234 = fmul fast float %8230, 2.550000e+02
  %8235 = fadd fast float %8234, 0x3F70101020000000
  %8236 = fptoui float %8235 to i32
  %8237 = fmul fast float %8233, 2.550000e+02
  %8238 = fadd fast float %8237, 0x3F70101020000000
  %8239 = fptoui float %8238 to i32
  %8240 = icmp ult i32 %8236, %8239
  br i1 %8240, label %8241, label %8409

; <label>:8241                                    ; preds = %8210
  %8242 = fcmp fast ogt float %100, 9.843750e-01
  %8243 = fadd fast float %101, -4.000000e+00
  %8244 = select i1 %8242, float -4.000000e+00, float %8243
  %8245 = call float @dx.op.binary.f32(i32 35, float %8244, float 0.000000e+00)  ; FMax(a,b)
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = fadd fast float %8247, %8245
  %8249 = extractvalue %dx.types.CBufRet.f32 %8246, 2
  %8250 = fmul fast float %8248, %8249
  %8251 = call float @dx.op.unary.f32(i32 23, float %8250)  ; Log(value)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8246, 3
  %8253 = fmul fast float %8252, %8251
  %8254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.f32 %8254, 2
  %8256 = fmul fast float %8253, %8255
  %8257 = call float @dx.op.unary.f32(i32 7, float %8256)  ; Saturate(value)
  %8258 = uitofp i32 %8236 to float
  %8259 = uitofp i32 %8239 to float
  %8260 = fadd fast float %8258, 5.000000e-01
  %8261 = fadd fast float %8259, 5.000000e-01
  %8262 = fmul fast float %8255, %8260
  %8263 = fmul fast float %8255, %8261
  %8264 = fadd fast float %8262, 0x3F0FFB4800000000
  %8265 = fadd fast float %8263, 0xBF0FFB4800000000
  %8266 = call float @dx.op.binary.f32(i32 35, float %8257, float %8264)  ; FMax(a,b)
  %8267 = call float @dx.op.binary.f32(i32 36, float %8266, float %8265)  ; FMin(a,b)
  %8268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8268, 1
  %8270 = extractvalue %dx.types.CBufRet.f32 %8268, 2
  %8271 = extractvalue %dx.types.CBufRet.f32 %8268, 0
  %8272 = fmul fast float %8269, %8267
  %8273 = fadd fast float %8271, %8272
  %8274 = fadd fast float %8271, %8270
  %8275 = fsub fast float %8269, %8270
  %8276 = fadd fast float %8275, %8271
  %8277 = call float @dx.op.binary.f32(i32 35, float %8273, float %8274)  ; FMax(a,b)
  %8278 = call float @dx.op.binary.f32(i32 36, float %8277, float %8276)  ; FMin(a,b)
  %8279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8216, float %8217, float %8278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8280 = extractvalue %dx.types.ResRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.ResRet.f32 %8279, 1
  %8282 = extractvalue %dx.types.ResRet.f32 %8279, 2
  %8283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.i32 %8283, 0
  %8285 = extractvalue %dx.types.CBufRet.i32 %8283, 1
  %8286 = uitofp i32 %8284 to float
  %8287 = uitofp i32 %8285 to float
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = fmul fast float %8286, %8216
  %8292 = fmul fast float %8287, %8217
  %8293 = fadd fast float %8291, -5.000000e-01
  %8294 = fadd fast float %8292, -5.000000e-01
  %8295 = call float @dx.op.unary.f32(i32 22, float %8293)  ; Frc(value)
  %8296 = call float @dx.op.unary.f32(i32 22, float %8294)  ; Frc(value)
  %8297 = fmul fast float %8295, %8295
  %8298 = fmul fast float %8297, %8295
  %8299 = fsub fast float 3.000000e+00, %8295
  %8300 = fmul fast float %8297, %8299
  %8301 = fmul fast float %8295, 3.000000e+00
  %8302 = fmul fast float %8298, 3.000000e+00
  %8303 = fmul fast float %8297, 6.000000e+00
  %8304 = fsub fast float %8302, %8303
  %8305 = fadd fast float %8304, 4.000000e+00
  %8306 = fmul fast float %8305, 0x3FC5555560000000
  %8307 = fmul fast float %8298, -3.000000e+00
  %8308 = fadd fast float %8297, %8295
  %8309 = fmul fast float %8308, 3.000000e+00
  %8310 = fadd fast float %8307, 1.000000e+00
  %8311 = fadd fast float %8310, %8309
  %8312 = fmul fast float %8298, 0x3FC5555560000000
  %8313 = fmul fast float %8296, %8296
  %8314 = fmul fast float %8313, %8296
  %8315 = fsub fast float 3.000000e+00, %8296
  %8316 = fmul fast float %8313, %8315
  %8317 = fmul fast float %8296, 3.000000e+00
  %8318 = fmul fast float %8314, 3.000000e+00
  %8319 = fmul fast float %8313, 6.000000e+00
  %8320 = fsub fast float %8318, %8319
  %8321 = fadd fast float %8320, 4.000000e+00
  %8322 = fmul fast float %8321, 0x3FC5555560000000
  %8323 = fmul fast float %8314, -3.000000e+00
  %8324 = fadd fast float %8313, %8296
  %8325 = fmul fast float %8324, 3.000000e+00
  %8326 = fadd fast float %8323, 1.000000e+00
  %8327 = fadd fast float %8326, %8325
  %8328 = fmul fast float %8314, 0x3FC5555560000000
  %8329 = fadd fast float %8295, 1.000000e+00
  %8330 = fsub fast float 1.000000e+00, %8301
  %8331 = fadd fast float %8330, %8300
  %8332 = fadd fast float %8331, %8305
  %8333 = fmul fast float %8332, 0x3FC5555560000000
  %8334 = fdiv fast float %8306, %8333
  %8335 = fsub fast float %8329, %8334
  %8336 = fsub fast float 1.000000e+00, %8295
  %8337 = fadd fast float %8311, %8298
  %8338 = fmul fast float %8337, 0x3FC5555560000000
  %8339 = fdiv fast float %8312, %8338
  %8340 = fadd fast float %8336, %8339
  %8341 = fadd fast float %8296, 1.000000e+00
  %8342 = fsub fast float 1.000000e+00, %8317
  %8343 = fadd fast float %8342, %8316
  %8344 = fadd fast float %8343, %8321
  %8345 = fmul fast float %8344, 0x3FC5555560000000
  %8346 = fdiv fast float %8322, %8345
  %8347 = fsub fast float %8341, %8346
  %8348 = fsub fast float 1.000000e+00, %8296
  %8349 = fadd fast float %8327, %8314
  %8350 = fmul fast float %8349, 0x3FC5555560000000
  %8351 = fdiv fast float %8328, %8350
  %8352 = fadd fast float %8351, %8348
  %8353 = fmul fast float %8335, %8289
  %8354 = fsub fast float %8216, %8353
  %8355 = fmul fast float %8340, %8289
  %8356 = fadd fast float %8355, %8216
  %8357 = fmul fast float %8352, %8290
  %8358 = fadd fast float %8357, %8217
  %8359 = fmul fast float %8347, %8290
  %8360 = fsub fast float %8217, %8359
  %8361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8354, float %8360, float %8278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8362 = extractvalue %dx.types.ResRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.ResRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.ResRet.f32 %8361, 2
  %8365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8356, float %8360, float %8278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8366 = extractvalue %dx.types.ResRet.f32 %8365, 0
  %8367 = extractvalue %dx.types.ResRet.f32 %8365, 1
  %8368 = extractvalue %dx.types.ResRet.f32 %8365, 2
  %8369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8354, float %8358, float %8278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8370 = extractvalue %dx.types.ResRet.f32 %8369, 0
  %8371 = extractvalue %dx.types.ResRet.f32 %8369, 1
  %8372 = extractvalue %dx.types.ResRet.f32 %8369, 2
  %8373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8356, float %8358, float %8278, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8374 = extractvalue %dx.types.ResRet.f32 %8373, 0
  %8375 = extractvalue %dx.types.ResRet.f32 %8373, 1
  %8376 = extractvalue %dx.types.ResRet.f32 %8373, 2
  %8377 = fsub fast float %8370, %8362
  %8378 = fsub fast float %8371, %8363
  %8379 = fsub fast float %8372, %8364
  %8380 = fmul fast float %8377, %8350
  %8381 = fmul fast float %8378, %8350
  %8382 = fmul fast float %8379, %8350
  %8383 = fadd fast float %8380, %8362
  %8384 = fadd fast float %8381, %8363
  %8385 = fadd fast float %8382, %8364
  %8386 = fsub fast float %8374, %8366
  %8387 = fsub fast float %8375, %8367
  %8388 = fsub fast float %8376, %8368
  %8389 = fmul fast float %8386, %8350
  %8390 = fmul fast float %8387, %8350
  %8391 = fmul fast float %8388, %8350
  %8392 = fsub fast float %8366, %8383
  %8393 = fadd fast float %8392, %8389
  %8394 = fsub fast float %8367, %8384
  %8395 = fadd fast float %8394, %8390
  %8396 = fsub fast float %8368, %8385
  %8397 = fadd fast float %8396, %8391
  %8398 = fmul fast float %8393, %8338
  %8399 = fmul fast float %8395, %8338
  %8400 = fmul fast float %8397, %8338
  %8401 = fadd fast float %8398, %8383
  %8402 = fadd fast float %8399, %8384
  %8403 = fadd fast float %8400, %8385
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8406 = fmul fast float %8401, %8405
  %8407 = fmul fast float %8402, %8405
  %8408 = fmul fast float %8403, %8405
  br label %8409

; <label>:8409                                    ; preds = %8241, %8210
  %8410 = phi float [ %8280, %8241 ], [ 1.000000e+00, %8210 ]
  %8411 = phi float [ %8281, %8241 ], [ 1.000000e+00, %8210 ]
  %8412 = phi float [ %8282, %8241 ], [ 1.000000e+00, %8210 ]
  %8413 = phi float [ %8406, %8241 ], [ 0.000000e+00, %8210 ]
  %8414 = phi float [ %8407, %8241 ], [ 0.000000e+00, %8210 ]
  %8415 = phi float [ %8408, %8241 ], [ 0.000000e+00, %8210 ]
  %8416 = fmul fast float %8413, %8197
  %8417 = fmul fast float %8414, %8197
  %8418 = fmul fast float %8415, %8197
  %8419 = call float @dx.op.dot3.f32(i32 55, float %8410, float %8411, float %8412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8420 = call float @dx.op.dot3.f32(i32 55, float %8416, float %8417, float %8418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8421 = select i1 %292, float %8419, float %8410
  %8422 = select i1 %292, float %8419, float %8411
  %8423 = select i1 %292, float 1.000000e+00, float %8412
  %8424 = select i1 %292, float %8420, float %8416
  %8425 = select i1 %292, float 0.000000e+00, float %8417
  %8426 = select i1 %292, float 0.000000e+00, float %8418
  %8427 = fmul fast float %8421, %8200
  %8428 = fmul fast float %8422, %8201
  %8429 = fmul fast float %8423, %8202
  %8430 = fadd fast float %8427, %8424
  %8431 = fadd fast float %8428, %8425
  %8432 = fadd fast float %8426, %8429
  %8433 = fmul fast float %8421, %8172
  %8434 = fmul fast float %8422, %8173
  %8435 = fmul fast float %8423, %8174
  %8436 = fmul fast float %150, %8212
  %8437 = fmul fast float %152, %8213
  %8438 = fsub fast float 1.000000e+00, %8436
  %8439 = fsub fast float 1.000000e+00, %8437
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 0
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8443 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8444 = fmul fast float %8438, %8441
  %8445 = fmul fast float %8438, %8442
  %8446 = fmul fast float %8438, %8443
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = fmul fast float %8439, %8448
  %8452 = fmul fast float %8439, %8449
  %8453 = fmul fast float %8439, %8450
  %8454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8455 = extractvalue %dx.types.CBufRet.f32 %8454, 0
  %8456 = extractvalue %dx.types.CBufRet.f32 %8454, 1
  %8457 = extractvalue %dx.types.CBufRet.f32 %8454, 2
  %8458 = fadd fast float %8451, %8455
  %8459 = fadd fast float %8458, %8444
  %8460 = fadd fast float %8452, %8456
  %8461 = fadd fast float %8460, %8445
  %8462 = fadd fast float %8453, %8457
  %8463 = fadd fast float %8462, %8446
  %8464 = fmul fast float %8459, %255
  %8465 = fmul fast float %8461, %255
  %8466 = fmul fast float %8463, %255
  br label %8467

; <label>:8467                                    ; preds = %8409, %8171
  %8468 = phi float [ %8464, %8409 ], [ %201, %8171 ]
  %8469 = phi float [ %8465, %8409 ], [ %202, %8171 ]
  %8470 = phi float [ %8466, %8409 ], [ %203, %8171 ]
  %8471 = phi float [ %255, %8409 ], [ %101, %8171 ]
  %8472 = phi float [ %8430, %8409 ], [ %8200, %8171 ]
  %8473 = phi float [ %8431, %8409 ], [ %8201, %8171 ]
  %8474 = phi float [ %8432, %8409 ], [ %8202, %8171 ]
  %8475 = phi float [ %8433, %8409 ], [ %8172, %8171 ]
  %8476 = phi float [ %8434, %8409 ], [ %8173, %8171 ]
  %8477 = phi float [ %8435, %8409 ], [ %8174, %8171 ]
  %8478 = phi float [ %8410, %8409 ], [ 1.000000e+00, %8171 ]
  br i1 %8209, label %9633, label %8479

; <label>:8479                                    ; preds = %8467
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.CBufRet.f32 %8480, 1
  %8483 = extractvalue %dx.types.CBufRet.f32 %8480, 2
  %8484 = extractvalue %dx.types.CBufRet.f32 %8480, 3
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8489 = extractvalue %dx.types.CBufRet.f32 %8485, 3
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.CBufRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8494 = extractvalue %dx.types.CBufRet.f32 %8490, 3
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.CBufRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.CBufRet.f32 %8495, 2
  %8499 = extractvalue %dx.types.CBufRet.f32 %8495, 3
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8506 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8507 = fcmp fast olt float %8506, -5.000000e-01
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8468, float %8469, float %8470, float %8468, float %8469, float %8470)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = call float @dx.op.unary.f32(i32 25, float %8508)  ; Rsqrt(value)
  %8510 = fmul fast float %8509, %8508
  %8511 = fmul fast float %8509, %8468
  %8512 = fmul fast float %8509, %8469
  %8513 = fmul fast float %8509, %8470
  %8514 = fadd fast float %8510, %8484
  %8515 = call float @dx.op.dot3.f32(i32 55, float %8511, float %8512, float %8513, float %8481, float %8482, float %8483)  ; Dot3(ax,ay,az,bx,by,bz)
  %8516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.i32 %8516, 1
  %8518 = and i32 %8517, 1
  %8519 = icmp ne i32 %8518, 0
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8522 = fcmp fast ogt float %8521, 0.000000e+00
  %8523 = and i1 %8519, %8522
  br i1 %8523, label %8524, label %8930, !dx.controlflow.hints !136

; <label>:8524                                    ; preds = %8479
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 3
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8531 = fsub fast float %8528, %8530
  %8532 = and i32 %8517, 2
  %8533 = extractvalue %dx.types.CBufRet.i32 %8516, 0
  %8534 = call i32 @dx.op.binary.i32(i32 40, i32 %8533, i32 3)  ; UMin(a,b)
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8540 = fsub fast float %8536, %8538
  %8541 = fsub fast float %8537, %8539
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = fcmp fast ogt float %8543, 0.000000e+00
  %8545 = fsub fast float -0.000000e+00, %8540
  %8546 = fsub fast float -0.000000e+00, %8541
  %8547 = call float @dx.op.dot2.f32(i32 54, float %8511, float %8512, float %8511, float %8512)  ; Dot2(ax,ay,bx,by)
  %8548 = call float @dx.op.dot2.f32(i32 54, float %8511, float %8512, float %8545, float %8546)  ; Dot2(ax,ay,bx,by)
  %8549 = fmul fast float %8548, 2.000000e+00
  %8550 = call float @dx.op.dot2.f32(i32 54, float %8545, float %8546, float %8545, float %8546)  ; Dot2(ax,ay,bx,by)
  %8551 = fmul fast float %8543, %8543
  %8552 = fsub fast float %8550, %8551
  %8553 = fmul fast float %8549, %8549
  %8554 = fmul fast float %8547, 4.000000e+00
  %8555 = fmul fast float %8554, %8552
  %8556 = fsub fast float %8553, %8555
  %8557 = fcmp fast ogt float %8556, 0.000000e+00
  br i1 %8557, label %8558, label %8573

; <label>:8558                                    ; preds = %8524
  %8559 = fcmp fast ogt float %8549, 0.000000e+00
  %8560 = call float @dx.op.unary.f32(i32 24, float %8556)  ; Sqrt(value)
  %8561 = fsub fast float -0.000000e+00, %8560
  %8562 = select i1 %8559, float %8560, float %8561
  %8563 = fadd fast float %8562, %8549
  %8564 = fmul float %8563, -5.000000e-01
  %8565 = fdiv fast float %8564, %8547
  %8566 = call float @dx.op.binary.f32(i32 35, float %8565, float 0.000000e+00)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 36, float %8510, float %8566)  ; FMin(a,b)
  %8568 = fdiv fast float %8552, %8564
  %8569 = call float @dx.op.binary.f32(i32 35, float %8568, float 0.000000e+00)  ; FMax(a,b)
  %8570 = call float @dx.op.binary.f32(i32 36, float %8510, float %8569)  ; FMin(a,b)
  %8571 = call float @dx.op.binary.f32(i32 36, float %8567, float %8570)  ; FMin(a,b)
  %8572 = call float @dx.op.binary.f32(i32 35, float %8567, float %8570)  ; FMax(a,b)
  br label %8573

; <label>:8573                                    ; preds = %8558, %8524
  %8574 = phi float [ %8572, %8558 ], [ -1.000000e+00, %8524 ]
  %8575 = phi float [ %8571, %8558 ], [ -1.000000e+00, %8524 ]
  %8576 = phi i1 [ true, %8558 ], [ false, %8524 ]
  %8577 = and i1 %8544, %8576
  br i1 %8577, label %8578, label %8580

; <label>:8578                                    ; preds = %8573
  %8579 = fcmp fast oeq float %8575, %8574
  br i1 %8579, label %8883, label %8581

; <label>:8580                                    ; preds = %8573
  br i1 %8544, label %8883, label %8581

; <label>:8581                                    ; preds = %8580, %8578
  %8582 = phi float [ %8510, %8580 ], [ %8574, %8578 ]
  %8583 = phi float [ 0.000000e+00, %8580 ], [ %8575, %8578 ]
  %8584 = icmp ne i32 %8532, 0
  %8585 = fmul fast float %8582, %8513
  %8586 = fadd fast float %8585, %8526
  %8587 = fmul fast float %8586, %8582
  %8588 = select i1 %8584, float 0.000000e+00, float %8587
  %8589 = fcmp fast oeq float %8513, 0.000000e+00
  %8590 = fdiv fast float %8531, %8513
  %8591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8590)  ; FMax(a,b)
  %8592 = select i1 %8589, float %8582, float %8591
  %8593 = call float @dx.op.binary.f32(i32 36, float %8582, float %8592)  ; FMin(a,b)
  %8594 = fcmp fast ogt float %8513, 0.000000e+00
  %8595 = fcmp fast olt float %8531, 0.000000e+00
  br i1 %8594, label %8596, label %8653

; <label>:8596                                    ; preds = %8581
  %8597 = icmp eq i32 %8532, 0
  br i1 %8595, label %8598, label %8642

; <label>:8598                                    ; preds = %8596
  %8599 = select i1 %8597, float %8582, float 0.000000e+00
  %8600 = fsub fast float -0.000000e+00, %8599
  %8601 = call float @dx.op.unary.f32(i32 6, float %8600)  ; FAbs(value)
  %8602 = fmul fast float %8599, %8513
  %8603 = fadd fast float %8602, %8526
  %8604 = fmul fast float %8601, %8603
  %8605 = fsub fast float %8588, %8604
  %8606 = fsub fast float %8582, %8601
  %8607 = select i1 %8597, float %8606, float 0.000000e+00
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.CBufRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.CBufRet.f32 %8608, 2
  %8612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8613 = extractvalue %dx.types.CBufRet.f32 %8612, 0
  %8614 = extractvalue %dx.types.CBufRet.f32 %8612, 1
  %8615 = extractvalue %dx.types.CBufRet.f32 %8612, 2
  %8616 = extractvalue %dx.types.CBufRet.f32 %8612, 3
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 3
  %8619 = call float @dx.op.binary.f32(i32 36, float %8605, float %8618)  ; FMin(a,b)
  %8620 = fmul fast float %8616, %8607
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fsub fast float %8613, %8609
  %8623 = fsub fast float %8614, %8610
  %8624 = fsub fast float %8615, %8611
  %8625 = fmul fast float %8621, %8622
  %8626 = fmul fast float %8621, %8623
  %8627 = fmul fast float %8621, %8624
  %8628 = fadd fast float %8625, %8609
  %8629 = fadd fast float %8626, %8610
  %8630 = fadd fast float %8627, %8611
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 0
  %8633 = extractvalue %dx.types.CBufRet.f32 %8631, 1
  %8634 = fadd fast float %8633, %8632
  %8635 = call float @dx.op.unary.f32(i32 7, float %8634)  ; Saturate(value)
  %8636 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8637 = extractvalue %dx.types.CBufRet.f32 %8631, 3
  %8638 = fadd fast float %8637, %8636
  %8639 = call float @dx.op.unary.f32(i32 7, float %8638)  ; Saturate(value)
  %8640 = fmul fast float %8635, %8619
  %8641 = fmul fast float %8640, %8639
  br label %8883

; <label>:8642                                    ; preds = %8596
  br i1 %8597, label %8643, label %8664

; <label>:8643                                    ; preds = %8642
  %8644 = call float @dx.op.binary.f32(i32 36, float %8593, float %8583)  ; FMin(a,b)
  %8645 = fsub fast float %8593, %8644
  %8646 = fsub fast float %8645, %8582
  %8647 = call float @dx.op.unary.f32(i32 6, float %8646)  ; FAbs(value)
  %8648 = fadd fast float %8645, %8582
  %8649 = fmul fast float %8648, %8513
  %8650 = fadd fast float %8649, %8526
  %8651 = fmul fast float %8650, %8647
  %8652 = fsub fast float %8588, %8651
  br label %8664

; <label>:8653                                    ; preds = %8581
  br i1 %8595, label %8654, label %8664

; <label>:8654                                    ; preds = %8653
  %8655 = call float @dx.op.binary.f32(i32 35, float %8583, float %8593)  ; FMax(a,b)
  %8656 = icmp eq i32 %8532, 0
  %8657 = select i1 %8656, float %8593, float 0.000000e+00
  %8658 = fsub fast float -0.000000e+00, %8657
  %8659 = call float @dx.op.unary.f32(i32 6, float %8658)  ; FAbs(value)
  %8660 = fmul fast float %8657, %8513
  %8661 = fadd fast float %8660, %8526
  %8662 = fmul fast float %8659, %8661
  %8663 = fsub fast float %8588, %8662
  br label %8664

; <label>:8664                                    ; preds = %8654, %8653, %8643, %8642
  %8665 = phi float [ %8583, %8642 ], [ %8583, %8643 ], [ %8655, %8654 ], [ %8583, %8653 ]
  %8666 = phi float [ 0.000000e+00, %8642 ], [ %8647, %8643 ], [ %8659, %8654 ], [ 0.000000e+00, %8653 ]
  %8667 = phi float [ %8588, %8642 ], [ %8652, %8643 ], [ %8663, %8654 ], [ %8588, %8653 ]
  %8668 = phi float [ %8593, %8642 ], [ %8593, %8643 ], [ %8582, %8654 ], [ %8582, %8653 ]
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8669, align 4, !tbaa !122, !noalias !137
  %8670 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8670, align 4, !tbaa !122, !noalias !137
  %8671 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8671, align 4, !tbaa !122, !noalias !137
  %8672 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8672, align 4, !tbaa !122, !noalias !137
  %8673 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8673, align 4, !tbaa !122, !noalias !137
  %8674 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8674, align 4, !tbaa !122, !noalias !137
  %8675 = icmp sgt i32 %8534, 0
  br i1 %8675, label %8676, label %8737

; <label>:8676                                    ; preds = %8664
  br label %8677

; <label>:8677                                    ; preds = %8726, %8676
  %8678 = phi i32 [ %8727, %8726 ], [ 0, %8676 ]
  %8679 = phi i32 [ %8728, %8726 ], [ 0, %8676 ]
  %8680 = add nuw i32 %8679, 171
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8680)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 1
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  %8686 = extractvalue %dx.types.CBufRet.f32 %8684, 1
  %8687 = fsub fast float %8682, %8685
  %8688 = fsub fast float %8683, %8686
  %8689 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8690 = fsub fast float -0.000000e+00, %8687
  %8691 = fsub fast float -0.000000e+00, %8688
  %8692 = call float @dx.op.dot2.f32(i32 54, float %8511, float %8512, float %8690, float %8691)  ; Dot2(ax,ay,bx,by)
  %8693 = fmul fast float %8692, 2.000000e+00
  %8694 = call float @dx.op.dot2.f32(i32 54, float %8690, float %8691, float %8690, float %8691)  ; Dot2(ax,ay,bx,by)
  %8695 = fmul fast float %8689, %8689
  %8696 = fsub fast float %8694, %8695
  %8697 = fmul fast float %8693, %8693
  %8698 = fmul fast float %8554, %8696
  %8699 = fsub fast float %8697, %8698
  %8700 = fcmp fast ogt float %8699, 0.000000e+00
  br i1 %8700, label %8701, label %8716

; <label>:8701                                    ; preds = %8677
  %8702 = fcmp fast ogt float %8693, 0.000000e+00
  %8703 = call float @dx.op.unary.f32(i32 24, float %8699)  ; Sqrt(value)
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = select i1 %8702, float %8703, float %8704
  %8706 = fadd fast float %8705, %8693
  %8707 = fmul float %8706, -5.000000e-01
  %8708 = fdiv fast float %8707, %8547
  %8709 = call float @dx.op.binary.f32(i32 35, float %8708, float 0.000000e+00)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 36, float %8582, float %8709)  ; FMin(a,b)
  %8711 = fdiv fast float %8696, %8707
  %8712 = call float @dx.op.binary.f32(i32 35, float %8711, float 0.000000e+00)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8582, float %8712)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8710, float %8713)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8710, float %8713)  ; FMax(a,b)
  br label %8716

; <label>:8716                                    ; preds = %8701, %8677
  %8717 = phi float [ %8715, %8701 ], [ -1.000000e+00, %8677 ]
  %8718 = phi float [ %8714, %8701 ], [ -1.000000e+00, %8677 ]
  %8719 = phi i1 [ true, %8701 ], [ false, %8677 ]
  br i1 %8719, label %8720, label %8726

; <label>:8720                                    ; preds = %8716
  %8721 = call float @dx.op.binary.f32(i32 35, float %8665, float %8718)  ; FMax(a,b)
  %8722 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8679
  store float %8721, float* %8722, align 4, !tbaa !122, !noalias !137
  %8723 = call float @dx.op.binary.f32(i32 35, float %8665, float %8717)  ; FMax(a,b)
  %8724 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8679
  store float %8723, float* %8724, align 4, !tbaa !122, !noalias !137
  %8725 = add nsw i32 %8678, 1
  br label %8726

; <label>:8726                                    ; preds = %8720, %8716
  %8727 = phi i32 [ %8725, %8720 ], [ %8678, %8716 ]
  %8728 = add nuw nsw i32 %8679, 1
  %8729 = icmp eq i32 %8728, %8534
  br i1 %8729, label %8730, label %8677

; <label>:8730                                    ; preds = %8726
  %8731 = load float, float* %8671, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8732 = load float, float* %8670, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8733 = load float, float* %8669, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8734 = load float, float* %8674, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8735 = load float, float* %8673, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8736 = load float, float* %8672, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8737

; <label>:8737                                    ; preds = %8730, %8664
  %8738 = phi float [ -1.000000e+00, %8664 ], [ %8736, %8730 ]
  %8739 = phi float [ -1.000000e+00, %8664 ], [ %8735, %8730 ]
  %8740 = phi float [ -1.000000e+00, %8664 ], [ %8734, %8730 ]
  %8741 = phi float [ -1.000000e+00, %8664 ], [ %8733, %8730 ]
  %8742 = phi float [ -1.000000e+00, %8664 ], [ %8732, %8730 ]
  %8743 = phi float [ -1.000000e+00, %8664 ], [ %8731, %8730 ]
  %8744 = phi i32 [ 0, %8664 ], [ %8727, %8730 ]
  %8745 = call float @dx.op.binary.f32(i32 36, float %8742, float %8743)  ; FMin(a,b)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8741, float %8745)  ; FMin(a,b)
  %8747 = call float @dx.op.binary.f32(i32 35, float %8741, float %8742)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8747, float %8743)  ; FMin(a,b)
  %8749 = call float @dx.op.binary.f32(i32 36, float %8741, float %8742)  ; FMin(a,b)
  %8750 = call float @dx.op.binary.f32(i32 35, float %8749, float %8748)  ; FMax(a,b)
  %8751 = call float @dx.op.binary.f32(i32 35, float %8742, float %8743)  ; FMax(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8741, float %8751)  ; FMax(a,b)
  store float %8746, float* %8669, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8750, float* %8670, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8752, float* %8671, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8753 = call float @dx.op.binary.f32(i32 36, float %8739, float %8740)  ; FMin(a,b)
  %8754 = call float @dx.op.binary.f32(i32 36, float %8738, float %8753)  ; FMin(a,b)
  %8755 = call float @dx.op.binary.f32(i32 35, float %8738, float %8739)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8755, float %8740)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8738, float %8739)  ; FMin(a,b)
  %8758 = call float @dx.op.binary.f32(i32 35, float %8757, float %8756)  ; FMax(a,b)
  %8759 = call float @dx.op.binary.f32(i32 35, float %8739, float %8740)  ; FMax(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8738, float %8759)  ; FMax(a,b)
  store float %8754, float* %8672, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8758, float* %8673, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8760, float* %8674, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8761 = sub nsw i32 3, %8744
  %8762 = icmp sgt i32 %8761, 2
  br i1 %8762, label %8763, label %8801

; <label>:8763                                    ; preds = %8737
  %8764 = icmp eq i32 %8532, 0
  %8765 = fsub fast float %8582, %8666
  %8766 = select i1 %8764, float %8765, float %8666
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 0
  %8769 = extractvalue %dx.types.CBufRet.f32 %8767, 1
  %8770 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 0
  %8773 = extractvalue %dx.types.CBufRet.f32 %8771, 1
  %8774 = extractvalue %dx.types.CBufRet.f32 %8771, 2
  %8775 = extractvalue %dx.types.CBufRet.f32 %8771, 3
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 3
  %8778 = call float @dx.op.binary.f32(i32 36, float %8667, float %8777)  ; FMin(a,b)
  %8779 = fmul fast float %8775, %8766
  %8780 = call float @dx.op.unary.f32(i32 7, float %8779)  ; Saturate(value)
  %8781 = fsub fast float %8772, %8768
  %8782 = fsub fast float %8773, %8769
  %8783 = fsub fast float %8774, %8770
  %8784 = fmul fast float %8780, %8781
  %8785 = fmul fast float %8780, %8782
  %8786 = fmul fast float %8780, %8783
  %8787 = fadd fast float %8784, %8768
  %8788 = fadd fast float %8785, %8769
  %8789 = fadd fast float %8786, %8770
  %8790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8791 = extractvalue %dx.types.CBufRet.f32 %8790, 0
  %8792 = extractvalue %dx.types.CBufRet.f32 %8790, 1
  %8793 = fadd fast float %8792, %8791
  %8794 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8790, 2
  %8796 = extractvalue %dx.types.CBufRet.f32 %8790, 3
  %8797 = fadd fast float %8796, %8795
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fmul fast float %8794, %8778
  %8800 = fmul fast float %8799, %8798
  br label %8883

; <label>:8801                                    ; preds = %8737
  %8802 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8761
  %8803 = load float, float* %8802, align 4, !tbaa !122, !noalias !137
  %8804 = fcmp fast olt float %8803, %8668
  %8805 = icmp sgt i32 %8744, 0
  %8806 = and i1 %8805, %8804
  br i1 %8806, label %8807, label %8844

; <label>:8807                                    ; preds = %8801
  br label %8808

; <label>:8808                                    ; preds = %8837, %8807
  %8809 = phi float [ %8838, %8837 ], [ %8666, %8807 ]
  %8810 = phi float [ %8839, %8837 ], [ %8667, %8807 ]
  %8811 = phi float [ %8819, %8837 ], [ %8803, %8807 ]
  %8812 = phi i32 [ %8816, %8837 ], [ %8761, %8807 ]
  %8813 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8812
  %8814 = load float, float* %8813, align 4, !tbaa !122, !noalias !137
  %8815 = icmp slt i32 %8812, 2
  %8816 = add nsw i32 %8812, 1
  %8817 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8816
  %8818 = load float, float* %8817, align 4, !tbaa !122, !noalias !137
  %8819 = select i1 %8815, float %8818, float %8582
  %8820 = call float @dx.op.binary.f32(i32 36, float %8819, float %8814)  ; FMin(a,b)
  %8821 = call float @dx.op.binary.f32(i32 36, float %8668, float %8820)  ; FMin(a,b)
  %8822 = icmp eq i32 %8532, 0
  %8823 = fadd fast float %8821, %8811
  %8824 = fmul fast float %8823, %8513
  %8825 = fadd fast float %8824, %8526
  br i1 %8822, label %8831, label %8826

; <label>:8826                                    ; preds = %8808
  %8827 = fsub fast float %8821, %8811
  %8828 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8827)  ; FMax(a,b)
  %8829 = fmul fast float %8828, %8825
  %8830 = fadd fast float %8829, %8810
  br label %8837

; <label>:8831                                    ; preds = %8808
  %8832 = fsub fast float %8811, %8821
  %8833 = call float @dx.op.unary.f32(i32 6, float %8832)  ; FAbs(value)
  %8834 = fadd fast float %8833, %8809
  %8835 = fmul fast float %8833, %8825
  %8836 = fsub fast float %8810, %8835
  br label %8837

; <label>:8837                                    ; preds = %8831, %8826
  %8838 = phi float [ %8828, %8826 ], [ %8834, %8831 ]
  %8839 = phi float [ %8830, %8826 ], [ %8836, %8831 ]
  %8840 = fcmp fast olt float %8819, %8668
  %8841 = icmp slt i32 %8816, 3
  %8842 = and i1 %8841, %8840
  br i1 %8842, label %8808, label %8843

; <label>:8843                                    ; preds = %8837
  br label %8844

; <label>:8844                                    ; preds = %8843, %8801
  %8845 = phi float [ %8666, %8801 ], [ %8838, %8843 ]
  %8846 = phi float [ %8667, %8801 ], [ %8839, %8843 ]
  %8847 = fsub fast float %8582, %8845
  %8848 = select i1 %8584, float %8845, float %8847
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = extractvalue %dx.types.CBufRet.f32 %8849, 2
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 0
  %8855 = extractvalue %dx.types.CBufRet.f32 %8853, 1
  %8856 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8857 = extractvalue %dx.types.CBufRet.f32 %8853, 3
  %8858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8859 = extractvalue %dx.types.CBufRet.f32 %8858, 3
  %8860 = call float @dx.op.binary.f32(i32 36, float %8846, float %8859)  ; FMin(a,b)
  %8861 = fmul fast float %8857, %8848
  %8862 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8863 = fsub fast float %8854, %8850
  %8864 = fsub fast float %8855, %8851
  %8865 = fsub fast float %8856, %8852
  %8866 = fmul fast float %8862, %8863
  %8867 = fmul fast float %8862, %8864
  %8868 = fmul fast float %8862, %8865
  %8869 = fadd fast float %8866, %8850
  %8870 = fadd fast float %8867, %8851
  %8871 = fadd fast float %8868, %8852
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = fadd fast float %8874, %8873
  %8876 = call float @dx.op.unary.f32(i32 7, float %8875)  ; Saturate(value)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8878 = extractvalue %dx.types.CBufRet.f32 %8872, 3
  %8879 = fadd fast float %8878, %8877
  %8880 = call float @dx.op.unary.f32(i32 7, float %8879)  ; Saturate(value)
  %8881 = fmul fast float %8876, %8860
  %8882 = fmul fast float %8881, %8880
  br label %8883

; <label>:8883                                    ; preds = %8844, %8763, %8598, %8580, %8578
  %8884 = phi float [ %8607, %8598 ], [ %8766, %8763 ], [ %8848, %8844 ], [ 0.000000e+00, %8578 ], [ 0.000000e+00, %8580 ]
  %8885 = phi float [ %8641, %8598 ], [ %8800, %8763 ], [ %8882, %8844 ], [ 0.000000e+00, %8578 ], [ 0.000000e+00, %8580 ]
  %8886 = phi float [ %8628, %8598 ], [ %8787, %8763 ], [ %8869, %8844 ], [ 0.000000e+00, %8578 ], [ 0.000000e+00, %8580 ]
  %8887 = phi float [ %8629, %8598 ], [ %8788, %8763 ], [ %8870, %8844 ], [ 0.000000e+00, %8578 ], [ 0.000000e+00, %8580 ]
  %8888 = phi float [ %8630, %8598 ], [ %8789, %8763 ], [ %8871, %8844 ], [ 0.000000e+00, %8578 ], [ 0.000000e+00, %8580 ]
  %8889 = fmul fast float %8521, %8885
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8892 = fsub fast float %8528, %8891
  %8893 = fcmp fast olt float %8889, -2.000000e+01
  %8894 = call float @dx.op.unary.f32(i32 21, float %8889)  ; Exp(value)
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8900 = fmul fast float %8897, %8892
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8513, 5.000000e-01
  %8904 = fadd fast float %8903, 5.000000e-01
  %8905 = call float @dx.op.unary.f32(i32 7, float %8904)  ; Saturate(value)
  %8906 = fsub fast float 1.000000e+00, %8905
  %8907 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8902)  ; FMax(a,b)
  %8908 = fdiv fast float %8906, %8907
  %8909 = fsub fast float %8892, %8470
  %8910 = call float @dx.op.unary.f32(i32 6, float %8909)  ; FAbs(value)
  %8911 = fmul fast float %8910, %8896
  %8912 = call float @dx.op.unary.f32(i32 7, float %8908)  ; Saturate(value)
  %8913 = fsub fast float 1.000000e+00, %8911
  %8914 = fmul fast float %8913, %8912
  %8915 = fadd fast float %8914, %8911
  %8916 = fmul fast float %8899, %8892
  %8917 = call float @dx.op.unary.f32(i32 7, float %8916)  ; Saturate(value)
  %8918 = fsub fast float 1.000000e+00, %8915
  %8919 = fmul fast float %8918, %8917
  %8920 = fadd fast float %8919, %8915
  %8921 = call float @dx.op.unary.f32(i32 7, float %8920)  ; Saturate(value)
  %8922 = fadd fast float %8894, -1.000000e+00
  %8923 = select i1 %8893, float -1.000000e+00, float %8922
  %8924 = fmul fast float %8921, %8923
  %8925 = fadd fast float %8924, 1.000000e+00
  %8926 = fsub fast float -0.000000e+00, %8924
  %8927 = fmul fast float %8886, %8926
  %8928 = fmul fast float %8887, %8926
  %8929 = fmul fast float %8888, %8926
  br label %8930

; <label>:8930                                    ; preds = %8883, %8479
  %8931 = phi float [ %8884, %8883 ], [ 0.000000e+00, %8479 ]
  %8932 = phi float [ %8925, %8883 ], [ 1.000000e+00, %8479 ]
  %8933 = phi float [ %8927, %8883 ], [ 0.000000e+00, %8479 ]
  %8934 = phi float [ %8928, %8883 ], [ 0.000000e+00, %8479 ]
  %8935 = phi float [ %8929, %8883 ], [ 0.000000e+00, %8479 ]
  %8936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8937 = extractvalue %dx.types.CBufRet.f32 %8936, 1
  %8938 = fsub fast float 1.000000e+00, %8932
  %8939 = fmul fast float %8938, %8514
  %8940 = fmul fast float %8939, %8937
  %8941 = fsub fast float %8514, %8940
  br i1 %8507, label %8942, label %8971, !dx.controlflow.hints !173

; <label>:8942                                    ; preds = %8930
  %8943 = fmul fast float %8515, %8504
  %8944 = fadd fast float %8943, %8505
  %8945 = call float @dx.op.unary.f32(i32 7, float %8944)  ; Saturate(value)
  %8946 = fmul fast float %8486, %8941
  %8947 = fsub fast float -0.000000e+00, %8946
  %8948 = fmul fast float %8487, %8941
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = call float @dx.op.unary.f32(i32 21, float %8947)  ; Exp(value)
  %8951 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8952 = call float @dx.op.binary.f32(i32 35, float %8494, float %8950)  ; FMax(a,b)
  %8953 = call float @dx.op.binary.f32(i32 35, float %8494, float %8951)  ; FMax(a,b)
  %8954 = fsub fast float %8953, %8952
  %8955 = fmul fast float %8954, %8945
  %8956 = fadd fast float %8955, %8952
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fsub fast float %8491, %8496
  %8959 = fsub fast float %8492, %8497
  %8960 = fsub fast float %8493, %8498
  %8961 = fmul fast float %8945, %8958
  %8962 = fmul fast float %8945, %8959
  %8963 = fmul fast float %8945, %8960
  %8964 = fadd fast float %8961, %8496
  %8965 = fadd fast float %8962, %8497
  %8966 = fadd fast float %8963, %8498
  %8967 = fsub fast float 1.000000e+00, %8957
  %8968 = fmul fast float %8967, %8964
  %8969 = fmul fast float %8967, %8965
  %8970 = fmul fast float %8967, %8966
  br label %9030

; <label>:8971                                    ; preds = %8930
  %8972 = fmul fast float %8941, %8503
  %8973 = call float @dx.op.unary.f32(i32 7, float %8972)  ; Saturate(value)
  %8974 = fsub fast float 2.000000e+00, %8973
  %8975 = fmul fast float %8973, 9.921875e-01
  %8976 = fmul fast float %8975, %8974
  %8977 = fadd fast float %8976, 3.906250e-03
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8977, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = fsub fast float %8973, %8979
  %8981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8980)  ; FMax(a,b)
  %8982 = fmul fast float %8489, %8470
  %8983 = call float @dx.op.unary.f32(i32 6, float %8982)  ; FAbs(value)
  %8984 = fcmp fast ogt float %8983, 0x3EB0C6F7A0000000
  br i1 %8984, label %8985, label %8991, !dx.controlflow.hints !174

; <label>:8985                                    ; preds = %8971
  %8986 = fmul fast float %8982, 0xBFF7154760000000
  %8987 = call float @dx.op.unary.f32(i32 21, float %8986)  ; Exp(value)
  %8988 = fsub fast float 1.000000e+00, %8987
  %8989 = fdiv fast float %8988, %8982
  %8990 = fmul fast float %8989, %8499
  br label %8991

; <label>:8991                                    ; preds = %8985, %8971
  %8992 = phi float [ %8990, %8985 ], [ %8499, %8971 ]
  %8993 = fadd fast float %8992, %8501
  %8994 = fmul fast float %8993, %8981
  %8995 = fmul fast float %8486, %8994
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = fmul fast float %8487, %8994
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = fmul fast float %8488, %8994
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %9002 = call float @dx.op.unary.f32(i32 21, float %8998)  ; Exp(value)
  %9003 = call float @dx.op.unary.f32(i32 21, float %9000)  ; Exp(value)
  %9004 = fmul fast float %8515, %8515
  %9005 = fadd fast float %9004, 1.000000e+00
  %9006 = fmul fast float %9005, 0x3FAE8EC8A0000000
  %9007 = fmul fast float %9006, %8496
  %9008 = fmul fast float %9006, %8497
  %9009 = fmul fast float %9006, %8498
  %9010 = fmul fast float %8515, %8494
  %9011 = fsub fast float 1.000000e+00, %9010
  %9012 = fmul fast float %8494, %8494
  %9013 = fsub fast float 1.000000e+00, %9012
  %9014 = fmul fast float %9013, 0x3FB45F3060000000
  %9015 = fmul fast float %9011, %9011
  %9016 = fdiv fast float 1.000000e+00, %9015
  %9017 = fmul fast float %9014, %9016
  %9018 = fmul fast float %9017, %8491
  %9019 = fmul fast float %9017, %8492
  %9020 = fmul fast float %9017, %8493
  %9021 = fadd fast float %9018, %9007
  %9022 = fadd fast float %9019, %9008
  %9023 = fadd fast float %9020, %9009
  %9024 = fsub fast float 1.000000e+00, %9001
  %9025 = fsub fast float 1.000000e+00, %9002
  %9026 = fsub fast float 1.000000e+00, %9003
  %9027 = fmul fast float %9021, %9024
  %9028 = fmul fast float %9022, %9025
  %9029 = fmul fast float %9023, %9026
  br label %9030

; <label>:9030                                    ; preds = %8991, %8942
  %9031 = phi float [ %8968, %8942 ], [ %9027, %8991 ]
  %9032 = phi float [ %8969, %8942 ], [ %9028, %8991 ]
  %9033 = phi float [ %8970, %8942 ], [ %9029, %8991 ]
  %9034 = phi float [ %8957, %8942 ], [ %9001, %8991 ]
  %9035 = phi float [ %8957, %8942 ], [ %9002, %8991 ]
  %9036 = phi float [ %8957, %8942 ], [ %9003, %8991 ]
  br i1 %8523, label %9037, label %9235, !dx.controlflow.hints !175

; <label>:9037                                    ; preds = %9030
  %9038 = extractvalue %dx.types.CBufRet.f32 %8936, 0
  %9039 = fmul fast float %9038, %8938
  %9040 = fsub fast float %8933, %9031
  %9041 = fsub fast float %8934, %9032
  %9042 = fsub fast float %8935, %9033
  %9043 = fmul fast float %9039, %9040
  %9044 = fmul fast float %9039, %9041
  %9045 = fmul fast float %9039, %9042
  %9046 = fadd fast float %9043, %9031
  %9047 = fadd fast float %9044, %9032
  %9048 = fadd fast float %9045, %9033
  %9049 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9034)  ; FMax(a,b)
  %9050 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9035)  ; FMax(a,b)
  %9051 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9036)  ; FMax(a,b)
  %9052 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8932)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 35, float %8931, float %8941)  ; FMax(a,b)
  %9054 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9053)  ; FMax(a,b)
  %9055 = fdiv fast float %8931, %9054
  %9056 = call float @dx.op.unary.f32(i32 7, float %9055)  ; Saturate(value)
  %9057 = fdiv fast float %8941, %9054
  %9058 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9059 = fcmp fast une float %9052, 1.000000e+00
  br i1 %9059, label %9060, label %9073, !dx.controlflow.hints !176

; <label>:9060                                    ; preds = %9037
  %9061 = call float @dx.op.unary.f32(i32 23, float %9052)  ; Log(value)
  %9062 = fmul fast float %9061, 0x3FE62E4300000000
  %9063 = fmul fast float %8933, %9062
  %9064 = fsub fast float -0.000000e+00, %9063
  %9065 = fmul fast float %8934, %9062
  %9066 = fsub fast float -0.000000e+00, %9065
  %9067 = fmul fast float %8935, %9062
  %9068 = fsub fast float -0.000000e+00, %9067
  %9069 = fsub fast float 1.000000e+00, %9052
  %9070 = fdiv fast float %9064, %9069
  %9071 = fdiv fast float %9066, %9069
  %9072 = fdiv fast float %9068, %9069
  br label %9073

; <label>:9073                                    ; preds = %9060, %9037
  %9074 = phi float [ %9070, %9060 ], [ %8933, %9037 ]
  %9075 = phi float [ %9071, %9060 ], [ %8934, %9037 ]
  %9076 = phi float [ %9072, %9060 ], [ %8935, %9037 ]
  %9077 = phi float [ %9062, %9060 ], [ 0.000000e+00, %9037 ]
  %9078 = fcmp fast une float %9049, 1.000000e+00
  br i1 %9078, label %9079, label %9086, !dx.controlflow.hints !177

; <label>:9079                                    ; preds = %9073
  %9080 = call float @dx.op.unary.f32(i32 23, float %9049)  ; Log(value)
  %9081 = fmul fast float %9080, 0x3FE62E4300000000
  %9082 = fmul fast float %9046, %9081
  %9083 = fsub fast float -0.000000e+00, %9082
  %9084 = fsub fast float 1.000000e+00, %9049
  %9085 = fdiv fast float %9083, %9084
  br label %9086

; <label>:9086                                    ; preds = %9079, %9073
  %9087 = phi float [ %9085, %9079 ], [ %9046, %9073 ]
  %9088 = phi float [ %9081, %9079 ], [ 0.000000e+00, %9073 ]
  %9089 = fcmp fast une float %9050, 1.000000e+00
  br i1 %9089, label %9090, label %9097, !dx.controlflow.hints !177

; <label>:9090                                    ; preds = %9086
  %9091 = call float @dx.op.unary.f32(i32 23, float %9050)  ; Log(value)
  %9092 = fmul fast float %9091, 0x3FE62E4300000000
  %9093 = fmul fast float %9047, %9092
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = fsub fast float 1.000000e+00, %9050
  %9096 = fdiv fast float %9094, %9095
  br label %9097

; <label>:9097                                    ; preds = %9090, %9086
  %9098 = phi float [ %9096, %9090 ], [ %9047, %9086 ]
  %9099 = phi float [ %9092, %9090 ], [ 0.000000e+00, %9086 ]
  %9100 = fcmp fast une float %9051, 1.000000e+00
  br i1 %9100, label %9101, label %9108, !dx.controlflow.hints !177

; <label>:9101                                    ; preds = %9097
  %9102 = call float @dx.op.unary.f32(i32 23, float %9051)  ; Log(value)
  %9103 = fmul fast float %9102, 0x3FE62E4300000000
  %9104 = fmul fast float %9048, %9103
  %9105 = fsub fast float -0.000000e+00, %9104
  %9106 = fsub fast float 1.000000e+00, %9051
  %9107 = fdiv fast float %9105, %9106
  br label %9108

; <label>:9108                                    ; preds = %9101, %9097
  %9109 = phi float [ %9107, %9101 ], [ %9048, %9097 ]
  %9110 = phi float [ %9103, %9101 ], [ 0.000000e+00, %9097 ]
  %9111 = fmul fast float %9074, %9058
  %9112 = fmul fast float %9075, %9058
  %9113 = fmul fast float %9076, %9058
  %9114 = fmul fast float %9077, %9058
  %9115 = fmul fast float %9087, %9056
  %9116 = fmul fast float %9098, %9056
  %9117 = fmul fast float %9109, %9056
  %9118 = fmul fast float %9088, %9056
  %9119 = fmul fast float %9099, %9056
  %9120 = fmul fast float %9110, %9056
  %9121 = fadd fast float %9115, %9111
  %9122 = fadd fast float %9116, %9112
  %9123 = fadd fast float %9117, %9113
  %9124 = fadd fast float %9118, %9114
  %9125 = fadd fast float %9119, %9114
  %9126 = fadd fast float %9120, %9114
  %9127 = fcmp fast une float %9124, 0.000000e+00
  br i1 %9127, label %9128, label %9135, !dx.controlflow.hints !178

; <label>:9128                                    ; preds = %9108
  %9129 = fmul fast float %9124, 0x3FF7154760000000
  %9130 = call float @dx.op.unary.f32(i32 21, float %9129)  ; Exp(value)
  %9131 = fsub fast float 1.000000e+00, %9130
  %9132 = fmul fast float %9121, %9131
  %9133 = fsub fast float -0.000000e+00, %9132
  %9134 = fdiv fast float %9133, %9124
  br label %9135

; <label>:9135                                    ; preds = %9128, %9108
  %9136 = phi float [ %9130, %9128 ], [ 1.000000e+00, %9108 ]
  %9137 = phi float [ %9134, %9128 ], [ %9121, %9108 ]
  %9138 = fcmp fast une float %9125, 0.000000e+00
  br i1 %9138, label %9139, label %9146, !dx.controlflow.hints !178

; <label>:9139                                    ; preds = %9135
  %9140 = fmul fast float %9125, 0x3FF7154760000000
  %9141 = call float @dx.op.unary.f32(i32 21, float %9140)  ; Exp(value)
  %9142 = fsub fast float 1.000000e+00, %9141
  %9143 = fmul fast float %9122, %9142
  %9144 = fsub fast float -0.000000e+00, %9143
  %9145 = fdiv fast float %9144, %9125
  br label %9146

; <label>:9146                                    ; preds = %9139, %9135
  %9147 = phi float [ %9141, %9139 ], [ 1.000000e+00, %9135 ]
  %9148 = phi float [ %9145, %9139 ], [ %9122, %9135 ]
  %9149 = fcmp fast une float %9126, 0.000000e+00
  br i1 %9149, label %9150, label %9157, !dx.controlflow.hints !178

; <label>:9150                                    ; preds = %9146
  %9151 = fmul fast float %9126, 0x3FF7154760000000
  %9152 = call float @dx.op.unary.f32(i32 21, float %9151)  ; Exp(value)
  %9153 = fsub fast float 1.000000e+00, %9152
  %9154 = fmul fast float %9123, %9153
  %9155 = fsub fast float -0.000000e+00, %9154
  %9156 = fdiv fast float %9155, %9126
  br label %9157

; <label>:9157                                    ; preds = %9150, %9146
  %9158 = phi float [ %9152, %9150 ], [ 1.000000e+00, %9146 ]
  %9159 = phi float [ %9156, %9150 ], [ %9123, %9146 ]
  %9160 = fcmp fast ogt float %9056, %9058
  br i1 %9160, label %9161, label %9181

; <label>:9161                                    ; preds = %9157
  %9162 = fsub fast float 1.000000e+00, %9058
  %9163 = fmul fast float %9074, %9162
  %9164 = fmul fast float %9075, %9162
  %9165 = fmul fast float %9076, %9162
  %9166 = fmul fast float %9077, %9162
  %9167 = fcmp fast une float %9166, 0.000000e+00
  br i1 %9167, label %9168, label %9219, !dx.controlflow.hints !179

; <label>:9168                                    ; preds = %9161
  %9169 = fmul fast float %9166, 0x3FF7154760000000
  %9170 = call float @dx.op.unary.f32(i32 21, float %9169)  ; Exp(value)
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %9163, %9171
  %9173 = fsub fast float -0.000000e+00, %9172
  %9174 = fmul fast float %9164, %9171
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fmul fast float %9165, %9171
  %9177 = fsub fast float -0.000000e+00, %9176
  %9178 = fdiv fast float %9173, %9166
  %9179 = fdiv fast float %9175, %9166
  %9180 = fdiv fast float %9177, %9166
  br label %9219

; <label>:9181                                    ; preds = %9157
  %9182 = fsub fast float 1.000000e+00, %9056
  %9183 = fmul fast float %9087, %9182
  %9184 = fmul fast float %9098, %9182
  %9185 = fmul fast float %9109, %9182
  %9186 = fmul fast float %9088, %9182
  %9187 = fmul fast float %9099, %9182
  %9188 = fmul fast float %9110, %9182
  %9189 = fcmp fast une float %9186, 0.000000e+00
  br i1 %9189, label %9190, label %9197, !dx.controlflow.hints !178

; <label>:9190                                    ; preds = %9181
  %9191 = fmul fast float %9186, 0x3FF7154760000000
  %9192 = call float @dx.op.unary.f32(i32 21, float %9191)  ; Exp(value)
  %9193 = fsub fast float 1.000000e+00, %9192
  %9194 = fmul fast float %9183, %9193
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = fdiv fast float %9195, %9186
  br label %9197

; <label>:9197                                    ; preds = %9190, %9181
  %9198 = phi float [ %9196, %9190 ], [ %9183, %9181 ]
  %9199 = phi float [ %9192, %9190 ], [ 1.000000e+00, %9181 ]
  %9200 = fcmp fast une float %9187, 0.000000e+00
  br i1 %9200, label %9201, label %9208, !dx.controlflow.hints !178

; <label>:9201                                    ; preds = %9197
  %9202 = fmul fast float %9187, 0x3FF7154760000000
  %9203 = call float @dx.op.unary.f32(i32 21, float %9202)  ; Exp(value)
  %9204 = fsub fast float 1.000000e+00, %9203
  %9205 = fmul fast float %9184, %9204
  %9206 = fsub fast float -0.000000e+00, %9205
  %9207 = fdiv fast float %9206, %9187
  br label %9208

; <label>:9208                                    ; preds = %9201, %9197
  %9209 = phi float [ %9207, %9201 ], [ %9184, %9197 ]
  %9210 = phi float [ %9203, %9201 ], [ 1.000000e+00, %9197 ]
  %9211 = fcmp fast une float %9188, 0.000000e+00
  br i1 %9211, label %9212, label %9219, !dx.controlflow.hints !178

; <label>:9212                                    ; preds = %9208
  %9213 = fmul fast float %9188, 0x3FF7154760000000
  %9214 = call float @dx.op.unary.f32(i32 21, float %9213)  ; Exp(value)
  %9215 = fsub fast float 1.000000e+00, %9214
  %9216 = fmul fast float %9185, %9215
  %9217 = fsub fast float -0.000000e+00, %9216
  %9218 = fdiv fast float %9217, %9188
  br label %9219

; <label>:9219                                    ; preds = %9212, %9208, %9168, %9161
  %9220 = phi float [ %9218, %9212 ], [ %9180, %9168 ], [ %9165, %9161 ], [ %9185, %9208 ]
  %9221 = phi float [ %9209, %9212 ], [ %9179, %9168 ], [ %9164, %9161 ], [ %9209, %9208 ]
  %9222 = phi float [ %9198, %9212 ], [ %9178, %9168 ], [ %9163, %9161 ], [ %9198, %9208 ]
  %9223 = phi float [ %9214, %9212 ], [ %9170, %9168 ], [ 1.000000e+00, %9161 ], [ 1.000000e+00, %9208 ]
  %9224 = phi float [ %9210, %9212 ], [ %9170, %9168 ], [ 1.000000e+00, %9161 ], [ %9210, %9208 ]
  %9225 = phi float [ %9199, %9212 ], [ %9170, %9168 ], [ 1.000000e+00, %9161 ], [ %9199, %9208 ]
  %9226 = fmul fast float %9225, %9137
  %9227 = fmul fast float %9224, %9148
  %9228 = fmul fast float %9223, %9159
  %9229 = fadd fast float %9226, %9222
  %9230 = fadd fast float %9227, %9221
  %9231 = fadd fast float %9228, %9220
  %9232 = fmul fast float %9225, %9136
  %9233 = fmul fast float %9224, %9147
  %9234 = fmul fast float %9223, %9158
  br label %9235

; <label>:9235                                    ; preds = %9219, %9030
  %9236 = phi float [ %9234, %9219 ], [ %9036, %9030 ]
  %9237 = phi float [ %9233, %9219 ], [ %9035, %9030 ]
  %9238 = phi float [ %9232, %9219 ], [ %9034, %9030 ]
  %9239 = phi float [ %9231, %9219 ], [ %9033, %9030 ]
  %9240 = phi float [ %9230, %9219 ], [ %9032, %9030 ]
  %9241 = phi float [ %9229, %9219 ], [ %9031, %9030 ]
  %9242 = fmul fast float %9241, %8197
  %9243 = fmul fast float %9240, %8197
  %9244 = fmul fast float %9239, %8197
  %9245 = fmul fast float %9238, %8478
  %9246 = call float @dx.op.dot3.f32(i32 55, float %9238, float %9237, float %9236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9247 = call float @dx.op.dot3.f32(i32 55, float %9242, float %9243, float %9244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9248 = select i1 %292, float %9246, float %9238
  %9249 = select i1 %292, float %9246, float %9237
  %9250 = select i1 %292, float 1.000000e+00, float %9236
  %9251 = select i1 %292, float %9247, float %9242
  %9252 = select i1 %292, float 0.000000e+00, float %9243
  %9253 = select i1 %292, float 0.000000e+00, float %9244
  %9254 = fmul fast float %9248, %8472
  %9255 = fmul fast float %9249, %8473
  %9256 = fmul fast float %9250, %8474
  %9257 = fadd fast float %9254, %9251
  %9258 = fadd fast float %9255, %9252
  %9259 = fadd fast float %9253, %9256
  %9260 = fmul fast float %9248, %8475
  %9261 = fmul fast float %9249, %8476
  %9262 = fmul fast float %9250, %8477
  %9263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.i32 %9263, 0
  %9265 = icmp eq i32 %9264, 0
  br i1 %9265, label %9633, label %9266, !dx.controlflow.hints !180

; <label>:9266                                    ; preds = %9235
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 2
  %9269 = extractvalue %dx.types.CBufRet.f32 %9267, 3
  %9270 = fmul fast float %9268, %114
  %9271 = fmul fast float %9269, %115
  %9272 = fmul fast float %9270, 2.000000e+00
  %9273 = fmul fast float %9271, 2.000000e+00
  %9274 = fsub fast float 1.000000e+00, %9272
  %9275 = fsub fast float 1.000000e+00, %9273
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 0
  %9278 = extractvalue %dx.types.CBufRet.f32 %9276, 1
  %9279 = extractvalue %dx.types.CBufRet.f32 %9276, 2
  %9280 = fmul fast float %9274, %9277
  %9281 = fmul fast float %9274, %9278
  %9282 = fmul fast float %9274, %9279
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9287 = fmul fast float %9275, %9284
  %9288 = fmul fast float %9275, %9285
  %9289 = fmul fast float %9275, %9286
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 0
  %9292 = extractvalue %dx.types.CBufRet.f32 %9290, 1
  %9293 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9294 = fadd fast float %9287, %9291
  %9295 = fadd fast float %9294, %9280
  %9296 = fadd fast float %9288, %9292
  %9297 = fadd fast float %9296, %9281
  %9298 = fadd fast float %9289, %9293
  %9299 = fadd fast float %9298, %9282
  %9300 = fmul fast float %9295, %8471
  %9301 = fmul fast float %9297, %8471
  %9302 = fmul fast float %9299, %8471
  %9303 = fmul fast float %9300, %9300
  %9304 = fmul fast float %9301, %9301
  %9305 = fadd fast float %9303, %9304
  %9306 = fmul fast float %9302, %9302
  %9307 = fadd fast float %9305, %9306
  %9308 = call float @dx.op.unary.f32(i32 24, float %9307)  ; Sqrt(value)
  %9309 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %9310 = fsub fast float %9308, %9309
  %9311 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %9312 = fmul fast float %9310, %9311
  %9313 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9314 = fadd fast float %9313, -5.000000e-01
  %9315 = fmul fast float %9314, 2.000000e+00
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 2
  %9318 = call float @dx.op.binary.f32(i32 36, float %9317, float %9315)  ; FMin(a,b)
  %9319 = fsub fast float -0.000000e+00, %9317
  %9320 = fcmp fast ogt float %9318, %9319
  br i1 %9320, label %9321, label %9633, !dx.controlflow.hints !181

; <label>:9321                                    ; preds = %9266
  %9322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9323 = extractvalue %dx.types.CBufRet.f32 %9322, 3
  %9324 = fcmp fast ogt float %9323, 0.000000e+00
  br i1 %9324, label %9325, label %9400, !dx.controlflow.hints !182

; <label>:9325                                    ; preds = %9321
  %9326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9327 = extractvalue %dx.types.Dimensions %9326, 0
  %9328 = sitofp i32 %9327 to float
  %9329 = extractvalue %dx.types.Dimensions %9326, 1
  %9330 = sitofp i32 %9329 to float
  %9331 = fmul fast float %9270, %9328
  %9332 = fmul fast float %9271, %9330
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9335 = fsub fast float -0.000000e+00, %9334
  %9336 = fptoui float %9335 to i32
  %9337 = fptoui float %9331 to i32
  %9338 = fptoui float %9332 to i32
  %9339 = and i32 %9336, 31
  %9340 = lshr i32 %9337, %9339
  %9341 = lshr i32 %9338, %9339
  %9342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9336, i32 %9340, i32 %9341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9343 = extractvalue %dx.types.ResRet.f32 %9342, 0
  %9344 = fcmp fast olt float %9343, -1.000000e+00
  %9345 = fcmp fast ogt float %9343, -1.000000e+00
  %9346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9346, 1
  %9348 = select i1 %9345, float %9347, float 1.000000e+00
  %9349 = fadd fast float %9343, 1.000000e+00
  %9350 = fmul fast float %9348, %9349
  %9351 = call float @dx.op.unary.f32(i32 6, float %9350)  ; FAbs(value)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9346, 3
  %9353 = fcmp fast oge float %9351, %9352
  %9354 = select i1 %9353, float 0x4197782600000000, float %9351
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 0
  %9357 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9358 = extractvalue %dx.types.CBufRet.f32 %9355, 2
  %9359 = select i1 %9344, float %9356, float %9277
  %9360 = select i1 %9344, float %9357, float %9278
  %9361 = select i1 %9344, float %9358, float %9279
  %9362 = fmul fast float %9359, %9274
  %9363 = fmul fast float %9360, %9274
  %9364 = fmul fast float %9361, %9274
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 0
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 1
  %9368 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9369 = select i1 %9344, float %9366, float %9284
  %9370 = select i1 %9344, float %9367, float %9285
  %9371 = select i1 %9344, float %9368, float %9286
  %9372 = fmul fast float %9369, %9275
  %9373 = fmul fast float %9370, %9275
  %9374 = fmul fast float %9371, %9275
  %9375 = fadd fast float %9372, %9362
  %9376 = fadd fast float %9373, %9363
  %9377 = fadd fast float %9374, %9364
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9382 = select i1 %9344, float %9379, float %9291
  %9383 = select i1 %9344, float %9380, float %9292
  %9384 = select i1 %9344, float %9381, float %9293
  %9385 = fadd fast float %9375, %9382
  %9386 = fadd fast float %9376, %9383
  %9387 = fadd fast float %9377, %9384
  %9388 = fmul fast float %9385, %9354
  %9389 = fmul fast float %9386, %9354
  %9390 = fmul fast float %9387, %9354
  %9391 = fmul fast float %9388, %9388
  %9392 = fmul fast float %9389, %9389
  %9393 = fadd fast float %9391, %9392
  %9394 = fmul fast float %9390, %9390
  %9395 = fadd fast float %9393, %9394
  %9396 = call float @dx.op.unary.f32(i32 24, float %9395)  ; Sqrt(value)
  %9397 = fsub fast float %9396, %9309
  %9398 = fmul fast float %9397, %9311
  %9399 = call float @dx.op.unary.f32(i32 7, float %9398)  ; Saturate(value)
  br label %9400

; <label>:9400                                    ; preds = %9325, %9321
  %9401 = phi float [ %9399, %9325 ], [ 1.000000e+00, %9321 ]
  %9402 = fmul fast float %9318, 5.000000e-01
  %9403 = fadd fast float %9402, 5.000000e-01
  %9404 = call float @dx.op.unary.f32(i32 22, float %9403)  ; Frc(value)
  %9405 = call float @dx.op.unary.f32(i32 27, float %9404)  ; Round_ni(value)
  %9406 = call float @dx.op.unary.f32(i32 22, float %9404)  ; Frc(value)
  %9407 = fmul fast float %9406, 2.000000e+00
  %9408 = fadd fast float %9407, -1.000000e+00
  %9409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9270, float %9271, float %9405, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9410 = extractvalue %dx.types.ResRet.f32 %9409, 0
  %9411 = extractvalue %dx.types.ResRet.f32 %9409, 1
  %9412 = extractvalue %dx.types.ResRet.f32 %9409, 2
  %9413 = extractvalue %dx.types.ResRet.f32 %9409, 3
  %9414 = fadd fast float %9410, -5.000000e-01
  %9415 = fadd fast float %9412, -5.000000e-01
  %9416 = fmul fast float %9414, 0xBFD5555560000000
  %9417 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9415, float %9416)  ; FMad(a,b,c)
  %9418 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9411, float 0.000000e+00)  ; FMad(a,b,c)
  %9419 = fadd fast float %9418, %9413
  %9420 = fmul fast float %9414, -7.500000e-01
  %9421 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9415, float %9420)  ; FMad(a,b,c)
  %9422 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9411, float 0.000000e+00)  ; FMad(a,b,c)
  %9423 = fadd fast float %9422, %9413
  %9424 = call float @dx.op.binary.f32(i32 35, float %9417, float -1.000000e+00)  ; FMax(a,b)
  %9425 = call float @dx.op.binary.f32(i32 35, float %9419, float -1.000000e+00)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 35, float %9421, float -1.000000e+00)  ; FMax(a,b)
  %9427 = call float @dx.op.binary.f32(i32 35, float %9423, float -1.000000e+00)  ; FMax(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9424, float 1.000000e+00)  ; FMin(a,b)
  %9429 = call float @dx.op.binary.f32(i32 36, float %9425, float 1.000000e+00)  ; FMin(a,b)
  %9430 = call float @dx.op.binary.f32(i32 36, float %9426, float 1.000000e+00)  ; FMin(a,b)
  %9431 = call float @dx.op.binary.f32(i32 36, float %9427, float 1.000000e+00)  ; FMin(a,b)
  %9432 = fcmp fast olt float %9428, 0x3FEFFF8020000000
  br i1 %9432, label %9433, label %9548, !dx.controlflow.hints !183

; <label>:9433                                    ; preds = %9400
  %9434 = extractvalue %dx.types.CBufRet.f32 %9316, 3
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9439 = extractvalue %dx.types.CBufRet.f32 %9435, 3
  %9440 = fsub fast float %9436, %9428
  %9441 = fsub fast float %9437, %9429
  %9442 = fsub fast float %9438, %9430
  %9443 = fsub fast float %9439, %9431
  %9444 = fmul fast float %9440, %9434
  %9445 = fmul fast float %9441, %9434
  %9446 = fmul fast float %9442, %9434
  %9447 = fmul fast float %9443, %9434
  %9448 = fadd fast float %9444, %9428
  %9449 = fadd fast float %9445, %9429
  %9450 = fsub fast float -0.000000e+00, %9449
  %9451 = fadd fast float %9446, %9430
  %9452 = fadd fast float %9447, %9431
  %9453 = fmul fast float %9448, %9448
  %9454 = fsub fast float %9449, %9453
  %9455 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9454)  ; FMax(a,b)
  %9456 = fdiv fast float 1.000000e+00, %9455
  %9457 = fmul fast float %9449, %9448
  %9458 = fsub fast float %9451, %9457
  %9459 = fsub fast float %9408, %9448
  %9460 = fmul fast float %9408, %9408
  %9461 = fsub fast float %9460, %9449
  %9462 = fmul fast float %9459, %9456
  %9463 = fmul fast float %9462, %9458
  %9464 = fsub fast float %9461, %9463
  %9465 = fmul fast float %9449, %9449
  %9466 = fsub fast float %9452, %9465
  %9467 = fmul fast float %9458, %9458
  %9468 = fmul fast float %9467, %9456
  %9469 = fsub fast float %9466, %9468
  %9470 = fdiv fast float %9464, %9469
  %9471 = fmul fast float %9458, %9470
  %9472 = fsub fast float %9459, %9471
  %9473 = fmul fast float %9472, %9456
  %9474 = fmul fast float %9473, %9448
  %9475 = fsub fast float 1.000000e+00, %9474
  %9476 = fmul fast float %9449, %9470
  %9477 = fsub fast float %9475, %9476
  %9478 = fmul fast float %9473, %9473
  %9479 = fmul fast float %9470, 4.000000e+00
  %9480 = fmul fast float %9479, %9477
  %9481 = fsub fast float %9478, %9480
  %9482 = call float @dx.op.unary.f32(i32 24, float %9481)  ; Sqrt(value)
  %9483 = fcmp fast oge float %9473, 0.000000e+00
  %9484 = fsub fast float -0.000000e+00, %9482
  %9485 = select i1 %9483, float %9484, float %9482
  %9486 = fsub fast float %9485, %9473
  %9487 = fdiv fast float %9486, %9470
  %9488 = fdiv fast float %9477, %9486
  %9489 = fmul fast float %9487, 5.000000e-01
  %9490 = fmul fast float %9488, 2.000000e+00
  %9491 = select i1 %9483, float %9489, float %9490
  %9492 = select i1 %9483, float %9490, float %9489
  %9493 = call float @dx.op.binary.f32(i32 35, float %9491, float %9492)  ; FMax(a,b)
  %9494 = call float @dx.op.binary.f32(i32 36, float %9491, float %9492)  ; FMin(a,b)
  %9495 = fcmp fast ogt float %9408, %9494
  br i1 %9495, label %9496, label %9506

; <label>:9496                                    ; preds = %9433
  %9497 = fsub fast float %9408, %9494
  %9498 = fsub fast float %9493, %9494
  %9499 = fmul fast float %9497, %9498
  %9500 = fmul fast float %9493, %9408
  %9501 = fadd fast float %9493, %9408
  %9502 = fmul fast float %9501, %9448
  %9503 = fadd fast float %9500, %9449
  %9504 = fsub fast float %9503, %9502
  %9505 = fdiv fast float %9504, %9499
  br label %9506

; <label>:9506                                    ; preds = %9496, %9433
  %9507 = phi float [ %9505, %9496 ], [ 0.000000e+00, %9433 ]
  %9508 = fcmp fast ogt float %9408, %9493
  %9509 = fsub fast float %9408, %9493
  br i1 %9508, label %9510, label %9520

; <label>:9510                                    ; preds = %9506
  %9511 = fsub fast float %9493, %9494
  %9512 = fmul fast float %9511, %9509
  %9513 = fmul fast float %9494, %9408
  %9514 = fadd fast float %9494, %9408
  %9515 = fmul fast float %9514, %9448
  %9516 = fsub fast float %9450, %9513
  %9517 = fadd fast float %9516, %9515
  %9518 = fdiv fast float %9517, %9512
  %9519 = fadd fast float %9518, %9507
  br label %9520

; <label>:9520                                    ; preds = %9510, %9506
  %9521 = phi float [ %9519, %9510 ], [ %9507, %9506 ]
  %9522 = fsub fast float %9408, %9494
  %9523 = fmul fast float %9522, %9509
  %9524 = fmul fast float %9494, %9493
  %9525 = fadd fast float %9494, %9493
  %9526 = fmul fast float %9525, %9448
  %9527 = fadd fast float %9524, %9449
  %9528 = fsub fast float %9527, %9526
  %9529 = fdiv fast float %9528, %9523
  %9530 = call float @dx.op.unary.f32(i32 7, float %9521)  ; Saturate(value)
  %9531 = fcmp fast oeq float %8199, 0.000000e+00
  %9532 = extractvalue %dx.types.CBufRet.f32 %9316, 0
  %9533 = fcmp fast oeq float %9532, 0.000000e+00
  %9534 = or i1 %9531, %9533
  %9535 = fmul fast float %9532, 2.000000e+00
  %9536 = fadd fast float %9317, %9318
  %9537 = fdiv fast float %9536, %9535
  %9538 = call float @dx.op.unary.f32(i32 7, float %9537)  ; Saturate(value)
  %9539 = fmul fast float %9538, 2.000000e+00
  %9540 = fsub fast float 3.000000e+00, %9539
  %9541 = fmul fast float %9538, %9538
  %9542 = fmul fast float %9541, %9540
  %9543 = select i1 %9534, float 1.000000e+00, float %9542
  %9544 = fmul fast float %9529, %8199
  %9545 = fadd fast float %9530, %9544
  %9546 = call float @dx.op.unary.f32(i32 7, float %9545)  ; Saturate(value)
  %9547 = fmul fast float %9543, %9546
  br label %9548

; <label>:9548                                    ; preds = %9520, %9400
  %9549 = phi float [ %9547, %9520 ], [ 0.000000e+00, %9400 ]
  %9550 = fsub fast float 1.000000e+00, %9549
  %9551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9270, float %9271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9552 = extractvalue %dx.types.ResRet.f32 %9551, 0
  %9553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9554 = extractvalue %dx.types.CBufRet.i32 %9553, 2
  %9555 = icmp eq i32 %9554, 0
  br i1 %9555, label %9561, label %9556

; <label>:9556                                    ; preds = %9548
  %9557 = call float @dx.op.unary.f32(i32 7, float %9549)  ; Saturate(value)
  %9558 = fadd fast float %9552, -1.000000e+00
  %9559 = fmul fast float %9557, %9558
  %9560 = fadd fast float %9559, 1.000000e+00
  br label %9561

; <label>:9561                                    ; preds = %9556, %9548
  %9562 = phi float [ %9560, %9556 ], [ %9550, %9548 ]
  br i1 %9324, label %9563, label %9581

; <label>:9563                                    ; preds = %9561
  %9564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9565 = extractvalue %dx.types.CBufRet.f32 %9564, 1
  %9566 = fsub fast float %9401, %9565
  %9567 = call float @dx.op.unary.f32(i32 7, float %9566)  ; Saturate(value)
  %9568 = fsub fast float %9401, %9323
  %9569 = call float @dx.op.unary.f32(i32 7, float %9568)  ; Saturate(value)
  %9570 = fsub fast float %9567, %9569
  %9571 = fsub fast float %9403, %9569
  %9572 = fdiv fast float %9571, %9570
  %9573 = call float @dx.op.unary.f32(i32 7, float %9572)  ; Saturate(value)
  %9574 = fmul fast float %9573, 2.000000e+00
  %9575 = fsub fast float 3.000000e+00, %9574
  %9576 = fsub fast float %9552, %9562
  %9577 = fmul fast float %9573, %9573
  %9578 = fmul fast float %9577, %9576
  %9579 = fmul fast float %9578, %9575
  %9580 = fadd fast float %9579, %9562
  br label %9581

; <label>:9581                                    ; preds = %9563, %9561
  %9582 = phi float [ %9580, %9563 ], [ %9562, %9561 ]
  %9583 = call float @dx.op.binary.f32(i32 35, float %9552, float %9582)  ; FMax(a,b)
  %9584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9585 = extractvalue %dx.types.CBufRet.i32 %9584, 2
  %9586 = and i32 %9585, 1
  %9587 = icmp eq i32 %9586, 0
  %9588 = fcmp fast une float %9583, 1.000000e+00
  %9589 = and i1 %9588, %9587
  br i1 %9589, label %9590, label %9609

; <label>:9590                                    ; preds = %9581
  %9591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9270, float %9271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9592 = extractvalue %dx.types.ResRet.f32 %9591, 0
  %9593 = extractvalue %dx.types.ResRet.f32 %9591, 1
  %9594 = extractvalue %dx.types.ResRet.f32 %9591, 2
  %9595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.f32 %9595, 1
  %9597 = fmul fast float %9596, %9592
  %9598 = fmul fast float %9596, %9593
  %9599 = fmul fast float %9596, %9594
  %9600 = fcmp fast ogt float %9552, 0x3FEFFF2E40000000
  %9601 = fsub fast float 1.000000e+00, %9583
  %9602 = fsub fast float 1.000000e+00, %9552
  %9603 = fdiv fast float %9601, %9602
  %9604 = call float @dx.op.unary.f32(i32 7, float %9603)  ; Saturate(value)
  %9605 = select i1 %9600, float 0.000000e+00, float %9604
  %9606 = fmul fast float %9597, %9605
  %9607 = fmul fast float %9598, %9605
  %9608 = fmul fast float %9599, %9605
  br label %9609

; <label>:9609                                    ; preds = %9590, %9581
  %9610 = phi float [ 0.000000e+00, %9581 ], [ %9606, %9590 ]
  %9611 = phi float [ 0.000000e+00, %9581 ], [ %9607, %9590 ]
  %9612 = phi float [ 0.000000e+00, %9581 ], [ %9608, %9590 ]
  %9613 = fmul fast float %9610, %8197
  %9614 = fmul fast float %9611, %8197
  %9615 = fmul fast float %9612, %8197
  %9616 = fmul fast float %9583, %9245
  %9617 = call float @dx.op.dot3.f32(i32 55, float %9583, float %9583, float %9583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9618 = call float @dx.op.dot3.f32(i32 55, float %9613, float %9614, float %9615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9619 = select i1 %292, float %9617, float %9583
  %9620 = select i1 %292, float 1.000000e+00, float %9583
  %9621 = select i1 %292, float %9618, float %9613
  %9622 = select i1 %292, float 0.000000e+00, float %9614
  %9623 = select i1 %292, float 0.000000e+00, float %9615
  %9624 = fmul fast float %9619, %9257
  %9625 = fmul fast float %9619, %9258
  %9626 = fmul fast float %9620, %9259
  %9627 = fadd fast float %9624, %9621
  %9628 = fadd fast float %9625, %9622
  %9629 = fadd fast float %9623, %9626
  %9630 = fmul fast float %9619, %9260
  %9631 = fmul fast float %9619, %9261
  %9632 = fmul fast float %9620, %9262
  br label %9633

; <label>:9633                                    ; preds = %9609, %9266, %9235, %8467
  %9634 = phi float [ %8472, %8467 ], [ %9257, %9235 ], [ %9627, %9609 ], [ %9257, %9266 ]
  %9635 = phi float [ %8473, %8467 ], [ %9258, %9235 ], [ %9628, %9609 ], [ %9258, %9266 ]
  %9636 = phi float [ %8474, %8467 ], [ %9259, %9235 ], [ %9629, %9609 ], [ %9259, %9266 ]
  %9637 = phi float [ %8475, %8467 ], [ %9260, %9235 ], [ %9630, %9609 ], [ %9260, %9266 ]
  %9638 = phi float [ %8476, %8467 ], [ %9261, %9235 ], [ %9631, %9609 ], [ %9261, %9266 ]
  %9639 = phi float [ %8477, %8467 ], [ %9262, %9235 ], [ %9632, %9609 ], [ %9262, %9266 ]
  %9640 = phi float [ %8478, %8467 ], [ %9245, %9235 ], [ %9616, %9609 ], [ %9245, %9266 ]
  %9641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9642 = extractvalue %dx.types.CBufRet.f32 %9641, 2
  %9643 = extractvalue %dx.types.CBufRet.f32 %9641, 3
  %9644 = fmul fast float %9642, %114
  %9645 = fmul fast float %9643, %115
  %9646 = call float @dx.op.unary.f32(i32 7, float %9644)  ; Saturate(value)
  %9647 = call float @dx.op.unary.f32(i32 7, float %9645)  ; Saturate(value)
  %9648 = select i1 %8209, i32 2, i32 0
  %9649 = or i32 %9648, 1
  %9650 = uitofp i32 %9649 to float
  %9651 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9646, float %9647, float %9650, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9652 = extractvalue %dx.types.ResRet.f32 %9651, 0
  %9653 = extractvalue %dx.types.ResRet.f32 %9651, 1
  %9654 = extractvalue %dx.types.ResRet.f32 %9651, 2
  %9655 = extractvalue %dx.types.ResRet.f32 %9651, 3
  %9656 = add nuw nsw i32 %9648, 2
  %9657 = uitofp i32 %9656 to float
  %9658 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9646, float %9647, float %9657, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9659 = extractvalue %dx.types.ResRet.f32 %9658, 0
  %9660 = extractvalue %dx.types.ResRet.f32 %9658, 1
  %9661 = extractvalue %dx.types.ResRet.f32 %9658, 2
  %9662 = extractvalue %dx.types.ResRet.f32 %9658, 3
  %9663 = call float @dx.op.binary.f32(i32 35, float %9653, float %9654)  ; FMax(a,b)
  %9664 = call float @dx.op.binary.f32(i32 35, float %9652, float %9663)  ; FMax(a,b)
  %9665 = call float @dx.op.binary.f32(i32 35, float %9664, float %9655)  ; FMax(a,b)
  %9666 = call float @dx.op.binary.f32(i32 36, float %9660, float %9661)  ; FMin(a,b)
  %9667 = call float @dx.op.binary.f32(i32 36, float %9659, float %9666)  ; FMin(a,b)
  %9668 = call float @dx.op.binary.f32(i32 36, float %9667, float %9662)  ; FMin(a,b)
  %9669 = fmul fast float %9665, 2.550000e+02
  %9670 = fadd fast float %9669, 0x3F70101020000000
  %9671 = fptoui float %9670 to i32
  %9672 = fmul fast float %9668, 2.550000e+02
  %9673 = fadd fast float %9672, 0x3F70101020000000
  %9674 = fptoui float %9673 to i32
  %9675 = icmp ult i32 %9671, %9674
  br i1 %9675, label %9676, label %9845

; <label>:9676                                    ; preds = %9633
  %9677 = fcmp fast ogt float %100, 9.843750e-01
  %9678 = fadd fast float %8471, -4.000000e+00
  %9679 = select i1 %9677, float -4.000000e+00, float %9678
  %9680 = call float @dx.op.binary.f32(i32 35, float %9679, float 0.000000e+00)  ; FMax(a,b)
  %9681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.f32 %9681, 0
  %9683 = fadd fast float %9682, %9680
  %9684 = extractvalue %dx.types.CBufRet.f32 %9681, 2
  %9685 = fmul fast float %9683, %9684
  %9686 = call float @dx.op.unary.f32(i32 23, float %9685)  ; Log(value)
  %9687 = extractvalue %dx.types.CBufRet.f32 %9681, 3
  %9688 = fmul fast float %9687, %9686
  %9689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9690 = extractvalue %dx.types.CBufRet.f32 %9689, 2
  %9691 = fmul fast float %9688, %9690
  %9692 = call float @dx.op.unary.f32(i32 7, float %9691)  ; Saturate(value)
  %9693 = uitofp i32 %9671 to float
  %9694 = uitofp i32 %9674 to float
  %9695 = fadd fast float %9693, 5.000000e-01
  %9696 = fadd fast float %9694, 5.000000e-01
  %9697 = fmul fast float %9690, %9695
  %9698 = fmul fast float %9690, %9696
  %9699 = fadd fast float %9697, 0x3F0FFB4800000000
  %9700 = fadd fast float %9698, 0xBF0FFB4800000000
  %9701 = call float @dx.op.binary.f32(i32 35, float %9692, float %9699)  ; FMax(a,b)
  %9702 = call float @dx.op.binary.f32(i32 36, float %9701, float %9700)  ; FMin(a,b)
  %9703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9704 = extractvalue %dx.types.CBufRet.f32 %9703, 1
  %9705 = extractvalue %dx.types.CBufRet.f32 %9703, 2
  %9706 = extractvalue %dx.types.CBufRet.f32 %9703, 0
  %9707 = select i1 %8209, float %9706, float 0.000000e+00
  %9708 = fmul fast float %9704, %9702
  %9709 = fadd fast float %9707, %9708
  %9710 = fadd fast float %9707, %9705
  %9711 = fsub fast float %9704, %9705
  %9712 = fadd fast float %9711, %9707
  %9713 = call float @dx.op.binary.f32(i32 35, float %9709, float %9710)  ; FMax(a,b)
  %9714 = call float @dx.op.binary.f32(i32 36, float %9713, float %9712)  ; FMin(a,b)
  %9715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9646, float %9647, float %9714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9716 = extractvalue %dx.types.ResRet.f32 %9715, 0
  %9717 = extractvalue %dx.types.ResRet.f32 %9715, 1
  %9718 = extractvalue %dx.types.ResRet.f32 %9715, 2
  %9719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9720 = extractvalue %dx.types.CBufRet.i32 %9719, 0
  %9721 = extractvalue %dx.types.CBufRet.i32 %9719, 1
  %9722 = uitofp i32 %9720 to float
  %9723 = uitofp i32 %9721 to float
  %9724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9725 = extractvalue %dx.types.CBufRet.f32 %9724, 0
  %9726 = extractvalue %dx.types.CBufRet.f32 %9724, 1
  %9727 = fmul fast float %9722, %9646
  %9728 = fmul fast float %9723, %9647
  %9729 = fadd fast float %9727, -5.000000e-01
  %9730 = fadd fast float %9728, -5.000000e-01
  %9731 = call float @dx.op.unary.f32(i32 22, float %9729)  ; Frc(value)
  %9732 = call float @dx.op.unary.f32(i32 22, float %9730)  ; Frc(value)
  %9733 = fmul fast float %9731, %9731
  %9734 = fmul fast float %9733, %9731
  %9735 = fsub fast float 3.000000e+00, %9731
  %9736 = fmul fast float %9733, %9735
  %9737 = fmul fast float %9731, 3.000000e+00
  %9738 = fmul fast float %9734, 3.000000e+00
  %9739 = fmul fast float %9733, 6.000000e+00
  %9740 = fsub fast float %9738, %9739
  %9741 = fadd fast float %9740, 4.000000e+00
  %9742 = fmul fast float %9741, 0x3FC5555560000000
  %9743 = fmul fast float %9734, -3.000000e+00
  %9744 = fadd fast float %9733, %9731
  %9745 = fmul fast float %9744, 3.000000e+00
  %9746 = fadd fast float %9743, 1.000000e+00
  %9747 = fadd fast float %9746, %9745
  %9748 = fmul fast float %9734, 0x3FC5555560000000
  %9749 = fmul fast float %9732, %9732
  %9750 = fmul fast float %9749, %9732
  %9751 = fsub fast float 3.000000e+00, %9732
  %9752 = fmul fast float %9749, %9751
  %9753 = fmul fast float %9732, 3.000000e+00
  %9754 = fmul fast float %9750, 3.000000e+00
  %9755 = fmul fast float %9749, 6.000000e+00
  %9756 = fsub fast float %9754, %9755
  %9757 = fadd fast float %9756, 4.000000e+00
  %9758 = fmul fast float %9757, 0x3FC5555560000000
  %9759 = fmul fast float %9750, -3.000000e+00
  %9760 = fadd fast float %9749, %9732
  %9761 = fmul fast float %9760, 3.000000e+00
  %9762 = fadd fast float %9759, 1.000000e+00
  %9763 = fadd fast float %9762, %9761
  %9764 = fmul fast float %9750, 0x3FC5555560000000
  %9765 = fadd fast float %9731, 1.000000e+00
  %9766 = fsub fast float 1.000000e+00, %9737
  %9767 = fadd fast float %9766, %9736
  %9768 = fadd fast float %9767, %9741
  %9769 = fmul fast float %9768, 0x3FC5555560000000
  %9770 = fdiv fast float %9742, %9769
  %9771 = fsub fast float %9765, %9770
  %9772 = fsub fast float 1.000000e+00, %9731
  %9773 = fadd fast float %9747, %9734
  %9774 = fmul fast float %9773, 0x3FC5555560000000
  %9775 = fdiv fast float %9748, %9774
  %9776 = fadd fast float %9772, %9775
  %9777 = fadd fast float %9732, 1.000000e+00
  %9778 = fsub fast float 1.000000e+00, %9753
  %9779 = fadd fast float %9778, %9752
  %9780 = fadd fast float %9779, %9757
  %9781 = fmul fast float %9780, 0x3FC5555560000000
  %9782 = fdiv fast float %9758, %9781
  %9783 = fsub fast float %9777, %9782
  %9784 = fsub fast float 1.000000e+00, %9732
  %9785 = fadd fast float %9763, %9750
  %9786 = fmul fast float %9785, 0x3FC5555560000000
  %9787 = fdiv fast float %9764, %9786
  %9788 = fadd fast float %9787, %9784
  %9789 = fmul fast float %9771, %9725
  %9790 = fsub fast float %9646, %9789
  %9791 = fmul fast float %9776, %9725
  %9792 = fadd fast float %9791, %9646
  %9793 = fmul fast float %9788, %9726
  %9794 = fadd fast float %9793, %9647
  %9795 = fmul fast float %9783, %9726
  %9796 = fsub fast float %9647, %9795
  %9797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9790, float %9796, float %9714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9798 = extractvalue %dx.types.ResRet.f32 %9797, 0
  %9799 = extractvalue %dx.types.ResRet.f32 %9797, 1
  %9800 = extractvalue %dx.types.ResRet.f32 %9797, 2
  %9801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9792, float %9796, float %9714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9802 = extractvalue %dx.types.ResRet.f32 %9801, 0
  %9803 = extractvalue %dx.types.ResRet.f32 %9801, 1
  %9804 = extractvalue %dx.types.ResRet.f32 %9801, 2
  %9805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9790, float %9794, float %9714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9806 = extractvalue %dx.types.ResRet.f32 %9805, 0
  %9807 = extractvalue %dx.types.ResRet.f32 %9805, 1
  %9808 = extractvalue %dx.types.ResRet.f32 %9805, 2
  %9809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9792, float %9794, float %9714, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9810 = extractvalue %dx.types.ResRet.f32 %9809, 0
  %9811 = extractvalue %dx.types.ResRet.f32 %9809, 1
  %9812 = extractvalue %dx.types.ResRet.f32 %9809, 2
  %9813 = fsub fast float %9806, %9798
  %9814 = fsub fast float %9807, %9799
  %9815 = fsub fast float %9808, %9800
  %9816 = fmul fast float %9813, %9786
  %9817 = fmul fast float %9814, %9786
  %9818 = fmul fast float %9815, %9786
  %9819 = fadd fast float %9816, %9798
  %9820 = fadd fast float %9817, %9799
  %9821 = fadd fast float %9818, %9800
  %9822 = fsub fast float %9810, %9802
  %9823 = fsub fast float %9811, %9803
  %9824 = fsub fast float %9812, %9804
  %9825 = fmul fast float %9822, %9786
  %9826 = fmul fast float %9823, %9786
  %9827 = fmul fast float %9824, %9786
  %9828 = fsub fast float %9802, %9819
  %9829 = fadd fast float %9828, %9825
  %9830 = fsub fast float %9803, %9820
  %9831 = fadd fast float %9830, %9826
  %9832 = fsub fast float %9804, %9821
  %9833 = fadd fast float %9832, %9827
  %9834 = fmul fast float %9829, %9774
  %9835 = fmul fast float %9831, %9774
  %9836 = fmul fast float %9833, %9774
  %9837 = fadd fast float %9834, %9819
  %9838 = fadd fast float %9835, %9820
  %9839 = fadd fast float %9836, %9821
  %9840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.f32 %9840, 1
  %9842 = fmul fast float %9837, %9841
  %9843 = fmul fast float %9838, %9841
  %9844 = fmul fast float %9839, %9841
  br label %9845

; <label>:9845                                    ; preds = %9676, %9633
  %9846 = phi float [ %9716, %9676 ], [ 1.000000e+00, %9633 ]
  %9847 = phi float [ %9717, %9676 ], [ 1.000000e+00, %9633 ]
  %9848 = phi float [ %9718, %9676 ], [ 1.000000e+00, %9633 ]
  %9849 = phi float [ %9842, %9676 ], [ 0.000000e+00, %9633 ]
  %9850 = phi float [ %9843, %9676 ], [ 0.000000e+00, %9633 ]
  %9851 = phi float [ %9844, %9676 ], [ 0.000000e+00, %9633 ]
  %9852 = fmul fast float %9849, %8197
  %9853 = fmul fast float %9850, %8197
  %9854 = fmul fast float %9851, %8197
  %9855 = fmul fast float %9846, %9640
  %9856 = call float @dx.op.dot3.f32(i32 55, float %9846, float %9847, float %9848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9857 = call float @dx.op.dot3.f32(i32 55, float %9852, float %9853, float %9854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9858 = select i1 %292, float %9856, float %9846
  %9859 = select i1 %292, float %9856, float %9847
  %9860 = select i1 %292, float 1.000000e+00, float %9848
  %9861 = select i1 %292, float %9857, float %9852
  %9862 = select i1 %292, float 0.000000e+00, float %9853
  %9863 = select i1 %292, float 0.000000e+00, float %9854
  %9864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9865 = extractvalue %dx.types.CBufRet.i32 %9864, 3
  %9866 = and i32 %9865, 3
  %9867 = icmp ne i32 %9866, 0
  %9868 = and i32 %9865, 4
  %9869 = icmp ne i32 %9868, 0
  %9870 = and i1 %9867, %9869
  %9871 = and i1 %292, %9870
  br i1 %9871, label %9872, label %9878

; <label>:9872                                    ; preds = %9845
  %9873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9874 = extractvalue %dx.types.CBufRet.f32 %9873, 1
  %9875 = fadd fast float %9855, -1.000000e+00
  %9876 = fmul fast float %9874, %9875
  %9877 = fadd fast float %9876, 1.000000e+00
  br label %9878

; <label>:9878                                    ; preds = %9872, %9845
  %9879 = phi float [ %9877, %9872 ], [ %9855, %9845 ]
  %9880 = fadd fast float %9637, %9634
  %9881 = fmul fast float %9858, %9880
  %9882 = fadd fast float %9881, %9861
  %9883 = fadd fast float %9638, %9635
  %9884 = fmul fast float %9859, %9883
  %9885 = fadd fast float %9884, %9862
  %9886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9887 = extractvalue %dx.types.CBufRet.f32 %9886, 0
  br i1 %292, label %9888, label %9912

; <label>:9888                                    ; preds = %9878
  %9889 = fadd fast float %9882, %9885
  %9890 = fmul fast float %9887, %9889
  %9891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.f32 %9891, 3
  %9893 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %9894 = fsub fast float %8190, %8184
  %9895 = fadd fast float %9894, %8191
  %9896 = fsub fast float %9895, %9893
  %9897 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %9898 = fmul fast float %9896, %9897
  %9899 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9900 = fsub fast float %9899, %9892
  %9901 = fmul fast float %9900, %9879
  %9902 = fadd fast float %9901, %9892
  %9903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9904 = extractvalue %dx.types.CBufRet.f32 %9903, 0
  %9905 = fsub fast float %9902, %9904
  %9906 = fmul fast float %9905, 1.000000e+01
  %9907 = call float @dx.op.unary.f32(i32 7, float %9906)  ; Saturate(value)
  %9908 = fsub fast float 1.000000e+00, %8197
  %9909 = fmul fast float %9907, %9908
  %9910 = fadd fast float %9909, %8197
  %9911 = fmul fast float %9910, %9902
  br label %9936

; <label>:9912                                    ; preds = %9878
  %9913 = fadd fast float %9639, %9636
  %9914 = fmul fast float %9860, %9913
  %9915 = fadd fast float %9914, %9863
  %9916 = fmul fast float %9887, %9882
  %9917 = fmul fast float %9887, %9885
  %9918 = fmul fast float %9887, %9915
  %9919 = call float @dx.op.binary.f32(i32 35, float %9917, float %9918)  ; FMax(a,b)
  %9920 = call float @dx.op.binary.f32(i32 35, float %9916, float %9919)  ; FMax(a,b)
  %9921 = call float @dx.op.binary.f32(i32 35, float %9920, float %8197)  ; FMax(a,b)
  %9922 = fcmp fast ugt float %9921, 0x3F10000000000000
  br i1 %9922, label %9924, label %9923

; <label>:9923                                    ; preds = %9912
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9924

; <label>:9924                                    ; preds = %9923, %9912
  %9925 = add i32 %60, 356
  %9926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9925, i32 undef)  ; BufferLoad(srv,index,wot)
  %9927 = extractvalue %dx.types.ResRet.i32 %9926, 0
  %9928 = and i32 %9927, 32
  %9929 = icmp eq i32 %9928, 0
  br i1 %9929, label %9936, label %9930

; <label>:9930                                    ; preds = %9924
  %9931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9932 = extractvalue %dx.types.CBufRet.f32 %9931, 0
  %9933 = fmul fast float %9932, 0x3FE99999A0000000
  %9934 = fadd fast float %9932, %9916
  %9935 = fadd fast float %9933, %9918
  br label %9936

; <label>:9936                                    ; preds = %9930, %9924, %9888
  %9937 = phi float [ %9890, %9888 ], [ %9934, %9930 ], [ %9916, %9924 ]
  %9938 = phi float [ %9911, %9888 ], [ %9917, %9930 ], [ %9917, %9924 ]
  %9939 = phi float [ %9910, %9888 ], [ %9935, %9930 ], [ %9918, %9924 ]
  %9940 = phi float [ %9910, %9888 ], [ %8197, %9930 ], [ %8197, %9924 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9941 = call float @dx.op.binary.f32(i32 36, float %9937, float 3.225500e+04)  ; FMin(a,b)
  %9942 = call float @dx.op.binary.f32(i32 36, float %9938, float 3.225500e+04)  ; FMin(a,b)
  %9943 = call float @dx.op.binary.f32(i32 36, float %9939, float 3.225500e+04)  ; FMin(a,b)
  %9944 = call float @dx.op.binary.f32(i32 36, float %9940, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9943)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9944)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

