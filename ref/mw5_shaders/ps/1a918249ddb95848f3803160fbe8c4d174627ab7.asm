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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; WGV_TEXCOORD             0   xyz         8     NONE   float   xyz 
; WGV_NORMAL               0   xyzw        9     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy         10     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw       11     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       12     NONE   float   xyzw
; ENTITY_IDS               0   xy         13     NONE    uint    y  
; SV_IsFrontFace           0     z        13    FFACE    uint     z 
; PACKED_TRI_DATA          0   xyzw       14     NONE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 359aae2f3068a7178cad28b3e7d5ba48
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; WGV_TEXCOORD             0                 linear       
; WGV_NORMAL               0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t0     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          3d     T25     t31,space2     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27      t1,space1     1
;                                   texture     f32          1d     T28     t32,space2     1
;                                   texture     f32     2darray     T29      t8,space2     1
;                                   texture     f32          2d     T30      t1,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 51, 53, 54, 56 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %101 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %102 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %103 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %104 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %105 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %106 = alloca [12 x float], align 4
  %107 = alloca [12 x float], align 4
  %108 = alloca [4 x float], align 4
  %109 = alloca [4 x float], align 4
  %110 = alloca [4 x float], align 4
  %111 = alloca [4 x float], align 4
  %112 = alloca [3 x float], align 4
  %113 = alloca [3 x float], align 4
  %114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = fmul fast float %117, %102
  %119 = fmul fast float %117, %103
  %120 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %121 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %122 = bitcast float %121 to i32
  %123 = ashr i32 %122, 1
  %124 = sub nsw i32 1597250115, %123
  %125 = bitcast i32 %124 to float
  %126 = fmul fast float %93, %120
  %127 = fmul fast float %126, %125
  %128 = fmul fast float %94, %120
  %129 = fmul fast float %128, %125
  %130 = fmul fast float %95, %120
  %131 = fmul fast float %130, %125
  %132 = fmul fast float %94, %91
  %133 = fmul fast float %95, %90
  %134 = fsub fast float %132, %133
  %135 = fmul fast float %95, %89
  %136 = fmul fast float %93, %91
  %137 = fsub fast float %135, %136
  %138 = fmul fast float %93, %90
  %139 = fmul fast float %94, %89
  %140 = fsub fast float %138, %139
  %141 = fmul fast float %134, %92
  %142 = fmul fast float %137, %92
  %143 = fmul fast float %140, %92
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast une float %145, 0.000000e+00
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %118, 2.000000e+00
  %151 = fmul fast float %150, %148
  %152 = fmul fast float %119, 2.000000e+00
  %153 = fmul fast float %152, %149
  %154 = fsub fast float 1.000000e+00, %151
  %155 = fsub fast float 1.000000e+00, %153
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %159 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = select i1 %146, float %157, float %161
  %165 = select i1 %146, float %158, float %162
  %166 = select i1 %146, float %159, float %163
  %167 = fmul fast float %164, %154
  %168 = fmul fast float %165, %154
  %169 = fmul fast float %166, %154
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = extractvalue %dx.types.CBufRet.f32 %170, 1
  %173 = extractvalue %dx.types.CBufRet.f32 %170, 2
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 0
  %193 = extractvalue %dx.types.CBufRet.f32 %191, 1
  %194 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %195 = select i1 %146, float %188, float %192
  %196 = select i1 %146, float %189, float %193
  %197 = select i1 %146, float %190, float %194
  %198 = fadd fast float %184, %195
  %199 = fadd fast float %185, %196
  %200 = fadd fast float %186, %197
  %201 = fmul fast float %198, %105
  %202 = fmul fast float %199, %105
  %203 = fmul fast float %200, %105
  %204 = fmul fast float %118, 5.000000e-01
  %205 = fmul fast float %119, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %227 = fmul fast float %225, %118
  %228 = fmul fast float %226, %119
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 114688
  %232 = icmp ne i32 %231, 0
  %233 = select i1 %232, float %227, float 0.000000e+00
  %234 = select i1 %232, float %228, float 0.000000e+00
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %233, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fmul fast float %236, 2.550000e+02
  %238 = fptoui float %237 to i32
  %239 = select i1 %232, i32 %238, i32 0
  %240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.i32 %240, 3
  %242 = and i32 %241, 3
  %243 = icmp ne i32 %242, 0
  %244 = and i32 %241, 4
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %243, %245
  br i1 %246, label %247, label %256

; <label>:247                                     ; preds = %0
  %248 = fmul fast float %149, %119
  %249 = fmul fast float %148, %118
  %250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %50, float %249, float %248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = fsub fast float 1.000000e+00, %251
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fcmp fast olt float %252, %254
  br label %259

; <label>:256                                     ; preds = %0
  %257 = icmp eq i32 %244, 0
  %258 = and i1 %243, %257
  br label %259

; <label>:259                                     ; preds = %256, %247
  %260 = phi i1 [ %255, %247 ], [ %258, %256 ]
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = fmul fast float %262, 0x3FE3C6EF40000000
  %264 = frem fast float %118, 2.560000e+02
  %265 = frem fast float %119, 2.560000e+02
  %266 = fptoui float %264 to i32
  %267 = fptoui float %265 to i32
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %266, i32 %267, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = fadd fast float %269, %263
  %271 = call float @dx.op.unary.f32(i32 22, float %270)  ; Frc(value)
  %272 = add i32 %58, 156
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %284 = add i32 %58, 216
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %298 = add i32 %58, 36
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %58, 288
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = mul i32 %59, 100
  %315 = add i32 %314, 28
  %316 = add i32 %314, 40
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = add i32 %58, 172
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = shl i32 %321, 4
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %321, 7
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %321, 22
  %329 = shl nuw nsw i32 %328, 5
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = add i32 %58, 232
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %333, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = add i32 %58, 52
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = add i32 %58, 304
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = and i32 %318, 1
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %363, float %324
  %373 = select i1 %371, float %366, float %327
  %374 = select i1 %371, float %369, float %330
  %375 = add i32 %314, 44
  %376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = fmul fast float %377, %372
  %379 = fmul fast float %377, %373
  %380 = fmul fast float %377, %374
  %381 = add i32 %314, 48
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = shl i32 %383, 4
  %385 = and i32 %384, 32752
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %383, 7
  %388 = and i32 %387, 32752
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %383, 22
  %391 = shl nuw nsw i32 %390, 5
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = and i32 %318, 8
  %394 = icmp ne i32 %393, 0
  %395 = select i1 %394, float %386, float %336
  %396 = select i1 %394, float %389, float %340
  %397 = select i1 %394, float %392, float %344
  %398 = add i32 %314, 52
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 65535
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = lshr i32 %400, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = and i32 %318, 2
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %402, float %349
  %408 = select i1 %406, float %404, float %351
  %409 = add i32 %314, 56
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = and i32 %318, 4
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %413, float %356
  %419 = fmul float %418, 0x3F50624DE0000000
  %420 = select i1 %417, float %415, float %358
  %421 = fmul float %420, 0x3F50624DE0000000
  %422 = add i32 %314, 60
  %423 = add i32 %314, 32
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = add i32 %58, 188
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = shl i32 %428, 4
  %430 = and i32 %429, 32752
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %428, 7
  %433 = and i32 %432, 32752
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %428, 22
  %436 = shl nuw nsw i32 %435, 5
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %58, 248
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 255
  %442 = uitofp i32 %441 to float
  %443 = fmul fast float %442, 0x3F70101020000000
  %444 = lshr i32 %440, 8
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = lshr i32 %440, 16
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F70101020000000
  %452 = add i32 %58, 68
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 65535
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = lshr i32 %454, 16
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = add i32 %58, 320
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = shl i32 %467, 4
  %469 = and i32 %468, 32752
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %467, 7
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %467, 22
  %475 = shl nuw nsw i32 %474, 5
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = and i32 %425, 1
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %470, float %431
  %480 = select i1 %478, float %473, float %434
  %481 = select i1 %478, float %476, float %437
  %482 = add i32 %314, 64
  %483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.f32 %483, 0
  %485 = fmul fast float %484, %479
  %486 = fmul fast float %484, %480
  %487 = fmul fast float %484, %481
  %488 = add i32 %314, 68
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = shl i32 %490, 4
  %492 = and i32 %491, 32752
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %490, 7
  %495 = and i32 %494, 32752
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %490, 22
  %498 = shl nuw nsw i32 %497, 5
  %499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %498)  ; LegacyF16ToF32(value)
  %500 = and i32 %425, 8
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %493, float %443
  %503 = select i1 %501, float %496, float %447
  %504 = select i1 %501, float %499, float %451
  %505 = add i32 %314, 72
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = and i32 %507, 65535
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = lshr i32 %507, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = and i32 %425, 2
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %509, float %456
  %515 = select i1 %513, float %511, float %458
  %516 = add i32 %314, 76
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 65535
  %520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %519)  ; LegacyF16ToF32(value)
  %521 = lshr i32 %518, 16
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = and i32 %425, 4
  %524 = icmp ne i32 %523, 0
  %525 = select i1 %524, float %520, float %463
  %526 = fmul float %525, 0x3F50624DE0000000
  %527 = select i1 %524, float %522, float %465
  %528 = fmul float %527, 0x3F50624DE0000000
  %529 = add i32 %314, 80
  %530 = add i32 %314, 36
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = add i32 %58, 204
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = shl i32 %535, 4
  %537 = and i32 %536, 32752
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %535, 7
  %540 = and i32 %539, 32752
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = lshr i32 %535, 22
  %543 = shl nuw nsw i32 %542, 5
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = add i32 %58, 264
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 255
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = lshr i32 %547, 8
  %552 = and i32 %551, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %553, 0x3F70101020000000
  %555 = lshr i32 %547, 16
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = add i32 %58, 84
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 65535
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = lshr i32 %561, 16
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = add i32 %58, 336
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = shl i32 %574, 4
  %576 = and i32 %575, 32752
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %574, 7
  %579 = and i32 %578, 32752
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = lshr i32 %574, 22
  %582 = shl nuw nsw i32 %581, 5
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = and i32 %532, 1
  %585 = icmp ne i32 %584, 0
  %586 = select i1 %585, float %577, float %538
  %587 = select i1 %585, float %580, float %541
  %588 = select i1 %585, float %583, float %544
  %589 = add i32 %314, 84
  %590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = fmul fast float %591, %586
  %593 = fmul fast float %591, %587
  %594 = fmul fast float %591, %588
  %595 = add i32 %314, 88
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = shl i32 %597, 4
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %597, 7
  %602 = and i32 %601, 32752
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = lshr i32 %597, 22
  %605 = shl nuw nsw i32 %604, 5
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = and i32 %532, 8
  %608 = icmp ne i32 %607, 0
  %609 = select i1 %608, float %600, float %550
  %610 = select i1 %608, float %603, float %554
  %611 = select i1 %608, float %606, float %558
  %612 = add i32 %314, 92
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 65535
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %614, 16
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = and i32 %532, 2
  %620 = icmp ne i32 %619, 0
  %621 = select i1 %620, float %616, float %563
  %622 = select i1 %620, float %618, float %565
  %623 = add i32 %314, 96
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 65535
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = lshr i32 %625, 16
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = and i32 %532, 4
  %631 = icmp ne i32 %630, 0
  %632 = select i1 %631, float %627, float %570
  %633 = fmul float %632, 0x3F50624DE0000000
  %634 = select i1 %631, float %629, float %572
  %635 = fmul float %634, 0x3F50624DE0000000
  %636 = add i32 %58, 348
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 32
  %640 = icmp eq i32 %639, 0
  %641 = and i32 %638, 64
  %642 = icmp eq i32 %641, 0
  %643 = and i32 %638, 128
  %644 = icmp eq i32 %643, 0
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = and i32 %646, 2
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %664, label %649

; <label>:649                                     ; preds = %259
  %650 = add i32 %58, 504
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = add i32 %652, 0
  %654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %654, %dx.types.Handle %115, float %96, float %97, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = extractvalue %dx.types.ResRet.f32 %655, 2
  %659 = extractvalue %dx.types.ResRet.f32 %655, 3
  %660 = fmul fast float %659, %98
  %661 = fmul fast float %656, %99
  %662 = fmul fast float %657, %100
  %663 = fmul fast float %658, %101
  br label %664

; <label>:664                                     ; preds = %649, %259
  %665 = phi float [ %101, %259 ], [ %663, %649 ]
  %666 = phi float [ %100, %259 ], [ %662, %649 ]
  %667 = phi float [ %99, %259 ], [ %661, %649 ]
  %668 = phi float [ %98, %259 ], [ %660, %649 ]
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 2
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %692, label %673

; <label>:673                                     ; preds = %664
  %674 = add i32 %58, 44
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 1
  %678 = icmp ne i32 %677, 0
  %679 = select i1 %678, float %667, float 1.000000e+00
  %680 = add i32 %58, 60
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 1
  %684 = icmp ne i32 %683, 0
  %685 = select i1 %684, float %666, float 1.000000e+00
  %686 = add i32 %58, 76
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 1
  %690 = icmp ne i32 %689, 0
  %691 = select i1 %690, float %665, float 1.000000e+00
  br label %692

; <label>:692                                     ; preds = %673, %664
  %693 = phi float [ %665, %664 ], [ %691, %673 ]
  %694 = phi float [ %666, %664 ], [ %685, %673 ]
  %695 = phi float [ %667, %664 ], [ %679, %673 ]
  %696 = lshr i32 %670, 20
  %697 = and i32 %696, 3
  %698 = add nuw nsw i32 %697, 1
  %699 = add i32 %58, 24
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %58, 28
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = or i32 %704, %701
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %1241, label %707

; <label>:707                                     ; preds = %692
  %708 = and i32 %701, 262144
  %709 = icmp ne i32 %708, 0
  %710 = select i1 %709, float %64, float 1.000000e+00
  %711 = select i1 %709, float %65, float 0.000000e+00
  %712 = select i1 %709, float %66, float 0.000000e+00
  %713 = select i1 %709, float %67, float 1.000000e+00
  %714 = select i1 %709, float %68, float %96
  %715 = select i1 %709, float %69, float %97
  %716 = add i32 %58, 284
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = lshr i32 %718, 16
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = fmul fast float %720, 0x3F50624DE0000000
  %722 = add i32 %58, 88
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = lshr i32 %724, 16
  %726 = and i32 %725, 255
  %727 = lshr i32 %724, 24
  %728 = add i32 %58, 292
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 65535
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %730, 16
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = add i32 %58, 32
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = lshr i32 %737, 22
  %739 = shl nuw nsw i32 %738, 5
  %740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %739)  ; LegacyF16ToF32(value)
  %741 = shl i32 %737, 4
  %742 = and i32 %741, 32752
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %737, 7
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %749 = fmul fast float %748, 1.000000e+03
  %750 = fmul fast float %312, %749
  %751 = call float @dx.op.unary.f32(i32 22, float %750)  ; Frc(value)
  %752 = fadd fast float %751, %302
  %753 = fmul fast float %313, %749
  %754 = call float @dx.op.unary.f32(i32 22, float %753)  ; Frc(value)
  %755 = fadd fast float %754, %304
  %756 = fmul fast float %721, %749
  %757 = call float @dx.op.unary.f32(i32 22, float %756)  ; Frc(value)
  %758 = fmul fast float %757, 0x401921FB60000000
  %759 = fadd fast float %758, %740
  %760 = call float @dx.op.unary.f32(i32 13, float %759)  ; Sin(value)
  %761 = call float @dx.op.unary.f32(i32 12, float %759)  ; Cos(value)
  %762 = fsub fast float -0.000000e+00, %760
  %763 = fadd fast float %714, -5.000000e-01
  %764 = fadd fast float %715, -5.000000e-01
  %765 = fmul fast float %732, %763
  %766 = fmul fast float %734, %764
  %767 = fadd fast float %765, 5.000000e-01
  %768 = fadd fast float %766, 5.000000e-01
  %769 = fmul fast float %743, %767
  %770 = fmul fast float %746, %768
  %771 = fmul fast float %761, %769
  %772 = call float @dx.op.tertiary.f32(i32 46, float %762, float %770, float %771)  ; FMad(a,b,c)
  %773 = fmul fast float %760, %769
  %774 = call float @dx.op.tertiary.f32(i32 46, float %761, float %770, float %773)  ; FMad(a,b,c)
  %775 = fadd fast float %752, %772
  %776 = fadd fast float %755, %774
  %777 = icmp ugt i32 %726, 1
  %778 = icmp ugt i32 %724, 33554431
  %779 = or i1 %778, %777
  br i1 %779, label %780, label %805

; <label>:780                                     ; preds = %707
  %781 = add i32 %58, 228
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = lshr i32 %783, 16
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = fmul fast float %748, %785
  %787 = call float @dx.op.unary.f32(i32 22, float %786)  ; Frc(value)
  %788 = mul nuw nsw i32 %726, %727
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %787, %789
  %791 = call float @dx.op.unary.f32(i32 27, float %790)  ; Round_ni(value)
  %792 = fptoui float %791 to i32
  %793 = urem i32 %792, %726
  %794 = udiv i32 %792, %727
  %795 = call float @dx.op.unary.f32(i32 22, float %775)  ; Frc(value)
  %796 = call float @dx.op.unary.f32(i32 22, float %776)  ; Frc(value)
  %797 = uitofp i32 %793 to float
  %798 = uitofp i32 %794 to float
  %799 = fadd fast float %795, %797
  %800 = fadd fast float %796, %798
  %801 = uitofp i32 %726 to float
  %802 = uitofp i32 %727 to float
  %803 = fdiv fast float %799, %801
  %804 = fdiv fast float %800, %802
  br label %805

; <label>:805                                     ; preds = %780, %707
  %806 = phi float [ %803, %780 ], [ %775, %707 ]
  %807 = phi float [ %804, %780 ], [ %776, %707 ]
  %808 = and i32 %701, 256
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %856, label %810

; <label>:810                                     ; preds = %805
  %811 = add i32 %58, 456
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = add i32 %813, 0
  %815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %815, %dx.types.Handle %115, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = add i32 %58, 100
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = shl i32 %820, 4
  %822 = and i32 %821, 32752
  %823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %822)  ; LegacyF16ToF32(value)
  %824 = lshr i32 %820, 7
  %825 = and i32 %824, 32752
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = fsub fast float 1.000000e+00, %668
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %829 = bitcast float %668 to i32
  %830 = sitofp i32 %829 to float
  %831 = fadd fast float %830, 0xC1CFBF8940000000
  %832 = fmul fast float %826, %831
  %833 = fadd fast float %832, 0x41CFBF8940000000
  %834 = fptosi float %833 to i32
  %835 = bitcast i32 %834 to float
  %836 = bitcast float %828 to i32
  %837 = sitofp i32 %836 to float
  %838 = fadd fast float %837, 0xC1CFBF8940000000
  %839 = fmul fast float %838, %826
  %840 = fadd fast float %839, 0x41CFBF8940000000
  %841 = fptosi float %840 to i32
  %842 = bitcast i32 %841 to float
  %843 = fmul fast float %835, %823
  %844 = fmul fast float %842, %823
  %845 = fsub fast float %828, %843
  %846 = fadd fast float %844, %828
  %847 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %849 = fsub fast float %817, %847
  %850 = fsub fast float %848, %847
  %851 = bitcast float %850 to i32
  %852 = sub nsw i32 2129859010, %851
  %853 = bitcast i32 %852 to float
  %854 = fmul fast float %853, %849
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  br label %856

; <label>:856                                     ; preds = %810, %805
  %857 = phi float [ %855, %810 ], [ %668, %805 ]
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 128
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %878, label %862

; <label>:862                                     ; preds = %856
  %863 = add i32 %58, 440
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %115, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 524288
  %873 = icmp ne i32 %872, 0
  %874 = fcmp fast ogt float %869, 0x3FE0101020000000
  %875 = select i1 %874, float 1.000000e+00, float 0.000000e+00
  %876 = select i1 %873, float %875, float %869
  %877 = fmul fast float %876, %857
  br label %878

; <label>:878                                     ; preds = %862, %856
  %879 = phi float [ %877, %862 ], [ %857, %856 ]
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 16
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %1082, label %884

; <label>:884                                     ; preds = %878
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %58, 392
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %889, 0
  %891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %891, %dx.types.Handle %114, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = extractvalue %dx.types.ResRet.f32 %892, 3
  %897 = and i32 %886, 255
  %898 = uitofp i32 %897 to float
  %899 = lshr i32 %886, 8
  %900 = and i32 %899, 255
  %901 = uitofp i32 %900 to float
  %902 = fmul fast float %896, %898
  %903 = fadd fast float %902, %901
  %904 = fmul fast float %903, 0x3F70101000000000
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 512
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %917, label %909

; <label>:909                                     ; preds = %884
  %910 = add i32 %58, 472
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %912, 0
  %914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %914, %dx.types.Handle %115, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  br label %917

; <label>:917                                     ; preds = %909, %884
  %918 = phi float [ %916, %909 ], [ 1.000000e+00, %884 ]
  %919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.i32 %919, 0
  %921 = and i32 %920, 33554432
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %1029, label %923

; <label>:923                                     ; preds = %917
  %924 = add i32 %58, 224
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = and i32 %926, 65535
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %926, 16
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = add i32 %58, 228
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = and i32 %933, 65535
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 24
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %939, 0x3F70101020000000
  %941 = and i32 %937, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = lshr i32 %937, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = lshr i32 %937, 16
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = add i32 %58, 220
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 24
  %956 = uitofp i32 %955 to float
  %957 = fmul fast float %956, 0x3F70101020000000
  %958 = and i32 %954, 255
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = lshr i32 %954, 8
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = lshr i32 %954, 16
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = bitcast float %893 to i32
  %970 = ashr i32 %969, 1
  %971 = sub nsw i32 1597463174, %970
  %972 = bitcast i32 %971 to float
  %973 = fmul fast float %893, 5.000000e-01
  %974 = fmul fast float %972, %972
  %975 = fmul fast float %974, %973
  %976 = fsub fast float 1.500000e+00, %975
  %977 = fmul fast float %972, %893
  %978 = fmul fast float %977, %976
  %979 = bitcast float %894 to i32
  %980 = ashr i32 %979, 1
  %981 = sub nsw i32 1597463174, %980
  %982 = bitcast i32 %981 to float
  %983 = fmul fast float %894, 5.000000e-01
  %984 = fmul fast float %982, %982
  %985 = fmul fast float %984, %983
  %986 = fsub fast float 1.500000e+00, %985
  %987 = fmul fast float %982, %894
  %988 = fmul fast float %987, %986
  %989 = bitcast float %895 to i32
  %990 = ashr i32 %989, 1
  %991 = sub nsw i32 1597463174, %990
  %992 = bitcast i32 %991 to float
  %993 = fmul fast float %895, 5.000000e-01
  %994 = fmul fast float %992, %992
  %995 = fmul fast float %994, %993
  %996 = fsub fast float 1.500000e+00, %995
  %997 = fmul fast float %992, %895
  %998 = fmul fast float %997, %996
  %999 = fsub fast float %978, %960
  %1000 = fsub fast float %988, %964
  %1001 = fsub fast float %998, %968
  %1002 = fmul fast float %999, %928
  %1003 = fmul fast float %1000, %930
  %1004 = fmul fast float %1001, %935
  %1005 = fadd fast float %1002, %943
  %1006 = fadd fast float %1003, %947
  %1007 = fadd fast float %1004, %951
  %1008 = call float @dx.op.unary.f32(i32 7, float %1005)  ; Saturate(value)
  %1009 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1010 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1011 = fmul fast float %1008, %1008
  %1012 = fmul fast float %1009, %1009
  %1013 = fmul fast float %1010, %1010
  %1014 = fsub fast float %1011, %893
  %1015 = fsub fast float %1012, %894
  %1016 = fsub fast float %1013, %895
  %1017 = fmul fast float %1014, %918
  %1018 = fmul fast float %1015, %918
  %1019 = fmul fast float %1016, %918
  %1020 = fadd fast float %1017, %893
  %1021 = fadd fast float %1018, %894
  %1022 = fadd fast float %1019, %895
  %1023 = fadd fast float %940, %904
  %1024 = fsub fast float %1023, %957
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = fsub fast float %1025, %904
  %1027 = fmul fast float %1026, %918
  %1028 = fadd fast float %1027, %904
  br label %1082

; <label>:1029                                    ; preds = %917
  %1030 = and i32 %920, 134217728
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1066, label %1032

; <label>:1032                                    ; preds = %1029
  %1033 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1034 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1035 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1036 = fadd fast float %1033, -5.000000e-01
  %1037 = fadd fast float %1034, -5.000000e-01
  %1038 = fadd fast float %1035, -5.000000e-01
  %1039 = fmul fast float %1036, %918
  %1040 = fmul fast float %1037, %918
  %1041 = fmul fast float %1038, %918
  %1042 = fadd fast float %1039, 5.000000e-01
  %1043 = fadd fast float %1040, 5.000000e-01
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %1046 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %1047 = call float @dx.op.unary.f32(i32 24, float %895)  ; Sqrt(value)
  %1048 = fmul fast float %1042, 2.000000e+00
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1049, %1045
  %1051 = fadd fast float %1050, %1048
  %1052 = fmul fast float %1051, %1045
  %1053 = fmul fast float %1043, 2.000000e+00
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = fmul fast float %1054, %1046
  %1056 = fadd fast float %1055, %1053
  %1057 = fmul fast float %1056, %1046
  %1058 = fmul fast float %1044, 2.000000e+00
  %1059 = fsub fast float 1.000000e+00, %1058
  %1060 = fmul fast float %1059, %1047
  %1061 = fadd fast float %1060, %1058
  %1062 = fmul fast float %1061, %1047
  %1063 = fmul fast float %1052, %1052
  %1064 = fmul fast float %1057, %1057
  %1065 = fmul fast float %1062, %1062
  br label %1082

; <label>:1066                                    ; preds = %1029
  %1067 = fmul fast float %289, %289
  %1068 = fmul fast float %293, %293
  %1069 = fmul fast float %297, %297
  %1070 = fadd fast float %1067, -1.000000e+00
  %1071 = fadd fast float %1068, -1.000000e+00
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fmul fast float %918, %1070
  %1074 = fmul fast float %918, %1071
  %1075 = fmul fast float %918, %1072
  %1076 = fadd fast float %1073, 1.000000e+00
  %1077 = fadd fast float %1074, 1.000000e+00
  %1078 = fadd fast float %1075, 1.000000e+00
  %1079 = fmul fast float %1076, %893
  %1080 = fmul fast float %1077, %894
  %1081 = fmul fast float %1078, %895
  br label %1082

; <label>:1082                                    ; preds = %1066, %1032, %923, %878
  %1083 = phi float [ %1028, %923 ], [ %904, %1032 ], [ %904, %1066 ], [ 0x3FA23C0BE0000000, %878 ]
  %1084 = phi float [ %1020, %923 ], [ %1063, %1032 ], [ %1079, %1066 ], [ 1.000000e+00, %878 ]
  %1085 = phi float [ %1021, %923 ], [ %1064, %1032 ], [ %1080, %1066 ], [ 1.000000e+00, %878 ]
  %1086 = phi float [ %1022, %923 ], [ %1065, %1032 ], [ %1081, %1066 ], [ 1.000000e+00, %878 ]
  %1087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1088 = extractvalue %dx.types.CBufRet.i32 %1087, 1
  %1089 = and i32 %1088, 1
  %1090 = icmp ne i32 %1089, 0
  %1091 = add i32 %58, 356
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 32
  %1095 = icmp ne i32 %1094, 0
  %1096 = and i1 %1090, %1095
  %1097 = select i1 %1096, float 1.000000e+00, float %1084
  %1098 = select i1 %1096, float 0x3FD3333340000000, float %1085
  %1099 = select i1 %1096, float 0x3FD3333340000000, float %1086
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 32
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1176, label %1104

; <label>:1104                                    ; preds = %1082
  %1105 = add i32 %58, 92
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %58, 408
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1112, %dx.types.Handle %114, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = extractvalue %dx.types.ResRet.f32 %1113, 3
  %1118 = and i32 %1107, 255
  %1119 = uitofp i32 %1118 to float
  %1120 = lshr i32 %1107, 8
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1107, 16
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1125, 0x3F70101000000000
  %1127 = fmul fast float %1114, %1119
  %1128 = fadd fast float %1127, %1122
  %1129 = fmul fast float %1128, 0x3F70101000000000
  %1130 = fadd fast float %1115, -5.000000e-01
  %1131 = fadd fast float %1117, -5.000000e-01
  %1132 = fmul fast float %1130, %1126
  %1133 = fmul fast float %1131, %1126
  %1134 = fadd fast float %1132, 5.000000e-01
  %1135 = fadd fast float %1133, 5.000000e-01
  %1136 = fmul fast float %1134, 2.000000e+00
  %1137 = fadd fast float %1136, -1.000000e+00
  %1138 = fmul fast float %1135, 2.000000e+00
  %1139 = fadd fast float %1138, -1.000000e+00
  %1140 = fadd fast float %1137, %1139
  %1141 = fmul fast float %1140, 5.000000e-01
  %1142 = fsub fast float %1137, %1139
  %1143 = fmul fast float %1142, 5.000000e-01
  %1144 = call float @dx.op.unary.f32(i32 6, float %1141)  ; FAbs(value)
  %1145 = fsub fast float 1.000000e+00, %1144
  %1146 = call float @dx.op.unary.f32(i32 6, float %1143)  ; FAbs(value)
  %1147 = fsub fast float %1145, %1146
  %1148 = call float @dx.op.dot3.f32(i32 55, float %1141, float %1143, float %1147, float %1141, float %1143, float %1147)  ; Dot3(ax,ay,az,bx,by,bz)
  %1149 = call float @dx.op.unary.f32(i32 25, float %1148)  ; Rsqrt(value)
  %1150 = fmul fast float %1141, %1149
  %1151 = fmul fast float %1143, %1149
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 67108864
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1172, label %1156

; <label>:1156                                    ; preds = %1104
  %1157 = add i32 %58, 280
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 65535
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = lshr i32 %1159, 16
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fsub fast float %1129, %1167
  %1169 = fmul fast float %1168, %1161
  %1170 = fadd fast float %1169, %1165
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  br label %1172

; <label>:1172                                    ; preds = %1156, %1104
  %1173 = phi float [ %1171, %1156 ], [ %1129, %1104 ]
  %1174 = call float @dx.op.dot2.f32(i32 54, float %1150, float %1151, float %710, float %711)  ; Dot2(ax,ay,bx,by)
  %1175 = call float @dx.op.dot2.f32(i32 54, float %1150, float %1151, float %712, float %713)  ; Dot2(ax,ay,bx,by)
  br label %1176

; <label>:1176                                    ; preds = %1172, %1082
  %1177 = phi float [ %1173, %1172 ], [ 0x3FD6666660000000, %1082 ]
  %1178 = phi float [ %1174, %1172 ], [ 0.000000e+00, %1082 ]
  %1179 = phi float [ %1175, %1172 ], [ 0.000000e+00, %1082 ]
  %1180 = phi float [ %1116, %1172 ], [ 1.000000e+00, %1082 ]
  %1181 = add i32 %58, 160
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = lshr i32 %1183, 22
  %1185 = shl nuw nsw i32 %1184, 5
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 64
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1224, label %1191

; <label>:1191                                    ; preds = %1176
  %1192 = add i32 %58, 424
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = add i32 %1194, 0
  %1196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 131072
  %1200 = icmp eq i32 %1199, 0
  %1201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1196, %dx.types.Handle %114, float %806, float %807, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.ResRet.f32 %1201, 1
  %1204 = extractvalue %dx.types.ResRet.f32 %1201, 2
  %1205 = fmul fast float %1202, %277
  %1206 = fmul fast float %1203, %280
  %1207 = fmul fast float %1204, %283
  br i1 %1200, label %1214, label %1208

; <label>:1208                                    ; preds = %1191
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = fmul fast float %1210, %1205
  %1212 = fmul fast float %1210, %1206
  %1213 = fmul fast float %1210, %1207
  br label %1214

; <label>:1214                                    ; preds = %1208, %1191
  %1215 = phi float [ %1211, %1208 ], [ %1205, %1191 ]
  %1216 = phi float [ %1212, %1208 ], [ %1206, %1191 ]
  %1217 = phi float [ %1213, %1208 ], [ %1207, %1191 ]
  %1218 = fmul fast float %1215, %1186
  %1219 = select i1 %260, float %1218, float %1215
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1216, float %1217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = select i1 %260, float 0.000000e+00, float %1215
  %1222 = select i1 %260, float %1220, float %1216
  %1223 = select i1 %260, float 0.000000e+00, float %1217
  br label %1224

; <label>:1224                                    ; preds = %1214, %1176
  %1225 = phi float [ %1221, %1214 ], [ 0.000000e+00, %1176 ]
  %1226 = phi float [ %1222, %1214 ], [ 0.000000e+00, %1176 ]
  %1227 = phi float [ %1223, %1214 ], [ 0.000000e+00, %1176 ]
  %1228 = add i32 %58, 96
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = lshr i32 %1230, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1097, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = fmul fast float %1235, %1236
  %1238 = fadd fast float %1237, %1232
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  br label %1241

; <label>:1241                                    ; preds = %1224, %692
  %1242 = phi float [ 0.000000e+00, %692 ], [ %1178, %1224 ]
  %1243 = phi float [ 0.000000e+00, %692 ], [ %1179, %1224 ]
  %1244 = phi float [ 0.000000e+00, %692 ], [ %1097, %1224 ]
  %1245 = phi float [ 0.000000e+00, %692 ], [ %1098, %1224 ]
  %1246 = phi float [ 0.000000e+00, %692 ], [ %1099, %1224 ]
  %1247 = phi float [ 0.000000e+00, %692 ], [ %1225, %1224 ]
  %1248 = phi float [ 0.000000e+00, %692 ], [ %1226, %1224 ]
  %1249 = phi float [ 0.000000e+00, %692 ], [ %1227, %1224 ]
  %1250 = phi float [ 0.000000e+00, %692 ], [ %1083, %1224 ]
  %1251 = phi float [ 0.000000e+00, %692 ], [ %879, %1224 ]
  %1252 = phi float [ 0.000000e+00, %692 ], [ %1177, %1224 ]
  %1253 = phi float [ 0.000000e+00, %692 ], [ %1180, %1224 ]
  %1254 = phi float [ 0.000000e+00, %692 ], [ %1240, %1224 ]
  br i1 %640, label %1981, label %1255

; <label>:1255                                    ; preds = %1241
  %1256 = icmp ult i32 %698, 2
  %1257 = add i32 %58, 40
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = add i32 %58, 44
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = or i32 %1262, %1259
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1981, label %1265

; <label>:1265                                    ; preds = %1255
  %1266 = and i32 %1259, 262144
  %1267 = icmp ne i32 %1266, 0
  %1268 = select i1 %1267, float %64, float 1.000000e+00
  %1269 = select i1 %1267, float %65, float 0.000000e+00
  %1270 = select i1 %1267, float %66, float 0.000000e+00
  %1271 = select i1 %1267, float %67, float 1.000000e+00
  %1272 = select i1 %1267, float %68, float %96
  %1273 = select i1 %1267, float %69, float %97
  %1274 = add i32 %58, 300
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = fmul fast float %1278, 0x3F50624DE0000000
  %1280 = add i32 %58, 104
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 16
  %1284 = and i32 %1283, 255
  %1285 = lshr i32 %1282, 24
  %1286 = add i32 %58, 308
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1288, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = add i32 %58, 48
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 22
  %1297 = shl nuw nsw i32 %1296, 5
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = shl i32 %1295, 4
  %1300 = and i32 %1299, 32752
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = lshr i32 %1295, 7
  %1303 = and i32 %1302, 32752
  %1304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1303)  ; LegacyF16ToF32(value)
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1307 = fmul fast float %1306, 1.000000e+03
  %1308 = fmul fast float %1307, %419
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fadd fast float %1309, %407
  %1311 = fmul fast float %1307, %421
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = fadd fast float %1312, %408
  %1314 = fmul fast float %1279, %1307
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = fmul fast float %1315, 0x401921FB60000000
  %1317 = fadd fast float %1316, %1298
  %1318 = call float @dx.op.unary.f32(i32 13, float %1317)  ; Sin(value)
  %1319 = call float @dx.op.unary.f32(i32 12, float %1317)  ; Cos(value)
  %1320 = fsub fast float -0.000000e+00, %1318
  %1321 = fadd fast float %1272, -5.000000e-01
  %1322 = fadd fast float %1273, -5.000000e-01
  %1323 = fmul fast float %1290, %1321
  %1324 = fmul fast float %1292, %1322
  %1325 = fadd fast float %1323, 5.000000e-01
  %1326 = fadd fast float %1324, 5.000000e-01
  %1327 = fmul fast float %1301, %1325
  %1328 = fmul fast float %1304, %1326
  %1329 = fmul fast float %1319, %1327
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1320, float %1328, float %1329)  ; FMad(a,b,c)
  %1331 = fmul fast float %1318, %1327
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1319, float %1328, float %1331)  ; FMad(a,b,c)
  %1333 = fadd fast float %1310, %1330
  %1334 = fadd fast float %1313, %1332
  %1335 = icmp ugt i32 %1284, 1
  %1336 = icmp ugt i32 %1282, 33554431
  %1337 = or i1 %1336, %1335
  br i1 %1337, label %1338, label %1363

; <label>:1338                                    ; preds = %1265
  %1339 = add i32 %58, 244
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1339, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = lshr i32 %1341, 16
  %1343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1342)  ; LegacyF16ToF32(value)
  %1344 = fmul fast float %1306, %1343
  %1345 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1346 = mul nuw nsw i32 %1284, %1285
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1345, %1347
  %1349 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1350 = fptoui float %1349 to i32
  %1351 = urem i32 %1350, %1284
  %1352 = udiv i32 %1350, %1285
  %1353 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1354 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1355 = uitofp i32 %1351 to float
  %1356 = uitofp i32 %1352 to float
  %1357 = fadd fast float %1353, %1355
  %1358 = fadd fast float %1354, %1356
  %1359 = uitofp i32 %1284 to float
  %1360 = uitofp i32 %1285 to float
  %1361 = fdiv fast float %1357, %1359
  %1362 = fdiv fast float %1358, %1360
  br label %1363

; <label>:1363                                    ; preds = %1338, %1265
  %1364 = phi float [ %1361, %1338 ], [ %1333, %1265 ]
  %1365 = phi float [ %1362, %1338 ], [ %1334, %1265 ]
  %1366 = and i32 %1259, 256
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1414, label %1368

; <label>:1368                                    ; preds = %1363
  %1369 = add i32 %58, 460
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = add i32 %1371, 0
  %1373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1373, %dx.types.Handle %115, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = add i32 %58, 116
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = shl i32 %1378, 4
  %1380 = and i32 %1379, 32752
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = lshr i32 %1378, 7
  %1383 = and i32 %1382, 32752
  %1384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1383)  ; LegacyF16ToF32(value)
  %1385 = fsub fast float 1.000000e+00, %695
  %1386 = call float @dx.op.binary.f32(i32 35, float %1385, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1387 = bitcast float %695 to i32
  %1388 = sitofp i32 %1387 to float
  %1389 = fadd fast float %1388, 0xC1CFBF8940000000
  %1390 = fmul fast float %1384, %1389
  %1391 = fadd fast float %1390, 0x41CFBF8940000000
  %1392 = fptosi float %1391 to i32
  %1393 = bitcast i32 %1392 to float
  %1394 = bitcast float %1386 to i32
  %1395 = sitofp i32 %1394 to float
  %1396 = fadd fast float %1395, 0xC1CFBF8940000000
  %1397 = fmul fast float %1396, %1384
  %1398 = fadd fast float %1397, 0x41CFBF8940000000
  %1399 = fptosi float %1398 to i32
  %1400 = bitcast i32 %1399 to float
  %1401 = fmul fast float %1393, %1381
  %1402 = fmul fast float %1400, %1381
  %1403 = fsub fast float %1386, %1401
  %1404 = fadd fast float %1402, %1386
  %1405 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1406 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1407 = fsub fast float %1375, %1405
  %1408 = fsub fast float %1406, %1405
  %1409 = bitcast float %1408 to i32
  %1410 = sub nsw i32 2129859010, %1409
  %1411 = bitcast i32 %1410 to float
  %1412 = fmul fast float %1411, %1407
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  br label %1414

; <label>:1414                                    ; preds = %1368, %1363
  %1415 = phi float [ %1413, %1368 ], [ %695, %1363 ]
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 128
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1436, label %1420

; <label>:1420                                    ; preds = %1414
  %1421 = add i32 %58, 444
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = add i32 %1423, 0
  %1425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1425, %dx.types.Handle %115, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 524288
  %1431 = icmp ne i32 %1430, 0
  %1432 = fcmp fast ogt float %1427, 0x3FE0101020000000
  %1433 = select i1 %1432, float 1.000000e+00, float 0.000000e+00
  %1434 = select i1 %1431, float %1433, float %1427
  %1435 = fmul fast float %1434, %1415
  br label %1436

; <label>:1436                                    ; preds = %1420, %1414
  %1437 = phi float [ %1435, %1420 ], [ %1415, %1414 ]
  %1438 = fcmp fast ult float %1437, 0x3F70101020000000
  br i1 %1438, label %1981, label %1439

; <label>:1439                                    ; preds = %1436
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = and i32 %1441, 16
  %1443 = icmp eq i32 %1442, 0
  br i1 %1443, label %1642, label %1444

; <label>:1444                                    ; preds = %1439
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = add i32 %58, 396
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %114, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.f32 %1452, 1
  %1455 = extractvalue %dx.types.ResRet.f32 %1452, 2
  %1456 = extractvalue %dx.types.ResRet.f32 %1452, 3
  %1457 = and i32 %1446, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = lshr i32 %1446, 8
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = fmul fast float %1456, %1458
  %1463 = fadd fast float %1462, %1461
  %1464 = fmul fast float %1463, 0x3F70101000000000
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 512
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1477, label %1469

; <label>:1469                                    ; preds = %1444
  %1470 = add i32 %58, 476
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %1472, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1474, %dx.types.Handle %115, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  br label %1477

; <label>:1477                                    ; preds = %1469, %1444
  %1478 = phi float [ %1476, %1469 ], [ 1.000000e+00, %1444 ]
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 33554432
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1589, label %1483

; <label>:1483                                    ; preds = %1477
  %1484 = add i32 %58, 240
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 65535
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = lshr i32 %1486, 16
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = add i32 %58, 244
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1497 = extractvalue %dx.types.ResRet.i32 %1496, 0
  %1498 = lshr i32 %1497, 24
  %1499 = uitofp i32 %1498 to float
  %1500 = fmul fast float %1499, 0x3F70101020000000
  %1501 = and i32 %1497, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = lshr i32 %1497, 8
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = lshr i32 %1497, 16
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101020000000
  %1512 = add i32 %58, 236
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = lshr i32 %1514, 24
  %1516 = uitofp i32 %1515 to float
  %1517 = fmul fast float %1516, 0x3F70101020000000
  %1518 = and i32 %1514, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = lshr i32 %1514, 8
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = lshr i32 %1514, 16
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = bitcast float %1453 to i32
  %1530 = ashr i32 %1529, 1
  %1531 = sub nsw i32 1597463174, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = fmul fast float %1453, 5.000000e-01
  %1534 = fmul fast float %1532, %1532
  %1535 = fmul fast float %1534, %1533
  %1536 = fsub fast float 1.500000e+00, %1535
  %1537 = fmul fast float %1532, %1453
  %1538 = fmul fast float %1537, %1536
  %1539 = bitcast float %1454 to i32
  %1540 = ashr i32 %1539, 1
  %1541 = sub nsw i32 1597463174, %1540
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1454, 5.000000e-01
  %1544 = fmul fast float %1542, %1542
  %1545 = fmul fast float %1544, %1543
  %1546 = fsub fast float 1.500000e+00, %1545
  %1547 = fmul fast float %1542, %1454
  %1548 = fmul fast float %1547, %1546
  %1549 = bitcast float %1455 to i32
  %1550 = ashr i32 %1549, 1
  %1551 = sub nsw i32 1597463174, %1550
  %1552 = bitcast i32 %1551 to float
  %1553 = fmul fast float %1455, 5.000000e-01
  %1554 = fmul fast float %1552, %1552
  %1555 = fmul fast float %1554, %1553
  %1556 = fsub fast float 1.500000e+00, %1555
  %1557 = fmul fast float %1552, %1455
  %1558 = fmul fast float %1557, %1556
  %1559 = fsub fast float %1538, %1520
  %1560 = fsub fast float %1548, %1524
  %1561 = fsub fast float %1558, %1528
  %1562 = fmul fast float %1559, %1488
  %1563 = fmul fast float %1560, %1490
  %1564 = fmul fast float %1561, %1495
  %1565 = fadd fast float %1562, %1503
  %1566 = fadd fast float %1563, %1507
  %1567 = fadd fast float %1564, %1511
  %1568 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  %1569 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1570 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  %1571 = fmul fast float %1568, %1568
  %1572 = fmul fast float %1569, %1569
  %1573 = fmul fast float %1570, %1570
  %1574 = fsub fast float %1571, %1453
  %1575 = fsub fast float %1572, %1454
  %1576 = fsub fast float %1573, %1455
  %1577 = fmul fast float %1574, %1478
  %1578 = fmul fast float %1575, %1478
  %1579 = fmul fast float %1576, %1478
  %1580 = fadd fast float %1577, %1453
  %1581 = fadd fast float %1578, %1454
  %1582 = fadd fast float %1579, %1455
  %1583 = fadd fast float %1500, %1464
  %1584 = fsub fast float %1583, %1517
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fsub fast float %1585, %1464
  %1587 = fmul fast float %1586, %1478
  %1588 = fadd fast float %1587, %1464
  br label %1642

; <label>:1589                                    ; preds = %1477
  %1590 = and i32 %1480, 134217728
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1626, label %1592

; <label>:1592                                    ; preds = %1589
  %1593 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %1594 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %1595 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %1596 = fadd fast float %1593, -5.000000e-01
  %1597 = fadd fast float %1594, -5.000000e-01
  %1598 = fadd fast float %1595, -5.000000e-01
  %1599 = fmul fast float %1596, %1478
  %1600 = fmul fast float %1597, %1478
  %1601 = fmul fast float %1598, %1478
  %1602 = fadd fast float %1599, 5.000000e-01
  %1603 = fadd fast float %1600, 5.000000e-01
  %1604 = fadd fast float %1601, 5.000000e-01
  %1605 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1606 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1607 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1608 = fmul fast float %1602, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1605
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1605
  %1613 = fmul fast float %1603, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1606
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1606
  %1618 = fmul fast float %1604, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1607
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1607
  %1623 = fmul fast float %1612, %1612
  %1624 = fmul fast float %1617, %1617
  %1625 = fmul fast float %1622, %1622
  br label %1642

; <label>:1626                                    ; preds = %1589
  %1627 = fmul fast float %395, %395
  %1628 = fmul fast float %396, %396
  %1629 = fmul fast float %397, %397
  %1630 = fadd fast float %1627, -1.000000e+00
  %1631 = fadd fast float %1628, -1.000000e+00
  %1632 = fadd fast float %1629, -1.000000e+00
  %1633 = fmul fast float %1478, %1630
  %1634 = fmul fast float %1478, %1631
  %1635 = fmul fast float %1478, %1632
  %1636 = fadd fast float %1633, 1.000000e+00
  %1637 = fadd fast float %1634, 1.000000e+00
  %1638 = fadd fast float %1635, 1.000000e+00
  %1639 = fmul fast float %1636, %1453
  %1640 = fmul fast float %1637, %1454
  %1641 = fmul fast float %1638, %1455
  br label %1642

; <label>:1642                                    ; preds = %1626, %1592, %1483, %1439
  %1643 = phi float [ %1588, %1483 ], [ %1464, %1592 ], [ %1464, %1626 ], [ 0x3FA23C0BE0000000, %1439 ]
  %1644 = phi float [ %1580, %1483 ], [ %1623, %1592 ], [ %1639, %1626 ], [ 1.000000e+00, %1439 ]
  %1645 = phi float [ %1581, %1483 ], [ %1624, %1592 ], [ %1640, %1626 ], [ 1.000000e+00, %1439 ]
  %1646 = phi float [ %1582, %1483 ], [ %1625, %1592 ], [ %1641, %1626 ], [ 1.000000e+00, %1439 ]
  %1647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.i32 %1647, 1
  %1649 = and i32 %1648, 1
  %1650 = icmp ne i32 %1649, 0
  %1651 = add i32 %58, 356
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 32
  %1655 = icmp ne i32 %1654, 0
  %1656 = and i1 %1650, %1655
  %1657 = select i1 %1656, float 1.000000e+00, float %1644
  %1658 = select i1 %1656, float 0x3FD3333340000000, float %1645
  %1659 = select i1 %1656, float 0x3FD3333340000000, float %1646
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = and i32 %1661, 32
  %1663 = icmp eq i32 %1662, 0
  br i1 %1663, label %1736, label %1664

; <label>:1664                                    ; preds = %1642
  %1665 = add i32 %58, 108
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1665, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = add i32 %58, 412
  %1669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1668, i32 undef)  ; BufferLoad(srv,index,wot)
  %1670 = extractvalue %dx.types.ResRet.i32 %1669, 0
  %1671 = add i32 %1670, 0
  %1672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1672, %dx.types.Handle %114, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = extractvalue %dx.types.ResRet.f32 %1673, 3
  %1678 = and i32 %1667, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = lshr i32 %1667, 8
  %1681 = and i32 %1680, 255
  %1682 = uitofp i32 %1681 to float
  %1683 = lshr i32 %1667, 16
  %1684 = and i32 %1683, 255
  %1685 = uitofp i32 %1684 to float
  %1686 = fmul fast float %1685, 0x3F70101000000000
  %1687 = fmul fast float %1674, %1679
  %1688 = fadd fast float %1687, %1682
  %1689 = fmul fast float %1688, 0x3F70101000000000
  %1690 = fadd fast float %1675, -5.000000e-01
  %1691 = fadd fast float %1677, -5.000000e-01
  %1692 = fmul fast float %1690, %1686
  %1693 = fmul fast float %1691, %1686
  %1694 = fadd fast float %1692, 5.000000e-01
  %1695 = fadd fast float %1693, 5.000000e-01
  %1696 = fmul fast float %1694, 2.000000e+00
  %1697 = fadd fast float %1696, -1.000000e+00
  %1698 = fmul fast float %1695, 2.000000e+00
  %1699 = fadd fast float %1698, -1.000000e+00
  %1700 = fadd fast float %1697, %1699
  %1701 = fmul fast float %1700, 5.000000e-01
  %1702 = fsub fast float %1697, %1699
  %1703 = fmul fast float %1702, 5.000000e-01
  %1704 = call float @dx.op.unary.f32(i32 6, float %1701)  ; FAbs(value)
  %1705 = fsub fast float 1.000000e+00, %1704
  %1706 = call float @dx.op.unary.f32(i32 6, float %1703)  ; FAbs(value)
  %1707 = fsub fast float %1705, %1706
  %1708 = call float @dx.op.dot3.f32(i32 55, float %1701, float %1703, float %1707, float %1701, float %1703, float %1707)  ; Dot3(ax,ay,az,bx,by,bz)
  %1709 = call float @dx.op.unary.f32(i32 25, float %1708)  ; Rsqrt(value)
  %1710 = fmul fast float %1701, %1709
  %1711 = fmul fast float %1703, %1709
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 67108864
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1732, label %1716

; <label>:1716                                    ; preds = %1664
  %1717 = add i32 %58, 296
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 65535
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 65535
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = lshr i32 %1719, 16
  %1727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1726)  ; LegacyF16ToF32(value)
  %1728 = fsub fast float %1689, %1727
  %1729 = fmul fast float %1728, %1721
  %1730 = fadd fast float %1729, %1725
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  br label %1732

; <label>:1732                                    ; preds = %1716, %1664
  %1733 = phi float [ %1731, %1716 ], [ %1689, %1664 ]
  %1734 = call float @dx.op.dot2.f32(i32 54, float %1710, float %1711, float %1268, float %1269)  ; Dot2(ax,ay,bx,by)
  %1735 = call float @dx.op.dot2.f32(i32 54, float %1710, float %1711, float %1270, float %1271)  ; Dot2(ax,ay,bx,by)
  br label %1736

; <label>:1736                                    ; preds = %1732, %1642
  %1737 = phi float [ %1733, %1732 ], [ 0x3FD6666660000000, %1642 ]
  %1738 = phi float [ %1734, %1732 ], [ 0.000000e+00, %1642 ]
  %1739 = phi float [ %1735, %1732 ], [ 0.000000e+00, %1642 ]
  %1740 = phi float [ %1676, %1732 ], [ 1.000000e+00, %1642 ]
  %1741 = add i32 %58, 176
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = lshr i32 %1743, 22
  %1745 = shl nuw nsw i32 %1744, 5
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 64
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1784, label %1751

; <label>:1751                                    ; preds = %1736
  %1752 = add i32 %58, 428
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = add i32 %1754, 0
  %1756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 131072
  %1760 = icmp eq i32 %1759, 0
  %1761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1756, %dx.types.Handle %114, float %1364, float %1365, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = fmul fast float %378, %1762
  %1766 = fmul fast float %379, %1763
  %1767 = fmul fast float %380, %1764
  br i1 %1760, label %1774, label %1768

; <label>:1768                                    ; preds = %1751
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1771 = fmul fast float %1770, %1765
  %1772 = fmul fast float %1770, %1766
  %1773 = fmul fast float %1770, %1767
  br label %1774

; <label>:1774                                    ; preds = %1768, %1751
  %1775 = phi float [ %1771, %1768 ], [ %1765, %1751 ]
  %1776 = phi float [ %1772, %1768 ], [ %1766, %1751 ]
  %1777 = phi float [ %1773, %1768 ], [ %1767, %1751 ]
  %1778 = fmul fast float %1775, %1746
  %1779 = select i1 %260, float %1778, float %1775
  %1780 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1776, float %1777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1781 = select i1 %260, float 0.000000e+00, float %1775
  %1782 = select i1 %260, float %1780, float %1776
  %1783 = select i1 %260, float 0.000000e+00, float %1777
  br label %1784

; <label>:1784                                    ; preds = %1774, %1736
  %1785 = phi float [ %1781, %1774 ], [ 0.000000e+00, %1736 ]
  %1786 = phi float [ %1782, %1774 ], [ 0.000000e+00, %1736 ]
  %1787 = phi float [ %1783, %1774 ], [ 0.000000e+00, %1736 ]
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = add i32 %58, 112
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = lshr i32 %1792, 8
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1658, float %1659, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = fmul fast float %1797, %1798
  %1800 = fadd fast float %1799, %1794
  %1801 = fmul fast float %1800, 0x3F70101020000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  br i1 %1256, label %1803, label %1811

; <label>:1803                                    ; preds = %1784
  %1804 = fsub fast float 1.000000e+00, %1437
  %1805 = fmul fast float %1804, %1244
  %1806 = fmul fast float %1804, %1245
  %1807 = fmul fast float %1804, %1246
  %1808 = fmul fast float %1804, %1247
  %1809 = fmul fast float %1804, %1248
  %1810 = fmul fast float %1804, %1249
  br label %1811

; <label>:1811                                    ; preds = %1803, %1784
  %1812 = phi float [ %1805, %1803 ], [ %1244, %1784 ]
  %1813 = phi float [ %1806, %1803 ], [ %1245, %1784 ]
  %1814 = phi float [ %1807, %1803 ], [ %1246, %1784 ]
  %1815 = phi float [ %1808, %1803 ], [ %1247, %1784 ]
  %1816 = phi float [ %1809, %1803 ], [ %1248, %1784 ]
  %1817 = phi float [ %1810, %1803 ], [ %1249, %1784 ]
  %1818 = and i32 %1789, 3
  %1819 = icmp eq i32 %1818, 3
  br i1 %1819, label %1898, label %1820

; <label>:1820                                    ; preds = %1811
  %1821 = and i32 %1789, 16
  %1822 = icmp ne i32 %1821, 0
  %1823 = select i1 %1822, float %1437, float 0.000000e+00
  %1824 = icmp eq i32 %1818, 0
  br i1 %1824, label %1825, label %1853

; <label>:1825                                    ; preds = %1820
  %1826 = and i32 %1789, 64
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %1437, float 0.000000e+00
  %1829 = fsub fast float %1657, %1812
  %1830 = fsub fast float %1658, %1813
  %1831 = fsub fast float %1659, %1814
  %1832 = fmul fast float %1823, %1829
  %1833 = fmul fast float %1823, %1830
  %1834 = fmul fast float %1823, %1831
  %1835 = fadd fast float %1832, %1812
  %1836 = fadd fast float %1833, %1813
  %1837 = fadd fast float %1834, %1814
  %1838 = fsub fast float %1643, %1250
  %1839 = fmul fast float %1823, %1838
  %1840 = fadd fast float %1839, %1250
  %1841 = fsub fast float %1785, %1815
  %1842 = fsub fast float %1786, %1816
  %1843 = fsub fast float %1787, %1817
  %1844 = fmul fast float %1828, %1841
  %1845 = fmul fast float %1828, %1842
  %1846 = fmul fast float %1828, %1843
  %1847 = fadd fast float %1844, %1815
  %1848 = fadd fast float %1845, %1816
  %1849 = fadd fast float %1846, %1817
  %1850 = fsub fast float %1802, %1254
  %1851 = fmul fast float %1823, %1850
  %1852 = fadd fast float %1851, %1254
  br label %1898

; <label>:1853                                    ; preds = %1820
  %1854 = icmp eq i32 %1818, 1
  br i1 %1854, label %1855, label %1868

; <label>:1855                                    ; preds = %1853
  %1856 = fadd fast float %1657, -1.000000e+00
  %1857 = fadd fast float %1658, -1.000000e+00
  %1858 = fadd fast float %1659, -1.000000e+00
  %1859 = fmul fast float %1823, %1856
  %1860 = fmul fast float %1823, %1857
  %1861 = fmul fast float %1823, %1858
  %1862 = fadd fast float %1859, 1.000000e+00
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fmul fast float %1862, %1812
  %1866 = fmul fast float %1863, %1813
  %1867 = fmul fast float %1864, %1814
  br label %1898

; <label>:1868                                    ; preds = %1853
  %1869 = icmp eq i32 %1818, 2
  br i1 %1869, label %1870, label %1898

; <label>:1870                                    ; preds = %1868
  %1871 = call float @dx.op.unary.f32(i32 24, float %1657)  ; Sqrt(value)
  %1872 = call float @dx.op.unary.f32(i32 24, float %1658)  ; Sqrt(value)
  %1873 = call float @dx.op.unary.f32(i32 24, float %1659)  ; Sqrt(value)
  %1874 = fadd fast float %1871, -5.000000e-01
  %1875 = fadd fast float %1872, -5.000000e-01
  %1876 = fadd fast float %1873, -5.000000e-01
  %1877 = fmul fast float %1874, %1823
  %1878 = fmul fast float %1875, %1823
  %1879 = fmul fast float %1876, %1823
  %1880 = fadd fast float %1877, 5.000000e-01
  %1881 = fadd fast float %1878, 5.000000e-01
  %1882 = fadd fast float %1879, 5.000000e-01
  %1883 = fmul fast float %1880, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1812
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1812
  %1888 = fmul fast float %1881, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1813
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1813
  %1893 = fmul fast float %1882, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1814
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1814
  br label %1898

; <label>:1898                                    ; preds = %1870, %1868, %1855, %1825, %1811
  %1899 = phi float [ %1812, %1811 ], [ %1887, %1870 ], [ %1812, %1868 ], [ %1865, %1855 ], [ %1835, %1825 ]
  %1900 = phi float [ %1813, %1811 ], [ %1892, %1870 ], [ %1813, %1868 ], [ %1866, %1855 ], [ %1836, %1825 ]
  %1901 = phi float [ %1814, %1811 ], [ %1897, %1870 ], [ %1814, %1868 ], [ %1867, %1855 ], [ %1837, %1825 ]
  %1902 = phi float [ %1815, %1811 ], [ %1815, %1870 ], [ %1815, %1868 ], [ %1815, %1855 ], [ %1847, %1825 ]
  %1903 = phi float [ %1816, %1811 ], [ %1816, %1870 ], [ %1816, %1868 ], [ %1816, %1855 ], [ %1848, %1825 ]
  %1904 = phi float [ %1817, %1811 ], [ %1817, %1870 ], [ %1817, %1868 ], [ %1817, %1855 ], [ %1849, %1825 ]
  %1905 = phi float [ %1250, %1811 ], [ %1250, %1870 ], [ %1250, %1868 ], [ %1250, %1855 ], [ %1840, %1825 ]
  %1906 = phi float [ %1254, %1811 ], [ %1254, %1870 ], [ %1254, %1868 ], [ %1254, %1855 ], [ %1852, %1825 ]
  %1907 = and i32 %1789, 12
  %1908 = icmp eq i32 %1907, 12
  br i1 %1908, label %1981, label %1909

; <label>:1909                                    ; preds = %1898
  %1910 = and i32 %1789, 2097184
  %1911 = icmp eq i32 %1910, 2097184
  %1912 = select i1 %1911, float %1437, float 0.000000e+00
  %1913 = and i32 %1789, 4194336
  %1914 = icmp eq i32 %1913, 4194336
  %1915 = select i1 %1914, float %1437, float 0.000000e+00
  %1916 = and i32 %1789, 8388640
  %1917 = icmp eq i32 %1916, 8388640
  %1918 = select i1 %1917, float %1437, float 0.000000e+00
  %1919 = icmp eq i32 %1907, 0
  br i1 %1919, label %1920, label %1933

; <label>:1920                                    ; preds = %1909
  %1921 = fsub fast float %1738, %1242
  %1922 = fsub fast float %1739, %1243
  %1923 = fmul fast float %1912, %1921
  %1924 = fmul fast float %1912, %1922
  %1925 = fadd fast float %1923, %1242
  %1926 = fadd fast float %1924, %1243
  %1927 = fsub fast float %1740, %1253
  %1928 = fmul fast float %1915, %1927
  %1929 = fadd fast float %1928, %1253
  %1930 = fsub fast float %1737, %1252
  %1931 = fmul fast float %1918, %1930
  %1932 = fadd fast float %1931, %1252
  br label %1981

; <label>:1933                                    ; preds = %1909
  %1934 = icmp eq i32 %1907, 4
  br i1 %1934, label %1935, label %1967

; <label>:1935                                    ; preds = %1933
  %1936 = fmul fast float %1912, %1738
  %1937 = fmul fast float %1912, %1739
  %1938 = fadd fast float %1936, %1242
  %1939 = fadd fast float %1937, %1243
  %1940 = call float @dx.op.binary.f32(i32 36, float %1253, float %1740)  ; FMin(a,b)
  %1941 = fsub fast float %1940, %1253
  %1942 = fmul fast float %1941, %1915
  %1943 = fadd fast float %1942, %1253
  %1944 = fadd fast float %1737, %1252
  %1945 = fmul fast float %1944, 0x3FF337FAE0000000
  %1946 = fmul fast float %1252, %1252
  %1947 = fmul fast float %1737, %1737
  %1948 = fadd fast float %1947, %1946
  %1949 = fmul fast float %1948, 0x3FE5152B00000000
  %1950 = fmul fast float %1252, 0xBFCC1F85E0000000
  %1951 = fmul fast float %1950, %1737
  %1952 = fadd fast float %1951, 0xBFE1363700000000
  %1953 = fadd fast float %1952, %1945
  %1954 = fsub fast float %1953, %1949
  %1955 = fmul fast float %1944, 0x3FBA6F0D00000000
  %1956 = fmul fast float %1948, 0x3FD0432880000000
  %1957 = fmul fast float %1252, 0xBFEF110800000000
  %1958 = fmul fast float %1957, %1737
  %1959 = fadd fast float %1958, 1.000000e+00
  %1960 = fsub fast float %1959, %1955
  %1961 = fadd fast float %1960, %1956
  %1962 = fdiv fast float %1954, %1961
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  %1964 = fsub fast float %1963, %1252
  %1965 = fmul fast float %1964, %1918
  %1966 = fadd fast float %1965, %1252
  br label %1981

; <label>:1967                                    ; preds = %1933
  %1968 = icmp eq i32 %1907, 8
  br i1 %1968, label %1969, label %1981

; <label>:1969                                    ; preds = %1967
  %1970 = fmul fast float %1912, %1738
  %1971 = fmul fast float %1912, %1739
  %1972 = fadd fast float %1970, %1242
  %1973 = fadd fast float %1971, %1243
  %1974 = call float @dx.op.binary.f32(i32 36, float %1253, float %1740)  ; FMin(a,b)
  %1975 = fsub fast float %1974, %1253
  %1976 = fmul fast float %1975, %1915
  %1977 = fadd fast float %1976, %1253
  %1978 = fsub fast float %1737, %1252
  %1979 = fmul fast float %1918, %1978
  %1980 = fadd fast float %1979, %1252
  br label %1981

; <label>:1981                                    ; preds = %1969, %1967, %1935, %1920, %1898, %1436, %1255, %1241
  %1982 = phi float [ %1242, %1898 ], [ %1242, %1436 ], [ %1242, %1241 ], [ %1972, %1969 ], [ %1242, %1967 ], [ %1938, %1935 ], [ %1925, %1920 ], [ %1242, %1255 ]
  %1983 = phi float [ %1243, %1898 ], [ %1243, %1436 ], [ %1243, %1241 ], [ %1973, %1969 ], [ %1243, %1967 ], [ %1939, %1935 ], [ %1926, %1920 ], [ %1243, %1255 ]
  %1984 = phi float [ %1899, %1898 ], [ %1244, %1436 ], [ %1244, %1241 ], [ %1899, %1969 ], [ %1899, %1967 ], [ %1899, %1935 ], [ %1899, %1920 ], [ %1244, %1255 ]
  %1985 = phi float [ %1900, %1898 ], [ %1245, %1436 ], [ %1245, %1241 ], [ %1900, %1969 ], [ %1900, %1967 ], [ %1900, %1935 ], [ %1900, %1920 ], [ %1245, %1255 ]
  %1986 = phi float [ %1901, %1898 ], [ %1246, %1436 ], [ %1246, %1241 ], [ %1901, %1969 ], [ %1901, %1967 ], [ %1901, %1935 ], [ %1901, %1920 ], [ %1246, %1255 ]
  %1987 = phi float [ %1902, %1898 ], [ %1247, %1436 ], [ %1247, %1241 ], [ %1902, %1969 ], [ %1902, %1967 ], [ %1902, %1935 ], [ %1902, %1920 ], [ %1247, %1255 ]
  %1988 = phi float [ %1903, %1898 ], [ %1248, %1436 ], [ %1248, %1241 ], [ %1903, %1969 ], [ %1903, %1967 ], [ %1903, %1935 ], [ %1903, %1920 ], [ %1248, %1255 ]
  %1989 = phi float [ %1904, %1898 ], [ %1249, %1436 ], [ %1249, %1241 ], [ %1904, %1969 ], [ %1904, %1967 ], [ %1904, %1935 ], [ %1904, %1920 ], [ %1249, %1255 ]
  %1990 = phi float [ %1905, %1898 ], [ %1250, %1436 ], [ %1250, %1241 ], [ %1905, %1969 ], [ %1905, %1967 ], [ %1905, %1935 ], [ %1905, %1920 ], [ %1250, %1255 ]
  %1991 = phi float [ %1252, %1898 ], [ %1252, %1436 ], [ %1252, %1241 ], [ %1980, %1969 ], [ %1252, %1967 ], [ %1966, %1935 ], [ %1932, %1920 ], [ %1252, %1255 ]
  %1992 = phi float [ %1253, %1898 ], [ %1253, %1436 ], [ %1253, %1241 ], [ %1977, %1969 ], [ %1253, %1967 ], [ %1943, %1935 ], [ %1929, %1920 ], [ %1253, %1255 ]
  %1993 = phi float [ %1906, %1898 ], [ %1254, %1436 ], [ %1254, %1241 ], [ %1906, %1969 ], [ %1906, %1967 ], [ %1906, %1935 ], [ %1906, %1920 ], [ %1254, %1255 ]
  br i1 %642, label %2720, label %1994

; <label>:1994                                    ; preds = %1981
  %1995 = icmp ult i32 %698, 3
  %1996 = add i32 %58, 56
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = add i32 %58, 60
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = or i32 %2001, %1998
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2720, label %2004

; <label>:2004                                    ; preds = %1994
  %2005 = and i32 %1998, 262144
  %2006 = icmp ne i32 %2005, 0
  %2007 = select i1 %2006, float %64, float 1.000000e+00
  %2008 = select i1 %2006, float %65, float 0.000000e+00
  %2009 = select i1 %2006, float %66, float 0.000000e+00
  %2010 = select i1 %2006, float %67, float 1.000000e+00
  %2011 = select i1 %2006, float %68, float %96
  %2012 = select i1 %2006, float %69, float %97
  %2013 = add i32 %58, 316
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = lshr i32 %2015, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = fmul fast float %2017, 0x3F50624DE0000000
  %2019 = add i32 %58, 120
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = lshr i32 %2021, 16
  %2023 = and i32 %2022, 255
  %2024 = lshr i32 %2021, 24
  %2025 = add i32 %58, 324
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 65535
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = lshr i32 %2027, 16
  %2031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2030)  ; LegacyF16ToF32(value)
  %2032 = add i32 %58, 64
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 22
  %2036 = shl nuw nsw i32 %2035, 5
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = shl i32 %2034, 4
  %2039 = and i32 %2038, 32752
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = lshr i32 %2034, 7
  %2042 = and i32 %2041, 32752
  %2043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2042)  ; LegacyF16ToF32(value)
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2046 = fmul fast float %2045, 1.000000e+03
  %2047 = fmul fast float %2046, %526
  %2048 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2049 = fadd fast float %2048, %514
  %2050 = fmul fast float %2046, %528
  %2051 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2052 = fadd fast float %2051, %515
  %2053 = fmul fast float %2018, %2046
  %2054 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2055 = fmul fast float %2054, 0x401921FB60000000
  %2056 = fadd fast float %2055, %2037
  %2057 = call float @dx.op.unary.f32(i32 13, float %2056)  ; Sin(value)
  %2058 = call float @dx.op.unary.f32(i32 12, float %2056)  ; Cos(value)
  %2059 = fsub fast float -0.000000e+00, %2057
  %2060 = fadd fast float %2011, -5.000000e-01
  %2061 = fadd fast float %2012, -5.000000e-01
  %2062 = fmul fast float %2029, %2060
  %2063 = fmul fast float %2031, %2061
  %2064 = fadd fast float %2062, 5.000000e-01
  %2065 = fadd fast float %2063, 5.000000e-01
  %2066 = fmul fast float %2040, %2064
  %2067 = fmul fast float %2043, %2065
  %2068 = fmul fast float %2058, %2066
  %2069 = call float @dx.op.tertiary.f32(i32 46, float %2059, float %2067, float %2068)  ; FMad(a,b,c)
  %2070 = fmul fast float %2057, %2066
  %2071 = call float @dx.op.tertiary.f32(i32 46, float %2058, float %2067, float %2070)  ; FMad(a,b,c)
  %2072 = fadd fast float %2049, %2069
  %2073 = fadd fast float %2052, %2071
  %2074 = icmp ugt i32 %2023, 1
  %2075 = icmp ugt i32 %2021, 33554431
  %2076 = or i1 %2075, %2074
  br i1 %2076, label %2077, label %2102

; <label>:2077                                    ; preds = %2004
  %2078 = add i32 %58, 260
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 16
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = fmul fast float %2045, %2082
  %2084 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2085 = mul nuw nsw i32 %2023, %2024
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2084, %2086
  %2088 = call float @dx.op.unary.f32(i32 27, float %2087)  ; Round_ni(value)
  %2089 = fptoui float %2088 to i32
  %2090 = urem i32 %2089, %2023
  %2091 = udiv i32 %2089, %2024
  %2092 = call float @dx.op.unary.f32(i32 22, float %2072)  ; Frc(value)
  %2093 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2094 = uitofp i32 %2090 to float
  %2095 = uitofp i32 %2091 to float
  %2096 = fadd fast float %2092, %2094
  %2097 = fadd fast float %2093, %2095
  %2098 = uitofp i32 %2023 to float
  %2099 = uitofp i32 %2024 to float
  %2100 = fdiv fast float %2096, %2098
  %2101 = fdiv fast float %2097, %2099
  br label %2102

; <label>:2102                                    ; preds = %2077, %2004
  %2103 = phi float [ %2100, %2077 ], [ %2072, %2004 ]
  %2104 = phi float [ %2101, %2077 ], [ %2073, %2004 ]
  %2105 = and i32 %1998, 256
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2153, label %2107

; <label>:2107                                    ; preds = %2102
  %2108 = add i32 %58, 464
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %2110, 0
  %2112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2112, %dx.types.Handle %115, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = add i32 %58, 132
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = shl i32 %2117, 4
  %2119 = and i32 %2118, 32752
  %2120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2119)  ; LegacyF16ToF32(value)
  %2121 = lshr i32 %2117, 7
  %2122 = and i32 %2121, 32752
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fsub fast float 1.000000e+00, %694
  %2125 = call float @dx.op.binary.f32(i32 35, float %2124, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2126 = bitcast float %694 to i32
  %2127 = sitofp i32 %2126 to float
  %2128 = fadd fast float %2127, 0xC1CFBF8940000000
  %2129 = fmul fast float %2123, %2128
  %2130 = fadd fast float %2129, 0x41CFBF8940000000
  %2131 = fptosi float %2130 to i32
  %2132 = bitcast i32 %2131 to float
  %2133 = bitcast float %2125 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2135, %2123
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2132, %2120
  %2141 = fmul fast float %2139, %2120
  %2142 = fsub fast float %2125, %2140
  %2143 = fadd fast float %2141, %2125
  %2144 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2145 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2146 = fsub fast float %2114, %2144
  %2147 = fsub fast float %2145, %2144
  %2148 = bitcast float %2147 to i32
  %2149 = sub nsw i32 2129859010, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2150, %2146
  %2152 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  br label %2153

; <label>:2153                                    ; preds = %2107, %2102
  %2154 = phi float [ %2152, %2107 ], [ %694, %2102 ]
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 128
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2175, label %2159

; <label>:2159                                    ; preds = %2153
  %2160 = add i32 %58, 448
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %115, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 524288
  %2170 = icmp ne i32 %2169, 0
  %2171 = fcmp fast ogt float %2166, 0x3FE0101020000000
  %2172 = select i1 %2171, float 1.000000e+00, float 0.000000e+00
  %2173 = select i1 %2170, float %2172, float %2166
  %2174 = fmul fast float %2173, %2154
  br label %2175

; <label>:2175                                    ; preds = %2159, %2153
  %2176 = phi float [ %2174, %2159 ], [ %2154, %2153 ]
  %2177 = fcmp fast ult float %2176, 0x3F70101020000000
  br i1 %2177, label %2720, label %2178

; <label>:2178                                    ; preds = %2175
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 16
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2381, label %2183

; <label>:2183                                    ; preds = %2178
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = add i32 %58, 400
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = add i32 %2188, 0
  %2190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2190, %dx.types.Handle %114, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2192 = extractvalue %dx.types.ResRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.ResRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.ResRet.f32 %2191, 2
  %2195 = extractvalue %dx.types.ResRet.f32 %2191, 3
  %2196 = and i32 %2185, 255
  %2197 = uitofp i32 %2196 to float
  %2198 = lshr i32 %2185, 8
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2195, %2197
  %2202 = fadd fast float %2201, %2200
  %2203 = fmul fast float %2202, 0x3F70101000000000
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 512
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2216, label %2208

; <label>:2208                                    ; preds = %2183
  %2209 = add i32 %58, 480
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = add i32 %2211, 0
  %2213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2213, %dx.types.Handle %115, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2215 = extractvalue %dx.types.ResRet.f32 %2214, 0
  br label %2216

; <label>:2216                                    ; preds = %2208, %2183
  %2217 = phi float [ %2215, %2208 ], [ 1.000000e+00, %2183 ]
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = and i32 %2219, 33554432
  %2221 = icmp eq i32 %2220, 0
  br i1 %2221, label %2328, label %2222

; <label>:2222                                    ; preds = %2216
  %2223 = add i32 %58, 256
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = and i32 %2225, 65535
  %2227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2226)  ; LegacyF16ToF32(value)
  %2228 = lshr i32 %2225, 16
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = add i32 %58, 260
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = lshr i32 %2236, 24
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = and i32 %2236, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = lshr i32 %2236, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = lshr i32 %2236, 16
  %2248 = and i32 %2247, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = add i32 %58, 252
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = lshr i32 %2253, 24
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = and i32 %2253, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = lshr i32 %2253, 8
  %2261 = and i32 %2260, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = lshr i32 %2253, 16
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = bitcast float %2192 to i32
  %2269 = ashr i32 %2268, 1
  %2270 = sub nsw i32 1597463174, %2269
  %2271 = bitcast i32 %2270 to float
  %2272 = fmul fast float %2192, 5.000000e-01
  %2273 = fmul fast float %2271, %2271
  %2274 = fmul fast float %2273, %2272
  %2275 = fsub fast float 1.500000e+00, %2274
  %2276 = fmul fast float %2271, %2192
  %2277 = fmul fast float %2276, %2275
  %2278 = bitcast float %2193 to i32
  %2279 = ashr i32 %2278, 1
  %2280 = sub nsw i32 1597463174, %2279
  %2281 = bitcast i32 %2280 to float
  %2282 = fmul fast float %2193, 5.000000e-01
  %2283 = fmul fast float %2281, %2281
  %2284 = fmul fast float %2283, %2282
  %2285 = fsub fast float 1.500000e+00, %2284
  %2286 = fmul fast float %2281, %2193
  %2287 = fmul fast float %2286, %2285
  %2288 = bitcast float %2194 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = sub nsw i32 1597463174, %2289
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2194, 5.000000e-01
  %2293 = fmul fast float %2291, %2291
  %2294 = fmul fast float %2293, %2292
  %2295 = fsub fast float 1.500000e+00, %2294
  %2296 = fmul fast float %2291, %2194
  %2297 = fmul fast float %2296, %2295
  %2298 = fsub fast float %2277, %2259
  %2299 = fsub fast float %2287, %2263
  %2300 = fsub fast float %2297, %2267
  %2301 = fmul fast float %2298, %2227
  %2302 = fmul fast float %2299, %2229
  %2303 = fmul fast float %2300, %2234
  %2304 = fadd fast float %2301, %2242
  %2305 = fadd fast float %2302, %2246
  %2306 = fadd fast float %2303, %2250
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2308, %2308
  %2312 = fmul fast float %2309, %2309
  %2313 = fsub fast float %2310, %2192
  %2314 = fsub fast float %2311, %2193
  %2315 = fsub fast float %2312, %2194
  %2316 = fmul fast float %2313, %2217
  %2317 = fmul fast float %2314, %2217
  %2318 = fmul fast float %2315, %2217
  %2319 = fadd fast float %2316, %2192
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2239, %2203
  %2323 = fsub fast float %2322, %2256
  %2324 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2325 = fsub fast float %2324, %2203
  %2326 = fmul fast float %2325, %2217
  %2327 = fadd fast float %2326, %2203
  br label %2381

; <label>:2328                                    ; preds = %2216
  %2329 = and i32 %2219, 134217728
  %2330 = icmp eq i32 %2329, 0
  br i1 %2330, label %2365, label %2331

; <label>:2331                                    ; preds = %2328
  %2332 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %2335 = fadd fast float %2332, -5.000000e-01
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fmul fast float %2335, %2217
  %2339 = fmul fast float %2336, %2217
  %2340 = fmul fast float %2337, %2217
  %2341 = fadd fast float %2338, 5.000000e-01
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = fmul fast float %2341, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, %2344
  %2350 = fadd fast float %2349, %2347
  %2351 = fmul fast float %2350, %2344
  %2352 = fmul fast float %2342, 2.000000e+00
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2353, %2345
  %2355 = fadd fast float %2354, %2352
  %2356 = fmul fast float %2355, %2345
  %2357 = fmul fast float %2343, 2.000000e+00
  %2358 = fsub fast float 1.000000e+00, %2357
  %2359 = fmul fast float %2358, %2346
  %2360 = fadd fast float %2359, %2357
  %2361 = fmul fast float %2360, %2346
  %2362 = fmul fast float %2351, %2351
  %2363 = fmul fast float %2356, %2356
  %2364 = fmul fast float %2361, %2361
  br label %2381

; <label>:2365                                    ; preds = %2328
  %2366 = fmul fast float %502, %502
  %2367 = fmul fast float %503, %503
  %2368 = fmul fast float %504, %504
  %2369 = fadd fast float %2366, -1.000000e+00
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fmul fast float %2217, %2369
  %2373 = fmul fast float %2217, %2370
  %2374 = fmul fast float %2217, %2371
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fmul fast float %2375, %2192
  %2379 = fmul fast float %2376, %2193
  %2380 = fmul fast float %2377, %2194
  br label %2381

; <label>:2381                                    ; preds = %2365, %2331, %2222, %2178
  %2382 = phi float [ %2327, %2222 ], [ %2203, %2331 ], [ %2203, %2365 ], [ 0x3FA23C0BE0000000, %2178 ]
  %2383 = phi float [ %2319, %2222 ], [ %2362, %2331 ], [ %2378, %2365 ], [ 1.000000e+00, %2178 ]
  %2384 = phi float [ %2320, %2222 ], [ %2363, %2331 ], [ %2379, %2365 ], [ 1.000000e+00, %2178 ]
  %2385 = phi float [ %2321, %2222 ], [ %2364, %2331 ], [ %2380, %2365 ], [ 1.000000e+00, %2178 ]
  %2386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.i32 %2386, 1
  %2388 = and i32 %2387, 1
  %2389 = icmp ne i32 %2388, 0
  %2390 = add i32 %58, 356
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp ne i32 %2393, 0
  %2395 = and i1 %2389, %2394
  %2396 = select i1 %2395, float 1.000000e+00, float %2383
  %2397 = select i1 %2395, float 0x3FD3333340000000, float %2384
  %2398 = select i1 %2395, float 0x3FD3333340000000, float %2385
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 32
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2475, label %2403

; <label>:2403                                    ; preds = %2381
  %2404 = add i32 %58, 124
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %58, 416
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2411, %dx.types.Handle %114, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.ResRet.f32 %2412, 3
  %2417 = and i32 %2406, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = lshr i32 %2406, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = lshr i32 %2406, 16
  %2423 = and i32 %2422, 255
  %2424 = uitofp i32 %2423 to float
  %2425 = fmul fast float %2424, 0x3F70101000000000
  %2426 = fmul fast float %2413, %2418
  %2427 = fadd fast float %2426, %2421
  %2428 = fmul fast float %2427, 0x3F70101000000000
  %2429 = fadd fast float %2414, -5.000000e-01
  %2430 = fadd fast float %2416, -5.000000e-01
  %2431 = fmul fast float %2429, %2425
  %2432 = fmul fast float %2430, %2425
  %2433 = fadd fast float %2431, 5.000000e-01
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fmul fast float %2433, 2.000000e+00
  %2436 = fadd fast float %2435, -1.000000e+00
  %2437 = fmul fast float %2434, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fadd fast float %2436, %2438
  %2440 = fmul fast float %2439, 5.000000e-01
  %2441 = fsub fast float %2436, %2438
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float %2444, %2445
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2440, float %2442, float %2446, float %2440, float %2442, float %2446)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.unary.f32(i32 25, float %2447)  ; Rsqrt(value)
  %2449 = fmul fast float %2440, %2448
  %2450 = fmul fast float %2442, %2448
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 67108864
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2471, label %2455

; <label>:2455                                    ; preds = %2403
  %2456 = add i32 %58, 312
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 65535
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 65535
  %2464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2463)  ; LegacyF16ToF32(value)
  %2465 = lshr i32 %2458, 16
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = fsub fast float %2428, %2466
  %2468 = fmul fast float %2467, %2460
  %2469 = fadd fast float %2468, %2464
  %2470 = call float @dx.op.unary.f32(i32 7, float %2469)  ; Saturate(value)
  br label %2471

; <label>:2471                                    ; preds = %2455, %2403
  %2472 = phi float [ %2470, %2455 ], [ %2428, %2403 ]
  %2473 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %2007, float %2008)  ; Dot2(ax,ay,bx,by)
  %2474 = call float @dx.op.dot2.f32(i32 54, float %2449, float %2450, float %2009, float %2010)  ; Dot2(ax,ay,bx,by)
  br label %2475

; <label>:2475                                    ; preds = %2471, %2381
  %2476 = phi float [ %2472, %2471 ], [ 0x3FD6666660000000, %2381 ]
  %2477 = phi float [ %2473, %2471 ], [ 0.000000e+00, %2381 ]
  %2478 = phi float [ %2474, %2471 ], [ 0.000000e+00, %2381 ]
  %2479 = phi float [ %2415, %2471 ], [ 1.000000e+00, %2381 ]
  %2480 = add i32 %58, 192
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = lshr i32 %2482, 22
  %2484 = shl nuw nsw i32 %2483, 5
  %2485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2484)  ; LegacyF16ToF32(value)
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 64
  %2489 = icmp eq i32 %2488, 0
  br i1 %2489, label %2523, label %2490

; <label>:2490                                    ; preds = %2475
  %2491 = add i32 %58, 432
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = add i32 %2493, 0
  %2495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 131072
  %2499 = icmp eq i32 %2498, 0
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2495, %dx.types.Handle %114, float %2103, float %2104, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = fmul fast float %485, %2501
  %2505 = fmul fast float %486, %2502
  %2506 = fmul fast float %487, %2503
  br i1 %2499, label %2513, label %2507

; <label>:2507                                    ; preds = %2490
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 0
  %2510 = fmul fast float %2509, %2504
  %2511 = fmul fast float %2509, %2505
  %2512 = fmul fast float %2509, %2506
  br label %2513

; <label>:2513                                    ; preds = %2507, %2490
  %2514 = phi float [ %2510, %2507 ], [ %2504, %2490 ]
  %2515 = phi float [ %2511, %2507 ], [ %2505, %2490 ]
  %2516 = phi float [ %2512, %2507 ], [ %2506, %2490 ]
  %2517 = fmul fast float %2514, %2485
  %2518 = select i1 %260, float %2517, float %2514
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2515, float %2516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2520 = select i1 %260, float 0.000000e+00, float %2514
  %2521 = select i1 %260, float %2519, float %2515
  %2522 = select i1 %260, float 0.000000e+00, float %2516
  br label %2523

; <label>:2523                                    ; preds = %2513, %2475
  %2524 = phi float [ %2520, %2513 ], [ 0.000000e+00, %2475 ]
  %2525 = phi float [ %2521, %2513 ], [ 0.000000e+00, %2475 ]
  %2526 = phi float [ %2522, %2513 ], [ 0.000000e+00, %2475 ]
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = add i32 %58, 128
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2529, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2531, 8
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2397, float %2398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2538 = fmul fast float %2536, %2537
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101020000000
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  br i1 %1995, label %2542, label %2550

; <label>:2542                                    ; preds = %2523
  %2543 = fsub fast float 1.000000e+00, %2176
  %2544 = fmul fast float %2543, %1984
  %2545 = fmul fast float %2543, %1985
  %2546 = fmul fast float %2543, %1986
  %2547 = fmul fast float %2543, %1987
  %2548 = fmul fast float %2543, %1988
  %2549 = fmul fast float %2543, %1989
  br label %2550

; <label>:2550                                    ; preds = %2542, %2523
  %2551 = phi float [ %2544, %2542 ], [ %1984, %2523 ]
  %2552 = phi float [ %2545, %2542 ], [ %1985, %2523 ]
  %2553 = phi float [ %2546, %2542 ], [ %1986, %2523 ]
  %2554 = phi float [ %2547, %2542 ], [ %1987, %2523 ]
  %2555 = phi float [ %2548, %2542 ], [ %1988, %2523 ]
  %2556 = phi float [ %2549, %2542 ], [ %1989, %2523 ]
  %2557 = and i32 %2528, 3
  %2558 = icmp eq i32 %2557, 3
  br i1 %2558, label %2637, label %2559

; <label>:2559                                    ; preds = %2550
  %2560 = and i32 %2528, 16
  %2561 = icmp ne i32 %2560, 0
  %2562 = select i1 %2561, float %2176, float 0.000000e+00
  %2563 = icmp eq i32 %2557, 0
  br i1 %2563, label %2564, label %2592

; <label>:2564                                    ; preds = %2559
  %2565 = and i32 %2528, 64
  %2566 = icmp ne i32 %2565, 0
  %2567 = select i1 %2566, float %2176, float 0.000000e+00
  %2568 = fsub fast float %2396, %2551
  %2569 = fsub fast float %2397, %2552
  %2570 = fsub fast float %2398, %2553
  %2571 = fmul fast float %2562, %2568
  %2572 = fmul fast float %2562, %2569
  %2573 = fmul fast float %2562, %2570
  %2574 = fadd fast float %2571, %2551
  %2575 = fadd fast float %2572, %2552
  %2576 = fadd fast float %2573, %2553
  %2577 = fsub fast float %2382, %1990
  %2578 = fmul fast float %2562, %2577
  %2579 = fadd fast float %2578, %1990
  %2580 = fsub fast float %2524, %2554
  %2581 = fsub fast float %2525, %2555
  %2582 = fsub fast float %2526, %2556
  %2583 = fmul fast float %2567, %2580
  %2584 = fmul fast float %2567, %2581
  %2585 = fmul fast float %2567, %2582
  %2586 = fadd fast float %2583, %2554
  %2587 = fadd fast float %2584, %2555
  %2588 = fadd fast float %2585, %2556
  %2589 = fsub fast float %2541, %1993
  %2590 = fmul fast float %2562, %2589
  %2591 = fadd fast float %2590, %1993
  br label %2637

; <label>:2592                                    ; preds = %2559
  %2593 = icmp eq i32 %2557, 1
  br i1 %2593, label %2594, label %2607

; <label>:2594                                    ; preds = %2592
  %2595 = fadd fast float %2396, -1.000000e+00
  %2596 = fadd fast float %2397, -1.000000e+00
  %2597 = fadd fast float %2398, -1.000000e+00
  %2598 = fmul fast float %2562, %2595
  %2599 = fmul fast float %2562, %2596
  %2600 = fmul fast float %2562, %2597
  %2601 = fadd fast float %2598, 1.000000e+00
  %2602 = fadd fast float %2599, 1.000000e+00
  %2603 = fadd fast float %2600, 1.000000e+00
  %2604 = fmul fast float %2601, %2551
  %2605 = fmul fast float %2602, %2552
  %2606 = fmul fast float %2603, %2553
  br label %2637

; <label>:2607                                    ; preds = %2592
  %2608 = icmp eq i32 %2557, 2
  br i1 %2608, label %2609, label %2637

; <label>:2609                                    ; preds = %2607
  %2610 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2611 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2612 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2613 = fadd fast float %2610, -5.000000e-01
  %2614 = fadd fast float %2611, -5.000000e-01
  %2615 = fadd fast float %2612, -5.000000e-01
  %2616 = fmul fast float %2613, %2562
  %2617 = fmul fast float %2614, %2562
  %2618 = fmul fast float %2615, %2562
  %2619 = fadd fast float %2616, 5.000000e-01
  %2620 = fadd fast float %2617, 5.000000e-01
  %2621 = fadd fast float %2618, 5.000000e-01
  %2622 = fmul fast float %2619, 2.000000e+00
  %2623 = fsub fast float 1.000000e+00, %2622
  %2624 = fmul fast float %2623, %2551
  %2625 = fadd fast float %2624, %2622
  %2626 = fmul fast float %2625, %2551
  %2627 = fmul fast float %2620, 2.000000e+00
  %2628 = fsub fast float 1.000000e+00, %2627
  %2629 = fmul fast float %2628, %2552
  %2630 = fadd fast float %2629, %2627
  %2631 = fmul fast float %2630, %2552
  %2632 = fmul fast float %2621, 2.000000e+00
  %2633 = fsub fast float 1.000000e+00, %2632
  %2634 = fmul fast float %2633, %2553
  %2635 = fadd fast float %2634, %2632
  %2636 = fmul fast float %2635, %2553
  br label %2637

; <label>:2637                                    ; preds = %2609, %2607, %2594, %2564, %2550
  %2638 = phi float [ %2551, %2550 ], [ %2626, %2609 ], [ %2551, %2607 ], [ %2604, %2594 ], [ %2574, %2564 ]
  %2639 = phi float [ %2552, %2550 ], [ %2631, %2609 ], [ %2552, %2607 ], [ %2605, %2594 ], [ %2575, %2564 ]
  %2640 = phi float [ %2553, %2550 ], [ %2636, %2609 ], [ %2553, %2607 ], [ %2606, %2594 ], [ %2576, %2564 ]
  %2641 = phi float [ %2554, %2550 ], [ %2554, %2609 ], [ %2554, %2607 ], [ %2554, %2594 ], [ %2586, %2564 ]
  %2642 = phi float [ %2555, %2550 ], [ %2555, %2609 ], [ %2555, %2607 ], [ %2555, %2594 ], [ %2587, %2564 ]
  %2643 = phi float [ %2556, %2550 ], [ %2556, %2609 ], [ %2556, %2607 ], [ %2556, %2594 ], [ %2588, %2564 ]
  %2644 = phi float [ %1990, %2550 ], [ %1990, %2609 ], [ %1990, %2607 ], [ %1990, %2594 ], [ %2579, %2564 ]
  %2645 = phi float [ %1993, %2550 ], [ %1993, %2609 ], [ %1993, %2607 ], [ %1993, %2594 ], [ %2591, %2564 ]
  %2646 = and i32 %2528, 12
  %2647 = icmp eq i32 %2646, 12
  br i1 %2647, label %2720, label %2648

; <label>:2648                                    ; preds = %2637
  %2649 = and i32 %2528, 2097184
  %2650 = icmp eq i32 %2649, 2097184
  %2651 = select i1 %2650, float %2176, float 0.000000e+00
  %2652 = and i32 %2528, 4194336
  %2653 = icmp eq i32 %2652, 4194336
  %2654 = select i1 %2653, float %2176, float 0.000000e+00
  %2655 = and i32 %2528, 8388640
  %2656 = icmp eq i32 %2655, 8388640
  %2657 = select i1 %2656, float %2176, float 0.000000e+00
  %2658 = icmp eq i32 %2646, 0
  br i1 %2658, label %2659, label %2672

; <label>:2659                                    ; preds = %2648
  %2660 = fsub fast float %2477, %1982
  %2661 = fsub fast float %2478, %1983
  %2662 = fmul fast float %2651, %2660
  %2663 = fmul fast float %2651, %2661
  %2664 = fadd fast float %2662, %1982
  %2665 = fadd fast float %2663, %1983
  %2666 = fsub fast float %2479, %1992
  %2667 = fmul fast float %2654, %2666
  %2668 = fadd fast float %2667, %1992
  %2669 = fsub fast float %2476, %1991
  %2670 = fmul fast float %2657, %2669
  %2671 = fadd fast float %2670, %1991
  br label %2720

; <label>:2672                                    ; preds = %2648
  %2673 = icmp eq i32 %2646, 4
  br i1 %2673, label %2674, label %2706

; <label>:2674                                    ; preds = %2672
  %2675 = fmul fast float %2651, %2477
  %2676 = fmul fast float %2651, %2478
  %2677 = fadd fast float %2675, %1982
  %2678 = fadd fast float %2676, %1983
  %2679 = call float @dx.op.binary.f32(i32 36, float %1992, float %2479)  ; FMin(a,b)
  %2680 = fsub fast float %2679, %1992
  %2681 = fmul fast float %2680, %2654
  %2682 = fadd fast float %2681, %1992
  %2683 = fadd fast float %2476, %1991
  %2684 = fmul fast float %2683, 0x3FF337FAE0000000
  %2685 = fmul fast float %1991, %1991
  %2686 = fmul fast float %2476, %2476
  %2687 = fadd fast float %2686, %2685
  %2688 = fmul fast float %2687, 0x3FE5152B00000000
  %2689 = fmul fast float %1991, 0xBFCC1F85E0000000
  %2690 = fmul fast float %2689, %2476
  %2691 = fadd fast float %2690, 0xBFE1363700000000
  %2692 = fadd fast float %2691, %2684
  %2693 = fsub fast float %2692, %2688
  %2694 = fmul fast float %2683, 0x3FBA6F0D00000000
  %2695 = fmul fast float %2687, 0x3FD0432880000000
  %2696 = fmul fast float %1991, 0xBFEF110800000000
  %2697 = fmul fast float %2696, %2476
  %2698 = fadd fast float %2697, 1.000000e+00
  %2699 = fsub fast float %2698, %2694
  %2700 = fadd fast float %2699, %2695
  %2701 = fdiv fast float %2693, %2700
  %2702 = call float @dx.op.unary.f32(i32 7, float %2701)  ; Saturate(value)
  %2703 = fsub fast float %2702, %1991
  %2704 = fmul fast float %2703, %2657
  %2705 = fadd fast float %2704, %1991
  br label %2720

; <label>:2706                                    ; preds = %2672
  %2707 = icmp eq i32 %2646, 8
  br i1 %2707, label %2708, label %2720

; <label>:2708                                    ; preds = %2706
  %2709 = fmul fast float %2651, %2477
  %2710 = fmul fast float %2651, %2478
  %2711 = fadd fast float %2709, %1982
  %2712 = fadd fast float %2710, %1983
  %2713 = call float @dx.op.binary.f32(i32 36, float %1992, float %2479)  ; FMin(a,b)
  %2714 = fsub fast float %2713, %1992
  %2715 = fmul fast float %2714, %2654
  %2716 = fadd fast float %2715, %1992
  %2717 = fsub fast float %2476, %1991
  %2718 = fmul fast float %2657, %2717
  %2719 = fadd fast float %2718, %1991
  br label %2720

; <label>:2720                                    ; preds = %2708, %2706, %2674, %2659, %2637, %2175, %1994, %1981
  %2721 = phi float [ %1982, %2637 ], [ %1982, %2175 ], [ %1982, %1981 ], [ %2711, %2708 ], [ %1982, %2706 ], [ %2677, %2674 ], [ %2664, %2659 ], [ %1982, %1994 ]
  %2722 = phi float [ %1983, %2637 ], [ %1983, %2175 ], [ %1983, %1981 ], [ %2712, %2708 ], [ %1983, %2706 ], [ %2678, %2674 ], [ %2665, %2659 ], [ %1983, %1994 ]
  %2723 = phi float [ %2638, %2637 ], [ %1984, %2175 ], [ %1984, %1981 ], [ %2638, %2708 ], [ %2638, %2706 ], [ %2638, %2674 ], [ %2638, %2659 ], [ %1984, %1994 ]
  %2724 = phi float [ %2639, %2637 ], [ %1985, %2175 ], [ %1985, %1981 ], [ %2639, %2708 ], [ %2639, %2706 ], [ %2639, %2674 ], [ %2639, %2659 ], [ %1985, %1994 ]
  %2725 = phi float [ %2640, %2637 ], [ %1986, %2175 ], [ %1986, %1981 ], [ %2640, %2708 ], [ %2640, %2706 ], [ %2640, %2674 ], [ %2640, %2659 ], [ %1986, %1994 ]
  %2726 = phi float [ %2641, %2637 ], [ %1987, %2175 ], [ %1987, %1981 ], [ %2641, %2708 ], [ %2641, %2706 ], [ %2641, %2674 ], [ %2641, %2659 ], [ %1987, %1994 ]
  %2727 = phi float [ %2642, %2637 ], [ %1988, %2175 ], [ %1988, %1981 ], [ %2642, %2708 ], [ %2642, %2706 ], [ %2642, %2674 ], [ %2642, %2659 ], [ %1988, %1994 ]
  %2728 = phi float [ %2643, %2637 ], [ %1989, %2175 ], [ %1989, %1981 ], [ %2643, %2708 ], [ %2643, %2706 ], [ %2643, %2674 ], [ %2643, %2659 ], [ %1989, %1994 ]
  %2729 = phi float [ %2644, %2637 ], [ %1990, %2175 ], [ %1990, %1981 ], [ %2644, %2708 ], [ %2644, %2706 ], [ %2644, %2674 ], [ %2644, %2659 ], [ %1990, %1994 ]
  %2730 = phi float [ %1991, %2637 ], [ %1991, %2175 ], [ %1991, %1981 ], [ %2719, %2708 ], [ %1991, %2706 ], [ %2705, %2674 ], [ %2671, %2659 ], [ %1991, %1994 ]
  %2731 = phi float [ %1992, %2637 ], [ %1992, %2175 ], [ %1992, %1981 ], [ %2716, %2708 ], [ %1992, %2706 ], [ %2682, %2674 ], [ %2668, %2659 ], [ %1992, %1994 ]
  %2732 = phi float [ %2645, %2637 ], [ %1993, %2175 ], [ %1993, %1981 ], [ %2645, %2708 ], [ %2645, %2706 ], [ %2645, %2674 ], [ %2645, %2659 ], [ %1993, %1994 ]
  br i1 %644, label %3459, label %2733

; <label>:2733                                    ; preds = %2720
  %2734 = icmp ult i32 %698, 4
  %2735 = add i32 %58, 72
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = add i32 %58, 76
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = or i32 %2740, %2737
  %2742 = icmp eq i32 %2741, 0
  br i1 %2742, label %3459, label %2743

; <label>:2743                                    ; preds = %2733
  %2744 = and i32 %2737, 262144
  %2745 = icmp ne i32 %2744, 0
  %2746 = select i1 %2745, float %64, float 1.000000e+00
  %2747 = select i1 %2745, float %65, float 0.000000e+00
  %2748 = select i1 %2745, float %66, float 0.000000e+00
  %2749 = select i1 %2745, float %67, float 1.000000e+00
  %2750 = select i1 %2745, float %68, float %96
  %2751 = select i1 %2745, float %69, float %97
  %2752 = add i32 %58, 332
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = lshr i32 %2754, 16
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = fmul fast float %2756, 0x3F50624DE0000000
  %2758 = add i32 %58, 136
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = lshr i32 %2760, 16
  %2762 = and i32 %2761, 255
  %2763 = lshr i32 %2760, 24
  %2764 = add i32 %58, 340
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 65535
  %2768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2767)  ; LegacyF16ToF32(value)
  %2769 = lshr i32 %2766, 16
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = add i32 %58, 80
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = lshr i32 %2773, 22
  %2775 = shl nuw nsw i32 %2774, 5
  %2776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2775)  ; LegacyF16ToF32(value)
  %2777 = shl i32 %2773, 4
  %2778 = and i32 %2777, 32752
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = lshr i32 %2773, 7
  %2781 = and i32 %2780, 32752
  %2782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2781)  ; LegacyF16ToF32(value)
  %2783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2784 = extractvalue %dx.types.CBufRet.f32 %2783, 3
  %2785 = fmul fast float %2784, 1.000000e+03
  %2786 = fmul fast float %2785, %633
  %2787 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2788 = fadd fast float %2787, %621
  %2789 = fmul fast float %2785, %635
  %2790 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2791 = fadd fast float %2790, %622
  %2792 = fmul fast float %2757, %2785
  %2793 = call float @dx.op.unary.f32(i32 22, float %2792)  ; Frc(value)
  %2794 = fmul fast float %2793, 0x401921FB60000000
  %2795 = fadd fast float %2794, %2776
  %2796 = call float @dx.op.unary.f32(i32 13, float %2795)  ; Sin(value)
  %2797 = call float @dx.op.unary.f32(i32 12, float %2795)  ; Cos(value)
  %2798 = fsub fast float -0.000000e+00, %2796
  %2799 = fadd fast float %2750, -5.000000e-01
  %2800 = fadd fast float %2751, -5.000000e-01
  %2801 = fmul fast float %2768, %2799
  %2802 = fmul fast float %2770, %2800
  %2803 = fadd fast float %2801, 5.000000e-01
  %2804 = fadd fast float %2802, 5.000000e-01
  %2805 = fmul fast float %2779, %2803
  %2806 = fmul fast float %2782, %2804
  %2807 = fmul fast float %2797, %2805
  %2808 = call float @dx.op.tertiary.f32(i32 46, float %2798, float %2806, float %2807)  ; FMad(a,b,c)
  %2809 = fmul fast float %2796, %2805
  %2810 = call float @dx.op.tertiary.f32(i32 46, float %2797, float %2806, float %2809)  ; FMad(a,b,c)
  %2811 = fadd fast float %2788, %2808
  %2812 = fadd fast float %2791, %2810
  %2813 = icmp ugt i32 %2762, 1
  %2814 = icmp ugt i32 %2760, 33554431
  %2815 = or i1 %2814, %2813
  br i1 %2815, label %2816, label %2841

; <label>:2816                                    ; preds = %2743
  %2817 = add i32 %58, 276
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = lshr i32 %2819, 16
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fmul fast float %2784, %2821
  %2823 = call float @dx.op.unary.f32(i32 22, float %2822)  ; Frc(value)
  %2824 = mul nuw nsw i32 %2762, %2763
  %2825 = uitofp i32 %2824 to float
  %2826 = fmul fast float %2823, %2825
  %2827 = call float @dx.op.unary.f32(i32 27, float %2826)  ; Round_ni(value)
  %2828 = fptoui float %2827 to i32
  %2829 = urem i32 %2828, %2762
  %2830 = udiv i32 %2828, %2763
  %2831 = call float @dx.op.unary.f32(i32 22, float %2811)  ; Frc(value)
  %2832 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2833 = uitofp i32 %2829 to float
  %2834 = uitofp i32 %2830 to float
  %2835 = fadd fast float %2831, %2833
  %2836 = fadd fast float %2832, %2834
  %2837 = uitofp i32 %2762 to float
  %2838 = uitofp i32 %2763 to float
  %2839 = fdiv fast float %2835, %2837
  %2840 = fdiv fast float %2836, %2838
  br label %2841

; <label>:2841                                    ; preds = %2816, %2743
  %2842 = phi float [ %2839, %2816 ], [ %2811, %2743 ]
  %2843 = phi float [ %2840, %2816 ], [ %2812, %2743 ]
  %2844 = and i32 %2737, 256
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %2892, label %2846

; <label>:2846                                    ; preds = %2841
  %2847 = add i32 %58, 468
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = add i32 %2849, 0
  %2851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2851, %dx.types.Handle %115, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = add i32 %58, 148
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = shl i32 %2856, 4
  %2858 = and i32 %2857, 32752
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = lshr i32 %2856, 7
  %2861 = and i32 %2860, 32752
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = fsub fast float 1.000000e+00, %693
  %2864 = call float @dx.op.binary.f32(i32 35, float %2863, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2865 = bitcast float %693 to i32
  %2866 = sitofp i32 %2865 to float
  %2867 = fadd fast float %2866, 0xC1CFBF8940000000
  %2868 = fmul fast float %2862, %2867
  %2869 = fadd fast float %2868, 0x41CFBF8940000000
  %2870 = fptosi float %2869 to i32
  %2871 = bitcast i32 %2870 to float
  %2872 = bitcast float %2864 to i32
  %2873 = sitofp i32 %2872 to float
  %2874 = fadd fast float %2873, 0xC1CFBF8940000000
  %2875 = fmul fast float %2874, %2862
  %2876 = fadd fast float %2875, 0x41CFBF8940000000
  %2877 = fptosi float %2876 to i32
  %2878 = bitcast i32 %2877 to float
  %2879 = fmul fast float %2871, %2859
  %2880 = fmul fast float %2878, %2859
  %2881 = fsub fast float %2864, %2879
  %2882 = fadd fast float %2880, %2864
  %2883 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2885 = fsub fast float %2853, %2883
  %2886 = fsub fast float %2884, %2883
  %2887 = bitcast float %2886 to i32
  %2888 = sub nsw i32 2129859010, %2887
  %2889 = bitcast i32 %2888 to float
  %2890 = fmul fast float %2889, %2885
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  br label %2892

; <label>:2892                                    ; preds = %2846, %2841
  %2893 = phi float [ %2891, %2846 ], [ %693, %2841 ]
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 128
  %2897 = icmp eq i32 %2896, 0
  br i1 %2897, label %2914, label %2898

; <label>:2898                                    ; preds = %2892
  %2899 = add i32 %58, 452
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %2901, 0
  %2903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2903, %dx.types.Handle %115, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 524288
  %2909 = icmp ne i32 %2908, 0
  %2910 = fcmp fast ogt float %2905, 0x3FE0101020000000
  %2911 = select i1 %2910, float 1.000000e+00, float 0.000000e+00
  %2912 = select i1 %2909, float %2911, float %2905
  %2913 = fmul fast float %2912, %2893
  br label %2914

; <label>:2914                                    ; preds = %2898, %2892
  %2915 = phi float [ %2913, %2898 ], [ %2893, %2892 ]
  %2916 = fcmp fast ult float %2915, 0x3F70101020000000
  br i1 %2916, label %3459, label %2917

; <label>:2917                                    ; preds = %2914
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 16
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %3120, label %2922

; <label>:2922                                    ; preds = %2917
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %58, 404
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %2927, 0
  %2929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2929, %dx.types.Handle %114, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2930, 3
  %2935 = and i32 %2924, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = lshr i32 %2924, 8
  %2938 = and i32 %2937, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2934, %2936
  %2941 = fadd fast float %2940, %2939
  %2942 = fmul fast float %2941, 0x3F70101000000000
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 512
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2955, label %2947

; <label>:2947                                    ; preds = %2922
  %2948 = add i32 %58, 484
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = add i32 %2950, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2952, %dx.types.Handle %115, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  br label %2955

; <label>:2955                                    ; preds = %2947, %2922
  %2956 = phi float [ %2954, %2947 ], [ 1.000000e+00, %2922 ]
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 33554432
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3067, label %2961

; <label>:2961                                    ; preds = %2955
  %2962 = add i32 %58, 272
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 65535
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = lshr i32 %2964, 16
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = add i32 %58, 276
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = lshr i32 %2975, 24
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = and i32 %2975, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = lshr i32 %2975, 8
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2975, 16
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = add i32 %58, 268
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = lshr i32 %2992, 24
  %2994 = uitofp i32 %2993 to float
  %2995 = fmul fast float %2994, 0x3F70101020000000
  %2996 = and i32 %2992, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2992, 8
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = lshr i32 %2992, 16
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = bitcast float %2931 to i32
  %3008 = ashr i32 %3007, 1
  %3009 = sub nsw i32 1597463174, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %2931, 5.000000e-01
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, %3011
  %3014 = fsub fast float 1.500000e+00, %3013
  %3015 = fmul fast float %3010, %2931
  %3016 = fmul fast float %3015, %3014
  %3017 = bitcast float %2932 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2932, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2932
  %3026 = fmul fast float %3025, %3024
  %3027 = bitcast float %2933 to i32
  %3028 = ashr i32 %3027, 1
  %3029 = sub nsw i32 1597463174, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %2933, 5.000000e-01
  %3032 = fmul fast float %3030, %3030
  %3033 = fmul fast float %3032, %3031
  %3034 = fsub fast float 1.500000e+00, %3033
  %3035 = fmul fast float %3030, %2933
  %3036 = fmul fast float %3035, %3034
  %3037 = fsub fast float %3016, %2998
  %3038 = fsub fast float %3026, %3002
  %3039 = fsub fast float %3036, %3006
  %3040 = fmul fast float %3037, %2966
  %3041 = fmul fast float %3038, %2968
  %3042 = fmul fast float %3039, %2973
  %3043 = fadd fast float %3040, %2981
  %3044 = fadd fast float %3041, %2985
  %3045 = fadd fast float %3042, %2989
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = fmul fast float %3046, %3046
  %3050 = fmul fast float %3047, %3047
  %3051 = fmul fast float %3048, %3048
  %3052 = fsub fast float %3049, %2931
  %3053 = fsub fast float %3050, %2932
  %3054 = fsub fast float %3051, %2933
  %3055 = fmul fast float %3052, %2956
  %3056 = fmul fast float %3053, %2956
  %3057 = fmul fast float %3054, %2956
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %3056, %2932
  %3060 = fadd fast float %3057, %2933
  %3061 = fadd fast float %2978, %2942
  %3062 = fsub fast float %3061, %2995
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = fsub fast float %3063, %2942
  %3065 = fmul fast float %3064, %2956
  %3066 = fadd fast float %3065, %2942
  br label %3120

; <label>:3067                                    ; preds = %2955
  %3068 = and i32 %2958, 134217728
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3104, label %3070

; <label>:3070                                    ; preds = %3067
  %3071 = call float @dx.op.unary.f32(i32 24, float %609)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %610)  ; Sqrt(value)
  %3073 = call float @dx.op.unary.f32(i32 24, float %611)  ; Sqrt(value)
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fadd fast float %3073, -5.000000e-01
  %3077 = fmul fast float %3074, %2956
  %3078 = fmul fast float %3075, %2956
  %3079 = fmul fast float %3076, %2956
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3078, 5.000000e-01
  %3082 = fadd fast float %3079, 5.000000e-01
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %3085 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %3086 = fmul fast float %3080, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3083
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3083
  %3091 = fmul fast float %3081, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3084
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3084
  %3096 = fmul fast float %3082, 2.000000e+00
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3097, %3085
  %3099 = fadd fast float %3098, %3096
  %3100 = fmul fast float %3099, %3085
  %3101 = fmul fast float %3090, %3090
  %3102 = fmul fast float %3095, %3095
  %3103 = fmul fast float %3100, %3100
  br label %3120

; <label>:3104                                    ; preds = %3067
  %3105 = fmul fast float %609, %609
  %3106 = fmul fast float %610, %610
  %3107 = fmul fast float %611, %611
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = fmul fast float %2956, %3108
  %3112 = fmul fast float %2956, %3109
  %3113 = fmul fast float %2956, %3110
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fadd fast float %3113, 1.000000e+00
  %3117 = fmul fast float %3114, %2931
  %3118 = fmul fast float %3115, %2932
  %3119 = fmul fast float %3116, %2933
  br label %3120

; <label>:3120                                    ; preds = %3104, %3070, %2961, %2917
  %3121 = phi float [ %3066, %2961 ], [ %2942, %3070 ], [ %2942, %3104 ], [ 0x3FA23C0BE0000000, %2917 ]
  %3122 = phi float [ %3058, %2961 ], [ %3101, %3070 ], [ %3117, %3104 ], [ 1.000000e+00, %2917 ]
  %3123 = phi float [ %3059, %2961 ], [ %3102, %3070 ], [ %3118, %3104 ], [ 1.000000e+00, %2917 ]
  %3124 = phi float [ %3060, %2961 ], [ %3103, %3070 ], [ %3119, %3104 ], [ 1.000000e+00, %2917 ]
  %3125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.i32 %3125, 1
  %3127 = and i32 %3126, 1
  %3128 = icmp ne i32 %3127, 0
  %3129 = add i32 %58, 356
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 32
  %3133 = icmp ne i32 %3132, 0
  %3134 = and i1 %3128, %3133
  %3135 = select i1 %3134, float 1.000000e+00, float %3122
  %3136 = select i1 %3134, float 0x3FD3333340000000, float %3123
  %3137 = select i1 %3134, float 0x3FD3333340000000, float %3124
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 32
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3214, label %3142

; <label>:3142                                    ; preds = %3120
  %3143 = add i32 %58, 140
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %58, 420
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %3148, 0
  %3150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3150, %dx.types.Handle %114, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.ResRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3151, 2
  %3155 = extractvalue %dx.types.ResRet.f32 %3151, 3
  %3156 = and i32 %3145, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = lshr i32 %3145, 8
  %3159 = and i32 %3158, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3145, 16
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3163, 0x3F70101000000000
  %3165 = fmul fast float %3152, %3157
  %3166 = fadd fast float %3165, %3160
  %3167 = fmul fast float %3166, 0x3F70101000000000
  %3168 = fadd fast float %3153, -5.000000e-01
  %3169 = fadd fast float %3155, -5.000000e-01
  %3170 = fmul fast float %3168, %3164
  %3171 = fmul fast float %3169, %3164
  %3172 = fadd fast float %3170, 5.000000e-01
  %3173 = fadd fast float %3171, 5.000000e-01
  %3174 = fmul fast float %3172, 2.000000e+00
  %3175 = fadd fast float %3174, -1.000000e+00
  %3176 = fmul fast float %3173, 2.000000e+00
  %3177 = fadd fast float %3176, -1.000000e+00
  %3178 = fadd fast float %3175, %3177
  %3179 = fmul fast float %3178, 5.000000e-01
  %3180 = fsub fast float %3175, %3177
  %3181 = fmul fast float %3180, 5.000000e-01
  %3182 = call float @dx.op.unary.f32(i32 6, float %3179)  ; FAbs(value)
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = call float @dx.op.unary.f32(i32 6, float %3181)  ; FAbs(value)
  %3185 = fsub fast float %3183, %3184
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3181, float %3185, float %3179, float %3181, float %3185)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = call float @dx.op.unary.f32(i32 25, float %3186)  ; Rsqrt(value)
  %3188 = fmul fast float %3179, %3187
  %3189 = fmul fast float %3181, %3187
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 67108864
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3210, label %3194

; <label>:3194                                    ; preds = %3142
  %3195 = add i32 %58, 328
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = lshr i32 %3197, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = fsub fast float %3167, %3205
  %3207 = fmul fast float %3206, %3199
  %3208 = fadd fast float %3207, %3203
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  br label %3210

; <label>:3210                                    ; preds = %3194, %3142
  %3211 = phi float [ %3209, %3194 ], [ %3167, %3142 ]
  %3212 = call float @dx.op.dot2.f32(i32 54, float %3188, float %3189, float %2746, float %2747)  ; Dot2(ax,ay,bx,by)
  %3213 = call float @dx.op.dot2.f32(i32 54, float %3188, float %3189, float %2748, float %2749)  ; Dot2(ax,ay,bx,by)
  br label %3214

; <label>:3214                                    ; preds = %3210, %3120
  %3215 = phi float [ %3211, %3210 ], [ 0x3FD6666660000000, %3120 ]
  %3216 = phi float [ %3212, %3210 ], [ 0.000000e+00, %3120 ]
  %3217 = phi float [ %3213, %3210 ], [ 0.000000e+00, %3120 ]
  %3218 = phi float [ %3154, %3210 ], [ 1.000000e+00, %3120 ]
  %3219 = add i32 %58, 208
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = lshr i32 %3221, 22
  %3223 = shl nuw nsw i32 %3222, 5
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 64
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3262, label %3229

; <label>:3229                                    ; preds = %3214
  %3230 = add i32 %58, 436
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %3232, 0
  %3234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 131072
  %3238 = icmp eq i32 %3237, 0
  %3239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3234, %dx.types.Handle %114, float %2842, float %2843, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.ResRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.ResRet.f32 %3239, 2
  %3243 = fmul fast float %592, %3240
  %3244 = fmul fast float %593, %3241
  %3245 = fmul fast float %594, %3242
  br i1 %3238, label %3252, label %3246

; <label>:3246                                    ; preds = %3229
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = fmul fast float %3248, %3243
  %3250 = fmul fast float %3248, %3244
  %3251 = fmul fast float %3248, %3245
  br label %3252

; <label>:3252                                    ; preds = %3246, %3229
  %3253 = phi float [ %3249, %3246 ], [ %3243, %3229 ]
  %3254 = phi float [ %3250, %3246 ], [ %3244, %3229 ]
  %3255 = phi float [ %3251, %3246 ], [ %3245, %3229 ]
  %3256 = fmul fast float %3253, %3224
  %3257 = select i1 %260, float %3256, float %3253
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3254, float %3255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = select i1 %260, float 0.000000e+00, float %3253
  %3260 = select i1 %260, float %3258, float %3254
  %3261 = select i1 %260, float 0.000000e+00, float %3255
  br label %3262

; <label>:3262                                    ; preds = %3252, %3214
  %3263 = phi float [ %3259, %3252 ], [ 0.000000e+00, %3214 ]
  %3264 = phi float [ %3260, %3252 ], [ 0.000000e+00, %3214 ]
  %3265 = phi float [ %3261, %3252 ], [ 0.000000e+00, %3214 ]
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = add i32 %58, 144
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = lshr i32 %3270, 8
  %3274 = and i32 %3273, 255
  %3275 = uitofp i32 %3274 to float
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3135, float %3136, float %3137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = fmul fast float %3275, %3276
  %3278 = fadd fast float %3277, %3272
  %3279 = fmul fast float %3278, 0x3F70101020000000
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  br i1 %2734, label %3281, label %3289

; <label>:3281                                    ; preds = %3262
  %3282 = fsub fast float 1.000000e+00, %2915
  %3283 = fmul fast float %3282, %2723
  %3284 = fmul fast float %3282, %2724
  %3285 = fmul fast float %3282, %2725
  %3286 = fmul fast float %3282, %2726
  %3287 = fmul fast float %3282, %2727
  %3288 = fmul fast float %3282, %2728
  br label %3289

; <label>:3289                                    ; preds = %3281, %3262
  %3290 = phi float [ %3283, %3281 ], [ %2723, %3262 ]
  %3291 = phi float [ %3284, %3281 ], [ %2724, %3262 ]
  %3292 = phi float [ %3285, %3281 ], [ %2725, %3262 ]
  %3293 = phi float [ %3286, %3281 ], [ %2726, %3262 ]
  %3294 = phi float [ %3287, %3281 ], [ %2727, %3262 ]
  %3295 = phi float [ %3288, %3281 ], [ %2728, %3262 ]
  %3296 = and i32 %3267, 3
  %3297 = icmp eq i32 %3296, 3
  br i1 %3297, label %3376, label %3298

; <label>:3298                                    ; preds = %3289
  %3299 = and i32 %3267, 16
  %3300 = icmp ne i32 %3299, 0
  %3301 = select i1 %3300, float %2915, float 0.000000e+00
  %3302 = icmp eq i32 %3296, 0
  br i1 %3302, label %3303, label %3331

; <label>:3303                                    ; preds = %3298
  %3304 = and i32 %3267, 64
  %3305 = icmp ne i32 %3304, 0
  %3306 = select i1 %3305, float %2915, float 0.000000e+00
  %3307 = fsub fast float %3135, %3290
  %3308 = fsub fast float %3136, %3291
  %3309 = fsub fast float %3137, %3292
  %3310 = fmul fast float %3301, %3307
  %3311 = fmul fast float %3301, %3308
  %3312 = fmul fast float %3301, %3309
  %3313 = fadd fast float %3310, %3290
  %3314 = fadd fast float %3311, %3291
  %3315 = fadd fast float %3312, %3292
  %3316 = fsub fast float %3121, %2729
  %3317 = fmul fast float %3301, %3316
  %3318 = fadd fast float %3317, %2729
  %3319 = fsub fast float %3263, %3293
  %3320 = fsub fast float %3264, %3294
  %3321 = fsub fast float %3265, %3295
  %3322 = fmul fast float %3306, %3319
  %3323 = fmul fast float %3306, %3320
  %3324 = fmul fast float %3306, %3321
  %3325 = fadd fast float %3322, %3293
  %3326 = fadd fast float %3323, %3294
  %3327 = fadd fast float %3324, %3295
  %3328 = fsub fast float %3280, %2732
  %3329 = fmul fast float %3301, %3328
  %3330 = fadd fast float %3329, %2732
  br label %3376

; <label>:3331                                    ; preds = %3298
  %3332 = icmp eq i32 %3296, 1
  br i1 %3332, label %3333, label %3346

; <label>:3333                                    ; preds = %3331
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fadd fast float %3136, -1.000000e+00
  %3336 = fadd fast float %3137, -1.000000e+00
  %3337 = fmul fast float %3301, %3334
  %3338 = fmul fast float %3301, %3335
  %3339 = fmul fast float %3301, %3336
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fmul fast float %3340, %3290
  %3344 = fmul fast float %3341, %3291
  %3345 = fmul fast float %3342, %3292
  br label %3376

; <label>:3346                                    ; preds = %3331
  %3347 = icmp eq i32 %3296, 2
  br i1 %3347, label %3348, label %3376

; <label>:3348                                    ; preds = %3346
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3351 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fmul fast float %3352, %3301
  %3356 = fmul fast float %3353, %3301
  %3357 = fmul fast float %3354, %3301
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fmul fast float %3358, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3290
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3290
  %3366 = fmul fast float %3359, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3291
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3291
  %3371 = fmul fast float %3360, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3292
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3292
  br label %3376

; <label>:3376                                    ; preds = %3348, %3346, %3333, %3303, %3289
  %3377 = phi float [ %3290, %3289 ], [ %3365, %3348 ], [ %3290, %3346 ], [ %3343, %3333 ], [ %3313, %3303 ]
  %3378 = phi float [ %3291, %3289 ], [ %3370, %3348 ], [ %3291, %3346 ], [ %3344, %3333 ], [ %3314, %3303 ]
  %3379 = phi float [ %3292, %3289 ], [ %3375, %3348 ], [ %3292, %3346 ], [ %3345, %3333 ], [ %3315, %3303 ]
  %3380 = phi float [ %3293, %3289 ], [ %3293, %3348 ], [ %3293, %3346 ], [ %3293, %3333 ], [ %3325, %3303 ]
  %3381 = phi float [ %3294, %3289 ], [ %3294, %3348 ], [ %3294, %3346 ], [ %3294, %3333 ], [ %3326, %3303 ]
  %3382 = phi float [ %3295, %3289 ], [ %3295, %3348 ], [ %3295, %3346 ], [ %3295, %3333 ], [ %3327, %3303 ]
  %3383 = phi float [ %2729, %3289 ], [ %2729, %3348 ], [ %2729, %3346 ], [ %2729, %3333 ], [ %3318, %3303 ]
  %3384 = phi float [ %2732, %3289 ], [ %2732, %3348 ], [ %2732, %3346 ], [ %2732, %3333 ], [ %3330, %3303 ]
  %3385 = and i32 %3267, 12
  %3386 = icmp eq i32 %3385, 12
  br i1 %3386, label %3459, label %3387

; <label>:3387                                    ; preds = %3376
  %3388 = and i32 %3267, 2097184
  %3389 = icmp eq i32 %3388, 2097184
  %3390 = select i1 %3389, float %2915, float 0.000000e+00
  %3391 = and i32 %3267, 4194336
  %3392 = icmp eq i32 %3391, 4194336
  %3393 = select i1 %3392, float %2915, float 0.000000e+00
  %3394 = and i32 %3267, 8388640
  %3395 = icmp eq i32 %3394, 8388640
  %3396 = select i1 %3395, float %2915, float 0.000000e+00
  %3397 = icmp eq i32 %3385, 0
  br i1 %3397, label %3398, label %3411

; <label>:3398                                    ; preds = %3387
  %3399 = fsub fast float %3216, %2721
  %3400 = fsub fast float %3217, %2722
  %3401 = fmul fast float %3390, %3399
  %3402 = fmul fast float %3390, %3400
  %3403 = fadd fast float %3401, %2721
  %3404 = fadd fast float %3402, %2722
  %3405 = fsub fast float %3218, %2731
  %3406 = fmul fast float %3393, %3405
  %3407 = fadd fast float %3406, %2731
  %3408 = fsub fast float %3215, %2730
  %3409 = fmul fast float %3396, %3408
  %3410 = fadd fast float %3409, %2730
  br label %3459

; <label>:3411                                    ; preds = %3387
  %3412 = icmp eq i32 %3385, 4
  br i1 %3412, label %3413, label %3445

; <label>:3413                                    ; preds = %3411
  %3414 = fmul fast float %3390, %3216
  %3415 = fmul fast float %3390, %3217
  %3416 = fadd fast float %3414, %2721
  %3417 = fadd fast float %3415, %2722
  %3418 = call float @dx.op.binary.f32(i32 36, float %2731, float %3218)  ; FMin(a,b)
  %3419 = fsub fast float %3418, %2731
  %3420 = fmul fast float %3419, %3393
  %3421 = fadd fast float %3420, %2731
  %3422 = fadd fast float %3215, %2730
  %3423 = fmul fast float %3422, 0x3FF337FAE0000000
  %3424 = fmul fast float %2730, %2730
  %3425 = fmul fast float %3215, %3215
  %3426 = fadd fast float %3425, %3424
  %3427 = fmul fast float %3426, 0x3FE5152B00000000
  %3428 = fmul fast float %2730, 0xBFCC1F85E0000000
  %3429 = fmul fast float %3428, %3215
  %3430 = fadd fast float %3429, 0xBFE1363700000000
  %3431 = fadd fast float %3430, %3423
  %3432 = fsub fast float %3431, %3427
  %3433 = fmul fast float %3422, 0x3FBA6F0D00000000
  %3434 = fmul fast float %3426, 0x3FD0432880000000
  %3435 = fmul fast float %2730, 0xBFEF110800000000
  %3436 = fmul fast float %3435, %3215
  %3437 = fadd fast float %3436, 1.000000e+00
  %3438 = fsub fast float %3437, %3433
  %3439 = fadd fast float %3438, %3434
  %3440 = fdiv fast float %3432, %3439
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fsub fast float %3441, %2730
  %3443 = fmul fast float %3442, %3396
  %3444 = fadd fast float %3443, %2730
  br label %3459

; <label>:3445                                    ; preds = %3411
  %3446 = icmp eq i32 %3385, 8
  br i1 %3446, label %3447, label %3459

; <label>:3447                                    ; preds = %3445
  %3448 = fmul fast float %3390, %3216
  %3449 = fmul fast float %3390, %3217
  %3450 = fadd fast float %3448, %2721
  %3451 = fadd fast float %3449, %2722
  %3452 = call float @dx.op.binary.f32(i32 36, float %2731, float %3218)  ; FMin(a,b)
  %3453 = fsub fast float %3452, %2731
  %3454 = fmul fast float %3453, %3393
  %3455 = fadd fast float %3454, %2731
  %3456 = fsub fast float %3215, %2730
  %3457 = fmul fast float %3396, %3456
  %3458 = fadd fast float %3457, %2730
  br label %3459

; <label>:3459                                    ; preds = %3447, %3445, %3413, %3398, %3376, %2914, %2733, %2720
  %3460 = phi float [ %2721, %3376 ], [ %2721, %2914 ], [ %2721, %2720 ], [ %2721, %2733 ], [ %3403, %3398 ], [ %3416, %3413 ], [ %2721, %3445 ], [ %3450, %3447 ]
  %3461 = phi float [ %2722, %3376 ], [ %2722, %2914 ], [ %2722, %2720 ], [ %2722, %2733 ], [ %3404, %3398 ], [ %3417, %3413 ], [ %2722, %3445 ], [ %3451, %3447 ]
  %3462 = phi float [ %3377, %3376 ], [ %2723, %2914 ], [ %2723, %2720 ], [ %2723, %2733 ], [ %3377, %3398 ], [ %3377, %3413 ], [ %3377, %3445 ], [ %3377, %3447 ]
  %3463 = phi float [ %3378, %3376 ], [ %2724, %2914 ], [ %2724, %2720 ], [ %2724, %2733 ], [ %3378, %3398 ], [ %3378, %3413 ], [ %3378, %3445 ], [ %3378, %3447 ]
  %3464 = phi float [ %3379, %3376 ], [ %2725, %2914 ], [ %2725, %2720 ], [ %2725, %2733 ], [ %3379, %3398 ], [ %3379, %3413 ], [ %3379, %3445 ], [ %3379, %3447 ]
  %3465 = phi float [ %3380, %3376 ], [ %2726, %2914 ], [ %2726, %2720 ], [ %2726, %2733 ], [ %3380, %3398 ], [ %3380, %3413 ], [ %3380, %3445 ], [ %3380, %3447 ]
  %3466 = phi float [ %3381, %3376 ], [ %2727, %2914 ], [ %2727, %2720 ], [ %2727, %2733 ], [ %3381, %3398 ], [ %3381, %3413 ], [ %3381, %3445 ], [ %3381, %3447 ]
  %3467 = phi float [ %3382, %3376 ], [ %2728, %2914 ], [ %2728, %2720 ], [ %2728, %2733 ], [ %3382, %3398 ], [ %3382, %3413 ], [ %3382, %3445 ], [ %3382, %3447 ]
  %3468 = phi float [ %3383, %3376 ], [ %2729, %2914 ], [ %2729, %2720 ], [ %2729, %2733 ], [ %3383, %3398 ], [ %3383, %3413 ], [ %3383, %3445 ], [ %3383, %3447 ]
  %3469 = phi float [ %2730, %3376 ], [ %2730, %2914 ], [ %2730, %2720 ], [ %2730, %2733 ], [ %3410, %3398 ], [ %3444, %3413 ], [ %2730, %3445 ], [ %3458, %3447 ]
  %3470 = phi float [ %2731, %3376 ], [ %2731, %2914 ], [ %2731, %2720 ], [ %2731, %2733 ], [ %3407, %3398 ], [ %3421, %3413 ], [ %2731, %3445 ], [ %3455, %3447 ]
  %3471 = phi float [ %3384, %3376 ], [ %2732, %2914 ], [ %2732, %2720 ], [ %2732, %2733 ], [ %3384, %3398 ], [ %3384, %3413 ], [ %3384, %3445 ], [ %3384, %3447 ]
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 0
  %3474 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3460, float %3461)  ; Dot2(ax,ay,bx,by)
  %3475 = fmul fast float %3474, 0x3FE3333340000000
  %3476 = fsub fast float 1.000000e+00, %3475
  %3477 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3476, float %3460, float %3461, float %3476)  ; Dot3(ax,ay,az,bx,by,bz)
  %3478 = call float @dx.op.unary.f32(i32 25, float %3477)  ; Rsqrt(value)
  %3479 = fmul fast float %3478, %3460
  %3480 = fmul fast float %3478, %3461
  %3481 = fmul fast float %3476, %3478
  %3482 = fmul fast float %3481, %127
  %3483 = fmul fast float %3481, %129
  %3484 = fmul fast float %3481, %131
  %3485 = fmul fast float %3479, %89
  %3486 = fmul fast float %3479, %90
  %3487 = fmul fast float %3479, %91
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = fmul fast float %141, %3480
  %3492 = fmul fast float %142, %3480
  %3493 = fmul fast float %143, %3480
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = fadd fast float %3490, %3493
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3495, float %3496, float %3494, float %3495, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3494, %3498
  %3500 = fmul fast float %3495, %3498
  %3501 = fmul fast float %3496, %3498
  %3502 = fadd fast float %3468, 0xBFB99999A0000000
  %3503 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3504 = fmul fast float %3503, 0x3FF1C71C80000000
  %3505 = call float @dx.op.binary.f32(i32 36, float %3468, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3506 = fsub fast float 1.000000e+00, %3504
  %3507 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3508 = fmul fast float %3507, %3462
  %3509 = fmul fast float %3507, %3463
  %3510 = fmul fast float %3507, %3464
  %3511 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3512 = call float @dx.op.unary.f32(i32 7, float %3509)  ; Saturate(value)
  %3513 = call float @dx.op.unary.f32(i32 7, float %3510)  ; Saturate(value)
  %3514 = fmul fast float %3504, %3462
  %3515 = fmul fast float %3504, %3463
  %3516 = fmul fast float %3504, %3464
  %3517 = fadd fast float %3514, %3505
  %3518 = fadd fast float %3515, %3505
  %3519 = fadd fast float %3516, %3505
  %3520 = call float @dx.op.unary.f32(i32 7, float %3517)  ; Saturate(value)
  %3521 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3522 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3523 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.i32 %3524, 3
  %3526 = and i32 %3525, 8
  %3527 = icmp ne i32 %3526, 0
  %3528 = call float @dx.op.binary.f32(i32 35, float %3511, float %3462)  ; FMax(a,b)
  %3529 = call float @dx.op.binary.f32(i32 35, float %3512, float %3462)  ; FMax(a,b)
  %3530 = call float @dx.op.binary.f32(i32 35, float %3513, float %3462)  ; FMax(a,b)
  %3531 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3512, float %3513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3532 = select i1 %260, float %3462, float %3511
  %3533 = select i1 %260, float %3531, float %3512
  %3534 = select i1 %260, float 1.000000e+00, float %3513
  %3535 = select i1 %3527, float %3528, float %3532
  %3536 = select i1 %3527, float %3529, float %3533
  %3537 = select i1 %3527, float %3530, float %3534
  %3538 = fmul fast float %3523, 0x3FE99999A0000000
  %3539 = fmul fast float %3523, 0x3FF75C2900000000
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3545 = fadd fast float %3542, %201
  %3546 = fadd fast float %3543, %202
  %3547 = fadd fast float %3544, %203
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = fsub fast float %3545, %3549
  %3552 = fsub fast float %3546, %3550
  %3553 = fmul fast float %3551, %3551
  %3554 = fmul fast float %3552, %3552
  %3555 = fadd fast float %3553, %3554
  %3556 = call float @dx.op.unary.f32(i32 24, float %3555)  ; Sqrt(value)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3558 = fcmp fast olt float %3556, %3557
  br i1 %3558, label %3559, label %3626

; <label>:3559                                    ; preds = %3459
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 0
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3564, 0
  %3566 = extractvalue %dx.types.CBufRet.f32 %3560, 1
  %3567 = extractvalue %dx.types.CBufRet.f32 %3562, 1
  %3568 = extractvalue %dx.types.CBufRet.f32 %3564, 1
  %3569 = extractvalue %dx.types.CBufRet.f32 %3560, 3
  %3570 = extractvalue %dx.types.CBufRet.f32 %3562, 3
  %3571 = extractvalue %dx.types.CBufRet.f32 %3564, 3
  %3572 = fadd fast float %3569, %3545
  %3573 = fadd fast float %3570, %3546
  %3574 = fadd fast float %3571, %3547
  %3575 = fmul fast float %3572, %3561
  %3576 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3563, float %3575)  ; FMad(a,b,c)
  %3577 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3565, float %3576)  ; FMad(a,b,c)
  %3578 = fmul fast float %3572, %3566
  %3579 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3567, float %3578)  ; FMad(a,b,c)
  %3580 = call float @dx.op.tertiary.f32(i32 46, float %3574, float %3568, float %3579)  ; FMad(a,b,c)
  %3581 = fsub fast float %3577, %3569
  %3582 = fsub fast float %3580, %3570
  %3583 = fsub fast float %3581, %3549
  %3584 = fadd fast float %3583, %3557
  %3585 = fsub fast float %3582, %3550
  %3586 = fadd fast float %3585, %3557
  %3587 = extractvalue %dx.types.CBufRet.f32 %3548, 3
  %3588 = fmul fast float %3584, %3587
  %3589 = fmul fast float %3586, %3587
  %3590 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3591 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3592 = fsub fast float 1.000000e+00, %3590
  %3593 = fsub fast float 1.000000e+00, %3591
  %3594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %3592, float %3593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = fcmp fast ugt float %3595, 0.000000e+00
  br i1 %3596, label %3597, label %3900

; <label>:3597                                    ; preds = %3559
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3600 = fmul fast float %3599, %3595
  %3601 = extractvalue %dx.types.CBufRet.f32 %3598, 3
  %3602 = fadd fast float %3601, %3600
  %3603 = extractvalue %dx.types.CBufRet.f32 %3564, 2
  %3604 = fadd fast float %3602, %3571
  %3605 = fmul fast float %3577, %3565
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3568, float %3605)  ; FMad(a,b,c)
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3603, float %3606)  ; FMad(a,b,c)
  %3608 = fsub fast float %3607, %3571
  %3609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3610 = extractvalue %dx.types.CBufRet.f32 %3609, 2
  %3611 = fsub fast float %3608, %3610
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %3592, float %3593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %3592, float %3593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = fadd fast float %3617, %3613
  %3621 = fmul fast float %3620, 0x3F847AE140000000
  %3622 = fadd fast float %3618, %3614
  %3623 = fmul fast float %3622, 0x3F847AE140000000
  %3624 = fadd fast float %3619, %3615
  %3625 = fmul fast float %3624, 0x3F847AE140000000
  br label %3900

; <label>:3626                                    ; preds = %3459
  %3627 = and i32 %239, 1
  %3628 = icmp eq i32 %3627, 0
  br i1 %3628, label %3900, label %3629

; <label>:3629                                    ; preds = %3626
  %3630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3631 = extractvalue %dx.types.CBufRet.f32 %3630, 0
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.CBufRet.f32 %3630, 1
  %3637 = extractvalue %dx.types.CBufRet.f32 %3632, 1
  %3638 = extractvalue %dx.types.CBufRet.f32 %3634, 1
  %3639 = extractvalue %dx.types.CBufRet.f32 %3630, 3
  %3640 = extractvalue %dx.types.CBufRet.f32 %3632, 3
  %3641 = extractvalue %dx.types.CBufRet.f32 %3634, 3
  %3642 = fadd fast float %3639, %3545
  %3643 = fadd fast float %3640, %3546
  %3644 = fadd fast float %3641, %3547
  %3645 = fmul fast float %3642, %3631
  %3646 = call float @dx.op.tertiary.f32(i32 46, float %3643, float %3633, float %3645)  ; FMad(a,b,c)
  %3647 = call float @dx.op.tertiary.f32(i32 46, float %3644, float %3635, float %3646)  ; FMad(a,b,c)
  %3648 = fmul fast float %3642, %3636
  %3649 = call float @dx.op.tertiary.f32(i32 46, float %3643, float %3637, float %3648)  ; FMad(a,b,c)
  %3650 = call float @dx.op.tertiary.f32(i32 46, float %3644, float %3638, float %3649)  ; FMad(a,b,c)
  %3651 = fsub fast float %3647, %3639
  %3652 = fsub fast float %3650, %3640
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.CBufRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.CBufRet.f32 %3653, 3
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.i32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.i32 %3660, 1
  %3663 = udiv i32 %3662, %3661
  %3664 = fsub fast float %3651, %3654
  %3665 = fsub fast float %3652, %3655
  %3666 = call float @dx.op.binary.f32(i32 35, float %3664, float 0.000000e+00)  ; FMax(a,b)
  %3667 = call float @dx.op.binary.f32(i32 35, float %3665, float 0.000000e+00)  ; FMax(a,b)
  %3668 = call float @dx.op.binary.f32(i32 36, float %3666, float %3656)  ; FMin(a,b)
  %3669 = call float @dx.op.binary.f32(i32 36, float %3667, float %3657)  ; FMin(a,b)
  %3670 = add i32 %3661, -1
  %3671 = add i32 %3663, -1
  %3672 = fmul fast float %3668, %3659
  %3673 = fmul fast float %3669, %3659
  %3674 = fptoui float %3672 to i32
  %3675 = fptoui float %3673 to i32
  %3676 = call i32 @dx.op.binary.i32(i32 40, i32 %3674, i32 %3670)  ; UMin(a,b)
  %3677 = call i32 @dx.op.binary.i32(i32 40, i32 %3675, i32 %3671)  ; UMin(a,b)
  %3678 = mul i32 %3677, %3661
  %3679 = add i32 %3678, %3676
  %3680 = shl i32 %3679, 2
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = icmp eq i32 %3682, -1
  br i1 %3683, label %3900, label %3684

; <label>:3684                                    ; preds = %3629
  %3685 = mul i32 %3682, 148
  %3686 = add i32 %3685, 4
  %3687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.f32 %3687, 0
  %3689 = add i32 %3685, 8
  %3690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = add i32 %3685, 36
  %3693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = add i32 %3685, 60
  %3696 = add i32 %3685, 92
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = add i32 %3685, 116
  %3700 = fsub fast float %3651, %3688
  %3701 = fsub fast float %3652, %3691
  %3702 = fmul fast float %3659, %3700
  %3703 = fmul fast float %3659, %3701
  %3704 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3705 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3706 = fsub fast float 1.000000e+00, %3705
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 2
  %3709 = call float @dx.op.unary.f32(i32 83, float %3704)  ; DerivCoarseX(value)
  %3710 = call float @dx.op.unary.f32(i32 83, float %3706)  ; DerivCoarseX(value)
  %3711 = call float @dx.op.unary.f32(i32 84, float %3704)  ; DerivCoarseY(value)
  %3712 = call float @dx.op.unary.f32(i32 84, float %3706)  ; DerivCoarseY(value)
  %3713 = fmul fast float %3709, %3708
  %3714 = fmul fast float %3710, %3708
  %3715 = fmul fast float %3711, %3708
  %3716 = fmul fast float %3712, %3708
  %3717 = call float @dx.op.dot2.f32(i32 54, float %3715, float %3716, float %3715, float %3716)  ; Dot2(ax,ay,bx,by)
  %3718 = call float @dx.op.dot2.f32(i32 54, float %3713, float %3714, float %3713, float %3714)  ; Dot2(ax,ay,bx,by)
  %3719 = call float @dx.op.binary.f32(i32 35, float %3718, float %3717)  ; FMax(a,b)
  %3720 = call float @dx.op.unary.f32(i32 23, float %3719)  ; Log(value)
  %3721 = fmul fast float %3720, 5.000000e-01
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3724 = fadd fast float %3723, %3721
  %3725 = call float @dx.op.binary.f32(i32 35, float %3724, float 0.000000e+00)  ; FMax(a,b)
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3728 = fadd fast float %3727, %3725
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 3
  %3731 = fadd fast float %3728, %3730
  %3732 = add i32 %3698, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3733, i32 0)  ; GetDimensions(handle,mipLevel)
  %3735 = extractvalue %dx.types.Dimensions %3734, 0
  %3736 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3735)  ; FirstbitLo(value)
  %3737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.i32 %3737, 1
  %3739 = sub nsw i32 %3738, %3736
  %3740 = sitofp i32 %3739 to float
  %3741 = fsub fast float %3731, %3740
  %3742 = call float @dx.op.binary.f32(i32 35, float %3741, float 0.000000e+00)  ; FMax(a,b)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3733, %dx.types.Handle %48, float %3704, float %3706, float %3694, float undef, i32 0, i32 0, i32 undef, float %3742)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = fcmp ule float %3744, 0x3FE0101020000000
  %3746 = extractvalue %dx.types.CBufRet.i32 %3737, 0
  %3747 = and i32 %3746, 128
  %3748 = icmp ne i32 %3747, 0
  %3749 = and i1 %3745, %3748
  br i1 %3749, label %3900, label %3750

; <label>:3750                                    ; preds = %3684
  %3751 = add i32 %3685, 20
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = add i32 %3685, 24
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = add i32 %3685, 40
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = add i32 %3685, 96
  %3761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.i32 %3761, 0
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3765 = fmul fast float %3764, %3704
  %3766 = fmul fast float %3764, %3706
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = fadd fast float %3765, %3767
  %3769 = fadd fast float %3766, %3767
  %3770 = add i32 %3762, 0
  %3771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3772 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3771, i32 0)  ; GetDimensions(handle,mipLevel)
  %3773 = extractvalue %dx.types.Dimensions %3772, 0
  %3774 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3773)  ; FirstbitLo(value)
  %3775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.i32 %3775, 1
  %3777 = sub nsw i32 %3776, %3774
  %3778 = sitofp i32 %3777 to float
  %3779 = fsub fast float %3728, %3778
  %3780 = call float @dx.op.binary.f32(i32 35, float %3779, float 0.000000e+00)  ; FMax(a,b)
  %3781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3771, %dx.types.Handle %48, float %3768, float %3769, float %3759, float undef, i32 0, i32 0, i32 undef, float %3780)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = fmul fast float %3782, %3753
  %3784 = fadd fast float %3783, %3756
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.CBufRet.f32 %3785, 2
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 3
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 3
  %3793 = extractvalue %dx.types.CBufRet.f32 %3785, 3
  %3794 = fadd fast float %3790, %3651
  %3795 = fadd fast float %3792, %3652
  %3796 = fadd fast float %3784, %3793
  %3797 = fmul fast float %3794, %3786
  %3798 = call float @dx.op.tertiary.f32(i32 46, float %3795, float %3787, float %3797)  ; FMad(a,b,c)
  %3799 = call float @dx.op.tertiary.f32(i32 46, float %3796, float %3788, float %3798)  ; FMad(a,b,c)
  %3800 = fsub fast float %3799, %3793
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = fsub fast float %3800, %3802
  %3804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.i32 %3804, 0
  %3806 = call i32 @dx.op.binary.i32(i32 40, i32 %3682, i32 %3805)  ; UMin(a,b)
  %3807 = mul i32 %3806, 36
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = add i32 %3807, 4
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = fmul fast float %3812, %3704
  %3814 = fmul fast float %3812, %3706
  %3815 = extractvalue %dx.types.CBufRet.f32 %3811, 1
  %3816 = fadd fast float %3813, %3815
  %3817 = fadd fast float %3814, %3815
  %3818 = icmp eq i32 %3809, 0
  br i1 %3818, label %3887, label %3819

; <label>:3819                                    ; preds = %3750
  br label %3820

; <label>:3820                                    ; preds = %3877, %3819
  %3821 = phi float [ %3878, %3877 ], [ 0.000000e+00, %3819 ]
  %3822 = phi float [ %3879, %3877 ], [ 0.000000e+00, %3819 ]
  %3823 = phi float [ %3880, %3877 ], [ 0.000000e+00, %3819 ]
  %3824 = phi float [ %3881, %3877 ], [ 0.000000e+00, %3819 ]
  %3825 = phi float [ %3882, %3877 ], [ 0.000000e+00, %3819 ]
  %3826 = phi float [ %3883, %3877 ], [ 0.000000e+00, %3819 ]
  %3827 = phi i32 [ %3884, %3877 ], [ 0, %3819 ]
  %3828 = shl i32 %3827, 2
  %3829 = add i32 %3695, %3828
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = add i32 %3699, %3828
  %3833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.i32 %3833, 0
  %3835 = add i32 %3834, 0
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3835, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3836, i32 0)  ; GetDimensions(handle,mipLevel)
  %3838 = extractvalue %dx.types.Dimensions %3837, 0
  %3839 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3838)  ; FirstbitLo(value)
  %3840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.i32 %3840, 1
  %3842 = sub nsw i32 %3841, %3839
  %3843 = sitofp i32 %3842 to float
  %3844 = fsub fast float %3728, %3843
  %3845 = call float @dx.op.binary.f32(i32 35, float %3844, float 0.000000e+00)  ; FMax(a,b)
  %3846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3836, %dx.types.Handle %48, float %3816, float %3817, float %3831, float undef, i32 0, i32 0, i32 undef, float %3845)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = fcmp fast ogt float %3847, 0.000000e+00
  br i1 %3848, label %3849, label %3877

; <label>:3849                                    ; preds = %3820
  %3850 = add i32 %3810, %3828
  %3851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.i32 %3851, 0
  %3853 = and i32 %3852, 32767
  %3854 = mul nuw nsw i32 %3853, 928
  %3855 = add nuw nsw i32 %3854, 48
  %3856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.f32 %3856, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3856, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3856, 2
  %3860 = add nuw nsw i32 %3854, 60
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = fmul fast float %3857, %3847
  %3866 = fmul fast float %3858, %3847
  %3867 = fmul fast float %3859, %3847
  %3868 = fadd fast float %3865, %3821
  %3869 = fadd fast float %3866, %3822
  %3870 = fadd fast float %3867, %3823
  %3871 = fmul fast float %3862, %3847
  %3872 = fmul fast float %3863, %3847
  %3873 = fmul fast float %3864, %3847
  %3874 = fadd fast float %3871, %3824
  %3875 = fadd fast float %3872, %3825
  %3876 = fadd fast float %3873, %3826
  br label %3877

; <label>:3877                                    ; preds = %3849, %3820
  %3878 = phi float [ %3868, %3849 ], [ %3821, %3820 ]
  %3879 = phi float [ %3869, %3849 ], [ %3822, %3820 ]
  %3880 = phi float [ %3870, %3849 ], [ %3823, %3820 ]
  %3881 = phi float [ %3874, %3849 ], [ %3824, %3820 ]
  %3882 = phi float [ %3875, %3849 ], [ %3825, %3820 ]
  %3883 = phi float [ %3876, %3849 ], [ %3826, %3820 ]
  %3884 = add nuw i32 %3827, 1
  %3885 = icmp eq i32 %3884, %3809
  br i1 %3885, label %3886, label %3820

; <label>:3886                                    ; preds = %3877
  br label %3887

; <label>:3887                                    ; preds = %3886, %3750
  %3888 = phi float [ 0.000000e+00, %3750 ], [ %3878, %3886 ]
  %3889 = phi float [ 0.000000e+00, %3750 ], [ %3879, %3886 ]
  %3890 = phi float [ 0.000000e+00, %3750 ], [ %3880, %3886 ]
  %3891 = phi float [ 0.000000e+00, %3750 ], [ %3881, %3886 ]
  %3892 = phi float [ 0.000000e+00, %3750 ], [ %3882, %3886 ]
  %3893 = phi float [ 0.000000e+00, %3750 ], [ %3883, %3886 ]
  %3894 = fadd fast float %3891, %3888
  %3895 = fmul fast float %3894, 0x3F847AE140000000
  %3896 = fadd fast float %3892, %3889
  %3897 = fmul fast float %3896, 0x3F847AE140000000
  %3898 = fadd fast float %3893, %3890
  %3899 = fmul fast float %3898, 0x3F847AE140000000
  br label %3900

; <label>:3900                                    ; preds = %3887, %3684, %3629, %3626, %3597, %3559
  %3901 = phi float [ %3621, %3597 ], [ 0.000000e+00, %3559 ], [ %3895, %3887 ], [ 0.000000e+00, %3629 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3626 ]
  %3902 = phi float [ %3623, %3597 ], [ 0.000000e+00, %3559 ], [ %3897, %3887 ], [ 0.000000e+00, %3629 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3626 ]
  %3903 = phi float [ %3625, %3597 ], [ 0.000000e+00, %3559 ], [ %3899, %3887 ], [ 0.000000e+00, %3629 ], [ 0.000000e+00, %3684 ], [ 0.000000e+00, %3626 ]
  %3904 = phi float [ %3611, %3597 ], [ -1.310720e+05, %3559 ], [ %3803, %3887 ], [ -1.310720e+05, %3629 ], [ -1.310720e+05, %3684 ], [ -1.310720e+05, %3626 ]
  %3905 = phi i1 [ true, %3597 ], [ false, %3559 ], [ true, %3887 ], [ false, %3629 ], [ false, %3684 ], [ false, %3626 ]
  %3906 = and i32 %239, 3
  %3907 = icmp eq i32 %3906, 1
  %3908 = select i1 %3907, float 1.000000e+00, float 0.000000e+00
  %3909 = fsub fast float %3904, %203
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = select i1 %3905, float %3910, float 1.000000e+00
  %3912 = fmul fast float %3911, %3908
  %3913 = icmp eq i32 %3906, 3
  %3914 = select i1 %3913, float 1.000000e+00, float %3912
  %3915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3914)  ; FMax(a,b)
  %3916 = fcmp fast olt float %3914, 1.000000e+00
  %3917 = fcmp uge float %74, 0.000000e+00
  %3918 = and i1 %3917, %3916
  br i1 %3918, label %3919, label %3929

; <label>:3919                                    ; preds = %3900
  %3920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %48, float %74, float %75, float %76, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = fadd fast float %3921, %3915
  %3925 = fcmp ule float %73, 0.000000e+00
  %3926 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = select i1 %3925, float %3926, float 1.000000e+00
  %3928 = fmul fast float %3927, %3923
  br label %3929

; <label>:3929                                    ; preds = %3919, %3900
  %3930 = phi float [ %3924, %3919 ], [ %3915, %3900 ]
  %3931 = phi float [ %3922, %3919 ], [ 0.000000e+00, %3900 ]
  %3932 = phi float [ %3928, %3919 ], [ 0.000000e+00, %3900 ]
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3935 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3936 = fcmp fast une float %3934, 0.000000e+00
  %3937 = fcmp fast une float %3935, 0.000000e+00
  %3938 = or i1 %3936, %3937
  br i1 %3938, label %3939, label %4498

; <label>:3939                                    ; preds = %3929
  br i1 %3936, label %3940, label %4213

; <label>:3940                                    ; preds = %3939
  %3941 = call float @dx.op.unary.f32(i32 23, float %3470)  ; Log(value)
  %3942 = fmul fast float %3941, 4.000000e+00
  %3943 = call float @dx.op.unary.f32(i32 21, float %3942)  ; Exp(value)
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = fmul fast float %3945, %60
  %3947 = fmul fast float %3945, %61
  %3948 = fmul fast float %3945, %62
  %3949 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %3950 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %3951 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %3952 = call float @dx.op.unary.f32(i32 23, float %3949)  ; Log(value)
  %3953 = call float @dx.op.unary.f32(i32 23, float %3950)  ; Log(value)
  %3954 = call float @dx.op.unary.f32(i32 23, float %3951)  ; Log(value)
  %3955 = fmul fast float %3952, 4.000000e+00
  %3956 = fmul fast float %3953, 4.000000e+00
  %3957 = fmul fast float %3954, 4.000000e+00
  %3958 = call float @dx.op.unary.f32(i32 21, float %3955)  ; Exp(value)
  %3959 = call float @dx.op.unary.f32(i32 21, float %3956)  ; Exp(value)
  %3960 = call float @dx.op.unary.f32(i32 21, float %3957)  ; Exp(value)
  %3961 = fadd fast float %3959, %3958
  %3962 = fadd fast float %3961, %3960
  %3963 = fdiv fast float 1.000000e+00, %3962
  %3964 = fmul fast float %3963, %3958
  %3965 = fcmp fast ogt float %70, 0.000000e+00
  %3966 = fcmp fast ogt float %71, 0.000000e+00
  %3967 = fcmp fast ogt float %72, 0.000000e+00
  %3968 = fcmp fast olt float %70, 0.000000e+00
  %3969 = fcmp fast olt float %71, 0.000000e+00
  %3970 = fcmp fast olt float %72, 0.000000e+00
  %3971 = zext i1 %3965 to i32
  %3972 = zext i1 %3966 to i32
  %3973 = zext i1 %3967 to i32
  %3974 = zext i1 %3968 to i32
  %3975 = zext i1 %3969 to i32
  %3976 = zext i1 %3970 to i32
  %3977 = sub nsw i32 %3971, %3974
  %3978 = sub nsw i32 %3972, %3975
  %3979 = sub nsw i32 %3973, %3976
  %3980 = call float @dx.op.unary.f32(i32 83, float %3946)  ; DerivCoarseX(value)
  %3981 = call float @dx.op.unary.f32(i32 83, float %3947)  ; DerivCoarseX(value)
  %3982 = call float @dx.op.unary.f32(i32 83, float %3948)  ; DerivCoarseX(value)
  %3983 = call float @dx.op.unary.f32(i32 84, float %3946)  ; DerivCoarseY(value)
  %3984 = call float @dx.op.unary.f32(i32 84, float %3947)  ; DerivCoarseY(value)
  %3985 = call float @dx.op.unary.f32(i32 84, float %3948)  ; DerivCoarseY(value)
  %3986 = fcmp fast ole float %271, %3964
  %3987 = fmul fast float %3963, %3961
  %3988 = fcmp fast ole float %271, %3987
  %3989 = select i1 %3988, float %3948, float %3946
  %3990 = select i1 %3988, float %3946, float %3947
  %3991 = select i1 %3986, float %3947, float %3989
  %3992 = select i1 %3986, float %3948, float %3990
  %3993 = select i1 %3988, float %3982, float %3980
  %3994 = select i1 %3988, float %3980, float %3981
  %3995 = select i1 %3986, float %3981, float %3993
  %3996 = select i1 %3986, float %3982, float %3994
  %3997 = select i1 %3988, float %3985, float %3983
  %3998 = select i1 %3988, float %3983, float %3984
  %3999 = select i1 %3986, float %3984, float %3997
  %4000 = select i1 %3986, float %3985, float %3998
  %4001 = call float @dx.op.unary.f32(i32 27, float %3991)  ; Round_ni(value)
  %4002 = call float @dx.op.unary.f32(i32 27, float %3992)  ; Round_ni(value)
  %4003 = fptosi float %4001 to i32
  %4004 = fptosi float %4002 to i32
  %4005 = xor i32 %4004, %4003
  %4006 = sitofp i32 %4005 to float
  %4007 = fptosi float %4006 to i32
  %4008 = sitofp i32 %4007 to float
  %4009 = fmul fast float %4008, 0x3FE3C6EF40000000
  %4010 = frem fast float %4001, 2.560000e+02
  %4011 = frem fast float %4002, 2.560000e+02
  %4012 = fptoui float %4010 to i32
  %4013 = fptoui float %4011 to i32
  %4014 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4012, i32 %4013, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4015 = extractvalue %dx.types.ResRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.ResRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.ResRet.f32 %4014, 2
  %4018 = fadd fast float %4015, %4009
  %4019 = fadd fast float %4016, %4009
  %4020 = fadd fast float %4017, %4009
  %4021 = call float @dx.op.unary.f32(i32 22, float %4018)  ; Frc(value)
  %4022 = call float @dx.op.unary.f32(i32 22, float %4019)  ; Frc(value)
  %4023 = call float @dx.op.unary.f32(i32 22, float %4020)  ; Frc(value)
  %4024 = fmul fast float %4023, 0x401921FB60000000
  %4025 = call float @dx.op.unary.f32(i32 13, float %4024)  ; Sin(value)
  %4026 = call float @dx.op.unary.f32(i32 12, float %4024)  ; Cos(value)
  %4027 = fsub fast float -0.000000e+00, %4026
  %4028 = fmul fast float %4026, %3991
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %3992, float %4028)  ; FMad(a,b,c)
  %4030 = fmul fast float %4025, %3991
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %3992, float %4030)  ; FMad(a,b,c)
  %4032 = fadd fast float %4029, %4021
  %4033 = fadd fast float %4031, %4022
  %4034 = extractvalue %dx.types.CBufRet.f32 %3944, 3
  %4035 = bitcast float %4034 to i32
  %4036 = icmp eq i32 %4035, 0
  br i1 %4036, label %4075, label %4037

; <label>:4037                                    ; preds = %3940
  %4038 = add i32 %4035, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4039, %dx.types.Handle %115, float %4032, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %3995, float %3996, float undef, float %3999, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 1
  %4044 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4045 = fsub fast float 1.000000e+00, %3934
  %4046 = call float @dx.op.binary.f32(i32 35, float %4045, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4047 = bitcast float %3934 to i32
  %4048 = sitofp i32 %4047 to float
  %4049 = fadd fast float %4048, 0xC1CFBF8940000000
  %4050 = fmul fast float %4044, %4049
  %4051 = fadd fast float %4050, 0x41CFBF8940000000
  %4052 = fptosi float %4051 to i32
  %4053 = bitcast i32 %4052 to float
  %4054 = bitcast float %4046 to i32
  %4055 = sitofp i32 %4054 to float
  %4056 = fadd fast float %4055, 0xC1CFBF8940000000
  %4057 = fmul fast float %4056, %4044
  %4058 = fadd fast float %4057, 0x41CFBF8940000000
  %4059 = fptosi float %4058 to i32
  %4060 = bitcast i32 %4059 to float
  %4061 = fmul fast float %4053, %4043
  %4062 = fmul fast float %4060, %4043
  %4063 = fsub fast float %4046, %4061
  %4064 = fadd fast float %4062, %4046
  %4065 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4066 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4067 = fsub fast float %4041, %4065
  %4068 = fsub fast float %4066, %4065
  %4069 = bitcast float %4068 to i32
  %4070 = sub nsw i32 2129859010, %4069
  %4071 = bitcast i32 %4070 to float
  %4072 = fmul fast float %4071, %4067
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fcmp fast olt float %4073, 0x3F70101020000000
  br i1 %4074, label %4213, label %4075

; <label>:4075                                    ; preds = %4037, %3940
  %4076 = phi float [ %4073, %4037 ], [ %3934, %3940 ]
  %4077 = fmul fast float %4076, %3943
  %4078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.i32 %4078, 1
  %4080 = extractvalue %dx.types.CBufRet.i32 %4078, 0
  %4081 = add i32 %4080, 0
  %4082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4083 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4082, %dx.types.Handle %114, float %4032, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %3995, float %3996, float undef, float %3999, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.ResRet.f32 %4083, 1
  %4086 = extractvalue %dx.types.ResRet.f32 %4083, 2
  %4087 = extractvalue %dx.types.ResRet.f32 %4083, 3
  %4088 = and i32 %4079, 255
  %4089 = uitofp i32 %4088 to float
  %4090 = lshr i32 %4079, 8
  %4091 = and i32 %4090, 255
  %4092 = uitofp i32 %4091 to float
  %4093 = fmul fast float %4087, %4089
  %4094 = fadd fast float %4093, %4092
  %4095 = fmul fast float %4094, 0x3F70101000000000
  %4096 = fadd fast float %4095, 0xBFB99999A0000000
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = fmul fast float %4097, 0x3FF1C71C80000000
  %4099 = call float @dx.op.binary.f32(i32 36, float %4095, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4100 = fsub fast float 1.000000e+00, %4098
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = fmul fast float %4101, %4084
  %4103 = fmul fast float %4101, %4085
  %4104 = fmul fast float %4101, %4086
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = fmul fast float %4098, %4084
  %4109 = fmul fast float %4098, %4085
  %4110 = fmul fast float %4098, %4086
  %4111 = fadd fast float %4108, %4099
  %4112 = fadd fast float %4109, %4099
  %4113 = fadd fast float %4110, %4099
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 3
  %4119 = extractvalue %dx.types.CBufRet.i32 %4117, 2
  %4120 = add i32 %4119, 0
  %4121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4121, %dx.types.Handle %114, float %4032, float %4033, float undef, float undef, i32 0, i32 0, i32 undef, float %3995, float %3996, float undef, float %3999, float %4000, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4127 = and i32 %4118, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = lshr i32 %4118, 8
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = lshr i32 %4118, 16
  %4133 = and i32 %4132, 255
  %4134 = uitofp i32 %4133 to float
  %4135 = fmul fast float %4134, 0x3F70101000000000
  %4136 = fmul fast float %4123, %4128
  %4137 = fadd fast float %4136, %4131
  %4138 = fmul fast float %4137, 0x3F70101000000000
  %4139 = fadd fast float %4124, -5.000000e-01
  %4140 = fadd fast float %4126, -5.000000e-01
  %4141 = fmul fast float %4139, %4135
  %4142 = fmul fast float %4140, %4135
  %4143 = fadd fast float %4141, 5.000000e-01
  %4144 = fadd fast float %4142, 5.000000e-01
  %4145 = fmul fast float %4143, 2.000000e+00
  %4146 = fadd fast float %4145, -1.000000e+00
  %4147 = fmul fast float %4144, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = fadd fast float %4146, %4148
  %4150 = fmul fast float %4149, 5.000000e-01
  %4151 = fsub fast float %4146, %4148
  %4152 = fmul fast float %4151, 5.000000e-01
  %4153 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4154 = fsub fast float 1.000000e+00, %4153
  %4155 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4156 = fsub fast float %4154, %4155
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4150, float %4152, float %4156, float %4150, float %4152, float %4156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = call float @dx.op.unary.f32(i32 25, float %4157)  ; Rsqrt(value)
  %4159 = fmul fast float %4150, %4158
  %4160 = fmul fast float %4152, %4158
  %4161 = select i1 %3988, i32 %3978, i32 %3979
  %4162 = select i1 %3986, i32 %3977, i32 %4161
  %4163 = sitofp i32 %4162 to float
  %4164 = fmul fast float %4156, %4163
  %4165 = fmul fast float %4164, %4158
  %4166 = select i1 %3988, float %4165, float %4160
  %4167 = select i1 %3988, float %4160, float %4165
  %4168 = select i1 %3986, float %4165, float %4159
  %4169 = select i1 %3986, float %4160, float %4166
  %4170 = select i1 %3986, float %4159, float %4167
  %4171 = fsub fast float %4105, %3535
  %4172 = fsub fast float %4106, %3536
  %4173 = fsub fast float %4107, %3537
  %4174 = fmul fast float %4171, %4077
  %4175 = fmul fast float %4172, %4077
  %4176 = fmul fast float %4173, %4077
  %4177 = fadd fast float %4174, %3535
  %4178 = fadd fast float %4175, %3536
  %4179 = fadd fast float %4176, %3537
  %4180 = fsub fast float %4114, %3520
  %4181 = fsub fast float %4115, %3521
  %4182 = fsub fast float %4116, %3522
  %4183 = fmul fast float %4180, %4077
  %4184 = fmul fast float %4181, %4077
  %4185 = fmul fast float %4182, %4077
  %4186 = fadd fast float %4183, %3520
  %4187 = fadd fast float %4184, %3521
  %4188 = fadd fast float %4185, %3522
  %4189 = fadd fast float %4168, %3499
  %4190 = fadd fast float %4169, %3500
  %4191 = fadd fast float %4170, %3501
  %4192 = call float @dx.op.dot3.f32(i32 55, float %4189, float %4190, float %4191, float %4189, float %4190, float %4191)  ; Dot3(ax,ay,az,bx,by,bz)
  %4193 = call float @dx.op.unary.f32(i32 25, float %4192)  ; Rsqrt(value)
  %4194 = fmul fast float %4189, %4193
  %4195 = fmul fast float %4190, %4193
  %4196 = fmul fast float %4191, %4193
  %4197 = fsub fast float %4194, %3499
  %4198 = fsub fast float %4195, %3500
  %4199 = fsub fast float %4196, %3501
  %4200 = fmul fast float %4197, %4077
  %4201 = fmul fast float %4198, %4077
  %4202 = fmul fast float %4199, %4077
  %4203 = fadd fast float %4200, %3499
  %4204 = fadd fast float %4201, %3500
  %4205 = fadd fast float %4202, %3501
  %4206 = call float @dx.op.binary.f32(i32 36, float %3470, float %4125)  ; FMin(a,b)
  %4207 = fsub fast float %4206, %3470
  %4208 = fmul fast float %4207, %4077
  %4209 = fadd fast float %4208, %3470
  %4210 = fsub fast float %4138, %3538
  %4211 = fmul fast float %4210, %4077
  %4212 = fadd fast float %4211, %3538
  br label %4213

; <label>:4213                                    ; preds = %4075, %4037, %3939
  %4214 = phi float [ %4177, %4075 ], [ %3535, %4037 ], [ %3535, %3939 ]
  %4215 = phi float [ %4178, %4075 ], [ %3536, %4037 ], [ %3536, %3939 ]
  %4216 = phi float [ %4179, %4075 ], [ %3537, %4037 ], [ %3537, %3939 ]
  %4217 = phi float [ %4186, %4075 ], [ %3520, %4037 ], [ %3520, %3939 ]
  %4218 = phi float [ %4187, %4075 ], [ %3521, %4037 ], [ %3521, %3939 ]
  %4219 = phi float [ %4188, %4075 ], [ %3522, %4037 ], [ %3522, %3939 ]
  %4220 = phi float [ %4203, %4075 ], [ %3499, %4037 ], [ %3499, %3939 ]
  %4221 = phi float [ %4204, %4075 ], [ %3500, %4037 ], [ %3500, %3939 ]
  %4222 = phi float [ %4205, %4075 ], [ %3501, %4037 ], [ %3501, %3939 ]
  %4223 = phi float [ %4212, %4075 ], [ %3538, %4037 ], [ %3538, %3939 ]
  %4224 = phi float [ %4209, %4075 ], [ %3470, %4037 ], [ %3470, %3939 ]
  br i1 %3937, label %4225, label %4498

; <label>:4225                                    ; preds = %4213
  %4226 = call float @dx.op.unary.f32(i32 23, float %4224)  ; Log(value)
  %4227 = fmul fast float %4226, 4.000000e+00
  %4228 = call float @dx.op.unary.f32(i32 21, float %4227)  ; Exp(value)
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = fmul fast float %4230, %60
  %4232 = fmul fast float %4230, %61
  %4233 = fmul fast float %4230, %62
  %4234 = call float @dx.op.unary.f32(i32 6, float %70)  ; FAbs(value)
  %4235 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4236 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4237 = call float @dx.op.unary.f32(i32 23, float %4234)  ; Log(value)
  %4238 = call float @dx.op.unary.f32(i32 23, float %4235)  ; Log(value)
  %4239 = call float @dx.op.unary.f32(i32 23, float %4236)  ; Log(value)
  %4240 = fmul fast float %4237, 4.000000e+00
  %4241 = fmul fast float %4238, 4.000000e+00
  %4242 = fmul fast float %4239, 4.000000e+00
  %4243 = call float @dx.op.unary.f32(i32 21, float %4240)  ; Exp(value)
  %4244 = call float @dx.op.unary.f32(i32 21, float %4241)  ; Exp(value)
  %4245 = call float @dx.op.unary.f32(i32 21, float %4242)  ; Exp(value)
  %4246 = fadd fast float %4244, %4243
  %4247 = fadd fast float %4246, %4245
  %4248 = fdiv fast float 1.000000e+00, %4247
  %4249 = fmul fast float %4248, %4243
  %4250 = fcmp fast ogt float %70, 0.000000e+00
  %4251 = fcmp fast ogt float %71, 0.000000e+00
  %4252 = fcmp fast ogt float %72, 0.000000e+00
  %4253 = fcmp fast olt float %70, 0.000000e+00
  %4254 = fcmp fast olt float %71, 0.000000e+00
  %4255 = fcmp fast olt float %72, 0.000000e+00
  %4256 = zext i1 %4250 to i32
  %4257 = zext i1 %4251 to i32
  %4258 = zext i1 %4252 to i32
  %4259 = zext i1 %4253 to i32
  %4260 = zext i1 %4254 to i32
  %4261 = zext i1 %4255 to i32
  %4262 = sub nsw i32 %4256, %4259
  %4263 = sub nsw i32 %4257, %4260
  %4264 = sub nsw i32 %4258, %4261
  %4265 = call float @dx.op.unary.f32(i32 83, float %4231)  ; DerivCoarseX(value)
  %4266 = call float @dx.op.unary.f32(i32 83, float %4232)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 83, float %4233)  ; DerivCoarseX(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %4231)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %4232)  ; DerivCoarseY(value)
  %4270 = call float @dx.op.unary.f32(i32 84, float %4233)  ; DerivCoarseY(value)
  %4271 = fcmp fast ole float %271, %4249
  %4272 = fmul fast float %4248, %4246
  %4273 = fcmp fast ole float %271, %4272
  %4274 = select i1 %4273, float %4233, float %4231
  %4275 = select i1 %4273, float %4231, float %4232
  %4276 = select i1 %4271, float %4232, float %4274
  %4277 = select i1 %4271, float %4233, float %4275
  %4278 = select i1 %4273, float %4267, float %4265
  %4279 = select i1 %4273, float %4265, float %4266
  %4280 = select i1 %4271, float %4266, float %4278
  %4281 = select i1 %4271, float %4267, float %4279
  %4282 = select i1 %4273, float %4270, float %4268
  %4283 = select i1 %4273, float %4268, float %4269
  %4284 = select i1 %4271, float %4269, float %4282
  %4285 = select i1 %4271, float %4270, float %4283
  %4286 = call float @dx.op.unary.f32(i32 27, float %4276)  ; Round_ni(value)
  %4287 = call float @dx.op.unary.f32(i32 27, float %4277)  ; Round_ni(value)
  %4288 = fptosi float %4286 to i32
  %4289 = fptosi float %4287 to i32
  %4290 = xor i32 %4289, %4288
  %4291 = sitofp i32 %4290 to float
  %4292 = fptosi float %4291 to i32
  %4293 = sitofp i32 %4292 to float
  %4294 = fmul fast float %4293, 0x3FE3C6EF40000000
  %4295 = frem fast float %4286, 2.560000e+02
  %4296 = frem fast float %4287, 2.560000e+02
  %4297 = fptoui float %4295 to i32
  %4298 = fptoui float %4296 to i32
  %4299 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %4297, i32 %4298, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = extractvalue %dx.types.ResRet.f32 %4299, 1
  %4302 = extractvalue %dx.types.ResRet.f32 %4299, 2
  %4303 = fadd fast float %4300, %4294
  %4304 = fadd fast float %4301, %4294
  %4305 = fadd fast float %4302, %4294
  %4306 = call float @dx.op.unary.f32(i32 22, float %4303)  ; Frc(value)
  %4307 = call float @dx.op.unary.f32(i32 22, float %4304)  ; Frc(value)
  %4308 = call float @dx.op.unary.f32(i32 22, float %4305)  ; Frc(value)
  %4309 = fmul fast float %4308, 0x401921FB60000000
  %4310 = call float @dx.op.unary.f32(i32 13, float %4309)  ; Sin(value)
  %4311 = call float @dx.op.unary.f32(i32 12, float %4309)  ; Cos(value)
  %4312 = fsub fast float -0.000000e+00, %4311
  %4313 = fmul fast float %4311, %4276
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4277, float %4313)  ; FMad(a,b,c)
  %4315 = fmul fast float %4310, %4276
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4312, float %4277, float %4315)  ; FMad(a,b,c)
  %4317 = fadd fast float %4314, %4306
  %4318 = fadd fast float %4316, %4307
  %4319 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4320 = bitcast float %4319 to i32
  %4321 = icmp eq i32 %4320, 0
  br i1 %4321, label %4360, label %4322

; <label>:4322                                    ; preds = %4225
  %4323 = add i32 %4320, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4324, %dx.types.Handle %115, float %4317, float %4318, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4281, float undef, float %4284, float %4285, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4330 = fsub fast float 1.000000e+00, %3935
  %4331 = call float @dx.op.binary.f32(i32 35, float %4330, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4332 = bitcast float %3935 to i32
  %4333 = sitofp i32 %4332 to float
  %4334 = fadd fast float %4333, 0xC1CFBF8940000000
  %4335 = fmul fast float %4329, %4334
  %4336 = fadd fast float %4335, 0x41CFBF8940000000
  %4337 = fptosi float %4336 to i32
  %4338 = bitcast i32 %4337 to float
  %4339 = bitcast float %4331 to i32
  %4340 = sitofp i32 %4339 to float
  %4341 = fadd fast float %4340, 0xC1CFBF8940000000
  %4342 = fmul fast float %4341, %4329
  %4343 = fadd fast float %4342, 0x41CFBF8940000000
  %4344 = fptosi float %4343 to i32
  %4345 = bitcast i32 %4344 to float
  %4346 = fmul fast float %4338, %4328
  %4347 = fmul fast float %4345, %4328
  %4348 = fsub fast float %4331, %4346
  %4349 = fadd fast float %4347, %4331
  %4350 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4352 = fsub fast float %4326, %4350
  %4353 = fsub fast float %4351, %4350
  %4354 = bitcast float %4353 to i32
  %4355 = sub nsw i32 2129859010, %4354
  %4356 = bitcast i32 %4355 to float
  %4357 = fmul fast float %4356, %4352
  %4358 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4359 = fcmp fast olt float %4358, 0x3F70101020000000
  br i1 %4359, label %4498, label %4360

; <label>:4360                                    ; preds = %4322, %4225
  %4361 = phi float [ %4358, %4322 ], [ %3935, %4225 ]
  %4362 = fmul fast float %4361, %4228
  %4363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.i32 %4363, 1
  %4365 = extractvalue %dx.types.CBufRet.i32 %4363, 0
  %4366 = add i32 %4365, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4367, %dx.types.Handle %114, float %4317, float %4318, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4281, float undef, float %4284, float %4285, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = extractvalue %dx.types.ResRet.f32 %4368, 3
  %4373 = and i32 %4364, 255
  %4374 = uitofp i32 %4373 to float
  %4375 = lshr i32 %4364, 8
  %4376 = and i32 %4375, 255
  %4377 = uitofp i32 %4376 to float
  %4378 = fmul fast float %4372, %4374
  %4379 = fadd fast float %4378, %4377
  %4380 = fmul fast float %4379, 0x3F70101000000000
  %4381 = fadd fast float %4380, 0xBFB99999A0000000
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fmul fast float %4382, 0x3FF1C71C80000000
  %4384 = call float @dx.op.binary.f32(i32 36, float %4380, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4385 = fsub fast float 1.000000e+00, %4383
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fmul fast float %4386, %4369
  %4388 = fmul fast float %4386, %4370
  %4389 = fmul fast float %4386, %4371
  %4390 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4391 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4392 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4393 = fmul fast float %4383, %4369
  %4394 = fmul fast float %4383, %4370
  %4395 = fmul fast float %4383, %4371
  %4396 = fadd fast float %4393, %4384
  %4397 = fadd fast float %4394, %4384
  %4398 = fadd fast float %4395, %4384
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.i32 %4402, 3
  %4404 = extractvalue %dx.types.CBufRet.i32 %4402, 2
  %4405 = add i32 %4404, 0
  %4406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4407 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4406, %dx.types.Handle %114, float %4317, float %4318, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4281, float undef, float %4284, float %4285, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.ResRet.f32 %4407, 3
  %4412 = and i32 %4403, 255
  %4413 = uitofp i32 %4412 to float
  %4414 = lshr i32 %4403, 8
  %4415 = and i32 %4414, 255
  %4416 = uitofp i32 %4415 to float
  %4417 = lshr i32 %4403, 16
  %4418 = and i32 %4417, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = fmul fast float %4419, 0x3F70101000000000
  %4421 = fmul fast float %4408, %4413
  %4422 = fadd fast float %4421, %4416
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = fadd fast float %4409, -5.000000e-01
  %4425 = fadd fast float %4411, -5.000000e-01
  %4426 = fmul fast float %4424, %4420
  %4427 = fmul fast float %4425, %4420
  %4428 = fadd fast float %4426, 5.000000e-01
  %4429 = fadd fast float %4427, 5.000000e-01
  %4430 = fmul fast float %4428, 2.000000e+00
  %4431 = fadd fast float %4430, -1.000000e+00
  %4432 = fmul fast float %4429, 2.000000e+00
  %4433 = fadd fast float %4432, -1.000000e+00
  %4434 = fadd fast float %4431, %4433
  %4435 = fmul fast float %4434, 5.000000e-01
  %4436 = fsub fast float %4431, %4433
  %4437 = fmul fast float %4436, 5.000000e-01
  %4438 = call float @dx.op.unary.f32(i32 6, float %4435)  ; FAbs(value)
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = call float @dx.op.unary.f32(i32 6, float %4437)  ; FAbs(value)
  %4441 = fsub fast float %4439, %4440
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4435, float %4437, float %4441, float %4435, float %4437, float %4441)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4435, %4443
  %4445 = fmul fast float %4437, %4443
  %4446 = select i1 %4273, i32 %4263, i32 %4264
  %4447 = select i1 %4271, i32 %4262, i32 %4446
  %4448 = sitofp i32 %4447 to float
  %4449 = fmul fast float %4441, %4448
  %4450 = fmul fast float %4449, %4443
  %4451 = select i1 %4273, float %4450, float %4445
  %4452 = select i1 %4273, float %4445, float %4450
  %4453 = select i1 %4271, float %4450, float %4444
  %4454 = select i1 %4271, float %4445, float %4451
  %4455 = select i1 %4271, float %4444, float %4452
  %4456 = fsub fast float %4390, %4214
  %4457 = fsub fast float %4391, %4215
  %4458 = fsub fast float %4392, %4216
  %4459 = fmul fast float %4456, %4362
  %4460 = fmul fast float %4457, %4362
  %4461 = fmul fast float %4458, %4362
  %4462 = fadd fast float %4459, %4214
  %4463 = fadd fast float %4460, %4215
  %4464 = fadd fast float %4461, %4216
  %4465 = fsub fast float %4399, %4217
  %4466 = fsub fast float %4400, %4218
  %4467 = fsub fast float %4401, %4219
  %4468 = fmul fast float %4465, %4362
  %4469 = fmul fast float %4466, %4362
  %4470 = fmul fast float %4467, %4362
  %4471 = fadd fast float %4468, %4217
  %4472 = fadd fast float %4469, %4218
  %4473 = fadd fast float %4470, %4219
  %4474 = fadd fast float %4453, %4220
  %4475 = fadd fast float %4454, %4221
  %4476 = fadd fast float %4455, %4222
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = call float @dx.op.unary.f32(i32 25, float %4477)  ; Rsqrt(value)
  %4479 = fmul fast float %4474, %4478
  %4480 = fmul fast float %4475, %4478
  %4481 = fmul fast float %4476, %4478
  %4482 = fsub fast float %4479, %4220
  %4483 = fsub fast float %4480, %4221
  %4484 = fsub fast float %4481, %4222
  %4485 = fmul fast float %4482, %4362
  %4486 = fmul fast float %4483, %4362
  %4487 = fmul fast float %4484, %4362
  %4488 = fadd fast float %4485, %4220
  %4489 = fadd fast float %4486, %4221
  %4490 = fadd fast float %4487, %4222
  %4491 = call float @dx.op.binary.f32(i32 36, float %4224, float %4410)  ; FMin(a,b)
  %4492 = fsub fast float %4491, %4224
  %4493 = fmul fast float %4492, %4362
  %4494 = fadd fast float %4493, %4224
  %4495 = fsub fast float %4423, %4223
  %4496 = fmul fast float %4495, %4362
  %4497 = fadd fast float %4496, %4223
  br label %4498

; <label>:4498                                    ; preds = %4360, %4322, %4213, %3929
  %4499 = phi float [ %4462, %4360 ], [ %4214, %4322 ], [ %4214, %4213 ], [ %3535, %3929 ]
  %4500 = phi float [ %4463, %4360 ], [ %4215, %4322 ], [ %4215, %4213 ], [ %3536, %3929 ]
  %4501 = phi float [ %4464, %4360 ], [ %4216, %4322 ], [ %4216, %4213 ], [ %3537, %3929 ]
  %4502 = phi float [ %4471, %4360 ], [ %4217, %4322 ], [ %4217, %4213 ], [ %3520, %3929 ]
  %4503 = phi float [ %4472, %4360 ], [ %4218, %4322 ], [ %4218, %4213 ], [ %3521, %3929 ]
  %4504 = phi float [ %4473, %4360 ], [ %4219, %4322 ], [ %4219, %4213 ], [ %3522, %3929 ]
  %4505 = phi float [ %4488, %4360 ], [ %4220, %4322 ], [ %4220, %4213 ], [ %3499, %3929 ]
  %4506 = phi float [ %4489, %4360 ], [ %4221, %4322 ], [ %4221, %4213 ], [ %3500, %3929 ]
  %4507 = phi float [ %4490, %4360 ], [ %4222, %4322 ], [ %4222, %4213 ], [ %3501, %3929 ]
  %4508 = phi float [ %4497, %4360 ], [ %4223, %4322 ], [ %4223, %4213 ], [ %3538, %3929 ]
  %4509 = phi float [ %4494, %4360 ], [ %4224, %4322 ], [ %4224, %4213 ], [ %3470, %3929 ]
  %4510 = fcmp fast une float %3933, 0.000000e+00
  br i1 %4510, label %4511, label %4682

; <label>:4511                                    ; preds = %4498
  %4512 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = call float @dx.op.unary.f32(i32 25, float %4512)  ; Rsqrt(value)
  %4514 = fmul fast float %201, %4513
  %4515 = fsub fast float -0.000000e+00, %4514
  %4516 = fmul fast float %202, %4513
  %4517 = fsub fast float -0.000000e+00, %4516
  %4518 = fmul fast float %203, %4513
  %4519 = fsub fast float -0.000000e+00, %4518
  %4520 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4517, float %4519, float %127, float %129, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4521 = fmul fast float %3933, 2.500000e+00
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %3933, 0x4013FFFFE0000000
  %4524 = fadd fast float %4523, 0xBFFFFFFFE0000000
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %3933, 0x4004000020000000
  %4527 = fadd fast float %4526, 0xBFF8000040000000
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = fmul fast float %3502, 1.000000e+01
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = fmul fast float %4530, 2.000000e+00
  %4532 = fsub fast float 3.000000e+00, %4531
  %4533 = fmul fast float %4530, %4530
  %4534 = fmul fast float %4533, %4532
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = fmul fast float %4508, 0x3FF75C2900000000
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fsub fast float 0x3FE3333340000000, %4537
  %4539 = fmul fast float %4538, 0x400AAAAAA0000000
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fmul fast float %4535, %4540
  %4542 = fmul fast float %4499, 0x3FEA2B8620000000
  %4543 = fmul fast float %4500, 0x3FEA2B8620000000
  %4544 = fmul fast float %4501, 0x3FEA2B8620000000
  %4545 = fadd fast float %4542, 0x3FC81DFBA0000000
  %4546 = fmul fast float %4545, %4499
  %4547 = fadd fast float %4546, 0x3F910E6020000000
  %4548 = fadd fast float %4543, 0x3FC81DFBA0000000
  %4549 = fmul fast float %4548, %4500
  %4550 = fadd fast float %4549, 0x3F910E6020000000
  %4551 = fadd fast float %4544, 0x3FC81DFBA0000000
  %4552 = fmul fast float %4551, %4501
  %4553 = fadd fast float %4552, 0x3F910E6020000000
  %4554 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4555 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4556 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4557 = fsub fast float %4554, %4499
  %4558 = fsub fast float %4555, %4500
  %4559 = fsub fast float %4556, %4501
  %4560 = fmul fast float %4557, %4522
  %4561 = fmul fast float %4560, %4541
  %4562 = fmul fast float %4558, %4522
  %4563 = fmul fast float %4562, %4541
  %4564 = fmul fast float %4541, %4522
  %4565 = fmul fast float %4564, %4559
  %4566 = fadd fast float %4561, %4499
  %4567 = fadd fast float %4563, %4500
  %4568 = fadd fast float %4565, %4501
  %4569 = fmul fast float %4509, %4509
  %4570 = fmul fast float %4569, %4569
  %4571 = fadd fast float %4525, 1.000000e+00
  %4572 = fsub fast float %4571, %4541
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = call float @dx.op.dot3.f32(i32 55, float %127, float %129, float %131, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fsub fast float 1.000000e+00, %4570
  %4577 = call float @dx.op.binary.f32(i32 36, float %4573, float %4576)  ; FMin(a,b)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4579 = call float @dx.op.binary.f32(i32 35, float %4577, float %4578)  ; FMax(a,b)
  %4580 = fadd fast float %4575, 0xBFE4CCCCC0000000
  %4581 = fmul fast float %4580, 0x4006DB6DA0000000
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fmul fast float %4582, 2.000000e+00
  %4584 = fsub fast float 3.000000e+00, %4583
  %4585 = bitcast float %4502 to i32
  %4586 = ashr i32 %4585, 1
  %4587 = add nsw i32 %4586, 532487669
  %4588 = bitcast i32 %4587 to float
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = bitcast float %4589 to i32
  %4591 = sub nsw i32 2129859010, %4590
  %4592 = bitcast i32 %4591 to float
  %4593 = fmul fast float %4592, 2.000000e+00
  %4594 = bitcast float %4503 to i32
  %4595 = ashr i32 %4594, 1
  %4596 = add nsw i32 %4595, 532487669
  %4597 = bitcast i32 %4596 to float
  %4598 = fsub fast float 1.000000e+00, %4597
  %4599 = bitcast float %4598 to i32
  %4600 = sub nsw i32 2129859010, %4599
  %4601 = bitcast i32 %4600 to float
  %4602 = fmul fast float %4601, 2.000000e+00
  %4603 = bitcast float %4504 to i32
  %4604 = ashr i32 %4603, 1
  %4605 = add nsw i32 %4604, 532487669
  %4606 = bitcast i32 %4605 to float
  %4607 = fsub fast float 1.000000e+00, %4606
  %4608 = bitcast float %4607 to i32
  %4609 = sub nsw i32 2129859010, %4608
  %4610 = bitcast i32 %4609 to float
  %4611 = fmul fast float %4610, 2.000000e+00
  %4612 = fsub fast float 0x4002A9FBE0000000, %4593
  %4613 = fadd fast float %4593, 0x3FD54FDF00000000
  %4614 = bitcast float %4613 to i32
  %4615 = sub nsw i32 2129859010, %4614
  %4616 = bitcast i32 %4615 to float
  %4617 = fmul fast float %4616, %4612
  %4618 = fmul fast float %4617, %4617
  %4619 = fsub fast float 0x4002A9FBE0000000, %4602
  %4620 = fadd fast float %4602, 0x3FD54FDF00000000
  %4621 = bitcast float %4620 to i32
  %4622 = sub nsw i32 2129859010, %4621
  %4623 = bitcast i32 %4622 to float
  %4624 = fmul fast float %4623, %4619
  %4625 = fmul fast float %4624, %4624
  %4626 = fsub fast float 0x4002A9FBE0000000, %4611
  %4627 = fadd fast float %4611, 0x3FD54FDF00000000
  %4628 = bitcast float %4627 to i32
  %4629 = sub nsw i32 2129859010, %4628
  %4630 = bitcast i32 %4629 to float
  %4631 = fmul fast float %4630, %4626
  %4632 = fmul fast float %4631, %4631
  %4633 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4618)  ; FMax(a,b)
  %4634 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4625)  ; FMax(a,b)
  %4635 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4632)  ; FMax(a,b)
  %4636 = fsub fast float 1.000000e+00, %4520
  %4637 = fadd fast float %4636, %4535
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = fsub fast float 1.000000e+00, %3914
  %4640 = fmul fast float %4579, %4639
  %4641 = fmul fast float %4582, %4582
  %4642 = fmul fast float %4641, %4640
  %4643 = fmul fast float %4642, %4584
  %4644 = fmul fast float %4639, 0xBFE99999A0000000
  %4645 = fmul fast float %4644, %4522
  %4646 = fmul fast float %4645, %4541
  %4647 = fadd fast float %4646, 1.000000e+00
  %4648 = fadd fast float %4508, -1.000000e+00
  %4649 = fmul fast float %4647, %4648
  %4650 = fadd fast float %4649, 1.000000e+00
  %4651 = fsub fast float %4633, %4502
  %4652 = fsub fast float %4634, %4503
  %4653 = fsub fast float %4635, %4504
  %4654 = fmul fast float %4643, %4651
  %4655 = fmul fast float %4643, %4652
  %4656 = fmul fast float %4643, %4653
  %4657 = fadd fast float %4654, %4502
  %4658 = fadd fast float %4655, %4503
  %4659 = fadd fast float %4656, %4504
  %4660 = fsub fast float %127, %4505
  %4661 = fsub fast float %129, %4506
  %4662 = fsub fast float %131, %4507
  %4663 = fmul fast float %4643, %4660
  %4664 = fmul fast float %4643, %4661
  %4665 = fmul fast float %4643, %4662
  %4666 = fadd fast float %4663, %4505
  %4667 = fadd fast float %4664, %4506
  %4668 = fadd fast float %4665, %4507
  %4669 = fmul fast float %4643, %4638
  %4670 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = fmul fast float %4669, %4671
  %4673 = fadd fast float %4672, %4670
  %4674 = fsub fast float 1.000000e+00, %4509
  %4675 = fmul fast float %4643, %4674
  %4676 = fadd fast float %4675, %4509
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 25, float %4677)  ; Rsqrt(value)
  %4679 = fmul fast float %4666, %4678
  %4680 = fmul fast float %4667, %4678
  %4681 = fmul fast float %4668, %4678
  br label %4682

; <label>:4682                                    ; preds = %4511, %4498
  %4683 = phi float [ %4566, %4511 ], [ %4499, %4498 ]
  %4684 = phi float [ %4567, %4511 ], [ %4500, %4498 ]
  %4685 = phi float [ %4568, %4511 ], [ %4501, %4498 ]
  %4686 = phi float [ %4657, %4511 ], [ %4502, %4498 ]
  %4687 = phi float [ %4658, %4511 ], [ %4503, %4498 ]
  %4688 = phi float [ %4659, %4511 ], [ %4504, %4498 ]
  %4689 = phi float [ %4679, %4511 ], [ %4505, %4498 ]
  %4690 = phi float [ %4680, %4511 ], [ %4506, %4498 ]
  %4691 = phi float [ %4681, %4511 ], [ %4507, %4498 ]
  %4692 = phi float [ %4673, %4511 ], [ %4508, %4498 ]
  %4693 = phi float [ %4676, %4511 ], [ %4509, %4498 ]
  %4694 = icmp eq i32 %59, 0
  br i1 %4694, label %4725, label %4695

; <label>:4695                                    ; preds = %4682
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4699 = fmul fast float %4697, %118
  %4700 = fmul fast float %4698, %119
  %4701 = fmul fast float %4699, 1.024000e+03
  %4702 = fmul fast float %4700, 1.024000e+03
  %4703 = fadd fast float %4701, -5.120000e+02
  %4704 = fadd fast float %4702, -5.120000e+02
  %4705 = fmul fast float %4699, 0x4081BEDF00000000
  %4706 = fadd fast float %4705, 0xC071BEDF00000000
  %4707 = call float @dx.op.unary.f32(i32 22, float %4706)  ; Frc(value)
  %4708 = fmul fast float %4703, %4707
  %4709 = fadd fast float %4708, %4704
  %4710 = fmul fast float %4700, 0x4073BEBE20000000
  %4711 = fadd fast float %4710, 0xC063BEBE20000000
  %4712 = call float @dx.op.unary.f32(i32 22, float %4711)  ; Frc(value)
  %4713 = fmul fast float %4704, %4712
  %4714 = fadd fast float %4713, %4703
  %4715 = fmul fast float %4709, %4714
  %4716 = call float @dx.op.unary.f32(i32 22, float %4715)  ; Frc(value)
  %4717 = add i32 %314, 12
  %4718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %4717, i32 undef)  ; BufferLoad(srv,index,wot)
  %4719 = extractvalue %dx.types.ResRet.i32 %4718, 0
  %4720 = and i32 %4719, 255
  %4721 = uitofp i32 %4720 to float
  %4722 = fmul fast float %4721, 0x3F70101020000000
  %4723 = fcmp fast olt float %4716, %4722
  br i1 %4723, label %4724, label %4725

; <label>:4724                                    ; preds = %4695
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %4725

; <label>:4725                                    ; preds = %4724, %4695, %4682
  %4726 = fsub fast float -0.000000e+00, %203
  %4727 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = call float @dx.op.unary.f32(i32 25, float %4727)  ; Rsqrt(value)
  %4729 = fmul fast float %4728, %201
  %4730 = fmul fast float %4728, %202
  %4731 = fmul fast float %4728, %203
  %4732 = fsub fast float -0.000000e+00, %4729
  %4733 = fsub fast float -0.000000e+00, %4730
  %4734 = fsub fast float -0.000000e+00, %4731
  %4735 = select i1 %260, float 0.000000e+00, float %4688
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %4691, float %4732, float %4733, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fmul fast float %4738, 2.000000e+00
  %4740 = fmul fast float %4739, %4689
  %4741 = fmul fast float %4739, %4690
  %4742 = fmul fast float %4739, %4691
  %4743 = fsub fast float %4729, %4740
  %4744 = fsub fast float %4730, %4741
  %4745 = fsub fast float %4731, %4742
  %4746 = call float @dx.op.binary.f32(i32 36, float %4693, float 1.000000e+00)  ; FMin(a,b)
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = ashr i32 %4748, 1
  %4750 = add nsw i32 %4749, 532487669
  %4751 = bitcast i32 %4750 to float
  %4752 = fsub fast float 1.000000e+00, %4692
  %4753 = call float @dx.op.binary.f32(i32 35, float %4752, float 0x3F847AE140000000)  ; FMax(a,b)
  %4754 = fmul fast float %4753, %4753
  %4755 = fmul fast float %4754, %4754
  %4756 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %4751, float %4755, float %4756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = fsub fast float 1.000000e+00, %4693
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = call float @dx.op.dot3.f32(i32 55, float %85, float %81, float %77, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = fmul fast float %4762, 0x3FD20DD760000000
  %4764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %85)  ; FMax(a,b)
  %4765 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = fcmp fast oeq float %4765, 0.000000e+00
  %4767 = fcmp fast oeq float %4764, 0.000000e+00
  %4768 = or i1 %4767, %4766
  br i1 %4768, label %4798, label %4769

; <label>:4769                                    ; preds = %4725
  %4770 = fsub fast float -0.000000e+00, %88
  %4771 = fsub fast float -0.000000e+00, %86
  %4772 = call float @dx.op.unary.f32(i32 24, float %4765)  ; Sqrt(value)
  %4773 = fdiv fast float %4772, %4764
  %4774 = fcmp fast ogt float %4773, 0x3FFB6F8900000000
  %4775 = select i1 %4774, float 0x3FFB6F8900000000, float %4773
  %4776 = fmul fast float %4775, 0x3FE8A23460000000
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = call float @dx.op.binary.f32(i32 35, float %4775, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4779 = fmul fast float %4777, %4764
  %4780 = fmul fast float %4778, 0x3FF279A740000000
  %4781 = fadd fast float %4780, -1.000000e+00
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4771, float %87, float %4770, float %4771, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call float @dx.op.unary.f32(i32 25, float %4782)  ; Rsqrt(value)
  %4784 = fmul fast float %4783, %4770
  %4785 = fmul fast float %4783, %4771
  %4786 = fmul fast float %4783, %87
  %4787 = fmul fast float %4781, %4781
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = fmul fast float %4778, 0x40005F8BE0000000
  %4790 = fsub fast float 0x400C5BF8A0000000, %4789
  %4791 = fdiv fast float %4779, %4790
  %4792 = fmul fast float %4791, 0x3FEE31C3C0000000
  %4793 = fmul fast float %4792, %4788
  %4794 = fmul fast float %4778, 0x3FDACB7480000000
  %4795 = fadd fast float %4794, 0xBFD7347680000000
  %4796 = fmul fast float %4795, %4791
  %4797 = fmul fast float %4796, %4788
  br label %4798

; <label>:4798                                    ; preds = %4769, %4725
  %4799 = phi float [ %4784, %4769 ], [ 0.000000e+00, %4725 ]
  %4800 = phi float [ %4785, %4769 ], [ 0.000000e+00, %4725 ]
  %4801 = phi float [ %4786, %4769 ], [ 0.000000e+00, %4725 ]
  %4802 = phi float [ %4793, %4769 ], [ 0.000000e+00, %4725 ]
  %4803 = phi float [ %4797, %4769 ], [ 0.000000e+00, %4725 ]
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = fmul fast float %4804, %4804
  %4806 = fmul fast float %4805, 0x3FEE471020000000
  %4807 = fadd fast float %4806, 0xBFD42F6020000000
  %4808 = fmul fast float %4764, 0x3FD20DD760000000
  %4809 = fmul fast float %4807, %4803
  %4810 = fmul fast float %4802, 0x3FDF454380000000
  %4811 = fmul fast float %4810, %4804
  %4812 = fadd fast float %4811, %4808
  %4813 = fadd fast float %4812, %4809
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4799, float %4800, float %4801, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = fmul fast float %4814, 0x3FDF454380000000
  %4816 = fmul fast float %4814, %4814
  %4817 = fmul fast float %4816, 0x3FEE471020000000
  %4818 = fadd fast float %4817, 0xBFD42F6020000000
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4764, float %4802, float %4803, float 0x3FD20DD760000000, float %4815, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %81)  ; FMax(a,b)
  %4821 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = fcmp fast oeq float %4821, 0.000000e+00
  %4823 = fcmp fast oeq float %4820, 0.000000e+00
  %4824 = or i1 %4823, %4822
  br i1 %4824, label %4854, label %4825

; <label>:4825                                    ; preds = %4798
  %4826 = fsub fast float -0.000000e+00, %84
  %4827 = fsub fast float -0.000000e+00, %82
  %4828 = call float @dx.op.unary.f32(i32 24, float %4821)  ; Sqrt(value)
  %4829 = fdiv fast float %4828, %4820
  %4830 = fcmp fast ogt float %4829, 0x3FFB6F8900000000
  %4831 = select i1 %4830, float 0x3FFB6F8900000000, float %4829
  %4832 = fmul fast float %4831, 0x3FE8A23460000000
  %4833 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4834 = call float @dx.op.binary.f32(i32 35, float %4831, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4835 = fmul fast float %4833, %4820
  %4836 = fmul fast float %4834, 0x3FF279A740000000
  %4837 = fadd fast float %4836, -1.000000e+00
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4826, float %4827, float %83, float %4826, float %4827, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = call float @dx.op.unary.f32(i32 25, float %4838)  ; Rsqrt(value)
  %4840 = fmul fast float %4839, %4826
  %4841 = fmul fast float %4839, %4827
  %4842 = fmul fast float %4839, %83
  %4843 = fmul fast float %4837, %4837
  %4844 = fsub fast float 1.000000e+00, %4843
  %4845 = fmul fast float %4834, 0x40005F8BE0000000
  %4846 = fsub fast float 0x400C5BF8A0000000, %4845
  %4847 = fdiv fast float %4835, %4846
  %4848 = fmul fast float %4847, 0x3FEE31C3C0000000
  %4849 = fmul fast float %4848, %4844
  %4850 = fmul fast float %4834, 0x3FDACB7480000000
  %4851 = fadd fast float %4850, 0xBFD7347680000000
  %4852 = fmul fast float %4851, %4847
  %4853 = fmul fast float %4852, %4844
  br label %4854

; <label>:4854                                    ; preds = %4825, %4798
  %4855 = phi float [ %4840, %4825 ], [ 0.000000e+00, %4798 ]
  %4856 = phi float [ %4841, %4825 ], [ 0.000000e+00, %4798 ]
  %4857 = phi float [ %4842, %4825 ], [ 0.000000e+00, %4798 ]
  %4858 = phi float [ %4849, %4825 ], [ 0.000000e+00, %4798 ]
  %4859 = phi float [ %4853, %4825 ], [ 0.000000e+00, %4798 ]
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = fmul fast float %4860, %4860
  %4862 = fmul fast float %4861, 0x3FEE471020000000
  %4863 = fadd fast float %4862, 0xBFD42F6020000000
  %4864 = fmul fast float %4820, 0x3FD20DD760000000
  %4865 = fmul fast float %4863, %4859
  %4866 = fmul fast float %4858, 0x3FDF454380000000
  %4867 = fmul fast float %4866, %4860
  %4868 = fadd fast float %4867, %4864
  %4869 = fadd fast float %4868, %4865
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = fmul fast float %4870, 0x3FDF454380000000
  %4872 = fmul fast float %4870, %4870
  %4873 = fmul fast float %4872, 0x3FEE471020000000
  %4874 = fadd fast float %4873, 0xBFD42F6020000000
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4820, float %4858, float %4859, float 0x3FD20DD760000000, float %4871, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %4877 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = fcmp fast oeq float %4877, 0.000000e+00
  %4879 = fcmp fast oeq float %4876, 0.000000e+00
  %4880 = or i1 %4879, %4878
  br i1 %4880, label %4910, label %4881

; <label>:4881                                    ; preds = %4854
  %4882 = fsub fast float -0.000000e+00, %80
  %4883 = fsub fast float -0.000000e+00, %78
  %4884 = call float @dx.op.unary.f32(i32 24, float %4877)  ; Sqrt(value)
  %4885 = fdiv fast float %4884, %4876
  %4886 = fcmp fast ogt float %4885, 0x3FFB6F8900000000
  %4887 = select i1 %4886, float 0x3FFB6F8900000000, float %4885
  %4888 = fmul fast float %4887, 0x3FE8A23460000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = call float @dx.op.binary.f32(i32 35, float %4887, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4891 = fmul fast float %4889, %4876
  %4892 = fmul fast float %4890, 0x3FF279A740000000
  %4893 = fadd fast float %4892, -1.000000e+00
  %4894 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %79, float %4882, float %4883, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %4895 = call float @dx.op.unary.f32(i32 25, float %4894)  ; Rsqrt(value)
  %4896 = fmul fast float %4895, %4882
  %4897 = fmul fast float %4895, %4883
  %4898 = fmul fast float %4895, %79
  %4899 = fmul fast float %4893, %4893
  %4900 = fsub fast float 1.000000e+00, %4899
  %4901 = fmul fast float %4890, 0x40005F8BE0000000
  %4902 = fsub fast float 0x400C5BF8A0000000, %4901
  %4903 = fdiv fast float %4891, %4902
  %4904 = fmul fast float %4903, 0x3FEE31C3C0000000
  %4905 = fmul fast float %4904, %4900
  %4906 = fmul fast float %4890, 0x3FDACB7480000000
  %4907 = fadd fast float %4906, 0xBFD7347680000000
  %4908 = fmul fast float %4907, %4903
  %4909 = fmul fast float %4908, %4900
  br label %4910

; <label>:4910                                    ; preds = %4881, %4854
  %4911 = phi float [ %4896, %4881 ], [ 0.000000e+00, %4854 ]
  %4912 = phi float [ %4897, %4881 ], [ 0.000000e+00, %4854 ]
  %4913 = phi float [ %4898, %4881 ], [ 0.000000e+00, %4854 ]
  %4914 = phi float [ %4905, %4881 ], [ 0.000000e+00, %4854 ]
  %4915 = phi float [ %4909, %4881 ], [ 0.000000e+00, %4854 ]
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fmul fast float %4916, %4916
  %4918 = fmul fast float %4917, 0x3FEE471020000000
  %4919 = fadd fast float %4918, 0xBFD42F6020000000
  %4920 = fmul fast float %4876, 0x3FD20DD760000000
  %4921 = fmul fast float %4919, %4915
  %4922 = fmul fast float %4914, 0x3FDF454380000000
  %4923 = fmul fast float %4922, %4916
  %4924 = fadd fast float %4923, %4920
  %4925 = fadd fast float %4924, %4921
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = fmul fast float %4926, 0x3FDF454380000000
  %4928 = fmul fast float %4926, %4926
  %4929 = fmul fast float %4928, 0x3FEE471020000000
  %4930 = fadd fast float %4929, 0xBFD42F6020000000
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4914, float %4915, float 0x3FD20DD760000000, float %4927, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.binary.f32(i32 35, float %4813, float 0.000000e+00)  ; FMax(a,b)
  %4933 = call float @dx.op.binary.f32(i32 35, float %4869, float 0.000000e+00)  ; FMax(a,b)
  %4934 = call float @dx.op.binary.f32(i32 35, float %4925, float 0.000000e+00)  ; FMax(a,b)
  %4935 = call float @dx.op.binary.f32(i32 35, float %4819, float 0.000000e+00)  ; FMax(a,b)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4875, float 0.000000e+00)  ; FMax(a,b)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4931, float 0.000000e+00)  ; FMax(a,b)
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = call float @dx.op.binary.f32(i32 36, float %4683, float %4939)  ; FMin(a,b)
  %4941 = fmul fast float %4940, %4747
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = call float @dx.op.binary.f32(i32 36, float %4684, float %4939)  ; FMin(a,b)
  %4947 = fmul fast float %4946, %4747
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = call float @dx.op.binary.f32(i32 36, float %4685, float %4939)  ; FMin(a,b)
  %4953 = fmul fast float %4952, %4747
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = bitcast float %4954 to i32
  %4956 = sub nsw i32 2129859010, %4955
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4932, %4746
  %4959 = fmul fast float %4958, %4945
  %4960 = fmul fast float %4933, %4746
  %4961 = fmul fast float %4960, %4951
  %4962 = fmul fast float %4934, %4746
  %4963 = fmul fast float %4962, %4957
  %4964 = call float @dx.op.binary.f32(i32 36, float %4686, float %4939)  ; FMin(a,b)
  %4965 = fmul fast float %4964, %4747
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = call float @dx.op.binary.f32(i32 36, float %4687, float %4939)  ; FMin(a,b)
  %4971 = fmul fast float %4970, %4747
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = call float @dx.op.binary.f32(i32 36, float %4735, float %4939)  ; FMin(a,b)
  %4977 = fmul fast float %4976, %4747
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = bitcast float %4978 to i32
  %4980 = sub nsw i32 2129859010, %4979
  %4981 = bitcast i32 %4980 to float
  %4982 = fmul fast float %4935, %4746
  %4983 = fmul fast float %4982, %4969
  %4984 = fmul fast float %4936, %4746
  %4985 = fmul fast float %4984, %4975
  %4986 = fmul fast float %4937, %4746
  %4987 = fmul fast float %4986, %4981
  %4988 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4961, float %4963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = select i1 %260, float 0.000000e+00, float %4959
  %4990 = select i1 %260, float %4988, float %4961
  %4991 = select i1 %260, float 0.000000e+00, float %4963
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4983, float %4985, float %4987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = select i1 %260, float 0.000000e+00, float %4983
  %4994 = select i1 %260, float %4992, float %4985
  %4995 = select i1 %260, float 0.000000e+00, float %4987
  %4996 = fmul fast float %4762, 0x4071A18460000000
  %4997 = fadd fast float %4996, 0x3F0FFB4800000000
  %4998 = call float @dx.op.unary.f32(i32 23, float %4997)  ; Log(value)
  %4999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %5000 = extractvalue %dx.types.ResRet.i32 %4999, 0
  %5001 = and i32 %5000, 8388608
  %5002 = icmp eq i32 %5001, 0
  br i1 %5002, label %5003, label %5043

; <label>:5003                                    ; preds = %4910
  %5004 = fadd fast float %4998, 0x4006B851E0000000
  %5005 = add i32 %314, 12
  %5006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.i32 %5006, 0
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 3
  %5010 = lshr i32 %5007, 16
  %5011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5010)  ; LegacyF16ToF32(value)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 1
  %5015 = fsub fast float %105, %5014
  %5016 = extractvalue %dx.types.CBufRet.f32 %5013, 2
  %5017 = fmul fast float %5015, %5016
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fsub fast float %5012, %5004
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fcmp fast olt float %5019, 0.000000e+00
  %5022 = zext i1 %5020 to i32
  %5023 = zext i1 %5021 to i32
  %5024 = sub nsw i32 %5022, %5023
  %5025 = sitofp i32 %5024 to float
  %5026 = call float @dx.op.unary.f32(i32 6, float %5019)  ; FAbs(value)
  %5027 = fsub fast float -0.000000e+00, %5011
  %5028 = fsub fast float %5027, %5009
  %5029 = fadd fast float %5028, %5026
  %5030 = call float @dx.op.binary.f32(i32 35, float %5029, float 0.000000e+00)  ; FMax(a,b)
  %5031 = fmul fast float %5025, %5030
  %5032 = fadd fast float %4998, %5031
  %5033 = call float @dx.op.unary.f32(i32 21, float %5032)  ; Exp(value)
  %5034 = fmul fast float %5033, 0x3F50624DE0000000
  %5035 = fcmp fast oeq float %4763, 0.000000e+00
  %5036 = fdiv fast float 0x400C5BF880000000, %4762
  %5037 = fmul fast float %5034, %5036
  %5038 = select i1 %5035, float 1.000000e+00, float %5037
  %5039 = call float @dx.op.binary.f32(i32 35, float %5038, float 1.000000e+00)  ; FMax(a,b)
  %5040 = fadd fast float %5039, -1.000000e+00
  %5041 = fmul fast float %5040, %5018
  %5042 = fadd fast float %5041, 1.000000e+00
  br label %5043

; <label>:5043                                    ; preds = %5003, %4910
  %5044 = phi float [ %5042, %5003 ], [ 1.000000e+00, %4910 ]
  %5045 = call float @dx.op.unary.f32(i32 6, float %5044)  ; FAbs(value)
  %5046 = fmul fast float %5045, %4989
  %5047 = fmul fast float %5045, %4990
  %5048 = fmul fast float %5045, %4991
  %5049 = fmul fast float %4737, 9.843750e-01
  %5050 = fmul fast float %4692, 9.843750e-01
  %5051 = fadd fast float %5049, 7.812500e-03
  %5052 = fadd fast float %5050, 7.812500e-03
  %5053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %5051, float %5052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 3
  %5056 = fmul fast float %5054, %4686
  %5057 = fmul fast float %5054, %4687
  %5058 = fmul fast float %5054, %4735
  %5059 = fadd fast float %5056, %5055
  %5060 = fadd fast float %5057, %5055
  %5061 = fadd fast float %5058, %5055
  %5062 = call float @dx.op.binary.f32(i32 35, float %5060, float %5061)  ; FMax(a,b)
  %5063 = call float @dx.op.binary.f32(i32 35, float %5059, float %5062)  ; FMax(a,b)
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = fmul fast float %5063, %4692
  %5066 = fadd fast float %5065, %4692
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5070 = fmul fast float %5066, %5068
  %5071 = fadd fast float %5070, %5069
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = fsub fast float 1.000000e+00, %4758
  %5074 = fadd fast float %5073, %5072
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fcmp fast olt float %5075, 1.000000e+00
  br i1 %5076, label %5077, label %5553

; <label>:5077                                    ; preds = %5043
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5081 = fmul fast float %5079, %118
  %5082 = fmul fast float %5080, %119
  %5083 = fptoui float %5081 to i32
  %5084 = fptoui float %5082 to i32
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 2
  %5088 = extractvalue %dx.types.CBufRet.f32 %5085, 3
  %5089 = fadd fast float %105, -4.000000e+00
  %5090 = call float @dx.op.binary.f32(i32 35, float %5089, float 0.000000e+00)  ; FMax(a,b)
  %5091 = fadd fast float %5090, %5086
  %5092 = fmul fast float %5091, %5087
  %5093 = call float @dx.op.unary.f32(i32 23, float %5092)  ; Log(value)
  %5094 = fmul fast float %5093, %5088
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5097 = fmul fast float %5094, %5096
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.i32 %5099, 1
  %5101 = add i32 %5100, -1
  %5102 = uitofp i32 %5100 to float
  %5103 = fmul fast float %5102, %5098
  %5104 = fptoui float %5103 to i32
  %5105 = call i32 @dx.op.binary.i32(i32 40, i32 %5104, i32 %5101)  ; UMin(a,b)
  %5106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.i32 %5106, 2
  %5108 = extractvalue %dx.types.CBufRet.i32 %5106, 3
  %5109 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5084, i32 %5107, i32 %5083)  ; UMad(a,b,c)
  %5110 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5105, i32 %5108, i32 %5109)  ; UMad(a,b,c)
  %5111 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %5112 = fptoui float %5111 to i32
  %5113 = lshr i32 %5112, 5
  %5114 = call i32 @dx.op.binary.i32(i32 40, i32 %5113, i32 8191)  ; UMin(a,b)
  %5115 = fsub fast float %3904, %203
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fcmp fast ogt float %5116, 0.000000e+00
  %5118 = fcmp fast ogt float %4745, 0.000000e+00
  %5119 = and i1 %5118, %5117
  br i1 %5119, label %5120, label %5149

; <label>:5120                                    ; preds = %5077
  %5121 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float -1.000000e+00)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 36, float %5122, float 1.000000e+00)  ; FMin(a,b)
  %5124 = fmul fast float %5123, %5123
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5125, 0x3FFC6E2300000000
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fcmp fast ogt float %5127, 0.000000e+00
  %5129 = call float @dx.op.unary.f32(i32 24, float %5127)  ; Sqrt(value)
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = call float @dx.op.unary.f32(i32 23, float %5130)  ; Log(value)
  %5132 = fmul fast float %5131, 5.000000e+00
  %5133 = call float @dx.op.unary.f32(i32 21, float %5132)  ; Exp(value)
  %5134 = fmul fast float %5133, 0x3FEF591A60000000
  %5135 = fadd fast float %5134, 0x3F94DCB540000000
  %5136 = select i1 %5128, float %5135, float 1.000000e+00
  %5137 = fcmp fast oge float %5136, 1.000000e+00
  %5138 = fmul fast float %5121, 2.000000e+00
  %5139 = fadd fast float %5138, %4745
  %5140 = select i1 %5137, float %5139, float %4745
  %5141 = fsub fast float %5140, %4745
  %5142 = fmul fast float %5141, %5116
  %5143 = fadd fast float %5142, %4745
  %5144 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %5143, float %4743, float %4744, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.unary.f32(i32 25, float %5144)  ; Rsqrt(value)
  %5146 = fmul fast float %5145, %4743
  %5147 = fmul fast float %5145, %4744
  %5148 = fmul fast float %5143, %5145
  br label %5149

; <label>:5149                                    ; preds = %5120, %5077
  %5150 = phi float [ %5146, %5120 ], [ %4743, %5077 ]
  %5151 = phi float [ %5147, %5120 ], [ %4744, %5077 ]
  %5152 = phi float [ %5148, %5120 ], [ %4745, %5077 ]
  %5153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.i32 %5153, 2
  %5155 = add nsw i32 %5154, -1
  %5156 = call i32 @dx.op.binary.i32(i32 37, i32 %5155, i32 0)  ; IMax(a,b)
  %5157 = shl i32 %5114, 2
  %5158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.i32 %5158, 0
  %5160 = lshr i32 %5159, 16
  %5161 = and i32 %5159, 65535
  %5162 = lshr i32 %5159, 21
  %5163 = lshr i32 %5161, 5
  %5164 = call i32 @dx.op.binary.i32(i32 40, i32 %5163, i32 %5156)  ; UMin(a,b)
  %5165 = icmp ugt i32 %5162, %5164
  br i1 %5165, label %5529, label %5166

; <label>:5166                                    ; preds = %5149
  br label %5167

; <label>:5167                                    ; preds = %5521, %5166
  %5168 = phi float [ %5522, %5521 ], [ 0.000000e+00, %5166 ]
  %5169 = phi float [ %5523, %5521 ], [ 0.000000e+00, %5166 ]
  %5170 = phi float [ %5524, %5521 ], [ 0.000000e+00, %5166 ]
  %5171 = phi float [ %5525, %5521 ], [ 1.000000e+00, %5166 ]
  %5172 = phi i32 [ %5526, %5521 ], [ %5162, %5166 ]
  %5173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.i32 %5173, 2
  %5175 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5110, i32 %5174, i32 %5172)  ; UMad(a,b,c)
  %5176 = shl i32 %5175, 2
  %5177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.i32 %5177, 0
  %5179 = shl i32 %5172, 5
  %5180 = sub nsw i32 %5160, %5179
  %5181 = call i32 @dx.op.binary.i32(i32 37, i32 %5180, i32 0)  ; IMax(a,b)
  %5182 = call i32 @dx.op.binary.i32(i32 38, i32 %5181, i32 31)  ; IMin(a,b)
  %5183 = sub nsw i32 1, %5160
  %5184 = add nsw i32 %5183, %5161
  %5185 = call i32 @dx.op.binary.i32(i32 37, i32 %5184, i32 0)  ; IMax(a,b)
  %5186 = call i32 @dx.op.binary.i32(i32 38, i32 %5185, i32 32)  ; IMin(a,b)
  %5187 = and i32 %5186, 31
  %5188 = shl i32 -1, %5187
  %5189 = xor i32 %5188, -1
  %5190 = and i32 %5182, 31
  %5191 = shl i32 %5189, %5190
  %5192 = icmp eq i32 %5186, 32
  %5193 = select i1 %5192, i32 -1, i32 %5191
  %5194 = and i32 %5193, %5178
  %5195 = icmp eq i32 %5194, 0
  br i1 %5195, label %5521, label %5196

; <label>:5196                                    ; preds = %5167
  br label %5197

; <label>:5197                                    ; preds = %5304, %5196
  %5198 = phi float [ %5305, %5304 ], [ %5168, %5196 ]
  %5199 = phi float [ %5306, %5304 ], [ %5169, %5196 ]
  %5200 = phi float [ %5307, %5304 ], [ %5170, %5196 ]
  %5201 = phi float [ %5308, %5304 ], [ %5171, %5196 ]
  %5202 = phi i32 [ %5207, %5304 ], [ %5194, %5196 ]
  %5203 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5202)  ; FirstbitLo(value)
  %5204 = add i32 %5203, %5179
  %5205 = and i32 %5203, 31
  %5206 = shl i32 1, %5205
  %5207 = xor i32 %5206, %5202
  %5208 = mul i32 %5204, 72
  %5209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5208, i32 undef)  ; BufferLoad(srv,index,wot)
  %5210 = extractvalue %dx.types.ResRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.ResRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.ResRet.f32 %5209, 2
  %5213 = add i32 %5208, 12
  %5214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.i32 %5214, 0
  %5216 = add i32 %5208, 16
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = add i32 %5208, 28
  %5222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = add i32 %5208, 32
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = extractvalue %dx.types.ResRet.f32 %5225, 3
  %5230 = add i32 %5208, 48
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = add i32 %5208, 56
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = add i32 %5208, 64
  %5239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %5238, i32 undef)  ; BufferLoad(srv,index,wot)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = mul i32 %5204, 60
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5247 = add i32 %5242, 12
  %5248 = add i32 %5242, 48
  %5249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.ResRet.f32 %5249, 1
  %5252 = extractvalue %dx.types.ResRet.f32 %5249, 2
  %5253 = and i32 %5215, 32767
  %5254 = bitcast float %5210 to i32
  %5255 = icmp eq i32 %5254, -1
  %5256 = bitcast float %5211 to i32
  %5257 = and i32 %5215, 32768
  %5258 = icmp ne i32 %5257, 0
  %5259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.CBufRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.CBufRet.f32 %5259, 2
  %5263 = fsub fast float %5244, %5260
  %5264 = fsub fast float %5245, %5261
  %5265 = fsub fast float %5246, %5262
  %5266 = fsub fast float %201, %5263
  %5267 = fsub fast float %202, %5264
  %5268 = fsub fast float %203, %5265
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5247, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5270, float %5271, float %5272)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = add i32 %5242, 24
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5276, float %5277, float %5278)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = add i32 %5242, 36
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5282, float %5283, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5287 = call float @dx.op.unary.f32(i32 6, float %5279)  ; FAbs(value)
  %5288 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5289 = fsub fast float %5250, %5286
  %5290 = fsub fast float %5251, %5287
  %5291 = fsub fast float %5252, %5288
  %5292 = fmul fast float %5289, %5218
  %5293 = fmul fast float %5290, %5219
  %5294 = fmul fast float %5291, %5220
  %5295 = call float @dx.op.binary.f32(i32 36, float %5293, float %5294)  ; FMin(a,b)
  %5296 = call float @dx.op.binary.f32(i32 36, float %5292, float %5295)  ; FMin(a,b)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5298 = call float @dx.op.binary.f32(i32 36, float %5201, float %5297)  ; FMin(a,b)
  %5299 = uitofp i1 %5258 to float
  %5300 = fadd fast float %5116, 1.000000e+00
  %5301 = fsub fast float %5300, %5299
  %5302 = fmul fast float %5298, %5301
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  br i1 %5303, label %5310, label %5304

; <label>:5304                                    ; preds = %5452, %5197
  %5305 = phi float [ %5516, %5452 ], [ %5198, %5197 ]
  %5306 = phi float [ %5517, %5452 ], [ %5199, %5197 ]
  %5307 = phi float [ %5518, %5452 ], [ %5200, %5197 ]
  %5308 = phi float [ %5519, %5452 ], [ %5201, %5197 ]
  %5309 = icmp eq i32 %5202, %5206
  br i1 %5309, label %5520, label %5197

; <label>:5310                                    ; preds = %5197
  br i1 %5255, label %5368, label %5311

; <label>:5311                                    ; preds = %5310
  %5312 = fsub fast float -0.000000e+00, %5270
  %5313 = fsub fast float -0.000000e+00, %5271
  %5314 = fsub fast float -0.000000e+00, %5272
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = fsub fast float -0.000000e+00, %5315
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = fadd fast float %5317, %5233
  %5319 = fadd fast float %5232, %5317
  %5320 = fsub fast float -0.000000e+00, %5319
  %5321 = fcmp ogt float %5315, -0.000000e+00
  %5322 = select i1 %5321, float %5320, float %5318
  %5323 = call float @dx.op.unary.f32(i32 6, float %5316)  ; FAbs(value)
  %5324 = fdiv fast float 1.000000e+00, %5323
  %5325 = fmul fast float %5322, %5324
  %5326 = call float @dx.op.binary.f32(i32 35, float %5325, float 0.000000e+00)  ; FMax(a,b)
  %5327 = fsub fast float -0.000000e+00, %5276
  %5328 = fsub fast float -0.000000e+00, %5277
  %5329 = fsub fast float -0.000000e+00, %5278
  %5330 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5331 = fsub fast float -0.000000e+00, %5330
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5327, float %5328, float %5329)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = fadd fast float %5332, %5237
  %5334 = fadd fast float %5236, %5332
  %5335 = fsub fast float -0.000000e+00, %5334
  %5336 = fcmp ogt float %5330, -0.000000e+00
  %5337 = select i1 %5336, float %5335, float %5333
  %5338 = call float @dx.op.unary.f32(i32 6, float %5331)  ; FAbs(value)
  %5339 = fdiv fast float 1.000000e+00, %5338
  %5340 = fmul fast float %5337, %5339
  %5341 = call float @dx.op.binary.f32(i32 35, float %5340, float 0.000000e+00)  ; FMax(a,b)
  %5342 = fsub fast float -0.000000e+00, %5282
  %5343 = fsub fast float -0.000000e+00, %5283
  %5344 = fsub fast float -0.000000e+00, %5284
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = fsub fast float -0.000000e+00, %5345
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5266, float %5267, float %5268, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = fadd fast float %5347, %5241
  %5349 = fadd fast float %5240, %5347
  %5350 = fsub fast float -0.000000e+00, %5349
  %5351 = fcmp ogt float %5345, -0.000000e+00
  %5352 = select i1 %5351, float %5350, float %5348
  %5353 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5354 = fdiv fast float 1.000000e+00, %5353
  %5355 = fmul fast float %5352, %5354
  %5356 = call float @dx.op.binary.f32(i32 35, float %5355, float 0.000000e+00)  ; FMax(a,b)
  %5357 = call float @dx.op.binary.f32(i32 36, float %5341, float %5356)  ; FMin(a,b)
  %5358 = call float @dx.op.binary.f32(i32 36, float %5326, float %5357)  ; FMin(a,b)
  %5359 = fmul fast float %5358, %5150
  %5360 = fmul fast float %5358, %5151
  %5361 = fmul fast float %5358, %5152
  %5362 = fadd fast float %5359, %201
  %5363 = fadd fast float %5360, %202
  %5364 = fadd fast float %5361, %203
  %5365 = fsub fast float %5362, %5210
  %5366 = fsub fast float %5363, %5211
  %5367 = fsub fast float %5364, %5212
  br label %5375

; <label>:5368                                    ; preds = %5310
  %5369 = fmul fast float %5150, 8.096000e+03
  %5370 = fmul fast float %5151, 8.096000e+03
  %5371 = fmul fast float %5152, 8.096000e+03
  %5372 = fadd fast float %5369, %201
  %5373 = fadd fast float %5370, %202
  %5374 = fadd fast float %5371, %203
  br label %5375

; <label>:5375                                    ; preds = %5368, %5311
  %5376 = phi float [ %5150, %5368 ], [ %5365, %5311 ]
  %5377 = phi float [ %5151, %5368 ], [ %5366, %5311 ]
  %5378 = phi float [ %5152, %5368 ], [ %5367, %5311 ]
  %5379 = phi float [ %5372, %5368 ], [ %5362, %5311 ]
  %5380 = phi float [ %5373, %5368 ], [ %5363, %5311 ]
  %5381 = phi float [ %5374, %5368 ], [ %5364, %5311 ]
  %5382 = fcmp fast olt float %5229, 1.000000e+00
  br i1 %5382, label %5383, label %5414, !dx.controlflow.hints !99

; <label>:5383                                    ; preds = %5375
  %5384 = fmul fast float %5378, %5227
  %5385 = fmul fast float %5377, %5228
  %5386 = fsub fast float %5384, %5385
  %5387 = fmul fast float %5376, %5228
  %5388 = fmul fast float %5378, %5226
  %5389 = fsub fast float %5387, %5388
  %5390 = fmul fast float %5377, %5226
  %5391 = fmul fast float %5376, %5227
  %5392 = fsub fast float %5390, %5391
  %5393 = fmul fast float %5386, 2.000000e+00
  %5394 = fmul fast float %5389, 2.000000e+00
  %5395 = fmul fast float %5392, 2.000000e+00
  %5396 = fmul fast float %5393, %5229
  %5397 = fmul fast float %5394, %5229
  %5398 = fmul fast float %5395, %5229
  %5399 = fmul fast float %5395, %5227
  %5400 = fmul fast float %5394, %5228
  %5401 = fmul fast float %5393, %5228
  %5402 = fmul fast float %5395, %5226
  %5403 = fmul fast float %5394, %5226
  %5404 = fmul fast float %5393, %5227
  %5405 = fadd fast float %5399, %5376
  %5406 = fadd fast float %5405, %5396
  %5407 = fsub fast float %5406, %5400
  %5408 = fsub fast float %5377, %5402
  %5409 = fadd fast float %5408, %5397
  %5410 = fadd fast float %5409, %5401
  %5411 = fadd fast float %5398, %5378
  %5412 = fsub fast float %5411, %5404
  %5413 = fadd fast float %5412, %5403
  br label %5414

; <label>:5414                                    ; preds = %5383, %5375
  %5415 = phi float [ %5407, %5383 ], [ %5376, %5375 ]
  %5416 = phi float [ %5410, %5383 ], [ %5377, %5375 ]
  %5417 = phi float [ %5413, %5383 ], [ %5378, %5375 ]
  br i1 %5255, label %5449, label %5418

; <label>:5418                                    ; preds = %5414
  %5419 = fmul fast float %4692, 0x400187C840000000
  %5420 = fadd fast float %5419, 0xC00EFC2120000000
  %5421 = fmul fast float %5420, %4692
  %5422 = fadd fast float %5421, 0x3FE5D16340000000
  %5423 = fmul fast float %5422, %4692
  %5424 = fadd fast float %5423, 1.000000e+00
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fsub fast float %5379, %201
  %5427 = fsub fast float %5380, %202
  %5428 = fsub fast float %5381, %203
  %5429 = fsub fast float %5379, %5210
  %5430 = fsub fast float %5380, %5211
  %5431 = fsub fast float %5381, %5212
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fadd fast float %5433, 0x3EE4F8B580000000
  %5435 = fdiv fast float %5432, %5434
  %5436 = bitcast float %5435 to i32
  %5437 = ashr i32 %5436, 1
  %5438 = add nsw i32 %5437, 532487669
  %5439 = bitcast i32 %5438 to float
  %5440 = fmul fast float %5439, %5425
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fmul fast float %5441, 0x4009981AE0000000
  %5443 = fsub fast float 0x40111BBD80000000, %5442
  %5444 = fmul fast float %5443, %5441
  %5445 = fadd fast float %5444, 0xC0009F6020000000
  %5446 = fmul fast float %5445, %5441
  %5447 = fadd fast float %5446, 1.000000e+00
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  br label %5452

; <label>:5449                                    ; preds = %5414
  %5450 = icmp ne i32 %5256, -1
  %5451 = zext i1 %5450 to i32
  br label %5452

; <label>:5452                                    ; preds = %5449, %5418
  %5453 = phi float [ %4692, %5449 ], [ %5448, %5418 ]
  %5454 = phi i32 [ %5451, %5449 ], [ 0, %5418 ]
  %5455 = fmul float %5453, 5.000000e+00
  %5456 = fsub float 5.000000e+00, %5455
  %5457 = icmp ne i32 %5454, 0
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5460 = fadd fast float %5459, %5456
  %5461 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5460)  ; FMax(a,b)
  %5462 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5463 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5464 = fadd fast float %5463, %5462
  %5465 = call float @dx.op.unary.f32(i32 6, float %5417)  ; FAbs(value)
  %5466 = fadd fast float %5464, %5465
  %5467 = fcmp fast oeq float %5466, 0.000000e+00
  %5468 = fdiv fast float 1.000000e+00, %5466
  %5469 = select i1 %5467, float 1.000000e+00, float %5468
  %5470 = fmul fast float %5469, %5415
  %5471 = fmul fast float %5469, %5416
  %5472 = call float @dx.op.unary.f32(i32 6, float %5471)  ; FAbs(value)
  %5473 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5474 = fsub fast float 1.000000e+00, %5472
  %5475 = fsub fast float 1.000000e+00, %5473
  %5476 = fcmp fast oge float %5470, 0.000000e+00
  %5477 = fcmp fast oge float %5471, 0.000000e+00
  %5478 = select i1 %5476, float 1.000000e+00, float -1.000000e+00
  %5479 = select i1 %5477, float 1.000000e+00, float -1.000000e+00
  %5480 = fcmp fast ole float %5417, 0.000000e+00
  %5481 = fmul fast float %5478, %5474
  %5482 = fmul fast float %5479, %5475
  %5483 = select i1 %5480, float %5481, float %5470
  %5484 = select i1 %5480, float %5482, float %5471
  %5485 = fmul fast float %5483, 5.000000e-01
  %5486 = fmul fast float %5484, 5.000000e-01
  %5487 = fadd fast float %5485, 5.000000e-01
  %5488 = fadd fast float %5486, 5.000000e-01
  %5489 = uitofp i32 %5253 to float
  %5490 = call float @dx.op.binary.f32(i32 36, float %5461, float 3.000000e+00)  ; FMin(a,b)
  %5491 = fadd fast float %5490, 2.000000e+00
  %5492 = call float @dx.op.unary.f32(i32 21, float %5491)  ; Exp(value)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5458, 1
  %5494 = fmul fast float %5493, %5492
  %5495 = fmul fast float %5494, 2.000000e+00
  %5496 = fsub fast float 1.000000e+00, %5495
  %5497 = fmul fast float %5487, %5496
  %5498 = fmul fast float %5488, %5496
  %5499 = fadd fast float %5497, %5494
  %5500 = fadd fast float %5498, %5494
  %5501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %5499, float %5500, float %5489, float undef, i32 0, i32 0, i32 undef, float %5461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5507 = fmul fast float %5506, %5223
  %5508 = call float @dx.op.binary.f32(i32 36, float %4763, float %5507)  ; FMin(a,b)
  %5509 = select i1 %5457, float %5508, float %5507
  %5510 = fmul fast float %5502, %5302
  %5511 = fmul fast float %5510, %5509
  %5512 = fmul fast float %5503, %5302
  %5513 = fmul fast float %5512, %5509
  %5514 = fmul fast float %5504, %5302
  %5515 = fmul fast float %5514, %5509
  %5516 = fadd fast float %5511, %5198
  %5517 = fadd fast float %5513, %5199
  %5518 = fadd fast float %5515, %5200
  %5519 = fsub fast float %5201, %5302
  br label %5304

; <label>:5520                                    ; preds = %5304
  br label %5521

; <label>:5521                                    ; preds = %5520, %5167
  %5522 = phi float [ %5168, %5167 ], [ %5305, %5520 ]
  %5523 = phi float [ %5169, %5167 ], [ %5306, %5520 ]
  %5524 = phi float [ %5170, %5167 ], [ %5307, %5520 ]
  %5525 = phi float [ %5171, %5167 ], [ %5308, %5520 ]
  %5526 = add i32 %5172, 1
  %5527 = icmp ugt i32 %5526, %5164
  br i1 %5527, label %5528, label %5167, !llvm.loop !100

; <label>:5528                                    ; preds = %5521
  br label %5529

; <label>:5529                                    ; preds = %5528, %5149
  %5530 = phi float [ 0.000000e+00, %5149 ], [ %5522, %5528 ]
  %5531 = phi float [ 0.000000e+00, %5149 ], [ %5523, %5528 ]
  %5532 = phi float [ 0.000000e+00, %5149 ], [ %5524, %5528 ]
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5530, float %5531, float %5532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = select i1 %260, float 0.000000e+00, float %5530
  %5535 = select i1 %260, float %5533, float %5531
  %5536 = select i1 %260, float 0.000000e+00, float %5532
  %5537 = fcmp fast olt float %5075, 0.000000e+00
  %5538 = call float @dx.op.unary.f32(i32 6, float %5075)  ; FAbs(value)
  %5539 = fmul fast float %5538, %4993
  %5540 = fmul fast float %5538, %4994
  %5541 = fmul fast float %5538, %4995
  %5542 = select i1 %5537, float %4993, float %5539
  %5543 = select i1 %5537, float %4994, float %5540
  %5544 = select i1 %5537, float %4995, float %5541
  %5545 = fsub fast float 1.000000e+00, %5538
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5546, %5534
  %5548 = fmul fast float %5546, %5535
  %5549 = fmul fast float %5546, %5536
  %5550 = fadd fast float %5542, %5547
  %5551 = fadd fast float %5543, %5548
  %5552 = fadd fast float %5544, %5549
  br label %5553

; <label>:5553                                    ; preds = %5529, %5043
  %5554 = phi float [ %5550, %5529 ], [ %4993, %5043 ]
  %5555 = phi float [ %5551, %5529 ], [ %4994, %5043 ]
  %5556 = phi float [ %5552, %5529 ], [ %4995, %5043 ]
  %5557 = fmul fast float %201, %201
  %5558 = fmul fast float %202, %202
  %5559 = fadd fast float %5558, %5557
  %5560 = fmul fast float %203, %203
  %5561 = fadd fast float %5559, %5560
  %5562 = call float @dx.op.unary.f32(i32 24, float %5561)  ; Sqrt(value)
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5565 = fsub fast float %5562, %5564
  %5566 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5567 = fmul fast float %5565, %5566
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5563, 0
  %5570 = extractvalue %dx.types.CBufRet.f32 %5563, 3
  %5571 = and i32 %5000, 4194304
  %5572 = icmp ne i32 %5571, 0
  %5573 = icmp ne i32 %5001, 0
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.CBufRet.f32 %5574, 2
  %5578 = extractvalue %dx.types.CBufRet.f32 %5574, 3
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5582 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5583 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5584 = select i1 %5572, float %5575, float %5580
  %5585 = select i1 %5572, float %5576, float %5581
  %5586 = select i1 %5572, float %5577, float %5582
  %5587 = select i1 %5572, float %5578, float %5583
  %5588 = select i1 %5573, float 0.000000e+00, float %5587
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5592 = select i1 %5572, float %5590, float %5591
  %5593 = select i1 %5573, float 0.000000e+00, float %5592
  %5594 = extractvalue %dx.types.CBufRet.f32 %5589, 2
  %5595 = extractvalue %dx.types.CBufRet.f32 %5589, 3
  %5596 = select i1 %5572, float %5594, float %5595
  %5597 = select i1 %5573, float 0.000000e+00, float %5596
  %5598 = fmul fast float %5568, %63
  %5599 = fmul fast float %5598, %5570
  %5600 = fmul fast float %5599, %5597
  %5601 = fadd fast float %5600, 1.000000e+00
  %5602 = fmul fast float %5064, %5046
  %5603 = fmul fast float %5602, %5601
  %5604 = fmul fast float %5064, %5047
  %5605 = fmul fast float %5604, %5601
  %5606 = fmul fast float %5064, %5048
  %5607 = fmul fast float %5606, %5601
  %5608 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fcmp fast ogt float %5608, 0x3E7FF19E20000000
  %5610 = fdiv fast float 1.000000e+00, %5608
  %5611 = select i1 %5609, float %5610, float 0.000000e+00
  %5612 = fmul fast float %5611, %4683
  %5613 = fmul fast float %5611, %4684
  %5614 = fmul fast float %5611, %4685
  %5615 = fadd fast float %5612, -1.000000e+00
  %5616 = fadd fast float %5613, -1.000000e+00
  %5617 = fadd fast float %5614, -1.000000e+00
  %5618 = fmul fast float %5615, 5.000000e-01
  %5619 = fmul fast float %5616, 5.000000e-01
  %5620 = fmul fast float %5617, 5.000000e-01
  %5621 = fadd fast float %5618, 1.000000e+00
  %5622 = fadd fast float %5619, 1.000000e+00
  %5623 = fadd fast float %5620, 1.000000e+00
  %5624 = fsub fast float %5584, %5621
  %5625 = fsub fast float %5585, %5622
  %5626 = fsub fast float %5586, %5623
  %5627 = fmul fast float %5624, %5588
  %5628 = fmul fast float %5625, %5588
  %5629 = fmul fast float %5626, %5588
  %5630 = fadd fast float %5627, %5621
  %5631 = fadd fast float %5628, %5622
  %5632 = fadd fast float %5629, %5623
  %5633 = fmul fast float %5554, %5059
  %5634 = fmul fast float %5555, %5060
  %5635 = fmul fast float %5556, %5061
  %5636 = fsub fast float 1.000000e+00, %4737
  %5637 = bitcast float %5636 to i32
  %5638 = sitofp i32 %5637 to float
  %5639 = fmul fast float %5638, 5.000000e+00
  %5640 = fadd fast float %5639, 0xC1EFBF8940000000
  %5641 = fptosi float %5640 to i32
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5642, %63
  %5644 = fmul fast float %5643, %5568
  %5645 = fmul fast float %5644, %5569
  %5646 = fmul fast float %5645, %5593
  %5647 = fmul fast float %5602, %5646
  %5648 = fmul fast float %5647, %5630
  %5649 = fmul fast float %5604, %5646
  %5650 = fmul fast float %5649, %5631
  %5651 = fmul fast float %5606, %5646
  %5652 = fmul fast float %5651, %5632
  %5653 = fmul fast float %5603, %1251
  %5654 = fmul fast float %5605, %1251
  %5655 = fmul fast float %5607, %1251
  %5656 = fadd fast float %5633, %3465
  %5657 = fadd fast float %5656, %5648
  %5658 = fmul fast float %5657, %1251
  %5659 = fadd fast float %5634, %3466
  %5660 = fadd fast float %5659, %5650
  %5661 = fmul fast float %5660, %1251
  %5662 = fadd fast float %5635, %3467
  %5663 = fadd fast float %5662, %5652
  %5664 = fmul fast float %5663, %1251
  %5665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5665, 3
  %5667 = fcmp fast oeq float %5666, 0.000000e+00
  br i1 %5667, label %7333, label %5668

; <label>:5668                                    ; preds = %5553
  %5669 = extractvalue %dx.types.CBufRet.f32 %5665, 0
  %5670 = extractvalue %dx.types.CBufRet.f32 %5665, 1
  %5671 = extractvalue %dx.types.CBufRet.f32 %5665, 2
  %5672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5673 = extractvalue %dx.types.CBufRet.f32 %5672, 0
  %5674 = extractvalue %dx.types.CBufRet.f32 %5672, 1
  %5675 = extractvalue %dx.types.CBufRet.f32 %5672, 2
  %5676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5676, 0
  %5678 = extractvalue %dx.types.CBufRet.f32 %5676, 1
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5673, float %5674, float %5675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = select i1 %260, float %5677, float %5673
  %5681 = select i1 %260, float %5679, float %5674
  %5682 = select i1 %260, float %5678, float %5675
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5685 = fmul fast float %5684, %127
  %5686 = fmul fast float %5684, %129
  %5687 = fmul fast float %5684, %131
  %5688 = fadd fast float %5685, %201
  %5689 = fadd fast float %5686, %202
  %5690 = fadd fast float %5687, %203
  %5691 = fcmp fast olt float %5666, 0.000000e+00
  br i1 %5691, label %6949, label %5692

; <label>:5692                                    ; preds = %5668
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5697 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5702 = extractvalue %dx.types.CBufRet.f32 %5698, 3
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 0
  %5705 = extractvalue %dx.types.CBufRet.f32 %5703, 1
  %5706 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5707 = extractvalue %dx.types.CBufRet.f32 %5703, 3
  %5708 = fmul fast float %5694, %5688
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5695, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5696, float %5709)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5697
  %5712 = fmul fast float %5699, %5688
  %5713 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5700, float %5712)  ; FMad(a,b,c)
  %5714 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5701, float %5713)  ; FMad(a,b,c)
  %5715 = fadd fast float %5714, %5702
  %5716 = fmul fast float %5704, %5688
  %5717 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5705, float %5716)  ; FMad(a,b,c)
  %5718 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5706, float %5717)  ; FMad(a,b,c)
  %5719 = fadd fast float %5718, %5707
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 0
  %5722 = fcmp fast une float %5721, 0.000000e+00
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.CBufRet.f32 %5723, 3
  %5727 = fmul fast float %5726, %5711
  %5728 = fmul fast float %5726, %5715
  %5729 = fadd fast float %5727, %5724
  %5730 = fadd fast float %5728, %5725
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.CBufRet.f32 %5731, 3
  %5735 = fmul fast float %5734, %5711
  %5736 = fmul fast float %5734, %5715
  %5737 = fadd fast float %5735, %5732
  %5738 = fadd fast float %5736, %5733
  %5739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5740 = extractvalue %dx.types.CBufRet.f32 %5739, 1
  %5741 = fsub fast float %5740, %5719
  %5742 = extractvalue %dx.types.CBufRet.f32 %5739, 2
  %5743 = fmul fast float %5741, %5742
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  br i1 %5722, label %5806, label %5746

; <label>:5746                                    ; preds = %5692
  %5747 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5750 = fadd fast float %5749, %5747
  %5751 = fcmp fast ogt float %5750, 0.000000e+00
  br i1 %5751, label %5752, label %5776

; <label>:5752                                    ; preds = %5746
  %5753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5753, 1
  %5756 = fsub fast float %5737, %5754
  %5757 = fsub fast float %5738, %5755
  %5758 = fcmp fast olt float %5756, 0.000000e+00
  %5759 = fcmp fast olt float %5757, 0.000000e+00
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5765 = select i1 %5758, float %5761, float %5763
  %5766 = select i1 %5759, float %5762, float %5764
  %5767 = fmul fast float %5765, %5756
  %5768 = fmul fast float %5766, %5757
  %5769 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %5770 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5772 = call float @dx.op.binary.f32(i32 35, float %5769, float %5770)  ; FMax(a,b)
  %5773 = fsub fast float %5771, %5772
  %5774 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5775 = fmul fast float %5774, %5745
  br label %5776

; <label>:5776                                    ; preds = %5752, %5746
  %5777 = phi float [ %5775, %5752 ], [ 0.000000e+00, %5746 ]
  %5778 = extractvalue %dx.types.CBufRet.f32 %5723, 2
  %5779 = extractvalue %dx.types.CBufRet.f32 %5748, 1
  %5780 = fadd fast float %5779, %5778
  %5781 = fcmp fast ogt float %5780, 0.000000e+00
  br i1 %5781, label %5782, label %5806

; <label>:5782                                    ; preds = %5776
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.CBufRet.f32 %5783, 1
  %5786 = fsub fast float %5729, %5784
  %5787 = fsub fast float %5730, %5785
  %5788 = fcmp fast olt float %5786, 0.000000e+00
  %5789 = fcmp fast olt float %5787, 0.000000e+00
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 3
  %5795 = select i1 %5788, float %5791, float %5793
  %5796 = select i1 %5789, float %5792, float %5794
  %5797 = fmul fast float %5795, %5786
  %5798 = fmul fast float %5796, %5787
  %5799 = call float @dx.op.unary.f32(i32 6, float %5797)  ; FAbs(value)
  %5800 = call float @dx.op.unary.f32(i32 6, float %5798)  ; FAbs(value)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5802 = call float @dx.op.binary.f32(i32 35, float %5799, float %5800)  ; FMax(a,b)
  %5803 = fsub fast float %5801, %5802
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5804, %5745
  br label %5806

; <label>:5806                                    ; preds = %5782, %5776, %5692
  %5807 = phi float [ 0.000000e+00, %5692 ], [ %5805, %5782 ], [ 0.000000e+00, %5776 ]
  %5808 = phi float [ 0.000000e+00, %5692 ], [ %5777, %5782 ], [ %5777, %5776 ]
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 1
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = fsub fast float %5711, %5813
  %5816 = fsub fast float %5715, %5814
  %5817 = fcmp fast olt float %5815, 0.000000e+00
  %5818 = fcmp fast olt float %5816, 0.000000e+00
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.CBufRet.f32 %5819, 1
  %5822 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5823 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5824 = select i1 %5817, float %5820, float %5822
  %5825 = select i1 %5818, float %5821, float %5823
  %5826 = fmul fast float %5824, %5815
  %5827 = fmul fast float %5825, %5816
  %5828 = call float @dx.op.unary.f32(i32 6, float %5826)  ; FAbs(value)
  %5829 = call float @dx.op.unary.f32(i32 6, float %5827)  ; FAbs(value)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5831 = call float @dx.op.binary.f32(i32 35, float %5828, float %5829)  ; FMax(a,b)
  %5832 = fsub fast float %5830, %5831
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = call float @dx.op.binary.f32(i32 36, float %5833, float %5811)  ; FMin(a,b)
  %5835 = fmul fast float %5834, %5745
  %5836 = fsub fast float %5807, %5835
  %5837 = fsub fast float %5808, %5807
  %5838 = fsub fast float %5837, %5835
  %5839 = call float @dx.op.binary.f32(i32 35, float %5807, float %5808)  ; FMax(a,b)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5835, float %5839)  ; FMax(a,b)
  %5841 = fcmp fast olt float %5840, 1.000000e+00
  br i1 %5841, label %5842, label %6240, !dx.controlflow.hints !102

; <label>:5842                                    ; preds = %5806
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = fcmp fast une float %5844, 0.000000e+00
  br i1 %5845, label %5846, label %6240, !dx.controlflow.hints !103

; <label>:5846                                    ; preds = %5842
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5850 = extractvalue %dx.types.CBufRet.f32 %5847, 2
  %5851 = extractvalue %dx.types.CBufRet.f32 %5847, 3
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 1
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5856 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5862 = fmul fast float %5848, %5688
  %5863 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5849, float %5862)  ; FMad(a,b,c)
  %5864 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5850, float %5863)  ; FMad(a,b,c)
  %5865 = fadd fast float %5864, %5851
  %5866 = fmul fast float %5853, %5688
  %5867 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5854, float %5866)  ; FMad(a,b,c)
  %5868 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5855, float %5867)  ; FMad(a,b,c)
  %5869 = fadd fast float %5868, %5856
  %5870 = fmul fast float %5858, %5688
  %5871 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %5859, float %5870)  ; FMad(a,b,c)
  %5872 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %5860, float %5871)  ; FMad(a,b,c)
  %5873 = fadd fast float %5872, %5861
  %5874 = fcmp fast oge float %5865, 1.000000e+00
  %5875 = fcmp fast oge float %5869, 1.000000e+00
  %5876 = or i1 %5874, %5875
  %5877 = fcmp fast olt float %5865, 0.000000e+00
  %5878 = fcmp fast olt float %5869, 0.000000e+00
  %5879 = or i1 %5877, %5878
  %5880 = or i1 %5876, %5879
  br i1 %5880, label %6240, label %5881, !dx.controlflow.hints !104

; <label>:5881                                    ; preds = %5846
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.i32 %5886, 2
  %5888 = uitofp i32 %5887 to float
  %5889 = extractvalue %dx.types.CBufRet.i32 %5886, 3
  %5890 = uitofp i32 %5889 to float
  %5891 = extractvalue %dx.types.CBufRet.f32 %5882, 3
  %5892 = fmul fast float %5891, 2.000000e+00
  %5893 = fsub fast float %5865, %5883
  %5894 = fsub fast float %5869, %5884
  %5895 = fmul fast float %5892, %5893
  %5896 = fmul fast float %5892, %5894
  %5897 = fdiv fast float 1.000000e+00, %5671
  %5898 = fmul fast float %5896, %5897
  %5899 = call float @dx.op.unary.f32(i32 6, float %5898)  ; FAbs(value)
  %5900 = fmul fast float %5885, %5690
  %5901 = fmul fast float %5900, %5892
  %5902 = call float @dx.op.unary.f32(i32 6, float %5901)  ; FAbs(value)
  %5903 = call float @dx.op.unary.f32(i32 6, float %5895)  ; FAbs(value)
  %5904 = call float @dx.op.binary.f32(i32 35, float %5902, float %5899)  ; FMax(a,b)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5903, float %5904)  ; FMax(a,b)
  %5906 = fmul fast float %5905, 2.000000e+00
  %5907 = call float @dx.op.unary.f32(i32 23, float %5906)  ; Log(value)
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float %5888)  ; FMax(a,b)
  %5909 = call float @dx.op.unary.f32(i32 22, float %5908)  ; Frc(value)
  %5910 = fadd fast float %5909, 0xBFEA666660000000
  %5911 = fmul fast float %5910, 8.000000e+00
  %5912 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  %5913 = call float @dx.op.unary.f32(i32 27, float %5908)  ; Round_ni(value)
  %5914 = fadd fast float %5913, %5912
  %5915 = call float @dx.op.binary.f32(i32 36, float %5914, float %5890)  ; FMin(a,b)
  %5916 = call float @dx.op.unary.f32(i32 27, float %5915)  ; Round_ni(value)
  %5917 = fsub fast float -0.000000e+00, %5916
  %5918 = call float @dx.op.unary.f32(i32 21, float %5917)  ; Exp(value)
  %5919 = fmul fast float %5918, %5892
  %5920 = fmul fast float %5919, %5865
  %5921 = fmul fast float %5919, %5869
  %5922 = fmul fast float %5920, 2.500000e-01
  %5923 = fmul fast float %5921, 2.500000e-01
  %5924 = fadd fast float %5922, 5.000000e-01
  %5925 = fadd fast float %5923, 5.000000e-01
  %5926 = fsub fast float %5890, %5888
  %5927 = fptoui float %5926 to i32
  %5928 = add i32 %5927, 320
  %5929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %5928)  ; CBufferLoadLegacy(handle,regIndex)
  %5930 = extractvalue %dx.types.CBufRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.CBufRet.f32 %5929, 1
  %5932 = fcmp fast une float %5915, %5890
  %5933 = fsub fast float %5865, %5930
  %5934 = fsub fast float %5869, %5931
  %5935 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5936 = call float @dx.op.unary.f32(i32 6, float %5934)  ; FAbs(value)
  %5937 = fmul fast float %5935, %5919
  %5938 = fmul fast float %5936, %5919
  %5939 = fcmp fast olt float %5937, 1.000000e+00
  %5940 = fcmp fast olt float %5938, 1.000000e+00
  %5941 = and i1 %5939, %5940
  %5942 = or i1 %5932, %5941
  br i1 %5942, label %5943, label %6240, !dx.controlflow.hints !105

; <label>:5943                                    ; preds = %5881
  %5944 = fmul fast float %5921, 5.000000e-01
  %5945 = fmul fast float %5920, 5.000000e-01
  %5946 = fadd fast float %5944, 5.000000e-01
  %5947 = fadd fast float %5945, 5.000000e-01
  %5948 = sitofp i32 %5887 to float
  %5949 = fsub fast float %5915, %5948
  %5950 = call float @dx.op.unary.f32(i32 27, float %5949)  ; Round_ni(value)
  %5951 = call float @dx.op.unary.f32(i32 22, float %5915)  ; Frc(value)
  %5952 = call float @dx.op.unary.f32(i32 22, float %5947)  ; Frc(value)
  %5953 = call float @dx.op.unary.f32(i32 22, float %5946)  ; Frc(value)
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5952, float %5953, float %5950, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5958 = extractvalue %dx.types.ResRet.f32 %5954, 3
  %5959 = fcmp fast ogt float %5951, 0.000000e+00
  br i1 %5959, label %5960, label %5981, !dx.controlflow.hints !106

; <label>:5960                                    ; preds = %5943
  %5961 = fadd fast float %5950, 1.000000e+00
  %5962 = call float @dx.op.unary.f32(i32 22, float %5924)  ; Frc(value)
  %5963 = call float @dx.op.unary.f32(i32 22, float %5925)  ; Frc(value)
  %5964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %5962, float %5963, float %5961, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = extractvalue %dx.types.ResRet.f32 %5964, 1
  %5967 = extractvalue %dx.types.ResRet.f32 %5964, 2
  %5968 = extractvalue %dx.types.ResRet.f32 %5964, 3
  %5969 = fsub fast float %5965, %5955
  %5970 = fsub fast float %5966, %5956
  %5971 = fsub fast float %5967, %5957
  %5972 = fsub fast float %5968, %5958
  %5973 = fmul fast float %5969, %5951
  %5974 = fmul fast float %5970, %5951
  %5975 = fmul fast float %5971, %5951
  %5976 = fmul fast float %5972, %5951
  %5977 = fadd fast float %5973, %5955
  %5978 = fadd fast float %5974, %5956
  %5979 = fadd fast float %5975, %5957
  %5980 = fadd fast float %5976, %5958
  br label %5981

; <label>:5981                                    ; preds = %5960, %5943
  %5982 = phi float [ %5977, %5960 ], [ %5955, %5943 ]
  %5983 = phi float [ %5978, %5960 ], [ %5956, %5943 ]
  %5984 = phi float [ %5979, %5960 ], [ %5957, %5943 ]
  %5985 = phi float [ %5980, %5960 ], [ %5958, %5943 ]
  %5986 = fadd fast float %5982, -5.000000e-01
  %5987 = fadd fast float %5984, -5.000000e-01
  %5988 = fmul fast float %5986, 0xBFD5555560000000
  %5989 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5987, float %5988)  ; FMad(a,b,c)
  %5990 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5983, float 0.000000e+00)  ; FMad(a,b,c)
  %5991 = fadd fast float %5990, %5985
  %5992 = fmul fast float %5986, -7.500000e-01
  %5993 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5987, float %5992)  ; FMad(a,b,c)
  %5994 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5983, float 0.000000e+00)  ; FMad(a,b,c)
  %5995 = fadd fast float %5994, %5985
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 0
  %5998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5999 = extractvalue %dx.types.CBufRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.CBufRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.CBufRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.CBufRet.f32 %5998, 3
  %6003 = fsub fast float %5999, %5989
  %6004 = fsub fast float %6000, %5991
  %6005 = fsub fast float %6001, %5993
  %6006 = fsub fast float %6002, %5995
  %6007 = fmul fast float %6003, %5997
  %6008 = fmul fast float %6004, %5997
  %6009 = fmul fast float %6005, %5997
  %6010 = fmul fast float %6006, %5997
  %6011 = fadd fast float %6007, %5989
  %6012 = fadd fast float %6008, %5991
  %6013 = fadd fast float %6009, %5993
  %6014 = fadd fast float %6010, %5995
  %6015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.i32 %6015, 0
  %6017 = and i32 %6016, 536870911
  %6018 = uitofp i32 %6017 to float
  %6019 = fmul fast float %6018, %5865
  %6020 = fmul fast float %6018, %5869
  %6021 = fptoui float %6019 to i32
  %6022 = fptoui float %6020 to i32
  %6023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6024 = extractvalue %dx.types.ResRet.i32 %6023, 0
  %6025 = and i32 %6024, 31
  %6026 = lshr i32 %6021, %6025
  %6027 = lshr i32 %6022, %6025
  %6028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6029 = extractvalue %dx.types.ResRet.i32 %6028, 0
  %6030 = and i32 %6029, 31
  %6031 = shl i32 1, %6030
  %6032 = call i32 @dx.op.binary.i32(i32 40, i32 %6031, i32 4)  ; UMin(a,b)
  %6033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6034 = extractvalue %dx.types.ResRet.i32 %6033, 0
  %6035 = extractvalue %dx.types.ResRet.i32 %6033, 1
  %6036 = icmp eq i32 %6032, 0
  br i1 %6036, label %6078, label %6037

; <label>:6037                                    ; preds = %5981
  br label %6038

; <label>:6038                                    ; preds = %6066, %6037
  %6039 = phi i32 [ %6069, %6066 ], [ 0, %6037 ]
  %6040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6041 = extractvalue %dx.types.ResRet.i32 %6040, 0
  %6042 = lshr i32 %6041, 16
  %6043 = and i32 %6042, 31
  %6044 = shl i32 %6027, %6043
  %6045 = add i32 %6044, %6026
  %6046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6047 = extractvalue %dx.types.ResRet.i32 %6046, 0
  %6048 = and i32 %6047, 31
  %6049 = shl i32 %6045, %6048
  %6050 = add i32 %6049, %6039
  %6051 = shl i32 %6050, 2
  %6052 = add i32 %6051, 32
  %6053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6052, i32 undef)  ; BufferLoad(srv,index,wot)
  %6054 = extractvalue %dx.types.ResRet.i32 %6053, 0
  %6055 = icmp slt i32 %6054, 0
  %6056 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6039
  %6057 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6039
  %6058 = bitcast float* %6056 to i32*
  %6059 = bitcast float* %6057 to i32*
  br i1 %6055, label %6060, label %6066

; <label>:6060                                    ; preds = %6038
  %6061 = and i32 %6054, 1073741823
  %6062 = add nuw nsw i32 %6061, 20
  %6063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6062, i32 undef)  ; BufferLoad(srv,index,wot)
  %6064 = extractvalue %dx.types.ResRet.i32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.i32 %6063, 1
  br label %6066

; <label>:6066                                    ; preds = %6060, %6038
  %6067 = phi i32 [ %6064, %6060 ], [ %6034, %6038 ]
  %6068 = phi i32 [ %6065, %6060 ], [ %6035, %6038 ]
  store i32 %6067, i32* %6058, align 4
  store i32 %6068, i32* %6059, align 4
  %6069 = add nuw i32 %6039, 1
  %6070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.i32 %6070, 2
  %6072 = icmp eq i32 %6071, 0
  %6073 = icmp ugt i32 %6054, -1073741825
  %6074 = and i1 %6073, %6072
  %6075 = icmp ult i32 %6069, %6032
  %6076 = and i1 %6074, %6075
  br i1 %6076, label %6038, label %6077

; <label>:6077                                    ; preds = %6066
  br label %6078

; <label>:6078                                    ; preds = %6077, %5981
  %6079 = phi i32 [ 0, %5981 ], [ %6069, %6077 ]
  %6080 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %6081 = fptoui float %6080 to i32
  %6082 = icmp eq i32 %6081, 0
  br i1 %6082, label %6134, label %6083

; <label>:6083                                    ; preds = %6078
  br label %6084

; <label>:6084                                    ; preds = %6129, %6083
  %6085 = phi i32 [ %6130, %6129 ], [ %6079, %6083 ]
  %6086 = phi i32 [ %6131, %6129 ], [ 0, %6083 ]
  %6087 = lshr i32 %6086, 2
  %6088 = and i32 %6086, 3
  %6089 = add nuw nsw i32 %6087, 83
  %6090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %6089)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.i32 %6090, 0
  %6092 = extractvalue %dx.types.CBufRet.i32 %6090, 1
  %6093 = extractvalue %dx.types.CBufRet.i32 %6090, 2
  %6094 = extractvalue %dx.types.CBufRet.i32 %6090, 3
  %6095 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %6091, i32* %6095, align 4
  %6096 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %6092, i32* %6096, align 4
  %6097 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %6093, i32* %6097, align 4
  %6098 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %6094, i32* %6098, align 4
  %6099 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %6088
  %6100 = load i32, i32* %6099, align 4, !tbaa !107, !noalias !111
  %6101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6102 = extractvalue %dx.types.ResRet.i32 %6101, 0
  %6103 = lshr i32 %6102, 16
  %6104 = and i32 %6103, 31
  %6105 = shl i32 %6027, %6104
  %6106 = add i32 %6105, %6026
  %6107 = shl i32 %6106, 2
  %6108 = add i32 %6107, %6100
  %6109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.i32 %6109, 0
  %6111 = icmp eq i32 %6110, 0
  br i1 %6111, label %6129, label %6112

; <label>:6112                                    ; preds = %6084
  %6113 = icmp slt i32 %6110, 0
  %6114 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6085
  %6115 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6085
  %6116 = bitcast float* %6114 to i32*
  %6117 = bitcast float* %6115 to i32*
  br i1 %6113, label %6118, label %6125

; <label>:6118                                    ; preds = %6112
  %6119 = and i32 %6110, 1073741823
  %6120 = add i32 %6100, 20
  %6121 = add i32 %6120, %6119
  %6122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.i32 %6122, 0
  %6124 = extractvalue %dx.types.ResRet.i32 %6122, 1
  br label %6125

; <label>:6125                                    ; preds = %6118, %6112
  %6126 = phi i32 [ %6123, %6118 ], [ %6034, %6112 ]
  %6127 = phi i32 [ %6124, %6118 ], [ %6035, %6112 ]
  store i32 %6126, i32* %6116, align 4
  store i32 %6127, i32* %6117, align 4
  %6128 = add i32 %6085, 1
  br label %6129

; <label>:6129                                    ; preds = %6125, %6084
  %6130 = phi i32 [ %6085, %6084 ], [ %6128, %6125 ]
  %6131 = add nuw i32 %6086, 1
  %6132 = icmp eq i32 %6131, %6081
  br i1 %6132, label %6133, label %6084

; <label>:6133                                    ; preds = %6129
  br label %6134

; <label>:6134                                    ; preds = %6133, %6078
  %6135 = phi i32 [ %6079, %6078 ], [ %6130, %6133 ]
  %6136 = icmp eq i32 %6135, 1
  %6137 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 0
  %6138 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 0
  br i1 %6136, label %6139, label %6142

; <label>:6139                                    ; preds = %6134
  %6140 = load float, float* %6137, align 4
  %6141 = load float, float* %6138, align 4
  br label %6169

; <label>:6142                                    ; preds = %6134
  %6143 = load float, float* %6137, align 4
  %6144 = load float, float* %6138, align 4
  %6145 = fdiv fast float 1.000000e+00, %6144
  %6146 = fsub fast float %6143, %6145
  %6147 = icmp ugt i32 %6135, 1
  br i1 %6147, label %6148, label %6164

; <label>:6148                                    ; preds = %6142
  br label %6149

; <label>:6149                                    ; preds = %6149, %6148
  %6150 = phi float [ %6159, %6149 ], [ %6146, %6148 ]
  %6151 = phi float [ %6160, %6149 ], [ %6143, %6148 ]
  %6152 = phi i32 [ %6161, %6149 ], [ 1, %6148 ]
  %6153 = getelementptr [12 x float], [12 x float]* %106, i32 0, i32 %6152
  %6154 = load float, float* %6153, align 4
  %6155 = getelementptr [12 x float], [12 x float]* %107, i32 0, i32 %6152
  %6156 = load float, float* %6155, align 4
  %6157 = fdiv fast float 1.000000e+00, %6156
  %6158 = fsub fast float %6154, %6157
  %6159 = call float @dx.op.binary.f32(i32 36, float %6150, float %6158)  ; FMin(a,b)
  %6160 = call float @dx.op.binary.f32(i32 35, float %6151, float %6154)  ; FMax(a,b)
  %6161 = add nuw i32 %6152, 1
  %6162 = icmp eq i32 %6161, %6135
  br i1 %6162, label %6163, label %6149

; <label>:6163                                    ; preds = %6149
  br label %6164

; <label>:6164                                    ; preds = %6163, %6142
  %6165 = phi float [ %6146, %6142 ], [ %6159, %6163 ]
  %6166 = phi float [ %6143, %6142 ], [ %6160, %6163 ]
  %6167 = fsub fast float %6166, %6165
  %6168 = fdiv fast float 1.000000e+00, %6167
  br label %6169

; <label>:6169                                    ; preds = %6164, %6139
  %6170 = phi float [ %6140, %6139 ], [ %6166, %6164 ]
  %6171 = phi float [ %6141, %6139 ], [ %6168, %6164 ]
  %6172 = fadd fast float %5873, %6170
  %6173 = fmul fast float %6172, %6171
  %6174 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  %6175 = fmul fast float %6174, 2.000000e+00
  %6176 = fsub fast float 1.000000e+00, %6175
  %6177 = fmul fast float %6011, %6011
  %6178 = fsub fast float %6012, %6177
  %6179 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6178)  ; FMax(a,b)
  %6180 = fdiv fast float 1.000000e+00, %6179
  %6181 = fmul fast float %6012, %6011
  %6182 = fsub fast float %6013, %6181
  %6183 = fsub fast float %6176, %6011
  %6184 = fmul fast float %6176, %6176
  %6185 = fsub fast float %6184, %6012
  %6186 = fmul fast float %6180, %6182
  %6187 = fmul fast float %6186, %6183
  %6188 = fsub fast float %6185, %6187
  %6189 = fmul fast float %6012, %6012
  %6190 = fsub fast float %6014, %6189
  %6191 = fmul fast float %6182, %6182
  %6192 = fmul fast float %6191, %6180
  %6193 = fsub fast float %6190, %6192
  %6194 = fdiv fast float %6188, %6193
  %6195 = fmul fast float %6194, %6182
  %6196 = fsub fast float %6183, %6195
  %6197 = fmul fast float %6196, %6180
  %6198 = fmul fast float %6197, %6011
  %6199 = fsub fast float 1.000000e+00, %6198
  %6200 = fmul fast float %6194, %6012
  %6201 = fsub fast float %6199, %6200
  %6202 = fmul fast float %6197, %6197
  %6203 = fmul fast float %6194, 4.000000e+00
  %6204 = fmul fast float %6203, %6201
  %6205 = fsub fast float %6202, %6204
  %6206 = call float @dx.op.unary.f32(i32 24, float %6205)  ; Sqrt(value)
  %6207 = fcmp fast oge float %6197, 0.000000e+00
  %6208 = fsub fast float -0.000000e+00, %6206
  %6209 = select i1 %6207, float %6208, float %6206
  %6210 = fsub fast float %6209, %6197
  %6211 = fdiv fast float %6210, %6194
  %6212 = fdiv fast float %6201, %6210
  %6213 = fmul fast float %6211, 5.000000e-01
  %6214 = fmul fast float %6212, 2.000000e+00
  %6215 = select i1 %6207, float %6213, float %6214
  %6216 = select i1 %6207, float %6214, float %6213
  %6217 = call float @dx.op.binary.f32(i32 35, float %6215, float %6216)  ; FMax(a,b)
  %6218 = call float @dx.op.binary.f32(i32 36, float %6215, float %6216)  ; FMin(a,b)
  %6219 = fcmp fast ogt float %6176, %6217
  %6220 = fsub fast float %6176, %6218
  %6221 = fsub fast float %6176, %6217
  %6222 = fsub fast float %6217, %6218
  %6223 = select i1 %6219, float %6221, float %6222
  %6224 = fmul float %6220, %6223
  %6225 = select i1 %6219, float %6218, float %6176
  %6226 = fcmp fast ogt float %6176, %6218
  %6227 = fmul fast float %6225, %6217
  %6228 = fadd fast float %6225, %6217
  %6229 = fmul fast float %6228, %6011
  %6230 = fadd fast float %6227, %6012
  %6231 = fsub fast float %6230, %6229
  %6232 = fdiv fast float %6231, %6224
  %6233 = select i1 %6226, float %6232, float 0.000000e+00
  %6234 = fsub fast float 1.000000e+00, %6233
  %6235 = select i1 %6219, float %6234, float %6233
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = extractvalue %dx.types.CBufRet.f32 %5996, 3
  %6238 = fmul fast float %6237, %6236
  %6239 = fsub fast float 1.000000e+00, %6238
  br label %6240

; <label>:6240                                    ; preds = %6169, %5881, %5846, %5842, %5806
  %6241 = phi float [ 1.000000e+00, %5806 ], [ %6239, %6169 ], [ 1.000000e+00, %5846 ], [ 1.000000e+00, %5881 ], [ 1.000000e+00, %5842 ]
  %6242 = fcmp fast ogt float %5838, 0.000000e+00
  br i1 %6242, label %6243, label %6407, !dx.controlflow.hints !120

; <label>:6243                                    ; preds = %6240
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6246 = fadd fast float %6245, %5719
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 2
  %6252 = call float @dx.op.binary.f32(i32 35, float %6246, float 0.000000e+00)  ; FMax(a,b)
  %6253 = fadd fast float %6252, 0x3F10000000000000
  %6254 = fcmp fast oeq float %6251, 0.000000e+00
  br i1 %6254, label %6255, label %6322

; <label>:6255                                    ; preds = %6243
  %6256 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6258 = fmul fast float %6257, %5737
  %6259 = fmul fast float %6256, %5738
  %6260 = fadd fast float %6258, 5.000000e-01
  %6261 = call float @dx.op.unary.f32(i32 27, float %6260)  ; Round_ni(value)
  %6262 = fadd fast float %6259, 5.000000e-01
  %6263 = call float @dx.op.unary.f32(i32 27, float %6262)  ; Round_ni(value)
  %6264 = fsub fast float %6260, %6261
  %6265 = fsub fast float %6262, %6263
  %6266 = fadd fast float %6261, -5.000000e-01
  %6267 = fadd fast float %6263, -5.000000e-01
  %6268 = fmul fast float %6264, 2.000000e+00
  %6269 = fsub fast float 3.000000e+00, %6268
  %6270 = fadd fast float %6268, 1.000000e+00
  %6271 = fsub fast float 2.000000e+00, %6264
  %6272 = bitcast float %6269 to i32
  %6273 = sub nsw i32 2129859010, %6272
  %6274 = bitcast i32 %6273 to float
  %6275 = fmul fast float %6274, %6271
  %6276 = fadd fast float %6275, -1.000000e+00
  %6277 = bitcast float %6270 to i32
  %6278 = sub nsw i32 2129859010, %6277
  %6279 = bitcast i32 %6278 to float
  %6280 = fmul fast float %6279, %6264
  %6281 = fadd fast float %6280, 1.000000e+00
  %6282 = fmul fast float %6265, 2.000000e+00
  %6283 = fsub fast float 3.000000e+00, %6282
  %6284 = fadd fast float %6282, 1.000000e+00
  %6285 = fsub fast float 2.000000e+00, %6265
  %6286 = bitcast float %6283 to i32
  %6287 = sub nsw i32 2129859010, %6286
  %6288 = bitcast i32 %6287 to float
  %6289 = fmul fast float %6288, %6285
  %6290 = fadd fast float %6289, -1.000000e+00
  %6291 = bitcast float %6284 to i32
  %6292 = sub nsw i32 2129859010, %6291
  %6293 = bitcast i32 %6292 to float
  %6294 = fmul fast float %6293, %6265
  %6295 = fadd fast float %6294, 1.000000e+00
  %6296 = fadd fast float %6276, %6266
  %6297 = fmul fast float %6296, %6248
  %6298 = fadd fast float %6290, %6267
  %6299 = fmul fast float %6298, %6249
  %6300 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6297, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float %6253)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 0
  %6302 = fmul fast float %6301, %6269
  %6303 = fadd fast float %6281, %6266
  %6304 = fmul fast float %6303, %6248
  %6305 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6304, float %6299, float undef, float undef, i32 0, i32 0, i32 undef, float %6253)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = fmul fast float %6306, %6270
  %6308 = fadd fast float %6295, %6267
  %6309 = fmul fast float %6308, %6249
  %6310 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6297, float %6309, float undef, float undef, i32 0, i32 0, i32 undef, float %6253)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = fmul fast float %6311, %6269
  %6313 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %6304, float %6309, float undef, float undef, i32 0, i32 0, i32 undef, float %6253)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6314 = extractvalue %dx.types.ResRet.f32 %6313, 0
  %6315 = fmul fast float %6314, %6270
  %6316 = fadd fast float %6315, %6312
  %6317 = fmul fast float %6316, %6284
  %6318 = fadd fast float %6307, %6302
  %6319 = fmul fast float %6318, %6283
  %6320 = fadd fast float %6319, %6317
  %6321 = fmul fast float %6320, 6.250000e-02
  br label %6407

; <label>:6322                                    ; preds = %6243
  %6323 = fmul fast float %271, 0x401921FB60000000
  %6324 = call float @dx.op.unary.f32(i32 13, float %6323)  ; Sin(value)
  %6325 = call float @dx.op.unary.f32(i32 12, float %6323)  ; Cos(value)
  %6326 = fsub fast float -0.000000e+00, %6324
  br label %6327

; <label>:6327                                    ; preds = %6376, %6322
  %6328 = phi float [ 0.000000e+00, %6322 ], [ %6371, %6376 ]
  %6329 = phi float [ 0.000000e+00, %6322 ], [ %6373, %6376 ]
  %6330 = phi i32 [ 0, %6322 ], [ %6377, %6376 ]
  %6331 = mul i32 %6330, 2
  %6332 = add i32 0, %6331
  %6333 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6332
  %6334 = load float, float* %6333, align 4
  %6335 = mul i32 %6330, 2
  %6336 = add i32 1, %6335
  %6337 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6336
  %6338 = load float, float* %6337, align 4
  %6339 = fmul fast float %6334, %6325
  %6340 = call float @dx.op.tertiary.f32(i32 46, float %6338, float %6326, float %6339)  ; FMad(a,b,c)
  %6341 = fmul fast float %6334, %6324
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6338, float %6325, float %6341)  ; FMad(a,b,c)
  %6343 = fmul fast float %6340, %6251
  %6344 = fmul fast float %6342, %6251
  %6345 = fadd fast float %6343, %5737
  %6346 = fadd fast float %6344, %5738
  %6347 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %6345, float %6346, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6348 = extractvalue %dx.types.ResRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.ResRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.ResRet.f32 %6347, 2
  %6351 = extractvalue %dx.types.ResRet.f32 %6347, 3
  %6352 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 0
  store float %6348, float* %6352, align 4
  %6353 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 1
  store float %6349, float* %6353, align 4
  %6354 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 2
  store float %6350, float* %6354, align 4
  %6355 = getelementptr inbounds [4 x float], [4 x float]* %111, i32 0, i32 3
  store float %6351, float* %6355, align 4
  %6356 = fsub fast float %6348, %6253
  %6357 = fcmp fast olt float %6356, 0.000000e+00
  %6358 = select i1 %6357, float 0.000000e+00, float 1.000000e+00
  %6359 = fadd fast float %6358, %6328
  %6360 = fmul fast float %6358, %6356
  %6361 = fadd fast float %6360, %6329
  br label %6362

; <label>:6362                                    ; preds = %6362, %6327
  %6363 = phi i32 [ 1, %6327 ], [ %6374, %6362 ]
  %6364 = phi float [ %6361, %6327 ], [ %6373, %6362 ]
  %6365 = phi float [ %6359, %6327 ], [ %6371, %6362 ]
  %6366 = getelementptr [4 x float], [4 x float]* %111, i32 0, i32 %6363
  %6367 = load float, float* %6366, align 4, !tbaa !121, !noalias !111
  %6368 = fsub fast float %6367, %6253
  %6369 = fcmp fast olt float %6368, 0.000000e+00
  %6370 = select i1 %6369, float 0.000000e+00, float 1.000000e+00
  %6371 = fadd fast float %6370, %6365
  %6372 = fmul fast float %6370, %6368
  %6373 = fadd fast float %6372, %6364
  %6374 = add nuw nsw i32 %6363, 1
  %6375 = icmp eq i32 %6374, 4
  br i1 %6375, label %6376, label %6362, !llvm.loop !123

; <label>:6376                                    ; preds = %6362
  %6377 = add nuw nsw i32 %6330, 1
  %6378 = icmp eq i32 %6377, 8
  br i1 %6378, label %6379, label %6327, !llvm.loop !124

; <label>:6379                                    ; preds = %6376
  %6380 = fdiv fast float 1.000000e+00, %6371
  %6381 = fmul fast float %6380, %6373
  %6382 = fdiv fast float 1.000000e+00, %6253
  %6383 = fmul fast float %6381, %6382
  %6384 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6385 = call float @dx.op.binary.f32(i32 35, float %6384, float 0.000000e+00)  ; FMax(a,b)
  %6386 = fmul fast float %6371, 3.125000e-02
  %6387 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6388 = fmul fast float %6387, 2.000000e+00
  %6389 = fadd fast float %6388, -1.000000e+00
  %6390 = fcmp fast ogt float %6389, 0.000000e+00
  %6391 = fcmp fast olt float %6389, 0.000000e+00
  %6392 = zext i1 %6390 to i32
  %6393 = zext i1 %6391 to i32
  %6394 = sub nsw i32 %6392, %6393
  %6395 = sitofp i32 %6394 to float
  %6396 = fmul fast float %6395, %6389
  %6397 = fsub fast float 1.000000e+00, %6396
  %6398 = fmul fast float %6397, %6397
  %6399 = fmul fast float %6398, %6397
  %6400 = fsub fast float %6397, %6399
  %6401 = fmul fast float %6400, %6385
  %6402 = fsub fast float 1.000000e+00, %6399
  %6403 = fsub fast float %6402, %6401
  %6404 = fmul fast float %6395, 5.000000e-01
  %6405 = fmul fast float %6404, %6403
  %6406 = fsub fast float 5.000000e-01, %6405
  br label %6407

; <label>:6407                                    ; preds = %6379, %6255, %6240
  %6408 = phi float [ 1.000000e+00, %6240 ], [ %6321, %6255 ], [ %6406, %6379 ]
  %6409 = fcmp fast ogt float %5836, 0.000000e+00
  br i1 %6409, label %6410, label %6574, !dx.controlflow.hints !125

; <label>:6410                                    ; preds = %6407
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6413 = fadd fast float %6412, %5719
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6416 = extractvalue %dx.types.CBufRet.f32 %6414, 3
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 1
  %6419 = call float @dx.op.binary.f32(i32 35, float %6413, float 0.000000e+00)  ; FMax(a,b)
  %6420 = fadd fast float %6419, 0x3F10000000000000
  %6421 = fcmp fast oeq float %6418, 0.000000e+00
  br i1 %6421, label %6422, label %6489

; <label>:6422                                    ; preds = %6410
  %6423 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6424 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6425 = fmul fast float %6424, %5729
  %6426 = fmul fast float %6423, %5730
  %6427 = fadd fast float %6425, 5.000000e-01
  %6428 = call float @dx.op.unary.f32(i32 27, float %6427)  ; Round_ni(value)
  %6429 = fadd fast float %6426, 5.000000e-01
  %6430 = call float @dx.op.unary.f32(i32 27, float %6429)  ; Round_ni(value)
  %6431 = fsub fast float %6427, %6428
  %6432 = fsub fast float %6429, %6430
  %6433 = fadd fast float %6428, -5.000000e-01
  %6434 = fadd fast float %6430, -5.000000e-01
  %6435 = fmul fast float %6431, 2.000000e+00
  %6436 = fsub fast float 3.000000e+00, %6435
  %6437 = fadd fast float %6435, 1.000000e+00
  %6438 = fsub fast float 2.000000e+00, %6431
  %6439 = bitcast float %6436 to i32
  %6440 = sub nsw i32 2129859010, %6439
  %6441 = bitcast i32 %6440 to float
  %6442 = fmul fast float %6441, %6438
  %6443 = fadd fast float %6442, -1.000000e+00
  %6444 = bitcast float %6437 to i32
  %6445 = sub nsw i32 2129859010, %6444
  %6446 = bitcast i32 %6445 to float
  %6447 = fmul fast float %6446, %6431
  %6448 = fadd fast float %6447, 1.000000e+00
  %6449 = fmul fast float %6432, 2.000000e+00
  %6450 = fsub fast float 3.000000e+00, %6449
  %6451 = fadd fast float %6449, 1.000000e+00
  %6452 = fsub fast float 2.000000e+00, %6432
  %6453 = bitcast float %6450 to i32
  %6454 = sub nsw i32 2129859010, %6453
  %6455 = bitcast i32 %6454 to float
  %6456 = fmul fast float %6455, %6452
  %6457 = fadd fast float %6456, -1.000000e+00
  %6458 = bitcast float %6451 to i32
  %6459 = sub nsw i32 2129859010, %6458
  %6460 = bitcast i32 %6459 to float
  %6461 = fmul fast float %6460, %6432
  %6462 = fadd fast float %6461, 1.000000e+00
  %6463 = fadd fast float %6443, %6433
  %6464 = fmul fast float %6463, %6415
  %6465 = fadd fast float %6457, %6434
  %6466 = fmul fast float %6465, %6416
  %6467 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6464, float %6466, float undef, float undef, i32 0, i32 0, i32 undef, float %6420)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6468 = extractvalue %dx.types.ResRet.f32 %6467, 0
  %6469 = fmul fast float %6468, %6436
  %6470 = fadd fast float %6448, %6433
  %6471 = fmul fast float %6470, %6415
  %6472 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6471, float %6466, float undef, float undef, i32 0, i32 0, i32 undef, float %6420)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = fmul fast float %6473, %6437
  %6475 = fadd fast float %6462, %6434
  %6476 = fmul fast float %6475, %6416
  %6477 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6464, float %6476, float undef, float undef, i32 0, i32 0, i32 undef, float %6420)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6478 = extractvalue %dx.types.ResRet.f32 %6477, 0
  %6479 = fmul fast float %6478, %6436
  %6480 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %6471, float %6476, float undef, float undef, i32 0, i32 0, i32 undef, float %6420)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = fmul fast float %6481, %6437
  %6483 = fadd fast float %6482, %6479
  %6484 = fmul fast float %6483, %6451
  %6485 = fadd fast float %6474, %6469
  %6486 = fmul fast float %6485, %6450
  %6487 = fadd fast float %6486, %6484
  %6488 = fmul fast float %6487, 6.250000e-02
  br label %6574

; <label>:6489                                    ; preds = %6410
  %6490 = fmul fast float %271, 0x401921FB60000000
  %6491 = call float @dx.op.unary.f32(i32 13, float %6490)  ; Sin(value)
  %6492 = call float @dx.op.unary.f32(i32 12, float %6490)  ; Cos(value)
  %6493 = fsub fast float -0.000000e+00, %6491
  br label %6494

; <label>:6494                                    ; preds = %6543, %6489
  %6495 = phi float [ 0.000000e+00, %6489 ], [ %6538, %6543 ]
  %6496 = phi float [ 0.000000e+00, %6489 ], [ %6540, %6543 ]
  %6497 = phi i32 [ 0, %6489 ], [ %6544, %6543 ]
  %6498 = mul i32 %6497, 2
  %6499 = add i32 0, %6498
  %6500 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6499
  %6501 = load float, float* %6500, align 4
  %6502 = mul i32 %6497, 2
  %6503 = add i32 1, %6502
  %6504 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6503
  %6505 = load float, float* %6504, align 4
  %6506 = fmul fast float %6501, %6492
  %6507 = call float @dx.op.tertiary.f32(i32 46, float %6505, float %6493, float %6506)  ; FMad(a,b,c)
  %6508 = fmul fast float %6501, %6491
  %6509 = call float @dx.op.tertiary.f32(i32 46, float %6505, float %6492, float %6508)  ; FMad(a,b,c)
  %6510 = fmul fast float %6507, %6418
  %6511 = fmul fast float %6509, %6418
  %6512 = fadd fast float %6510, %5729
  %6513 = fadd fast float %6511, %5730
  %6514 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %6512, float %6513, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6515 = extractvalue %dx.types.ResRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.ResRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.ResRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.ResRet.f32 %6514, 3
  %6519 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 0
  store float %6515, float* %6519, align 4
  %6520 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 1
  store float %6516, float* %6520, align 4
  %6521 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 2
  store float %6517, float* %6521, align 4
  %6522 = getelementptr inbounds [4 x float], [4 x float]* %110, i32 0, i32 3
  store float %6518, float* %6522, align 4
  %6523 = fsub fast float %6515, %6420
  %6524 = fcmp fast olt float %6523, 0.000000e+00
  %6525 = select i1 %6524, float 0.000000e+00, float 1.000000e+00
  %6526 = fadd fast float %6525, %6495
  %6527 = fmul fast float %6525, %6523
  %6528 = fadd fast float %6527, %6496
  br label %6529

; <label>:6529                                    ; preds = %6529, %6494
  %6530 = phi i32 [ 1, %6494 ], [ %6541, %6529 ]
  %6531 = phi float [ %6528, %6494 ], [ %6540, %6529 ]
  %6532 = phi float [ %6526, %6494 ], [ %6538, %6529 ]
  %6533 = getelementptr [4 x float], [4 x float]* %110, i32 0, i32 %6530
  %6534 = load float, float* %6533, align 4, !tbaa !121, !noalias !111
  %6535 = fsub fast float %6534, %6420
  %6536 = fcmp fast olt float %6535, 0.000000e+00
  %6537 = select i1 %6536, float 0.000000e+00, float 1.000000e+00
  %6538 = fadd fast float %6537, %6532
  %6539 = fmul fast float %6537, %6535
  %6540 = fadd fast float %6539, %6531
  %6541 = add nuw nsw i32 %6530, 1
  %6542 = icmp eq i32 %6541, 4
  br i1 %6542, label %6543, label %6529, !llvm.loop !123

; <label>:6543                                    ; preds = %6529
  %6544 = add nuw nsw i32 %6497, 1
  %6545 = icmp eq i32 %6544, 8
  br i1 %6545, label %6546, label %6494, !llvm.loop !124

; <label>:6546                                    ; preds = %6543
  %6547 = fdiv fast float 1.000000e+00, %6538
  %6548 = fmul fast float %6547, %6540
  %6549 = fdiv fast float 1.000000e+00, %6420
  %6550 = fmul fast float %6548, %6549
  %6551 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  %6552 = call float @dx.op.binary.f32(i32 35, float %6551, float 0.000000e+00)  ; FMax(a,b)
  %6553 = fmul fast float %6538, 3.125000e-02
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = fmul fast float %6554, 2.000000e+00
  %6556 = fadd fast float %6555, -1.000000e+00
  %6557 = fcmp fast ogt float %6556, 0.000000e+00
  %6558 = fcmp fast olt float %6556, 0.000000e+00
  %6559 = zext i1 %6557 to i32
  %6560 = zext i1 %6558 to i32
  %6561 = sub nsw i32 %6559, %6560
  %6562 = sitofp i32 %6561 to float
  %6563 = fmul fast float %6562, %6556
  %6564 = fsub fast float 1.000000e+00, %6563
  %6565 = fmul fast float %6564, %6564
  %6566 = fmul fast float %6565, %6564
  %6567 = fsub fast float %6564, %6566
  %6568 = fmul fast float %6567, %6552
  %6569 = fsub fast float 1.000000e+00, %6566
  %6570 = fsub fast float %6569, %6568
  %6571 = fmul fast float %6562, 5.000000e-01
  %6572 = fmul fast float %6571, %6570
  %6573 = fsub fast float 5.000000e-01, %6572
  br label %6574

; <label>:6574                                    ; preds = %6546, %6422, %6407
  %6575 = phi float [ 1.000000e+00, %6407 ], [ %6488, %6422 ], [ %6573, %6546 ]
  %6576 = fcmp fast ogt float %5835, 0.000000e+00
  br i1 %6576, label %6577, label %6895, !dx.controlflow.hints !126

; <label>:6577                                    ; preds = %6574
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = fadd fast float %6579, %5719
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6583 = extractvalue %dx.types.CBufRet.f32 %6581, 3
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = call float @dx.op.binary.f32(i32 35, float %6580, float 0.000000e+00)  ; FMax(a,b)
  %6587 = fadd fast float %6586, 0x3F10000000000000
  %6588 = fcmp fast oeq float %6585, 0.000000e+00
  br i1 %5722, label %6589, label %6742, !dx.controlflow.hints !127

; <label>:6589                                    ; preds = %6577
  br i1 %6588, label %6590, label %6657

; <label>:6590                                    ; preds = %6589
  %6591 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6592 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6593 = fmul fast float %6592, %5711
  %6594 = fmul fast float %6591, %5715
  %6595 = fadd fast float %6593, 5.000000e-01
  %6596 = call float @dx.op.unary.f32(i32 27, float %6595)  ; Round_ni(value)
  %6597 = fadd fast float %6594, 5.000000e-01
  %6598 = call float @dx.op.unary.f32(i32 27, float %6597)  ; Round_ni(value)
  %6599 = fsub fast float %6595, %6596
  %6600 = fsub fast float %6597, %6598
  %6601 = fadd fast float %6596, -5.000000e-01
  %6602 = fadd fast float %6598, -5.000000e-01
  %6603 = fmul fast float %6599, 2.000000e+00
  %6604 = fsub fast float 3.000000e+00, %6603
  %6605 = fadd fast float %6603, 1.000000e+00
  %6606 = fsub fast float 2.000000e+00, %6599
  %6607 = bitcast float %6604 to i32
  %6608 = sub nsw i32 2129859010, %6607
  %6609 = bitcast i32 %6608 to float
  %6610 = fmul fast float %6609, %6606
  %6611 = fadd fast float %6610, -1.000000e+00
  %6612 = bitcast float %6605 to i32
  %6613 = sub nsw i32 2129859010, %6612
  %6614 = bitcast i32 %6613 to float
  %6615 = fmul fast float %6614, %6599
  %6616 = fadd fast float %6615, 1.000000e+00
  %6617 = fmul fast float %6600, 2.000000e+00
  %6618 = fsub fast float 3.000000e+00, %6617
  %6619 = fadd fast float %6617, 1.000000e+00
  %6620 = fsub fast float 2.000000e+00, %6600
  %6621 = bitcast float %6618 to i32
  %6622 = sub nsw i32 2129859010, %6621
  %6623 = bitcast i32 %6622 to float
  %6624 = fmul fast float %6623, %6620
  %6625 = fadd fast float %6624, -1.000000e+00
  %6626 = bitcast float %6619 to i32
  %6627 = sub nsw i32 2129859010, %6626
  %6628 = bitcast i32 %6627 to float
  %6629 = fmul fast float %6628, %6600
  %6630 = fadd fast float %6629, 1.000000e+00
  %6631 = fadd fast float %6611, %6601
  %6632 = fmul fast float %6631, %6582
  %6633 = fadd fast float %6625, %6602
  %6634 = fmul fast float %6633, %6583
  %6635 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6632, float %6634, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6636 = extractvalue %dx.types.ResRet.f32 %6635, 0
  %6637 = fmul fast float %6636, %6604
  %6638 = fadd fast float %6616, %6601
  %6639 = fmul fast float %6638, %6582
  %6640 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6639, float %6634, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6641 = extractvalue %dx.types.ResRet.f32 %6640, 0
  %6642 = fmul fast float %6641, %6605
  %6643 = fadd fast float %6630, %6602
  %6644 = fmul fast float %6643, %6583
  %6645 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6632, float %6644, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6646 = extractvalue %dx.types.ResRet.f32 %6645, 0
  %6647 = fmul fast float %6646, %6604
  %6648 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %52, float %6639, float %6644, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  %6650 = fmul fast float %6649, %6605
  %6651 = fadd fast float %6650, %6647
  %6652 = fmul fast float %6651, %6619
  %6653 = fadd fast float %6642, %6637
  %6654 = fmul fast float %6653, %6618
  %6655 = fadd fast float %6654, %6652
  %6656 = fmul fast float %6655, 6.250000e-02
  br label %6895

; <label>:6657                                    ; preds = %6589
  %6658 = fmul fast float %271, 0x401921FB60000000
  %6659 = call float @dx.op.unary.f32(i32 13, float %6658)  ; Sin(value)
  %6660 = call float @dx.op.unary.f32(i32 12, float %6658)  ; Cos(value)
  %6661 = fsub fast float -0.000000e+00, %6659
  br label %6662

; <label>:6662                                    ; preds = %6711, %6657
  %6663 = phi float [ 0.000000e+00, %6657 ], [ %6706, %6711 ]
  %6664 = phi float [ 0.000000e+00, %6657 ], [ %6708, %6711 ]
  %6665 = phi i32 [ 0, %6657 ], [ %6712, %6711 ]
  %6666 = mul i32 %6665, 2
  %6667 = add i32 0, %6666
  %6668 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6667
  %6669 = load float, float* %6668, align 4
  %6670 = mul i32 %6665, 2
  %6671 = add i32 1, %6670
  %6672 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6671
  %6673 = load float, float* %6672, align 4
  %6674 = fmul fast float %6669, %6660
  %6675 = call float @dx.op.tertiary.f32(i32 46, float %6673, float %6661, float %6674)  ; FMad(a,b,c)
  %6676 = fmul fast float %6669, %6659
  %6677 = call float @dx.op.tertiary.f32(i32 46, float %6673, float %6660, float %6676)  ; FMad(a,b,c)
  %6678 = fmul fast float %6675, %6585
  %6679 = fmul fast float %6677, %6585
  %6680 = fadd fast float %6678, %5711
  %6681 = fadd fast float %6679, %5715
  %6682 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %51, float %6680, float %6681, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.ResRet.f32 %6682, 2
  %6686 = extractvalue %dx.types.ResRet.f32 %6682, 3
  %6687 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 0
  store float %6683, float* %6687, align 4
  %6688 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 1
  store float %6684, float* %6688, align 4
  %6689 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 2
  store float %6685, float* %6689, align 4
  %6690 = getelementptr inbounds [4 x float], [4 x float]* %109, i32 0, i32 3
  store float %6686, float* %6690, align 4
  %6691 = fsub fast float %6683, %6587
  %6692 = fcmp fast olt float %6691, 0.000000e+00
  %6693 = select i1 %6692, float 0.000000e+00, float 1.000000e+00
  %6694 = fadd fast float %6693, %6663
  %6695 = fmul fast float %6693, %6691
  %6696 = fadd fast float %6695, %6664
  br label %6697

; <label>:6697                                    ; preds = %6697, %6662
  %6698 = phi i32 [ 1, %6662 ], [ %6709, %6697 ]
  %6699 = phi float [ %6696, %6662 ], [ %6708, %6697 ]
  %6700 = phi float [ %6694, %6662 ], [ %6706, %6697 ]
  %6701 = getelementptr [4 x float], [4 x float]* %109, i32 0, i32 %6698
  %6702 = load float, float* %6701, align 4, !tbaa !121, !noalias !111
  %6703 = fsub fast float %6702, %6587
  %6704 = fcmp fast olt float %6703, 0.000000e+00
  %6705 = select i1 %6704, float 0.000000e+00, float 1.000000e+00
  %6706 = fadd fast float %6705, %6700
  %6707 = fmul fast float %6705, %6703
  %6708 = fadd fast float %6707, %6699
  %6709 = add nuw nsw i32 %6698, 1
  %6710 = icmp eq i32 %6709, 4
  br i1 %6710, label %6711, label %6697, !llvm.loop !123

; <label>:6711                                    ; preds = %6697
  %6712 = add nuw nsw i32 %6665, 1
  %6713 = icmp eq i32 %6712, 8
  br i1 %6713, label %6714, label %6662, !llvm.loop !124

; <label>:6714                                    ; preds = %6711
  %6715 = fdiv fast float 1.000000e+00, %6706
  %6716 = fmul fast float %6715, %6708
  %6717 = fdiv fast float 1.000000e+00, %6587
  %6718 = fmul fast float %6716, %6717
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = call float @dx.op.binary.f32(i32 35, float %6719, float 0.000000e+00)  ; FMax(a,b)
  %6721 = fmul fast float %6706, 3.125000e-02
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fmul fast float %6722, 2.000000e+00
  %6724 = fadd fast float %6723, -1.000000e+00
  %6725 = fcmp fast ogt float %6724, 0.000000e+00
  %6726 = fcmp fast olt float %6724, 0.000000e+00
  %6727 = zext i1 %6725 to i32
  %6728 = zext i1 %6726 to i32
  %6729 = sub nsw i32 %6727, %6728
  %6730 = sitofp i32 %6729 to float
  %6731 = fmul fast float %6730, %6724
  %6732 = fsub fast float 1.000000e+00, %6731
  %6733 = fmul fast float %6732, %6732
  %6734 = fmul fast float %6733, %6732
  %6735 = fsub fast float %6732, %6734
  %6736 = fmul fast float %6735, %6720
  %6737 = fsub fast float 1.000000e+00, %6734
  %6738 = fsub fast float %6737, %6736
  %6739 = fmul fast float %6730, 5.000000e-01
  %6740 = fmul fast float %6739, %6738
  %6741 = fsub fast float 5.000000e-01, %6740
  br label %6895

; <label>:6742                                    ; preds = %6577
  br i1 %6588, label %6743, label %6810

; <label>:6743                                    ; preds = %6742
  %6744 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6581, 0
  %6746 = fmul fast float %6745, %5711
  %6747 = fmul fast float %6744, %5715
  %6748 = fadd fast float %6746, 5.000000e-01
  %6749 = call float @dx.op.unary.f32(i32 27, float %6748)  ; Round_ni(value)
  %6750 = fadd fast float %6747, 5.000000e-01
  %6751 = call float @dx.op.unary.f32(i32 27, float %6750)  ; Round_ni(value)
  %6752 = fsub fast float %6748, %6749
  %6753 = fsub fast float %6750, %6751
  %6754 = fadd fast float %6749, -5.000000e-01
  %6755 = fadd fast float %6751, -5.000000e-01
  %6756 = fmul fast float %6752, 2.000000e+00
  %6757 = fsub fast float 3.000000e+00, %6756
  %6758 = fadd fast float %6756, 1.000000e+00
  %6759 = fsub fast float 2.000000e+00, %6752
  %6760 = bitcast float %6757 to i32
  %6761 = sub nsw i32 2129859010, %6760
  %6762 = bitcast i32 %6761 to float
  %6763 = fmul fast float %6762, %6759
  %6764 = fadd fast float %6763, -1.000000e+00
  %6765 = bitcast float %6758 to i32
  %6766 = sub nsw i32 2129859010, %6765
  %6767 = bitcast i32 %6766 to float
  %6768 = fmul fast float %6767, %6752
  %6769 = fadd fast float %6768, 1.000000e+00
  %6770 = fmul fast float %6753, 2.000000e+00
  %6771 = fsub fast float 3.000000e+00, %6770
  %6772 = fadd fast float %6770, 1.000000e+00
  %6773 = fsub fast float 2.000000e+00, %6753
  %6774 = bitcast float %6771 to i32
  %6775 = sub nsw i32 2129859010, %6774
  %6776 = bitcast i32 %6775 to float
  %6777 = fmul fast float %6776, %6773
  %6778 = fadd fast float %6777, -1.000000e+00
  %6779 = bitcast float %6772 to i32
  %6780 = sub nsw i32 2129859010, %6779
  %6781 = bitcast i32 %6780 to float
  %6782 = fmul fast float %6781, %6753
  %6783 = fadd fast float %6782, 1.000000e+00
  %6784 = fadd fast float %6764, %6754
  %6785 = fmul fast float %6784, %6582
  %6786 = fadd fast float %6778, %6755
  %6787 = fmul fast float %6786, %6583
  %6788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6785, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6789 = extractvalue %dx.types.ResRet.f32 %6788, 0
  %6790 = fmul fast float %6789, %6757
  %6791 = fadd fast float %6769, %6754
  %6792 = fmul fast float %6791, %6582
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6792, float %6787, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = fmul fast float %6794, %6758
  %6796 = fadd fast float %6783, %6755
  %6797 = fmul fast float %6796, %6583
  %6798 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6785, float %6797, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6799 = extractvalue %dx.types.ResRet.f32 %6798, 0
  %6800 = fmul fast float %6799, %6757
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %6792, float %6797, float undef, float undef, i32 0, i32 0, i32 undef, float %6587)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = fmul fast float %6802, %6758
  %6804 = fadd fast float %6803, %6800
  %6805 = fmul fast float %6804, %6772
  %6806 = fadd fast float %6795, %6790
  %6807 = fmul fast float %6806, %6771
  %6808 = fadd fast float %6807, %6805
  %6809 = fmul fast float %6808, 6.250000e-02
  br label %6895

; <label>:6810                                    ; preds = %6742
  %6811 = fmul fast float %271, 0x401921FB60000000
  %6812 = call float @dx.op.unary.f32(i32 13, float %6811)  ; Sin(value)
  %6813 = call float @dx.op.unary.f32(i32 12, float %6811)  ; Cos(value)
  %6814 = fsub fast float -0.000000e+00, %6812
  br label %6815

; <label>:6815                                    ; preds = %6864, %6810
  %6816 = phi float [ 0.000000e+00, %6810 ], [ %6859, %6864 ]
  %6817 = phi float [ 0.000000e+00, %6810 ], [ %6861, %6864 ]
  %6818 = phi i32 [ 0, %6810 ], [ %6865, %6864 ]
  %6819 = mul i32 %6818, 2
  %6820 = add i32 0, %6819
  %6821 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6820
  %6822 = load float, float* %6821, align 4
  %6823 = mul i32 %6818, 2
  %6824 = add i32 1, %6823
  %6825 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6824
  %6826 = load float, float* %6825, align 4
  %6827 = fmul fast float %6822, %6813
  %6828 = call float @dx.op.tertiary.f32(i32 46, float %6826, float %6814, float %6827)  ; FMad(a,b,c)
  %6829 = fmul fast float %6822, %6812
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6826, float %6813, float %6829)  ; FMad(a,b,c)
  %6831 = fmul fast float %6828, %6585
  %6832 = fmul fast float %6830, %6585
  %6833 = fadd fast float %6831, %5711
  %6834 = fadd fast float %6832, %5715
  %6835 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %6833, float %6834, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6836 = extractvalue %dx.types.ResRet.f32 %6835, 0
  %6837 = extractvalue %dx.types.ResRet.f32 %6835, 1
  %6838 = extractvalue %dx.types.ResRet.f32 %6835, 2
  %6839 = extractvalue %dx.types.ResRet.f32 %6835, 3
  %6840 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 0
  store float %6836, float* %6840, align 4
  %6841 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 1
  store float %6837, float* %6841, align 4
  %6842 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 2
  store float %6838, float* %6842, align 4
  %6843 = getelementptr inbounds [4 x float], [4 x float]* %108, i32 0, i32 3
  store float %6839, float* %6843, align 4
  %6844 = fsub fast float %6836, %6587
  %6845 = fcmp fast olt float %6844, 0.000000e+00
  %6846 = select i1 %6845, float 0.000000e+00, float 1.000000e+00
  %6847 = fadd fast float %6846, %6816
  %6848 = fmul fast float %6846, %6844
  %6849 = fadd fast float %6848, %6817
  br label %6850

; <label>:6850                                    ; preds = %6850, %6815
  %6851 = phi i32 [ 1, %6815 ], [ %6862, %6850 ]
  %6852 = phi float [ %6849, %6815 ], [ %6861, %6850 ]
  %6853 = phi float [ %6847, %6815 ], [ %6859, %6850 ]
  %6854 = getelementptr [4 x float], [4 x float]* %108, i32 0, i32 %6851
  %6855 = load float, float* %6854, align 4, !tbaa !121, !noalias !111
  %6856 = fsub fast float %6855, %6587
  %6857 = fcmp fast olt float %6856, 0.000000e+00
  %6858 = select i1 %6857, float 0.000000e+00, float 1.000000e+00
  %6859 = fadd fast float %6858, %6853
  %6860 = fmul fast float %6858, %6856
  %6861 = fadd fast float %6860, %6852
  %6862 = add nuw nsw i32 %6851, 1
  %6863 = icmp eq i32 %6862, 4
  br i1 %6863, label %6864, label %6850, !llvm.loop !123

; <label>:6864                                    ; preds = %6850
  %6865 = add nuw nsw i32 %6818, 1
  %6866 = icmp eq i32 %6865, 8
  br i1 %6866, label %6867, label %6815, !llvm.loop !124

; <label>:6867                                    ; preds = %6864
  %6868 = fdiv fast float 1.000000e+00, %6859
  %6869 = fmul fast float %6868, %6861
  %6870 = fdiv fast float 1.000000e+00, %6587
  %6871 = fmul fast float %6869, %6870
  %6872 = call float @dx.op.unary.f32(i32 7, float %6871)  ; Saturate(value)
  %6873 = call float @dx.op.binary.f32(i32 35, float %6872, float 0.000000e+00)  ; FMax(a,b)
  %6874 = fmul fast float %6859, 3.125000e-02
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = fmul fast float %6875, 2.000000e+00
  %6877 = fadd fast float %6876, -1.000000e+00
  %6878 = fcmp fast ogt float %6877, 0.000000e+00
  %6879 = fcmp fast olt float %6877, 0.000000e+00
  %6880 = zext i1 %6878 to i32
  %6881 = zext i1 %6879 to i32
  %6882 = sub nsw i32 %6880, %6881
  %6883 = sitofp i32 %6882 to float
  %6884 = fmul fast float %6883, %6877
  %6885 = fsub fast float 1.000000e+00, %6884
  %6886 = fmul fast float %6885, %6885
  %6887 = fmul fast float %6886, %6885
  %6888 = fsub fast float %6885, %6887
  %6889 = fmul fast float %6888, %6873
  %6890 = fsub fast float 1.000000e+00, %6887
  %6891 = fsub fast float %6890, %6889
  %6892 = fmul fast float %6883, 5.000000e-01
  %6893 = fmul fast float %6892, %6891
  %6894 = fsub fast float 5.000000e-01, %6893
  br label %6895

; <label>:6895                                    ; preds = %6867, %6743, %6714, %6590, %6574
  %6896 = phi float [ 1.000000e+00, %6574 ], [ %6656, %6590 ], [ %6741, %6714 ], [ %6809, %6743 ], [ %6894, %6867 ]
  %6897 = fsub fast float %6408, %6241
  %6898 = fmul fast float %6897, %5808
  %6899 = fadd fast float %6898, %6241
  %6900 = fsub fast float %6575, %6899
  %6901 = fmul fast float %6900, %5807
  %6902 = fadd fast float %6901, %6899
  %6903 = fsub fast float %6896, %6902
  %6904 = fmul fast float %6903, %5835
  %6905 = fadd fast float %6904, %6902
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6908 = fcmp fast ogt float %6907, 0.000000e+00
  br i1 %6908, label %6909, label %6949, !dx.controlflow.hints !128

; <label>:6909                                    ; preds = %6895
  %6910 = fcmp fast ugt float %6907, 0.000000e+00
  br i1 %6910, label %6911, label %6946

; <label>:6911                                    ; preds = %6909
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6922 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.f32 %6924, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6924, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6924, 2
  %6928 = fadd fast float %6925, %5688
  %6929 = fadd fast float %6926, %5689
  %6930 = fadd fast float %6927, %5690
  %6931 = fmul fast float %6928, %6913
  %6932 = call float @dx.op.tertiary.f32(i32 46, float %6914, float %6929, float %6931)  ; FMad(a,b,c)
  %6933 = call float @dx.op.tertiary.f32(i32 46, float %6915, float %6930, float %6932)  ; FMad(a,b,c)
  %6934 = fadd fast float %6933, %6916
  %6935 = fmul fast float %6928, %6918
  %6936 = call float @dx.op.tertiary.f32(i32 46, float %6919, float %6929, float %6935)  ; FMad(a,b,c)
  %6937 = call float @dx.op.tertiary.f32(i32 46, float %6920, float %6930, float %6936)  ; FMad(a,b,c)
  %6938 = fadd fast float %6937, %6921
  %6939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %6934, float %6938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6940 = extractvalue %dx.types.ResRet.f32 %6939, 0
  %6941 = fmul fast float %6940, %6923
  %6942 = fadd fast float %6941, %6922
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fmul fast float %6943, %6907
  %6945 = fsub fast float 1.000000e+00, %6944
  br label %6946

; <label>:6946                                    ; preds = %6911, %6909
  %6947 = phi float [ %6945, %6911 ], [ 1.000000e+00, %6909 ]
  %6948 = fmul fast float %6947, %6905
  br label %6949

; <label>:6949                                    ; preds = %6946, %6895, %5668
  %6950 = phi float [ 1.000000e+00, %5668 ], [ %6948, %6946 ], [ %6905, %6895 ]
  %6951 = call float @dx.op.binary.f32(i32 36, float %6950, float %6950)  ; FMin(a,b)
  %6952 = call float @dx.op.binary.f32(i32 36, float %6950, float %6951)  ; FMin(a,b)
  %6953 = fcmp fast ogt float %6952, 0.000000e+00
  br i1 %6953, label %6954, label %7119, !dx.controlflow.hints !129

; <label>:6954                                    ; preds = %6949
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6964 = extractvalue %dx.types.CBufRet.f32 %6960, 3
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6965, 3
  %6970 = fmul fast float %6956, %5688
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %6957, float %6970)  ; FMad(a,b,c)
  %6972 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %6958, float %6971)  ; FMad(a,b,c)
  %6973 = fadd fast float %6972, %6959
  %6974 = fmul fast float %6961, %5688
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %6962, float %6974)  ; FMad(a,b,c)
  %6976 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %6963, float %6975)  ; FMad(a,b,c)
  %6977 = fadd fast float %6976, %6964
  %6978 = fmul fast float %6966, %5688
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %5689, float %6967, float %6978)  ; FMad(a,b,c)
  %6980 = call float @dx.op.tertiary.f32(i32 46, float %5690, float %6968, float %6979)  ; FMad(a,b,c)
  %6981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.CBufRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.CBufRet.f32 %6981, 3
  %6985 = fmul fast float %6984, %6973
  %6986 = fmul fast float %6984, %6977
  %6987 = fadd fast float %6985, %6982
  %6988 = fadd fast float %6986, %6983
  %6989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.CBufRet.f32 %6989, 1
  %6992 = fsub fast float %6987, %6990
  %6993 = fsub fast float %6988, %6991
  %6994 = fcmp fast olt float %6992, 0.000000e+00
  %6995 = fcmp fast olt float %6993, 0.000000e+00
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %7001 = select i1 %6994, float %6997, float %6999
  %7002 = select i1 %6995, float %6998, float %7000
  %7003 = fmul fast float %7001, %6992
  %7004 = fmul fast float %7002, %6993
  %7005 = call float @dx.op.unary.f32(i32 6, float %7003)  ; FAbs(value)
  %7006 = call float @dx.op.unary.f32(i32 6, float %7004)  ; FAbs(value)
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = call float @dx.op.binary.f32(i32 35, float %7005, float %7006)  ; FMax(a,b)
  %7010 = fsub fast float %7008, %7009
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = fcmp fast ogt float %7011, 0.000000e+00
  br i1 %7012, label %7013, label %7054, !dx.controlflow.hints !130

; <label>:7013                                    ; preds = %6954
  %7014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7016 = fcmp fast ogt float %7015, 0.000000e+00
  br i1 %7016, label %7017, label %7049

; <label>:7017                                    ; preds = %7013
  %7018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %6987, float %6988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7019 = extractvalue %dx.types.ResRet.f32 %7018, 0
  %7020 = extractvalue %dx.types.ResRet.f32 %7018, 1
  %7021 = extractvalue %dx.types.ResRet.f32 %7018, 2
  %7022 = extractvalue %dx.types.ResRet.f32 %7018, 3
  %7023 = fsub fast float 1.000000e+00, %6969
  %7024 = fsub fast float %7023, %6980
  %7025 = fmul fast float %7024, 0x400921FB60000000
  %7026 = fadd fast float %7025, 0x3FF921FB60000000
  %7027 = call float @dx.op.unary.f32(i32 13, float %7026)  ; Sin(value)
  %7028 = fadd fast float %7027, -1.000000e+00
  %7029 = fmul fast float %7028, 0x3FD45F3060000000
  %7030 = fmul fast float %7024, 0x401921FB60000000
  %7031 = fadd fast float %7030, 0x400921FB60000000
  %7032 = call float @dx.op.unary.f32(i32 13, float %7031)  ; Sin(value)
  %7033 = fadd fast float %7032, 0x3E7777A5C0000000
  %7034 = fmul fast float %7033, 0x3FC45F3060000000
  %7035 = fmul fast float %7024, 0x4022D97C80000000
  %7036 = fadd fast float %7035, 0x4012D97C80000000
  %7037 = call float @dx.op.unary.f32(i32 13, float %7036)  ; Sin(value)
  %7038 = fadd fast float %7037, 1.000000e+00
  %7039 = fmul fast float %7038, 0x3FBB2995E0000000
  %7040 = fmul fast float %7024, 0x402921FB60000000
  %7041 = fadd fast float %7040, 0x401921FB60000000
  %7042 = call float @dx.op.unary.f32(i32 13, float %7041)  ; Sin(value)
  %7043 = fadd fast float %7042, 0xBE8777A5C0000000
  %7044 = fmul fast float %7043, 0x3FB45F3060000000
  %7045 = call float @dx.op.dot4.f32(i32 56, float %7019, float %7020, float %7021, float %7022, float %7029, float %7034, float %7039, float %7044)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7046 = fmul fast float %7045, 0xBFF7154760000000
  %7047 = call float @dx.op.unary.f32(i32 21, float %7046)  ; Exp(value)
  %7048 = call float @dx.op.unary.f32(i32 7, float %7047)  ; Saturate(value)
  br label %7049

; <label>:7049                                    ; preds = %7017, %7013
  %7050 = phi float [ %7048, %7017 ], [ 1.000000e+00, %7013 ]
  %7051 = fadd fast float %7050, -1.000000e+00
  %7052 = fmul fast float %7051, %7011
  %7053 = fadd fast float %7052, 1.000000e+00
  br label %7054

; <label>:7054                                    ; preds = %7049, %6954
  %7055 = phi float [ %7053, %7049 ], [ 1.000000e+00, %6954 ]
  %7056 = fmul fast float %7055, %6950
  %7057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7058 = extractvalue %dx.types.CBufRet.f32 %7057, 0
  %7059 = extractvalue %dx.types.CBufRet.f32 %7057, 1
  %7060 = extractvalue %dx.types.CBufRet.f32 %7057, 2
  %7061 = fadd fast float %7058, %201
  %7062 = fadd fast float %7059, %202
  %7063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7064 = extractvalue %dx.types.CBufRet.f32 %7063, 1
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7069 = fsub fast float -0.000000e+00, %7061
  %7070 = fsub fast float -0.000000e+00, %7062
  %7071 = fsub fast float %4726, %7060
  %7072 = fadd fast float %7071, %7064
  %7073 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7069, float %7070, float %7072)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7066, float %7067, float %7068)  ; Dot3(ax,ay,az,bx,by,bz)
  %7075 = fdiv fast float 1.000000e+00, %7074
  %7076 = fmul fast float %7075, %7073
  %7077 = fmul fast float %7066, %7076
  %7078 = fmul fast float %7067, %7076
  %7079 = fadd fast float %7077, %7061
  %7080 = fadd fast float %7078, %7062
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7084 = fsub fast float %7079, %7082
  %7085 = fsub fast float %7080, %7083
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 2
  %7088 = extractvalue %dx.types.CBufRet.f32 %7086, 3
  %7089 = fmul fast float %7084, %7087
  %7090 = fmul fast float %7085, %7088
  %7091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.i32 %7091, 3
  %7093 = icmp eq i32 %7092, 0
  br i1 %7093, label %7099, label %7094

; <label>:7094                                    ; preds = %7054
  %7095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %7089, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7096 = extractvalue %dx.types.ResRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.ResRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.ResRet.f32 %7095, 2
  br label %7104

; <label>:7099                                    ; preds = %7054
  %7100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %7089, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7101 = extractvalue %dx.types.ResRet.f32 %7100, 0
  %7102 = extractvalue %dx.types.ResRet.f32 %7100, 1
  %7103 = extractvalue %dx.types.ResRet.f32 %7100, 2
  br label %7104

; <label>:7104                                    ; preds = %7099, %7094
  %7105 = phi float [ %7096, %7094 ], [ %7101, %7099 ]
  %7106 = phi float [ %7097, %7094 ], [ %7102, %7099 ]
  %7107 = phi float [ %7098, %7094 ], [ %7103, %7099 ]
  %7108 = extractvalue %dx.types.CBufRet.f32 %7063, 2
  %7109 = fmul fast float %7108, %7105
  %7110 = extractvalue %dx.types.CBufRet.f32 %7063, 0
  %7111 = fsub fast float %7076, %7110
  %7112 = fsub fast float %7111, %7109
  %7113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7112)  ; FMax(a,b)
  %7114 = fmul fast float %7113, %7106
  %7115 = call float @dx.op.binary.f32(i32 36, float %7107, float %7114)  ; FMin(a,b)
  %7116 = fmul fast float %7115, 0xBFF7154760000000
  %7117 = call float @dx.op.unary.f32(i32 21, float %7116)  ; Exp(value)
  %7118 = fmul fast float %7056, %7117
  br label %7119

; <label>:7119                                    ; preds = %7104, %6949
  %7120 = phi float [ %7118, %7104 ], [ %6950, %6949 ]
  %7121 = call float @dx.op.binary.f32(i32 36, float %7120, float %7120)  ; FMin(a,b)
  %7122 = call float @dx.op.binary.f32(i32 36, float %7120, float %7121)  ; FMin(a,b)
  %7123 = fcmp fast ogt float %7122, 0.000000e+00
  br i1 %7123, label %7124, label %7333, !dx.controlflow.hints !131

; <label>:7124                                    ; preds = %7119
  %7125 = fmul fast float %7120, %5680
  %7126 = fmul fast float %7120, %5681
  %7127 = fmul fast float %7120, %5682
  %7128 = fsub fast float %203, %3904
  %7129 = fcmp fast ogt float %7128, 0.000000e+00
  %7130 = fmul fast float %5669, 5.120000e+02
  %7131 = fmul fast float %5670, 5.120000e+02
  %7132 = fmul fast float %5671, 5.120000e+02
  %7133 = fadd fast float %7132, %203
  %7134 = fsub fast float %3904, %7133
  %7135 = fmul fast float %7134, 2.000000e+00
  %7136 = fadd fast float %7135, %7133
  %7137 = select i1 %7129, float %7136, float %7133
  %7138 = fsub fast float %7137, %203
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7138, float %7130, float %7131, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = call float @dx.op.unary.f32(i32 25, float %7139)  ; Rsqrt(value)
  %7141 = fmul fast float %7140, %7130
  %7142 = fmul fast float %7140, %7131
  %7143 = fmul fast float %7140, %7138
  %7144 = fsub fast float %3904, %203
  %7145 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7141, float %7142, float %7143)  ; Dot3(ax,ay,az,bx,by,bz)
  %7147 = fdiv fast float 1.000000e+00, %7146
  %7148 = fmul fast float %7147, %7145
  %7149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7128, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7150 = fcmp fast ogt float %7149, 0.000000e+00
  %7151 = fcmp fast olt float %7149, 0.000000e+00
  %7152 = zext i1 %7150 to i32
  %7153 = zext i1 %7151 to i32
  %7154 = sub nsw i32 %7152, %7153
  %7155 = sitofp i32 %7154 to float
  %7156 = fsub fast float %7137, %3904
  %7157 = call float @dx.op.dot3.f32(i32 55, float %7130, float %7131, float %7156, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7158 = fcmp fast ogt float %7157, 0.000000e+00
  %7159 = fcmp fast olt float %7157, 0.000000e+00
  %7160 = zext i1 %7158 to i32
  %7161 = zext i1 %7159 to i32
  %7162 = sub nsw i32 %7160, %7161
  %7163 = sitofp i32 %7162 to float
  %7164 = fcmp fast une float %7155, %7163
  br i1 %7164, label %7165, label %7175

; <label>:7165                                    ; preds = %7124
  %7166 = fmul fast float %7148, %7143
  %7167 = fmul fast float %7148, %7142
  %7168 = fmul fast float %7148, %7141
  %7169 = fmul fast float %7168, %7168
  %7170 = fmul fast float %7167, %7167
  %7171 = fadd fast float %7169, %7170
  %7172 = fmul fast float %7166, %7166
  %7173 = fadd fast float %7171, %7172
  %7174 = call float @dx.op.unary.f32(i32 24, float %7173)  ; Sqrt(value)
  br label %7185

; <label>:7175                                    ; preds = %7124
  %7176 = icmp slt i32 %7154, 0
  br i1 %7176, label %7177, label %7185

; <label>:7177                                    ; preds = %7175
  %7178 = fsub fast float %203, %7137
  %7179 = fmul fast float %7130, %7130
  %7180 = fmul fast float %7131, %7131
  %7181 = fadd fast float %7179, %7180
  %7182 = fmul fast float %7178, %7178
  %7183 = fadd fast float %7181, %7182
  %7184 = call float @dx.op.unary.f32(i32 24, float %7183)  ; Sqrt(value)
  br label %7185

; <label>:7185                                    ; preds = %7177, %7175, %7165
  %7186 = phi float [ %7174, %7165 ], [ %7184, %7177 ], [ 0.000000e+00, %7175 ]
  %7187 = fsub fast float -0.000000e+00, %7186
  %7188 = select i1 %7129, float -0.000000e+00, float %7187
  %7189 = fmul fast float %3901, 0x3FF7154760000000
  %7190 = fmul fast float %7189, %7188
  %7191 = fmul fast float %3902, 0x3FF7154760000000
  %7192 = fmul fast float %7191, %7188
  %7193 = fmul fast float %3903, 0x3FF7154760000000
  %7194 = fmul fast float %7193, %7188
  %7195 = call float @dx.op.unary.f32(i32 21, float %7190)  ; Exp(value)
  %7196 = call float @dx.op.unary.f32(i32 21, float %7192)  ; Exp(value)
  %7197 = call float @dx.op.unary.f32(i32 21, float %7194)  ; Exp(value)
  %7198 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7199 = call float @dx.op.unary.f32(i32 7, float %7196)  ; Saturate(value)
  %7200 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7201 = fmul fast float %7125, %7198
  %7202 = fmul fast float %7126, %7199
  %7203 = fmul fast float %7127, %7200
  %7204 = fsub fast float %5669, %4729
  %7205 = fsub fast float %5670, %4730
  %7206 = fsub fast float %5671, %4731
  %7207 = call float @dx.op.dot3.f32(i32 55, float %7204, float %7205, float %7206, float %7204, float %7205, float %7206)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = call float @dx.op.unary.f32(i32 25, float %7207)  ; Rsqrt(value)
  %7209 = fmul fast float %7208, %7204
  %7210 = fmul fast float %7208, %7205
  %7211 = fmul fast float %7208, %7206
  %7212 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %7213 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4733, float %4734, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7214 = call float @dx.op.unary.f32(i32 7, float %7212)  ; Saturate(value)
  %7215 = bitcast i32 %4761 to float
  %7216 = fmul fast float %7214, %7214
  %7217 = fmul fast float %7216, %7215
  %7218 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7219 = fmul fast float %7218, %7214
  %7220 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %4691, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7221 = fmul fast float %7220, %7220
  %7222 = call float @dx.op.unary.f32(i32 6, float %7212)  ; FAbs(value)
  %7223 = fsub fast float 1.000000e+00, %4755
  %7224 = fmul fast float %4737, %4737
  %7225 = fmul fast float %7224, %7223
  %7226 = fadd fast float %7225, %4755
  %7227 = bitcast float %7226 to i32
  %7228 = ashr i32 %7227, 1
  %7229 = add nsw i32 %7228, 532487669
  %7230 = bitcast i32 %7229 to float
  %7231 = fadd fast float %7230, %4737
  %7232 = fmul fast float %4755, %7221
  %7233 = fsub fast float 1.000000e+00, %7221
  %7234 = fadd fast float %7233, %7232
  %7235 = fmul fast float %7222, %7222
  %7236 = fmul fast float %7235, %7223
  %7237 = fadd fast float %7236, %4755
  %7238 = bitcast float %7237 to i32
  %7239 = ashr i32 %7238, 1
  %7240 = add nsw i32 %7239, 532487669
  %7241 = bitcast i32 %7240 to float
  %7242 = fadd fast float %7241, %7222
  %7243 = fmul fast float %7234, %7234
  %7244 = fmul fast float %7243, %7231
  %7245 = fmul fast float %7244, %7242
  %7246 = fdiv fast float 1.000000e+00, %7245
  %7247 = fmul fast float %4755, %7246
  %7248 = fmul fast float %7247, 0x3FF0A00000000000
  %7249 = fsub fast float 1.000000e+00, %3540
  %7250 = call float @dx.op.binary.f32(i32 35, float %7249, float 0x3F847AE140000000)  ; FMax(a,b)
  %7251 = fmul fast float %7250, %7250
  %7252 = fmul fast float %7251, %7251
  %7253 = fsub fast float 1.000000e+00, %7252
  %7254 = fmul fast float %7224, %7253
  %7255 = fadd fast float %7254, %7252
  %7256 = bitcast float %7255 to i32
  %7257 = ashr i32 %7256, 1
  %7258 = add nsw i32 %7257, 532487669
  %7259 = bitcast i32 %7258 to float
  %7260 = fadd fast float %7259, %4737
  %7261 = fmul fast float %7252, %7221
  %7262 = fadd fast float %7233, %7261
  %7263 = fmul fast float %7235, %7253
  %7264 = fadd fast float %7263, %7252
  %7265 = bitcast float %7264 to i32
  %7266 = ashr i32 %7265, 1
  %7267 = add nsw i32 %7266, 532487669
  %7268 = bitcast i32 %7267 to float
  %7269 = fadd fast float %7268, %7222
  %7270 = fmul fast float %7262, %7262
  %7271 = fmul fast float %7270, %7260
  %7272 = fmul fast float %7271, %7269
  %7273 = fdiv fast float 1.000000e+00, %7272
  %7274 = fmul fast float %7252, %7273
  %7275 = fsub fast float %7274, %7247
  %7276 = fmul fast float %7275, 0x3FC3F33340000000
  %7277 = fadd fast float %7276, %7248
  %7278 = call float @dx.op.unary.f32(i32 6, float %7213)  ; FAbs(value)
  %7279 = fsub fast float 1.000000e+00, %7278
  %7280 = bitcast float %7279 to i32
  %7281 = sitofp i32 %7280 to float
  %7282 = fmul fast float %7281, 5.000000e+00
  %7283 = fadd fast float %7282, 0xC1EFBF8940000000
  %7284 = fptosi float %7283 to i32
  %7285 = bitcast i32 %7284 to float
  %7286 = fsub fast float 1.000000e+00, %4686
  %7287 = fsub fast float 1.000000e+00, %4687
  %7288 = fsub fast float 1.000000e+00, %4735
  %7289 = fmul fast float %7285, %7286
  %7290 = fmul fast float %7285, %7287
  %7291 = fmul fast float %7285, %7288
  %7292 = fadd fast float %7289, %4686
  %7293 = fadd fast float %7290, %4687
  %7294 = fadd fast float %7291, %4735
  %7295 = fmul fast float %7212, 9.843750e-01
  %7296 = fadd fast float %7295, 7.812500e-03
  %7297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %7296, float %5052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7298 = extractvalue %dx.types.ResRet.f32 %7297, 2
  %7299 = extractvalue %dx.types.ResRet.f32 %7297, 3
  %7300 = fmul fast float %7298, %4686
  %7301 = fmul fast float %7298, %4687
  %7302 = fmul fast float %7298, %4735
  %7303 = fadd fast float %7300, %7299
  %7304 = fadd fast float %7301, %7299
  %7305 = fadd fast float %7302, %7299
  %7306 = call float @dx.op.binary.f32(i32 35, float %7304, float %7305)  ; FMax(a,b)
  %7307 = call float @dx.op.binary.f32(i32 35, float %7303, float %7306)  ; FMax(a,b)
  %7308 = fsub fast float 1.000000e+00, %7307
  %7309 = fmul fast float %7219, %7201
  %7310 = fmul fast float %7309, %7308
  %7311 = fmul fast float %7219, %7202
  %7312 = fmul fast float %7311, %7308
  %7313 = fmul fast float %7219, %7203
  %7314 = fmul fast float %7313, %7308
  %7315 = fmul fast float %7309, %7277
  %7316 = fmul fast float %7315, %7292
  %7317 = fmul fast float %7311, %7277
  %7318 = fmul fast float %7317, %7293
  %7319 = fmul fast float %7313, %7277
  %7320 = fmul fast float %7319, %7294
  %7321 = fadd fast float %7310, %5603
  %7322 = fmul fast float %7321, %1251
  %7323 = fadd fast float %7312, %5605
  %7324 = fmul fast float %7323, %1251
  %7325 = fadd fast float %7314, %5607
  %7326 = fmul fast float %7325, %1251
  %7327 = fadd fast float %7316, %5657
  %7328 = fmul fast float %7327, %1251
  %7329 = fadd fast float %7318, %5660
  %7330 = fmul fast float %7329, %1251
  %7331 = fadd fast float %7320, %5663
  %7332 = fmul fast float %7331, %1251
  br label %7333

; <label>:7333                                    ; preds = %7185, %7119, %5553
  %7334 = phi float [ %5658, %5553 ], [ %5658, %7119 ], [ %7328, %7185 ]
  %7335 = phi float [ %5661, %5553 ], [ %5661, %7119 ], [ %7330, %7185 ]
  %7336 = phi float [ %5664, %5553 ], [ %5664, %7119 ], [ %7332, %7185 ]
  %7337 = phi float [ %5653, %5553 ], [ %5653, %7119 ], [ %7322, %7185 ]
  %7338 = phi float [ %5654, %5553 ], [ %5654, %7119 ], [ %7324, %7185 ]
  %7339 = phi float [ %5655, %5553 ], [ %5655, %7119 ], [ %7326, %7185 ]
  %7340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.i32 %7340, 0
  %7342 = icmp eq i32 %7341, 0
  br i1 %7342, label %7978, label %7343

; <label>:7343                                    ; preds = %7333
  %7344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7344, 2
  %7346 = extractvalue %dx.types.CBufRet.f32 %7344, 3
  %7347 = fmul fast float %7345, %118
  %7348 = fmul fast float %7346, %119
  %7349 = fptoui float %7347 to i32
  %7350 = fptoui float %7348 to i32
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7355 = fadd fast float %105, -4.000000e+00
  %7356 = call float @dx.op.binary.f32(i32 35, float %7355, float 0.000000e+00)  ; FMax(a,b)
  %7357 = fadd fast float %7356, %7352
  %7358 = fmul fast float %7357, %7353
  %7359 = call float @dx.op.unary.f32(i32 23, float %7358)  ; Log(value)
  %7360 = fmul fast float %7359, %7354
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 2
  %7363 = fmul fast float %7360, %7362
  %7364 = call float @dx.op.unary.f32(i32 7, float %7363)  ; Saturate(value)
  %7365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.i32 %7365, 1
  %7367 = add i32 %7366, -1
  %7368 = uitofp i32 %7366 to float
  %7369 = fmul fast float %7368, %7364
  %7370 = fptoui float %7369 to i32
  %7371 = call i32 @dx.op.binary.i32(i32 40, i32 %7370, i32 %7367)  ; UMin(a,b)
  %7372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.i32 %7372, 2
  %7374 = extractvalue %dx.types.CBufRet.i32 %7372, 3
  %7375 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7350, i32 %7373, i32 %7349)  ; UMad(a,b,c)
  %7376 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7371, i32 %7374, i32 %7375)  ; UMad(a,b,c)
  %7377 = add nsw i32 %7341, -1
  %7378 = call i32 @dx.op.binary.i32(i32 37, i32 %7377, i32 0)  ; IMax(a,b)
  %7379 = call float @dx.op.binary.f32(i32 35, float %105, float 0.000000e+00)  ; FMax(a,b)
  %7380 = fptoui float %7379 to i32
  %7381 = lshr i32 %7380, 5
  %7382 = call i32 @dx.op.binary.i32(i32 40, i32 %7381, i32 8191)  ; UMin(a,b)
  %7383 = shl i32 %7382, 2
  %7384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7383, i32 undef)  ; BufferLoad(srv,index,wot)
  %7385 = extractvalue %dx.types.ResRet.i32 %7384, 0
  %7386 = lshr i32 %7385, 16
  %7387 = and i32 %7385, 65535
  %7388 = lshr i32 %7385, 21
  %7389 = lshr i32 %7387, 5
  %7390 = call i32 @dx.op.binary.i32(i32 40, i32 %7389, i32 %7378)  ; UMin(a,b)
  %7391 = icmp ugt i32 %7388, %7390
  br i1 %7391, label %7978, label %7392

; <label>:7392                                    ; preds = %7343
  br label %7393

; <label>:7393                                    ; preds = %7968, %7392
  %7394 = phi i32 [ %7975, %7968 ], [ %7388, %7392 ]
  %7395 = phi float [ %7969, %7968 ], [ %7334, %7392 ]
  %7396 = phi float [ %7970, %7968 ], [ %7335, %7392 ]
  %7397 = phi float [ %7971, %7968 ], [ %7336, %7392 ]
  %7398 = phi float [ %7972, %7968 ], [ %7337, %7392 ]
  %7399 = phi float [ %7973, %7968 ], [ %7338, %7392 ]
  %7400 = phi float [ %7974, %7968 ], [ %7339, %7392 ]
  %7401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.i32 %7401, 0
  %7403 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7376, i32 %7402, i32 %7394)  ; UMad(a,b,c)
  %7404 = shl i32 %7403, 2
  %7405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7404, i32 undef)  ; BufferLoad(srv,index,wot)
  %7406 = extractvalue %dx.types.ResRet.i32 %7405, 0
  %7407 = shl i32 %7394, 5
  %7408 = sub nsw i32 %7386, %7407
  %7409 = call i32 @dx.op.binary.i32(i32 37, i32 %7408, i32 0)  ; IMax(a,b)
  %7410 = call i32 @dx.op.binary.i32(i32 38, i32 %7409, i32 31)  ; IMin(a,b)
  %7411 = sub nsw i32 1, %7386
  %7412 = add nsw i32 %7411, %7387
  %7413 = call i32 @dx.op.binary.i32(i32 37, i32 %7412, i32 0)  ; IMax(a,b)
  %7414 = call i32 @dx.op.binary.i32(i32 38, i32 %7413, i32 32)  ; IMin(a,b)
  %7415 = and i32 %7414, 31
  %7416 = shl i32 -1, %7415
  %7417 = xor i32 %7416, -1
  %7418 = and i32 %7410, 31
  %7419 = shl i32 %7417, %7418
  %7420 = icmp eq i32 %7414, 32
  %7421 = select i1 %7420, i32 -1, i32 %7419
  %7422 = and i32 %7421, %7406
  %7423 = icmp eq i32 %7422, 0
  br i1 %7423, label %7968, label %7424

; <label>:7424                                    ; preds = %7393
  br label %7425

; <label>:7425                                    ; preds = %7559, %7424
  %7426 = phi i32 [ %7437, %7559 ], [ %7422, %7424 ]
  %7427 = phi float [ %7560, %7559 ], [ %7395, %7424 ]
  %7428 = phi float [ %7561, %7559 ], [ %7396, %7424 ]
  %7429 = phi float [ %7562, %7559 ], [ %7397, %7424 ]
  %7430 = phi float [ %7563, %7559 ], [ %7398, %7424 ]
  %7431 = phi float [ %7564, %7559 ], [ %7399, %7424 ]
  %7432 = phi float [ %7565, %7559 ], [ %7400, %7424 ]
  %7433 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7426)  ; FirstbitLo(value)
  %7434 = add i32 %7433, %7407
  %7435 = and i32 %7433, 31
  %7436 = shl i32 1, %7435
  %7437 = xor i32 %7436, %7426
  %7438 = mul i32 %7434, 112
  %7439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7438, i32 undef)  ; BufferLoad(srv,index,wot)
  %7440 = extractvalue %dx.types.ResRet.f32 %7439, 0
  %7441 = extractvalue %dx.types.ResRet.f32 %7439, 1
  %7442 = extractvalue %dx.types.ResRet.f32 %7439, 2
  %7443 = or i32 %7438, 12
  %7444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7443, i32 undef)  ; BufferLoad(srv,index,wot)
  %7445 = extractvalue %dx.types.ResRet.f32 %7444, 0
  %7446 = add i32 %7438, 16
  %7447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7446, i32 undef)  ; BufferLoad(srv,index,wot)
  %7448 = extractvalue %dx.types.ResRet.f32 %7447, 0
  %7449 = extractvalue %dx.types.ResRet.f32 %7447, 1
  %7450 = extractvalue %dx.types.ResRet.f32 %7447, 2
  %7451 = add i32 %7438, 28
  %7452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7451, i32 undef)  ; BufferLoad(srv,index,wot)
  %7453 = extractvalue %dx.types.ResRet.i32 %7452, 0
  %7454 = add i32 %7438, 44
  %7455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7454, i32 undef)  ; BufferLoad(srv,index,wot)
  %7456 = extractvalue %dx.types.ResRet.f32 %7455, 0
  %7457 = add i32 %7438, 48
  %7458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7457, i32 undef)  ; BufferLoad(srv,index,wot)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7463 = add i32 %7438, 64
  %7464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7463, i32 undef)  ; BufferLoad(srv,index,wot)
  %7465 = extractvalue %dx.types.ResRet.f32 %7464, 0
  %7466 = extractvalue %dx.types.ResRet.f32 %7464, 1
  %7467 = extractvalue %dx.types.ResRet.f32 %7464, 2
  %7468 = extractvalue %dx.types.ResRet.f32 %7464, 3
  %7469 = add i32 %7438, 80
  %7470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7469, i32 undef)  ; BufferLoad(srv,index,wot)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 2
  %7473 = add i32 %7438, 92
  %7474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7473, i32 undef)  ; BufferLoad(srv,index,wot)
  %7475 = extractvalue %dx.types.ResRet.i32 %7474, 0
  %7476 = call float @dx.op.dot3.f32(i32 55, float %7440, float %7441, float %7442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7477 = select i1 %260, float %7471, float %7440
  %7478 = select i1 %260, float %7476, float %7441
  %7479 = select i1 %260, float %7472, float %7442
  %7480 = and i32 %7475, 65535
  %7481 = uitofp i32 %7480 to float
  %7482 = lshr i32 %7475, 16
  %7483 = uitofp i32 %7482 to float
  %7484 = and i32 %7453, 65535
  %7485 = and i32 %7453, 50331648
  %7486 = icmp eq i32 %7485, 33554432
  %7487 = fsub fast float %7459, %201
  %7488 = fsub fast float %7460, %202
  %7489 = fsub fast float %7461, %203
  %7490 = call float @dx.op.dot3.f32(i32 55, float %7487, float %7488, float %7489, float %7487, float %7488, float %7489)  ; Dot3(ax,ay,az,bx,by,bz)
  %7491 = call float @dx.op.unary.f32(i32 24, float %7490)  ; Sqrt(value)
  %7492 = fdiv fast float 1.000000e+00, %7491
  %7493 = fmul fast float %7492, %7487
  %7494 = fmul fast float %7492, %7488
  %7495 = fmul fast float %7492, %7489
  %7496 = fadd fast float %7491, %7445
  %7497 = fdiv fast float 1.000000e+00, %7496
  %7498 = fmul float %7456, %7497
  %7499 = fmul float %7498, %7498
  %7500 = call float @dx.op.unary.f32(i32 7, float %7499)  ; Saturate(value)
  br i1 %7486, label %7501, label %7522

; <label>:7501                                    ; preds = %7425
  %7502 = fmul fast float %7467, %7448
  %7503 = fmul fast float %7467, %7449
  %7504 = fmul fast float %7467, %7450
  %7505 = fadd fast float %7487, %7502
  %7506 = fadd fast float %7488, %7503
  %7507 = fadd fast float %7489, %7504
  %7508 = call float @dx.op.dot3.f32(i32 55, float %7505, float %7506, float %7507, float %7505, float %7506, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = call float @dx.op.unary.f32(i32 25, float %7508)  ; Rsqrt(value)
  %7510 = fmul fast float %7509, %7505
  %7511 = fmul fast float %7509, %7506
  %7512 = fmul fast float %7509, %7507
  %7513 = fsub fast float %201, %7459
  %7514 = fsub fast float %202, %7460
  %7515 = fsub fast float %203, %7461
  %7516 = fsub fast float -0.000000e+00, %7513
  %7517 = fsub fast float -0.000000e+00, %7514
  %7518 = fsub fast float -0.000000e+00, %7515
  %7519 = call float @dx.op.dot3.f32(i32 55, float %7516, float %7517, float %7518, float %7448, float %7449, float %7450)  ; Dot3(ax,ay,az,bx,by,bz)
  %7520 = fcmp fast ogt float %7519, 0.000000e+00
  %7521 = uitofp i1 %7520 to float
  br label %7522

; <label>:7522                                    ; preds = %7501, %7425
  %7523 = phi float [ %7521, %7501 ], [ 1.000000e+00, %7425 ]
  %7524 = phi float [ %7510, %7501 ], [ %7493, %7425 ]
  %7525 = phi float [ %7511, %7501 ], [ %7494, %7425 ]
  %7526 = phi float [ %7512, %7501 ], [ %7495, %7425 ]
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7448, float %7449, float %7450, float %7524, float %7525, float %7526)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = fmul fast float %7527, %7527
  %7529 = call float @dx.op.unary.f32(i32 7, float %7528)  ; Saturate(value)
  %7530 = fsub fast float 1.000000e+00, %7529
  %7531 = fmul fast float %7530, 5.000000e-01
  %7532 = fcmp fast ogt float %7527, 0.000000e+00
  %7533 = fsub fast float 1.000000e+00, %7531
  %7534 = select i1 %7532, float %7531, float %7533
  %7535 = fmul fast float %7534, %7483
  %7536 = fadd fast float %7535, %7481
  %7537 = fmul fast float %7536, 0x3EF0001000000000
  %7538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %50, float %7537, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7539 = extractvalue %dx.types.ResRet.f32 %7538, 0
  %7540 = fmul fast float %7527, %7465
  %7541 = fadd fast float %7540, %7466
  %7542 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7543 = select i1 %7486, float 1.000000e+00, float %7542
  %7544 = select i1 %7486, float %7542, float 1.000000e+00
  %7545 = fmul fast float %7491, %7462
  %7546 = fsub fast float 1.000000e+00, %7545
  %7547 = fmul fast float %7546, %7468
  %7548 = call float @dx.op.unary.f32(i32 7, float %7547)  ; Saturate(value)
  %7549 = fmul fast float %7548, %7544
  %7550 = fmul fast float %7549, 2.000000e+00
  %7551 = fsub fast float 3.000000e+00, %7550
  %7552 = fmul fast float %7539, %7523
  %7553 = fmul fast float %7549, %7549
  %7554 = fmul fast float %7553, %7552
  %7555 = fmul fast float %7554, %7551
  %7556 = call float @dx.op.binary.f32(i32 36, float %7555, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7555, float %7556)  ; FMin(a,b)
  %7558 = fcmp fast ogt float %7557, 0.000000e+00
  br i1 %7558, label %7567, label %7559, !dx.controlflow.hints !132

; <label>:7559                                    ; preds = %7780, %7713, %7522
  %7560 = phi float [ %7427, %7713 ], [ %7427, %7522 ], [ %7964, %7780 ]
  %7561 = phi float [ %7428, %7713 ], [ %7428, %7522 ], [ %7965, %7780 ]
  %7562 = phi float [ %7429, %7713 ], [ %7429, %7522 ], [ %7966, %7780 ]
  %7563 = phi float [ %7430, %7713 ], [ %7430, %7522 ], [ %7955, %7780 ]
  %7564 = phi float [ %7431, %7713 ], [ %7431, %7522 ], [ %7956, %7780 ]
  %7565 = phi float [ %7432, %7713 ], [ %7432, %7522 ], [ %7957, %7780 ]
  %7566 = icmp eq i32 %7426, %7436
  br i1 %7566, label %7967, label %7425

; <label>:7567                                    ; preds = %7522
  %7568 = icmp eq i32 %7484, 255
  br i1 %7568, label %7713, label %7569, !dx.controlflow.hints !133

; <label>:7569                                    ; preds = %7567
  %7570 = mul nuw nsw i32 %7484, 176
  %7571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7570, i32 undef)  ; BufferLoad(srv,index,wot)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.ResRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.ResRet.f32 %7571, 2
  %7575 = extractvalue %dx.types.ResRet.f32 %7571, 3
  %7576 = add nuw nsw i32 %7570, 16
  %7577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7576, i32 undef)  ; BufferLoad(srv,index,wot)
  %7578 = extractvalue %dx.types.ResRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.ResRet.f32 %7577, 1
  %7580 = add nuw nsw i32 %7570, 32
  %7581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7580, i32 undef)  ; BufferLoad(srv,index,wot)
  %7582 = extractvalue %dx.types.ResRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.ResRet.f32 %7581, 1
  %7584 = extractvalue %dx.types.ResRet.f32 %7581, 2
  %7585 = add nuw nsw i32 %7570, 48
  %7586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7585, i32 undef)  ; BufferLoad(srv,index,wot)
  %7587 = extractvalue %dx.types.ResRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.ResRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.ResRet.f32 %7586, 2
  %7590 = extractvalue %dx.types.ResRet.f32 %7586, 3
  %7591 = add nuw nsw i32 %7570, 64
  %7592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7591, i32 undef)  ; BufferLoad(srv,index,wot)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.ResRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.ResRet.f32 %7592, 2
  %7596 = extractvalue %dx.types.ResRet.f32 %7592, 3
  %7597 = add nuw nsw i32 %7570, 80
  %7598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7597, i32 undef)  ; BufferLoad(srv,index,wot)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.ResRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.ResRet.f32 %7598, 2
  %7602 = extractvalue %dx.types.ResRet.f32 %7598, 3
  %7603 = add nuw nsw i32 %7570, 96
  %7604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7603, i32 undef)  ; BufferLoad(srv,index,wot)
  %7605 = extractvalue %dx.types.ResRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.ResRet.f32 %7604, 1
  %7607 = extractvalue %dx.types.ResRet.f32 %7604, 2
  %7608 = extractvalue %dx.types.ResRet.f32 %7604, 3
  %7609 = bitcast float %7579 to i32
  %7610 = fmul fast float %7584, %127
  %7611 = fmul fast float %7584, %129
  %7612 = fmul fast float %7584, %131
  %7613 = fadd fast float %7610, %201
  %7614 = fadd fast float %7611, %202
  %7615 = fadd fast float %7612, %203
  %7616 = fmul fast float %7613, %7587
  %7617 = call float @dx.op.tertiary.f32(i32 46, float %7614, float %7593, float %7616)  ; FMad(a,b,c)
  %7618 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7599, float %7617)  ; FMad(a,b,c)
  %7619 = fadd fast float %7618, %7605
  %7620 = fmul fast float %7613, %7588
  %7621 = call float @dx.op.tertiary.f32(i32 46, float %7614, float %7594, float %7620)  ; FMad(a,b,c)
  %7622 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7600, float %7621)  ; FMad(a,b,c)
  %7623 = fadd fast float %7622, %7606
  %7624 = fmul fast float %7613, %7589
  %7625 = call float @dx.op.tertiary.f32(i32 46, float %7614, float %7595, float %7624)  ; FMad(a,b,c)
  %7626 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7601, float %7625)  ; FMad(a,b,c)
  %7627 = fadd fast float %7626, %7607
  %7628 = fmul fast float %7613, %7590
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7614, float %7596, float %7628)  ; FMad(a,b,c)
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %7615, float %7602, float %7629)  ; FMad(a,b,c)
  %7631 = fadd fast float %7630, %7608
  %7632 = fdiv fast float %7619, %7631
  %7633 = fdiv fast float %7623, %7631
  %7634 = fdiv fast float %7627, %7631
  %7635 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7634)  ; FMax(a,b)
  %7636 = fmul fast float %271, 0x401921FB60000000
  %7637 = call float @dx.op.unary.f32(i32 13, float %7636)  ; Sin(value)
  %7638 = call float @dx.op.unary.f32(i32 12, float %7636)  ; Cos(value)
  %7639 = fmul fast float %7638, %7583
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %7637, float %7583, float 0.000000e+00)  ; FMad(a,b,c)
  %7641 = fmul fast float %7583, %7637
  %7642 = fsub fast float -0.000000e+00, %7641
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7638, float %7583, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7644

; <label>:7644                                    ; preds = %7644, %7569
  %7645 = phi float [ 0.000000e+00, %7569 ], [ %7677, %7644 ]
  %7646 = phi float [ 0.000000e+00, %7569 ], [ %7679, %7644 ]
  %7647 = phi i32 [ 0, %7569 ], [ %7680, %7644 ]
  %7648 = mul i32 %7647, 2
  %7649 = add i32 0, %7648
  %7650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7649
  %7651 = load float, float* %7650, align 4
  %7652 = mul i32 %7647, 2
  %7653 = add i32 1, %7652
  %7654 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7653
  %7655 = load float, float* %7654, align 4
  %7656 = fmul fast float %7639, %7651
  %7657 = call float @dx.op.tertiary.f32(i32 46, float %7655, float %7642, float %7656)  ; FMad(a,b,c)
  %7658 = fmul fast float %7651, %7640
  %7659 = call float @dx.op.tertiary.f32(i32 46, float %7655, float %7643, float %7658)  ; FMad(a,b,c)
  %7660 = fadd fast float %7657, %7632
  %7661 = fadd fast float %7659, %7633
  %7662 = fmul fast float %7660, %7578
  %7663 = fmul fast float %7661, %7578
  %7664 = call float @dx.op.binary.f32(i32 35, float %7662, float %7574)  ; FMax(a,b)
  %7665 = call float @dx.op.binary.f32(i32 35, float %7663, float %7574)  ; FMax(a,b)
  %7666 = call float @dx.op.binary.f32(i32 36, float %7664, float %7575)  ; FMin(a,b)
  %7667 = call float @dx.op.binary.f32(i32 36, float %7665, float %7575)  ; FMin(a,b)
  %7668 = fadd fast float %7666, %7572
  %7669 = fadd fast float %7667, %7573
  %7670 = uitofp i32 %7609 to float
  %7671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %51, float %7668, float %7669, float %7670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7672 = extractvalue %dx.types.ResRet.f32 %7671, 0
  %7673 = fsub fast float %7672, %7635
  %7674 = fsub fast float %7673, %7582
  %7675 = fcmp fast ogt float %7674, 0.000000e+00
  %7676 = select i1 %7675, float 1.000000e+00, float 0.000000e+00
  %7677 = fadd fast float %7676, %7645
  %7678 = select i1 %7675, float %7674, float 0.000000e+00
  %7679 = fadd fast float %7678, %7646
  %7680 = add nuw nsw i32 %7647, 1
  %7681 = icmp eq i32 %7680, 8
  br i1 %7681, label %7682, label %7644

; <label>:7682                                    ; preds = %7644
  %7683 = fdiv fast float 1.000000e+00, %7677
  %7684 = fmul fast float %7683, %7679
  %7685 = fdiv fast float 1.000000e+00, %7635
  %7686 = fmul fast float %7684, %7685
  %7687 = call float @dx.op.unary.f32(i32 7, float %7686)  ; Saturate(value)
  %7688 = call float @dx.op.binary.f32(i32 35, float %7687, float 0.000000e+00)  ; FMax(a,b)
  %7689 = fmul fast float %7677, 1.250000e-01
  %7690 = call float @dx.op.unary.f32(i32 7, float %7689)  ; Saturate(value)
  %7691 = fmul fast float %7690, 2.000000e+00
  %7692 = fadd fast float %7691, -1.000000e+00
  %7693 = fcmp fast ogt float %7692, 0.000000e+00
  %7694 = fcmp fast olt float %7692, 0.000000e+00
  %7695 = zext i1 %7693 to i32
  %7696 = zext i1 %7694 to i32
  %7697 = sub nsw i32 %7695, %7696
  %7698 = sitofp i32 %7697 to float
  %7699 = fmul fast float %7698, %7692
  %7700 = fsub fast float 1.000000e+00, %7699
  %7701 = fmul fast float %7700, %7700
  %7702 = fmul fast float %7701, %7700
  %7703 = fsub fast float %7700, %7702
  %7704 = fmul fast float %7703, %7688
  %7705 = fsub fast float 1.000000e+00, %7702
  %7706 = fsub fast float %7705, %7704
  %7707 = fmul fast float %7698, 5.000000e-01
  %7708 = fmul fast float %7707, %7706
  %7709 = fsub fast float -5.000000e-01, %7708
  %7710 = fmul fast float %7709, %7543
  %7711 = fadd fast float %7710, 1.000000e+00
  %7712 = fmul fast float %7711, %7555
  br label %7713

; <label>:7713                                    ; preds = %7682, %7567
  %7714 = phi float [ %7712, %7682 ], [ %7555, %7567 ]
  %7715 = call float @dx.op.binary.f32(i32 36, float %7714, float %7714)  ; FMin(a,b)
  %7716 = call float @dx.op.binary.f32(i32 36, float %7714, float %7715)  ; FMin(a,b)
  %7717 = fcmp fast ogt float %7716, 0.000000e+00
  br i1 %7717, label %7718, label %7559, !dx.controlflow.hints !134

; <label>:7718                                    ; preds = %7713
  %7719 = fmul fast float %7714, %7477
  %7720 = fmul fast float %7714, %7478
  %7721 = fmul fast float %7714, %7479
  %7722 = fsub fast float %7461, %3904
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  %7724 = fsub fast float %203, %3904
  %7725 = fcmp fast ogt float %7724, 0.000000e+00
  %7726 = xor i1 %7725, %7723
  %7727 = fsub fast float %3904, %7461
  %7728 = fmul fast float %7727, 2.000000e+00
  %7729 = fadd fast float %7728, %7461
  %7730 = select i1 %7726, float %7461, float %7729
  %7731 = fsub fast float %7730, %203
  %7732 = call float @dx.op.dot3.f32(i32 55, float %7487, float %7488, float %7731, float %7487, float %7488, float %7731)  ; Dot3(ax,ay,az,bx,by,bz)
  %7733 = call float @dx.op.unary.f32(i32 25, float %7732)  ; Rsqrt(value)
  %7734 = fmul fast float %7733, %7487
  %7735 = fmul fast float %7733, %7488
  %7736 = fmul fast float %7733, %7731
  %7737 = fsub fast float %3904, %203
  %7738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7737)  ; Dot3(ax,ay,az,bx,by,bz)
  %7739 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7734, float %7735, float %7736)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = fdiv fast float 1.000000e+00, %7739
  %7741 = fmul fast float %7740, %7738
  %7742 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7724, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7743 = fcmp fast ogt float %7742, 0.000000e+00
  %7744 = fcmp fast olt float %7742, 0.000000e+00
  %7745 = zext i1 %7743 to i32
  %7746 = zext i1 %7744 to i32
  %7747 = sub nsw i32 %7745, %7746
  %7748 = sitofp i32 %7747 to float
  %7749 = fsub fast float %7730, %3904
  %7750 = call float @dx.op.dot3.f32(i32 55, float %7487, float %7488, float %7749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7751 = fcmp fast ogt float %7750, 0.000000e+00
  %7752 = fcmp fast olt float %7750, 0.000000e+00
  %7753 = zext i1 %7751 to i32
  %7754 = zext i1 %7752 to i32
  %7755 = sub nsw i32 %7753, %7754
  %7756 = sitofp i32 %7755 to float
  %7757 = fcmp fast une float %7748, %7756
  br i1 %7757, label %7758, label %7768

; <label>:7758                                    ; preds = %7718
  %7759 = fmul fast float %7741, %7736
  %7760 = fmul fast float %7741, %7735
  %7761 = fmul fast float %7741, %7734
  %7762 = fmul fast float %7761, %7761
  %7763 = fmul fast float %7760, %7760
  %7764 = fadd fast float %7762, %7763
  %7765 = fmul fast float %7759, %7759
  %7766 = fadd fast float %7764, %7765
  %7767 = call float @dx.op.unary.f32(i32 24, float %7766)  ; Sqrt(value)
  br label %7780

; <label>:7768                                    ; preds = %7718
  %7769 = icmp slt i32 %7747, 0
  br i1 %7769, label %7770, label %7780

; <label>:7770                                    ; preds = %7768
  %7771 = fsub fast float %201, %7459
  %7772 = fsub fast float %202, %7460
  %7773 = fsub fast float %203, %7730
  %7774 = fmul fast float %7771, %7771
  %7775 = fmul fast float %7772, %7772
  %7776 = fadd fast float %7774, %7775
  %7777 = fmul fast float %7773, %7773
  %7778 = fadd fast float %7776, %7777
  %7779 = call float @dx.op.unary.f32(i32 24, float %7778)  ; Sqrt(value)
  br label %7780

; <label>:7780                                    ; preds = %7770, %7768, %7758
  %7781 = phi float [ %7767, %7758 ], [ %7779, %7770 ], [ 0.000000e+00, %7768 ]
  %7782 = and i1 %7725, %7723
  %7783 = fsub fast float -0.000000e+00, %7781
  %7784 = select i1 %7782, float -0.000000e+00, float %7783
  %7785 = fmul fast float %3901, 0x3FF7154760000000
  %7786 = fmul fast float %7785, %7784
  %7787 = fmul fast float %3902, 0x3FF7154760000000
  %7788 = fmul fast float %7787, %7784
  %7789 = fmul fast float %3903, 0x3FF7154760000000
  %7790 = fmul fast float %7789, %7784
  %7791 = call float @dx.op.unary.f32(i32 21, float %7786)  ; Exp(value)
  %7792 = call float @dx.op.unary.f32(i32 21, float %7788)  ; Exp(value)
  %7793 = call float @dx.op.unary.f32(i32 21, float %7790)  ; Exp(value)
  %7794 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7795 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  %7796 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7797 = fmul fast float %7719, %7794
  %7798 = fmul fast float %7720, %7795
  %7799 = fmul fast float %7721, %7796
  %7800 = fsub fast float %7493, %4729
  %7801 = fsub fast float %7494, %4730
  %7802 = fsub fast float %7495, %4731
  %7803 = call float @dx.op.dot3.f32(i32 55, float %7800, float %7801, float %7802, float %7800, float %7801, float %7802)  ; Dot3(ax,ay,az,bx,by,bz)
  %7804 = call float @dx.op.unary.f32(i32 25, float %7803)  ; Rsqrt(value)
  %7805 = fmul fast float %7804, %7800
  %7806 = fmul fast float %7804, %7801
  %7807 = fmul fast float %7804, %7802
  %7808 = call float @dx.op.dot3.f32(i32 55, float %7493, float %7494, float %7495, float %4689, float %4690, float %4691)  ; Dot3(ax,ay,az,bx,by,bz)
  %7809 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4733, float %4734, float %7805, float %7806, float %7807)  ; Dot3(ax,ay,az,bx,by,bz)
  %7810 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7811 = fmul fast float %7810, %7500
  %7812 = bitcast i32 %4761 to float
  %7813 = fmul fast float %7810, %7810
  %7814 = fmul fast float %7813, %7812
  %7815 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7816 = fmul fast float %7811, %7815
  %7817 = bitcast float %7490 to i32
  %7818 = ashr i32 %7817, 1
  %7819 = sub nsw i32 1597463007, %7818
  %7820 = bitcast i32 %7819 to float
  %7821 = fmul fast float %7820, %7487
  %7822 = fmul fast float %7820, %7488
  %7823 = fmul fast float %7820, %7489
  %7824 = fmul fast float %7820, %7456
  %7825 = fsub fast float %7821, %4729
  %7826 = fsub fast float %7822, %4730
  %7827 = fsub fast float %7823, %4731
  %7828 = call float @dx.op.dot3.f32(i32 55, float %7825, float %7826, float %7827, float %7825, float %7826, float %7827)  ; Dot3(ax,ay,az,bx,by,bz)
  %7829 = call float @dx.op.unary.f32(i32 25, float %7828)  ; Rsqrt(value)
  %7830 = fmul fast float %7825, %7829
  %7831 = fmul fast float %7826, %7829
  %7832 = fmul fast float %7827, %7829
  %7833 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %4691, float %7830, float %7831, float %7832)  ; Dot3(ax,ay,az,bx,by,bz)
  %7834 = fmul fast float %7833, %7833
  %7835 = call float @dx.op.unary.f32(i32 6, float %7808)  ; FAbs(value)
  %7836 = fsub fast float 1.000000e+00, %4755
  %7837 = fmul fast float %4737, %4737
  %7838 = fmul fast float %7837, %7836
  %7839 = fadd fast float %7838, %4755
  %7840 = bitcast float %7839 to i32
  %7841 = ashr i32 %7840, 1
  %7842 = add nsw i32 %7841, 532487669
  %7843 = bitcast i32 %7842 to float
  %7844 = fadd fast float %7843, %4737
  %7845 = fmul fast float %4755, %7834
  %7846 = fsub fast float 1.000000e+00, %7834
  %7847 = fadd fast float %7846, %7845
  %7848 = fmul fast float %7835, %7835
  %7849 = fmul fast float %7848, %7836
  %7850 = fadd fast float %7849, %4755
  %7851 = bitcast float %7850 to i32
  %7852 = ashr i32 %7851, 1
  %7853 = add nsw i32 %7852, 532487669
  %7854 = bitcast i32 %7853 to float
  %7855 = fadd fast float %7854, %7835
  %7856 = fmul fast float %7847, %7847
  %7857 = fmul fast float %7856, %7844
  %7858 = fmul fast float %7857, %7855
  %7859 = fdiv fast float 1.000000e+00, %7858
  %7860 = bitcast float %4755 to i32
  %7861 = sitofp i32 %7860 to float
  %7862 = fmul fast float %7861, 0x3FE7F73180000000
  %7863 = fadd fast float %7862, 0x41AFE27C40000000
  %7864 = fptosi float %7863 to i32
  %7865 = bitcast i32 %7864 to float
  %7866 = fmul fast float %7824, 0x3FD80E9D60000000
  %7867 = fadd fast float %7865, %7866
  %7868 = bitcast float %7867 to i32
  %7869 = sub nsw i32 2129859010, %7868
  %7870 = bitcast i32 %7869 to float
  %7871 = fmul fast float %4755, %7859
  %7872 = fmul fast float %7871, %7865
  %7873 = fmul fast float %7872, %7870
  %7874 = fsub fast float 1.000000e+00, %3540
  %7875 = call float @dx.op.binary.f32(i32 35, float %7874, float 0x3F847AE140000000)  ; FMax(a,b)
  %7876 = fmul fast float %7875, %7875
  %7877 = fmul fast float %7876, %7876
  %7878 = fsub fast float 1.000000e+00, %7877
  %7879 = fmul fast float %7837, %7878
  %7880 = fadd fast float %7879, %7877
  %7881 = bitcast float %7880 to i32
  %7882 = ashr i32 %7881, 1
  %7883 = add nsw i32 %7882, 532487669
  %7884 = bitcast i32 %7883 to float
  %7885 = fadd fast float %7884, %4737
  %7886 = fmul fast float %7877, %7834
  %7887 = fadd fast float %7846, %7886
  %7888 = fmul fast float %7848, %7878
  %7889 = fadd fast float %7888, %7877
  %7890 = bitcast float %7889 to i32
  %7891 = ashr i32 %7890, 1
  %7892 = add nsw i32 %7891, 532487669
  %7893 = bitcast i32 %7892 to float
  %7894 = fadd fast float %7893, %7835
  %7895 = fmul fast float %7887, %7887
  %7896 = fmul fast float %7895, %7885
  %7897 = fmul fast float %7896, %7894
  %7898 = fdiv fast float 1.000000e+00, %7897
  %7899 = bitcast float %7877 to i32
  %7900 = sitofp i32 %7899 to float
  %7901 = fmul fast float %7900, 0x3FE7F73180000000
  %7902 = fadd fast float %7901, 0x41AFE27C40000000
  %7903 = fptosi float %7902 to i32
  %7904 = bitcast i32 %7903 to float
  %7905 = fadd fast float %7904, %7866
  %7906 = bitcast float %7905 to i32
  %7907 = sub nsw i32 2129859010, %7906
  %7908 = bitcast i32 %7907 to float
  %7909 = fmul fast float %7877, %7898
  %7910 = fmul fast float %7909, %7904
  %7911 = fmul fast float %7910, %7908
  %7912 = fsub fast float %7911, %7873
  %7913 = fmul fast float %7912, 0x3FC3333340000000
  %7914 = fadd fast float %7913, %7873
  %7915 = call float @dx.op.unary.f32(i32 6, float %7809)  ; FAbs(value)
  %7916 = fsub fast float 1.000000e+00, %7915
  %7917 = bitcast float %7916 to i32
  %7918 = sitofp i32 %7917 to float
  %7919 = fmul fast float %7918, 5.000000e+00
  %7920 = fadd fast float %7919, 0xC1EFBF8940000000
  %7921 = fptosi float %7920 to i32
  %7922 = bitcast i32 %7921 to float
  %7923 = fsub fast float 1.000000e+00, %4686
  %7924 = fsub fast float 1.000000e+00, %4687
  %7925 = fsub fast float 1.000000e+00, %4735
  %7926 = fmul fast float %7922, %7923
  %7927 = fmul fast float %7922, %7924
  %7928 = fmul fast float %7922, %7925
  %7929 = fadd fast float %7926, %4686
  %7930 = fadd fast float %7927, %4687
  %7931 = fadd fast float %7928, %4735
  %7932 = fmul fast float %7808, 9.843750e-01
  %7933 = fadd fast float %7932, 7.812500e-03
  %7934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %50, float %7933, float %5052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7935 = extractvalue %dx.types.ResRet.f32 %7934, 2
  %7936 = extractvalue %dx.types.ResRet.f32 %7934, 3
  %7937 = fmul fast float %7935, %4686
  %7938 = fmul fast float %7935, %4687
  %7939 = fmul fast float %7935, %4735
  %7940 = fadd fast float %7937, %7936
  %7941 = fadd fast float %7938, %7936
  %7942 = fadd fast float %7939, %7936
  %7943 = call float @dx.op.binary.f32(i32 35, float %7941, float %7942)  ; FMax(a,b)
  %7944 = call float @dx.op.binary.f32(i32 35, float %7940, float %7943)  ; FMax(a,b)
  %7945 = fsub fast float 1.000000e+00, %7944
  %7946 = fmul fast float %7797, %1251
  %7947 = fmul fast float %7946, %7816
  %7948 = fmul fast float %7947, %7945
  %7949 = fmul fast float %7798, %1251
  %7950 = fmul fast float %7949, %7816
  %7951 = fmul fast float %7950, %7945
  %7952 = fmul fast float %7799, %1251
  %7953 = fmul fast float %7952, %7816
  %7954 = fmul fast float %7953, %7945
  %7955 = fadd fast float %7948, %7430
  %7956 = fadd fast float %7951, %7431
  %7957 = fadd fast float %7954, %7432
  %7958 = fmul fast float %7947, %7929
  %7959 = fmul fast float %7958, %7914
  %7960 = fmul fast float %7950, %7930
  %7961 = fmul fast float %7960, %7914
  %7962 = fmul fast float %7953, %7931
  %7963 = fmul fast float %7962, %7914
  %7964 = fadd fast float %7959, %7427
  %7965 = fadd fast float %7961, %7428
  %7966 = fadd fast float %7963, %7429
  br label %7559

; <label>:7967                                    ; preds = %7559
  br label %7968

; <label>:7968                                    ; preds = %7967, %7393
  %7969 = phi float [ %7395, %7393 ], [ %7560, %7967 ]
  %7970 = phi float [ %7396, %7393 ], [ %7561, %7967 ]
  %7971 = phi float [ %7397, %7393 ], [ %7562, %7967 ]
  %7972 = phi float [ %7398, %7393 ], [ %7563, %7967 ]
  %7973 = phi float [ %7399, %7393 ], [ %7564, %7967 ]
  %7974 = phi float [ %7400, %7393 ], [ %7565, %7967 ]
  %7975 = add i32 %7394, 1
  %7976 = icmp ugt i32 %7975, %7390
  br i1 %7976, label %7977, label %7393

; <label>:7977                                    ; preds = %7968
  br label %7978

; <label>:7978                                    ; preds = %7977, %7343, %7333
  %7979 = phi float [ %7334, %7333 ], [ %7334, %7343 ], [ %7969, %7977 ]
  %7980 = phi float [ %7335, %7333 ], [ %7335, %7343 ], [ %7970, %7977 ]
  %7981 = phi float [ %7336, %7333 ], [ %7336, %7343 ], [ %7971, %7977 ]
  %7982 = phi float [ %7337, %7333 ], [ %7337, %7343 ], [ %7972, %7977 ]
  %7983 = phi float [ %7338, %7333 ], [ %7338, %7343 ], [ %7973, %7977 ]
  %7984 = phi float [ %7339, %7333 ], [ %7339, %7343 ], [ %7974, %7977 ]
  %7985 = fmul fast float %1251, %1251
  %7986 = fsub fast float 1.000000e+00, %7985
  %7987 = call float @dx.op.dot3.f32(i32 55, float %7986, float %7986, float %7986, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 0
  %7991 = fmul fast float %7990, %5636
  %7992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7993 = extractvalue %dx.types.CBufRet.f32 %7992, 3
  %7994 = fsub fast float 1.000000e+00, %3471
  %7995 = call float @dx.op.unary.f32(i32 7, float %7994)  ; Saturate(value)
  %7996 = fadd fast float %7984, %3473
  %7997 = fmul fast float %7996, %3471
  %7998 = fmul fast float %7995, %7993
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 3
  %8001 = fmul fast float %7982, %4683
  %8002 = fmul fast float %7983, %4684
  %8003 = fmul fast float %7984, %4685
  %8004 = fcmp fast ogt float %105, %223
  %8005 = and i1 %8004, %3907
  %8006 = or i1 %3913, %8005
  %8007 = icmp eq i32 %3906, 2
  %8008 = fcmp fast ole float %105, %223
  %8009 = and i1 %8008, %8007
  %8010 = or i1 %8009, %8006
  br i1 %8005, label %8011, label %8268

; <label>:8011                                    ; preds = %7978
  %8012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8013 = extractvalue %dx.types.CBufRet.f32 %8012, 2
  %8014 = extractvalue %dx.types.CBufRet.f32 %8012, 3
  %8015 = fmul fast float %8013, %118
  %8016 = fmul fast float %8014, %119
  %8017 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8018 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8019 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8017, float %8018, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = extractvalue %dx.types.ResRet.f32 %8019, 3
  %8024 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %8017, float %8018, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8025 = extractvalue %dx.types.ResRet.f32 %8024, 0
  %8026 = extractvalue %dx.types.ResRet.f32 %8024, 1
  %8027 = extractvalue %dx.types.ResRet.f32 %8024, 2
  %8028 = extractvalue %dx.types.ResRet.f32 %8024, 3
  %8029 = call float @dx.op.binary.f32(i32 35, float %8021, float %8022)  ; FMax(a,b)
  %8030 = call float @dx.op.binary.f32(i32 35, float %8020, float %8029)  ; FMax(a,b)
  %8031 = call float @dx.op.binary.f32(i32 35, float %8030, float %8023)  ; FMax(a,b)
  %8032 = call float @dx.op.binary.f32(i32 36, float %8026, float %8027)  ; FMin(a,b)
  %8033 = call float @dx.op.binary.f32(i32 36, float %8025, float %8032)  ; FMin(a,b)
  %8034 = call float @dx.op.binary.f32(i32 36, float %8033, float %8028)  ; FMin(a,b)
  %8035 = fmul fast float %8031, 2.550000e+02
  %8036 = fadd fast float %8035, 0x3F70101020000000
  %8037 = fptoui float %8036 to i32
  %8038 = fmul fast float %8034, 2.550000e+02
  %8039 = fadd fast float %8038, 0x3F70101020000000
  %8040 = fptoui float %8039 to i32
  %8041 = icmp ult i32 %8037, %8040
  br i1 %8041, label %8042, label %8210

; <label>:8042                                    ; preds = %8011
  %8043 = fcmp fast ogt float %104, 9.843750e-01
  %8044 = fadd fast float %105, -4.000000e+00
  %8045 = select i1 %8043, float -4.000000e+00, float %8044
  %8046 = call float @dx.op.binary.f32(i32 35, float %8045, float 0.000000e+00)  ; FMax(a,b)
  %8047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8048 = extractvalue %dx.types.CBufRet.f32 %8047, 0
  %8049 = fadd fast float %8048, %8046
  %8050 = extractvalue %dx.types.CBufRet.f32 %8047, 2
  %8051 = fmul fast float %8049, %8050
  %8052 = call float @dx.op.unary.f32(i32 23, float %8051)  ; Log(value)
  %8053 = extractvalue %dx.types.CBufRet.f32 %8047, 3
  %8054 = fmul fast float %8053, %8052
  %8055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8056 = extractvalue %dx.types.CBufRet.f32 %8055, 2
  %8057 = fmul fast float %8054, %8056
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = uitofp i32 %8037 to float
  %8060 = uitofp i32 %8040 to float
  %8061 = fadd fast float %8059, 5.000000e-01
  %8062 = fadd fast float %8060, 5.000000e-01
  %8063 = fmul fast float %8056, %8061
  %8064 = fmul fast float %8056, %8062
  %8065 = fadd fast float %8063, 0x3F0FFB4800000000
  %8066 = fadd fast float %8064, 0xBF0FFB4800000000
  %8067 = call float @dx.op.binary.f32(i32 35, float %8058, float %8065)  ; FMax(a,b)
  %8068 = call float @dx.op.binary.f32(i32 36, float %8067, float %8066)  ; FMin(a,b)
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8072 = extractvalue %dx.types.CBufRet.f32 %8069, 0
  %8073 = fmul fast float %8070, %8068
  %8074 = fadd fast float %8072, %8073
  %8075 = fadd fast float %8072, %8071
  %8076 = fsub fast float %8070, %8071
  %8077 = fadd fast float %8076, %8072
  %8078 = call float @dx.op.binary.f32(i32 35, float %8074, float %8075)  ; FMax(a,b)
  %8079 = call float @dx.op.binary.f32(i32 36, float %8078, float %8077)  ; FMin(a,b)
  %8080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %8017, float %8018, float %8079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = extractvalue %dx.types.ResRet.f32 %8080, 2
  %8084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.i32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.i32 %8084, 1
  %8087 = uitofp i32 %8085 to float
  %8088 = uitofp i32 %8086 to float
  %8089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8090 = extractvalue %dx.types.CBufRet.f32 %8089, 0
  %8091 = extractvalue %dx.types.CBufRet.f32 %8089, 1
  %8092 = fmul fast float %8087, %8017
  %8093 = fmul fast float %8088, %8018
  %8094 = fadd fast float %8092, -5.000000e-01
  %8095 = fadd fast float %8093, -5.000000e-01
  %8096 = call float @dx.op.unary.f32(i32 22, float %8094)  ; Frc(value)
  %8097 = call float @dx.op.unary.f32(i32 22, float %8095)  ; Frc(value)
  %8098 = fmul fast float %8096, %8096
  %8099 = fmul fast float %8098, %8096
  %8100 = fsub fast float 3.000000e+00, %8096
  %8101 = fmul fast float %8098, %8100
  %8102 = fmul fast float %8096, 3.000000e+00
  %8103 = fmul fast float %8099, 3.000000e+00
  %8104 = fmul fast float %8098, 6.000000e+00
  %8105 = fsub fast float %8103, %8104
  %8106 = fadd fast float %8105, 4.000000e+00
  %8107 = fmul fast float %8106, 0x3FC5555560000000
  %8108 = fmul fast float %8099, -3.000000e+00
  %8109 = fadd fast float %8098, %8096
  %8110 = fmul fast float %8109, 3.000000e+00
  %8111 = fadd fast float %8108, 1.000000e+00
  %8112 = fadd fast float %8111, %8110
  %8113 = fmul fast float %8099, 0x3FC5555560000000
  %8114 = fmul fast float %8097, %8097
  %8115 = fmul fast float %8114, %8097
  %8116 = fsub fast float 3.000000e+00, %8097
  %8117 = fmul fast float %8114, %8116
  %8118 = fmul fast float %8097, 3.000000e+00
  %8119 = fmul fast float %8115, 3.000000e+00
  %8120 = fmul fast float %8114, 6.000000e+00
  %8121 = fsub fast float %8119, %8120
  %8122 = fadd fast float %8121, 4.000000e+00
  %8123 = fmul fast float %8122, 0x3FC5555560000000
  %8124 = fmul fast float %8115, -3.000000e+00
  %8125 = fadd fast float %8114, %8097
  %8126 = fmul fast float %8125, 3.000000e+00
  %8127 = fadd fast float %8124, 1.000000e+00
  %8128 = fadd fast float %8127, %8126
  %8129 = fmul fast float %8115, 0x3FC5555560000000
  %8130 = fadd fast float %8096, 1.000000e+00
  %8131 = fsub fast float 1.000000e+00, %8102
  %8132 = fadd fast float %8131, %8101
  %8133 = fadd fast float %8132, %8106
  %8134 = fmul fast float %8133, 0x3FC5555560000000
  %8135 = fdiv fast float %8107, %8134
  %8136 = fsub fast float %8130, %8135
  %8137 = fsub fast float 1.000000e+00, %8096
  %8138 = fadd fast float %8112, %8099
  %8139 = fmul fast float %8138, 0x3FC5555560000000
  %8140 = fdiv fast float %8113, %8139
  %8141 = fadd fast float %8137, %8140
  %8142 = fadd fast float %8097, 1.000000e+00
  %8143 = fsub fast float 1.000000e+00, %8118
  %8144 = fadd fast float %8143, %8117
  %8145 = fadd fast float %8144, %8122
  %8146 = fmul fast float %8145, 0x3FC5555560000000
  %8147 = fdiv fast float %8123, %8146
  %8148 = fsub fast float %8142, %8147
  %8149 = fsub fast float 1.000000e+00, %8097
  %8150 = fadd fast float %8128, %8115
  %8151 = fmul fast float %8150, 0x3FC5555560000000
  %8152 = fdiv fast float %8129, %8151
  %8153 = fadd fast float %8152, %8149
  %8154 = fmul fast float %8136, %8090
  %8155 = fsub fast float %8017, %8154
  %8156 = fmul fast float %8141, %8090
  %8157 = fadd fast float %8156, %8017
  %8158 = fmul fast float %8153, %8091
  %8159 = fadd fast float %8158, %8018
  %8160 = fmul fast float %8148, %8091
  %8161 = fsub fast float %8018, %8160
  %8162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8155, float %8161, float %8079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8163 = extractvalue %dx.types.ResRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.ResRet.f32 %8162, 1
  %8165 = extractvalue %dx.types.ResRet.f32 %8162, 2
  %8166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8157, float %8161, float %8079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8167 = extractvalue %dx.types.ResRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.ResRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.ResRet.f32 %8166, 2
  %8170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8155, float %8159, float %8079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8171 = extractvalue %dx.types.ResRet.f32 %8170, 0
  %8172 = extractvalue %dx.types.ResRet.f32 %8170, 1
  %8173 = extractvalue %dx.types.ResRet.f32 %8170, 2
  %8174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8157, float %8159, float %8079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8175 = extractvalue %dx.types.ResRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.ResRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.ResRet.f32 %8174, 2
  %8178 = fsub fast float %8171, %8163
  %8179 = fsub fast float %8172, %8164
  %8180 = fsub fast float %8173, %8165
  %8181 = fmul fast float %8178, %8151
  %8182 = fmul fast float %8179, %8151
  %8183 = fmul fast float %8180, %8151
  %8184 = fadd fast float %8181, %8163
  %8185 = fadd fast float %8182, %8164
  %8186 = fadd fast float %8183, %8165
  %8187 = fsub fast float %8175, %8167
  %8188 = fsub fast float %8176, %8168
  %8189 = fsub fast float %8177, %8169
  %8190 = fmul fast float %8187, %8151
  %8191 = fmul fast float %8188, %8151
  %8192 = fmul fast float %8189, %8151
  %8193 = fsub fast float %8167, %8184
  %8194 = fadd fast float %8193, %8190
  %8195 = fsub fast float %8168, %8185
  %8196 = fadd fast float %8195, %8191
  %8197 = fsub fast float %8169, %8186
  %8198 = fadd fast float %8197, %8192
  %8199 = fmul fast float %8194, %8139
  %8200 = fmul fast float %8196, %8139
  %8201 = fmul fast float %8198, %8139
  %8202 = fadd fast float %8199, %8184
  %8203 = fadd fast float %8200, %8185
  %8204 = fadd fast float %8201, %8186
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8207 = fmul fast float %8202, %8206
  %8208 = fmul fast float %8203, %8206
  %8209 = fmul fast float %8204, %8206
  br label %8210

; <label>:8210                                    ; preds = %8042, %8011
  %8211 = phi float [ %8081, %8042 ], [ 1.000000e+00, %8011 ]
  %8212 = phi float [ %8082, %8042 ], [ 1.000000e+00, %8011 ]
  %8213 = phi float [ %8083, %8042 ], [ 1.000000e+00, %8011 ]
  %8214 = phi float [ %8207, %8042 ], [ 0.000000e+00, %8011 ]
  %8215 = phi float [ %8208, %8042 ], [ 0.000000e+00, %8011 ]
  %8216 = phi float [ %8209, %8042 ], [ 0.000000e+00, %8011 ]
  %8217 = fmul fast float %8214, %7988
  %8218 = fmul fast float %8215, %7988
  %8219 = fmul fast float %8216, %7988
  %8220 = call float @dx.op.dot3.f32(i32 55, float %8211, float %8212, float %8213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8221 = call float @dx.op.dot3.f32(i32 55, float %8217, float %8218, float %8219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8222 = select i1 %260, float %8220, float %8211
  %8223 = select i1 %260, float %8220, float %8212
  %8224 = select i1 %260, float 1.000000e+00, float %8213
  %8225 = select i1 %260, float %8221, float %8217
  %8226 = select i1 %260, float 0.000000e+00, float %8218
  %8227 = select i1 %260, float 0.000000e+00, float %8219
  %8228 = fmul fast float %8222, %8001
  %8229 = fmul fast float %8223, %8002
  %8230 = fmul fast float %8224, %8003
  %8231 = fadd fast float %8228, %8225
  %8232 = fadd fast float %8229, %8226
  %8233 = fadd fast float %8227, %8230
  %8234 = fmul fast float %8222, %7979
  %8235 = fmul fast float %8223, %7980
  %8236 = fmul fast float %8224, %7981
  %8237 = fmul fast float %150, %8013
  %8238 = fmul fast float %152, %8014
  %8239 = fsub fast float 1.000000e+00, %8237
  %8240 = fsub fast float 1.000000e+00, %8238
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8245 = fmul fast float %8239, %8242
  %8246 = fmul fast float %8239, %8243
  %8247 = fmul fast float %8239, %8244
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8252 = fmul fast float %8240, %8249
  %8253 = fmul fast float %8240, %8250
  %8254 = fmul fast float %8240, %8251
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = fadd fast float %8252, %8256
  %8260 = fadd fast float %8259, %8245
  %8261 = fadd fast float %8253, %8257
  %8262 = fadd fast float %8261, %8246
  %8263 = fadd fast float %8254, %8258
  %8264 = fadd fast float %8263, %8247
  %8265 = fmul fast float %8260, %223
  %8266 = fmul fast float %8262, %223
  %8267 = fmul fast float %8264, %223
  br label %8268

; <label>:8268                                    ; preds = %8210, %7978
  %8269 = phi float [ %8265, %8210 ], [ %201, %7978 ]
  %8270 = phi float [ %8266, %8210 ], [ %202, %7978 ]
  %8271 = phi float [ %8267, %8210 ], [ %203, %7978 ]
  %8272 = phi float [ %223, %8210 ], [ %105, %7978 ]
  %8273 = phi float [ %8231, %8210 ], [ %8001, %7978 ]
  %8274 = phi float [ %8232, %8210 ], [ %8002, %7978 ]
  %8275 = phi float [ %8233, %8210 ], [ %8003, %7978 ]
  %8276 = phi float [ %8234, %8210 ], [ %7979, %7978 ]
  %8277 = phi float [ %8235, %8210 ], [ %7980, %7978 ]
  %8278 = phi float [ %8236, %8210 ], [ %7981, %7978 ]
  %8279 = phi float [ %8211, %8210 ], [ 1.000000e+00, %7978 ]
  br i1 %8010, label %9434, label %8280

; <label>:8280                                    ; preds = %8268
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.CBufRet.f32 %8281, 2
  %8285 = extractvalue %dx.types.CBufRet.f32 %8281, 3
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %8290 = extractvalue %dx.types.CBufRet.f32 %8286, 3
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8294 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8295 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8300 = extractvalue %dx.types.CBufRet.f32 %8296, 3
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 3
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 3
  %8305 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8306 = extractvalue %dx.types.CBufRet.f32 %8303, 1
  %8307 = extractvalue %dx.types.CBufRet.f32 %8303, 2
  %8308 = fcmp fast olt float %8307, -5.000000e-01
  %8309 = call float @dx.op.dot3.f32(i32 55, float %8269, float %8270, float %8271, float %8269, float %8270, float %8271)  ; Dot3(ax,ay,az,bx,by,bz)
  %8310 = call float @dx.op.unary.f32(i32 25, float %8309)  ; Rsqrt(value)
  %8311 = fmul fast float %8310, %8309
  %8312 = fmul fast float %8310, %8269
  %8313 = fmul fast float %8310, %8270
  %8314 = fmul fast float %8310, %8271
  %8315 = fadd fast float %8311, %8285
  %8316 = call float @dx.op.dot3.f32(i32 55, float %8312, float %8313, float %8314, float %8282, float %8283, float %8284)  ; Dot3(ax,ay,az,bx,by,bz)
  %8317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.i32 %8317, 1
  %8319 = and i32 %8318, 1
  %8320 = icmp ne i32 %8319, 0
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8323 = fcmp fast ogt float %8322, 0.000000e+00
  %8324 = and i1 %8320, %8323
  br i1 %8324, label %8325, label %8731, !dx.controlflow.hints !135

; <label>:8325                                    ; preds = %8280
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 3
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %8332 = fsub fast float %8329, %8331
  %8333 = and i32 %8318, 2
  %8334 = extractvalue %dx.types.CBufRet.i32 %8317, 0
  %8335 = call i32 @dx.op.binary.i32(i32 40, i32 %8334, i32 3)  ; UMin(a,b)
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.CBufRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.CBufRet.f32 %8330, 0
  %8340 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %8341 = fsub fast float %8337, %8339
  %8342 = fsub fast float %8338, %8340
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = fcmp fast ogt float %8344, 0.000000e+00
  %8346 = fsub fast float -0.000000e+00, %8341
  %8347 = fsub fast float -0.000000e+00, %8342
  %8348 = call float @dx.op.dot2.f32(i32 54, float %8312, float %8313, float %8312, float %8313)  ; Dot2(ax,ay,bx,by)
  %8349 = call float @dx.op.dot2.f32(i32 54, float %8312, float %8313, float %8346, float %8347)  ; Dot2(ax,ay,bx,by)
  %8350 = fmul fast float %8349, 2.000000e+00
  %8351 = call float @dx.op.dot2.f32(i32 54, float %8346, float %8347, float %8346, float %8347)  ; Dot2(ax,ay,bx,by)
  %8352 = fmul fast float %8344, %8344
  %8353 = fsub fast float %8351, %8352
  %8354 = fmul fast float %8350, %8350
  %8355 = fmul fast float %8348, 4.000000e+00
  %8356 = fmul fast float %8355, %8353
  %8357 = fsub fast float %8354, %8356
  %8358 = fcmp fast ogt float %8357, 0.000000e+00
  br i1 %8358, label %8359, label %8374

; <label>:8359                                    ; preds = %8325
  %8360 = fcmp fast ogt float %8350, 0.000000e+00
  %8361 = call float @dx.op.unary.f32(i32 24, float %8357)  ; Sqrt(value)
  %8362 = fsub fast float -0.000000e+00, %8361
  %8363 = select i1 %8360, float %8361, float %8362
  %8364 = fadd fast float %8363, %8350
  %8365 = fmul float %8364, -5.000000e-01
  %8366 = fdiv fast float %8365, %8348
  %8367 = call float @dx.op.binary.f32(i32 35, float %8366, float 0.000000e+00)  ; FMax(a,b)
  %8368 = call float @dx.op.binary.f32(i32 36, float %8311, float %8367)  ; FMin(a,b)
  %8369 = fdiv fast float %8353, %8365
  %8370 = call float @dx.op.binary.f32(i32 35, float %8369, float 0.000000e+00)  ; FMax(a,b)
  %8371 = call float @dx.op.binary.f32(i32 36, float %8311, float %8370)  ; FMin(a,b)
  %8372 = call float @dx.op.binary.f32(i32 36, float %8368, float %8371)  ; FMin(a,b)
  %8373 = call float @dx.op.binary.f32(i32 35, float %8368, float %8371)  ; FMax(a,b)
  br label %8374

; <label>:8374                                    ; preds = %8359, %8325
  %8375 = phi float [ %8373, %8359 ], [ -1.000000e+00, %8325 ]
  %8376 = phi float [ %8372, %8359 ], [ -1.000000e+00, %8325 ]
  %8377 = phi i1 [ true, %8359 ], [ false, %8325 ]
  %8378 = and i1 %8345, %8377
  br i1 %8378, label %8379, label %8381

; <label>:8379                                    ; preds = %8374
  %8380 = fcmp fast oeq float %8376, %8375
  br i1 %8380, label %8684, label %8382

; <label>:8381                                    ; preds = %8374
  br i1 %8345, label %8684, label %8382

; <label>:8382                                    ; preds = %8381, %8379
  %8383 = phi float [ %8311, %8381 ], [ %8375, %8379 ]
  %8384 = phi float [ 0.000000e+00, %8381 ], [ %8376, %8379 ]
  %8385 = icmp ne i32 %8333, 0
  %8386 = fmul fast float %8383, %8314
  %8387 = fadd fast float %8386, %8327
  %8388 = fmul fast float %8387, %8383
  %8389 = select i1 %8385, float 0.000000e+00, float %8388
  %8390 = fcmp fast oeq float %8314, 0.000000e+00
  %8391 = fdiv fast float %8332, %8314
  %8392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8391)  ; FMax(a,b)
  %8393 = select i1 %8390, float %8383, float %8392
  %8394 = call float @dx.op.binary.f32(i32 36, float %8383, float %8393)  ; FMin(a,b)
  %8395 = fcmp fast ogt float %8314, 0.000000e+00
  %8396 = fcmp fast olt float %8332, 0.000000e+00
  br i1 %8395, label %8397, label %8454

; <label>:8397                                    ; preds = %8382
  %8398 = icmp eq i32 %8333, 0
  br i1 %8396, label %8399, label %8443

; <label>:8399                                    ; preds = %8397
  %8400 = select i1 %8398, float %8383, float 0.000000e+00
  %8401 = fsub fast float -0.000000e+00, %8400
  %8402 = call float @dx.op.unary.f32(i32 6, float %8401)  ; FAbs(value)
  %8403 = fmul fast float %8400, %8314
  %8404 = fadd fast float %8403, %8327
  %8405 = fmul fast float %8402, %8404
  %8406 = fsub fast float %8389, %8405
  %8407 = fsub fast float %8383, %8402
  %8408 = select i1 %8398, float %8407, float 0.000000e+00
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = extractvalue %dx.types.CBufRet.f32 %8409, 1
  %8412 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8416 = extractvalue %dx.types.CBufRet.f32 %8413, 2
  %8417 = extractvalue %dx.types.CBufRet.f32 %8413, 3
  %8418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8419 = extractvalue %dx.types.CBufRet.f32 %8418, 3
  %8420 = call float @dx.op.binary.f32(i32 36, float %8406, float %8419)  ; FMin(a,b)
  %8421 = fmul fast float %8417, %8408
  %8422 = call float @dx.op.unary.f32(i32 7, float %8421)  ; Saturate(value)
  %8423 = fsub fast float %8414, %8410
  %8424 = fsub fast float %8415, %8411
  %8425 = fsub fast float %8416, %8412
  %8426 = fmul fast float %8422, %8423
  %8427 = fmul fast float %8422, %8424
  %8428 = fmul fast float %8422, %8425
  %8429 = fadd fast float %8426, %8410
  %8430 = fadd fast float %8427, %8411
  %8431 = fadd fast float %8428, %8412
  %8432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.f32 %8432, 0
  %8434 = extractvalue %dx.types.CBufRet.f32 %8432, 1
  %8435 = fadd fast float %8434, %8433
  %8436 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8432, 2
  %8438 = extractvalue %dx.types.CBufRet.f32 %8432, 3
  %8439 = fadd fast float %8438, %8437
  %8440 = call float @dx.op.unary.f32(i32 7, float %8439)  ; Saturate(value)
  %8441 = fmul fast float %8436, %8420
  %8442 = fmul fast float %8441, %8440
  br label %8684

; <label>:8443                                    ; preds = %8397
  br i1 %8398, label %8444, label %8465

; <label>:8444                                    ; preds = %8443
  %8445 = call float @dx.op.binary.f32(i32 36, float %8394, float %8384)  ; FMin(a,b)
  %8446 = fsub fast float %8394, %8445
  %8447 = fsub fast float %8446, %8383
  %8448 = call float @dx.op.unary.f32(i32 6, float %8447)  ; FAbs(value)
  %8449 = fadd fast float %8446, %8383
  %8450 = fmul fast float %8449, %8314
  %8451 = fadd fast float %8450, %8327
  %8452 = fmul fast float %8451, %8448
  %8453 = fsub fast float %8389, %8452
  br label %8465

; <label>:8454                                    ; preds = %8382
  br i1 %8396, label %8455, label %8465

; <label>:8455                                    ; preds = %8454
  %8456 = call float @dx.op.binary.f32(i32 35, float %8384, float %8394)  ; FMax(a,b)
  %8457 = icmp eq i32 %8333, 0
  %8458 = select i1 %8457, float %8394, float 0.000000e+00
  %8459 = fsub fast float -0.000000e+00, %8458
  %8460 = call float @dx.op.unary.f32(i32 6, float %8459)  ; FAbs(value)
  %8461 = fmul fast float %8458, %8314
  %8462 = fadd fast float %8461, %8327
  %8463 = fmul fast float %8460, %8462
  %8464 = fsub fast float %8389, %8463
  br label %8465

; <label>:8465                                    ; preds = %8455, %8454, %8444, %8443
  %8466 = phi float [ %8384, %8443 ], [ %8384, %8444 ], [ %8456, %8455 ], [ %8384, %8454 ]
  %8467 = phi float [ 0.000000e+00, %8443 ], [ %8448, %8444 ], [ %8460, %8455 ], [ 0.000000e+00, %8454 ]
  %8468 = phi float [ %8389, %8443 ], [ %8453, %8444 ], [ %8464, %8455 ], [ %8389, %8454 ]
  %8469 = phi float [ %8394, %8443 ], [ %8394, %8444 ], [ %8383, %8455 ], [ %8383, %8454 ]
  %8470 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 0
  store float -1.000000e+00, float* %8470, align 4, !tbaa !121, !noalias !136
  %8471 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 1
  store float -1.000000e+00, float* %8471, align 4, !tbaa !121, !noalias !136
  %8472 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 2
  store float -1.000000e+00, float* %8472, align 4, !tbaa !121, !noalias !136
  %8473 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 0
  store float -1.000000e+00, float* %8473, align 4, !tbaa !121, !noalias !136
  %8474 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 1
  store float -1.000000e+00, float* %8474, align 4, !tbaa !121, !noalias !136
  %8475 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 2
  store float -1.000000e+00, float* %8475, align 4, !tbaa !121, !noalias !136
  %8476 = icmp sgt i32 %8335, 0
  br i1 %8476, label %8477, label %8538

; <label>:8477                                    ; preds = %8465
  br label %8478

; <label>:8478                                    ; preds = %8527, %8477
  %8479 = phi i32 [ %8528, %8527 ], [ 0, %8477 ]
  %8480 = phi i32 [ %8529, %8527 ], [ 0, %8477 ]
  %8481 = add nuw i32 %8480, 171
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %8481)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8488 = fsub fast float %8483, %8486
  %8489 = fsub fast float %8484, %8487
  %8490 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8491 = fsub fast float -0.000000e+00, %8488
  %8492 = fsub fast float -0.000000e+00, %8489
  %8493 = call float @dx.op.dot2.f32(i32 54, float %8312, float %8313, float %8491, float %8492)  ; Dot2(ax,ay,bx,by)
  %8494 = fmul fast float %8493, 2.000000e+00
  %8495 = call float @dx.op.dot2.f32(i32 54, float %8491, float %8492, float %8491, float %8492)  ; Dot2(ax,ay,bx,by)
  %8496 = fmul fast float %8490, %8490
  %8497 = fsub fast float %8495, %8496
  %8498 = fmul fast float %8494, %8494
  %8499 = fmul fast float %8355, %8497
  %8500 = fsub fast float %8498, %8499
  %8501 = fcmp fast ogt float %8500, 0.000000e+00
  br i1 %8501, label %8502, label %8517

; <label>:8502                                    ; preds = %8478
  %8503 = fcmp fast ogt float %8494, 0.000000e+00
  %8504 = call float @dx.op.unary.f32(i32 24, float %8500)  ; Sqrt(value)
  %8505 = fsub fast float -0.000000e+00, %8504
  %8506 = select i1 %8503, float %8504, float %8505
  %8507 = fadd fast float %8506, %8494
  %8508 = fmul float %8507, -5.000000e-01
  %8509 = fdiv fast float %8508, %8348
  %8510 = call float @dx.op.binary.f32(i32 35, float %8509, float 0.000000e+00)  ; FMax(a,b)
  %8511 = call float @dx.op.binary.f32(i32 36, float %8383, float %8510)  ; FMin(a,b)
  %8512 = fdiv fast float %8497, %8508
  %8513 = call float @dx.op.binary.f32(i32 35, float %8512, float 0.000000e+00)  ; FMax(a,b)
  %8514 = call float @dx.op.binary.f32(i32 36, float %8383, float %8513)  ; FMin(a,b)
  %8515 = call float @dx.op.binary.f32(i32 36, float %8511, float %8514)  ; FMin(a,b)
  %8516 = call float @dx.op.binary.f32(i32 35, float %8511, float %8514)  ; FMax(a,b)
  br label %8517

; <label>:8517                                    ; preds = %8502, %8478
  %8518 = phi float [ %8516, %8502 ], [ -1.000000e+00, %8478 ]
  %8519 = phi float [ %8515, %8502 ], [ -1.000000e+00, %8478 ]
  %8520 = phi i1 [ true, %8502 ], [ false, %8478 ]
  br i1 %8520, label %8521, label %8527

; <label>:8521                                    ; preds = %8517
  %8522 = call float @dx.op.binary.f32(i32 35, float %8466, float %8519)  ; FMax(a,b)
  %8523 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8480
  store float %8522, float* %8523, align 4, !tbaa !121, !noalias !136
  %8524 = call float @dx.op.binary.f32(i32 35, float %8466, float %8518)  ; FMax(a,b)
  %8525 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %8480
  store float %8524, float* %8525, align 4, !tbaa !121, !noalias !136
  %8526 = add nsw i32 %8479, 1
  br label %8527

; <label>:8527                                    ; preds = %8521, %8517
  %8528 = phi i32 [ %8526, %8521 ], [ %8479, %8517 ]
  %8529 = add nuw nsw i32 %8480, 1
  %8530 = icmp eq i32 %8529, %8335
  br i1 %8530, label %8531, label %8478

; <label>:8531                                    ; preds = %8527
  %8532 = load float, float* %8472, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8533 = load float, float* %8471, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  %8534 = load float, float* %8470, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  %8535 = load float, float* %8475, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8536 = load float, float* %8474, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  %8537 = load float, float* %8473, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  br label %8538

; <label>:8538                                    ; preds = %8531, %8465
  %8539 = phi float [ -1.000000e+00, %8465 ], [ %8537, %8531 ]
  %8540 = phi float [ -1.000000e+00, %8465 ], [ %8536, %8531 ]
  %8541 = phi float [ -1.000000e+00, %8465 ], [ %8535, %8531 ]
  %8542 = phi float [ -1.000000e+00, %8465 ], [ %8534, %8531 ]
  %8543 = phi float [ -1.000000e+00, %8465 ], [ %8533, %8531 ]
  %8544 = phi float [ -1.000000e+00, %8465 ], [ %8532, %8531 ]
  %8545 = phi i32 [ 0, %8465 ], [ %8528, %8531 ]
  %8546 = call float @dx.op.binary.f32(i32 36, float %8543, float %8544)  ; FMin(a,b)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8542, float %8546)  ; FMin(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float %8542, float %8543)  ; FMax(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8548, float %8544)  ; FMin(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8542, float %8543)  ; FMin(a,b)
  %8551 = call float @dx.op.binary.f32(i32 35, float %8550, float %8549)  ; FMax(a,b)
  %8552 = call float @dx.op.binary.f32(i32 35, float %8543, float %8544)  ; FMax(a,b)
  %8553 = call float @dx.op.binary.f32(i32 35, float %8542, float %8552)  ; FMax(a,b)
  store float %8547, float* %8470, align 4, !tbaa !121, !alias.scope !160, !noalias !161
  store float %8551, float* %8471, align 4, !tbaa !121, !alias.scope !158, !noalias !159
  store float %8553, float* %8472, align 4, !tbaa !121, !alias.scope !152, !noalias !155
  %8554 = call float @dx.op.binary.f32(i32 36, float %8540, float %8541)  ; FMin(a,b)
  %8555 = call float @dx.op.binary.f32(i32 36, float %8539, float %8554)  ; FMin(a,b)
  %8556 = call float @dx.op.binary.f32(i32 35, float %8539, float %8540)  ; FMax(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8556, float %8541)  ; FMin(a,b)
  %8558 = call float @dx.op.binary.f32(i32 36, float %8539, float %8540)  ; FMin(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float %8558, float %8557)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8540, float %8541)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 35, float %8539, float %8560)  ; FMax(a,b)
  store float %8555, float* %8473, align 4, !tbaa !121, !alias.scope !170, !noalias !171
  store float %8559, float* %8474, align 4, !tbaa !121, !alias.scope !168, !noalias !169
  store float %8561, float* %8475, align 4, !tbaa !121, !alias.scope !162, !noalias !165
  %8562 = sub nsw i32 3, %8545
  %8563 = icmp sgt i32 %8562, 2
  br i1 %8563, label %8564, label %8602

; <label>:8564                                    ; preds = %8538
  %8565 = icmp eq i32 %8333, 0
  %8566 = fsub fast float %8383, %8467
  %8567 = select i1 %8565, float %8566, float %8467
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 0
  %8574 = extractvalue %dx.types.CBufRet.f32 %8572, 1
  %8575 = extractvalue %dx.types.CBufRet.f32 %8572, 2
  %8576 = extractvalue %dx.types.CBufRet.f32 %8572, 3
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 3
  %8579 = call float @dx.op.binary.f32(i32 36, float %8468, float %8578)  ; FMin(a,b)
  %8580 = fmul fast float %8576, %8567
  %8581 = call float @dx.op.unary.f32(i32 7, float %8580)  ; Saturate(value)
  %8582 = fsub fast float %8573, %8569
  %8583 = fsub fast float %8574, %8570
  %8584 = fsub fast float %8575, %8571
  %8585 = fmul fast float %8581, %8582
  %8586 = fmul fast float %8581, %8583
  %8587 = fmul fast float %8581, %8584
  %8588 = fadd fast float %8585, %8569
  %8589 = fadd fast float %8586, %8570
  %8590 = fadd fast float %8587, %8571
  %8591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8591, 0
  %8593 = extractvalue %dx.types.CBufRet.f32 %8591, 1
  %8594 = fadd fast float %8593, %8592
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8591, 2
  %8597 = extractvalue %dx.types.CBufRet.f32 %8591, 3
  %8598 = fadd fast float %8597, %8596
  %8599 = call float @dx.op.unary.f32(i32 7, float %8598)  ; Saturate(value)
  %8600 = fmul fast float %8595, %8579
  %8601 = fmul fast float %8600, %8599
  br label %8684

; <label>:8602                                    ; preds = %8538
  %8603 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8562
  %8604 = load float, float* %8603, align 4, !tbaa !121, !noalias !136
  %8605 = fcmp fast olt float %8604, %8469
  %8606 = icmp sgt i32 %8545, 0
  %8607 = and i1 %8606, %8605
  br i1 %8607, label %8608, label %8645

; <label>:8608                                    ; preds = %8602
  br label %8609

; <label>:8609                                    ; preds = %8638, %8608
  %8610 = phi float [ %8639, %8638 ], [ %8467, %8608 ]
  %8611 = phi float [ %8640, %8638 ], [ %8468, %8608 ]
  %8612 = phi float [ %8620, %8638 ], [ %8604, %8608 ]
  %8613 = phi i32 [ %8617, %8638 ], [ %8562, %8608 ]
  %8614 = getelementptr inbounds [3 x float], [3 x float]* %113, i32 0, i32 %8613
  %8615 = load float, float* %8614, align 4, !tbaa !121, !noalias !136
  %8616 = icmp slt i32 %8613, 2
  %8617 = add nsw i32 %8613, 1
  %8618 = getelementptr inbounds [3 x float], [3 x float]* %112, i32 0, i32 %8617
  %8619 = load float, float* %8618, align 4, !tbaa !121, !noalias !136
  %8620 = select i1 %8616, float %8619, float %8383
  %8621 = call float @dx.op.binary.f32(i32 36, float %8620, float %8615)  ; FMin(a,b)
  %8622 = call float @dx.op.binary.f32(i32 36, float %8469, float %8621)  ; FMin(a,b)
  %8623 = icmp eq i32 %8333, 0
  %8624 = fadd fast float %8622, %8612
  %8625 = fmul fast float %8624, %8314
  %8626 = fadd fast float %8625, %8327
  br i1 %8623, label %8632, label %8627

; <label>:8627                                    ; preds = %8609
  %8628 = fsub fast float %8622, %8612
  %8629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8628)  ; FMax(a,b)
  %8630 = fmul fast float %8629, %8626
  %8631 = fadd fast float %8630, %8611
  br label %8638

; <label>:8632                                    ; preds = %8609
  %8633 = fsub fast float %8612, %8622
  %8634 = call float @dx.op.unary.f32(i32 6, float %8633)  ; FAbs(value)
  %8635 = fadd fast float %8634, %8610
  %8636 = fmul fast float %8634, %8626
  %8637 = fsub fast float %8611, %8636
  br label %8638

; <label>:8638                                    ; preds = %8632, %8627
  %8639 = phi float [ %8629, %8627 ], [ %8635, %8632 ]
  %8640 = phi float [ %8631, %8627 ], [ %8637, %8632 ]
  %8641 = fcmp fast olt float %8620, %8469
  %8642 = icmp slt i32 %8617, 3
  %8643 = and i1 %8642, %8641
  br i1 %8643, label %8609, label %8644

; <label>:8644                                    ; preds = %8638
  br label %8645

; <label>:8645                                    ; preds = %8644, %8602
  %8646 = phi float [ %8467, %8602 ], [ %8639, %8644 ]
  %8647 = phi float [ %8468, %8602 ], [ %8640, %8644 ]
  %8648 = fsub fast float %8383, %8646
  %8649 = select i1 %8385, float %8646, float %8648
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.CBufRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8658 = extractvalue %dx.types.CBufRet.f32 %8654, 3
  %8659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8660 = extractvalue %dx.types.CBufRet.f32 %8659, 3
  %8661 = call float @dx.op.binary.f32(i32 36, float %8647, float %8660)  ; FMin(a,b)
  %8662 = fmul fast float %8658, %8649
  %8663 = call float @dx.op.unary.f32(i32 7, float %8662)  ; Saturate(value)
  %8664 = fsub fast float %8655, %8651
  %8665 = fsub fast float %8656, %8652
  %8666 = fsub fast float %8657, %8653
  %8667 = fmul fast float %8663, %8664
  %8668 = fmul fast float %8663, %8665
  %8669 = fmul fast float %8663, %8666
  %8670 = fadd fast float %8667, %8651
  %8671 = fadd fast float %8668, %8652
  %8672 = fadd fast float %8669, %8653
  %8673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8674 = extractvalue %dx.types.CBufRet.f32 %8673, 0
  %8675 = extractvalue %dx.types.CBufRet.f32 %8673, 1
  %8676 = fadd fast float %8675, %8674
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = extractvalue %dx.types.CBufRet.f32 %8673, 2
  %8679 = extractvalue %dx.types.CBufRet.f32 %8673, 3
  %8680 = fadd fast float %8679, %8678
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fmul fast float %8677, %8661
  %8683 = fmul fast float %8682, %8681
  br label %8684

; <label>:8684                                    ; preds = %8645, %8564, %8399, %8381, %8379
  %8685 = phi float [ %8408, %8399 ], [ %8567, %8564 ], [ %8649, %8645 ], [ 0.000000e+00, %8379 ], [ 0.000000e+00, %8381 ]
  %8686 = phi float [ %8442, %8399 ], [ %8601, %8564 ], [ %8683, %8645 ], [ 0.000000e+00, %8379 ], [ 0.000000e+00, %8381 ]
  %8687 = phi float [ %8429, %8399 ], [ %8588, %8564 ], [ %8670, %8645 ], [ 0.000000e+00, %8379 ], [ 0.000000e+00, %8381 ]
  %8688 = phi float [ %8430, %8399 ], [ %8589, %8564 ], [ %8671, %8645 ], [ 0.000000e+00, %8379 ], [ 0.000000e+00, %8381 ]
  %8689 = phi float [ %8431, %8399 ], [ %8590, %8564 ], [ %8672, %8645 ], [ 0.000000e+00, %8379 ], [ 0.000000e+00, %8381 ]
  %8690 = fmul fast float %8322, %8686
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 2
  %8693 = fsub fast float %8329, %8692
  %8694 = fcmp fast olt float %8690, -2.000000e+01
  %8695 = call float @dx.op.unary.f32(i32 21, float %8690)  ; Exp(value)
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 2
  %8698 = extractvalue %dx.types.CBufRet.f32 %8696, 3
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8701 = fmul fast float %8698, %8693
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fsub fast float 1.000000e+00, %8702
  %8704 = fmul fast float %8314, 5.000000e-01
  %8705 = fadd fast float %8704, 5.000000e-01
  %8706 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8707 = fsub fast float 1.000000e+00, %8706
  %8708 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8703)  ; FMax(a,b)
  %8709 = fdiv fast float %8707, %8708
  %8710 = fsub fast float %8693, %8271
  %8711 = call float @dx.op.unary.f32(i32 6, float %8710)  ; FAbs(value)
  %8712 = fmul fast float %8711, %8697
  %8713 = call float @dx.op.unary.f32(i32 7, float %8709)  ; Saturate(value)
  %8714 = fsub fast float 1.000000e+00, %8712
  %8715 = fmul fast float %8714, %8713
  %8716 = fadd fast float %8715, %8712
  %8717 = fmul fast float %8700, %8693
  %8718 = call float @dx.op.unary.f32(i32 7, float %8717)  ; Saturate(value)
  %8719 = fsub fast float 1.000000e+00, %8716
  %8720 = fmul fast float %8719, %8718
  %8721 = fadd fast float %8720, %8716
  %8722 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  %8723 = fadd fast float %8695, -1.000000e+00
  %8724 = select i1 %8694, float -1.000000e+00, float %8723
  %8725 = fmul fast float %8722, %8724
  %8726 = fadd fast float %8725, 1.000000e+00
  %8727 = fsub fast float -0.000000e+00, %8725
  %8728 = fmul fast float %8687, %8727
  %8729 = fmul fast float %8688, %8727
  %8730 = fmul fast float %8689, %8727
  br label %8731

; <label>:8731                                    ; preds = %8684, %8280
  %8732 = phi float [ %8685, %8684 ], [ 0.000000e+00, %8280 ]
  %8733 = phi float [ %8726, %8684 ], [ 1.000000e+00, %8280 ]
  %8734 = phi float [ %8728, %8684 ], [ 0.000000e+00, %8280 ]
  %8735 = phi float [ %8729, %8684 ], [ 0.000000e+00, %8280 ]
  %8736 = phi float [ %8730, %8684 ], [ 0.000000e+00, %8280 ]
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 1
  %8739 = fsub fast float 1.000000e+00, %8733
  %8740 = fmul fast float %8739, %8315
  %8741 = fmul fast float %8740, %8738
  %8742 = fsub fast float %8315, %8741
  br i1 %8308, label %8743, label %8772, !dx.controlflow.hints !172

; <label>:8743                                    ; preds = %8731
  %8744 = fmul fast float %8316, %8305
  %8745 = fadd fast float %8744, %8306
  %8746 = call float @dx.op.unary.f32(i32 7, float %8745)  ; Saturate(value)
  %8747 = fmul fast float %8287, %8742
  %8748 = fsub fast float -0.000000e+00, %8747
  %8749 = fmul fast float %8288, %8742
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = call float @dx.op.unary.f32(i32 21, float %8748)  ; Exp(value)
  %8752 = call float @dx.op.unary.f32(i32 21, float %8750)  ; Exp(value)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8295, float %8751)  ; FMax(a,b)
  %8754 = call float @dx.op.binary.f32(i32 35, float %8295, float %8752)  ; FMax(a,b)
  %8755 = fsub fast float %8754, %8753
  %8756 = fmul fast float %8755, %8746
  %8757 = fadd fast float %8756, %8753
  %8758 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8759 = fsub fast float %8292, %8297
  %8760 = fsub fast float %8293, %8298
  %8761 = fsub fast float %8294, %8299
  %8762 = fmul fast float %8746, %8759
  %8763 = fmul fast float %8746, %8760
  %8764 = fmul fast float %8746, %8761
  %8765 = fadd fast float %8762, %8297
  %8766 = fadd fast float %8763, %8298
  %8767 = fadd fast float %8764, %8299
  %8768 = fsub fast float 1.000000e+00, %8758
  %8769 = fmul fast float %8768, %8765
  %8770 = fmul fast float %8768, %8766
  %8771 = fmul fast float %8768, %8767
  br label %8831

; <label>:8772                                    ; preds = %8731
  %8773 = fmul fast float %8742, %8304
  %8774 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8775 = fsub fast float 2.000000e+00, %8774
  %8776 = fmul fast float %8774, 9.921875e-01
  %8777 = fmul fast float %8776, %8775
  %8778 = fadd fast float %8777, 3.906250e-03
  %8779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %8778, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8780 = extractvalue %dx.types.ResRet.f32 %8779, 0
  %8781 = fsub fast float %8774, %8780
  %8782 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8781)  ; FMax(a,b)
  %8783 = fmul fast float %8290, %8271
  %8784 = call float @dx.op.unary.f32(i32 6, float %8783)  ; FAbs(value)
  %8785 = fcmp fast ogt float %8784, 0x3EB0C6F7A0000000
  br i1 %8785, label %8786, label %8792, !dx.controlflow.hints !173

; <label>:8786                                    ; preds = %8772
  %8787 = fmul fast float %8783, 0xBFF7154760000000
  %8788 = call float @dx.op.unary.f32(i32 21, float %8787)  ; Exp(value)
  %8789 = fsub fast float 1.000000e+00, %8788
  %8790 = fdiv fast float %8789, %8783
  %8791 = fmul fast float %8790, %8300
  br label %8792

; <label>:8792                                    ; preds = %8786, %8772
  %8793 = phi float [ %8791, %8786 ], [ %8300, %8772 ]
  %8794 = fadd fast float %8793, %8302
  %8795 = fmul fast float %8794, %8782
  %8796 = fmul fast float %8287, %8795
  %8797 = fsub fast float -0.000000e+00, %8796
  %8798 = fmul fast float %8288, %8795
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = fmul fast float %8289, %8795
  %8801 = fsub fast float -0.000000e+00, %8800
  %8802 = call float @dx.op.unary.f32(i32 21, float %8797)  ; Exp(value)
  %8803 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8804 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8805 = fmul fast float %8316, %8316
  %8806 = fadd fast float %8805, 1.000000e+00
  %8807 = fmul fast float %8806, 0x3FAE8EC8A0000000
  %8808 = fmul fast float %8807, %8297
  %8809 = fmul fast float %8807, %8298
  %8810 = fmul fast float %8807, %8299
  %8811 = fmul fast float %8316, %8295
  %8812 = fsub fast float 1.000000e+00, %8811
  %8813 = fmul fast float %8295, %8295
  %8814 = fsub fast float 1.000000e+00, %8813
  %8815 = fmul fast float %8814, 0x3FB45F3060000000
  %8816 = fmul fast float %8812, %8812
  %8817 = fdiv fast float 1.000000e+00, %8816
  %8818 = fmul fast float %8815, %8817
  %8819 = fmul fast float %8818, %8292
  %8820 = fmul fast float %8818, %8293
  %8821 = fmul fast float %8818, %8294
  %8822 = fadd fast float %8819, %8808
  %8823 = fadd fast float %8820, %8809
  %8824 = fadd fast float %8821, %8810
  %8825 = fsub fast float 1.000000e+00, %8802
  %8826 = fsub fast float 1.000000e+00, %8803
  %8827 = fsub fast float 1.000000e+00, %8804
  %8828 = fmul fast float %8822, %8825
  %8829 = fmul fast float %8823, %8826
  %8830 = fmul fast float %8824, %8827
  br label %8831

; <label>:8831                                    ; preds = %8792, %8743
  %8832 = phi float [ %8769, %8743 ], [ %8828, %8792 ]
  %8833 = phi float [ %8770, %8743 ], [ %8829, %8792 ]
  %8834 = phi float [ %8771, %8743 ], [ %8830, %8792 ]
  %8835 = phi float [ %8758, %8743 ], [ %8802, %8792 ]
  %8836 = phi float [ %8758, %8743 ], [ %8803, %8792 ]
  %8837 = phi float [ %8758, %8743 ], [ %8804, %8792 ]
  br i1 %8324, label %8838, label %9036, !dx.controlflow.hints !174

; <label>:8838                                    ; preds = %8831
  %8839 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8840 = fmul fast float %8839, %8739
  %8841 = fsub fast float %8734, %8832
  %8842 = fsub fast float %8735, %8833
  %8843 = fsub fast float %8736, %8834
  %8844 = fmul fast float %8840, %8841
  %8845 = fmul fast float %8840, %8842
  %8846 = fmul fast float %8840, %8843
  %8847 = fadd fast float %8844, %8832
  %8848 = fadd fast float %8845, %8833
  %8849 = fadd fast float %8846, %8834
  %8850 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8835)  ; FMax(a,b)
  %8851 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8836)  ; FMax(a,b)
  %8852 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8837)  ; FMax(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8733)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8732, float %8742)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8854)  ; FMax(a,b)
  %8856 = fdiv fast float %8732, %8855
  %8857 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8858 = fdiv fast float %8742, %8855
  %8859 = call float @dx.op.unary.f32(i32 7, float %8858)  ; Saturate(value)
  %8860 = fcmp fast une float %8853, 1.000000e+00
  br i1 %8860, label %8861, label %8874, !dx.controlflow.hints !175

; <label>:8861                                    ; preds = %8838
  %8862 = call float @dx.op.unary.f32(i32 23, float %8853)  ; Log(value)
  %8863 = fmul fast float %8862, 0x3FE62E4300000000
  %8864 = fmul fast float %8734, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fmul fast float %8735, %8863
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = fmul fast float %8736, %8863
  %8869 = fsub fast float -0.000000e+00, %8868
  %8870 = fsub fast float 1.000000e+00, %8853
  %8871 = fdiv fast float %8865, %8870
  %8872 = fdiv fast float %8867, %8870
  %8873 = fdiv fast float %8869, %8870
  br label %8874

; <label>:8874                                    ; preds = %8861, %8838
  %8875 = phi float [ %8871, %8861 ], [ %8734, %8838 ]
  %8876 = phi float [ %8872, %8861 ], [ %8735, %8838 ]
  %8877 = phi float [ %8873, %8861 ], [ %8736, %8838 ]
  %8878 = phi float [ %8863, %8861 ], [ 0.000000e+00, %8838 ]
  %8879 = fcmp fast une float %8850, 1.000000e+00
  br i1 %8879, label %8880, label %8887, !dx.controlflow.hints !176

; <label>:8880                                    ; preds = %8874
  %8881 = call float @dx.op.unary.f32(i32 23, float %8850)  ; Log(value)
  %8882 = fmul fast float %8881, 0x3FE62E4300000000
  %8883 = fmul fast float %8847, %8882
  %8884 = fsub fast float -0.000000e+00, %8883
  %8885 = fsub fast float 1.000000e+00, %8850
  %8886 = fdiv fast float %8884, %8885
  br label %8887

; <label>:8887                                    ; preds = %8880, %8874
  %8888 = phi float [ %8886, %8880 ], [ %8847, %8874 ]
  %8889 = phi float [ %8882, %8880 ], [ 0.000000e+00, %8874 ]
  %8890 = fcmp fast une float %8851, 1.000000e+00
  br i1 %8890, label %8891, label %8898, !dx.controlflow.hints !176

; <label>:8891                                    ; preds = %8887
  %8892 = call float @dx.op.unary.f32(i32 23, float %8851)  ; Log(value)
  %8893 = fmul fast float %8892, 0x3FE62E4300000000
  %8894 = fmul fast float %8848, %8893
  %8895 = fsub fast float -0.000000e+00, %8894
  %8896 = fsub fast float 1.000000e+00, %8851
  %8897 = fdiv fast float %8895, %8896
  br label %8898

; <label>:8898                                    ; preds = %8891, %8887
  %8899 = phi float [ %8897, %8891 ], [ %8848, %8887 ]
  %8900 = phi float [ %8893, %8891 ], [ 0.000000e+00, %8887 ]
  %8901 = fcmp fast une float %8852, 1.000000e+00
  br i1 %8901, label %8902, label %8909, !dx.controlflow.hints !176

; <label>:8902                                    ; preds = %8898
  %8903 = call float @dx.op.unary.f32(i32 23, float %8852)  ; Log(value)
  %8904 = fmul fast float %8903, 0x3FE62E4300000000
  %8905 = fmul fast float %8849, %8904
  %8906 = fsub fast float -0.000000e+00, %8905
  %8907 = fsub fast float 1.000000e+00, %8852
  %8908 = fdiv fast float %8906, %8907
  br label %8909

; <label>:8909                                    ; preds = %8902, %8898
  %8910 = phi float [ %8908, %8902 ], [ %8849, %8898 ]
  %8911 = phi float [ %8904, %8902 ], [ 0.000000e+00, %8898 ]
  %8912 = fmul fast float %8875, %8859
  %8913 = fmul fast float %8876, %8859
  %8914 = fmul fast float %8877, %8859
  %8915 = fmul fast float %8878, %8859
  %8916 = fmul fast float %8888, %8857
  %8917 = fmul fast float %8899, %8857
  %8918 = fmul fast float %8910, %8857
  %8919 = fmul fast float %8889, %8857
  %8920 = fmul fast float %8900, %8857
  %8921 = fmul fast float %8911, %8857
  %8922 = fadd fast float %8916, %8912
  %8923 = fadd fast float %8917, %8913
  %8924 = fadd fast float %8918, %8914
  %8925 = fadd fast float %8919, %8915
  %8926 = fadd fast float %8920, %8915
  %8927 = fadd fast float %8921, %8915
  %8928 = fcmp fast une float %8925, 0.000000e+00
  br i1 %8928, label %8929, label %8936, !dx.controlflow.hints !177

; <label>:8929                                    ; preds = %8909
  %8930 = fmul fast float %8925, 0x3FF7154760000000
  %8931 = call float @dx.op.unary.f32(i32 21, float %8930)  ; Exp(value)
  %8932 = fsub fast float 1.000000e+00, %8931
  %8933 = fmul fast float %8922, %8932
  %8934 = fsub fast float -0.000000e+00, %8933
  %8935 = fdiv fast float %8934, %8925
  br label %8936

; <label>:8936                                    ; preds = %8929, %8909
  %8937 = phi float [ %8931, %8929 ], [ 1.000000e+00, %8909 ]
  %8938 = phi float [ %8935, %8929 ], [ %8922, %8909 ]
  %8939 = fcmp fast une float %8926, 0.000000e+00
  br i1 %8939, label %8940, label %8947, !dx.controlflow.hints !177

; <label>:8940                                    ; preds = %8936
  %8941 = fmul fast float %8926, 0x3FF7154760000000
  %8942 = call float @dx.op.unary.f32(i32 21, float %8941)  ; Exp(value)
  %8943 = fsub fast float 1.000000e+00, %8942
  %8944 = fmul fast float %8923, %8943
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fdiv fast float %8945, %8926
  br label %8947

; <label>:8947                                    ; preds = %8940, %8936
  %8948 = phi float [ %8942, %8940 ], [ 1.000000e+00, %8936 ]
  %8949 = phi float [ %8946, %8940 ], [ %8923, %8936 ]
  %8950 = fcmp fast une float %8927, 0.000000e+00
  br i1 %8950, label %8951, label %8958, !dx.controlflow.hints !177

; <label>:8951                                    ; preds = %8947
  %8952 = fmul fast float %8927, 0x3FF7154760000000
  %8953 = call float @dx.op.unary.f32(i32 21, float %8952)  ; Exp(value)
  %8954 = fsub fast float 1.000000e+00, %8953
  %8955 = fmul fast float %8924, %8954
  %8956 = fsub fast float -0.000000e+00, %8955
  %8957 = fdiv fast float %8956, %8927
  br label %8958

; <label>:8958                                    ; preds = %8951, %8947
  %8959 = phi float [ %8953, %8951 ], [ 1.000000e+00, %8947 ]
  %8960 = phi float [ %8957, %8951 ], [ %8924, %8947 ]
  %8961 = fcmp fast ogt float %8857, %8859
  br i1 %8961, label %8962, label %8982

; <label>:8962                                    ; preds = %8958
  %8963 = fsub fast float 1.000000e+00, %8859
  %8964 = fmul fast float %8875, %8963
  %8965 = fmul fast float %8876, %8963
  %8966 = fmul fast float %8877, %8963
  %8967 = fmul fast float %8878, %8963
  %8968 = fcmp fast une float %8967, 0.000000e+00
  br i1 %8968, label %8969, label %9020, !dx.controlflow.hints !178

; <label>:8969                                    ; preds = %8962
  %8970 = fmul fast float %8967, 0x3FF7154760000000
  %8971 = call float @dx.op.unary.f32(i32 21, float %8970)  ; Exp(value)
  %8972 = fsub fast float 1.000000e+00, %8971
  %8973 = fmul fast float %8964, %8972
  %8974 = fsub fast float -0.000000e+00, %8973
  %8975 = fmul fast float %8965, %8972
  %8976 = fsub fast float -0.000000e+00, %8975
  %8977 = fmul fast float %8966, %8972
  %8978 = fsub fast float -0.000000e+00, %8977
  %8979 = fdiv fast float %8974, %8967
  %8980 = fdiv fast float %8976, %8967
  %8981 = fdiv fast float %8978, %8967
  br label %9020

; <label>:8982                                    ; preds = %8958
  %8983 = fsub fast float 1.000000e+00, %8857
  %8984 = fmul fast float %8888, %8983
  %8985 = fmul fast float %8899, %8983
  %8986 = fmul fast float %8910, %8983
  %8987 = fmul fast float %8889, %8983
  %8988 = fmul fast float %8900, %8983
  %8989 = fmul fast float %8911, %8983
  %8990 = fcmp fast une float %8987, 0.000000e+00
  br i1 %8990, label %8991, label %8998, !dx.controlflow.hints !177

; <label>:8991                                    ; preds = %8982
  %8992 = fmul fast float %8987, 0x3FF7154760000000
  %8993 = call float @dx.op.unary.f32(i32 21, float %8992)  ; Exp(value)
  %8994 = fsub fast float 1.000000e+00, %8993
  %8995 = fmul fast float %8984, %8994
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = fdiv fast float %8996, %8987
  br label %8998

; <label>:8998                                    ; preds = %8991, %8982
  %8999 = phi float [ %8997, %8991 ], [ %8984, %8982 ]
  %9000 = phi float [ %8993, %8991 ], [ 1.000000e+00, %8982 ]
  %9001 = fcmp fast une float %8988, 0.000000e+00
  br i1 %9001, label %9002, label %9009, !dx.controlflow.hints !177

; <label>:9002                                    ; preds = %8998
  %9003 = fmul fast float %8988, 0x3FF7154760000000
  %9004 = call float @dx.op.unary.f32(i32 21, float %9003)  ; Exp(value)
  %9005 = fsub fast float 1.000000e+00, %9004
  %9006 = fmul fast float %8985, %9005
  %9007 = fsub fast float -0.000000e+00, %9006
  %9008 = fdiv fast float %9007, %8988
  br label %9009

; <label>:9009                                    ; preds = %9002, %8998
  %9010 = phi float [ %9008, %9002 ], [ %8985, %8998 ]
  %9011 = phi float [ %9004, %9002 ], [ 1.000000e+00, %8998 ]
  %9012 = fcmp fast une float %8989, 0.000000e+00
  br i1 %9012, label %9013, label %9020, !dx.controlflow.hints !177

; <label>:9013                                    ; preds = %9009
  %9014 = fmul fast float %8989, 0x3FF7154760000000
  %9015 = call float @dx.op.unary.f32(i32 21, float %9014)  ; Exp(value)
  %9016 = fsub fast float 1.000000e+00, %9015
  %9017 = fmul fast float %8986, %9016
  %9018 = fsub fast float -0.000000e+00, %9017
  %9019 = fdiv fast float %9018, %8989
  br label %9020

; <label>:9020                                    ; preds = %9013, %9009, %8969, %8962
  %9021 = phi float [ %9019, %9013 ], [ %8981, %8969 ], [ %8966, %8962 ], [ %8986, %9009 ]
  %9022 = phi float [ %9010, %9013 ], [ %8980, %8969 ], [ %8965, %8962 ], [ %9010, %9009 ]
  %9023 = phi float [ %8999, %9013 ], [ %8979, %8969 ], [ %8964, %8962 ], [ %8999, %9009 ]
  %9024 = phi float [ %9015, %9013 ], [ %8971, %8969 ], [ 1.000000e+00, %8962 ], [ 1.000000e+00, %9009 ]
  %9025 = phi float [ %9011, %9013 ], [ %8971, %8969 ], [ 1.000000e+00, %8962 ], [ %9011, %9009 ]
  %9026 = phi float [ %9000, %9013 ], [ %8971, %8969 ], [ 1.000000e+00, %8962 ], [ %9000, %9009 ]
  %9027 = fmul fast float %9026, %8938
  %9028 = fmul fast float %9025, %8949
  %9029 = fmul fast float %9024, %8960
  %9030 = fadd fast float %9027, %9023
  %9031 = fadd fast float %9028, %9022
  %9032 = fadd fast float %9029, %9021
  %9033 = fmul fast float %9026, %8937
  %9034 = fmul fast float %9025, %8948
  %9035 = fmul fast float %9024, %8959
  br label %9036

; <label>:9036                                    ; preds = %9020, %8831
  %9037 = phi float [ %9035, %9020 ], [ %8837, %8831 ]
  %9038 = phi float [ %9034, %9020 ], [ %8836, %8831 ]
  %9039 = phi float [ %9033, %9020 ], [ %8835, %8831 ]
  %9040 = phi float [ %9032, %9020 ], [ %8834, %8831 ]
  %9041 = phi float [ %9031, %9020 ], [ %8833, %8831 ]
  %9042 = phi float [ %9030, %9020 ], [ %8832, %8831 ]
  %9043 = fmul fast float %9042, %7988
  %9044 = fmul fast float %9041, %7988
  %9045 = fmul fast float %9040, %7988
  %9046 = fmul fast float %9039, %8279
  %9047 = call float @dx.op.dot3.f32(i32 55, float %9039, float %9038, float %9037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9048 = call float @dx.op.dot3.f32(i32 55, float %9043, float %9044, float %9045, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9049 = select i1 %260, float %9047, float %9039
  %9050 = select i1 %260, float %9047, float %9038
  %9051 = select i1 %260, float 1.000000e+00, float %9037
  %9052 = select i1 %260, float %9048, float %9043
  %9053 = select i1 %260, float 0.000000e+00, float %9044
  %9054 = select i1 %260, float 0.000000e+00, float %9045
  %9055 = fmul fast float %9049, %8273
  %9056 = fmul fast float %9050, %8274
  %9057 = fmul fast float %9051, %8275
  %9058 = fadd fast float %9055, %9052
  %9059 = fadd fast float %9056, %9053
  %9060 = fadd fast float %9054, %9057
  %9061 = fmul fast float %9049, %8276
  %9062 = fmul fast float %9050, %8277
  %9063 = fmul fast float %9051, %8278
  %9064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9065 = extractvalue %dx.types.CBufRet.i32 %9064, 0
  %9066 = icmp eq i32 %9065, 0
  br i1 %9066, label %9434, label %9067, !dx.controlflow.hints !179

; <label>:9067                                    ; preds = %9036
  %9068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9069 = extractvalue %dx.types.CBufRet.f32 %9068, 2
  %9070 = extractvalue %dx.types.CBufRet.f32 %9068, 3
  %9071 = fmul fast float %9069, %118
  %9072 = fmul fast float %9070, %119
  %9073 = fmul fast float %9071, 2.000000e+00
  %9074 = fmul fast float %9072, 2.000000e+00
  %9075 = fsub fast float 1.000000e+00, %9073
  %9076 = fsub fast float 1.000000e+00, %9074
  %9077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.f32 %9077, 0
  %9079 = extractvalue %dx.types.CBufRet.f32 %9077, 1
  %9080 = extractvalue %dx.types.CBufRet.f32 %9077, 2
  %9081 = fmul fast float %9075, %9078
  %9082 = fmul fast float %9075, %9079
  %9083 = fmul fast float %9075, %9080
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = fmul fast float %9076, %9085
  %9089 = fmul fast float %9076, %9086
  %9090 = fmul fast float %9076, %9087
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = fadd fast float %9088, %9092
  %9096 = fadd fast float %9095, %9081
  %9097 = fadd fast float %9089, %9093
  %9098 = fadd fast float %9097, %9082
  %9099 = fadd fast float %9090, %9094
  %9100 = fadd fast float %9099, %9083
  %9101 = fmul fast float %9096, %8272
  %9102 = fmul fast float %9098, %8272
  %9103 = fmul fast float %9100, %8272
  %9104 = fmul fast float %9101, %9101
  %9105 = fmul fast float %9102, %9102
  %9106 = fadd fast float %9104, %9105
  %9107 = fmul fast float %9103, %9103
  %9108 = fadd fast float %9106, %9107
  %9109 = call float @dx.op.unary.f32(i32 24, float %9108)  ; Sqrt(value)
  %9110 = extractvalue %dx.types.CBufRet.f32 %7999, 0
  %9111 = fsub fast float %9109, %9110
  %9112 = extractvalue %dx.types.CBufRet.f32 %7999, 2
  %9113 = fmul fast float %9111, %9112
  %9114 = call float @dx.op.unary.f32(i32 7, float %9113)  ; Saturate(value)
  %9115 = fadd fast float %9114, -5.000000e-01
  %9116 = fmul fast float %9115, 2.000000e+00
  %9117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9118 = extractvalue %dx.types.CBufRet.f32 %9117, 2
  %9119 = call float @dx.op.binary.f32(i32 36, float %9118, float %9116)  ; FMin(a,b)
  %9120 = fsub fast float -0.000000e+00, %9118
  %9121 = fcmp fast ogt float %9119, %9120
  br i1 %9121, label %9122, label %9434, !dx.controlflow.hints !180

; <label>:9122                                    ; preds = %9067
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 3
  %9125 = fcmp fast ogt float %9124, 0.000000e+00
  br i1 %9125, label %9126, label %9201, !dx.controlflow.hints !181

; <label>:9126                                    ; preds = %9122
  %9127 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9128 = extractvalue %dx.types.Dimensions %9127, 0
  %9129 = sitofp i32 %9128 to float
  %9130 = extractvalue %dx.types.Dimensions %9127, 1
  %9131 = sitofp i32 %9130 to float
  %9132 = fmul fast float %9071, %9129
  %9133 = fmul fast float %9072, %9131
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9136 = fsub fast float -0.000000e+00, %9135
  %9137 = fptoui float %9136 to i32
  %9138 = fptoui float %9132 to i32
  %9139 = fptoui float %9133 to i32
  %9140 = and i32 %9137, 31
  %9141 = lshr i32 %9138, %9140
  %9142 = lshr i32 %9139, %9140
  %9143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9137, i32 %9141, i32 %9142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9144 = extractvalue %dx.types.ResRet.f32 %9143, 0
  %9145 = fcmp fast olt float %9144, -1.000000e+00
  %9146 = fcmp fast ogt float %9144, -1.000000e+00
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 1
  %9149 = select i1 %9146, float %9148, float 1.000000e+00
  %9150 = fadd fast float %9144, 1.000000e+00
  %9151 = fmul fast float %9149, %9150
  %9152 = call float @dx.op.unary.f32(i32 6, float %9151)  ; FAbs(value)
  %9153 = extractvalue %dx.types.CBufRet.f32 %9147, 3
  %9154 = fcmp fast oge float %9152, %9153
  %9155 = select i1 %9154, float 0x4197782600000000, float %9152
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 0
  %9158 = extractvalue %dx.types.CBufRet.f32 %9156, 1
  %9159 = extractvalue %dx.types.CBufRet.f32 %9156, 2
  %9160 = select i1 %9145, float %9157, float %9078
  %9161 = select i1 %9145, float %9158, float %9079
  %9162 = select i1 %9145, float %9159, float %9080
  %9163 = fmul fast float %9160, %9075
  %9164 = fmul fast float %9161, %9075
  %9165 = fmul fast float %9162, %9075
  %9166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9167 = extractvalue %dx.types.CBufRet.f32 %9166, 0
  %9168 = extractvalue %dx.types.CBufRet.f32 %9166, 1
  %9169 = extractvalue %dx.types.CBufRet.f32 %9166, 2
  %9170 = select i1 %9145, float %9167, float %9085
  %9171 = select i1 %9145, float %9168, float %9086
  %9172 = select i1 %9145, float %9169, float %9087
  %9173 = fmul fast float %9170, %9076
  %9174 = fmul fast float %9171, %9076
  %9175 = fmul fast float %9172, %9076
  %9176 = fadd fast float %9173, %9163
  %9177 = fadd fast float %9174, %9164
  %9178 = fadd fast float %9175, %9165
  %9179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9180 = extractvalue %dx.types.CBufRet.f32 %9179, 0
  %9181 = extractvalue %dx.types.CBufRet.f32 %9179, 1
  %9182 = extractvalue %dx.types.CBufRet.f32 %9179, 2
  %9183 = select i1 %9145, float %9180, float %9092
  %9184 = select i1 %9145, float %9181, float %9093
  %9185 = select i1 %9145, float %9182, float %9094
  %9186 = fadd fast float %9176, %9183
  %9187 = fadd fast float %9177, %9184
  %9188 = fadd fast float %9178, %9185
  %9189 = fmul fast float %9186, %9155
  %9190 = fmul fast float %9187, %9155
  %9191 = fmul fast float %9188, %9155
  %9192 = fmul fast float %9189, %9189
  %9193 = fmul fast float %9190, %9190
  %9194 = fadd fast float %9192, %9193
  %9195 = fmul fast float %9191, %9191
  %9196 = fadd fast float %9194, %9195
  %9197 = call float @dx.op.unary.f32(i32 24, float %9196)  ; Sqrt(value)
  %9198 = fsub fast float %9197, %9110
  %9199 = fmul fast float %9198, %9112
  %9200 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  br label %9201

; <label>:9201                                    ; preds = %9126, %9122
  %9202 = phi float [ %9200, %9126 ], [ 1.000000e+00, %9122 ]
  %9203 = fmul fast float %9119, 5.000000e-01
  %9204 = fadd fast float %9203, 5.000000e-01
  %9205 = call float @dx.op.unary.f32(i32 22, float %9204)  ; Frc(value)
  %9206 = call float @dx.op.unary.f32(i32 27, float %9205)  ; Round_ni(value)
  %9207 = call float @dx.op.unary.f32(i32 22, float %9205)  ; Frc(value)
  %9208 = fmul fast float %9207, 2.000000e+00
  %9209 = fadd fast float %9208, -1.000000e+00
  %9210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %9071, float %9072, float %9206, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9211 = extractvalue %dx.types.ResRet.f32 %9210, 0
  %9212 = extractvalue %dx.types.ResRet.f32 %9210, 1
  %9213 = extractvalue %dx.types.ResRet.f32 %9210, 2
  %9214 = extractvalue %dx.types.ResRet.f32 %9210, 3
  %9215 = fadd fast float %9211, -5.000000e-01
  %9216 = fadd fast float %9213, -5.000000e-01
  %9217 = fmul fast float %9215, 0xBFD5555560000000
  %9218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9216, float %9217)  ; FMad(a,b,c)
  %9219 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9212, float 0.000000e+00)  ; FMad(a,b,c)
  %9220 = fadd fast float %9219, %9214
  %9221 = fmul fast float %9215, -7.500000e-01
  %9222 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9216, float %9221)  ; FMad(a,b,c)
  %9223 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9212, float 0.000000e+00)  ; FMad(a,b,c)
  %9224 = fadd fast float %9223, %9214
  %9225 = call float @dx.op.binary.f32(i32 35, float %9218, float -1.000000e+00)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 35, float %9220, float -1.000000e+00)  ; FMax(a,b)
  %9227 = call float @dx.op.binary.f32(i32 35, float %9222, float -1.000000e+00)  ; FMax(a,b)
  %9228 = call float @dx.op.binary.f32(i32 35, float %9224, float -1.000000e+00)  ; FMax(a,b)
  %9229 = call float @dx.op.binary.f32(i32 36, float %9225, float 1.000000e+00)  ; FMin(a,b)
  %9230 = call float @dx.op.binary.f32(i32 36, float %9226, float 1.000000e+00)  ; FMin(a,b)
  %9231 = call float @dx.op.binary.f32(i32 36, float %9227, float 1.000000e+00)  ; FMin(a,b)
  %9232 = call float @dx.op.binary.f32(i32 36, float %9228, float 1.000000e+00)  ; FMin(a,b)
  %9233 = fcmp fast olt float %9229, 0x3FEFFF8020000000
  br i1 %9233, label %9234, label %9349, !dx.controlflow.hints !182

; <label>:9234                                    ; preds = %9201
  %9235 = extractvalue %dx.types.CBufRet.f32 %9117, 3
  %9236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.CBufRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.CBufRet.f32 %9236, 2
  %9240 = extractvalue %dx.types.CBufRet.f32 %9236, 3
  %9241 = fsub fast float %9237, %9229
  %9242 = fsub fast float %9238, %9230
  %9243 = fsub fast float %9239, %9231
  %9244 = fsub fast float %9240, %9232
  %9245 = fmul fast float %9241, %9235
  %9246 = fmul fast float %9242, %9235
  %9247 = fmul fast float %9243, %9235
  %9248 = fmul fast float %9244, %9235
  %9249 = fadd fast float %9245, %9229
  %9250 = fadd fast float %9246, %9230
  %9251 = fsub fast float -0.000000e+00, %9250
  %9252 = fadd fast float %9247, %9231
  %9253 = fadd fast float %9248, %9232
  %9254 = fmul fast float %9249, %9249
  %9255 = fsub fast float %9250, %9254
  %9256 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9255)  ; FMax(a,b)
  %9257 = fdiv fast float 1.000000e+00, %9256
  %9258 = fmul fast float %9250, %9249
  %9259 = fsub fast float %9252, %9258
  %9260 = fsub fast float %9209, %9249
  %9261 = fmul fast float %9209, %9209
  %9262 = fsub fast float %9261, %9250
  %9263 = fmul fast float %9260, %9257
  %9264 = fmul fast float %9263, %9259
  %9265 = fsub fast float %9262, %9264
  %9266 = fmul fast float %9250, %9250
  %9267 = fsub fast float %9253, %9266
  %9268 = fmul fast float %9259, %9259
  %9269 = fmul fast float %9268, %9257
  %9270 = fsub fast float %9267, %9269
  %9271 = fdiv fast float %9265, %9270
  %9272 = fmul fast float %9259, %9271
  %9273 = fsub fast float %9260, %9272
  %9274 = fmul fast float %9273, %9257
  %9275 = fmul fast float %9274, %9249
  %9276 = fsub fast float 1.000000e+00, %9275
  %9277 = fmul fast float %9250, %9271
  %9278 = fsub fast float %9276, %9277
  %9279 = fmul fast float %9274, %9274
  %9280 = fmul fast float %9271, 4.000000e+00
  %9281 = fmul fast float %9280, %9278
  %9282 = fsub fast float %9279, %9281
  %9283 = call float @dx.op.unary.f32(i32 24, float %9282)  ; Sqrt(value)
  %9284 = fcmp fast oge float %9274, 0.000000e+00
  %9285 = fsub fast float -0.000000e+00, %9283
  %9286 = select i1 %9284, float %9285, float %9283
  %9287 = fsub fast float %9286, %9274
  %9288 = fdiv fast float %9287, %9271
  %9289 = fdiv fast float %9278, %9287
  %9290 = fmul fast float %9288, 5.000000e-01
  %9291 = fmul fast float %9289, 2.000000e+00
  %9292 = select i1 %9284, float %9290, float %9291
  %9293 = select i1 %9284, float %9291, float %9290
  %9294 = call float @dx.op.binary.f32(i32 35, float %9292, float %9293)  ; FMax(a,b)
  %9295 = call float @dx.op.binary.f32(i32 36, float %9292, float %9293)  ; FMin(a,b)
  %9296 = fcmp fast ogt float %9209, %9295
  br i1 %9296, label %9297, label %9307

; <label>:9297                                    ; preds = %9234
  %9298 = fsub fast float %9209, %9295
  %9299 = fsub fast float %9294, %9295
  %9300 = fmul fast float %9298, %9299
  %9301 = fmul fast float %9294, %9209
  %9302 = fadd fast float %9294, %9209
  %9303 = fmul fast float %9302, %9249
  %9304 = fadd fast float %9301, %9250
  %9305 = fsub fast float %9304, %9303
  %9306 = fdiv fast float %9305, %9300
  br label %9307

; <label>:9307                                    ; preds = %9297, %9234
  %9308 = phi float [ %9306, %9297 ], [ 0.000000e+00, %9234 ]
  %9309 = fcmp fast ogt float %9209, %9294
  %9310 = fsub fast float %9209, %9294
  br i1 %9309, label %9311, label %9321

; <label>:9311                                    ; preds = %9307
  %9312 = fsub fast float %9294, %9295
  %9313 = fmul fast float %9312, %9310
  %9314 = fmul fast float %9295, %9209
  %9315 = fadd fast float %9295, %9209
  %9316 = fmul fast float %9315, %9249
  %9317 = fsub fast float %9251, %9314
  %9318 = fadd fast float %9317, %9316
  %9319 = fdiv fast float %9318, %9313
  %9320 = fadd fast float %9319, %9308
  br label %9321

; <label>:9321                                    ; preds = %9311, %9307
  %9322 = phi float [ %9320, %9311 ], [ %9308, %9307 ]
  %9323 = fsub fast float %9209, %9295
  %9324 = fmul fast float %9323, %9310
  %9325 = fmul fast float %9295, %9294
  %9326 = fadd fast float %9295, %9294
  %9327 = fmul fast float %9326, %9249
  %9328 = fadd fast float %9325, %9250
  %9329 = fsub fast float %9328, %9327
  %9330 = fdiv fast float %9329, %9324
  %9331 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9332 = fcmp fast oeq float %8000, 0.000000e+00
  %9333 = extractvalue %dx.types.CBufRet.f32 %9117, 0
  %9334 = fcmp fast oeq float %9333, 0.000000e+00
  %9335 = or i1 %9332, %9334
  %9336 = fmul fast float %9333, 2.000000e+00
  %9337 = fadd fast float %9118, %9119
  %9338 = fdiv fast float %9337, %9336
  %9339 = call float @dx.op.unary.f32(i32 7, float %9338)  ; Saturate(value)
  %9340 = fmul fast float %9339, 2.000000e+00
  %9341 = fsub fast float 3.000000e+00, %9340
  %9342 = fmul fast float %9339, %9339
  %9343 = fmul fast float %9342, %9341
  %9344 = select i1 %9335, float 1.000000e+00, float %9343
  %9345 = fmul fast float %9330, %8000
  %9346 = fadd fast float %9331, %9345
  %9347 = call float @dx.op.unary.f32(i32 7, float %9346)  ; Saturate(value)
  %9348 = fmul fast float %9344, %9347
  br label %9349

; <label>:9349                                    ; preds = %9321, %9201
  %9350 = phi float [ %9348, %9321 ], [ 0.000000e+00, %9201 ]
  %9351 = fsub fast float 1.000000e+00, %9350
  %9352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %9071, float %9072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9353 = extractvalue %dx.types.ResRet.f32 %9352, 0
  %9354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9355 = extractvalue %dx.types.CBufRet.i32 %9354, 2
  %9356 = icmp eq i32 %9355, 0
  br i1 %9356, label %9362, label %9357

; <label>:9357                                    ; preds = %9349
  %9358 = call float @dx.op.unary.f32(i32 7, float %9350)  ; Saturate(value)
  %9359 = fadd fast float %9353, -1.000000e+00
  %9360 = fmul fast float %9358, %9359
  %9361 = fadd fast float %9360, 1.000000e+00
  br label %9362

; <label>:9362                                    ; preds = %9357, %9349
  %9363 = phi float [ %9361, %9357 ], [ %9351, %9349 ]
  br i1 %9125, label %9364, label %9382

; <label>:9364                                    ; preds = %9362
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 1
  %9367 = fsub fast float %9202, %9366
  %9368 = call float @dx.op.unary.f32(i32 7, float %9367)  ; Saturate(value)
  %9369 = fsub fast float %9202, %9124
  %9370 = call float @dx.op.unary.f32(i32 7, float %9369)  ; Saturate(value)
  %9371 = fsub fast float %9368, %9370
  %9372 = fsub fast float %9204, %9370
  %9373 = fdiv fast float %9372, %9371
  %9374 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9375 = fmul fast float %9374, 2.000000e+00
  %9376 = fsub fast float 3.000000e+00, %9375
  %9377 = fsub fast float %9353, %9363
  %9378 = fmul fast float %9374, %9374
  %9379 = fmul fast float %9378, %9377
  %9380 = fmul fast float %9379, %9376
  %9381 = fadd fast float %9380, %9363
  br label %9382

; <label>:9382                                    ; preds = %9364, %9362
  %9383 = phi float [ %9381, %9364 ], [ %9363, %9362 ]
  %9384 = call float @dx.op.binary.f32(i32 35, float %9353, float %9383)  ; FMax(a,b)
  %9385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.i32 %9385, 2
  %9387 = and i32 %9386, 1
  %9388 = icmp eq i32 %9387, 0
  %9389 = fcmp fast une float %9384, 1.000000e+00
  %9390 = and i1 %9389, %9388
  br i1 %9390, label %9391, label %9410

; <label>:9391                                    ; preds = %9382
  %9392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %9071, float %9072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9393 = extractvalue %dx.types.ResRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.ResRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.ResRet.f32 %9392, 2
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 1
  %9398 = fmul fast float %9397, %9393
  %9399 = fmul fast float %9397, %9394
  %9400 = fmul fast float %9397, %9395
  %9401 = fcmp fast ogt float %9353, 0x3FEFFF2E40000000
  %9402 = fsub fast float 1.000000e+00, %9384
  %9403 = fsub fast float 1.000000e+00, %9353
  %9404 = fdiv fast float %9402, %9403
  %9405 = call float @dx.op.unary.f32(i32 7, float %9404)  ; Saturate(value)
  %9406 = select i1 %9401, float 0.000000e+00, float %9405
  %9407 = fmul fast float %9398, %9406
  %9408 = fmul fast float %9399, %9406
  %9409 = fmul fast float %9400, %9406
  br label %9410

; <label>:9410                                    ; preds = %9391, %9382
  %9411 = phi float [ 0.000000e+00, %9382 ], [ %9407, %9391 ]
  %9412 = phi float [ 0.000000e+00, %9382 ], [ %9408, %9391 ]
  %9413 = phi float [ 0.000000e+00, %9382 ], [ %9409, %9391 ]
  %9414 = fmul fast float %9411, %7988
  %9415 = fmul fast float %9412, %7988
  %9416 = fmul fast float %9413, %7988
  %9417 = fmul fast float %9384, %9046
  %9418 = call float @dx.op.dot3.f32(i32 55, float %9384, float %9384, float %9384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9419 = call float @dx.op.dot3.f32(i32 55, float %9414, float %9415, float %9416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9420 = select i1 %260, float %9418, float %9384
  %9421 = select i1 %260, float 1.000000e+00, float %9384
  %9422 = select i1 %260, float %9419, float %9414
  %9423 = select i1 %260, float 0.000000e+00, float %9415
  %9424 = select i1 %260, float 0.000000e+00, float %9416
  %9425 = fmul fast float %9420, %9058
  %9426 = fmul fast float %9420, %9059
  %9427 = fmul fast float %9421, %9060
  %9428 = fadd fast float %9425, %9422
  %9429 = fadd fast float %9426, %9423
  %9430 = fadd fast float %9424, %9427
  %9431 = fmul fast float %9420, %9061
  %9432 = fmul fast float %9420, %9062
  %9433 = fmul fast float %9421, %9063
  br label %9434

; <label>:9434                                    ; preds = %9410, %9067, %9036, %8268
  %9435 = phi float [ %8273, %8268 ], [ %9058, %9036 ], [ %9428, %9410 ], [ %9058, %9067 ]
  %9436 = phi float [ %8274, %8268 ], [ %9059, %9036 ], [ %9429, %9410 ], [ %9059, %9067 ]
  %9437 = phi float [ %8275, %8268 ], [ %9060, %9036 ], [ %9430, %9410 ], [ %9060, %9067 ]
  %9438 = phi float [ %8276, %8268 ], [ %9061, %9036 ], [ %9431, %9410 ], [ %9061, %9067 ]
  %9439 = phi float [ %8277, %8268 ], [ %9062, %9036 ], [ %9432, %9410 ], [ %9062, %9067 ]
  %9440 = phi float [ %8278, %8268 ], [ %9063, %9036 ], [ %9433, %9410 ], [ %9063, %9067 ]
  %9441 = phi float [ %8279, %8268 ], [ %9046, %9036 ], [ %9417, %9410 ], [ %9046, %9067 ]
  %9442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9443 = extractvalue %dx.types.CBufRet.f32 %9442, 2
  %9444 = extractvalue %dx.types.CBufRet.f32 %9442, 3
  %9445 = fmul fast float %9443, %118
  %9446 = fmul fast float %9444, %119
  %9447 = call float @dx.op.unary.f32(i32 7, float %9445)  ; Saturate(value)
  %9448 = call float @dx.op.unary.f32(i32 7, float %9446)  ; Saturate(value)
  %9449 = select i1 %8010, i32 2, i32 0
  %9450 = or i32 %9449, 1
  %9451 = uitofp i32 %9450 to float
  %9452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9447, float %9448, float %9451, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9453 = extractvalue %dx.types.ResRet.f32 %9452, 0
  %9454 = extractvalue %dx.types.ResRet.f32 %9452, 1
  %9455 = extractvalue %dx.types.ResRet.f32 %9452, 2
  %9456 = extractvalue %dx.types.ResRet.f32 %9452, 3
  %9457 = add nuw nsw i32 %9449, 2
  %9458 = uitofp i32 %9457 to float
  %9459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %9447, float %9448, float %9458, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9460 = extractvalue %dx.types.ResRet.f32 %9459, 0
  %9461 = extractvalue %dx.types.ResRet.f32 %9459, 1
  %9462 = extractvalue %dx.types.ResRet.f32 %9459, 2
  %9463 = extractvalue %dx.types.ResRet.f32 %9459, 3
  %9464 = call float @dx.op.binary.f32(i32 35, float %9454, float %9455)  ; FMax(a,b)
  %9465 = call float @dx.op.binary.f32(i32 35, float %9453, float %9464)  ; FMax(a,b)
  %9466 = call float @dx.op.binary.f32(i32 35, float %9465, float %9456)  ; FMax(a,b)
  %9467 = call float @dx.op.binary.f32(i32 36, float %9461, float %9462)  ; FMin(a,b)
  %9468 = call float @dx.op.binary.f32(i32 36, float %9460, float %9467)  ; FMin(a,b)
  %9469 = call float @dx.op.binary.f32(i32 36, float %9468, float %9463)  ; FMin(a,b)
  %9470 = fmul fast float %9466, 2.550000e+02
  %9471 = fadd fast float %9470, 0x3F70101020000000
  %9472 = fptoui float %9471 to i32
  %9473 = fmul fast float %9469, 2.550000e+02
  %9474 = fadd fast float %9473, 0x3F70101020000000
  %9475 = fptoui float %9474 to i32
  %9476 = icmp ult i32 %9472, %9475
  br i1 %9476, label %9477, label %9646

; <label>:9477                                    ; preds = %9434
  %9478 = fcmp fast ogt float %104, 9.843750e-01
  %9479 = fadd fast float %8272, -4.000000e+00
  %9480 = select i1 %9478, float -4.000000e+00, float %9479
  %9481 = call float @dx.op.binary.f32(i32 35, float %9480, float 0.000000e+00)  ; FMax(a,b)
  %9482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9482, 0
  %9484 = fadd fast float %9483, %9481
  %9485 = extractvalue %dx.types.CBufRet.f32 %9482, 2
  %9486 = fmul fast float %9484, %9485
  %9487 = call float @dx.op.unary.f32(i32 23, float %9486)  ; Log(value)
  %9488 = extractvalue %dx.types.CBufRet.f32 %9482, 3
  %9489 = fmul fast float %9488, %9487
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9492 = fmul fast float %9489, %9491
  %9493 = call float @dx.op.unary.f32(i32 7, float %9492)  ; Saturate(value)
  %9494 = uitofp i32 %9472 to float
  %9495 = uitofp i32 %9475 to float
  %9496 = fadd fast float %9494, 5.000000e-01
  %9497 = fadd fast float %9495, 5.000000e-01
  %9498 = fmul fast float %9491, %9496
  %9499 = fmul fast float %9491, %9497
  %9500 = fadd fast float %9498, 0x3F0FFB4800000000
  %9501 = fadd fast float %9499, 0xBF0FFB4800000000
  %9502 = call float @dx.op.binary.f32(i32 35, float %9493, float %9500)  ; FMax(a,b)
  %9503 = call float @dx.op.binary.f32(i32 36, float %9502, float %9501)  ; FMin(a,b)
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 1
  %9506 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9507 = extractvalue %dx.types.CBufRet.f32 %9504, 0
  %9508 = select i1 %8010, float %9507, float 0.000000e+00
  %9509 = fmul fast float %9505, %9503
  %9510 = fadd fast float %9508, %9509
  %9511 = fadd fast float %9508, %9506
  %9512 = fsub fast float %9505, %9506
  %9513 = fadd fast float %9512, %9508
  %9514 = call float @dx.op.binary.f32(i32 35, float %9510, float %9511)  ; FMax(a,b)
  %9515 = call float @dx.op.binary.f32(i32 36, float %9514, float %9513)  ; FMin(a,b)
  %9516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %9447, float %9448, float %9515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9517 = extractvalue %dx.types.ResRet.f32 %9516, 0
  %9518 = extractvalue %dx.types.ResRet.f32 %9516, 1
  %9519 = extractvalue %dx.types.ResRet.f32 %9516, 2
  %9520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.i32 %9520, 0
  %9522 = extractvalue %dx.types.CBufRet.i32 %9520, 1
  %9523 = uitofp i32 %9521 to float
  %9524 = uitofp i32 %9522 to float
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 0
  %9527 = extractvalue %dx.types.CBufRet.f32 %9525, 1
  %9528 = fmul fast float %9523, %9447
  %9529 = fmul fast float %9524, %9448
  %9530 = fadd fast float %9528, -5.000000e-01
  %9531 = fadd fast float %9529, -5.000000e-01
  %9532 = call float @dx.op.unary.f32(i32 22, float %9530)  ; Frc(value)
  %9533 = call float @dx.op.unary.f32(i32 22, float %9531)  ; Frc(value)
  %9534 = fmul fast float %9532, %9532
  %9535 = fmul fast float %9534, %9532
  %9536 = fsub fast float 3.000000e+00, %9532
  %9537 = fmul fast float %9534, %9536
  %9538 = fmul fast float %9532, 3.000000e+00
  %9539 = fmul fast float %9535, 3.000000e+00
  %9540 = fmul fast float %9534, 6.000000e+00
  %9541 = fsub fast float %9539, %9540
  %9542 = fadd fast float %9541, 4.000000e+00
  %9543 = fmul fast float %9542, 0x3FC5555560000000
  %9544 = fmul fast float %9535, -3.000000e+00
  %9545 = fadd fast float %9534, %9532
  %9546 = fmul fast float %9545, 3.000000e+00
  %9547 = fadd fast float %9544, 1.000000e+00
  %9548 = fadd fast float %9547, %9546
  %9549 = fmul fast float %9535, 0x3FC5555560000000
  %9550 = fmul fast float %9533, %9533
  %9551 = fmul fast float %9550, %9533
  %9552 = fsub fast float 3.000000e+00, %9533
  %9553 = fmul fast float %9550, %9552
  %9554 = fmul fast float %9533, 3.000000e+00
  %9555 = fmul fast float %9551, 3.000000e+00
  %9556 = fmul fast float %9550, 6.000000e+00
  %9557 = fsub fast float %9555, %9556
  %9558 = fadd fast float %9557, 4.000000e+00
  %9559 = fmul fast float %9558, 0x3FC5555560000000
  %9560 = fmul fast float %9551, -3.000000e+00
  %9561 = fadd fast float %9550, %9533
  %9562 = fmul fast float %9561, 3.000000e+00
  %9563 = fadd fast float %9560, 1.000000e+00
  %9564 = fadd fast float %9563, %9562
  %9565 = fmul fast float %9551, 0x3FC5555560000000
  %9566 = fadd fast float %9532, 1.000000e+00
  %9567 = fsub fast float 1.000000e+00, %9538
  %9568 = fadd fast float %9567, %9537
  %9569 = fadd fast float %9568, %9542
  %9570 = fmul fast float %9569, 0x3FC5555560000000
  %9571 = fdiv fast float %9543, %9570
  %9572 = fsub fast float %9566, %9571
  %9573 = fsub fast float 1.000000e+00, %9532
  %9574 = fadd fast float %9548, %9535
  %9575 = fmul fast float %9574, 0x3FC5555560000000
  %9576 = fdiv fast float %9549, %9575
  %9577 = fadd fast float %9573, %9576
  %9578 = fadd fast float %9533, 1.000000e+00
  %9579 = fsub fast float 1.000000e+00, %9554
  %9580 = fadd fast float %9579, %9553
  %9581 = fadd fast float %9580, %9558
  %9582 = fmul fast float %9581, 0x3FC5555560000000
  %9583 = fdiv fast float %9559, %9582
  %9584 = fsub fast float %9578, %9583
  %9585 = fsub fast float 1.000000e+00, %9533
  %9586 = fadd fast float %9564, %9551
  %9587 = fmul fast float %9586, 0x3FC5555560000000
  %9588 = fdiv fast float %9565, %9587
  %9589 = fadd fast float %9588, %9585
  %9590 = fmul fast float %9572, %9526
  %9591 = fsub fast float %9447, %9590
  %9592 = fmul fast float %9577, %9526
  %9593 = fadd fast float %9592, %9447
  %9594 = fmul fast float %9589, %9527
  %9595 = fadd fast float %9594, %9448
  %9596 = fmul fast float %9584, %9527
  %9597 = fsub fast float %9448, %9596
  %9598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9591, float %9597, float %9515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9599 = extractvalue %dx.types.ResRet.f32 %9598, 0
  %9600 = extractvalue %dx.types.ResRet.f32 %9598, 1
  %9601 = extractvalue %dx.types.ResRet.f32 %9598, 2
  %9602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9593, float %9597, float %9515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9603 = extractvalue %dx.types.ResRet.f32 %9602, 0
  %9604 = extractvalue %dx.types.ResRet.f32 %9602, 1
  %9605 = extractvalue %dx.types.ResRet.f32 %9602, 2
  %9606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9591, float %9595, float %9515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9607 = extractvalue %dx.types.ResRet.f32 %9606, 0
  %9608 = extractvalue %dx.types.ResRet.f32 %9606, 1
  %9609 = extractvalue %dx.types.ResRet.f32 %9606, 2
  %9610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %9593, float %9595, float %9515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9611 = extractvalue %dx.types.ResRet.f32 %9610, 0
  %9612 = extractvalue %dx.types.ResRet.f32 %9610, 1
  %9613 = extractvalue %dx.types.ResRet.f32 %9610, 2
  %9614 = fsub fast float %9607, %9599
  %9615 = fsub fast float %9608, %9600
  %9616 = fsub fast float %9609, %9601
  %9617 = fmul fast float %9614, %9587
  %9618 = fmul fast float %9615, %9587
  %9619 = fmul fast float %9616, %9587
  %9620 = fadd fast float %9617, %9599
  %9621 = fadd fast float %9618, %9600
  %9622 = fadd fast float %9619, %9601
  %9623 = fsub fast float %9611, %9603
  %9624 = fsub fast float %9612, %9604
  %9625 = fsub fast float %9613, %9605
  %9626 = fmul fast float %9623, %9587
  %9627 = fmul fast float %9624, %9587
  %9628 = fmul fast float %9625, %9587
  %9629 = fsub fast float %9603, %9620
  %9630 = fadd fast float %9629, %9626
  %9631 = fsub fast float %9604, %9621
  %9632 = fadd fast float %9631, %9627
  %9633 = fsub fast float %9605, %9622
  %9634 = fadd fast float %9633, %9628
  %9635 = fmul fast float %9630, %9575
  %9636 = fmul fast float %9632, %9575
  %9637 = fmul fast float %9634, %9575
  %9638 = fadd fast float %9635, %9620
  %9639 = fadd fast float %9636, %9621
  %9640 = fadd fast float %9637, %9622
  %9641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9642 = extractvalue %dx.types.CBufRet.f32 %9641, 1
  %9643 = fmul fast float %9638, %9642
  %9644 = fmul fast float %9639, %9642
  %9645 = fmul fast float %9640, %9642
  br label %9646

; <label>:9646                                    ; preds = %9477, %9434
  %9647 = phi float [ %9517, %9477 ], [ 1.000000e+00, %9434 ]
  %9648 = phi float [ %9518, %9477 ], [ 1.000000e+00, %9434 ]
  %9649 = phi float [ %9519, %9477 ], [ 1.000000e+00, %9434 ]
  %9650 = phi float [ %9643, %9477 ], [ 0.000000e+00, %9434 ]
  %9651 = phi float [ %9644, %9477 ], [ 0.000000e+00, %9434 ]
  %9652 = phi float [ %9645, %9477 ], [ 0.000000e+00, %9434 ]
  %9653 = fmul fast float %9650, %7988
  %9654 = fmul fast float %9651, %7988
  %9655 = fmul fast float %9652, %7988
  %9656 = fmul fast float %9647, %9441
  %9657 = call float @dx.op.dot3.f32(i32 55, float %9647, float %9648, float %9649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9658 = call float @dx.op.dot3.f32(i32 55, float %9653, float %9654, float %9655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9659 = select i1 %260, float %9657, float %9647
  %9660 = select i1 %260, float %9657, float %9648
  %9661 = select i1 %260, float 1.000000e+00, float %9649
  %9662 = select i1 %260, float %9658, float %9653
  %9663 = select i1 %260, float 0.000000e+00, float %9654
  %9664 = select i1 %260, float 0.000000e+00, float %9655
  %9665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.i32 %9665, 3
  %9667 = and i32 %9666, 3
  %9668 = icmp ne i32 %9667, 0
  %9669 = and i32 %9666, 4
  %9670 = icmp ne i32 %9669, 0
  %9671 = and i1 %9668, %9670
  %9672 = and i1 %260, %9671
  br i1 %9672, label %9673, label %9679

; <label>:9673                                    ; preds = %9646
  %9674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.f32 %9674, 1
  %9676 = fadd fast float %9656, -1.000000e+00
  %9677 = fmul fast float %9675, %9676
  %9678 = fadd fast float %9677, 1.000000e+00
  br label %9679

; <label>:9679                                    ; preds = %9673, %9646
  %9680 = phi float [ %9678, %9673 ], [ %9656, %9646 ]
  %9681 = fadd fast float %9438, %9435
  %9682 = fmul fast float %9659, %9681
  %9683 = fadd fast float %9682, %9662
  %9684 = fadd fast float %9439, %9436
  %9685 = fmul fast float %9660, %9684
  %9686 = fadd fast float %9685, %9663
  %9687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9688 = extractvalue %dx.types.CBufRet.f32 %9687, 0
  br i1 %260, label %9689, label %9713

; <label>:9689                                    ; preds = %9679
  %9690 = fadd fast float %9683, %9686
  %9691 = fmul fast float %9688, %9690
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 3
  %9694 = extractvalue %dx.types.CBufRet.f32 %7992, 1
  %9695 = fsub fast float %7997, %7991
  %9696 = fadd fast float %9695, %7998
  %9697 = fsub fast float %9696, %9694
  %9698 = extractvalue %dx.types.CBufRet.f32 %7992, 2
  %9699 = fmul fast float %9697, %9698
  %9700 = call float @dx.op.unary.f32(i32 7, float %9699)  ; Saturate(value)
  %9701 = fsub fast float %9700, %9693
  %9702 = fmul fast float %9701, %9680
  %9703 = fadd fast float %9702, %9693
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = fsub fast float %9703, %9705
  %9707 = fmul fast float %9706, 1.000000e+01
  %9708 = call float @dx.op.unary.f32(i32 7, float %9707)  ; Saturate(value)
  %9709 = fsub fast float %1251, %7988
  %9710 = fmul fast float %9708, %9709
  %9711 = fadd fast float %9710, %7988
  %9712 = fmul fast float %9711, %9703
  br label %9737

; <label>:9713                                    ; preds = %9679
  %9714 = fadd fast float %9440, %9437
  %9715 = fmul fast float %9661, %9714
  %9716 = fadd fast float %9715, %9664
  %9717 = fmul fast float %9688, %9683
  %9718 = fmul fast float %9688, %9686
  %9719 = fmul fast float %9688, %9716
  %9720 = call float @dx.op.binary.f32(i32 35, float %9718, float %9719)  ; FMax(a,b)
  %9721 = call float @dx.op.binary.f32(i32 35, float %9717, float %9720)  ; FMax(a,b)
  %9722 = call float @dx.op.binary.f32(i32 35, float %9721, float %7988)  ; FMax(a,b)
  %9723 = fcmp fast ugt float %9722, 0x3F10000000000000
  br i1 %9723, label %9725, label %9724

; <label>:9724                                    ; preds = %9713
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9725

; <label>:9725                                    ; preds = %9724, %9713
  %9726 = add i32 %58, 356
  %9727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %9726, i32 undef)  ; BufferLoad(srv,index,wot)
  %9728 = extractvalue %dx.types.ResRet.i32 %9727, 0
  %9729 = and i32 %9728, 32
  %9730 = icmp eq i32 %9729, 0
  br i1 %9730, label %9737, label %9731

; <label>:9731                                    ; preds = %9725
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 0
  %9734 = fmul fast float %9733, 0x3FE99999A0000000
  %9735 = fadd fast float %9733, %9717
  %9736 = fadd fast float %9734, %9719
  br label %9737

; <label>:9737                                    ; preds = %9731, %9725, %9689
  %9738 = phi float [ %9691, %9689 ], [ %9735, %9731 ], [ %9717, %9725 ]
  %9739 = phi float [ %9712, %9689 ], [ %9718, %9731 ], [ %9718, %9725 ]
  %9740 = phi float [ %9711, %9689 ], [ %9736, %9731 ], [ %9719, %9725 ]
  %9741 = phi float [ %9711, %9689 ], [ %7988, %9731 ], [ %7988, %9725 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9738, float 3.225500e+04)  ; FMin(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9739, float 3.225500e+04)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 36, float %9740, float 3.225500e+04)  ; FMin(a,b)
  %9745 = call float @dx.op.binary.f32(i32 36, float %9741, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9742)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9743)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9744)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9745)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!69}
!dx.entryPoints = !{!70}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
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
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[62 x i32] [i32 60, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 3, i32 3, i32 3, i32 15, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 0, i32 15, i32 0, i32 0, i32 0]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !98}
!71 = !{!72, !96, null}
!72 = !{!73, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !94, !95}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"COLOR", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 1, i8 0, !75}
!77 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 2, i8 0, !78}
!78 = !{i32 3, i32 3}
!79 = !{i32 3, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 3, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 4, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"SH_RED", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 7, i8 0, !75}
!85 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 8, i8 0, !80}
!86 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 9, i8 0, !75}
!87 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 10, i8 0, !78}
!88 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 11, i8 0, !75}
!89 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 12, i8 0, !75}
!90 = !{i32 13, !"ENTITY_IDS", i8 5, i8 0, !74, i8 1, i32 1, i8 2, i32 13, i8 0, !91}
!91 = !{i32 3, i32 2}
!92 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !74, i8 1, i32 1, i8 4, i32 14, i8 0, !93}
!93 = !{i32 3, i32 1}
!94 = !{i32 15, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 13, i8 2, !93}
!95 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!96 = !{!97}
!97 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!98 = !{i32 0, i64 16}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !109, i64 0}
!123 = distinct !{!123, !101}
!124 = distinct !{!124, !101}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
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
!136 = !{!137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!137 = distinct !{!137, !138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!138 = distinct !{!138, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!139 = distinct !{!139, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!140 = distinct !{!140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!141 = distinct !{!141, !140, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!150 = distinct !{!150, !151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!151 = distinct !{!151, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!152 = !{!153}
!153 = distinct !{!153, !154, !"\01?sort@@YAXAIAM00@Z: %c"}
!154 = distinct !{!154, !"\01?sort@@YAXAIAM00@Z"}
!155 = !{!156, !157, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!156 = distinct !{!156, !154, !"\01?sort@@YAXAIAM00@Z: %a"}
!157 = distinct !{!157, !154, !"\01?sort@@YAXAIAM00@Z: %b"}
!158 = !{!157}
!159 = !{!156, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!160 = !{!156}
!161 = !{!157, !153, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!162 = !{!163}
!163 = distinct !{!163, !164, !"\01?sort@@YAXAIAM00@Z: %c"}
!164 = distinct !{!164, !"\01?sort@@YAXAIAM00@Z"}
!165 = !{!166, !167, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!166 = distinct !{!166, !164, !"\01?sort@@YAXAIAM00@Z: %a"}
!167 = distinct !{!167, !164, !"\01?sort@@YAXAIAM00@Z: %b"}
!168 = !{!167}
!169 = !{!166, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!170 = !{!166}
!171 = !{!167, !163, !137, !139, !141, !142, !144, !145, !146, !148, !149, !150}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 2}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}
!176 = distinct !{!176, !"dx.controlflow.hints", i32 1}
!177 = distinct !{!177, !"dx.controlflow.hints", i32 1}
!178 = distinct !{!178, !"dx.controlflow.hints", i32 1}
!179 = distinct !{!179, !"dx.controlflow.hints", i32 1}
!180 = distinct !{!180, !"dx.controlflow.hints", i32 1}
!181 = distinct !{!181, !"dx.controlflow.hints", i32 1}
!182 = distinct !{!182, !"dx.controlflow.hints", i32 1}

