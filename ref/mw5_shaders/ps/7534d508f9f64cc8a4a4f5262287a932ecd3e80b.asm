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
; shader hash: fec10a9fa0370229ecde772a81b8a154
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
  %454 = add i32 %60, 504
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
  %714 = add i32 %60, 456
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
  %1054 = add i32 %60, 472
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
  %1100 = add i32 %60, 488
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
  %1261 = add i32 %60, 444
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
  %1313 = add i32 %60, 428
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
  %1339 = add i32 %60, 380
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
  %1362 = add i32 %60, 460
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
  %1560 = add i32 %60, 396
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
  %1644 = add i32 %60, 412
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
  %1702 = add i32 %60, 476
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
  %1748 = add i32 %60, 492
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
  %2149 = add i32 %60, 448
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
  %2201 = add i32 %60, 432
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
  %2227 = add i32 %60, 384
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
  %2250 = add i32 %60, 464
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
  %2448 = add i32 %60, 400
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
  %2532 = add i32 %60, 416
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
  %2590 = add i32 %60, 480
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
  %2636 = add i32 %60, 496
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
  %3037 = add i32 %60, 452
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
  %3089 = add i32 %60, 436
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
  %3115 = add i32 %60, 388
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
  %3138 = add i32 %60, 468
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
  %3336 = add i32 %60, 404
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
  %3420 = add i32 %60, 420
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
  %3478 = add i32 %60, 484
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
  %3524 = add i32 %60, 500
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
  %3811 = add i32 %60, 360
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = bitcast i32 %3813 to float
  %3815 = fcmp fast oge float %3814, 0.000000e+00
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = select i1 %3815, float %3814, float %3817
  %3819 = call float @dx.op.dot2.f32(i32 54, float %3795, float %3796, float %3795, float %3796)  ; Dot2(ax,ay,bx,by)
  %3820 = fmul fast float %3819, 0x3FE3333340000000
  %3821 = fsub fast float 1.000000e+00, %3820
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3795, float %3796, float %3821, float %3795, float %3796, float %3821)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call float @dx.op.unary.f32(i32 25, float %3822)  ; Rsqrt(value)
  %3824 = fmul fast float %3823, %3795
  %3825 = fmul fast float %3823, %3796
  %3826 = fmul fast float %3821, %3823
  %3827 = fmul fast float %3826, %121
  %3828 = fmul fast float %3826, %122
  %3829 = fmul fast float %3826, %123
  %3830 = fmul fast float %3824, %85
  %3831 = fmul fast float %3824, %86
  %3832 = fmul fast float %3824, %87
  %3833 = fadd fast float %3827, %3830
  %3834 = fadd fast float %3828, %3831
  %3835 = fadd fast float %3829, %3832
  %3836 = fmul fast float %133, %3825
  %3837 = fmul fast float %134, %3825
  %3838 = fmul fast float %135, %3825
  %3839 = fadd fast float %3833, %3836
  %3840 = fadd fast float %3834, %3837
  %3841 = fadd fast float %3835, %3838
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float %3839, float %3840, float %3841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3839, %3843
  %3845 = fmul fast float %3840, %3843
  %3846 = fmul fast float %3841, %3843
  %3847 = icmp eq i32 %61, 65535
  br i1 %3847, label %4397, label %3848

; <label>:3848                                    ; preds = %3794
  %3849 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3850 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3851 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3852 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3853 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3854 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3855 = fadd fast float %3849, %62
  %3856 = fadd fast float %3850, %63
  %3857 = fadd fast float %3851, %64
  %3858 = fadd fast float %3852, %62
  %3859 = fadd fast float %3853, %63
  %3860 = fadd fast float %3854, %64
  %3861 = mul i32 %61, 48
  %3862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3866 = add i32 %3861, 16
  %3867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3866, i32 undef)  ; BufferLoad(srv,index,wot)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  %3871 = add i32 %3861, 32
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = bitcast float %3876 to i32
  %3878 = fmul fast float %3863, %62
  %3879 = fmul fast float %3864, %63
  %3880 = fmul fast float %3865, %64
  %3881 = fsub fast float %3878, %3868
  %3882 = fsub fast float %3879, %3869
  %3883 = fsub fast float %3880, %3870
  %3884 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3885 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3886 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3887 = fmul fast float %3884, %3873
  %3888 = fmul fast float %3885, %3874
  %3889 = fmul fast float %3886, %3875
  %3890 = fadd fast float %3873, -1.000000e+00
  %3891 = fadd fast float %3874, -1.000000e+00
  %3892 = fadd fast float %3875, -1.000000e+00
  %3893 = call float @dx.op.unary.f32(i32 27, float %3887)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3895 = call float @dx.op.unary.f32(i32 27, float %3889)  ; Round_ni(value)
  %3896 = call float @dx.op.binary.f32(i32 36, float %3893, float %3890)  ; FMin(a,b)
  %3897 = call float @dx.op.binary.f32(i32 36, float %3894, float %3891)  ; FMin(a,b)
  %3898 = call float @dx.op.binary.f32(i32 36, float %3895, float %3892)  ; FMin(a,b)
  %3899 = fmul fast float %3898, %3874
  %3900 = fadd fast float %3899, %3897
  %3901 = fmul fast float %3900, %3873
  %3902 = fadd fast float %3901, %3896
  %3903 = fptosi float %3902 to i32
  %3904 = add nsw i32 %3903, %3877
  %3905 = shl nsw i32 %3904, 2
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = lshr i32 %3907, 16
  %3909 = icmp eq i32 %3908, 0
  br i1 %3909, label %4362, label %3910

; <label>:3910                                    ; preds = %3848
  br label %3911

; <label>:3911                                    ; preds = %4036, %3910
  %3912 = phi i32 [ %3938, %4036 ], [ %3908, %3910 ]
  %3913 = phi float [ %4037, %4036 ], [ 0.000000e+00, %3910 ]
  %3914 = phi float [ %4038, %4036 ], [ %1142, %3910 ]
  %3915 = phi float [ %4039, %4036 ], [ %3818, %3910 ]
  %3916 = phi float [ %4040, %4036 ], [ %3810, %3910 ]
  %3917 = phi float [ %4041, %4036 ], [ %3803, %3910 ]
  %3918 = phi float [ %4042, %4036 ], [ %3804, %3910 ]
  %3919 = phi float [ %4043, %4036 ], [ %3805, %3910 ]
  %3920 = phi float [ %4044, %4036 ], [ 0.000000e+00, %3910 ]
  %3921 = phi float [ %4045, %4036 ], [ 0.000000e+00, %3910 ]
  %3922 = phi float [ %4046, %4036 ], [ %3800, %3910 ]
  %3923 = phi float [ %4047, %4036 ], [ %3801, %3910 ]
  %3924 = phi float [ %4048, %4036 ], [ %3802, %3910 ]
  %3925 = phi float [ %4049, %4036 ], [ %3844, %3910 ]
  %3926 = phi float [ %4050, %4036 ], [ %3845, %3910 ]
  %3927 = phi float [ %4051, %4036 ], [ %3846, %3910 ]
  %3928 = phi float [ %4052, %4036 ], [ %3808, %3910 ]
  %3929 = phi float [ %4053, %4036 ], [ %3807, %3910 ]
  %3930 = phi float [ %4054, %4036 ], [ 0.000000e+00, %3910 ]
  %3931 = phi float [ %4055, %4036 ], [ %3806, %3910 ]
  %3932 = phi float [ %4056, %4036 ], [ %3797, %3910 ]
  %3933 = phi float [ %4057, %4036 ], [ %3798, %3910 ]
  %3934 = phi float [ %4058, %4036 ], [ %3799, %3910 ]
  %3935 = shl nuw nsw i32 %3912, 2
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = lshr i32 %3937, 16
  %3939 = shl i32 %3937, 8
  %3940 = and i32 %3939, 16776960
  %3941 = or i32 %3940, 48
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = or i32 %3940, 64
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.i32 %3947, 1
  %3950 = or i32 %3940, 80
  %3951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 3
  %3954 = or i32 %3940, 96
  %3955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.f32 %3955, 0
  %3957 = extractvalue %dx.types.ResRet.f32 %3955, 1
  %3958 = extractvalue %dx.types.ResRet.f32 %3955, 2
  %3959 = extractvalue %dx.types.ResRet.f32 %3955, 3
  %3960 = or i32 %3940, 112
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 2
  %3963 = or i32 %3940, 128
  %3964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = extractvalue %dx.types.ResRet.f32 %3964, 3
  %3969 = or i32 %3940, 144
  %3970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = extractvalue %dx.types.ResRet.f32 %3970, 1
  %3973 = extractvalue %dx.types.ResRet.f32 %3970, 2
  %3974 = extractvalue %dx.types.ResRet.f32 %3970, 3
  %3975 = or i32 %3940, 160
  %3976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = or i32 %3940, 192
  %3982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.i32 %3982, 0
  %3984 = or i32 %3940, 208
  %3985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3984, i32 undef)  ; BufferLoad(srv,index,wot)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = or i32 %3940, 248
  %3988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.f32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.f32 %3988, 1
  %3991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3992 = extractvalue %dx.types.ResRet.f32 %3991, 0
  %3993 = extractvalue %dx.types.ResRet.f32 %3991, 1
  %3994 = extractvalue %dx.types.ResRet.f32 %3991, 2
  %3995 = extractvalue %dx.types.ResRet.f32 %3991, 3
  %3996 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3997 = or i32 %3940, 16
  %3998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.ResRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.ResRet.f32 %3998, 2
  %4002 = extractvalue %dx.types.ResRet.f32 %3998, 3
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3999, float %4000, float %4001, float %4002, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = or i32 %3940, 32
  %4005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = extractvalue %dx.types.ResRet.f32 %4005, 3
  %4010 = call float @dx.op.dot4.f32(i32 56, float %4006, float %4007, float %4008, float %4009, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4011 = call float @dx.op.unary.f32(i32 27, float %3996)  ; Round_ni(value)
  %4012 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4013 = call float @dx.op.unary.f32(i32 27, float %4003)  ; Round_ni(value)
  %4014 = call float @dx.op.unary.f32(i32 6, float %4013)  ; FAbs(value)
  %4015 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4016 = call float @dx.op.unary.f32(i32 27, float %4015)  ; Round_ni(value)
  %4017 = fadd fast float %4014, %4012
  %4018 = fadd fast float %4017, %4016
  %4019 = fcmp fast oeq float %4018, 0.000000e+00
  %4020 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %3855, float %3856, float %3857, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4021 = call float @dx.op.dot4.f32(i32 56, float %3999, float %4000, float %4001, float %4002, float %3855, float %3856, float %3857, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4022 = call float @dx.op.dot4.f32(i32 56, float %3992, float %3993, float %3994, float %3995, float %3858, float %3859, float %3860, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4023 = call float @dx.op.dot4.f32(i32 56, float %3999, float %4000, float %4001, float %4002, float %3858, float %3859, float %3860, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4024 = fsub fast float %4020, %3996
  %4025 = fsub fast float %4022, %3996
  %4026 = fsub fast float %4021, %4003
  %4027 = fsub fast float %4023, %4003
  %4028 = call float @dx.op.dot3.f32(i32 55, float %3943, float %3944, float %3945, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4031 = fadd fast float %4030, %4028
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4034 = fcmp fast ogt float %4032, %4033
  %4035 = and i1 %4019, %4034
  br i1 %4035, label %4060, label %4036

; <label>:4036                                    ; preds = %4348, %4143, %4060, %3911
  %4037 = phi float [ %3913, %4060 ], [ %4146, %4143 ], [ %4146, %4348 ], [ %3913, %3911 ]
  %4038 = phi float [ %3914, %4060 ], [ %3914, %4143 ], [ %4324, %4348 ], [ %3914, %3911 ]
  %4039 = phi float [ %3915, %4060 ], [ %3915, %4143 ], [ %4323, %4348 ], [ %3915, %3911 ]
  %4040 = phi float [ %3916, %4060 ], [ %3916, %4143 ], [ %4321, %4348 ], [ %3916, %3911 ]
  %4041 = phi float [ %3917, %4060 ], [ %3917, %4143 ], [ %4299, %4348 ], [ %3917, %3911 ]
  %4042 = phi float [ %3918, %4060 ], [ %3918, %4143 ], [ %4300, %4348 ], [ %3918, %3911 ]
  %4043 = phi float [ %3919, %4060 ], [ %3919, %4143 ], [ %4301, %4348 ], [ %3919, %3911 ]
  %4044 = phi float [ %3920, %4060 ], [ %3920, %4143 ], [ %4270, %4348 ], [ %3920, %3911 ]
  %4045 = phi float [ %3921, %4060 ], [ %3921, %4143 ], [ %4268, %4348 ], [ %3921, %3911 ]
  %4046 = phi float [ %3922, %4060 ], [ %3922, %4143 ], [ %4358, %4348 ], [ %3922, %3911 ]
  %4047 = phi float [ %3923, %4060 ], [ %3923, %4143 ], [ %4359, %4348 ], [ %3923, %3911 ]
  %4048 = phi float [ %3924, %4060 ], [ %3924, %4143 ], [ %4360, %4348 ], [ %3924, %3911 ]
  %4049 = phi float [ %3925, %4060 ], [ %3925, %4143 ], [ %4249, %4348 ], [ %3925, %3911 ]
  %4050 = phi float [ %3926, %4060 ], [ %3926, %4143 ], [ %4250, %4348 ], [ %3926, %3911 ]
  %4051 = phi float [ %3927, %4060 ], [ %3927, %4143 ], [ %4251, %4348 ], [ %3927, %3911 ]
  %4052 = phi float [ %3928, %4060 ], [ %3928, %4143 ], [ %4279, %4348 ], [ %3928, %3911 ]
  %4053 = phi float [ %3929, %4060 ], [ %3929, %4143 ], [ %4276, %4348 ], [ %3929, %3911 ]
  %4054 = phi float [ %3930, %4060 ], [ %3930, %4143 ], [ %4273, %4348 ], [ %3930, %3911 ]
  %4055 = phi float [ %3931, %4060 ], [ %3931, %4143 ], [ %4266, %4348 ], [ %3931, %3911 ]
  %4056 = phi float [ %3932, %4060 ], [ %3932, %4143 ], [ %4261, %4348 ], [ %3932, %3911 ]
  %4057 = phi float [ %3933, %4060 ], [ %3933, %4143 ], [ %4262, %4348 ], [ %3933, %3911 ]
  %4058 = phi float [ %3934, %4060 ], [ %3934, %4143 ], [ %4263, %4348 ], [ %3934, %3911 ]
  %4059 = icmp eq i32 %3938, 0
  br i1 %4059, label %4361, label %3911

; <label>:4060                                    ; preds = %3911
  %4061 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %4062 = extractvalue %dx.types.ResRet.f32 %3961, 3
  %4063 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %4065 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %4066 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %4067 = extractvalue %dx.types.ResRet.i32 %3947, 3
  %4068 = extractvalue %dx.types.ResRet.i32 %3947, 2
  %4069 = bitcast float %4061 to i32
  %4070 = add i32 %4067, 0
  %4071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4070, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4071, %dx.types.Handle %4072, float %3996, float %4003, float undef, float undef, i32 0, i32 0, i32 undef, float %4024, float %4026, float undef, float %4025, float %4027, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = fmul fast float %4074, %4066
  %4076 = fadd fast float %4075, %4065
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %3996, %3956
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %4003, float %4078)  ; FMad(a,b,c)
  %4080 = fadd fast float %4079, %4064
  %4081 = fmul fast float %3996, %3958
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %4003, float %4081)  ; FMad(a,b,c)
  %4083 = fadd fast float %4082, %4063
  %4084 = fmul fast float %4024, %3956
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %4026, float %4084)  ; FMad(a,b,c)
  %4086 = fmul fast float %4024, %3958
  %4087 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %4026, float %4086)  ; FMad(a,b,c)
  %4088 = fmul fast float %4025, %3956
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %3957, float %4027, float %4088)  ; FMad(a,b,c)
  %4090 = fmul fast float %4025, %3958
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %3959, float %4027, float %4090)  ; FMad(a,b,c)
  %4092 = add i32 %4068, 0
  %4093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4092, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4094 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4093, %dx.types.Handle %4072, float %4080, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4085, float %4087, float undef, float %4089, float %4091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = and i32 %4069, 1024
  %4097 = icmp ne i32 %4096, 0
  %4098 = fcmp fast ogt float %4095, 0x3FE0101020000000
  %4099 = uitofp i1 %4098 to float
  %4100 = select i1 %4097, float %4099, float %4095
  %4101 = and i32 %4069, 8192
  %4102 = icmp ne i32 %4101, 0
  %4103 = select i1 %4102, float %4062, float 1.000000e+00
  %4104 = fmul fast float %3996, 2.000000e+00
  %4105 = fadd fast float %4104, -1.000000e+00
  %4106 = call float @dx.op.unary.f32(i32 6, float %4105)  ; FAbs(value)
  %4107 = fmul fast float %4106, %3989
  %4108 = fsub fast float %4107, %3989
  %4109 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4110 = fmul fast float %4003, 2.000000e+00
  %4111 = fadd fast float %4110, -1.000000e+00
  %4112 = call float @dx.op.unary.f32(i32 6, float %4111)  ; FAbs(value)
  %4113 = fmul fast float %4112, %3990
  %4114 = fsub fast float %4113, %3990
  %4115 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4116 = fmul fast float %4015, %3952
  %4117 = fsub fast float %4116, %3952
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = fmul fast float %4077, %4103
  %4120 = fmul fast float %4119, %4074
  %4121 = fmul fast float %4120, %4109
  %4122 = fmul fast float %4121, %4100
  %4123 = fmul fast float %4122, %4115
  %4124 = fmul fast float %4123, %4118
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4128 = fsub fast float %4032, %4127
  %4129 = fmul fast float %4128, %4126
  %4130 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4131 = fmul fast float %4124, %3953
  %4132 = fadd fast float %4124, %3953
  %4133 = fmul fast float %4132, %3962
  %4134 = fsub fast float %4133, %3962
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = and i32 %4069, 128
  %4137 = icmp ne i32 %4136, 0
  %4138 = select i1 %4137, float %4135, float %4131
  %4139 = fmul fast float %4138, %4130
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = fcmp fast ugt float %4139, %4141
  br i1 %4142, label %4143, label %4036

; <label>:4143                                    ; preds = %4060
  %4144 = select i1 %4102, float %4139, float 0.000000e+00
  %4145 = fadd fast float %4144, %3913
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  br i1 %4102, label %4036, label %4147

; <label>:4147                                    ; preds = %4143
  %4148 = and i32 %4069, 4
  %4149 = and i32 %4069, 8
  %4150 = add i32 %3948, 0
  %4151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4150, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4151, %dx.types.Handle %4152, float %4080, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4085, float %4087, float undef, float %4089, float %4091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = bitcast float %3974 to i32
  %4159 = and i32 %4158, 255
  %4160 = uitofp i32 %4159 to float
  %4161 = lshr i32 %4158, 8
  %4162 = and i32 %4161, 255
  %4163 = uitofp i32 %4162 to float
  %4164 = fmul fast float %4157, %4160
  %4165 = fadd fast float %4164, %4163
  %4166 = fmul fast float %4165, 0x3F70101000000000
  %4167 = add i32 %3949, 0
  %4168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4167, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4168, %dx.types.Handle %4152, float %4080, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4085, float %4087, float undef, float %4089, float %4091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = bitcast float %3968 to i32
  %4175 = and i32 %4174, 255
  %4176 = uitofp i32 %4175 to float
  %4177 = lshr i32 %4174, 8
  %4178 = and i32 %4177, 255
  %4179 = uitofp i32 %4178 to float
  %4180 = lshr i32 %4174, 16
  %4181 = and i32 %4180, 255
  %4182 = uitofp i32 %4181 to float
  %4183 = fmul fast float %4182, 0x3F70101000000000
  %4184 = fmul fast float %4170, %4176
  %4185 = fadd fast float %4184, %4179
  %4186 = fmul fast float %4185, 0x3F70101000000000
  %4187 = fadd fast float %4171, -5.000000e-01
  %4188 = fadd fast float %4173, -5.000000e-01
  %4189 = fmul fast float %4187, %4183
  %4190 = fmul fast float %4188, %4183
  %4191 = fadd fast float %4189, 5.000000e-01
  %4192 = fadd fast float %4190, 5.000000e-01
  %4193 = fmul fast float %4154, %3977
  %4194 = fmul fast float %4155, %3978
  %4195 = fmul fast float %4156, %3979
  %4196 = fmul fast float %4191, 2.000000e+00
  %4197 = fadd fast float %4196, -1.000000e+00
  %4198 = fmul fast float %4192, 2.000000e+00
  %4199 = fadd fast float %4198, -1.000000e+00
  %4200 = fadd fast float %4197, %4199
  %4201 = fmul fast float %4200, 5.000000e-01
  %4202 = fsub fast float %4197, %4199
  %4203 = fmul fast float %4202, 5.000000e-01
  %4204 = call float @dx.op.unary.f32(i32 6, float %4201)  ; FAbs(value)
  %4205 = fsub fast float 1.000000e+00, %4204
  %4206 = call float @dx.op.unary.f32(i32 6, float %4203)  ; FAbs(value)
  %4207 = fsub fast float %4205, %4206
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4201, float %4203, float %4207, float %4201, float %4203, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = call float @dx.op.unary.f32(i32 25, float %4208)  ; Rsqrt(value)
  %4210 = fmul fast float %4201, %4209
  %4211 = fmul fast float %4203, %4209
  %4212 = fmul fast float %4209, %4207
  %4213 = fmul fast float %4212, %3943
  %4214 = fmul fast float %4212, %3944
  %4215 = fmul fast float %4212, %3945
  %4216 = fmul fast float %4210, %3965
  %4217 = fmul fast float %4210, %3966
  %4218 = fmul fast float %4210, %3967
  %4219 = fadd fast float %4216, %4213
  %4220 = fadd fast float %4217, %4214
  %4221 = fadd fast float %4218, %4215
  %4222 = fmul fast float %4211, %3971
  %4223 = fmul fast float %4211, %3972
  %4224 = fmul fast float %4211, %3973
  %4225 = fadd fast float %4219, %4222
  %4226 = fadd fast float %4220, %4223
  %4227 = fadd fast float %4221, %4224
  %4228 = call float @dx.op.dot3.f32(i32 55, float %4225, float %4226, float %4227, float %4225, float %4226, float %4227)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = call float @dx.op.unary.f32(i32 25, float %4228)  ; Rsqrt(value)
  %4230 = fmul fast float %4225, %4229
  %4231 = fmul fast float %4226, %4229
  %4232 = fmul fast float %4227, %4229
  %4233 = icmp ne i32 %4149, 0
  %4234 = select i1 %4233, float 1.000000e+00, float 0.000000e+00
  %4235 = fmul fast float %4139, %4234
  %4236 = and i32 %4069, 1
  %4237 = icmp eq i32 %4236, 0
  br i1 %4237, label %4238, label %4242

; <label>:4238                                    ; preds = %4147
  %4239 = fsub fast float %4230, %3925
  %4240 = fsub fast float %4231, %3926
  %4241 = fsub fast float %4232, %3927
  br label %4242

; <label>:4242                                    ; preds = %4238, %4147
  %4243 = phi float [ %4239, %4238 ], [ %4230, %4147 ]
  %4244 = phi float [ %4240, %4238 ], [ %4231, %4147 ]
  %4245 = phi float [ %4241, %4238 ], [ %4232, %4147 ]
  %4246 = fmul float %4245, %4235
  %4247 = fmul float %4244, %4235
  %4248 = fmul float %4243, %4235
  %4249 = fadd fast float %4248, %3925
  %4250 = fadd fast float %4247, %3926
  %4251 = fadd fast float %4246, %3927
  %4252 = icmp ne i32 %4148, 0
  %4253 = select i1 %4252, float 1.000000e+00, float 0.000000e+00
  %4254 = fmul fast float %4139, %4253
  %4255 = fsub fast float %4193, %3932
  %4256 = fsub fast float %4194, %3933
  %4257 = fsub fast float %4195, %3934
  %4258 = fmul fast float %4255, %4254
  %4259 = fmul fast float %4256, %4254
  %4260 = fmul fast float %4257, %4254
  %4261 = fadd fast float %4258, %3932
  %4262 = fadd fast float %4259, %3933
  %4263 = fadd fast float %4260, %3934
  %4264 = fsub fast float %4166, %3931
  %4265 = fmul fast float %4264, %4254
  %4266 = fadd fast float %4265, %3931
  %4267 = fmul fast float %4254, %3921
  %4268 = fsub fast float %3921, %4267
  %4269 = fmul fast float %4254, %3920
  %4270 = fsub fast float %3920, %4269
  %4271 = bitcast float %3986 to i32
  %4272 = fadd fast float %4139, %3930
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fsub fast float %4186, %3929
  %4275 = fmul fast float %4274, %4235
  %4276 = fadd fast float %4275, %3929
  %4277 = fsub fast float %4172, %3928
  %4278 = fmul fast float %4277, %4235
  %4279 = fadd fast float %4278, %3928
  br i1 %4237, label %4288, label %4280

; <label>:4280                                    ; preds = %4242
  %4281 = and i32 %4069, 32768
  %4282 = icmp eq i32 %4281, 0
  br i1 %4282, label %4298, label %4283

; <label>:4283                                    ; preds = %4280
  %4284 = fmul fast float %4235, 1.270000e+02
  %4285 = fadd fast float %4284, %3917
  %4286 = fadd fast float %4284, %3918
  %4287 = fadd fast float %4284, %3919
  br label %4298

; <label>:4288                                    ; preds = %4242
  %4289 = fsub fast float 1.270000e+02, %3917
  %4290 = fsub fast float 1.270000e+02, %3918
  %4291 = fsub fast float 1.270000e+02, %3919
  %4292 = fmul fast float %4235, %4289
  %4293 = fmul fast float %4235, %4290
  %4294 = fmul fast float %4235, %4291
  %4295 = fadd fast float %4292, %3917
  %4296 = fadd fast float %4293, %3918
  %4297 = fadd fast float %4294, %3919
  br label %4298

; <label>:4298                                    ; preds = %4288, %4283, %4280
  %4299 = phi float [ %4285, %4283 ], [ %3917, %4280 ], [ %4295, %4288 ]
  %4300 = phi float [ %4286, %4283 ], [ %3918, %4280 ], [ %4296, %4288 ]
  %4301 = phi float [ %4287, %4283 ], [ %3919, %4280 ], [ %4297, %4288 ]
  %4302 = call float @dx.op.dot3.f32(i32 55, float %4193, float %4194, float %4195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = fmul fast float %4305, %4302
  %4307 = fadd fast float %4306, %4304
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = bitcast float %3980 to i32
  %4310 = and i32 %4309, 65535
  %4311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4310)  ; LegacyF16ToF32(value)
  %4312 = lshr i32 %4309, 16
  %4313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4312)  ; LegacyF16ToF32(value)
  %4314 = fcmp fast oge float %4311, 0.000000e+00
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = select i1 %4314, float %4311, float %4316
  %4318 = fadd fast float %4317, %4313
  %4319 = fsub fast float %4308, %3916
  %4320 = fmul fast float %4319, %4139
  %4321 = fadd fast float %4320, %3916
  %4322 = fmul fast float %4318, %4139
  %4323 = call float @dx.op.binary.f32(i32 35, float %3915, float %4322)  ; FMax(a,b)
  %4324 = call float @dx.op.binary.f32(i32 35, float %3914, float %4139)  ; FMax(a,b)
  %4325 = and i32 %4069, 16
  %4326 = icmp eq i32 %4325, 0
  br i1 %4326, label %4348, label %4327

; <label>:4327                                    ; preds = %4298
  %4328 = add i32 %3983, 0
  %4329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4328, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4329, %dx.types.Handle %4152, float %4080, float %4083, float undef, float undef, i32 0, i32 0, i32 undef, float %4085, float %4087, float undef, float %4089, float %4091, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.ResRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.ResRet.f32 %4330, 2
  %4334 = and i32 %4271, 65535
  %4335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4334)  ; LegacyF16ToF32(value)
  %4336 = fmul fast float %4331, %3977
  %4337 = fmul fast float %4332, %3978
  %4338 = fmul fast float %4333, %3979
  %4339 = and i32 %4069, 16384
  %4340 = icmp ne i32 %4339, 0
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = select i1 %4340, float %4342, float 1.000000e+00
  %4344 = fmul fast float %4343, %4335
  %4345 = fmul fast float %4336, %4344
  %4346 = fmul fast float %4337, %4344
  %4347 = fmul fast float %4338, %4344
  br label %4348

; <label>:4348                                    ; preds = %4327, %4298
  %4349 = phi float [ %4345, %4327 ], [ 0.000000e+00, %4298 ]
  %4350 = phi float [ %4346, %4327 ], [ 0.000000e+00, %4298 ]
  %4351 = phi float [ %4347, %4327 ], [ 0.000000e+00, %4298 ]
  %4352 = fsub fast float %4349, %3922
  %4353 = fsub fast float %4350, %3923
  %4354 = fsub fast float %4351, %3924
  %4355 = fmul fast float %4352, %4139
  %4356 = fmul fast float %4353, %4139
  %4357 = fmul fast float %4354, %4139
  %4358 = fadd fast float %4355, %3922
  %4359 = fadd fast float %4356, %3923
  %4360 = fadd fast float %4357, %3924
  br label %4036

; <label>:4361                                    ; preds = %4036
  br label %4362

; <label>:4362                                    ; preds = %4361, %3848
  %4363 = phi float [ 0.000000e+00, %3848 ], [ %4037, %4361 ]
  %4364 = phi float [ %1142, %3848 ], [ %4038, %4361 ]
  %4365 = phi float [ %3818, %3848 ], [ %4039, %4361 ]
  %4366 = phi float [ %3810, %3848 ], [ %4040, %4361 ]
  %4367 = phi float [ %3803, %3848 ], [ %4041, %4361 ]
  %4368 = phi float [ %3804, %3848 ], [ %4042, %4361 ]
  %4369 = phi float [ %3805, %3848 ], [ %4043, %4361 ]
  %4370 = phi float [ 0.000000e+00, %3848 ], [ %4044, %4361 ]
  %4371 = phi float [ 0.000000e+00, %3848 ], [ %4045, %4361 ]
  %4372 = phi float [ %3800, %3848 ], [ %4046, %4361 ]
  %4373 = phi float [ %3801, %3848 ], [ %4047, %4361 ]
  %4374 = phi float [ %3802, %3848 ], [ %4048, %4361 ]
  %4375 = phi float [ %3844, %3848 ], [ %4049, %4361 ]
  %4376 = phi float [ %3845, %3848 ], [ %4050, %4361 ]
  %4377 = phi float [ %3846, %3848 ], [ %4051, %4361 ]
  %4378 = phi float [ %3808, %3848 ], [ %4052, %4361 ]
  %4379 = phi float [ %3807, %3848 ], [ %4053, %4361 ]
  %4380 = phi float [ 0.000000e+00, %3848 ], [ %4054, %4361 ]
  %4381 = phi float [ %3806, %3848 ], [ %4055, %4361 ]
  %4382 = phi float [ %3797, %3848 ], [ %4056, %4361 ]
  %4383 = phi float [ %3798, %3848 ], [ %4057, %4361 ]
  %4384 = phi float [ %3799, %3848 ], [ %4058, %4361 ]
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float %4375, float %4376, float %4377)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.unary.f32(i32 25, float %4385)  ; Rsqrt(value)
  %4387 = fmul fast float %4386, %4375
  %4388 = fmul fast float %4386, %4376
  %4389 = fmul fast float %4386, %4377
  %4390 = fadd fast float %4380, %1142
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = call float @dx.op.dot3.f32(i32 55, float %4387, float %4388, float %4389, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4393 = call float @dx.op.unary.f32(i32 25, float %4392)  ; Rsqrt(value)
  %4394 = fmul fast float %4393, %4387
  %4395 = fmul fast float %4393, %4388
  %4396 = fmul fast float %4393, %4389
  br label %4397

; <label>:4397                                    ; preds = %4362, %3794
  %4398 = phi float [ %4372, %4362 ], [ %3800, %3794 ]
  %4399 = phi float [ %4373, %4362 ], [ %3801, %3794 ]
  %4400 = phi float [ %4374, %4362 ], [ %3802, %3794 ]
  %4401 = phi float [ %4382, %4362 ], [ %3797, %3794 ]
  %4402 = phi float [ %4383, %4362 ], [ %3798, %3794 ]
  %4403 = phi float [ %4384, %4362 ], [ %3799, %3794 ]
  %4404 = phi float [ %4367, %4362 ], [ %3803, %3794 ]
  %4405 = phi float [ %4368, %4362 ], [ %3804, %3794 ]
  %4406 = phi float [ %4369, %4362 ], [ %3805, %3794 ]
  %4407 = phi float [ %4394, %4362 ], [ %3844, %3794 ]
  %4408 = phi float [ %4395, %4362 ], [ %3845, %3794 ]
  %4409 = phi float [ %4396, %4362 ], [ %3846, %3794 ]
  %4410 = phi float [ %4381, %4362 ], [ %3806, %3794 ]
  %4411 = phi float [ %4391, %4362 ], [ %1142, %3794 ]
  %4412 = phi float [ %4379, %4362 ], [ %3807, %3794 ]
  %4413 = phi float [ %4378, %4362 ], [ %3808, %3794 ]
  %4414 = phi float [ %4371, %4362 ], [ 0.000000e+00, %3794 ]
  %4415 = phi float [ %4370, %4362 ], [ 0.000000e+00, %3794 ]
  %4416 = phi float [ %4363, %4362 ], [ 0.000000e+00, %3794 ]
  %4417 = phi float [ %4365, %4362 ], [ %3818, %3794 ]
  %4418 = phi float [ %4364, %4362 ], [ %1142, %3794 ]
  %4419 = phi float [ %4366, %4362 ], [ %3810, %3794 ]
  %4420 = fadd fast float %4410, 0xBFB99999A0000000
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %4421, 0x3FF1C71C80000000
  %4423 = call float @dx.op.binary.f32(i32 36, float %4410, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4424 = fsub fast float 1.000000e+00, %4422
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4425, %4401
  %4427 = fmul fast float %4425, %4402
  %4428 = fmul fast float %4425, %4403
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = fmul fast float %4422, %4401
  %4433 = fmul fast float %4422, %4402
  %4434 = fmul fast float %4422, %4403
  %4435 = fadd fast float %4432, %4423
  %4436 = fadd fast float %4433, %4423
  %4437 = fadd fast float %4434, %4423
  %4438 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4439 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4442 = call float @dx.op.binary.f32(i32 36, float %4404, float 1.270000e+02)  ; FMin(a,b)
  %4443 = call float @dx.op.binary.f32(i32 36, float %4405, float 1.270000e+02)  ; FMin(a,b)
  %4444 = call float @dx.op.binary.f32(i32 36, float %4406, float 1.270000e+02)  ; FMin(a,b)
  %4445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.i32 %4445, 3
  %4447 = and i32 %4446, 8
  %4448 = icmp ne i32 %4447, 0
  %4449 = call float @dx.op.binary.f32(i32 35, float %4429, float %4401)  ; FMax(a,b)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4430, float %4401)  ; FMax(a,b)
  %4451 = call float @dx.op.binary.f32(i32 35, float %4431, float %4401)  ; FMax(a,b)
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4429, float %4430, float %4431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = select i1 %260, float %4401, float %4429
  %4454 = select i1 %260, float %4452, float %4430
  %4455 = select i1 %260, float 1.000000e+00, float %4431
  %4456 = select i1 %4448, float %4449, float %4453
  %4457 = select i1 %4448, float %4450, float %4454
  %4458 = select i1 %4448, float %4451, float %4455
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4463 = fadd fast float %4460, %201
  %4464 = fadd fast float %4461, %202
  %4465 = fadd fast float %4462, %203
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = fsub fast float %4463, %4467
  %4470 = fsub fast float %4464, %4468
  %4471 = fmul fast float %4469, %4469
  %4472 = fmul fast float %4470, %4470
  %4473 = fadd fast float %4471, %4472
  %4474 = call float @dx.op.unary.f32(i32 24, float %4473)  ; Sqrt(value)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4476 = fcmp fast olt float %4474, %4475
  br i1 %4476, label %4477, label %4544

; <label>:4477                                    ; preds = %4397
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4486 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4487 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4488 = extractvalue %dx.types.CBufRet.f32 %4480, 3
  %4489 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4490 = fadd fast float %4487, %4463
  %4491 = fadd fast float %4488, %4464
  %4492 = fadd fast float %4489, %4465
  %4493 = fmul fast float %4490, %4479
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4491, float %4481, float %4493)  ; FMad(a,b,c)
  %4495 = call float @dx.op.tertiary.f32(i32 46, float %4492, float %4483, float %4494)  ; FMad(a,b,c)
  %4496 = fmul fast float %4490, %4484
  %4497 = call float @dx.op.tertiary.f32(i32 46, float %4491, float %4485, float %4496)  ; FMad(a,b,c)
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4492, float %4486, float %4497)  ; FMad(a,b,c)
  %4499 = fsub fast float %4495, %4487
  %4500 = fsub fast float %4498, %4488
  %4501 = fsub fast float %4499, %4467
  %4502 = fadd fast float %4501, %4475
  %4503 = fsub fast float %4500, %4468
  %4504 = fadd fast float %4503, %4475
  %4505 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4506 = fmul fast float %4502, %4505
  %4507 = fmul fast float %4504, %4505
  %4508 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4510 = fsub fast float 1.000000e+00, %4508
  %4511 = fsub fast float 1.000000e+00, %4509
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4510, float %4511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = fcmp fast ugt float %4513, 0.000000e+00
  br i1 %4514, label %4515, label %4818

; <label>:4515                                    ; preds = %4477
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = fmul fast float %4517, %4513
  %4519 = extractvalue %dx.types.CBufRet.f32 %4516, 3
  %4520 = fadd fast float %4519, %4518
  %4521 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4522 = fadd fast float %4520, %4489
  %4523 = fmul fast float %4495, %4483
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4498, float %4486, float %4523)  ; FMad(a,b,c)
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4521, float %4524)  ; FMad(a,b,c)
  %4526 = fsub fast float %4525, %4489
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4529 = fsub fast float %4526, %4528
  %4530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4510, float %4511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4531 = extractvalue %dx.types.ResRet.f32 %4530, 0
  %4532 = extractvalue %dx.types.ResRet.f32 %4530, 1
  %4533 = extractvalue %dx.types.ResRet.f32 %4530, 2
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4510, float %4511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4538 = fadd fast float %4535, %4531
  %4539 = fmul fast float %4538, 0x3F847AE140000000
  %4540 = fadd fast float %4536, %4532
  %4541 = fmul fast float %4540, 0x3F847AE140000000
  %4542 = fadd fast float %4537, %4533
  %4543 = fmul fast float %4542, 0x3F847AE140000000
  br label %4818

; <label>:4544                                    ; preds = %4397
  %4545 = and i32 %239, 1
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %4818, label %4547

; <label>:4547                                    ; preds = %4544
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 0
  %4550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4551 = extractvalue %dx.types.CBufRet.f32 %4550, 0
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.CBufRet.f32 %4548, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4550, 1
  %4556 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4557 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4558 = extractvalue %dx.types.CBufRet.f32 %4550, 3
  %4559 = extractvalue %dx.types.CBufRet.f32 %4552, 3
  %4560 = fadd fast float %4557, %4463
  %4561 = fadd fast float %4558, %4464
  %4562 = fadd fast float %4559, %4465
  %4563 = fmul fast float %4560, %4549
  %4564 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4551, float %4563)  ; FMad(a,b,c)
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4553, float %4564)  ; FMad(a,b,c)
  %4566 = fmul fast float %4560, %4554
  %4567 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4555, float %4566)  ; FMad(a,b,c)
  %4568 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4556, float %4567)  ; FMad(a,b,c)
  %4569 = fsub fast float %4565, %4557
  %4570 = fsub fast float %4568, %4558
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4575 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4578 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.i32 %4578, 0
  %4580 = extractvalue %dx.types.CBufRet.i32 %4578, 1
  %4581 = udiv i32 %4580, %4579
  %4582 = fsub fast float %4569, %4572
  %4583 = fsub fast float %4570, %4573
  %4584 = call float @dx.op.binary.f32(i32 35, float %4582, float 0.000000e+00)  ; FMax(a,b)
  %4585 = call float @dx.op.binary.f32(i32 35, float %4583, float 0.000000e+00)  ; FMax(a,b)
  %4586 = call float @dx.op.binary.f32(i32 36, float %4584, float %4574)  ; FMin(a,b)
  %4587 = call float @dx.op.binary.f32(i32 36, float %4585, float %4575)  ; FMin(a,b)
  %4588 = add i32 %4579, -1
  %4589 = add i32 %4581, -1
  %4590 = fmul fast float %4586, %4577
  %4591 = fmul fast float %4587, %4577
  %4592 = fptoui float %4590 to i32
  %4593 = fptoui float %4591 to i32
  %4594 = call i32 @dx.op.binary.i32(i32 40, i32 %4592, i32 %4588)  ; UMin(a,b)
  %4595 = call i32 @dx.op.binary.i32(i32 40, i32 %4593, i32 %4589)  ; UMin(a,b)
  %4596 = mul i32 %4595, %4579
  %4597 = add i32 %4596, %4594
  %4598 = shl i32 %4597, 2
  %4599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.i32 %4599, 0
  %4601 = icmp eq i32 %4600, -1
  br i1 %4601, label %4818, label %4602

; <label>:4602                                    ; preds = %4547
  %4603 = mul i32 %4600, 148
  %4604 = add i32 %4603, 4
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = add i32 %4603, 8
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = add i32 %4603, 36
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = add i32 %4603, 60
  %4614 = add i32 %4603, 92
  %4615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.i32 %4615, 0
  %4617 = add i32 %4603, 116
  %4618 = fsub fast float %4569, %4606
  %4619 = fsub fast float %4570, %4609
  %4620 = fmul fast float %4577, %4618
  %4621 = fmul fast float %4577, %4619
  %4622 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4624 = fsub fast float 1.000000e+00, %4623
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4627 = call float @dx.op.unary.f32(i32 83, float %4622)  ; DerivCoarseX(value)
  %4628 = call float @dx.op.unary.f32(i32 83, float %4624)  ; DerivCoarseX(value)
  %4629 = call float @dx.op.unary.f32(i32 84, float %4622)  ; DerivCoarseY(value)
  %4630 = call float @dx.op.unary.f32(i32 84, float %4624)  ; DerivCoarseY(value)
  %4631 = fmul fast float %4627, %4626
  %4632 = fmul fast float %4628, %4626
  %4633 = fmul fast float %4629, %4626
  %4634 = fmul fast float %4630, %4626
  %4635 = call float @dx.op.dot2.f32(i32 54, float %4633, float %4634, float %4633, float %4634)  ; Dot2(ax,ay,bx,by)
  %4636 = call float @dx.op.dot2.f32(i32 54, float %4631, float %4632, float %4631, float %4632)  ; Dot2(ax,ay,bx,by)
  %4637 = call float @dx.op.binary.f32(i32 35, float %4636, float %4635)  ; FMax(a,b)
  %4638 = call float @dx.op.unary.f32(i32 23, float %4637)  ; Log(value)
  %4639 = fmul fast float %4638, 5.000000e-01
  %4640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4641 = extractvalue %dx.types.CBufRet.f32 %4640, 1
  %4642 = fadd fast float %4641, %4639
  %4643 = call float @dx.op.binary.f32(i32 35, float %4642, float 0.000000e+00)  ; FMax(a,b)
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4646 = fadd fast float %4645, %4643
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 3
  %4649 = fadd fast float %4646, %4648
  %4650 = add i32 %4616, 0
  %4651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4650, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4652 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4651, i32 0)  ; GetDimensions(handle,mipLevel)
  %4653 = extractvalue %dx.types.Dimensions %4652, 0
  %4654 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4653)  ; FirstbitLo(value)
  %4655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.i32 %4655, 1
  %4657 = sub nsw i32 %4656, %4654
  %4658 = sitofp i32 %4657 to float
  %4659 = fsub fast float %4649, %4658
  %4660 = call float @dx.op.binary.f32(i32 35, float %4659, float 0.000000e+00)  ; FMax(a,b)
  %4661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4651, %dx.types.Handle %52, float %4622, float %4624, float %4612, float undef, i32 0, i32 0, i32 undef, float %4660)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4662 = extractvalue %dx.types.ResRet.f32 %4661, 0
  %4663 = fcmp ule float %4662, 0x3FE0101020000000
  %4664 = extractvalue %dx.types.CBufRet.i32 %4655, 0
  %4665 = and i32 %4664, 128
  %4666 = icmp ne i32 %4665, 0
  %4667 = and i1 %4663, %4666
  br i1 %4667, label %4818, label %4668

; <label>:4668                                    ; preds = %4602
  %4669 = add i32 %4603, 20
  %4670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4669, i32 undef)  ; BufferLoad(srv,index,wot)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = add i32 %4603, 24
  %4673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4672, i32 undef)  ; BufferLoad(srv,index,wot)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = add i32 %4603, 40
  %4676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4675, i32 undef)  ; BufferLoad(srv,index,wot)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = add i32 %4603, 96
  %4679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.i32 %4679, 0
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 2
  %4683 = fmul fast float %4682, %4622
  %4684 = fmul fast float %4682, %4624
  %4685 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4686 = fadd fast float %4683, %4685
  %4687 = fadd fast float %4684, %4685
  %4688 = add i32 %4680, 0
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4688, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4689, i32 0)  ; GetDimensions(handle,mipLevel)
  %4691 = extractvalue %dx.types.Dimensions %4690, 0
  %4692 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4691)  ; FirstbitLo(value)
  %4693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.i32 %4693, 1
  %4695 = sub nsw i32 %4694, %4692
  %4696 = sitofp i32 %4695 to float
  %4697 = fsub fast float %4646, %4696
  %4698 = call float @dx.op.binary.f32(i32 35, float %4697, float 0.000000e+00)  ; FMax(a,b)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4689, %dx.types.Handle %52, float %4686, float %4687, float %4677, float undef, i32 0, i32 0, i32 undef, float %4698)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = fmul fast float %4700, %4671
  %4702 = fadd fast float %4701, %4674
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4707, 3
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 3
  %4711 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4712 = fadd fast float %4708, %4569
  %4713 = fadd fast float %4710, %4570
  %4714 = fadd fast float %4702, %4711
  %4715 = fmul fast float %4712, %4704
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4713, float %4705, float %4715)  ; FMad(a,b,c)
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4714, float %4706, float %4716)  ; FMad(a,b,c)
  %4718 = fsub fast float %4717, %4711
  %4719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.f32 %4719, 2
  %4721 = fsub fast float %4718, %4720
  %4722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.i32 %4722, 0
  %4724 = call i32 @dx.op.binary.i32(i32 40, i32 %4600, i32 %4723)  ; UMin(a,b)
  %4725 = mul i32 %4724, 36
  %4726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4725, i32 undef)  ; BufferLoad(srv,index,wot)
  %4727 = extractvalue %dx.types.ResRet.i32 %4726, 0
  %4728 = add i32 %4725, 4
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = fmul fast float %4730, %4622
  %4732 = fmul fast float %4730, %4624
  %4733 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4734 = fadd fast float %4731, %4733
  %4735 = fadd fast float %4732, %4733
  %4736 = icmp eq i32 %4727, 0
  br i1 %4736, label %4805, label %4737

; <label>:4737                                    ; preds = %4668
  br label %4738

; <label>:4738                                    ; preds = %4795, %4737
  %4739 = phi float [ %4796, %4795 ], [ 0.000000e+00, %4737 ]
  %4740 = phi float [ %4797, %4795 ], [ 0.000000e+00, %4737 ]
  %4741 = phi float [ %4798, %4795 ], [ 0.000000e+00, %4737 ]
  %4742 = phi float [ %4799, %4795 ], [ 0.000000e+00, %4737 ]
  %4743 = phi float [ %4800, %4795 ], [ 0.000000e+00, %4737 ]
  %4744 = phi float [ %4801, %4795 ], [ 0.000000e+00, %4737 ]
  %4745 = phi i32 [ %4802, %4795 ], [ 0, %4737 ]
  %4746 = shl i32 %4745, 2
  %4747 = add i32 %4613, %4746
  %4748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.f32 %4748, 0
  %4750 = add i32 %4617, %4746
  %4751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4750, i32 undef)  ; BufferLoad(srv,index,wot)
  %4752 = extractvalue %dx.types.ResRet.i32 %4751, 0
  %4753 = add i32 %4752, 0
  %4754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4753, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4755 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4754, i32 0)  ; GetDimensions(handle,mipLevel)
  %4756 = extractvalue %dx.types.Dimensions %4755, 0
  %4757 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4756)  ; FirstbitLo(value)
  %4758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.i32 %4758, 1
  %4760 = sub nsw i32 %4759, %4757
  %4761 = sitofp i32 %4760 to float
  %4762 = fsub fast float %4646, %4761
  %4763 = call float @dx.op.binary.f32(i32 35, float %4762, float 0.000000e+00)  ; FMax(a,b)
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4754, %dx.types.Handle %52, float %4734, float %4735, float %4749, float undef, i32 0, i32 0, i32 undef, float %4763)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = fcmp fast ogt float %4765, 0.000000e+00
  br i1 %4766, label %4767, label %4795

; <label>:4767                                    ; preds = %4738
  %4768 = add i32 %4728, %4746
  %4769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4768, i32 undef)  ; BufferLoad(srv,index,wot)
  %4770 = extractvalue %dx.types.ResRet.i32 %4769, 0
  %4771 = and i32 %4770, 32767
  %4772 = mul nuw nsw i32 %4771, 928
  %4773 = add nuw nsw i32 %4772, 48
  %4774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4773, i32 undef)  ; BufferLoad(srv,index,wot)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = add nuw nsw i32 %4772, 60
  %4779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = fmul fast float %4775, %4765
  %4784 = fmul fast float %4776, %4765
  %4785 = fmul fast float %4777, %4765
  %4786 = fadd fast float %4783, %4739
  %4787 = fadd fast float %4784, %4740
  %4788 = fadd fast float %4785, %4741
  %4789 = fmul fast float %4780, %4765
  %4790 = fmul fast float %4781, %4765
  %4791 = fmul fast float %4782, %4765
  %4792 = fadd fast float %4789, %4742
  %4793 = fadd fast float %4790, %4743
  %4794 = fadd fast float %4791, %4744
  br label %4795

; <label>:4795                                    ; preds = %4767, %4738
  %4796 = phi float [ %4786, %4767 ], [ %4739, %4738 ]
  %4797 = phi float [ %4787, %4767 ], [ %4740, %4738 ]
  %4798 = phi float [ %4788, %4767 ], [ %4741, %4738 ]
  %4799 = phi float [ %4792, %4767 ], [ %4742, %4738 ]
  %4800 = phi float [ %4793, %4767 ], [ %4743, %4738 ]
  %4801 = phi float [ %4794, %4767 ], [ %4744, %4738 ]
  %4802 = add nuw i32 %4745, 1
  %4803 = icmp eq i32 %4802, %4727
  br i1 %4803, label %4804, label %4738

; <label>:4804                                    ; preds = %4795
  br label %4805

; <label>:4805                                    ; preds = %4804, %4668
  %4806 = phi float [ 0.000000e+00, %4668 ], [ %4796, %4804 ]
  %4807 = phi float [ 0.000000e+00, %4668 ], [ %4797, %4804 ]
  %4808 = phi float [ 0.000000e+00, %4668 ], [ %4798, %4804 ]
  %4809 = phi float [ 0.000000e+00, %4668 ], [ %4799, %4804 ]
  %4810 = phi float [ 0.000000e+00, %4668 ], [ %4800, %4804 ]
  %4811 = phi float [ 0.000000e+00, %4668 ], [ %4801, %4804 ]
  %4812 = fadd fast float %4809, %4806
  %4813 = fmul fast float %4812, 0x3F847AE140000000
  %4814 = fadd fast float %4810, %4807
  %4815 = fmul fast float %4814, 0x3F847AE140000000
  %4816 = fadd fast float %4811, %4808
  %4817 = fmul fast float %4816, 0x3F847AE140000000
  br label %4818

; <label>:4818                                    ; preds = %4805, %4602, %4547, %4544, %4515, %4477
  %4819 = phi float [ %4539, %4515 ], [ 0.000000e+00, %4477 ], [ %4813, %4805 ], [ 0.000000e+00, %4547 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4544 ]
  %4820 = phi float [ %4541, %4515 ], [ 0.000000e+00, %4477 ], [ %4815, %4805 ], [ 0.000000e+00, %4547 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4544 ]
  %4821 = phi float [ %4543, %4515 ], [ 0.000000e+00, %4477 ], [ %4817, %4805 ], [ 0.000000e+00, %4547 ], [ 0.000000e+00, %4602 ], [ 0.000000e+00, %4544 ]
  %4822 = phi float [ %4529, %4515 ], [ -1.310720e+05, %4477 ], [ %4721, %4805 ], [ -1.310720e+05, %4547 ], [ -1.310720e+05, %4602 ], [ -1.310720e+05, %4544 ]
  %4823 = phi i1 [ true, %4515 ], [ false, %4477 ], [ true, %4805 ], [ false, %4547 ], [ false, %4602 ], [ false, %4544 ]
  %4824 = and i32 %239, 3
  %4825 = icmp eq i32 %4824, 1
  %4826 = select i1 %4825, float 1.000000e+00, float 0.000000e+00
  %4827 = fsub fast float %4822, %203
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = select i1 %4823, float %4828, float 1.000000e+00
  %4830 = fmul fast float %4829, %4826
  %4831 = icmp eq i32 %4824, 3
  %4832 = select i1 %4831, float 1.000000e+00, float %4830
  %4833 = call float @dx.op.binary.f32(i32 35, float %4416, float %4832)  ; FMax(a,b)
  %4834 = fcmp fast olt float %4832, 1.000000e+00
  %4835 = fcmp uge float %75, 0.000000e+00
  %4836 = and i1 %4835, %4834
  br i1 %4836, label %4837, label %4847

; <label>:4837                                    ; preds = %4818
  %4838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4839 = extractvalue %dx.types.ResRet.f32 %4838, 0
  %4840 = extractvalue %dx.types.ResRet.f32 %4838, 1
  %4841 = extractvalue %dx.types.ResRet.f32 %4838, 2
  %4842 = fadd fast float %4839, %4833
  %4843 = fcmp ule float %74, 0.000000e+00
  %4844 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4845 = select i1 %4843, float %4844, float 1.000000e+00
  %4846 = fmul fast float %4845, %4841
  br label %4847

; <label>:4847                                    ; preds = %4837, %4818
  %4848 = phi float [ %4842, %4837 ], [ %4833, %4818 ]
  %4849 = phi float [ %4840, %4837 ], [ 0.000000e+00, %4818 ]
  %4850 = phi float [ %4846, %4837 ], [ 0.000000e+00, %4818 ]
  %4851 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = fcmp fast une float %4852, 0.000000e+00
  %4855 = fcmp fast une float %4853, 0.000000e+00
  %4856 = or i1 %4854, %4855
  br i1 %4856, label %4857, label %5416

; <label>:4857                                    ; preds = %4847
  br i1 %4854, label %4858, label %5131

; <label>:4858                                    ; preds = %4857
  %4859 = call float @dx.op.unary.f32(i32 23, float %4413)  ; Log(value)
  %4860 = fmul fast float %4859, 4.000000e+00
  %4861 = call float @dx.op.unary.f32(i32 21, float %4860)  ; Exp(value)
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = fmul fast float %4863, %62
  %4865 = fmul fast float %4863, %63
  %4866 = fmul fast float %4863, %64
  %4867 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4868 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4869 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4870 = call float @dx.op.unary.f32(i32 23, float %4867)  ; Log(value)
  %4871 = call float @dx.op.unary.f32(i32 23, float %4868)  ; Log(value)
  %4872 = call float @dx.op.unary.f32(i32 23, float %4869)  ; Log(value)
  %4873 = fmul fast float %4870, 4.000000e+00
  %4874 = fmul fast float %4871, 4.000000e+00
  %4875 = fmul fast float %4872, 4.000000e+00
  %4876 = call float @dx.op.unary.f32(i32 21, float %4873)  ; Exp(value)
  %4877 = call float @dx.op.unary.f32(i32 21, float %4874)  ; Exp(value)
  %4878 = call float @dx.op.unary.f32(i32 21, float %4875)  ; Exp(value)
  %4879 = fadd fast float %4877, %4876
  %4880 = fadd fast float %4879, %4878
  %4881 = fdiv fast float 1.000000e+00, %4880
  %4882 = fmul fast float %4881, %4876
  %4883 = fcmp fast ogt float %71, 0.000000e+00
  %4884 = fcmp fast ogt float %72, 0.000000e+00
  %4885 = fcmp fast ogt float %73, 0.000000e+00
  %4886 = fcmp fast olt float %71, 0.000000e+00
  %4887 = fcmp fast olt float %72, 0.000000e+00
  %4888 = fcmp fast olt float %73, 0.000000e+00
  %4889 = zext i1 %4883 to i32
  %4890 = zext i1 %4884 to i32
  %4891 = zext i1 %4885 to i32
  %4892 = zext i1 %4886 to i32
  %4893 = zext i1 %4887 to i32
  %4894 = zext i1 %4888 to i32
  %4895 = sub nsw i32 %4889, %4892
  %4896 = sub nsw i32 %4890, %4893
  %4897 = sub nsw i32 %4891, %4894
  %4898 = call float @dx.op.unary.f32(i32 83, float %4864)  ; DerivCoarseX(value)
  %4899 = call float @dx.op.unary.f32(i32 83, float %4865)  ; DerivCoarseX(value)
  %4900 = call float @dx.op.unary.f32(i32 83, float %4866)  ; DerivCoarseX(value)
  %4901 = call float @dx.op.unary.f32(i32 84, float %4864)  ; DerivCoarseY(value)
  %4902 = call float @dx.op.unary.f32(i32 84, float %4865)  ; DerivCoarseY(value)
  %4903 = call float @dx.op.unary.f32(i32 84, float %4866)  ; DerivCoarseY(value)
  %4904 = fcmp fast ole float %271, %4882
  %4905 = fmul fast float %4881, %4879
  %4906 = fcmp fast ole float %271, %4905
  %4907 = select i1 %4906, float %4866, float %4864
  %4908 = select i1 %4906, float %4864, float %4865
  %4909 = select i1 %4904, float %4865, float %4907
  %4910 = select i1 %4904, float %4866, float %4908
  %4911 = select i1 %4906, float %4900, float %4898
  %4912 = select i1 %4906, float %4898, float %4899
  %4913 = select i1 %4904, float %4899, float %4911
  %4914 = select i1 %4904, float %4900, float %4912
  %4915 = select i1 %4906, float %4903, float %4901
  %4916 = select i1 %4906, float %4901, float %4902
  %4917 = select i1 %4904, float %4902, float %4915
  %4918 = select i1 %4904, float %4903, float %4916
  %4919 = call float @dx.op.unary.f32(i32 27, float %4909)  ; Round_ni(value)
  %4920 = call float @dx.op.unary.f32(i32 27, float %4910)  ; Round_ni(value)
  %4921 = fptosi float %4919 to i32
  %4922 = fptosi float %4920 to i32
  %4923 = xor i32 %4922, %4921
  %4924 = sitofp i32 %4923 to float
  %4925 = fptosi float %4924 to i32
  %4926 = sitofp i32 %4925 to float
  %4927 = fmul fast float %4926, 0x3FE3C6EF40000000
  %4928 = frem fast float %4919, 2.560000e+02
  %4929 = frem fast float %4920, 2.560000e+02
  %4930 = fptoui float %4928 to i32
  %4931 = fptoui float %4929 to i32
  %4932 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4930, i32 %4931, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.ResRet.f32 %4932, 1
  %4935 = extractvalue %dx.types.ResRet.f32 %4932, 2
  %4936 = fadd fast float %4933, %4927
  %4937 = fadd fast float %4934, %4927
  %4938 = fadd fast float %4935, %4927
  %4939 = call float @dx.op.unary.f32(i32 22, float %4936)  ; Frc(value)
  %4940 = call float @dx.op.unary.f32(i32 22, float %4937)  ; Frc(value)
  %4941 = call float @dx.op.unary.f32(i32 22, float %4938)  ; Frc(value)
  %4942 = fmul fast float %4941, 0x401921FB60000000
  %4943 = call float @dx.op.unary.f32(i32 13, float %4942)  ; Sin(value)
  %4944 = call float @dx.op.unary.f32(i32 12, float %4942)  ; Cos(value)
  %4945 = fsub fast float -0.000000e+00, %4944
  %4946 = fmul fast float %4944, %4909
  %4947 = call float @dx.op.tertiary.f32(i32 46, float %4943, float %4910, float %4946)  ; FMad(a,b,c)
  %4948 = fmul fast float %4943, %4909
  %4949 = call float @dx.op.tertiary.f32(i32 46, float %4945, float %4910, float %4948)  ; FMad(a,b,c)
  %4950 = fadd fast float %4947, %4939
  %4951 = fadd fast float %4949, %4940
  %4952 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4953 = bitcast float %4952 to i32
  %4954 = icmp eq i32 %4953, 0
  br i1 %4954, label %4993, label %4955

; <label>:4955                                    ; preds = %4858
  %4956 = add i32 %4953, 0
  %4957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4957, %dx.types.Handle %111, float %4950, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4913, float %4914, float undef, float %4917, float %4918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4959 = extractvalue %dx.types.ResRet.f32 %4958, 0
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4963 = fsub fast float 1.000000e+00, %4852
  %4964 = call float @dx.op.binary.f32(i32 35, float %4963, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4965 = bitcast float %4852 to i32
  %4966 = sitofp i32 %4965 to float
  %4967 = fadd fast float %4966, 0xC1CFBF8940000000
  %4968 = fmul fast float %4962, %4967
  %4969 = fadd fast float %4968, 0x41CFBF8940000000
  %4970 = fptosi float %4969 to i32
  %4971 = bitcast i32 %4970 to float
  %4972 = bitcast float %4964 to i32
  %4973 = sitofp i32 %4972 to float
  %4974 = fadd fast float %4973, 0xC1CFBF8940000000
  %4975 = fmul fast float %4974, %4962
  %4976 = fadd fast float %4975, 0x41CFBF8940000000
  %4977 = fptosi float %4976 to i32
  %4978 = bitcast i32 %4977 to float
  %4979 = fmul fast float %4971, %4961
  %4980 = fmul fast float %4978, %4961
  %4981 = fsub fast float %4964, %4979
  %4982 = fadd fast float %4980, %4964
  %4983 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4985 = fsub fast float %4959, %4983
  %4986 = fsub fast float %4984, %4983
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4989, %4985
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fcmp fast olt float %4991, 0x3F70101020000000
  br i1 %4992, label %5131, label %4993

; <label>:4993                                    ; preds = %4955, %4858
  %4994 = phi float [ %4991, %4955 ], [ %4852, %4858 ]
  %4995 = fmul fast float %4994, %4861
  %4996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.i32 %4996, 1
  %4998 = extractvalue %dx.types.CBufRet.i32 %4996, 0
  %4999 = add i32 %4998, 0
  %5000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5001 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5000, %dx.types.Handle %110, float %4950, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4913, float %4914, float undef, float %4917, float %4918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = extractvalue %dx.types.ResRet.f32 %5001, 3
  %5006 = and i32 %4997, 255
  %5007 = uitofp i32 %5006 to float
  %5008 = lshr i32 %4997, 8
  %5009 = and i32 %5008, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = fmul fast float %5005, %5007
  %5012 = fadd fast float %5011, %5010
  %5013 = fmul fast float %5012, 0x3F70101000000000
  %5014 = fadd fast float %5013, 0xBFB99999A0000000
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fmul fast float %5015, 0x3FF1C71C80000000
  %5017 = call float @dx.op.binary.f32(i32 36, float %5013, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5018 = fsub fast float 1.000000e+00, %5016
  %5019 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5020 = fmul fast float %5019, %5002
  %5021 = fmul fast float %5019, %5003
  %5022 = fmul fast float %5019, %5004
  %5023 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5024 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5025 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5026 = fmul fast float %5016, %5002
  %5027 = fmul fast float %5016, %5003
  %5028 = fmul fast float %5016, %5004
  %5029 = fadd fast float %5026, %5017
  %5030 = fadd fast float %5027, %5017
  %5031 = fadd fast float %5028, %5017
  %5032 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5034 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.i32 %5035, 3
  %5037 = extractvalue %dx.types.CBufRet.i32 %5035, 2
  %5038 = add i32 %5037, 0
  %5039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5039, %dx.types.Handle %110, float %4950, float %4951, float undef, float undef, i32 0, i32 0, i32 undef, float %4913, float %4914, float undef, float %4917, float %4918, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.ResRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.ResRet.f32 %5040, 2
  %5044 = extractvalue %dx.types.ResRet.f32 %5040, 3
  %5045 = and i32 %5036, 255
  %5046 = uitofp i32 %5045 to float
  %5047 = lshr i32 %5036, 8
  %5048 = and i32 %5047, 255
  %5049 = uitofp i32 %5048 to float
  %5050 = lshr i32 %5036, 16
  %5051 = and i32 %5050, 255
  %5052 = uitofp i32 %5051 to float
  %5053 = fmul fast float %5052, 0x3F70101000000000
  %5054 = fmul fast float %5041, %5046
  %5055 = fadd fast float %5054, %5049
  %5056 = fmul fast float %5055, 0x3F70101000000000
  %5057 = fadd fast float %5042, -5.000000e-01
  %5058 = fadd fast float %5044, -5.000000e-01
  %5059 = fmul fast float %5057, %5053
  %5060 = fmul fast float %5058, %5053
  %5061 = fadd fast float %5059, 5.000000e-01
  %5062 = fadd fast float %5060, 5.000000e-01
  %5063 = fmul fast float %5061, 2.000000e+00
  %5064 = fadd fast float %5063, -1.000000e+00
  %5065 = fmul fast float %5062, 2.000000e+00
  %5066 = fadd fast float %5065, -1.000000e+00
  %5067 = fadd fast float %5064, %5066
  %5068 = fmul fast float %5067, 5.000000e-01
  %5069 = fsub fast float %5064, %5066
  %5070 = fmul fast float %5069, 5.000000e-01
  %5071 = call float @dx.op.unary.f32(i32 6, float %5068)  ; FAbs(value)
  %5072 = fsub fast float 1.000000e+00, %5071
  %5073 = call float @dx.op.unary.f32(i32 6, float %5070)  ; FAbs(value)
  %5074 = fsub fast float %5072, %5073
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5070, float %5074, float %5068, float %5070, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.unary.f32(i32 25, float %5075)  ; Rsqrt(value)
  %5077 = fmul fast float %5068, %5076
  %5078 = fmul fast float %5070, %5076
  %5079 = select i1 %4906, i32 %4896, i32 %4897
  %5080 = select i1 %4904, i32 %4895, i32 %5079
  %5081 = sitofp i32 %5080 to float
  %5082 = fmul fast float %5074, %5081
  %5083 = fmul fast float %5082, %5076
  %5084 = select i1 %4906, float %5083, float %5078
  %5085 = select i1 %4906, float %5078, float %5083
  %5086 = select i1 %4904, float %5083, float %5077
  %5087 = select i1 %4904, float %5078, float %5084
  %5088 = select i1 %4904, float %5077, float %5085
  %5089 = fsub fast float %5023, %4456
  %5090 = fsub fast float %5024, %4457
  %5091 = fsub fast float %5025, %4458
  %5092 = fmul fast float %5089, %4995
  %5093 = fmul fast float %5090, %4995
  %5094 = fmul fast float %5091, %4995
  %5095 = fadd fast float %5092, %4456
  %5096 = fadd fast float %5093, %4457
  %5097 = fadd fast float %5094, %4458
  %5098 = fsub fast float %5032, %4438
  %5099 = fsub fast float %5033, %4439
  %5100 = fsub fast float %5034, %4440
  %5101 = fmul fast float %5098, %4995
  %5102 = fmul fast float %5099, %4995
  %5103 = fmul fast float %5100, %4995
  %5104 = fadd fast float %5101, %4438
  %5105 = fadd fast float %5102, %4439
  %5106 = fadd fast float %5103, %4440
  %5107 = fadd fast float %5086, %4407
  %5108 = fadd fast float %5087, %4408
  %5109 = fadd fast float %5088, %4409
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float %5107, float %5108, float %5109)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 25, float %5110)  ; Rsqrt(value)
  %5112 = fmul fast float %5107, %5111
  %5113 = fmul fast float %5108, %5111
  %5114 = fmul fast float %5109, %5111
  %5115 = fsub fast float %5112, %4407
  %5116 = fsub fast float %5113, %4408
  %5117 = fsub fast float %5114, %4409
  %5118 = fmul fast float %5115, %4995
  %5119 = fmul fast float %5116, %4995
  %5120 = fmul fast float %5117, %4995
  %5121 = fadd fast float %5118, %4407
  %5122 = fadd fast float %5119, %4408
  %5123 = fadd fast float %5120, %4409
  %5124 = call float @dx.op.binary.f32(i32 36, float %4413, float %5043)  ; FMin(a,b)
  %5125 = fsub fast float %5124, %4413
  %5126 = fmul fast float %5125, %4995
  %5127 = fadd fast float %5126, %4413
  %5128 = fsub fast float %5056, %4441
  %5129 = fmul fast float %5128, %4995
  %5130 = fadd fast float %5129, %4441
  br label %5131

; <label>:5131                                    ; preds = %4993, %4955, %4857
  %5132 = phi float [ %5104, %4993 ], [ %4438, %4955 ], [ %4438, %4857 ]
  %5133 = phi float [ %5105, %4993 ], [ %4439, %4955 ], [ %4439, %4857 ]
  %5134 = phi float [ %5106, %4993 ], [ %4440, %4955 ], [ %4440, %4857 ]
  %5135 = phi float [ %5095, %4993 ], [ %4456, %4955 ], [ %4456, %4857 ]
  %5136 = phi float [ %5096, %4993 ], [ %4457, %4955 ], [ %4457, %4857 ]
  %5137 = phi float [ %5097, %4993 ], [ %4458, %4955 ], [ %4458, %4857 ]
  %5138 = phi float [ %5121, %4993 ], [ %4407, %4955 ], [ %4407, %4857 ]
  %5139 = phi float [ %5122, %4993 ], [ %4408, %4955 ], [ %4408, %4857 ]
  %5140 = phi float [ %5123, %4993 ], [ %4409, %4955 ], [ %4409, %4857 ]
  %5141 = phi float [ %5130, %4993 ], [ %4441, %4955 ], [ %4441, %4857 ]
  %5142 = phi float [ %5127, %4993 ], [ %4413, %4955 ], [ %4413, %4857 ]
  br i1 %4855, label %5143, label %5416

; <label>:5143                                    ; preds = %5131
  %5144 = call float @dx.op.unary.f32(i32 23, float %5142)  ; Log(value)
  %5145 = fmul fast float %5144, 4.000000e+00
  %5146 = call float @dx.op.unary.f32(i32 21, float %5145)  ; Exp(value)
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 0
  %5149 = fmul fast float %5148, %62
  %5150 = fmul fast float %5148, %63
  %5151 = fmul fast float %5148, %64
  %5152 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %5153 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %5154 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %5155 = call float @dx.op.unary.f32(i32 23, float %5152)  ; Log(value)
  %5156 = call float @dx.op.unary.f32(i32 23, float %5153)  ; Log(value)
  %5157 = call float @dx.op.unary.f32(i32 23, float %5154)  ; Log(value)
  %5158 = fmul fast float %5155, 4.000000e+00
  %5159 = fmul fast float %5156, 4.000000e+00
  %5160 = fmul fast float %5157, 4.000000e+00
  %5161 = call float @dx.op.unary.f32(i32 21, float %5158)  ; Exp(value)
  %5162 = call float @dx.op.unary.f32(i32 21, float %5159)  ; Exp(value)
  %5163 = call float @dx.op.unary.f32(i32 21, float %5160)  ; Exp(value)
  %5164 = fadd fast float %5162, %5161
  %5165 = fadd fast float %5164, %5163
  %5166 = fdiv fast float 1.000000e+00, %5165
  %5167 = fmul fast float %5166, %5161
  %5168 = fcmp fast ogt float %71, 0.000000e+00
  %5169 = fcmp fast ogt float %72, 0.000000e+00
  %5170 = fcmp fast ogt float %73, 0.000000e+00
  %5171 = fcmp fast olt float %71, 0.000000e+00
  %5172 = fcmp fast olt float %72, 0.000000e+00
  %5173 = fcmp fast olt float %73, 0.000000e+00
  %5174 = zext i1 %5168 to i32
  %5175 = zext i1 %5169 to i32
  %5176 = zext i1 %5170 to i32
  %5177 = zext i1 %5171 to i32
  %5178 = zext i1 %5172 to i32
  %5179 = zext i1 %5173 to i32
  %5180 = sub nsw i32 %5174, %5177
  %5181 = sub nsw i32 %5175, %5178
  %5182 = sub nsw i32 %5176, %5179
  %5183 = call float @dx.op.unary.f32(i32 83, float %5149)  ; DerivCoarseX(value)
  %5184 = call float @dx.op.unary.f32(i32 83, float %5150)  ; DerivCoarseX(value)
  %5185 = call float @dx.op.unary.f32(i32 83, float %5151)  ; DerivCoarseX(value)
  %5186 = call float @dx.op.unary.f32(i32 84, float %5149)  ; DerivCoarseY(value)
  %5187 = call float @dx.op.unary.f32(i32 84, float %5150)  ; DerivCoarseY(value)
  %5188 = call float @dx.op.unary.f32(i32 84, float %5151)  ; DerivCoarseY(value)
  %5189 = fcmp fast ole float %271, %5167
  %5190 = fmul fast float %5166, %5164
  %5191 = fcmp fast ole float %271, %5190
  %5192 = select i1 %5191, float %5151, float %5149
  %5193 = select i1 %5191, float %5149, float %5150
  %5194 = select i1 %5189, float %5150, float %5192
  %5195 = select i1 %5189, float %5151, float %5193
  %5196 = select i1 %5191, float %5185, float %5183
  %5197 = select i1 %5191, float %5183, float %5184
  %5198 = select i1 %5189, float %5184, float %5196
  %5199 = select i1 %5189, float %5185, float %5197
  %5200 = select i1 %5191, float %5188, float %5186
  %5201 = select i1 %5191, float %5186, float %5187
  %5202 = select i1 %5189, float %5187, float %5200
  %5203 = select i1 %5189, float %5188, float %5201
  %5204 = call float @dx.op.unary.f32(i32 27, float %5194)  ; Round_ni(value)
  %5205 = call float @dx.op.unary.f32(i32 27, float %5195)  ; Round_ni(value)
  %5206 = fptosi float %5204 to i32
  %5207 = fptosi float %5205 to i32
  %5208 = xor i32 %5207, %5206
  %5209 = sitofp i32 %5208 to float
  %5210 = fptosi float %5209 to i32
  %5211 = sitofp i32 %5210 to float
  %5212 = fmul fast float %5211, 0x3FE3C6EF40000000
  %5213 = frem fast float %5204, 2.560000e+02
  %5214 = frem fast float %5205, 2.560000e+02
  %5215 = fptoui float %5213 to i32
  %5216 = fptoui float %5214 to i32
  %5217 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %5215, i32 %5216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = fadd fast float %5218, %5212
  %5222 = fadd fast float %5219, %5212
  %5223 = fadd fast float %5220, %5212
  %5224 = call float @dx.op.unary.f32(i32 22, float %5221)  ; Frc(value)
  %5225 = call float @dx.op.unary.f32(i32 22, float %5222)  ; Frc(value)
  %5226 = call float @dx.op.unary.f32(i32 22, float %5223)  ; Frc(value)
  %5227 = fmul fast float %5226, 0x401921FB60000000
  %5228 = call float @dx.op.unary.f32(i32 13, float %5227)  ; Sin(value)
  %5229 = call float @dx.op.unary.f32(i32 12, float %5227)  ; Cos(value)
  %5230 = fsub fast float -0.000000e+00, %5229
  %5231 = fmul fast float %5229, %5194
  %5232 = call float @dx.op.tertiary.f32(i32 46, float %5228, float %5195, float %5231)  ; FMad(a,b,c)
  %5233 = fmul fast float %5228, %5194
  %5234 = call float @dx.op.tertiary.f32(i32 46, float %5230, float %5195, float %5233)  ; FMad(a,b,c)
  %5235 = fadd fast float %5232, %5224
  %5236 = fadd fast float %5234, %5225
  %5237 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5238 = bitcast float %5237 to i32
  %5239 = icmp eq i32 %5238, 0
  br i1 %5239, label %5278, label %5240

; <label>:5240                                    ; preds = %5143
  %5241 = add i32 %5238, 0
  %5242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5243 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5242, %dx.types.Handle %111, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float %5198, float %5199, float undef, float %5202, float %5203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5248 = fsub fast float 1.000000e+00, %4853
  %5249 = call float @dx.op.binary.f32(i32 35, float %5248, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5250 = bitcast float %4853 to i32
  %5251 = sitofp i32 %5250 to float
  %5252 = fadd fast float %5251, 0xC1CFBF8940000000
  %5253 = fmul fast float %5247, %5252
  %5254 = fadd fast float %5253, 0x41CFBF8940000000
  %5255 = fptosi float %5254 to i32
  %5256 = bitcast i32 %5255 to float
  %5257 = bitcast float %5249 to i32
  %5258 = sitofp i32 %5257 to float
  %5259 = fadd fast float %5258, 0xC1CFBF8940000000
  %5260 = fmul fast float %5259, %5247
  %5261 = fadd fast float %5260, 0x41CFBF8940000000
  %5262 = fptosi float %5261 to i32
  %5263 = bitcast i32 %5262 to float
  %5264 = fmul fast float %5256, %5246
  %5265 = fmul fast float %5263, %5246
  %5266 = fsub fast float %5249, %5264
  %5267 = fadd fast float %5265, %5249
  %5268 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5270 = fsub fast float %5244, %5268
  %5271 = fsub fast float %5269, %5268
  %5272 = bitcast float %5271 to i32
  %5273 = sub nsw i32 2129859010, %5272
  %5274 = bitcast i32 %5273 to float
  %5275 = fmul fast float %5274, %5270
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fcmp fast olt float %5276, 0x3F70101020000000
  br i1 %5277, label %5416, label %5278

; <label>:5278                                    ; preds = %5240, %5143
  %5279 = phi float [ %5276, %5240 ], [ %4853, %5143 ]
  %5280 = fmul fast float %5279, %5146
  %5281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.i32 %5281, 1
  %5283 = extractvalue %dx.types.CBufRet.i32 %5281, 0
  %5284 = add i32 %5283, 0
  %5285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5286 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5285, %dx.types.Handle %110, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float %5198, float %5199, float undef, float %5202, float %5203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5286, 2
  %5290 = extractvalue %dx.types.ResRet.f32 %5286, 3
  %5291 = and i32 %5282, 255
  %5292 = uitofp i32 %5291 to float
  %5293 = lshr i32 %5282, 8
  %5294 = and i32 %5293, 255
  %5295 = uitofp i32 %5294 to float
  %5296 = fmul fast float %5290, %5292
  %5297 = fadd fast float %5296, %5295
  %5298 = fmul fast float %5297, 0x3F70101000000000
  %5299 = fadd fast float %5298, 0xBFB99999A0000000
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5300, 0x3FF1C71C80000000
  %5302 = call float @dx.op.binary.f32(i32 36, float %5298, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5303 = fsub fast float 1.000000e+00, %5301
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, %5287
  %5306 = fmul fast float %5304, %5288
  %5307 = fmul fast float %5304, %5289
  %5308 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5310 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5311 = fmul fast float %5301, %5287
  %5312 = fmul fast float %5301, %5288
  %5313 = fmul fast float %5301, %5289
  %5314 = fadd fast float %5311, %5302
  %5315 = fadd fast float %5312, %5302
  %5316 = fadd fast float %5313, %5302
  %5317 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5318 = call float @dx.op.unary.f32(i32 7, float %5315)  ; Saturate(value)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.i32 %5320, 3
  %5322 = extractvalue %dx.types.CBufRet.i32 %5320, 2
  %5323 = add i32 %5322, 0
  %5324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5324, %dx.types.Handle %110, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float %5198, float %5199, float undef, float %5202, float %5203, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = extractvalue %dx.types.ResRet.f32 %5325, 3
  %5330 = and i32 %5321, 255
  %5331 = uitofp i32 %5330 to float
  %5332 = lshr i32 %5321, 8
  %5333 = and i32 %5332, 255
  %5334 = uitofp i32 %5333 to float
  %5335 = lshr i32 %5321, 16
  %5336 = and i32 %5335, 255
  %5337 = uitofp i32 %5336 to float
  %5338 = fmul fast float %5337, 0x3F70101000000000
  %5339 = fmul fast float %5326, %5331
  %5340 = fadd fast float %5339, %5334
  %5341 = fmul fast float %5340, 0x3F70101000000000
  %5342 = fadd fast float %5327, -5.000000e-01
  %5343 = fadd fast float %5329, -5.000000e-01
  %5344 = fmul fast float %5342, %5338
  %5345 = fmul fast float %5343, %5338
  %5346 = fadd fast float %5344, 5.000000e-01
  %5347 = fadd fast float %5345, 5.000000e-01
  %5348 = fmul fast float %5346, 2.000000e+00
  %5349 = fadd fast float %5348, -1.000000e+00
  %5350 = fmul fast float %5347, 2.000000e+00
  %5351 = fadd fast float %5350, -1.000000e+00
  %5352 = fadd fast float %5349, %5351
  %5353 = fmul fast float %5352, 5.000000e-01
  %5354 = fsub fast float %5349, %5351
  %5355 = fmul fast float %5354, 5.000000e-01
  %5356 = call float @dx.op.unary.f32(i32 6, float %5353)  ; FAbs(value)
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5359 = fsub fast float %5357, %5358
  %5360 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5355, float %5359, float %5353, float %5355, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = call float @dx.op.unary.f32(i32 25, float %5360)  ; Rsqrt(value)
  %5362 = fmul fast float %5353, %5361
  %5363 = fmul fast float %5355, %5361
  %5364 = select i1 %5191, i32 %5181, i32 %5182
  %5365 = select i1 %5189, i32 %5180, i32 %5364
  %5366 = sitofp i32 %5365 to float
  %5367 = fmul fast float %5359, %5366
  %5368 = fmul fast float %5367, %5361
  %5369 = select i1 %5191, float %5368, float %5363
  %5370 = select i1 %5191, float %5363, float %5368
  %5371 = select i1 %5189, float %5368, float %5362
  %5372 = select i1 %5189, float %5363, float %5369
  %5373 = select i1 %5189, float %5362, float %5370
  %5374 = fsub fast float %5308, %5135
  %5375 = fsub fast float %5309, %5136
  %5376 = fsub fast float %5310, %5137
  %5377 = fmul fast float %5374, %5280
  %5378 = fmul fast float %5375, %5280
  %5379 = fmul fast float %5376, %5280
  %5380 = fadd fast float %5377, %5135
  %5381 = fadd fast float %5378, %5136
  %5382 = fadd fast float %5379, %5137
  %5383 = fsub fast float %5317, %5132
  %5384 = fsub fast float %5318, %5133
  %5385 = fsub fast float %5319, %5134
  %5386 = fmul fast float %5383, %5280
  %5387 = fmul fast float %5384, %5280
  %5388 = fmul fast float %5385, %5280
  %5389 = fadd fast float %5386, %5132
  %5390 = fadd fast float %5387, %5133
  %5391 = fadd fast float %5388, %5134
  %5392 = fadd fast float %5371, %5138
  %5393 = fadd fast float %5372, %5139
  %5394 = fadd fast float %5373, %5140
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %5394, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.unary.f32(i32 25, float %5395)  ; Rsqrt(value)
  %5397 = fmul fast float %5392, %5396
  %5398 = fmul fast float %5393, %5396
  %5399 = fmul fast float %5394, %5396
  %5400 = fsub fast float %5397, %5138
  %5401 = fsub fast float %5398, %5139
  %5402 = fsub fast float %5399, %5140
  %5403 = fmul fast float %5400, %5280
  %5404 = fmul fast float %5401, %5280
  %5405 = fmul fast float %5402, %5280
  %5406 = fadd fast float %5403, %5138
  %5407 = fadd fast float %5404, %5139
  %5408 = fadd fast float %5405, %5140
  %5409 = call float @dx.op.binary.f32(i32 36, float %5142, float %5328)  ; FMin(a,b)
  %5410 = fsub fast float %5409, %5142
  %5411 = fmul fast float %5410, %5280
  %5412 = fadd fast float %5411, %5142
  %5413 = fsub fast float %5341, %5141
  %5414 = fmul fast float %5413, %5280
  %5415 = fadd fast float %5414, %5141
  br label %5416

; <label>:5416                                    ; preds = %5278, %5240, %5131, %4847
  %5417 = phi float [ %5389, %5278 ], [ %5132, %5240 ], [ %5132, %5131 ], [ %4438, %4847 ]
  %5418 = phi float [ %5390, %5278 ], [ %5133, %5240 ], [ %5133, %5131 ], [ %4439, %4847 ]
  %5419 = phi float [ %5391, %5278 ], [ %5134, %5240 ], [ %5134, %5131 ], [ %4440, %4847 ]
  %5420 = phi float [ %5380, %5278 ], [ %5135, %5240 ], [ %5135, %5131 ], [ %4456, %4847 ]
  %5421 = phi float [ %5381, %5278 ], [ %5136, %5240 ], [ %5136, %5131 ], [ %4457, %4847 ]
  %5422 = phi float [ %5382, %5278 ], [ %5137, %5240 ], [ %5137, %5131 ], [ %4458, %4847 ]
  %5423 = phi float [ %5406, %5278 ], [ %5138, %5240 ], [ %5138, %5131 ], [ %4407, %4847 ]
  %5424 = phi float [ %5407, %5278 ], [ %5139, %5240 ], [ %5139, %5131 ], [ %4408, %4847 ]
  %5425 = phi float [ %5408, %5278 ], [ %5140, %5240 ], [ %5140, %5131 ], [ %4409, %4847 ]
  %5426 = phi float [ %5415, %5278 ], [ %5141, %5240 ], [ %5141, %5131 ], [ %4441, %4847 ]
  %5427 = phi float [ %5412, %5278 ], [ %5142, %5240 ], [ %5142, %5131 ], [ %4413, %4847 ]
  %5428 = fcmp fast une float %4851, 0.000000e+00
  %5429 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 25, float %5429)  ; Rsqrt(value)
  br i1 %5428, label %5438, label %5431

; <label>:5431                                    ; preds = %5416
  %5432 = fmul fast float %5430, %201
  %5433 = fmul fast float %5430, %202
  %5434 = fmul fast float %5430, %203
  %5435 = fsub fast float -0.000000e+00, %5432
  %5436 = fsub fast float -0.000000e+00, %5433
  %5437 = fsub fast float -0.000000e+00, %5434
  br label %5605

; <label>:5438                                    ; preds = %5416
  %5439 = fmul fast float %201, %5430
  %5440 = fsub fast float -0.000000e+00, %5439
  %5441 = fmul fast float %202, %5430
  %5442 = fsub fast float -0.000000e+00, %5441
  %5443 = fmul fast float %203, %5430
  %5444 = fsub fast float -0.000000e+00, %5443
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5440, float %5442, float %5444, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = fmul fast float %4851, 2.500000e+00
  %5447 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5448 = fmul fast float %4851, 0x4013FFFFE0000000
  %5449 = fadd fast float %5448, 0xBFFFFFFFE0000000
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = fmul fast float %4851, 0x4004000020000000
  %5452 = fadd fast float %5451, 0xBFF8000040000000
  %5453 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5454 = fmul fast float %4420, 1.000000e+01
  %5455 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5456 = fmul fast float %5455, 2.000000e+00
  %5457 = fsub fast float 3.000000e+00, %5456
  %5458 = fmul fast float %5455, %5455
  %5459 = fmul fast float %5458, %5457
  %5460 = fsub fast float 1.000000e+00, %5459
  %5461 = fsub fast float 0x3FE3333340000000, %5426
  %5462 = fmul fast float %5461, 0x400AAAAAA0000000
  %5463 = call float @dx.op.unary.f32(i32 7, float %5462)  ; Saturate(value)
  %5464 = fmul fast float %5460, %5463
  %5465 = fmul fast float %5420, 0x3FEA2B8620000000
  %5466 = fmul fast float %5421, 0x3FEA2B8620000000
  %5467 = fmul fast float %5422, 0x3FEA2B8620000000
  %5468 = fadd fast float %5465, 0x3FC81DFBA0000000
  %5469 = fmul fast float %5468, %5420
  %5470 = fadd fast float %5469, 0x3F910E6020000000
  %5471 = fadd fast float %5466, 0x3FC81DFBA0000000
  %5472 = fmul fast float %5471, %5421
  %5473 = fadd fast float %5472, 0x3F910E6020000000
  %5474 = fadd fast float %5467, 0x3FC81DFBA0000000
  %5475 = fmul fast float %5474, %5422
  %5476 = fadd fast float %5475, 0x3F910E6020000000
  %5477 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5480 = fsub fast float %5477, %5420
  %5481 = fsub fast float %5478, %5421
  %5482 = fsub fast float %5479, %5422
  %5483 = fmul fast float %5480, %5447
  %5484 = fmul fast float %5483, %5464
  %5485 = fmul fast float %5481, %5447
  %5486 = fmul fast float %5485, %5464
  %5487 = fmul fast float %5482, %5447
  %5488 = fmul fast float %5487, %5464
  %5489 = fadd fast float %5484, %5420
  %5490 = fadd fast float %5486, %5421
  %5491 = fadd fast float %5488, %5422
  %5492 = fmul fast float %5427, %5427
  %5493 = fmul fast float %5492, %5492
  %5494 = fadd fast float %5450, 1.000000e+00
  %5495 = fsub fast float %5494, %5464
  %5496 = call float @dx.op.unary.f32(i32 7, float %5495)  ; Saturate(value)
  %5497 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = fsub fast float 1.000000e+00, %5493
  %5500 = call float @dx.op.binary.f32(i32 36, float %5496, float %5499)  ; FMin(a,b)
  %5501 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5502 = call float @dx.op.binary.f32(i32 35, float %5500, float %5501)  ; FMax(a,b)
  %5503 = fadd fast float %5498, 0xBFE4CCCCC0000000
  %5504 = fmul fast float %5503, 0x4006DB6DA0000000
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = fmul fast float %5505, 2.000000e+00
  %5507 = fsub fast float 3.000000e+00, %5506
  %5508 = bitcast float %5417 to i32
  %5509 = ashr i32 %5508, 1
  %5510 = add nsw i32 %5509, 532487669
  %5511 = bitcast i32 %5510 to float
  %5512 = fsub fast float 1.000000e+00, %5511
  %5513 = bitcast float %5512 to i32
  %5514 = sub nsw i32 2129859010, %5513
  %5515 = bitcast i32 %5514 to float
  %5516 = fmul fast float %5515, 2.000000e+00
  %5517 = bitcast float %5418 to i32
  %5518 = ashr i32 %5517, 1
  %5519 = add nsw i32 %5518, 532487669
  %5520 = bitcast i32 %5519 to float
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = sub nsw i32 2129859010, %5522
  %5524 = bitcast i32 %5523 to float
  %5525 = fmul fast float %5524, 2.000000e+00
  %5526 = bitcast float %5419 to i32
  %5527 = ashr i32 %5526, 1
  %5528 = add nsw i32 %5527, 532487669
  %5529 = bitcast i32 %5528 to float
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = bitcast float %5530 to i32
  %5532 = sub nsw i32 2129859010, %5531
  %5533 = bitcast i32 %5532 to float
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fsub fast float 0x4002A9FBE0000000, %5516
  %5536 = fadd fast float %5516, 0x3FD54FDF00000000
  %5537 = bitcast float %5536 to i32
  %5538 = sub nsw i32 2129859010, %5537
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5539, %5535
  %5541 = fmul fast float %5540, %5540
  %5542 = fsub fast float 0x4002A9FBE0000000, %5525
  %5543 = fadd fast float %5525, 0x3FD54FDF00000000
  %5544 = bitcast float %5543 to i32
  %5545 = sub nsw i32 2129859010, %5544
  %5546 = bitcast i32 %5545 to float
  %5547 = fmul fast float %5546, %5542
  %5548 = fmul fast float %5547, %5547
  %5549 = fsub fast float 0x4002A9FBE0000000, %5534
  %5550 = fadd fast float %5534, 0x3FD54FDF00000000
  %5551 = bitcast float %5550 to i32
  %5552 = sub nsw i32 2129859010, %5551
  %5553 = bitcast i32 %5552 to float
  %5554 = fmul fast float %5553, %5549
  %5555 = fmul fast float %5554, %5554
  %5556 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5541)  ; FMax(a,b)
  %5557 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5548)  ; FMax(a,b)
  %5558 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5555)  ; FMax(a,b)
  %5559 = fsub fast float 1.000000e+00, %5445
  %5560 = fadd fast float %5559, %5460
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fsub fast float 1.000000e+00, %4832
  %5563 = fmul fast float %5502, %5562
  %5564 = fmul fast float %5505, %5505
  %5565 = fmul fast float %5564, %5563
  %5566 = fmul fast float %5565, %5507
  %5567 = fmul fast float %5562, 0xBFE99999A0000000
  %5568 = fmul fast float %5567, %5447
  %5569 = fmul fast float %5568, %5464
  %5570 = fadd fast float %5569, 1.000000e+00
  %5571 = fadd fast float %5426, -1.000000e+00
  %5572 = fmul fast float %5570, %5571
  %5573 = fadd fast float %5572, 1.000000e+00
  %5574 = fsub fast float %5556, %5417
  %5575 = fsub fast float %5557, %5418
  %5576 = fsub fast float %5558, %5419
  %5577 = fmul fast float %5566, %5574
  %5578 = fmul fast float %5566, %5575
  %5579 = fmul fast float %5566, %5576
  %5580 = fadd fast float %5577, %5417
  %5581 = fadd fast float %5578, %5418
  %5582 = fadd fast float %5579, %5419
  %5583 = fsub fast float %121, %5423
  %5584 = fsub fast float %122, %5424
  %5585 = fsub fast float %123, %5425
  %5586 = fmul fast float %5566, %5583
  %5587 = fmul fast float %5566, %5584
  %5588 = fmul fast float %5566, %5585
  %5589 = fadd fast float %5586, %5423
  %5590 = fadd fast float %5587, %5424
  %5591 = fadd fast float %5588, %5425
  %5592 = fmul fast float %5566, %5561
  %5593 = call float @dx.op.unary.f32(i32 7, float %5573)  ; Saturate(value)
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = fmul fast float %5592, %5594
  %5596 = fadd fast float %5595, %5593
  %5597 = fsub fast float 1.000000e+00, %5427
  %5598 = fmul fast float %5566, %5597
  %5599 = fadd fast float %5598, %5427
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float %5589, float %5590, float %5591)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.unary.f32(i32 25, float %5600)  ; Rsqrt(value)
  %5602 = fmul fast float %5589, %5601
  %5603 = fmul fast float %5590, %5601
  %5604 = fmul fast float %5591, %5601
  br label %5605

; <label>:5605                                    ; preds = %5438, %5431
  %5606 = phi float [ %5437, %5431 ], [ %5444, %5438 ]
  %5607 = phi float [ %5436, %5431 ], [ %5442, %5438 ]
  %5608 = phi float [ %5435, %5431 ], [ %5440, %5438 ]
  %5609 = phi float [ %5434, %5431 ], [ %5443, %5438 ]
  %5610 = phi float [ %5433, %5431 ], [ %5441, %5438 ]
  %5611 = phi float [ %5432, %5431 ], [ %5439, %5438 ]
  %5612 = phi float [ %5417, %5431 ], [ %5580, %5438 ]
  %5613 = phi float [ %5418, %5431 ], [ %5581, %5438 ]
  %5614 = phi float [ %5419, %5431 ], [ %5582, %5438 ]
  %5615 = phi float [ %5420, %5431 ], [ %5489, %5438 ]
  %5616 = phi float [ %5421, %5431 ], [ %5490, %5438 ]
  %5617 = phi float [ %5422, %5431 ], [ %5491, %5438 ]
  %5618 = phi float [ %5423, %5431 ], [ %5602, %5438 ]
  %5619 = phi float [ %5424, %5431 ], [ %5603, %5438 ]
  %5620 = phi float [ %5425, %5431 ], [ %5604, %5438 ]
  %5621 = phi float [ %5426, %5431 ], [ %5596, %5438 ]
  %5622 = phi float [ %5427, %5431 ], [ %5599, %5438 ]
  %5623 = fsub fast float -0.000000e+00, %203
  %5624 = select i1 %260, float 0.000000e+00, float %5614
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5608, float %5607, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5610, float %5609, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = fmul fast float %5627, 2.000000e+00
  %5629 = fmul fast float %5628, %5618
  %5630 = fmul fast float %5628, %5619
  %5631 = fmul fast float %5628, %5620
  %5632 = fsub fast float %5611, %5629
  %5633 = fsub fast float %5610, %5630
  %5634 = fsub fast float %5609, %5631
  %5635 = call float @dx.op.binary.f32(i32 36, float %5622, float 1.000000e+00)  ; FMin(a,b)
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = bitcast float %5636 to i32
  %5638 = ashr i32 %5637, 1
  %5639 = add nsw i32 %5638, 532487669
  %5640 = bitcast i32 %5639 to float
  %5641 = fsub fast float 1.000000e+00, %5621
  %5642 = call float @dx.op.binary.f32(i32 35, float %5641, float 0x3F847AE140000000)  ; FMax(a,b)
  %5643 = fmul fast float %5642, %5642
  %5644 = fmul fast float %5643, %5643
  %5645 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5640, float %5644, float %5645, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5647 = extractvalue %dx.types.ResRet.f32 %5646, 0
  %5648 = fsub fast float 1.000000e+00, %5622
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = fsub fast float 1.000000e+00, %81
  %5652 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5652, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5654 = fdiv fast float %5651, %5653
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, 5.000000e-01
  %5658 = fadd fast float %5657, 5.000000e-01
  %5659 = fmul fast float %5658, %81
  %5660 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fmul fast float %5661, %5654
  %5663 = fadd fast float %5659, %5662
  %5664 = fsub fast float 5.000000e-01, %5657
  %5665 = fmul fast float %5664, %5615
  %5666 = fmul fast float %5664, %5616
  %5667 = fmul fast float %5664, %5617
  %5668 = fadd fast float %5663, %5665
  %5669 = fadd fast float %5663, %5666
  %5670 = fadd fast float %5663, %5667
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5672, 5.000000e-01
  %5674 = fadd fast float %5673, 5.000000e-01
  %5675 = fmul fast float %5674, %81
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5677, %5654
  %5679 = fadd fast float %5675, %5678
  %5680 = fsub fast float 5.000000e-01, %5673
  %5681 = fmul fast float %5680, %5615
  %5682 = fmul fast float %5680, %5616
  %5683 = fmul fast float %5680, %5617
  %5684 = fadd fast float %5679, %5681
  %5685 = fadd fast float %5679, %5682
  %5686 = fadd fast float %5679, %5683
  %5687 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = call float @dx.op.binary.f32(i32 36, float %5615, float %5689)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5636
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = call float @dx.op.binary.f32(i32 36, float %5616, float %5689)  ; FMin(a,b)
  %5697 = fmul fast float %5696, %5636
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sub nsw i32 2129859010, %5699
  %5701 = bitcast i32 %5700 to float
  %5702 = call float @dx.op.binary.f32(i32 36, float %5617, float %5689)  ; FMin(a,b)
  %5703 = fmul fast float %5702, %5636
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = bitcast float %5704 to i32
  %5706 = sub nsw i32 2129859010, %5705
  %5707 = bitcast i32 %5706 to float
  %5708 = fmul fast float %5635, %82
  %5709 = fmul fast float %5708, %5668
  %5710 = fmul fast float %5709, %5695
  %5711 = fmul fast float %5635, %83
  %5712 = fmul fast float %5711, %5669
  %5713 = fmul fast float %5712, %5701
  %5714 = fmul fast float %5635, %84
  %5715 = fmul fast float %5714, %5670
  %5716 = fmul fast float %5715, %5707
  %5717 = call float @dx.op.binary.f32(i32 36, float %5612, float %5689)  ; FMin(a,b)
  %5718 = fmul fast float %5717, %5636
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = bitcast float %5719 to i32
  %5721 = sub nsw i32 2129859010, %5720
  %5722 = bitcast i32 %5721 to float
  %5723 = call float @dx.op.binary.f32(i32 36, float %5613, float %5689)  ; FMin(a,b)
  %5724 = fmul fast float %5723, %5636
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = bitcast float %5725 to i32
  %5727 = sub nsw i32 2129859010, %5726
  %5728 = bitcast i32 %5727 to float
  %5729 = call float @dx.op.binary.f32(i32 36, float %5624, float %5689)  ; FMin(a,b)
  %5730 = fmul fast float %5729, %5636
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = bitcast float %5731 to i32
  %5733 = sub nsw i32 2129859010, %5732
  %5734 = bitcast i32 %5733 to float
  %5735 = fmul fast float %5708, %5684
  %5736 = fmul fast float %5735, %5722
  %5737 = fmul fast float %5711, %5685
  %5738 = fmul fast float %5737, %5728
  %5739 = fmul fast float %5714, %5686
  %5740 = fmul fast float %5739, %5734
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5713, float %5716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = select i1 %260, float 0.000000e+00, float %5710
  %5743 = select i1 %260, float %5741, float %5713
  %5744 = select i1 %260, float 0.000000e+00, float %5716
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5738, float %5740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = select i1 %260, float 0.000000e+00, float %5736
  %5747 = select i1 %260, float %5745, float %5738
  %5748 = select i1 %260, float 0.000000e+00, float %5740
  %5749 = fmul fast float %3809, %3809
  %5750 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  %5751 = fmul fast float %5626, 9.843750e-01
  %5752 = fmul fast float %5621, 9.843750e-01
  %5753 = fadd fast float %5751, 7.812500e-03
  %5754 = fadd fast float %5752, 7.812500e-03
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5753, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = extractvalue %dx.types.ResRet.f32 %5755, 3
  %5760 = fsub fast float 1.000000e+00, %5750
  %5761 = fsub fast float %5758, %5756
  %5762 = fsub fast float %5759, %5757
  %5763 = fmul fast float %5761, %5760
  %5764 = fmul fast float %5762, %5760
  %5765 = fadd fast float %5763, %5756
  %5766 = fadd fast float %5764, %5757
  %5767 = fmul fast float %5765, %5612
  %5768 = fmul fast float %5765, %5613
  %5769 = fmul fast float %5765, %5624
  %5770 = fadd fast float %5767, %5766
  %5771 = fadd fast float %5768, %5766
  %5772 = fadd fast float %5769, %5766
  %5773 = fcmp fast ogt float %4414, 0.000000e+00
  br i1 %5773, label %5774, label %5800

; <label>:5774                                    ; preds = %5605
  %5775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4414, float %5626, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.ResRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.ResRet.f32 %5775, 2
  %5779 = fadd fast float %5776, -5.000000e-01
  %5780 = fadd fast float %5777, -5.000000e-01
  %5781 = fadd fast float %5778, -5.000000e-01
  %5782 = fsub fast float 1.000000e+00, %5612
  %5783 = fsub fast float 1.000000e+00, %5613
  %5784 = fsub fast float 1.000000e+00, %5624
  %5785 = fmul fast float %5612, 4.000000e+00
  %5786 = fmul fast float %5785, %5782
  %5787 = fmul fast float %5786, %5779
  %5788 = fmul fast float %5613, 4.000000e+00
  %5789 = fmul fast float %5788, %5783
  %5790 = fmul fast float %5789, %5780
  %5791 = fmul fast float %5624, 4.000000e+00
  %5792 = fmul fast float %5791, %5784
  %5793 = fmul fast float %5792, %5781
  %5794 = fadd fast float %5787, %5770
  %5795 = fadd fast float %5790, %5771
  %5796 = fadd fast float %5793, %5772
  %5797 = call float @dx.op.unary.f32(i32 7, float %5794)  ; Saturate(value)
  %5798 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5799 = call float @dx.op.unary.f32(i32 7, float %5796)  ; Saturate(value)
  br label %5800

; <label>:5800                                    ; preds = %5774, %5605
  %5801 = phi float [ %5797, %5774 ], [ %5770, %5605 ]
  %5802 = phi float [ %5798, %5774 ], [ %5771, %5605 ]
  %5803 = phi float [ %5799, %5774 ], [ %5772, %5605 ]
  %5804 = call float @dx.op.binary.f32(i32 35, float %5802, float %5803)  ; FMax(a,b)
  %5805 = call float @dx.op.binary.f32(i32 35, float %5801, float %5804)  ; FMax(a,b)
  %5806 = fsub fast float 1.000000e+00, %5805
  %5807 = fmul fast float %5805, %5621
  %5808 = fadd fast float %5807, %5621
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5812 = fmul fast float %5808, %5810
  %5813 = fadd fast float %5812, %5811
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = fsub fast float 1.000000e+00, %5647
  %5816 = fadd fast float %5815, %5814
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fcmp fast olt float %5817, 1.000000e+00
  br i1 %5818, label %5819, label %6295

; <label>:5819                                    ; preds = %5800
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5822 = extractvalue %dx.types.CBufRet.f32 %5820, 3
  %5823 = fmul fast float %5821, %114
  %5824 = fmul fast float %5822, %115
  %5825 = fptoui float %5823 to i32
  %5826 = fptoui float %5824 to i32
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5831 = fadd fast float %101, -4.000000e+00
  %5832 = call float @dx.op.binary.f32(i32 35, float %5831, float 0.000000e+00)  ; FMax(a,b)
  %5833 = fadd fast float %5832, %5828
  %5834 = fmul fast float %5833, %5829
  %5835 = call float @dx.op.unary.f32(i32 23, float %5834)  ; Log(value)
  %5836 = fmul fast float %5835, %5830
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5839 = fmul fast float %5836, %5838
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.i32 %5841, 1
  %5843 = add i32 %5842, -1
  %5844 = uitofp i32 %5842 to float
  %5845 = fmul fast float %5844, %5840
  %5846 = fptoui float %5845 to i32
  %5847 = call i32 @dx.op.binary.i32(i32 40, i32 %5846, i32 %5843)  ; UMin(a,b)
  %5848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.i32 %5848, 2
  %5850 = extractvalue %dx.types.CBufRet.i32 %5848, 3
  %5851 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5826, i32 %5849, i32 %5825)  ; UMad(a,b,c)
  %5852 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5847, i32 %5850, i32 %5851)  ; UMad(a,b,c)
  %5853 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5854 = fptoui float %5853 to i32
  %5855 = lshr i32 %5854, 5
  %5856 = call i32 @dx.op.binary.i32(i32 40, i32 %5855, i32 8191)  ; UMin(a,b)
  %5857 = fsub fast float %4822, %203
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fcmp fast ogt float %5858, 0.000000e+00
  %5860 = fcmp fast ogt float %5634, 0.000000e+00
  %5861 = and i1 %5860, %5859
  br i1 %5861, label %5862, label %5891

; <label>:5862                                    ; preds = %5819
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5634, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.binary.f32(i32 35, float %5863, float -1.000000e+00)  ; FMax(a,b)
  %5865 = call float @dx.op.binary.f32(i32 36, float %5864, float 1.000000e+00)  ; FMin(a,b)
  %5866 = fmul fast float %5865, %5865
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = fmul fast float %5867, 0x3FFC6E2300000000
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  %5871 = call float @dx.op.unary.f32(i32 24, float %5869)  ; Sqrt(value)
  %5872 = fsub fast float 1.000000e+00, %5871
  %5873 = call float @dx.op.unary.f32(i32 23, float %5872)  ; Log(value)
  %5874 = fmul fast float %5873, 5.000000e+00
  %5875 = call float @dx.op.unary.f32(i32 21, float %5874)  ; Exp(value)
  %5876 = fmul fast float %5875, 0x3FEF591A60000000
  %5877 = fadd fast float %5876, 0x3F94DCB540000000
  %5878 = select i1 %5870, float %5877, float 1.000000e+00
  %5879 = fcmp fast oge float %5878, 1.000000e+00
  %5880 = fmul fast float %5863, 2.000000e+00
  %5881 = fadd fast float %5880, %5634
  %5882 = select i1 %5879, float %5881, float %5634
  %5883 = fsub fast float %5882, %5634
  %5884 = fmul fast float %5883, %5858
  %5885 = fadd fast float %5884, %5634
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5633, float %5885, float %5632, float %5633, float %5885)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = call float @dx.op.unary.f32(i32 25, float %5886)  ; Rsqrt(value)
  %5888 = fmul fast float %5887, %5632
  %5889 = fmul fast float %5887, %5633
  %5890 = fmul fast float %5885, %5887
  br label %5891

; <label>:5891                                    ; preds = %5862, %5819
  %5892 = phi float [ %5888, %5862 ], [ %5632, %5819 ]
  %5893 = phi float [ %5889, %5862 ], [ %5633, %5819 ]
  %5894 = phi float [ %5890, %5862 ], [ %5634, %5819 ]
  %5895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.i32 %5895, 2
  %5897 = add nsw i32 %5896, -1
  %5898 = call i32 @dx.op.binary.i32(i32 37, i32 %5897, i32 0)  ; IMax(a,b)
  %5899 = shl i32 %5856, 2
  %5900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.i32 %5900, 0
  %5902 = lshr i32 %5901, 16
  %5903 = and i32 %5901, 65535
  %5904 = lshr i32 %5901, 21
  %5905 = lshr i32 %5903, 5
  %5906 = call i32 @dx.op.binary.i32(i32 40, i32 %5905, i32 %5898)  ; UMin(a,b)
  %5907 = icmp ugt i32 %5904, %5906
  br i1 %5907, label %6271, label %5908

; <label>:5908                                    ; preds = %5891
  br label %5909

; <label>:5909                                    ; preds = %6263, %5908
  %5910 = phi float [ %6264, %6263 ], [ 0.000000e+00, %5908 ]
  %5911 = phi float [ %6265, %6263 ], [ 0.000000e+00, %5908 ]
  %5912 = phi float [ %6266, %6263 ], [ 0.000000e+00, %5908 ]
  %5913 = phi float [ %6267, %6263 ], [ 1.000000e+00, %5908 ]
  %5914 = phi i32 [ %6268, %6263 ], [ %5904, %5908 ]
  %5915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.i32 %5915, 2
  %5917 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5852, i32 %5916, i32 %5914)  ; UMad(a,b,c)
  %5918 = shl i32 %5917, 2
  %5919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.i32 %5919, 0
  %5921 = shl i32 %5914, 5
  %5922 = sub nsw i32 %5902, %5921
  %5923 = call i32 @dx.op.binary.i32(i32 37, i32 %5922, i32 0)  ; IMax(a,b)
  %5924 = call i32 @dx.op.binary.i32(i32 38, i32 %5923, i32 31)  ; IMin(a,b)
  %5925 = sub nsw i32 1, %5902
  %5926 = add nsw i32 %5925, %5903
  %5927 = call i32 @dx.op.binary.i32(i32 37, i32 %5926, i32 0)  ; IMax(a,b)
  %5928 = call i32 @dx.op.binary.i32(i32 38, i32 %5927, i32 32)  ; IMin(a,b)
  %5929 = and i32 %5928, 31
  %5930 = shl i32 -1, %5929
  %5931 = xor i32 %5930, -1
  %5932 = and i32 %5924, 31
  %5933 = shl i32 %5931, %5932
  %5934 = icmp eq i32 %5928, 32
  %5935 = select i1 %5934, i32 -1, i32 %5933
  %5936 = and i32 %5935, %5920
  %5937 = icmp eq i32 %5936, 0
  br i1 %5937, label %6263, label %5938

; <label>:5938                                    ; preds = %5909
  br label %5939

; <label>:5939                                    ; preds = %6046, %5938
  %5940 = phi float [ %6047, %6046 ], [ %5910, %5938 ]
  %5941 = phi float [ %6048, %6046 ], [ %5911, %5938 ]
  %5942 = phi float [ %6049, %6046 ], [ %5912, %5938 ]
  %5943 = phi float [ %6050, %6046 ], [ %5913, %5938 ]
  %5944 = phi i32 [ %5949, %6046 ], [ %5936, %5938 ]
  %5945 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5944)  ; FirstbitLo(value)
  %5946 = add i32 %5945, %5921
  %5947 = and i32 %5945, 31
  %5948 = shl i32 1, %5947
  %5949 = xor i32 %5948, %5944
  %5950 = mul i32 %5946, 72
  %5951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5950, i32 undef)  ; BufferLoad(srv,index,wot)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.ResRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.ResRet.f32 %5951, 2
  %5955 = add i32 %5950, 12
  %5956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.i32 %5956, 0
  %5958 = add i32 %5950, 16
  %5959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.ResRet.f32 %5959, 2
  %5963 = add i32 %5950, 28
  %5964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5963, i32 undef)  ; BufferLoad(srv,index,wot)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = add i32 %5950, 32
  %5967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.ResRet.f32 %5967, 2
  %5971 = extractvalue %dx.types.ResRet.f32 %5967, 3
  %5972 = add i32 %5950, 48
  %5973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5972, i32 undef)  ; BufferLoad(srv,index,wot)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = add i32 %5950, 56
  %5977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = add i32 %5950, 64
  %5981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5980, i32 undef)  ; BufferLoad(srv,index,wot)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = mul i32 %5946, 60
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = add i32 %5984, 12
  %5990 = add i32 %5984, 48
  %5991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5990, i32 undef)  ; BufferLoad(srv,index,wot)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.ResRet.f32 %5991, 2
  %5995 = and i32 %5957, 32767
  %5996 = bitcast float %5952 to i32
  %5997 = icmp eq i32 %5996, -1
  %5998 = bitcast float %5953 to i32
  %5999 = and i32 %5957, 32768
  %6000 = icmp ne i32 %5999, 0
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.CBufRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6005 = fsub fast float %5986, %6002
  %6006 = fsub fast float %5987, %6003
  %6007 = fsub fast float %5988, %6004
  %6008 = fsub fast float %201, %6005
  %6009 = fsub fast float %202, %6006
  %6010 = fsub fast float %203, %6007
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6012, float %6013, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = add i32 %5984, 24
  %6017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6016, i32 undef)  ; BufferLoad(srv,index,wot)
  %6018 = extractvalue %dx.types.ResRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.ResRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.ResRet.f32 %6017, 2
  %6021 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6018, float %6019, float %6020)  ; Dot3(ax,ay,az,bx,by,bz)
  %6022 = add i32 %5984, 36
  %6023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %6022, i32 undef)  ; BufferLoad(srv,index,wot)
  %6024 = extractvalue %dx.types.ResRet.f32 %6023, 0
  %6025 = extractvalue %dx.types.ResRet.f32 %6023, 1
  %6026 = extractvalue %dx.types.ResRet.f32 %6023, 2
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6024, float %6025, float %6026)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6029 = call float @dx.op.unary.f32(i32 6, float %6021)  ; FAbs(value)
  %6030 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6031 = fsub fast float %5992, %6028
  %6032 = fsub fast float %5993, %6029
  %6033 = fsub fast float %5994, %6030
  %6034 = fmul fast float %6031, %5960
  %6035 = fmul fast float %6032, %5961
  %6036 = fmul fast float %6033, %5962
  %6037 = call float @dx.op.binary.f32(i32 36, float %6035, float %6036)  ; FMin(a,b)
  %6038 = call float @dx.op.binary.f32(i32 36, float %6034, float %6037)  ; FMin(a,b)
  %6039 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6040 = call float @dx.op.binary.f32(i32 36, float %5943, float %6039)  ; FMin(a,b)
  %6041 = uitofp i1 %6000 to float
  %6042 = fadd fast float %5858, 1.000000e+00
  %6043 = fsub fast float %6042, %6041
  %6044 = fmul fast float %6040, %6043
  %6045 = fcmp fast ogt float %6044, 0.000000e+00
  br i1 %6045, label %6052, label %6046

; <label>:6046                                    ; preds = %6194, %5939
  %6047 = phi float [ %6258, %6194 ], [ %5940, %5939 ]
  %6048 = phi float [ %6259, %6194 ], [ %5941, %5939 ]
  %6049 = phi float [ %6260, %6194 ], [ %5942, %5939 ]
  %6050 = phi float [ %6261, %6194 ], [ %5943, %5939 ]
  %6051 = icmp eq i32 %5944, %5948
  br i1 %6051, label %6262, label %5939

; <label>:6052                                    ; preds = %5939
  br i1 %5997, label %6110, label %6053

; <label>:6053                                    ; preds = %6052
  %6054 = fsub fast float -0.000000e+00, %6012
  %6055 = fsub fast float -0.000000e+00, %6013
  %6056 = fsub fast float -0.000000e+00, %6014
  %6057 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %6054, float %6055, float %6056)  ; Dot3(ax,ay,az,bx,by,bz)
  %6058 = fsub fast float -0.000000e+00, %6057
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6054, float %6055, float %6056)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = fadd fast float %6059, %5975
  %6061 = fadd fast float %5974, %6059
  %6062 = fsub fast float -0.000000e+00, %6061
  %6063 = fcmp ogt float %6057, -0.000000e+00
  %6064 = select i1 %6063, float %6062, float %6060
  %6065 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6066 = fdiv fast float 1.000000e+00, %6065
  %6067 = fmul fast float %6064, %6066
  %6068 = call float @dx.op.binary.f32(i32 35, float %6067, float 0.000000e+00)  ; FMax(a,b)
  %6069 = fsub fast float -0.000000e+00, %6018
  %6070 = fsub fast float -0.000000e+00, %6019
  %6071 = fsub fast float -0.000000e+00, %6020
  %6072 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = fsub fast float -0.000000e+00, %6072
  %6074 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fadd fast float %6074, %5979
  %6076 = fadd fast float %5978, %6074
  %6077 = fsub fast float -0.000000e+00, %6076
  %6078 = fcmp ogt float %6072, -0.000000e+00
  %6079 = select i1 %6078, float %6077, float %6075
  %6080 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6081 = fdiv fast float 1.000000e+00, %6080
  %6082 = fmul fast float %6079, %6081
  %6083 = call float @dx.op.binary.f32(i32 35, float %6082, float 0.000000e+00)  ; FMax(a,b)
  %6084 = fsub fast float -0.000000e+00, %6024
  %6085 = fsub fast float -0.000000e+00, %6025
  %6086 = fsub fast float -0.000000e+00, %6026
  %6087 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float %6084, float %6085, float %6086)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = fsub fast float -0.000000e+00, %6087
  %6089 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6084, float %6085, float %6086)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = fadd fast float %6089, %5983
  %6091 = fadd fast float %5982, %6089
  %6092 = fsub fast float -0.000000e+00, %6091
  %6093 = fcmp ogt float %6087, -0.000000e+00
  %6094 = select i1 %6093, float %6092, float %6090
  %6095 = call float @dx.op.unary.f32(i32 6, float %6088)  ; FAbs(value)
  %6096 = fdiv fast float 1.000000e+00, %6095
  %6097 = fmul fast float %6094, %6096
  %6098 = call float @dx.op.binary.f32(i32 35, float %6097, float 0.000000e+00)  ; FMax(a,b)
  %6099 = call float @dx.op.binary.f32(i32 36, float %6083, float %6098)  ; FMin(a,b)
  %6100 = call float @dx.op.binary.f32(i32 36, float %6068, float %6099)  ; FMin(a,b)
  %6101 = fmul fast float %6100, %5892
  %6102 = fmul fast float %6100, %5893
  %6103 = fmul fast float %6100, %5894
  %6104 = fadd fast float %6101, %201
  %6105 = fadd fast float %6102, %202
  %6106 = fadd fast float %6103, %203
  %6107 = fsub fast float %6104, %5952
  %6108 = fsub fast float %6105, %5953
  %6109 = fsub fast float %6106, %5954
  br label %6117

; <label>:6110                                    ; preds = %6052
  %6111 = fmul fast float %5892, 8.096000e+03
  %6112 = fmul fast float %5893, 8.096000e+03
  %6113 = fmul fast float %5894, 8.096000e+03
  %6114 = fadd fast float %6111, %201
  %6115 = fadd fast float %6112, %202
  %6116 = fadd fast float %6113, %203
  br label %6117

; <label>:6117                                    ; preds = %6110, %6053
  %6118 = phi float [ %5892, %6110 ], [ %6107, %6053 ]
  %6119 = phi float [ %5893, %6110 ], [ %6108, %6053 ]
  %6120 = phi float [ %5894, %6110 ], [ %6109, %6053 ]
  %6121 = phi float [ %6114, %6110 ], [ %6104, %6053 ]
  %6122 = phi float [ %6115, %6110 ], [ %6105, %6053 ]
  %6123 = phi float [ %6116, %6110 ], [ %6106, %6053 ]
  %6124 = fcmp fast olt float %5971, 1.000000e+00
  br i1 %6124, label %6125, label %6156, !dx.controlflow.hints !100

; <label>:6125                                    ; preds = %6117
  %6126 = fmul fast float %6120, %5969
  %6127 = fmul fast float %6119, %5970
  %6128 = fsub fast float %6126, %6127
  %6129 = fmul fast float %6118, %5970
  %6130 = fmul fast float %6120, %5968
  %6131 = fsub fast float %6129, %6130
  %6132 = fmul fast float %6119, %5968
  %6133 = fmul fast float %6118, %5969
  %6134 = fsub fast float %6132, %6133
  %6135 = fmul fast float %6128, 2.000000e+00
  %6136 = fmul fast float %6131, 2.000000e+00
  %6137 = fmul fast float %6134, 2.000000e+00
  %6138 = fmul fast float %6135, %5971
  %6139 = fmul fast float %6136, %5971
  %6140 = fmul fast float %6137, %5971
  %6141 = fmul fast float %6137, %5969
  %6142 = fmul fast float %6136, %5970
  %6143 = fmul fast float %6135, %5970
  %6144 = fmul fast float %6137, %5968
  %6145 = fmul fast float %6136, %5968
  %6146 = fmul fast float %6135, %5969
  %6147 = fadd fast float %6141, %6118
  %6148 = fadd fast float %6147, %6138
  %6149 = fsub fast float %6148, %6142
  %6150 = fsub fast float %6119, %6144
  %6151 = fadd fast float %6150, %6139
  %6152 = fadd fast float %6151, %6143
  %6153 = fadd fast float %6140, %6120
  %6154 = fsub fast float %6153, %6146
  %6155 = fadd fast float %6154, %6145
  br label %6156

; <label>:6156                                    ; preds = %6125, %6117
  %6157 = phi float [ %6149, %6125 ], [ %6118, %6117 ]
  %6158 = phi float [ %6152, %6125 ], [ %6119, %6117 ]
  %6159 = phi float [ %6155, %6125 ], [ %6120, %6117 ]
  br i1 %5997, label %6191, label %6160

; <label>:6160                                    ; preds = %6156
  %6161 = fmul fast float %5621, 0x400187C840000000
  %6162 = fadd fast float %6161, 0xC00EFC2120000000
  %6163 = fmul fast float %6162, %5621
  %6164 = fadd fast float %6163, 0x3FE5D16340000000
  %6165 = fmul fast float %6164, %5621
  %6166 = fadd fast float %6165, 1.000000e+00
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = fsub fast float %6121, %201
  %6169 = fsub fast float %6122, %202
  %6170 = fsub fast float %6123, %203
  %6171 = fsub fast float %6121, %5952
  %6172 = fsub fast float %6122, %5953
  %6173 = fsub fast float %6123, %5954
  %6174 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = call float @dx.op.dot3.f32(i32 55, float %6171, float %6172, float %6173, float %6171, float %6172, float %6173)  ; Dot3(ax,ay,az,bx,by,bz)
  %6176 = fadd fast float %6175, 0x3EE4F8B580000000
  %6177 = fdiv fast float %6174, %6176
  %6178 = bitcast float %6177 to i32
  %6179 = ashr i32 %6178, 1
  %6180 = add nsw i32 %6179, 532487669
  %6181 = bitcast i32 %6180 to float
  %6182 = fmul fast float %6181, %6167
  %6183 = call float @dx.op.unary.f32(i32 7, float %6182)  ; Saturate(value)
  %6184 = fmul fast float %6183, 0x4009981AE0000000
  %6185 = fsub fast float 0x40111BBD80000000, %6184
  %6186 = fmul fast float %6185, %6183
  %6187 = fadd fast float %6186, 0xC0009F6020000000
  %6188 = fmul fast float %6187, %6183
  %6189 = fadd fast float %6188, 1.000000e+00
  %6190 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  br label %6194

; <label>:6191                                    ; preds = %6156
  %6192 = icmp ne i32 %5998, -1
  %6193 = zext i1 %6192 to i32
  br label %6194

; <label>:6194                                    ; preds = %6191, %6160
  %6195 = phi float [ %5621, %6191 ], [ %6190, %6160 ]
  %6196 = phi i32 [ %6193, %6191 ], [ 0, %6160 ]
  %6197 = fmul float %6195, 5.000000e+00
  %6198 = fsub float 5.000000e+00, %6197
  %6199 = icmp ne i32 %6196, 0
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 3
  %6202 = fadd fast float %6201, %6198
  %6203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6202)  ; FMax(a,b)
  %6204 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6205 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6206 = fadd fast float %6205, %6204
  %6207 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6208 = fadd fast float %6206, %6207
  %6209 = fcmp fast oeq float %6208, 0.000000e+00
  %6210 = fdiv fast float 1.000000e+00, %6208
  %6211 = select i1 %6209, float 1.000000e+00, float %6210
  %6212 = fmul fast float %6211, %6157
  %6213 = fmul fast float %6211, %6158
  %6214 = call float @dx.op.unary.f32(i32 6, float %6213)  ; FAbs(value)
  %6215 = call float @dx.op.unary.f32(i32 6, float %6212)  ; FAbs(value)
  %6216 = fsub fast float 1.000000e+00, %6214
  %6217 = fsub fast float 1.000000e+00, %6215
  %6218 = fcmp fast oge float %6212, 0.000000e+00
  %6219 = fcmp fast oge float %6213, 0.000000e+00
  %6220 = select i1 %6218, float 1.000000e+00, float -1.000000e+00
  %6221 = select i1 %6219, float 1.000000e+00, float -1.000000e+00
  %6222 = fcmp fast ole float %6159, 0.000000e+00
  %6223 = fmul fast float %6220, %6216
  %6224 = fmul fast float %6221, %6217
  %6225 = select i1 %6222, float %6223, float %6212
  %6226 = select i1 %6222, float %6224, float %6213
  %6227 = fmul fast float %6225, 5.000000e-01
  %6228 = fmul fast float %6226, 5.000000e-01
  %6229 = fadd fast float %6227, 5.000000e-01
  %6230 = fadd fast float %6228, 5.000000e-01
  %6231 = uitofp i32 %5995 to float
  %6232 = call float @dx.op.binary.f32(i32 36, float %6203, float 3.000000e+00)  ; FMin(a,b)
  %6233 = fadd fast float %6232, 2.000000e+00
  %6234 = call float @dx.op.unary.f32(i32 21, float %6233)  ; Exp(value)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6236 = fmul fast float %6235, %6234
  %6237 = fmul fast float %6236, 2.000000e+00
  %6238 = fsub fast float 1.000000e+00, %6237
  %6239 = fmul fast float %6229, %6238
  %6240 = fmul fast float %6230, %6238
  %6241 = fadd fast float %6239, %6236
  %6242 = fadd fast float %6240, %6236
  %6243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %6241, float %6242, float %6231, float undef, i32 0, i32 0, i32 undef, float %6203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6249 = fmul fast float %6248, %5965
  %6250 = call float @dx.op.binary.f32(i32 36, float %5687, float %6249)  ; FMin(a,b)
  %6251 = select i1 %6199, float %6250, float %6249
  %6252 = fmul fast float %6244, %6044
  %6253 = fmul fast float %6252, %6251
  %6254 = fmul fast float %6245, %6044
  %6255 = fmul fast float %6254, %6251
  %6256 = fmul fast float %6246, %6044
  %6257 = fmul fast float %6256, %6251
  %6258 = fadd fast float %6253, %5940
  %6259 = fadd fast float %6255, %5941
  %6260 = fadd fast float %6257, %5942
  %6261 = fsub fast float %5943, %6044
  br label %6046

; <label>:6262                                    ; preds = %6046
  br label %6263

; <label>:6263                                    ; preds = %6262, %5909
  %6264 = phi float [ %5910, %5909 ], [ %6047, %6262 ]
  %6265 = phi float [ %5911, %5909 ], [ %6048, %6262 ]
  %6266 = phi float [ %5912, %5909 ], [ %6049, %6262 ]
  %6267 = phi float [ %5913, %5909 ], [ %6050, %6262 ]
  %6268 = add i32 %5914, 1
  %6269 = icmp ugt i32 %6268, %5906
  br i1 %6269, label %6270, label %5909, !llvm.loop !101

; <label>:6270                                    ; preds = %6263
  br label %6271

; <label>:6271                                    ; preds = %6270, %5891
  %6272 = phi float [ 0.000000e+00, %5891 ], [ %6264, %6270 ]
  %6273 = phi float [ 0.000000e+00, %5891 ], [ %6265, %6270 ]
  %6274 = phi float [ 0.000000e+00, %5891 ], [ %6266, %6270 ]
  %6275 = call float @dx.op.dot3.f32(i32 55, float %6272, float %6273, float %6274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6276 = select i1 %260, float 0.000000e+00, float %6272
  %6277 = select i1 %260, float %6275, float %6273
  %6278 = select i1 %260, float 0.000000e+00, float %6274
  %6279 = fcmp fast olt float %5817, 0.000000e+00
  %6280 = call float @dx.op.unary.f32(i32 6, float %5817)  ; FAbs(value)
  %6281 = fmul fast float %6280, %5746
  %6282 = fmul fast float %6280, %5747
  %6283 = fmul fast float %6280, %5748
  %6284 = select i1 %6279, float %5746, float %6281
  %6285 = select i1 %6279, float %5747, float %6282
  %6286 = select i1 %6279, float %5748, float %6283
  %6287 = fsub fast float 1.000000e+00, %6280
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = fmul fast float %6288, %6276
  %6290 = fmul fast float %6288, %6277
  %6291 = fmul fast float %6288, %6278
  %6292 = fadd fast float %6284, %6289
  %6293 = fadd fast float %6285, %6290
  %6294 = fadd fast float %6286, %6291
  br label %6295

; <label>:6295                                    ; preds = %6271, %5800
  %6296 = phi float [ %5746, %5800 ], [ %6292, %6271 ]
  %6297 = phi float [ %5747, %5800 ], [ %6293, %6271 ]
  %6298 = phi float [ %5748, %5800 ], [ %6294, %6271 ]
  %6299 = fmul fast float %5806, %5742
  %6300 = fmul fast float %5806, %5743
  %6301 = fmul fast float %5806, %5744
  %6302 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = fcmp fast ogt float %6302, 0x3E7FF19E20000000
  %6304 = fdiv fast float 1.000000e+00, %6302
  %6305 = select i1 %6303, float %6304, float 0.000000e+00
  %6306 = fmul fast float %6305, %5615
  %6307 = fmul fast float %6305, %5616
  %6308 = fmul fast float %6305, %5617
  %6309 = fadd fast float %6306, -1.000000e+00
  %6310 = fadd fast float %6307, -1.000000e+00
  %6311 = fadd fast float %6308, -1.000000e+00
  %6312 = fmul fast float %6309, 5.000000e-01
  %6313 = fmul fast float %6310, 5.000000e-01
  %6314 = fmul fast float %6311, 5.000000e-01
  %6315 = fadd fast float %6312, 1.000000e+00
  %6316 = fadd fast float %6313, 1.000000e+00
  %6317 = fadd fast float %6314, 1.000000e+00
  %6318 = call float @dx.op.binary.f32(i32 35, float %5626, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6319 = fdiv fast float %3809, %6318
  %6320 = fcmp fast olt float %4442, 1.270000e+02
  %6321 = fcmp fast olt float %4443, 1.270000e+02
  %6322 = fcmp fast olt float %4444, 1.270000e+02
  %6323 = fmul fast float %4442, 0xBFF7154760000000
  %6324 = fmul fast float %6323, %6319
  %6325 = fmul fast float %4443, 0xBFF7154760000000
  %6326 = fmul fast float %6325, %6319
  %6327 = fmul fast float %4444, 0xBFF7154760000000
  %6328 = fmul fast float %6327, %6319
  %6329 = call float @dx.op.unary.f32(i32 21, float %6324)  ; Exp(value)
  %6330 = call float @dx.op.unary.f32(i32 21, float %6326)  ; Exp(value)
  %6331 = call float @dx.op.unary.f32(i32 21, float %6328)  ; Exp(value)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6333 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6334 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6335 = select i1 %6320, float %6332, float 0.000000e+00
  %6336 = select i1 %6321, float %6333, float 0.000000e+00
  %6337 = select i1 %6322, float %6334, float 0.000000e+00
  %6338 = fmul fast float %6335, %5806
  %6339 = fmul fast float %6336, %5806
  %6340 = fmul fast float %6337, %5806
  %6341 = fadd fast float %6338, -1.000000e+00
  %6342 = fadd fast float %6339, -1.000000e+00
  %6343 = fadd fast float %6340, -1.000000e+00
  %6344 = fmul fast float %6296, %5801
  %6345 = fmul fast float %6297, %5802
  %6346 = fmul fast float %6298, %5803
  %6347 = fsub fast float 1.000000e+00, %5626
  %6348 = bitcast float %6347 to i32
  %6349 = sitofp i32 %6348 to float
  %6350 = fmul fast float %6349, 5.000000e+00
  %6351 = fadd fast float %6350, 0xC1EFBF8940000000
  %6352 = fptosi float %6351 to i32
  %6353 = bitcast i32 %6352 to float
  %6354 = fmul fast float %6353, %4415
  %6355 = fmul fast float %5742, %6354
  %6356 = fmul fast float %6355, %5806
  %6357 = fmul fast float %6356, %6315
  %6358 = fmul fast float %5743, %6354
  %6359 = fmul fast float %6358, %5806
  %6360 = fmul fast float %6359, %6316
  %6361 = fmul fast float %5744, %6354
  %6362 = fmul fast float %6361, %5806
  %6363 = fmul fast float %6362, %6317
  %6364 = fmul fast float %6299, %4411
  %6365 = fmul fast float %6300, %4411
  %6366 = fmul fast float %6301, %4411
  %6367 = fadd fast float %6344, %4398
  %6368 = fadd fast float %6367, %6357
  %6369 = fmul fast float %6368, %4411
  %6370 = fadd fast float %6345, %4399
  %6371 = fadd fast float %6370, %6360
  %6372 = fmul fast float %6371, %4411
  %6373 = fadd fast float %6346, %4400
  %6374 = fadd fast float %6373, %6363
  %6375 = fmul fast float %6374, %4411
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 3
  %6378 = fcmp fast oeq float %6377, 0.000000e+00
  br i1 %6378, label %8095, label %6379

; <label>:6379                                    ; preds = %6295
  %6380 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6381 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6382 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = select i1 %260, float %6388, float %6384
  %6392 = select i1 %260, float %6390, float %6385
  %6393 = select i1 %260, float %6389, float %6386
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6396 = fmul fast float %6395, %121
  %6397 = fmul fast float %6395, %122
  %6398 = fmul fast float %6395, %123
  %6399 = fadd fast float %6396, %201
  %6400 = fadd fast float %6397, %202
  %6401 = fadd fast float %6398, %203
  %6402 = fcmp fast olt float %6377, 0.000000e+00
  br i1 %6402, label %7660, label %6403

; <label>:6403                                    ; preds = %6379
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.CBufRet.f32 %6404, 1
  %6407 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6408 = extractvalue %dx.types.CBufRet.f32 %6404, 3
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6409, 3
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6414, 3
  %6419 = fmul fast float %6405, %6399
  %6420 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6406, float %6419)  ; FMad(a,b,c)
  %6421 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6407, float %6420)  ; FMad(a,b,c)
  %6422 = fadd fast float %6421, %6408
  %6423 = fmul fast float %6410, %6399
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6411, float %6423)  ; FMad(a,b,c)
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6412, float %6424)  ; FMad(a,b,c)
  %6426 = fadd fast float %6425, %6413
  %6427 = fmul fast float %6415, %6399
  %6428 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6416, float %6427)  ; FMad(a,b,c)
  %6429 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6417, float %6428)  ; FMad(a,b,c)
  %6430 = fadd fast float %6429, %6418
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = fcmp fast une float %6432, 0.000000e+00
  %6434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6435 = extractvalue %dx.types.CBufRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6434, 3
  %6438 = fmul fast float %6437, %6422
  %6439 = fmul fast float %6437, %6426
  %6440 = fadd fast float %6438, %6435
  %6441 = fadd fast float %6439, %6436
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6446 = fmul fast float %6445, %6422
  %6447 = fmul fast float %6445, %6426
  %6448 = fadd fast float %6446, %6443
  %6449 = fadd fast float %6447, %6444
  %6450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6450, 1
  %6452 = fsub fast float %6451, %6430
  %6453 = extractvalue %dx.types.CBufRet.f32 %6450, 2
  %6454 = fmul fast float %6452, %6453
  %6455 = fsub fast float 1.000000e+00, %6454
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  br i1 %6433, label %6517, label %6457

; <label>:6457                                    ; preds = %6403
  %6458 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6461 = fadd fast float %6460, %6458
  %6462 = fcmp fast ogt float %6461, 0.000000e+00
  br i1 %6462, label %6463, label %6487

; <label>:6463                                    ; preds = %6457
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 1
  %6467 = fsub fast float %6448, %6465
  %6468 = fsub fast float %6449, %6466
  %6469 = fcmp fast olt float %6467, 0.000000e+00
  %6470 = fcmp fast olt float %6468, 0.000000e+00
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.CBufRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.CBufRet.f32 %6471, 3
  %6476 = select i1 %6469, float %6472, float %6474
  %6477 = select i1 %6470, float %6473, float %6475
  %6478 = fmul fast float %6476, %6467
  %6479 = fmul fast float %6477, %6468
  %6480 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6481 = call float @dx.op.unary.f32(i32 6, float %6479)  ; FAbs(value)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6483 = call float @dx.op.binary.f32(i32 35, float %6480, float %6481)  ; FMax(a,b)
  %6484 = fsub fast float %6482, %6483
  %6485 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6486 = fmul fast float %6485, %6456
  br label %6487

; <label>:6487                                    ; preds = %6463, %6457
  %6488 = phi float [ %6486, %6463 ], [ 0.000000e+00, %6457 ]
  %6489 = extractvalue %dx.types.CBufRet.f32 %6434, 2
  %6490 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6491 = fadd fast float %6490, %6489
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  br i1 %6492, label %6493, label %6517

; <label>:6493                                    ; preds = %6487
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = fsub fast float %6440, %6495
  %6498 = fsub fast float %6441, %6496
  %6499 = fcmp fast olt float %6497, 0.000000e+00
  %6500 = fcmp fast olt float %6498, 0.000000e+00
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.CBufRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.CBufRet.f32 %6501, 3
  %6506 = select i1 %6499, float %6502, float %6504
  %6507 = select i1 %6500, float %6503, float %6505
  %6508 = fmul fast float %6506, %6497
  %6509 = fmul fast float %6507, %6498
  %6510 = call float @dx.op.unary.f32(i32 6, float %6508)  ; FAbs(value)
  %6511 = call float @dx.op.unary.f32(i32 6, float %6509)  ; FAbs(value)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6513 = call float @dx.op.binary.f32(i32 35, float %6510, float %6511)  ; FMax(a,b)
  %6514 = fsub fast float %6512, %6513
  %6515 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  %6516 = fmul fast float %6515, %6456
  br label %6517

; <label>:6517                                    ; preds = %6493, %6487, %6403
  %6518 = phi float [ 0.000000e+00, %6403 ], [ %6516, %6493 ], [ 0.000000e+00, %6487 ]
  %6519 = phi float [ 0.000000e+00, %6403 ], [ %6488, %6493 ], [ %6488, %6487 ]
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6522 = call float @dx.op.unary.f32(i32 7, float %6521)  ; Saturate(value)
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = extractvalue %dx.types.CBufRet.f32 %6523, 1
  %6526 = fsub fast float %6422, %6524
  %6527 = fsub fast float %6426, %6525
  %6528 = fcmp fast olt float %6526, 0.000000e+00
  %6529 = fcmp fast olt float %6527, 0.000000e+00
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = extractvalue %dx.types.CBufRet.f32 %6530, 3
  %6535 = select i1 %6528, float %6531, float %6533
  %6536 = select i1 %6529, float %6532, float %6534
  %6537 = fmul fast float %6535, %6526
  %6538 = fmul fast float %6536, %6527
  %6539 = call float @dx.op.unary.f32(i32 6, float %6537)  ; FAbs(value)
  %6540 = call float @dx.op.unary.f32(i32 6, float %6538)  ; FAbs(value)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6542 = call float @dx.op.binary.f32(i32 35, float %6539, float %6540)  ; FMax(a,b)
  %6543 = fsub fast float %6541, %6542
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = call float @dx.op.binary.f32(i32 36, float %6544, float %6522)  ; FMin(a,b)
  %6546 = fmul fast float %6545, %6456
  %6547 = fsub fast float %6518, %6546
  %6548 = fsub fast float %6519, %6518
  %6549 = fsub fast float %6548, %6546
  %6550 = call float @dx.op.binary.f32(i32 35, float %6518, float %6519)  ; FMax(a,b)
  %6551 = call float @dx.op.binary.f32(i32 35, float %6546, float %6550)  ; FMax(a,b)
  %6552 = fcmp fast olt float %6551, 1.000000e+00
  br i1 %6552, label %6553, label %6951, !dx.controlflow.hints !103

; <label>:6553                                    ; preds = %6517
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 0
  %6556 = fcmp fast une float %6555, 0.000000e+00
  br i1 %6556, label %6557, label %6951, !dx.controlflow.hints !104

; <label>:6557                                    ; preds = %6553
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6561 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6562 = extractvalue %dx.types.CBufRet.f32 %6558, 3
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = fmul fast float %6559, %6399
  %6574 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6560, float %6573)  ; FMad(a,b,c)
  %6575 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6561, float %6574)  ; FMad(a,b,c)
  %6576 = fadd fast float %6575, %6562
  %6577 = fmul fast float %6564, %6399
  %6578 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6565, float %6577)  ; FMad(a,b,c)
  %6579 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6566, float %6578)  ; FMad(a,b,c)
  %6580 = fadd fast float %6579, %6567
  %6581 = fmul fast float %6569, %6399
  %6582 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %6570, float %6581)  ; FMad(a,b,c)
  %6583 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %6571, float %6582)  ; FMad(a,b,c)
  %6584 = fadd fast float %6583, %6572
  %6585 = fcmp fast oge float %6576, 1.000000e+00
  %6586 = fcmp fast oge float %6580, 1.000000e+00
  %6587 = or i1 %6585, %6586
  %6588 = fcmp fast olt float %6576, 0.000000e+00
  %6589 = fcmp fast olt float %6580, 0.000000e+00
  %6590 = or i1 %6588, %6589
  %6591 = or i1 %6587, %6590
  br i1 %6591, label %6951, label %6592, !dx.controlflow.hints !105

; <label>:6592                                    ; preds = %6557
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %6597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.i32 %6597, 2
  %6599 = uitofp i32 %6598 to float
  %6600 = extractvalue %dx.types.CBufRet.i32 %6597, 3
  %6601 = uitofp i32 %6600 to float
  %6602 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6603 = fmul fast float %6602, 2.000000e+00
  %6604 = fsub fast float %6576, %6594
  %6605 = fsub fast float %6580, %6595
  %6606 = fmul fast float %6603, %6604
  %6607 = fmul fast float %6603, %6605
  %6608 = fdiv fast float 1.000000e+00, %6382
  %6609 = fmul fast float %6607, %6608
  %6610 = call float @dx.op.unary.f32(i32 6, float %6609)  ; FAbs(value)
  %6611 = fmul fast float %6596, %6401
  %6612 = fmul fast float %6611, %6603
  %6613 = call float @dx.op.unary.f32(i32 6, float %6612)  ; FAbs(value)
  %6614 = call float @dx.op.unary.f32(i32 6, float %6606)  ; FAbs(value)
  %6615 = call float @dx.op.binary.f32(i32 35, float %6613, float %6610)  ; FMax(a,b)
  %6616 = call float @dx.op.binary.f32(i32 35, float %6614, float %6615)  ; FMax(a,b)
  %6617 = fmul fast float %6616, 2.000000e+00
  %6618 = call float @dx.op.unary.f32(i32 23, float %6617)  ; Log(value)
  %6619 = call float @dx.op.binary.f32(i32 35, float %6618, float %6599)  ; FMax(a,b)
  %6620 = call float @dx.op.unary.f32(i32 22, float %6619)  ; Frc(value)
  %6621 = fadd fast float %6620, 0xBFEA666660000000
  %6622 = fmul fast float %6621, 8.000000e+00
  %6623 = call float @dx.op.unary.f32(i32 7, float %6622)  ; Saturate(value)
  %6624 = call float @dx.op.unary.f32(i32 27, float %6619)  ; Round_ni(value)
  %6625 = fadd fast float %6624, %6623
  %6626 = call float @dx.op.binary.f32(i32 36, float %6625, float %6601)  ; FMin(a,b)
  %6627 = call float @dx.op.unary.f32(i32 27, float %6626)  ; Round_ni(value)
  %6628 = fsub fast float -0.000000e+00, %6627
  %6629 = call float @dx.op.unary.f32(i32 21, float %6628)  ; Exp(value)
  %6630 = fmul fast float %6629, %6603
  %6631 = fmul fast float %6630, %6576
  %6632 = fmul fast float %6630, %6580
  %6633 = fmul fast float %6631, 2.500000e-01
  %6634 = fmul fast float %6632, 2.500000e-01
  %6635 = fadd fast float %6633, 5.000000e-01
  %6636 = fadd fast float %6634, 5.000000e-01
  %6637 = fsub fast float %6601, %6599
  %6638 = fptoui float %6637 to i32
  %6639 = add i32 %6638, 320
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6639)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6643 = fcmp fast une float %6626, %6601
  %6644 = fsub fast float %6576, %6641
  %6645 = fsub fast float %6580, %6642
  %6646 = call float @dx.op.unary.f32(i32 6, float %6644)  ; FAbs(value)
  %6647 = call float @dx.op.unary.f32(i32 6, float %6645)  ; FAbs(value)
  %6648 = fmul fast float %6646, %6630
  %6649 = fmul fast float %6647, %6630
  %6650 = fcmp fast olt float %6648, 1.000000e+00
  %6651 = fcmp fast olt float %6649, 1.000000e+00
  %6652 = and i1 %6650, %6651
  %6653 = or i1 %6643, %6652
  br i1 %6653, label %6654, label %6951, !dx.controlflow.hints !106

; <label>:6654                                    ; preds = %6592
  %6655 = fmul fast float %6632, 5.000000e-01
  %6656 = fmul fast float %6631, 5.000000e-01
  %6657 = fadd fast float %6655, 5.000000e-01
  %6658 = fadd fast float %6656, 5.000000e-01
  %6659 = sitofp i32 %6598 to float
  %6660 = fsub fast float %6626, %6659
  %6661 = call float @dx.op.unary.f32(i32 27, float %6660)  ; Round_ni(value)
  %6662 = call float @dx.op.unary.f32(i32 22, float %6626)  ; Frc(value)
  %6663 = call float @dx.op.unary.f32(i32 22, float %6658)  ; Frc(value)
  %6664 = call float @dx.op.unary.f32(i32 22, float %6657)  ; Frc(value)
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6663, float %6664, float %6661, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.ResRet.f32 %6665, 2
  %6669 = extractvalue %dx.types.ResRet.f32 %6665, 3
  %6670 = fcmp fast ogt float %6662, 0.000000e+00
  br i1 %6670, label %6671, label %6692, !dx.controlflow.hints !107

; <label>:6671                                    ; preds = %6654
  %6672 = fadd fast float %6661, 1.000000e+00
  %6673 = call float @dx.op.unary.f32(i32 22, float %6635)  ; Frc(value)
  %6674 = call float @dx.op.unary.f32(i32 22, float %6636)  ; Frc(value)
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6673, float %6674, float %6672, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.ResRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.ResRet.f32 %6675, 2
  %6679 = extractvalue %dx.types.ResRet.f32 %6675, 3
  %6680 = fsub fast float %6676, %6666
  %6681 = fsub fast float %6677, %6667
  %6682 = fsub fast float %6678, %6668
  %6683 = fsub fast float %6679, %6669
  %6684 = fmul fast float %6680, %6662
  %6685 = fmul fast float %6681, %6662
  %6686 = fmul fast float %6682, %6662
  %6687 = fmul fast float %6683, %6662
  %6688 = fadd fast float %6684, %6666
  %6689 = fadd fast float %6685, %6667
  %6690 = fadd fast float %6686, %6668
  %6691 = fadd fast float %6687, %6669
  br label %6692

; <label>:6692                                    ; preds = %6671, %6654
  %6693 = phi float [ %6688, %6671 ], [ %6666, %6654 ]
  %6694 = phi float [ %6689, %6671 ], [ %6667, %6654 ]
  %6695 = phi float [ %6690, %6671 ], [ %6668, %6654 ]
  %6696 = phi float [ %6691, %6671 ], [ %6669, %6654 ]
  %6697 = fadd fast float %6693, -5.000000e-01
  %6698 = fadd fast float %6695, -5.000000e-01
  %6699 = fmul fast float %6697, 0xBFD5555560000000
  %6700 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6698, float %6699)  ; FMad(a,b,c)
  %6701 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6694, float 0.000000e+00)  ; FMad(a,b,c)
  %6702 = fadd fast float %6701, %6696
  %6703 = fmul fast float %6697, -7.500000e-01
  %6704 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6698, float %6703)  ; FMad(a,b,c)
  %6705 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6694, float 0.000000e+00)  ; FMad(a,b,c)
  %6706 = fadd fast float %6705, %6696
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6714 = fsub fast float %6710, %6700
  %6715 = fsub fast float %6711, %6702
  %6716 = fsub fast float %6712, %6704
  %6717 = fsub fast float %6713, %6706
  %6718 = fmul fast float %6714, %6708
  %6719 = fmul fast float %6715, %6708
  %6720 = fmul fast float %6716, %6708
  %6721 = fmul fast float %6717, %6708
  %6722 = fadd fast float %6718, %6700
  %6723 = fadd fast float %6719, %6702
  %6724 = fadd fast float %6720, %6704
  %6725 = fadd fast float %6721, %6706
  %6726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6727 = extractvalue %dx.types.ResRet.i32 %6726, 0
  %6728 = and i32 %6727, 536870911
  %6729 = uitofp i32 %6728 to float
  %6730 = fmul fast float %6729, %6576
  %6731 = fmul fast float %6729, %6580
  %6732 = fptoui float %6730 to i32
  %6733 = fptoui float %6731 to i32
  %6734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6735 = extractvalue %dx.types.ResRet.i32 %6734, 0
  %6736 = and i32 %6735, 31
  %6737 = lshr i32 %6732, %6736
  %6738 = lshr i32 %6733, %6736
  %6739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6740 = extractvalue %dx.types.ResRet.i32 %6739, 0
  %6741 = and i32 %6740, 31
  %6742 = shl i32 1, %6741
  %6743 = call i32 @dx.op.binary.i32(i32 40, i32 %6742, i32 4)  ; UMin(a,b)
  %6744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6745 = extractvalue %dx.types.ResRet.i32 %6744, 0
  %6746 = extractvalue %dx.types.ResRet.i32 %6744, 1
  %6747 = icmp eq i32 %6743, 0
  br i1 %6747, label %6789, label %6748

; <label>:6748                                    ; preds = %6692
  br label %6749

; <label>:6749                                    ; preds = %6777, %6748
  %6750 = phi i32 [ %6780, %6777 ], [ 0, %6748 ]
  %6751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.i32 %6751, 0
  %6753 = lshr i32 %6752, 16
  %6754 = and i32 %6753, 31
  %6755 = shl i32 %6738, %6754
  %6756 = add i32 %6755, %6737
  %6757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6758 = extractvalue %dx.types.ResRet.i32 %6757, 0
  %6759 = and i32 %6758, 31
  %6760 = shl i32 %6756, %6759
  %6761 = add i32 %6760, %6750
  %6762 = shl i32 %6761, 2
  %6763 = add i32 %6762, 32
  %6764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6763, i32 undef)  ; BufferLoad(srv,index,wot)
  %6765 = extractvalue %dx.types.ResRet.i32 %6764, 0
  %6766 = icmp slt i32 %6765, 0
  %6767 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6750
  %6768 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6750
  %6769 = bitcast float* %6767 to i32*
  %6770 = bitcast float* %6768 to i32*
  br i1 %6766, label %6771, label %6777

; <label>:6771                                    ; preds = %6749
  %6772 = and i32 %6765, 1073741823
  %6773 = add nuw nsw i32 %6772, 20
  %6774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6773, i32 undef)  ; BufferLoad(srv,index,wot)
  %6775 = extractvalue %dx.types.ResRet.i32 %6774, 0
  %6776 = extractvalue %dx.types.ResRet.i32 %6774, 1
  br label %6777

; <label>:6777                                    ; preds = %6771, %6749
  %6778 = phi i32 [ %6775, %6771 ], [ %6745, %6749 ]
  %6779 = phi i32 [ %6776, %6771 ], [ %6746, %6749 ]
  store i32 %6778, i32* %6769, align 4
  store i32 %6779, i32* %6770, align 4
  %6780 = add nuw i32 %6750, 1
  %6781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.i32 %6781, 2
  %6783 = icmp eq i32 %6782, 0
  %6784 = icmp ugt i32 %6765, -1073741825
  %6785 = and i1 %6784, %6783
  %6786 = icmp ult i32 %6780, %6743
  %6787 = and i1 %6785, %6786
  br i1 %6787, label %6749, label %6788

; <label>:6788                                    ; preds = %6777
  br label %6789

; <label>:6789                                    ; preds = %6788, %6692
  %6790 = phi i32 [ 0, %6692 ], [ %6780, %6788 ]
  %6791 = extractvalue %dx.types.CBufRet.f32 %6554, 2
  %6792 = fptoui float %6791 to i32
  %6793 = icmp eq i32 %6792, 0
  br i1 %6793, label %6845, label %6794

; <label>:6794                                    ; preds = %6789
  br label %6795

; <label>:6795                                    ; preds = %6840, %6794
  %6796 = phi i32 [ %6841, %6840 ], [ %6790, %6794 ]
  %6797 = phi i32 [ %6842, %6840 ], [ 0, %6794 ]
  %6798 = lshr i32 %6797, 2
  %6799 = and i32 %6797, 3
  %6800 = add nuw nsw i32 %6798, 83
  %6801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6800)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.i32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.i32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.i32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.i32 %6801, 3
  %6806 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6802, i32* %6806, align 4
  %6807 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6803, i32* %6807, align 4
  %6808 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6804, i32* %6808, align 4
  %6809 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6805, i32* %6809, align 4
  %6810 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6799
  %6811 = load i32, i32* %6810, align 4, !tbaa !108, !noalias !112
  %6812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6813 = extractvalue %dx.types.ResRet.i32 %6812, 0
  %6814 = lshr i32 %6813, 16
  %6815 = and i32 %6814, 31
  %6816 = shl i32 %6738, %6815
  %6817 = add i32 %6816, %6737
  %6818 = shl i32 %6817, 2
  %6819 = add i32 %6818, %6811
  %6820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6819, i32 undef)  ; BufferLoad(srv,index,wot)
  %6821 = extractvalue %dx.types.ResRet.i32 %6820, 0
  %6822 = icmp eq i32 %6821, 0
  br i1 %6822, label %6840, label %6823

; <label>:6823                                    ; preds = %6795
  %6824 = icmp slt i32 %6821, 0
  %6825 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6796
  %6826 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6796
  %6827 = bitcast float* %6825 to i32*
  %6828 = bitcast float* %6826 to i32*
  br i1 %6824, label %6829, label %6836

; <label>:6829                                    ; preds = %6823
  %6830 = and i32 %6821, 1073741823
  %6831 = add i32 %6811, 20
  %6832 = add i32 %6831, %6830
  %6833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6832, i32 undef)  ; BufferLoad(srv,index,wot)
  %6834 = extractvalue %dx.types.ResRet.i32 %6833, 0
  %6835 = extractvalue %dx.types.ResRet.i32 %6833, 1
  br label %6836

; <label>:6836                                    ; preds = %6829, %6823
  %6837 = phi i32 [ %6834, %6829 ], [ %6745, %6823 ]
  %6838 = phi i32 [ %6835, %6829 ], [ %6746, %6823 ]
  store i32 %6837, i32* %6827, align 4
  store i32 %6838, i32* %6828, align 4
  %6839 = add i32 %6796, 1
  br label %6840

; <label>:6840                                    ; preds = %6836, %6795
  %6841 = phi i32 [ %6796, %6795 ], [ %6839, %6836 ]
  %6842 = add nuw i32 %6797, 1
  %6843 = icmp eq i32 %6842, %6792
  br i1 %6843, label %6844, label %6795

; <label>:6844                                    ; preds = %6840
  br label %6845

; <label>:6845                                    ; preds = %6844, %6789
  %6846 = phi i32 [ %6790, %6789 ], [ %6841, %6844 ]
  %6847 = icmp eq i32 %6846, 1
  %6848 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6849 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6847, label %6850, label %6853

; <label>:6850                                    ; preds = %6845
  %6851 = load float, float* %6848, align 4
  %6852 = load float, float* %6849, align 4
  br label %6880

; <label>:6853                                    ; preds = %6845
  %6854 = load float, float* %6848, align 4
  %6855 = load float, float* %6849, align 4
  %6856 = fdiv fast float 1.000000e+00, %6855
  %6857 = fsub fast float %6854, %6856
  %6858 = icmp ugt i32 %6846, 1
  br i1 %6858, label %6859, label %6875

; <label>:6859                                    ; preds = %6853
  br label %6860

; <label>:6860                                    ; preds = %6860, %6859
  %6861 = phi float [ %6870, %6860 ], [ %6857, %6859 ]
  %6862 = phi float [ %6871, %6860 ], [ %6854, %6859 ]
  %6863 = phi i32 [ %6872, %6860 ], [ 1, %6859 ]
  %6864 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6863
  %6865 = load float, float* %6864, align 4
  %6866 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6863
  %6867 = load float, float* %6866, align 4
  %6868 = fdiv fast float 1.000000e+00, %6867
  %6869 = fsub fast float %6865, %6868
  %6870 = call float @dx.op.binary.f32(i32 36, float %6861, float %6869)  ; FMin(a,b)
  %6871 = call float @dx.op.binary.f32(i32 35, float %6862, float %6865)  ; FMax(a,b)
  %6872 = add nuw i32 %6863, 1
  %6873 = icmp eq i32 %6872, %6846
  br i1 %6873, label %6874, label %6860

; <label>:6874                                    ; preds = %6860
  br label %6875

; <label>:6875                                    ; preds = %6874, %6853
  %6876 = phi float [ %6857, %6853 ], [ %6870, %6874 ]
  %6877 = phi float [ %6854, %6853 ], [ %6871, %6874 ]
  %6878 = fsub fast float %6877, %6876
  %6879 = fdiv fast float 1.000000e+00, %6878
  br label %6880

; <label>:6880                                    ; preds = %6875, %6850
  %6881 = phi float [ %6851, %6850 ], [ %6877, %6875 ]
  %6882 = phi float [ %6852, %6850 ], [ %6879, %6875 ]
  %6883 = fadd fast float %6584, %6881
  %6884 = fmul fast float %6883, %6882
  %6885 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6886 = fmul fast float %6885, 2.000000e+00
  %6887 = fsub fast float 1.000000e+00, %6886
  %6888 = fmul fast float %6722, %6722
  %6889 = fsub fast float %6723, %6888
  %6890 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6889)  ; FMax(a,b)
  %6891 = fdiv fast float 1.000000e+00, %6890
  %6892 = fmul fast float %6723, %6722
  %6893 = fsub fast float %6724, %6892
  %6894 = fsub fast float %6887, %6722
  %6895 = fmul fast float %6887, %6887
  %6896 = fsub fast float %6895, %6723
  %6897 = fmul fast float %6891, %6893
  %6898 = fmul fast float %6897, %6894
  %6899 = fsub fast float %6896, %6898
  %6900 = fmul fast float %6723, %6723
  %6901 = fsub fast float %6725, %6900
  %6902 = fmul fast float %6893, %6893
  %6903 = fmul fast float %6902, %6891
  %6904 = fsub fast float %6901, %6903
  %6905 = fdiv fast float %6899, %6904
  %6906 = fmul fast float %6905, %6893
  %6907 = fsub fast float %6894, %6906
  %6908 = fmul fast float %6907, %6891
  %6909 = fmul fast float %6908, %6722
  %6910 = fsub fast float 1.000000e+00, %6909
  %6911 = fmul fast float %6905, %6723
  %6912 = fsub fast float %6910, %6911
  %6913 = fmul fast float %6908, %6908
  %6914 = fmul fast float %6905, 4.000000e+00
  %6915 = fmul fast float %6914, %6912
  %6916 = fsub fast float %6913, %6915
  %6917 = call float @dx.op.unary.f32(i32 24, float %6916)  ; Sqrt(value)
  %6918 = fcmp fast oge float %6908, 0.000000e+00
  %6919 = fsub fast float -0.000000e+00, %6917
  %6920 = select i1 %6918, float %6919, float %6917
  %6921 = fsub fast float %6920, %6908
  %6922 = fdiv fast float %6921, %6905
  %6923 = fdiv fast float %6912, %6921
  %6924 = fmul fast float %6922, 5.000000e-01
  %6925 = fmul fast float %6923, 2.000000e+00
  %6926 = select i1 %6918, float %6924, float %6925
  %6927 = select i1 %6918, float %6925, float %6924
  %6928 = call float @dx.op.binary.f32(i32 35, float %6926, float %6927)  ; FMax(a,b)
  %6929 = call float @dx.op.binary.f32(i32 36, float %6926, float %6927)  ; FMin(a,b)
  %6930 = fcmp fast ogt float %6887, %6928
  %6931 = fsub fast float %6887, %6929
  %6932 = fsub fast float %6887, %6928
  %6933 = fsub fast float %6928, %6929
  %6934 = select i1 %6930, float %6932, float %6933
  %6935 = fmul float %6931, %6934
  %6936 = select i1 %6930, float %6929, float %6887
  %6937 = fcmp fast ogt float %6887, %6929
  %6938 = fmul fast float %6936, %6928
  %6939 = fadd fast float %6936, %6928
  %6940 = fmul fast float %6939, %6722
  %6941 = fadd fast float %6938, %6723
  %6942 = fsub fast float %6941, %6940
  %6943 = fdiv fast float %6942, %6935
  %6944 = select i1 %6937, float %6943, float 0.000000e+00
  %6945 = fsub fast float 1.000000e+00, %6944
  %6946 = select i1 %6930, float %6945, float %6944
  %6947 = call float @dx.op.unary.f32(i32 7, float %6946)  ; Saturate(value)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6707, 3
  %6949 = fmul fast float %6948, %6947
  %6950 = fsub fast float 1.000000e+00, %6949
  br label %6951

; <label>:6951                                    ; preds = %6880, %6592, %6557, %6553, %6517
  %6952 = phi float [ 1.000000e+00, %6517 ], [ %6950, %6880 ], [ 1.000000e+00, %6557 ], [ 1.000000e+00, %6592 ], [ 1.000000e+00, %6553 ]
  %6953 = fcmp fast ogt float %6549, 0.000000e+00
  br i1 %6953, label %6954, label %7118, !dx.controlflow.hints !121

; <label>:6954                                    ; preds = %6951
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6957 = fadd fast float %6956, %6430
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 2
  %6960 = extractvalue %dx.types.CBufRet.f32 %6958, 3
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6963 = call float @dx.op.binary.f32(i32 35, float %6957, float 0.000000e+00)  ; FMax(a,b)
  %6964 = fadd fast float %6963, 0x3F10000000000000
  %6965 = fcmp fast oeq float %6962, 0.000000e+00
  br i1 %6965, label %6966, label %7033

; <label>:6966                                    ; preds = %6954
  %6967 = extractvalue %dx.types.CBufRet.f32 %6958, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6958, 0
  %6969 = fmul fast float %6968, %6448
  %6970 = fmul fast float %6967, %6449
  %6971 = fadd fast float %6969, 5.000000e-01
  %6972 = call float @dx.op.unary.f32(i32 27, float %6971)  ; Round_ni(value)
  %6973 = fadd fast float %6970, 5.000000e-01
  %6974 = call float @dx.op.unary.f32(i32 27, float %6973)  ; Round_ni(value)
  %6975 = fsub fast float %6971, %6972
  %6976 = fsub fast float %6973, %6974
  %6977 = fadd fast float %6972, -5.000000e-01
  %6978 = fadd fast float %6974, -5.000000e-01
  %6979 = fmul fast float %6975, 2.000000e+00
  %6980 = fsub fast float 3.000000e+00, %6979
  %6981 = fadd fast float %6979, 1.000000e+00
  %6982 = fsub fast float 2.000000e+00, %6975
  %6983 = bitcast float %6980 to i32
  %6984 = sub nsw i32 2129859010, %6983
  %6985 = bitcast i32 %6984 to float
  %6986 = fmul fast float %6985, %6982
  %6987 = fadd fast float %6986, -1.000000e+00
  %6988 = bitcast float %6981 to i32
  %6989 = sub nsw i32 2129859010, %6988
  %6990 = bitcast i32 %6989 to float
  %6991 = fmul fast float %6990, %6975
  %6992 = fadd fast float %6991, 1.000000e+00
  %6993 = fmul fast float %6976, 2.000000e+00
  %6994 = fsub fast float 3.000000e+00, %6993
  %6995 = fadd fast float %6993, 1.000000e+00
  %6996 = fsub fast float 2.000000e+00, %6976
  %6997 = bitcast float %6994 to i32
  %6998 = sub nsw i32 2129859010, %6997
  %6999 = bitcast i32 %6998 to float
  %7000 = fmul fast float %6999, %6996
  %7001 = fadd fast float %7000, -1.000000e+00
  %7002 = bitcast float %6995 to i32
  %7003 = sub nsw i32 2129859010, %7002
  %7004 = bitcast i32 %7003 to float
  %7005 = fmul fast float %7004, %6976
  %7006 = fadd fast float %7005, 1.000000e+00
  %7007 = fadd fast float %6987, %6977
  %7008 = fmul fast float %7007, %6959
  %7009 = fadd fast float %7001, %6978
  %7010 = fmul fast float %7009, %6960
  %7011 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7008, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float %6964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7012 = extractvalue %dx.types.ResRet.f32 %7011, 0
  %7013 = fmul fast float %7012, %6980
  %7014 = fadd fast float %6992, %6977
  %7015 = fmul fast float %7014, %6959
  %7016 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7015, float %7010, float undef, float undef, i32 0, i32 0, i32 undef, float %6964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7017 = extractvalue %dx.types.ResRet.f32 %7016, 0
  %7018 = fmul fast float %7017, %6981
  %7019 = fadd fast float %7006, %6978
  %7020 = fmul fast float %7019, %6960
  %7021 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7008, float %7020, float undef, float undef, i32 0, i32 0, i32 undef, float %6964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7022 = extractvalue %dx.types.ResRet.f32 %7021, 0
  %7023 = fmul fast float %7022, %6980
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7015, float %7020, float undef, float undef, i32 0, i32 0, i32 undef, float %6964)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  %7026 = fmul fast float %7025, %6981
  %7027 = fadd fast float %7026, %7023
  %7028 = fmul fast float %7027, %6995
  %7029 = fadd fast float %7018, %7013
  %7030 = fmul fast float %7029, %6994
  %7031 = fadd fast float %7030, %7028
  %7032 = fmul fast float %7031, 6.250000e-02
  br label %7118

; <label>:7033                                    ; preds = %6954
  %7034 = fmul fast float %271, 0x401921FB60000000
  %7035 = call float @dx.op.unary.f32(i32 13, float %7034)  ; Sin(value)
  %7036 = call float @dx.op.unary.f32(i32 12, float %7034)  ; Cos(value)
  %7037 = fsub fast float -0.000000e+00, %7035
  br label %7038

; <label>:7038                                    ; preds = %7087, %7033
  %7039 = phi float [ 0.000000e+00, %7033 ], [ %7082, %7087 ]
  %7040 = phi float [ 0.000000e+00, %7033 ], [ %7084, %7087 ]
  %7041 = phi i32 [ 0, %7033 ], [ %7088, %7087 ]
  %7042 = mul i32 %7041, 2
  %7043 = add i32 0, %7042
  %7044 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7043
  %7045 = load float, float* %7044, align 4
  %7046 = mul i32 %7041, 2
  %7047 = add i32 1, %7046
  %7048 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7047
  %7049 = load float, float* %7048, align 4
  %7050 = fmul fast float %7045, %7036
  %7051 = call float @dx.op.tertiary.f32(i32 46, float %7049, float %7037, float %7050)  ; FMad(a,b,c)
  %7052 = fmul fast float %7045, %7035
  %7053 = call float @dx.op.tertiary.f32(i32 46, float %7049, float %7036, float %7052)  ; FMad(a,b,c)
  %7054 = fmul fast float %7051, %6962
  %7055 = fmul fast float %7053, %6962
  %7056 = fadd fast float %7054, %6448
  %7057 = fadd fast float %7055, %6449
  %7058 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7056, float %7057, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7059 = extractvalue %dx.types.ResRet.f32 %7058, 0
  %7060 = extractvalue %dx.types.ResRet.f32 %7058, 1
  %7061 = extractvalue %dx.types.ResRet.f32 %7058, 2
  %7062 = extractvalue %dx.types.ResRet.f32 %7058, 3
  %7063 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %7059, float* %7063, align 4
  %7064 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %7060, float* %7064, align 4
  %7065 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %7061, float* %7065, align 4
  %7066 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %7062, float* %7066, align 4
  %7067 = fsub fast float %7059, %6964
  %7068 = fcmp fast olt float %7067, 0.000000e+00
  %7069 = select i1 %7068, float 0.000000e+00, float 1.000000e+00
  %7070 = fadd fast float %7069, %7039
  %7071 = fmul fast float %7069, %7067
  %7072 = fadd fast float %7071, %7040
  br label %7073

; <label>:7073                                    ; preds = %7073, %7038
  %7074 = phi i32 [ 1, %7038 ], [ %7085, %7073 ]
  %7075 = phi float [ %7072, %7038 ], [ %7084, %7073 ]
  %7076 = phi float [ %7070, %7038 ], [ %7082, %7073 ]
  %7077 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %7074
  %7078 = load float, float* %7077, align 4, !tbaa !122, !noalias !112
  %7079 = fsub fast float %7078, %6964
  %7080 = fcmp fast olt float %7079, 0.000000e+00
  %7081 = select i1 %7080, float 0.000000e+00, float 1.000000e+00
  %7082 = fadd fast float %7081, %7076
  %7083 = fmul fast float %7081, %7079
  %7084 = fadd fast float %7083, %7075
  %7085 = add nuw nsw i32 %7074, 1
  %7086 = icmp eq i32 %7085, 4
  br i1 %7086, label %7087, label %7073, !llvm.loop !124

; <label>:7087                                    ; preds = %7073
  %7088 = add nuw nsw i32 %7041, 1
  %7089 = icmp eq i32 %7088, 8
  br i1 %7089, label %7090, label %7038, !llvm.loop !125

; <label>:7090                                    ; preds = %7087
  %7091 = fdiv fast float 1.000000e+00, %7082
  %7092 = fmul fast float %7091, %7084
  %7093 = fdiv fast float 1.000000e+00, %6964
  %7094 = fmul fast float %7092, %7093
  %7095 = call float @dx.op.unary.f32(i32 7, float %7094)  ; Saturate(value)
  %7096 = call float @dx.op.binary.f32(i32 35, float %7095, float 0.000000e+00)  ; FMax(a,b)
  %7097 = fmul fast float %7082, 3.125000e-02
  %7098 = call float @dx.op.unary.f32(i32 7, float %7097)  ; Saturate(value)
  %7099 = fmul fast float %7098, 2.000000e+00
  %7100 = fadd fast float %7099, -1.000000e+00
  %7101 = fcmp fast ogt float %7100, 0.000000e+00
  %7102 = fcmp fast olt float %7100, 0.000000e+00
  %7103 = zext i1 %7101 to i32
  %7104 = zext i1 %7102 to i32
  %7105 = sub nsw i32 %7103, %7104
  %7106 = sitofp i32 %7105 to float
  %7107 = fmul fast float %7106, %7100
  %7108 = fsub fast float 1.000000e+00, %7107
  %7109 = fmul fast float %7108, %7108
  %7110 = fmul fast float %7109, %7108
  %7111 = fsub fast float %7108, %7110
  %7112 = fmul fast float %7111, %7096
  %7113 = fsub fast float 1.000000e+00, %7110
  %7114 = fsub fast float %7113, %7112
  %7115 = fmul fast float %7106, 5.000000e-01
  %7116 = fmul fast float %7115, %7114
  %7117 = fsub fast float 5.000000e-01, %7116
  br label %7118

; <label>:7118                                    ; preds = %7090, %6966, %6951
  %7119 = phi float [ 1.000000e+00, %6951 ], [ %7032, %6966 ], [ %7117, %7090 ]
  %7120 = fcmp fast ogt float %6547, 0.000000e+00
  br i1 %7120, label %7121, label %7285, !dx.controlflow.hints !126

; <label>:7121                                    ; preds = %7118
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7124 = fadd fast float %7123, %6430
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 3
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 1
  %7130 = call float @dx.op.binary.f32(i32 35, float %7124, float 0.000000e+00)  ; FMax(a,b)
  %7131 = fadd fast float %7130, 0x3F10000000000000
  %7132 = fcmp fast oeq float %7129, 0.000000e+00
  br i1 %7132, label %7133, label %7200

; <label>:7133                                    ; preds = %7121
  %7134 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7135 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7136 = fmul fast float %7135, %6440
  %7137 = fmul fast float %7134, %6441
  %7138 = fadd fast float %7136, 5.000000e-01
  %7139 = call float @dx.op.unary.f32(i32 27, float %7138)  ; Round_ni(value)
  %7140 = fadd fast float %7137, 5.000000e-01
  %7141 = call float @dx.op.unary.f32(i32 27, float %7140)  ; Round_ni(value)
  %7142 = fsub fast float %7138, %7139
  %7143 = fsub fast float %7140, %7141
  %7144 = fadd fast float %7139, -5.000000e-01
  %7145 = fadd fast float %7141, -5.000000e-01
  %7146 = fmul fast float %7142, 2.000000e+00
  %7147 = fsub fast float 3.000000e+00, %7146
  %7148 = fadd fast float %7146, 1.000000e+00
  %7149 = fsub fast float 2.000000e+00, %7142
  %7150 = bitcast float %7147 to i32
  %7151 = sub nsw i32 2129859010, %7150
  %7152 = bitcast i32 %7151 to float
  %7153 = fmul fast float %7152, %7149
  %7154 = fadd fast float %7153, -1.000000e+00
  %7155 = bitcast float %7148 to i32
  %7156 = sub nsw i32 2129859010, %7155
  %7157 = bitcast i32 %7156 to float
  %7158 = fmul fast float %7157, %7142
  %7159 = fadd fast float %7158, 1.000000e+00
  %7160 = fmul fast float %7143, 2.000000e+00
  %7161 = fsub fast float 3.000000e+00, %7160
  %7162 = fadd fast float %7160, 1.000000e+00
  %7163 = fsub fast float 2.000000e+00, %7143
  %7164 = bitcast float %7161 to i32
  %7165 = sub nsw i32 2129859010, %7164
  %7166 = bitcast i32 %7165 to float
  %7167 = fmul fast float %7166, %7163
  %7168 = fadd fast float %7167, -1.000000e+00
  %7169 = bitcast float %7162 to i32
  %7170 = sub nsw i32 2129859010, %7169
  %7171 = bitcast i32 %7170 to float
  %7172 = fmul fast float %7171, %7143
  %7173 = fadd fast float %7172, 1.000000e+00
  %7174 = fadd fast float %7154, %7144
  %7175 = fmul fast float %7174, %7126
  %7176 = fadd fast float %7168, %7145
  %7177 = fmul fast float %7176, %7127
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7175, float %7177, float undef, float undef, i32 0, i32 0, i32 undef, float %7131)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = fmul fast float %7179, %7147
  %7181 = fadd fast float %7159, %7144
  %7182 = fmul fast float %7181, %7126
  %7183 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7182, float %7177, float undef, float undef, i32 0, i32 0, i32 undef, float %7131)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7184 = extractvalue %dx.types.ResRet.f32 %7183, 0
  %7185 = fmul fast float %7184, %7148
  %7186 = fadd fast float %7173, %7145
  %7187 = fmul fast float %7186, %7127
  %7188 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7175, float %7187, float undef, float undef, i32 0, i32 0, i32 undef, float %7131)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7189 = extractvalue %dx.types.ResRet.f32 %7188, 0
  %7190 = fmul fast float %7189, %7147
  %7191 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7182, float %7187, float undef, float undef, i32 0, i32 0, i32 undef, float %7131)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = fmul fast float %7192, %7148
  %7194 = fadd fast float %7193, %7190
  %7195 = fmul fast float %7194, %7162
  %7196 = fadd fast float %7185, %7180
  %7197 = fmul fast float %7196, %7161
  %7198 = fadd fast float %7197, %7195
  %7199 = fmul fast float %7198, 6.250000e-02
  br label %7285

; <label>:7200                                    ; preds = %7121
  %7201 = fmul fast float %271, 0x401921FB60000000
  %7202 = call float @dx.op.unary.f32(i32 13, float %7201)  ; Sin(value)
  %7203 = call float @dx.op.unary.f32(i32 12, float %7201)  ; Cos(value)
  %7204 = fsub fast float -0.000000e+00, %7202
  br label %7205

; <label>:7205                                    ; preds = %7254, %7200
  %7206 = phi float [ 0.000000e+00, %7200 ], [ %7249, %7254 ]
  %7207 = phi float [ 0.000000e+00, %7200 ], [ %7251, %7254 ]
  %7208 = phi i32 [ 0, %7200 ], [ %7255, %7254 ]
  %7209 = mul i32 %7208, 2
  %7210 = add i32 0, %7209
  %7211 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7210
  %7212 = load float, float* %7211, align 4
  %7213 = mul i32 %7208, 2
  %7214 = add i32 1, %7213
  %7215 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7214
  %7216 = load float, float* %7215, align 4
  %7217 = fmul fast float %7212, %7203
  %7218 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7204, float %7217)  ; FMad(a,b,c)
  %7219 = fmul fast float %7212, %7202
  %7220 = call float @dx.op.tertiary.f32(i32 46, float %7216, float %7203, float %7219)  ; FMad(a,b,c)
  %7221 = fmul fast float %7218, %7129
  %7222 = fmul fast float %7220, %7129
  %7223 = fadd fast float %7221, %6440
  %7224 = fadd fast float %7222, %6441
  %7225 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7223, float %7224, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = extractvalue %dx.types.ResRet.f32 %7225, 1
  %7228 = extractvalue %dx.types.ResRet.f32 %7225, 2
  %7229 = extractvalue %dx.types.ResRet.f32 %7225, 3
  %7230 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %7226, float* %7230, align 4
  %7231 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %7227, float* %7231, align 4
  %7232 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %7228, float* %7232, align 4
  %7233 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %7229, float* %7233, align 4
  %7234 = fsub fast float %7226, %7131
  %7235 = fcmp fast olt float %7234, 0.000000e+00
  %7236 = select i1 %7235, float 0.000000e+00, float 1.000000e+00
  %7237 = fadd fast float %7236, %7206
  %7238 = fmul fast float %7236, %7234
  %7239 = fadd fast float %7238, %7207
  br label %7240

; <label>:7240                                    ; preds = %7240, %7205
  %7241 = phi i32 [ 1, %7205 ], [ %7252, %7240 ]
  %7242 = phi float [ %7239, %7205 ], [ %7251, %7240 ]
  %7243 = phi float [ %7237, %7205 ], [ %7249, %7240 ]
  %7244 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %7241
  %7245 = load float, float* %7244, align 4, !tbaa !122, !noalias !112
  %7246 = fsub fast float %7245, %7131
  %7247 = fcmp fast olt float %7246, 0.000000e+00
  %7248 = select i1 %7247, float 0.000000e+00, float 1.000000e+00
  %7249 = fadd fast float %7248, %7243
  %7250 = fmul fast float %7248, %7246
  %7251 = fadd fast float %7250, %7242
  %7252 = add nuw nsw i32 %7241, 1
  %7253 = icmp eq i32 %7252, 4
  br i1 %7253, label %7254, label %7240, !llvm.loop !124

; <label>:7254                                    ; preds = %7240
  %7255 = add nuw nsw i32 %7208, 1
  %7256 = icmp eq i32 %7255, 8
  br i1 %7256, label %7257, label %7205, !llvm.loop !125

; <label>:7257                                    ; preds = %7254
  %7258 = fdiv fast float 1.000000e+00, %7249
  %7259 = fmul fast float %7258, %7251
  %7260 = fdiv fast float 1.000000e+00, %7131
  %7261 = fmul fast float %7259, %7260
  %7262 = call float @dx.op.unary.f32(i32 7, float %7261)  ; Saturate(value)
  %7263 = call float @dx.op.binary.f32(i32 35, float %7262, float 0.000000e+00)  ; FMax(a,b)
  %7264 = fmul fast float %7249, 3.125000e-02
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7266 = fmul fast float %7265, 2.000000e+00
  %7267 = fadd fast float %7266, -1.000000e+00
  %7268 = fcmp fast ogt float %7267, 0.000000e+00
  %7269 = fcmp fast olt float %7267, 0.000000e+00
  %7270 = zext i1 %7268 to i32
  %7271 = zext i1 %7269 to i32
  %7272 = sub nsw i32 %7270, %7271
  %7273 = sitofp i32 %7272 to float
  %7274 = fmul fast float %7273, %7267
  %7275 = fsub fast float 1.000000e+00, %7274
  %7276 = fmul fast float %7275, %7275
  %7277 = fmul fast float %7276, %7275
  %7278 = fsub fast float %7275, %7277
  %7279 = fmul fast float %7278, %7263
  %7280 = fsub fast float 1.000000e+00, %7277
  %7281 = fsub fast float %7280, %7279
  %7282 = fmul fast float %7273, 5.000000e-01
  %7283 = fmul fast float %7282, %7281
  %7284 = fsub fast float 5.000000e-01, %7283
  br label %7285

; <label>:7285                                    ; preds = %7257, %7133, %7118
  %7286 = phi float [ 1.000000e+00, %7118 ], [ %7199, %7133 ], [ %7284, %7257 ]
  %7287 = fcmp fast ogt float %6546, 0.000000e+00
  br i1 %7287, label %7288, label %7606, !dx.controlflow.hints !127

; <label>:7288                                    ; preds = %7285
  %7289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7290 = extractvalue %dx.types.CBufRet.f32 %7289, 0
  %7291 = fadd fast float %7290, %6430
  %7292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.f32 %7292, 2
  %7294 = extractvalue %dx.types.CBufRet.f32 %7292, 3
  %7295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7296 = extractvalue %dx.types.CBufRet.f32 %7295, 0
  %7297 = call float @dx.op.binary.f32(i32 35, float %7291, float 0.000000e+00)  ; FMax(a,b)
  %7298 = fadd fast float %7297, 0x3F10000000000000
  %7299 = fcmp fast oeq float %7296, 0.000000e+00
  br i1 %6433, label %7300, label %7453, !dx.controlflow.hints !128

; <label>:7300                                    ; preds = %7288
  br i1 %7299, label %7301, label %7368

; <label>:7301                                    ; preds = %7300
  %7302 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7303 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7304 = fmul fast float %7303, %6422
  %7305 = fmul fast float %7302, %6426
  %7306 = fadd fast float %7304, 5.000000e-01
  %7307 = call float @dx.op.unary.f32(i32 27, float %7306)  ; Round_ni(value)
  %7308 = fadd fast float %7305, 5.000000e-01
  %7309 = call float @dx.op.unary.f32(i32 27, float %7308)  ; Round_ni(value)
  %7310 = fsub fast float %7306, %7307
  %7311 = fsub fast float %7308, %7309
  %7312 = fadd fast float %7307, -5.000000e-01
  %7313 = fadd fast float %7309, -5.000000e-01
  %7314 = fmul fast float %7310, 2.000000e+00
  %7315 = fsub fast float 3.000000e+00, %7314
  %7316 = fadd fast float %7314, 1.000000e+00
  %7317 = fsub fast float 2.000000e+00, %7310
  %7318 = bitcast float %7315 to i32
  %7319 = sub nsw i32 2129859010, %7318
  %7320 = bitcast i32 %7319 to float
  %7321 = fmul fast float %7320, %7317
  %7322 = fadd fast float %7321, -1.000000e+00
  %7323 = bitcast float %7316 to i32
  %7324 = sub nsw i32 2129859010, %7323
  %7325 = bitcast i32 %7324 to float
  %7326 = fmul fast float %7325, %7310
  %7327 = fadd fast float %7326, 1.000000e+00
  %7328 = fmul fast float %7311, 2.000000e+00
  %7329 = fsub fast float 3.000000e+00, %7328
  %7330 = fadd fast float %7328, 1.000000e+00
  %7331 = fsub fast float 2.000000e+00, %7311
  %7332 = bitcast float %7329 to i32
  %7333 = sub nsw i32 2129859010, %7332
  %7334 = bitcast i32 %7333 to float
  %7335 = fmul fast float %7334, %7331
  %7336 = fadd fast float %7335, -1.000000e+00
  %7337 = bitcast float %7330 to i32
  %7338 = sub nsw i32 2129859010, %7337
  %7339 = bitcast i32 %7338 to float
  %7340 = fmul fast float %7339, %7311
  %7341 = fadd fast float %7340, 1.000000e+00
  %7342 = fadd fast float %7322, %7312
  %7343 = fmul fast float %7342, %7293
  %7344 = fadd fast float %7336, %7313
  %7345 = fmul fast float %7344, %7294
  %7346 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7343, float %7345, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7347 = extractvalue %dx.types.ResRet.f32 %7346, 0
  %7348 = fmul fast float %7347, %7315
  %7349 = fadd fast float %7327, %7312
  %7350 = fmul fast float %7349, %7293
  %7351 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7350, float %7345, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = fmul fast float %7352, %7316
  %7354 = fadd fast float %7341, %7313
  %7355 = fmul fast float %7354, %7294
  %7356 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7343, float %7355, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = fmul fast float %7357, %7315
  %7359 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %7350, float %7355, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = fmul fast float %7360, %7316
  %7362 = fadd fast float %7361, %7358
  %7363 = fmul fast float %7362, %7330
  %7364 = fadd fast float %7353, %7348
  %7365 = fmul fast float %7364, %7329
  %7366 = fadd fast float %7365, %7363
  %7367 = fmul fast float %7366, 6.250000e-02
  br label %7606

; <label>:7368                                    ; preds = %7300
  %7369 = fmul fast float %271, 0x401921FB60000000
  %7370 = call float @dx.op.unary.f32(i32 13, float %7369)  ; Sin(value)
  %7371 = call float @dx.op.unary.f32(i32 12, float %7369)  ; Cos(value)
  %7372 = fsub fast float -0.000000e+00, %7370
  br label %7373

; <label>:7373                                    ; preds = %7422, %7368
  %7374 = phi float [ 0.000000e+00, %7368 ], [ %7417, %7422 ]
  %7375 = phi float [ 0.000000e+00, %7368 ], [ %7419, %7422 ]
  %7376 = phi i32 [ 0, %7368 ], [ %7423, %7422 ]
  %7377 = mul i32 %7376, 2
  %7378 = add i32 0, %7377
  %7379 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7378
  %7380 = load float, float* %7379, align 4
  %7381 = mul i32 %7376, 2
  %7382 = add i32 1, %7381
  %7383 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7382
  %7384 = load float, float* %7383, align 4
  %7385 = fmul fast float %7380, %7371
  %7386 = call float @dx.op.tertiary.f32(i32 46, float %7384, float %7372, float %7385)  ; FMad(a,b,c)
  %7387 = fmul fast float %7380, %7370
  %7388 = call float @dx.op.tertiary.f32(i32 46, float %7384, float %7371, float %7387)  ; FMad(a,b,c)
  %7389 = fmul fast float %7386, %7296
  %7390 = fmul fast float %7388, %7296
  %7391 = fadd fast float %7389, %6422
  %7392 = fadd fast float %7390, %6426
  %7393 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %7391, float %7392, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7394 = extractvalue %dx.types.ResRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.ResRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.ResRet.f32 %7393, 2
  %7397 = extractvalue %dx.types.ResRet.f32 %7393, 3
  %7398 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %7394, float* %7398, align 4
  %7399 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %7395, float* %7399, align 4
  %7400 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %7396, float* %7400, align 4
  %7401 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %7397, float* %7401, align 4
  %7402 = fsub fast float %7394, %7298
  %7403 = fcmp fast olt float %7402, 0.000000e+00
  %7404 = select i1 %7403, float 0.000000e+00, float 1.000000e+00
  %7405 = fadd fast float %7404, %7374
  %7406 = fmul fast float %7404, %7402
  %7407 = fadd fast float %7406, %7375
  br label %7408

; <label>:7408                                    ; preds = %7408, %7373
  %7409 = phi i32 [ 1, %7373 ], [ %7420, %7408 ]
  %7410 = phi float [ %7407, %7373 ], [ %7419, %7408 ]
  %7411 = phi float [ %7405, %7373 ], [ %7417, %7408 ]
  %7412 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %7409
  %7413 = load float, float* %7412, align 4, !tbaa !122, !noalias !112
  %7414 = fsub fast float %7413, %7298
  %7415 = fcmp fast olt float %7414, 0.000000e+00
  %7416 = select i1 %7415, float 0.000000e+00, float 1.000000e+00
  %7417 = fadd fast float %7416, %7411
  %7418 = fmul fast float %7416, %7414
  %7419 = fadd fast float %7418, %7410
  %7420 = add nuw nsw i32 %7409, 1
  %7421 = icmp eq i32 %7420, 4
  br i1 %7421, label %7422, label %7408, !llvm.loop !124

; <label>:7422                                    ; preds = %7408
  %7423 = add nuw nsw i32 %7376, 1
  %7424 = icmp eq i32 %7423, 8
  br i1 %7424, label %7425, label %7373, !llvm.loop !125

; <label>:7425                                    ; preds = %7422
  %7426 = fdiv fast float 1.000000e+00, %7417
  %7427 = fmul fast float %7426, %7419
  %7428 = fdiv fast float 1.000000e+00, %7298
  %7429 = fmul fast float %7427, %7428
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = call float @dx.op.binary.f32(i32 35, float %7430, float 0.000000e+00)  ; FMax(a,b)
  %7432 = fmul fast float %7417, 3.125000e-02
  %7433 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7434 = fmul fast float %7433, 2.000000e+00
  %7435 = fadd fast float %7434, -1.000000e+00
  %7436 = fcmp fast ogt float %7435, 0.000000e+00
  %7437 = fcmp fast olt float %7435, 0.000000e+00
  %7438 = zext i1 %7436 to i32
  %7439 = zext i1 %7437 to i32
  %7440 = sub nsw i32 %7438, %7439
  %7441 = sitofp i32 %7440 to float
  %7442 = fmul fast float %7441, %7435
  %7443 = fsub fast float 1.000000e+00, %7442
  %7444 = fmul fast float %7443, %7443
  %7445 = fmul fast float %7444, %7443
  %7446 = fsub fast float %7443, %7445
  %7447 = fmul fast float %7446, %7431
  %7448 = fsub fast float 1.000000e+00, %7445
  %7449 = fsub fast float %7448, %7447
  %7450 = fmul fast float %7441, 5.000000e-01
  %7451 = fmul fast float %7450, %7449
  %7452 = fsub fast float 5.000000e-01, %7451
  br label %7606

; <label>:7453                                    ; preds = %7288
  br i1 %7299, label %7454, label %7521

; <label>:7454                                    ; preds = %7453
  %7455 = extractvalue %dx.types.CBufRet.f32 %7292, 1
  %7456 = extractvalue %dx.types.CBufRet.f32 %7292, 0
  %7457 = fmul fast float %7456, %6422
  %7458 = fmul fast float %7455, %6426
  %7459 = fadd fast float %7457, 5.000000e-01
  %7460 = call float @dx.op.unary.f32(i32 27, float %7459)  ; Round_ni(value)
  %7461 = fadd fast float %7458, 5.000000e-01
  %7462 = call float @dx.op.unary.f32(i32 27, float %7461)  ; Round_ni(value)
  %7463 = fsub fast float %7459, %7460
  %7464 = fsub fast float %7461, %7462
  %7465 = fadd fast float %7460, -5.000000e-01
  %7466 = fadd fast float %7462, -5.000000e-01
  %7467 = fmul fast float %7463, 2.000000e+00
  %7468 = fsub fast float 3.000000e+00, %7467
  %7469 = fadd fast float %7467, 1.000000e+00
  %7470 = fsub fast float 2.000000e+00, %7463
  %7471 = bitcast float %7468 to i32
  %7472 = sub nsw i32 2129859010, %7471
  %7473 = bitcast i32 %7472 to float
  %7474 = fmul fast float %7473, %7470
  %7475 = fadd fast float %7474, -1.000000e+00
  %7476 = bitcast float %7469 to i32
  %7477 = sub nsw i32 2129859010, %7476
  %7478 = bitcast i32 %7477 to float
  %7479 = fmul fast float %7478, %7463
  %7480 = fadd fast float %7479, 1.000000e+00
  %7481 = fmul fast float %7464, 2.000000e+00
  %7482 = fsub fast float 3.000000e+00, %7481
  %7483 = fadd fast float %7481, 1.000000e+00
  %7484 = fsub fast float 2.000000e+00, %7464
  %7485 = bitcast float %7482 to i32
  %7486 = sub nsw i32 2129859010, %7485
  %7487 = bitcast i32 %7486 to float
  %7488 = fmul fast float %7487, %7484
  %7489 = fadd fast float %7488, -1.000000e+00
  %7490 = bitcast float %7483 to i32
  %7491 = sub nsw i32 2129859010, %7490
  %7492 = bitcast i32 %7491 to float
  %7493 = fmul fast float %7492, %7464
  %7494 = fadd fast float %7493, 1.000000e+00
  %7495 = fadd fast float %7475, %7465
  %7496 = fmul fast float %7495, %7293
  %7497 = fadd fast float %7489, %7466
  %7498 = fmul fast float %7497, %7294
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7496, float %7498, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 0
  %7501 = fmul fast float %7500, %7468
  %7502 = fadd fast float %7480, %7465
  %7503 = fmul fast float %7502, %7293
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7503, float %7498, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = fmul fast float %7505, %7469
  %7507 = fadd fast float %7494, %7466
  %7508 = fmul fast float %7507, %7294
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7496, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7510, %7468
  %7512 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7503, float %7508, float undef, float undef, i32 0, i32 0, i32 undef, float %7298)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = fmul fast float %7513, %7469
  %7515 = fadd fast float %7514, %7511
  %7516 = fmul fast float %7515, %7483
  %7517 = fadd fast float %7506, %7501
  %7518 = fmul fast float %7517, %7482
  %7519 = fadd fast float %7518, %7516
  %7520 = fmul fast float %7519, 6.250000e-02
  br label %7606

; <label>:7521                                    ; preds = %7453
  %7522 = fmul fast float %271, 0x401921FB60000000
  %7523 = call float @dx.op.unary.f32(i32 13, float %7522)  ; Sin(value)
  %7524 = call float @dx.op.unary.f32(i32 12, float %7522)  ; Cos(value)
  %7525 = fsub fast float -0.000000e+00, %7523
  br label %7526

; <label>:7526                                    ; preds = %7575, %7521
  %7527 = phi float [ 0.000000e+00, %7521 ], [ %7570, %7575 ]
  %7528 = phi float [ 0.000000e+00, %7521 ], [ %7572, %7575 ]
  %7529 = phi i32 [ 0, %7521 ], [ %7576, %7575 ]
  %7530 = mul i32 %7529, 2
  %7531 = add i32 0, %7530
  %7532 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7531
  %7533 = load float, float* %7532, align 4
  %7534 = mul i32 %7529, 2
  %7535 = add i32 1, %7534
  %7536 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7535
  %7537 = load float, float* %7536, align 4
  %7538 = fmul fast float %7533, %7524
  %7539 = call float @dx.op.tertiary.f32(i32 46, float %7537, float %7525, float %7538)  ; FMad(a,b,c)
  %7540 = fmul fast float %7533, %7523
  %7541 = call float @dx.op.tertiary.f32(i32 46, float %7537, float %7524, float %7540)  ; FMad(a,b,c)
  %7542 = fmul fast float %7539, %7296
  %7543 = fmul fast float %7541, %7296
  %7544 = fadd fast float %7542, %6422
  %7545 = fadd fast float %7543, %6426
  %7546 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7544, float %7545, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7547 = extractvalue %dx.types.ResRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.ResRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.ResRet.f32 %7546, 2
  %7550 = extractvalue %dx.types.ResRet.f32 %7546, 3
  %7551 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7547, float* %7551, align 4
  %7552 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7548, float* %7552, align 4
  %7553 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7549, float* %7553, align 4
  %7554 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7550, float* %7554, align 4
  %7555 = fsub fast float %7547, %7298
  %7556 = fcmp fast olt float %7555, 0.000000e+00
  %7557 = select i1 %7556, float 0.000000e+00, float 1.000000e+00
  %7558 = fadd fast float %7557, %7527
  %7559 = fmul fast float %7557, %7555
  %7560 = fadd fast float %7559, %7528
  br label %7561

; <label>:7561                                    ; preds = %7561, %7526
  %7562 = phi i32 [ 1, %7526 ], [ %7573, %7561 ]
  %7563 = phi float [ %7560, %7526 ], [ %7572, %7561 ]
  %7564 = phi float [ %7558, %7526 ], [ %7570, %7561 ]
  %7565 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7562
  %7566 = load float, float* %7565, align 4, !tbaa !122, !noalias !112
  %7567 = fsub fast float %7566, %7298
  %7568 = fcmp fast olt float %7567, 0.000000e+00
  %7569 = select i1 %7568, float 0.000000e+00, float 1.000000e+00
  %7570 = fadd fast float %7569, %7564
  %7571 = fmul fast float %7569, %7567
  %7572 = fadd fast float %7571, %7563
  %7573 = add nuw nsw i32 %7562, 1
  %7574 = icmp eq i32 %7573, 4
  br i1 %7574, label %7575, label %7561, !llvm.loop !124

; <label>:7575                                    ; preds = %7561
  %7576 = add nuw nsw i32 %7529, 1
  %7577 = icmp eq i32 %7576, 8
  br i1 %7577, label %7578, label %7526, !llvm.loop !125

; <label>:7578                                    ; preds = %7575
  %7579 = fdiv fast float 1.000000e+00, %7570
  %7580 = fmul fast float %7579, %7572
  %7581 = fdiv fast float 1.000000e+00, %7298
  %7582 = fmul fast float %7580, %7581
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = call float @dx.op.binary.f32(i32 35, float %7583, float 0.000000e+00)  ; FMax(a,b)
  %7585 = fmul fast float %7570, 3.125000e-02
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = fmul fast float %7586, 2.000000e+00
  %7588 = fadd fast float %7587, -1.000000e+00
  %7589 = fcmp fast ogt float %7588, 0.000000e+00
  %7590 = fcmp fast olt float %7588, 0.000000e+00
  %7591 = zext i1 %7589 to i32
  %7592 = zext i1 %7590 to i32
  %7593 = sub nsw i32 %7591, %7592
  %7594 = sitofp i32 %7593 to float
  %7595 = fmul fast float %7594, %7588
  %7596 = fsub fast float 1.000000e+00, %7595
  %7597 = fmul fast float %7596, %7596
  %7598 = fmul fast float %7597, %7596
  %7599 = fsub fast float %7596, %7598
  %7600 = fmul fast float %7599, %7584
  %7601 = fsub fast float 1.000000e+00, %7598
  %7602 = fsub fast float %7601, %7600
  %7603 = fmul fast float %7594, 5.000000e-01
  %7604 = fmul fast float %7603, %7602
  %7605 = fsub fast float 5.000000e-01, %7604
  br label %7606

; <label>:7606                                    ; preds = %7578, %7454, %7425, %7301, %7285
  %7607 = phi float [ 1.000000e+00, %7285 ], [ %7367, %7301 ], [ %7452, %7425 ], [ %7520, %7454 ], [ %7605, %7578 ]
  %7608 = fsub fast float %7119, %6952
  %7609 = fmul fast float %7608, %6519
  %7610 = fadd fast float %7609, %6952
  %7611 = fsub fast float %7286, %7610
  %7612 = fmul fast float %7611, %6518
  %7613 = fadd fast float %7612, %7610
  %7614 = fsub fast float %7607, %7613
  %7615 = fmul fast float %7614, %6546
  %7616 = fadd fast float %7615, %7613
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7619 = fcmp fast ogt float %7618, 0.000000e+00
  br i1 %7619, label %7620, label %7660, !dx.controlflow.hints !129

; <label>:7620                                    ; preds = %7606
  %7621 = fcmp fast ugt float %7618, 0.000000e+00
  br i1 %7621, label %7622, label %7657

; <label>:7622                                    ; preds = %7620
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 0
  %7625 = extractvalue %dx.types.CBufRet.f32 %7623, 1
  %7626 = extractvalue %dx.types.CBufRet.f32 %7623, 2
  %7627 = extractvalue %dx.types.CBufRet.f32 %7623, 3
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7632 = extractvalue %dx.types.CBufRet.f32 %7628, 3
  %7633 = extractvalue %dx.types.CBufRet.f32 %7617, 0
  %7634 = extractvalue %dx.types.CBufRet.f32 %7617, 1
  %7635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7636 = extractvalue %dx.types.CBufRet.f32 %7635, 0
  %7637 = extractvalue %dx.types.CBufRet.f32 %7635, 1
  %7638 = extractvalue %dx.types.CBufRet.f32 %7635, 2
  %7639 = fadd fast float %7636, %6399
  %7640 = fadd fast float %7637, %6400
  %7641 = fadd fast float %7638, %6401
  %7642 = fmul fast float %7639, %7624
  %7643 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7640, float %7642)  ; FMad(a,b,c)
  %7644 = call float @dx.op.tertiary.f32(i32 46, float %7626, float %7641, float %7643)  ; FMad(a,b,c)
  %7645 = fadd fast float %7644, %7627
  %7646 = fmul fast float %7639, %7629
  %7647 = call float @dx.op.tertiary.f32(i32 46, float %7630, float %7640, float %7646)  ; FMad(a,b,c)
  %7648 = call float @dx.op.tertiary.f32(i32 46, float %7631, float %7641, float %7647)  ; FMad(a,b,c)
  %7649 = fadd fast float %7648, %7632
  %7650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7645, float %7649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = fmul fast float %7651, %7634
  %7653 = fadd fast float %7652, %7633
  %7654 = call float @dx.op.unary.f32(i32 7, float %7653)  ; Saturate(value)
  %7655 = fmul fast float %7654, %7618
  %7656 = fsub fast float 1.000000e+00, %7655
  br label %7657

; <label>:7657                                    ; preds = %7622, %7620
  %7658 = phi float [ %7656, %7622 ], [ 1.000000e+00, %7620 ]
  %7659 = fmul fast float %7658, %7616
  br label %7660

; <label>:7660                                    ; preds = %7657, %7606, %6379
  %7661 = phi float [ 1.000000e+00, %6379 ], [ %7659, %7657 ], [ %7616, %7606 ]
  %7662 = call float @dx.op.binary.f32(i32 36, float %7661, float %7661)  ; FMin(a,b)
  %7663 = call float @dx.op.binary.f32(i32 36, float %7661, float %7662)  ; FMin(a,b)
  %7664 = fcmp fast ogt float %7663, 0.000000e+00
  br i1 %7664, label %7665, label %7830, !dx.controlflow.hints !130

; <label>:7665                                    ; preds = %7660
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7670 = extractvalue %dx.types.CBufRet.f32 %7666, 3
  %7671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7671, 0
  %7673 = extractvalue %dx.types.CBufRet.f32 %7671, 1
  %7674 = extractvalue %dx.types.CBufRet.f32 %7671, 2
  %7675 = extractvalue %dx.types.CBufRet.f32 %7671, 3
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.CBufRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7680 = extractvalue %dx.types.CBufRet.f32 %7676, 3
  %7681 = fmul fast float %7667, %6399
  %7682 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7668, float %7681)  ; FMad(a,b,c)
  %7683 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %7669, float %7682)  ; FMad(a,b,c)
  %7684 = fadd fast float %7683, %7670
  %7685 = fmul fast float %7672, %6399
  %7686 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7673, float %7685)  ; FMad(a,b,c)
  %7687 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %7674, float %7686)  ; FMad(a,b,c)
  %7688 = fadd fast float %7687, %7675
  %7689 = fmul fast float %7677, %6399
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %6400, float %7678, float %7689)  ; FMad(a,b,c)
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %6401, float %7679, float %7690)  ; FMad(a,b,c)
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7692, 3
  %7696 = fmul fast float %7695, %7684
  %7697 = fmul fast float %7695, %7688
  %7698 = fadd fast float %7696, %7693
  %7699 = fadd fast float %7697, %7694
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.CBufRet.f32 %7700, 1
  %7703 = fsub fast float %7698, %7701
  %7704 = fsub fast float %7699, %7702
  %7705 = fcmp fast olt float %7703, 0.000000e+00
  %7706 = fcmp fast olt float %7704, 0.000000e+00
  %7707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.CBufRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.CBufRet.f32 %7707, 2
  %7711 = extractvalue %dx.types.CBufRet.f32 %7707, 3
  %7712 = select i1 %7705, float %7708, float %7710
  %7713 = select i1 %7706, float %7709, float %7711
  %7714 = fmul fast float %7712, %7703
  %7715 = fmul fast float %7713, %7704
  %7716 = call float @dx.op.unary.f32(i32 6, float %7714)  ; FAbs(value)
  %7717 = call float @dx.op.unary.f32(i32 6, float %7715)  ; FAbs(value)
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7720 = call float @dx.op.binary.f32(i32 35, float %7716, float %7717)  ; FMax(a,b)
  %7721 = fsub fast float %7719, %7720
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fcmp fast ogt float %7722, 0.000000e+00
  br i1 %7723, label %7724, label %7765, !dx.controlflow.hints !131

; <label>:7724                                    ; preds = %7665
  %7725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7698, float %7699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 1
  %7727 = fcmp fast ogt float %7726, 0.000000e+00
  br i1 %7727, label %7728, label %7760

; <label>:7728                                    ; preds = %7724
  %7729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7698, float %7699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7730 = extractvalue %dx.types.ResRet.f32 %7729, 0
  %7731 = extractvalue %dx.types.ResRet.f32 %7729, 1
  %7732 = extractvalue %dx.types.ResRet.f32 %7729, 2
  %7733 = extractvalue %dx.types.ResRet.f32 %7729, 3
  %7734 = fsub fast float 1.000000e+00, %7680
  %7735 = fsub fast float %7734, %7691
  %7736 = fmul fast float %7735, 0x400921FB60000000
  %7737 = fadd fast float %7736, 0x3FF921FB60000000
  %7738 = call float @dx.op.unary.f32(i32 13, float %7737)  ; Sin(value)
  %7739 = fadd fast float %7738, -1.000000e+00
  %7740 = fmul fast float %7739, 0x3FD45F3060000000
  %7741 = fmul fast float %7735, 0x401921FB60000000
  %7742 = fadd fast float %7741, 0x400921FB60000000
  %7743 = call float @dx.op.unary.f32(i32 13, float %7742)  ; Sin(value)
  %7744 = fadd fast float %7743, 0x3E7777A5C0000000
  %7745 = fmul fast float %7744, 0x3FC45F3060000000
  %7746 = fmul fast float %7735, 0x4022D97C80000000
  %7747 = fadd fast float %7746, 0x4012D97C80000000
  %7748 = call float @dx.op.unary.f32(i32 13, float %7747)  ; Sin(value)
  %7749 = fadd fast float %7748, 1.000000e+00
  %7750 = fmul fast float %7749, 0x3FBB2995E0000000
  %7751 = fmul fast float %7735, 0x402921FB60000000
  %7752 = fadd fast float %7751, 0x401921FB60000000
  %7753 = call float @dx.op.unary.f32(i32 13, float %7752)  ; Sin(value)
  %7754 = fadd fast float %7753, 0xBE8777A5C0000000
  %7755 = fmul fast float %7754, 0x3FB45F3060000000
  %7756 = call float @dx.op.dot4.f32(i32 56, float %7730, float %7731, float %7732, float %7733, float %7740, float %7745, float %7750, float %7755)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7757 = fmul fast float %7756, 0xBFF7154760000000
  %7758 = call float @dx.op.unary.f32(i32 21, float %7757)  ; Exp(value)
  %7759 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  br label %7760

; <label>:7760                                    ; preds = %7728, %7724
  %7761 = phi float [ %7759, %7728 ], [ 1.000000e+00, %7724 ]
  %7762 = fadd fast float %7761, -1.000000e+00
  %7763 = fmul fast float %7762, %7722
  %7764 = fadd fast float %7763, 1.000000e+00
  br label %7765

; <label>:7765                                    ; preds = %7760, %7665
  %7766 = phi float [ %7764, %7760 ], [ 1.000000e+00, %7665 ]
  %7767 = fmul fast float %7766, %7661
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 0
  %7770 = extractvalue %dx.types.CBufRet.f32 %7768, 1
  %7771 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7772 = fadd fast float %7769, %201
  %7773 = fadd fast float %7770, %202
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.CBufRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.CBufRet.f32 %7776, 2
  %7780 = fsub fast float -0.000000e+00, %7772
  %7781 = fsub fast float -0.000000e+00, %7773
  %7782 = fsub fast float %5623, %7771
  %7783 = fadd fast float %7782, %7775
  %7784 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7780, float %7781, float %7783)  ; Dot3(ax,ay,az,bx,by,bz)
  %7785 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7777, float %7778, float %7779)  ; Dot3(ax,ay,az,bx,by,bz)
  %7786 = fdiv fast float 1.000000e+00, %7785
  %7787 = fmul fast float %7786, %7784
  %7788 = fmul fast float %7777, %7787
  %7789 = fmul fast float %7778, %7787
  %7790 = fadd fast float %7788, %7772
  %7791 = fadd fast float %7789, %7773
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = fsub fast float %7790, %7793
  %7796 = fsub fast float %7791, %7794
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 2
  %7799 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7800 = fmul fast float %7795, %7798
  %7801 = fmul fast float %7796, %7799
  %7802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7803 = extractvalue %dx.types.CBufRet.i32 %7802, 3
  %7804 = icmp eq i32 %7803, 0
  br i1 %7804, label %7810, label %7805

; <label>:7805                                    ; preds = %7765
  %7806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7800, float %7801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7807 = extractvalue %dx.types.ResRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.ResRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.ResRet.f32 %7806, 2
  br label %7815

; <label>:7810                                    ; preds = %7765
  %7811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7800, float %7801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7812 = extractvalue %dx.types.ResRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.ResRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.ResRet.f32 %7811, 2
  br label %7815

; <label>:7815                                    ; preds = %7810, %7805
  %7816 = phi float [ %7807, %7805 ], [ %7812, %7810 ]
  %7817 = phi float [ %7808, %7805 ], [ %7813, %7810 ]
  %7818 = phi float [ %7809, %7805 ], [ %7814, %7810 ]
  %7819 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7820 = fmul fast float %7819, %7816
  %7821 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7822 = fsub fast float %7787, %7821
  %7823 = fsub fast float %7822, %7820
  %7824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7823)  ; FMax(a,b)
  %7825 = fmul fast float %7824, %7817
  %7826 = call float @dx.op.binary.f32(i32 36, float %7818, float %7825)  ; FMin(a,b)
  %7827 = fmul fast float %7826, 0xBFF7154760000000
  %7828 = call float @dx.op.unary.f32(i32 21, float %7827)  ; Exp(value)
  %7829 = fmul fast float %7767, %7828
  br label %7830

; <label>:7830                                    ; preds = %7815, %7660
  %7831 = phi float [ %7829, %7815 ], [ %7661, %7660 ]
  %7832 = call float @dx.op.binary.f32(i32 36, float %7831, float %7831)  ; FMin(a,b)
  %7833 = call float @dx.op.binary.f32(i32 36, float %7831, float %7832)  ; FMin(a,b)
  %7834 = fcmp fast ogt float %7833, 0.000000e+00
  br i1 %7834, label %7835, label %8095, !dx.controlflow.hints !132

; <label>:7835                                    ; preds = %7830
  %7836 = fmul fast float %7831, %6391
  %7837 = fmul fast float %7831, %6392
  %7838 = fmul fast float %7831, %6393
  %7839 = fsub fast float %203, %4822
  %7840 = fcmp fast ogt float %7839, 0.000000e+00
  %7841 = fmul fast float %6380, 5.120000e+02
  %7842 = fmul fast float %6381, 5.120000e+02
  %7843 = fmul fast float %6382, 5.120000e+02
  %7844 = fadd fast float %7843, %203
  %7845 = fsub fast float %4822, %7844
  %7846 = fmul fast float %7845, 2.000000e+00
  %7847 = fadd fast float %7846, %7844
  %7848 = select i1 %7840, float %7847, float %7844
  %7849 = fsub fast float %7848, %203
  %7850 = call float @dx.op.dot3.f32(i32 55, float %7841, float %7842, float %7849, float %7841, float %7842, float %7849)  ; Dot3(ax,ay,az,bx,by,bz)
  %7851 = call float @dx.op.unary.f32(i32 25, float %7850)  ; Rsqrt(value)
  %7852 = fmul fast float %7851, %7841
  %7853 = fmul fast float %7851, %7842
  %7854 = fmul fast float %7851, %7849
  %7855 = fsub fast float %4822, %203
  %7856 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7855)  ; Dot3(ax,ay,az,bx,by,bz)
  %7857 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7852, float %7853, float %7854)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = fdiv fast float 1.000000e+00, %7857
  %7859 = fmul fast float %7858, %7856
  %7860 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7839, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7861 = fcmp fast ogt float %7860, 0.000000e+00
  %7862 = fcmp fast olt float %7860, 0.000000e+00
  %7863 = zext i1 %7861 to i32
  %7864 = zext i1 %7862 to i32
  %7865 = sub nsw i32 %7863, %7864
  %7866 = sitofp i32 %7865 to float
  %7867 = fsub fast float %7848, %4822
  %7868 = call float @dx.op.dot3.f32(i32 55, float %7841, float %7842, float %7867, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = fcmp fast ogt float %7868, 0.000000e+00
  %7870 = fcmp fast olt float %7868, 0.000000e+00
  %7871 = zext i1 %7869 to i32
  %7872 = zext i1 %7870 to i32
  %7873 = sub nsw i32 %7871, %7872
  %7874 = sitofp i32 %7873 to float
  %7875 = fcmp fast une float %7866, %7874
  br i1 %7875, label %7876, label %7886

; <label>:7876                                    ; preds = %7835
  %7877 = fmul fast float %7859, %7854
  %7878 = fmul fast float %7859, %7853
  %7879 = fmul fast float %7859, %7852
  %7880 = fmul fast float %7879, %7879
  %7881 = fmul fast float %7878, %7878
  %7882 = fadd fast float %7880, %7881
  %7883 = fmul fast float %7877, %7877
  %7884 = fadd fast float %7882, %7883
  %7885 = call float @dx.op.unary.f32(i32 24, float %7884)  ; Sqrt(value)
  br label %7896

; <label>:7886                                    ; preds = %7835
  %7887 = icmp slt i32 %7865, 0
  br i1 %7887, label %7888, label %7896

; <label>:7888                                    ; preds = %7886
  %7889 = fsub fast float %203, %7848
  %7890 = fmul fast float %7841, %7841
  %7891 = fmul fast float %7842, %7842
  %7892 = fadd fast float %7890, %7891
  %7893 = fmul fast float %7889, %7889
  %7894 = fadd fast float %7892, %7893
  %7895 = call float @dx.op.unary.f32(i32 24, float %7894)  ; Sqrt(value)
  br label %7896

; <label>:7896                                    ; preds = %7888, %7886, %7876
  %7897 = phi float [ %7885, %7876 ], [ %7895, %7888 ], [ 0.000000e+00, %7886 ]
  %7898 = fsub fast float -0.000000e+00, %7897
  %7899 = select i1 %7840, float -0.000000e+00, float %7898
  %7900 = fmul fast float %4819, 0x3FF7154760000000
  %7901 = fmul fast float %7900, %7899
  %7902 = fmul fast float %4820, 0x3FF7154760000000
  %7903 = fmul fast float %7902, %7899
  %7904 = fmul fast float %4821, 0x3FF7154760000000
  %7905 = fmul fast float %7904, %7899
  %7906 = call float @dx.op.unary.f32(i32 21, float %7901)  ; Exp(value)
  %7907 = call float @dx.op.unary.f32(i32 21, float %7903)  ; Exp(value)
  %7908 = call float @dx.op.unary.f32(i32 21, float %7905)  ; Exp(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  %7910 = call float @dx.op.unary.f32(i32 7, float %7907)  ; Saturate(value)
  %7911 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7912 = fmul fast float %7836, %7909
  %7913 = fmul fast float %7837, %7910
  %7914 = fmul fast float %7838, %7911
  %7915 = fsub fast float %6380, %5611
  %7916 = fsub fast float %6381, %5610
  %7917 = fsub fast float %6382, %5609
  %7918 = call float @dx.op.dot3.f32(i32 55, float %7915, float %7916, float %7917, float %7915, float %7916, float %7917)  ; Dot3(ax,ay,az,bx,by,bz)
  %7919 = call float @dx.op.unary.f32(i32 25, float %7918)  ; Rsqrt(value)
  %7920 = fmul fast float %7919, %7915
  %7921 = fmul fast float %7919, %7916
  %7922 = fmul fast float %7919, %7917
  %7923 = call float @dx.op.dot3.f32(i32 55, float %6380, float %6381, float %6382, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %7924 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5607, float %5606, float %7920, float %7921, float %7922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7925 = call float @dx.op.unary.f32(i32 7, float %7923)  ; Saturate(value)
  %7926 = bitcast i32 %5650 to float
  %7927 = fmul fast float %7925, %7925
  %7928 = fmul fast float %7927, %7926
  %7929 = call float @dx.op.unary.f32(i32 7, float %7928)  ; Saturate(value)
  %7930 = fmul fast float %7929, %7925
  %7931 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %7920, float %7921, float %7922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7932 = fmul fast float %7931, %7931
  %7933 = call float @dx.op.unary.f32(i32 6, float %7923)  ; FAbs(value)
  %7934 = fsub fast float 1.000000e+00, %5644
  %7935 = fmul fast float %5626, %5626
  %7936 = fmul fast float %7935, %7934
  %7937 = fadd fast float %7936, %5644
  %7938 = bitcast float %7937 to i32
  %7939 = ashr i32 %7938, 1
  %7940 = add nsw i32 %7939, 532487669
  %7941 = bitcast i32 %7940 to float
  %7942 = fadd fast float %7941, %5626
  %7943 = fmul fast float %5644, %7932
  %7944 = fsub fast float 1.000000e+00, %7932
  %7945 = fadd fast float %7944, %7943
  %7946 = fmul fast float %7933, %7933
  %7947 = fmul fast float %7946, %7934
  %7948 = fadd fast float %7947, %5644
  %7949 = bitcast float %7948 to i32
  %7950 = ashr i32 %7949, 1
  %7951 = add nsw i32 %7950, 532487669
  %7952 = bitcast i32 %7951 to float
  %7953 = fadd fast float %7952, %7933
  %7954 = fmul fast float %7945, %7945
  %7955 = fmul fast float %7954, %7942
  %7956 = fmul fast float %7955, %7953
  %7957 = fdiv fast float 0x3FF0A00000000000, %7956
  %7958 = fmul fast float %7957, %5644
  %7959 = fmul fast float %5750, 0x3FF9999980000000
  %7960 = fsub fast float 5.000000e+00, %7959
  %7961 = call float @dx.op.unary.f32(i32 6, float %7924)  ; FAbs(value)
  %7962 = fsub fast float 1.000000e+00, %7961
  %7963 = fmul fast float %5750, 0x41D9660740000000
  %7964 = fadd fast float %7963, 0xC1EFBF8940000000
  %7965 = bitcast float %7962 to i32
  %7966 = sitofp i32 %7965 to float
  %7967 = fmul fast float %7966, %7960
  %7968 = fadd fast float %7964, %7967
  %7969 = fptosi float %7968 to i32
  %7970 = bitcast i32 %7969 to float
  %7971 = fsub fast float 1.000000e+00, %5612
  %7972 = fsub fast float 1.000000e+00, %5613
  %7973 = fsub fast float 1.000000e+00, %5624
  %7974 = fmul fast float %7970, %7971
  %7975 = fmul fast float %7970, %7972
  %7976 = fmul fast float %7970, %7973
  %7977 = fadd fast float %7974, %5612
  %7978 = fadd fast float %7975, %5613
  %7979 = fadd fast float %7976, %5624
  br i1 %5773, label %7980, label %8003

; <label>:7980                                    ; preds = %7896
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4414, float %7961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.ResRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.ResRet.f32 %7981, 2
  %7985 = fadd fast float %7982, -5.000000e-01
  %7986 = fadd fast float %7983, -5.000000e-01
  %7987 = fadd fast float %7984, -5.000000e-01
  %7988 = fmul fast float %5612, 4.000000e+00
  %7989 = fmul fast float %7988, %7971
  %7990 = fmul fast float %7989, %7985
  %7991 = fmul fast float %5613, 4.000000e+00
  %7992 = fmul fast float %7991, %7972
  %7993 = fmul fast float %7992, %7986
  %7994 = fmul fast float %5624, 4.000000e+00
  %7995 = fmul fast float %7994, %7973
  %7996 = fmul fast float %7995, %7987
  %7997 = fadd fast float %7990, %7977
  %7998 = fadd fast float %7993, %7978
  %7999 = fadd fast float %7996, %7979
  %8000 = call float @dx.op.unary.f32(i32 7, float %7997)  ; Saturate(value)
  %8001 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8002 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  br label %8003

; <label>:8003                                    ; preds = %7980, %7896
  %8004 = phi float [ %8000, %7980 ], [ %7977, %7896 ]
  %8005 = phi float [ %8001, %7980 ], [ %7978, %7896 ]
  %8006 = phi float [ %8002, %7980 ], [ %7979, %7896 ]
  %8007 = fmul fast float %7923, 9.843750e-01
  %8008 = fadd fast float %8007, 7.812500e-03
  %8009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8008, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8010 = extractvalue %dx.types.ResRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.ResRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.ResRet.f32 %8009, 2
  %8013 = extractvalue %dx.types.ResRet.f32 %8009, 3
  %8014 = fsub fast float %8012, %8010
  %8015 = fsub fast float %8013, %8011
  %8016 = fmul fast float %8014, %5760
  %8017 = fmul fast float %8015, %5760
  %8018 = fadd fast float %8016, %8010
  %8019 = fadd fast float %8017, %8011
  %8020 = fmul fast float %8018, %5612
  %8021 = fmul fast float %8018, %5613
  %8022 = fmul fast float %8018, %5624
  %8023 = fadd fast float %8020, %8019
  %8024 = fadd fast float %8021, %8019
  %8025 = fadd fast float %8022, %8019
  br i1 %5773, label %8026, label %8049

; <label>:8026                                    ; preds = %8003
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4414, float %7923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = fadd fast float %8028, -5.000000e-01
  %8032 = fadd fast float %8029, -5.000000e-01
  %8033 = fadd fast float %8030, -5.000000e-01
  %8034 = fmul fast float %5612, 4.000000e+00
  %8035 = fmul fast float %8034, %7971
  %8036 = fmul fast float %8035, %8031
  %8037 = fmul fast float %5613, 4.000000e+00
  %8038 = fmul fast float %8037, %7972
  %8039 = fmul fast float %8038, %8032
  %8040 = fmul fast float %5624, 4.000000e+00
  %8041 = fmul fast float %8040, %7973
  %8042 = fmul fast float %8041, %8033
  %8043 = fadd fast float %8036, %8023
  %8044 = fadd fast float %8039, %8024
  %8045 = fadd fast float %8042, %8025
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8048 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  br label %8049

; <label>:8049                                    ; preds = %8026, %8003
  %8050 = phi float [ %8046, %8026 ], [ %8023, %8003 ]
  %8051 = phi float [ %8047, %8026 ], [ %8024, %8003 ]
  %8052 = phi float [ %8048, %8026 ], [ %8025, %8003 ]
  %8053 = call float @dx.op.binary.f32(i32 35, float %8051, float %8052)  ; FMax(a,b)
  %8054 = call float @dx.op.binary.f32(i32 35, float %8050, float %8053)  ; FMax(a,b)
  %8055 = fsub fast float 1.000000e+00, %8054
  %8056 = fmul fast float %8004, %7958
  %8057 = fmul fast float %8005, %7958
  %8058 = fmul fast float %8006, %7958
  %8059 = fsub fast float 1.000000e+00, %7924
  %8060 = bitcast float %8059 to i32
  %8061 = sitofp i32 %8060 to float
  %8062 = fmul fast float %8061, 5.000000e+00
  %8063 = fadd fast float %8062, 0xC1EFBF8940000000
  %8064 = fptosi float %8063 to i32
  %8065 = bitcast i32 %8064 to float
  %8066 = fmul fast float %8065, %4415
  %8067 = fmul fast float %8055, %8066
  %8068 = fmul fast float %8067, %6315
  %8069 = fmul fast float %8067, %6316
  %8070 = fmul fast float %8067, %6317
  %8071 = fadd fast float %8068, %8056
  %8072 = fadd fast float %8069, %8057
  %8073 = fadd fast float %8070, %8058
  %8074 = fmul fast float %7930, %7912
  %8075 = fmul fast float %8074, %8055
  %8076 = fmul fast float %7930, %7913
  %8077 = fmul fast float %8076, %8055
  %8078 = fmul fast float %7930, %7914
  %8079 = fmul fast float %8078, %8055
  %8080 = fmul fast float %8074, %8071
  %8081 = fmul fast float %8076, %8072
  %8082 = fmul fast float %8078, %8073
  %8083 = fadd fast float %8075, %6299
  %8084 = fmul fast float %8083, %4411
  %8085 = fadd fast float %8077, %6300
  %8086 = fmul fast float %8085, %4411
  %8087 = fadd fast float %8079, %6301
  %8088 = fmul fast float %8087, %4411
  %8089 = fadd fast float %8080, %6368
  %8090 = fmul fast float %8089, %4411
  %8091 = fadd fast float %8081, %6371
  %8092 = fmul fast float %8091, %4411
  %8093 = fadd fast float %8082, %6374
  %8094 = fmul fast float %8093, %4411
  br label %8095

; <label>:8095                                    ; preds = %8049, %7830, %6295
  %8096 = phi float [ %6369, %6295 ], [ %6369, %7830 ], [ %8090, %8049 ]
  %8097 = phi float [ %6372, %6295 ], [ %6372, %7830 ], [ %8092, %8049 ]
  %8098 = phi float [ %6375, %6295 ], [ %6375, %7830 ], [ %8094, %8049 ]
  %8099 = phi float [ %6364, %6295 ], [ %6364, %7830 ], [ %8084, %8049 ]
  %8100 = phi float [ %6365, %6295 ], [ %6365, %7830 ], [ %8086, %8049 ]
  %8101 = phi float [ %6366, %6295 ], [ %6366, %7830 ], [ %8088, %8049 ]
  %8102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.i32 %8102, 0
  %8104 = icmp eq i32 %8103, 0
  br i1 %8104, label %8780, label %8105

; <label>:8105                                    ; preds = %8095
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 3
  %8109 = fmul fast float %8107, %114
  %8110 = fmul fast float %8108, %115
  %8111 = fptoui float %8109 to i32
  %8112 = fptoui float %8110 to i32
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8116 = extractvalue %dx.types.CBufRet.f32 %8113, 3
  %8117 = fadd fast float %101, -4.000000e+00
  %8118 = call float @dx.op.binary.f32(i32 35, float %8117, float 0.000000e+00)  ; FMax(a,b)
  %8119 = fadd fast float %8118, %8114
  %8120 = fmul fast float %8119, %8115
  %8121 = call float @dx.op.unary.f32(i32 23, float %8120)  ; Log(value)
  %8122 = fmul fast float %8121, %8116
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 2
  %8125 = fmul fast float %8122, %8124
  %8126 = call float @dx.op.unary.f32(i32 7, float %8125)  ; Saturate(value)
  %8127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.i32 %8127, 1
  %8129 = add i32 %8128, -1
  %8130 = uitofp i32 %8128 to float
  %8131 = fmul fast float %8130, %8126
  %8132 = fptoui float %8131 to i32
  %8133 = call i32 @dx.op.binary.i32(i32 40, i32 %8132, i32 %8129)  ; UMin(a,b)
  %8134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.i32 %8134, 2
  %8136 = extractvalue %dx.types.CBufRet.i32 %8134, 3
  %8137 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8112, i32 %8135, i32 %8111)  ; UMad(a,b,c)
  %8138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8133, i32 %8136, i32 %8137)  ; UMad(a,b,c)
  %8139 = add nsw i32 %8103, -1
  %8140 = call i32 @dx.op.binary.i32(i32 37, i32 %8139, i32 0)  ; IMax(a,b)
  %8141 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %8142 = fptoui float %8141 to i32
  %8143 = lshr i32 %8142, 5
  %8144 = call i32 @dx.op.binary.i32(i32 40, i32 %8143, i32 8191)  ; UMin(a,b)
  %8145 = shl i32 %8144, 2
  %8146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8145, i32 undef)  ; BufferLoad(srv,index,wot)
  %8147 = extractvalue %dx.types.ResRet.i32 %8146, 0
  %8148 = lshr i32 %8147, 16
  %8149 = and i32 %8147, 65535
  %8150 = lshr i32 %8147, 21
  %8151 = lshr i32 %8149, 5
  %8152 = call i32 @dx.op.binary.i32(i32 40, i32 %8151, i32 %8140)  ; UMin(a,b)
  %8153 = icmp ugt i32 %8150, %8152
  br i1 %8153, label %8780, label %8154

; <label>:8154                                    ; preds = %8105
  br label %8155

; <label>:8155                                    ; preds = %8770, %8154
  %8156 = phi i32 [ %8777, %8770 ], [ %8150, %8154 ]
  %8157 = phi float [ %8771, %8770 ], [ %8096, %8154 ]
  %8158 = phi float [ %8772, %8770 ], [ %8097, %8154 ]
  %8159 = phi float [ %8773, %8770 ], [ %8098, %8154 ]
  %8160 = phi float [ %8774, %8770 ], [ %8099, %8154 ]
  %8161 = phi float [ %8775, %8770 ], [ %8100, %8154 ]
  %8162 = phi float [ %8776, %8770 ], [ %8101, %8154 ]
  %8163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.i32 %8163, 0
  %8165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8138, i32 %8164, i32 %8156)  ; UMad(a,b,c)
  %8166 = shl i32 %8165, 2
  %8167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8166, i32 undef)  ; BufferLoad(srv,index,wot)
  %8168 = extractvalue %dx.types.ResRet.i32 %8167, 0
  %8169 = shl i32 %8156, 5
  %8170 = sub nsw i32 %8148, %8169
  %8171 = call i32 @dx.op.binary.i32(i32 37, i32 %8170, i32 0)  ; IMax(a,b)
  %8172 = call i32 @dx.op.binary.i32(i32 38, i32 %8171, i32 31)  ; IMin(a,b)
  %8173 = sub nsw i32 1, %8148
  %8174 = add nsw i32 %8173, %8149
  %8175 = call i32 @dx.op.binary.i32(i32 37, i32 %8174, i32 0)  ; IMax(a,b)
  %8176 = call i32 @dx.op.binary.i32(i32 38, i32 %8175, i32 32)  ; IMin(a,b)
  %8177 = and i32 %8176, 31
  %8178 = shl i32 -1, %8177
  %8179 = xor i32 %8178, -1
  %8180 = and i32 %8172, 31
  %8181 = shl i32 %8179, %8180
  %8182 = icmp eq i32 %8176, 32
  %8183 = select i1 %8182, i32 -1, i32 %8181
  %8184 = and i32 %8183, %8168
  %8185 = icmp eq i32 %8184, 0
  br i1 %8185, label %8770, label %8186

; <label>:8186                                    ; preds = %8155
  br label %8187

; <label>:8187                                    ; preds = %8321, %8186
  %8188 = phi i32 [ %8199, %8321 ], [ %8184, %8186 ]
  %8189 = phi float [ %8322, %8321 ], [ %8157, %8186 ]
  %8190 = phi float [ %8323, %8321 ], [ %8158, %8186 ]
  %8191 = phi float [ %8324, %8321 ], [ %8159, %8186 ]
  %8192 = phi float [ %8325, %8321 ], [ %8160, %8186 ]
  %8193 = phi float [ %8326, %8321 ], [ %8161, %8186 ]
  %8194 = phi float [ %8327, %8321 ], [ %8162, %8186 ]
  %8195 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8188)  ; FirstbitLo(value)
  %8196 = add i32 %8195, %8169
  %8197 = and i32 %8195, 31
  %8198 = shl i32 1, %8197
  %8199 = xor i32 %8198, %8188
  %8200 = mul i32 %8196, 112
  %8201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8200, i32 undef)  ; BufferLoad(srv,index,wot)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = or i32 %8200, 12
  %8206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8205, i32 undef)  ; BufferLoad(srv,index,wot)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = add i32 %8200, 16
  %8209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8208, i32 undef)  ; BufferLoad(srv,index,wot)
  %8210 = extractvalue %dx.types.ResRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.ResRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.ResRet.f32 %8209, 2
  %8213 = add i32 %8200, 28
  %8214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8213, i32 undef)  ; BufferLoad(srv,index,wot)
  %8215 = extractvalue %dx.types.ResRet.i32 %8214, 0
  %8216 = add i32 %8200, 44
  %8217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8216, i32 undef)  ; BufferLoad(srv,index,wot)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = add i32 %8200, 48
  %8220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8219, i32 undef)  ; BufferLoad(srv,index,wot)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.ResRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.ResRet.f32 %8220, 3
  %8225 = add i32 %8200, 64
  %8226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8225, i32 undef)  ; BufferLoad(srv,index,wot)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8230 = extractvalue %dx.types.ResRet.f32 %8226, 3
  %8231 = add i32 %8200, 80
  %8232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %8231, i32 undef)  ; BufferLoad(srv,index,wot)
  %8233 = extractvalue %dx.types.ResRet.f32 %8232, 1
  %8234 = extractvalue %dx.types.ResRet.f32 %8232, 2
  %8235 = add i32 %8200, 92
  %8236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %8235, i32 undef)  ; BufferLoad(srv,index,wot)
  %8237 = extractvalue %dx.types.ResRet.i32 %8236, 0
  %8238 = call float @dx.op.dot3.f32(i32 55, float %8202, float %8203, float %8204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8239 = select i1 %260, float %8233, float %8202
  %8240 = select i1 %260, float %8238, float %8203
  %8241 = select i1 %260, float %8234, float %8204
  %8242 = and i32 %8237, 65535
  %8243 = uitofp i32 %8242 to float
  %8244 = lshr i32 %8237, 16
  %8245 = uitofp i32 %8244 to float
  %8246 = and i32 %8215, 65535
  %8247 = and i32 %8215, 50331648
  %8248 = icmp eq i32 %8247, 33554432
  %8249 = fsub fast float %8221, %201
  %8250 = fsub fast float %8222, %202
  %8251 = fsub fast float %8223, %203
  %8252 = call float @dx.op.dot3.f32(i32 55, float %8249, float %8250, float %8251, float %8249, float %8250, float %8251)  ; Dot3(ax,ay,az,bx,by,bz)
  %8253 = call float @dx.op.unary.f32(i32 24, float %8252)  ; Sqrt(value)
  %8254 = fdiv fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8254, %8249
  %8256 = fmul fast float %8254, %8250
  %8257 = fmul fast float %8254, %8251
  %8258 = fadd fast float %8253, %8207
  %8259 = fdiv fast float 1.000000e+00, %8258
  %8260 = fmul float %8218, %8259
  %8261 = fmul float %8260, %8260
  %8262 = call float @dx.op.unary.f32(i32 7, float %8261)  ; Saturate(value)
  br i1 %8248, label %8263, label %8284

; <label>:8263                                    ; preds = %8187
  %8264 = fmul fast float %8229, %8210
  %8265 = fmul fast float %8229, %8211
  %8266 = fmul fast float %8229, %8212
  %8267 = fadd fast float %8249, %8264
  %8268 = fadd fast float %8250, %8265
  %8269 = fadd fast float %8251, %8266
  %8270 = call float @dx.op.dot3.f32(i32 55, float %8267, float %8268, float %8269, float %8267, float %8268, float %8269)  ; Dot3(ax,ay,az,bx,by,bz)
  %8271 = call float @dx.op.unary.f32(i32 25, float %8270)  ; Rsqrt(value)
  %8272 = fmul fast float %8271, %8267
  %8273 = fmul fast float %8271, %8268
  %8274 = fmul fast float %8271, %8269
  %8275 = fsub fast float %201, %8221
  %8276 = fsub fast float %202, %8222
  %8277 = fsub fast float %203, %8223
  %8278 = fsub fast float -0.000000e+00, %8275
  %8279 = fsub fast float -0.000000e+00, %8276
  %8280 = fsub fast float -0.000000e+00, %8277
  %8281 = call float @dx.op.dot3.f32(i32 55, float %8278, float %8279, float %8280, float %8210, float %8211, float %8212)  ; Dot3(ax,ay,az,bx,by,bz)
  %8282 = fcmp fast ogt float %8281, 0.000000e+00
  %8283 = uitofp i1 %8282 to float
  br label %8284

; <label>:8284                                    ; preds = %8263, %8187
  %8285 = phi float [ %8283, %8263 ], [ 1.000000e+00, %8187 ]
  %8286 = phi float [ %8272, %8263 ], [ %8255, %8187 ]
  %8287 = phi float [ %8273, %8263 ], [ %8256, %8187 ]
  %8288 = phi float [ %8274, %8263 ], [ %8257, %8187 ]
  %8289 = call float @dx.op.dot3.f32(i32 55, float %8210, float %8211, float %8212, float %8286, float %8287, float %8288)  ; Dot3(ax,ay,az,bx,by,bz)
  %8290 = fmul fast float %8289, %8289
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = fsub fast float 1.000000e+00, %8291
  %8293 = fmul fast float %8292, 5.000000e-01
  %8294 = fcmp fast ogt float %8289, 0.000000e+00
  %8295 = fsub fast float 1.000000e+00, %8293
  %8296 = select i1 %8294, float %8293, float %8295
  %8297 = fmul fast float %8296, %8245
  %8298 = fadd fast float %8297, %8243
  %8299 = fmul fast float %8298, 0x3EF0001000000000
  %8300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %8299, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8301 = extractvalue %dx.types.ResRet.f32 %8300, 0
  %8302 = fmul fast float %8289, %8227
  %8303 = fadd fast float %8302, %8228
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8305 = select i1 %8248, float 1.000000e+00, float %8304
  %8306 = select i1 %8248, float %8304, float 1.000000e+00
  %8307 = fmul fast float %8253, %8224
  %8308 = fsub fast float 1.000000e+00, %8307
  %8309 = fmul fast float %8308, %8230
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = fmul fast float %8310, %8306
  %8312 = fmul fast float %8311, 2.000000e+00
  %8313 = fsub fast float 3.000000e+00, %8312
  %8314 = fmul fast float %8301, %8285
  %8315 = fmul fast float %8311, %8311
  %8316 = fmul fast float %8315, %8314
  %8317 = fmul fast float %8316, %8313
  %8318 = call float @dx.op.binary.f32(i32 36, float %8317, float %8317)  ; FMin(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8317, float %8318)  ; FMin(a,b)
  %8320 = fcmp fast ogt float %8319, 0.000000e+00
  br i1 %8320, label %8329, label %8321, !dx.controlflow.hints !133

; <label>:8321                                    ; preds = %8726, %8475, %8284
  %8322 = phi float [ %8189, %8475 ], [ %8189, %8284 ], [ %8766, %8726 ]
  %8323 = phi float [ %8190, %8475 ], [ %8190, %8284 ], [ %8767, %8726 ]
  %8324 = phi float [ %8191, %8475 ], [ %8191, %8284 ], [ %8768, %8726 ]
  %8325 = phi float [ %8192, %8475 ], [ %8192, %8284 ], [ %8760, %8726 ]
  %8326 = phi float [ %8193, %8475 ], [ %8193, %8284 ], [ %8761, %8726 ]
  %8327 = phi float [ %8194, %8475 ], [ %8194, %8284 ], [ %8762, %8726 ]
  %8328 = icmp eq i32 %8188, %8198
  br i1 %8328, label %8769, label %8187

; <label>:8329                                    ; preds = %8284
  %8330 = icmp eq i32 %8246, 255
  br i1 %8330, label %8475, label %8331, !dx.controlflow.hints !134

; <label>:8331                                    ; preds = %8329
  %8332 = mul nuw nsw i32 %8246, 176
  %8333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8332, i32 undef)  ; BufferLoad(srv,index,wot)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = extractvalue %dx.types.ResRet.f32 %8333, 3
  %8338 = add nuw nsw i32 %8332, 16
  %8339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8338, i32 undef)  ; BufferLoad(srv,index,wot)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = add nuw nsw i32 %8332, 32
  %8343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8342, i32 undef)  ; BufferLoad(srv,index,wot)
  %8344 = extractvalue %dx.types.ResRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.ResRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.ResRet.f32 %8343, 2
  %8347 = add nuw nsw i32 %8332, 48
  %8348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8347, i32 undef)  ; BufferLoad(srv,index,wot)
  %8349 = extractvalue %dx.types.ResRet.f32 %8348, 0
  %8350 = extractvalue %dx.types.ResRet.f32 %8348, 1
  %8351 = extractvalue %dx.types.ResRet.f32 %8348, 2
  %8352 = extractvalue %dx.types.ResRet.f32 %8348, 3
  %8353 = add nuw nsw i32 %8332, 64
  %8354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8353, i32 undef)  ; BufferLoad(srv,index,wot)
  %8355 = extractvalue %dx.types.ResRet.f32 %8354, 0
  %8356 = extractvalue %dx.types.ResRet.f32 %8354, 1
  %8357 = extractvalue %dx.types.ResRet.f32 %8354, 2
  %8358 = extractvalue %dx.types.ResRet.f32 %8354, 3
  %8359 = add nuw nsw i32 %8332, 80
  %8360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8359, i32 undef)  ; BufferLoad(srv,index,wot)
  %8361 = extractvalue %dx.types.ResRet.f32 %8360, 0
  %8362 = extractvalue %dx.types.ResRet.f32 %8360, 1
  %8363 = extractvalue %dx.types.ResRet.f32 %8360, 2
  %8364 = extractvalue %dx.types.ResRet.f32 %8360, 3
  %8365 = add nuw nsw i32 %8332, 96
  %8366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8365, i32 undef)  ; BufferLoad(srv,index,wot)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = extractvalue %dx.types.ResRet.f32 %8366, 1
  %8369 = extractvalue %dx.types.ResRet.f32 %8366, 2
  %8370 = extractvalue %dx.types.ResRet.f32 %8366, 3
  %8371 = bitcast float %8341 to i32
  %8372 = fmul fast float %8346, %121
  %8373 = fmul fast float %8346, %122
  %8374 = fmul fast float %8346, %123
  %8375 = fadd fast float %8372, %201
  %8376 = fadd fast float %8373, %202
  %8377 = fadd fast float %8374, %203
  %8378 = fmul fast float %8375, %8349
  %8379 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8355, float %8378)  ; FMad(a,b,c)
  %8380 = call float @dx.op.tertiary.f32(i32 46, float %8377, float %8361, float %8379)  ; FMad(a,b,c)
  %8381 = fadd fast float %8380, %8367
  %8382 = fmul fast float %8375, %8350
  %8383 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8356, float %8382)  ; FMad(a,b,c)
  %8384 = call float @dx.op.tertiary.f32(i32 46, float %8377, float %8362, float %8383)  ; FMad(a,b,c)
  %8385 = fadd fast float %8384, %8368
  %8386 = fmul fast float %8375, %8351
  %8387 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8357, float %8386)  ; FMad(a,b,c)
  %8388 = call float @dx.op.tertiary.f32(i32 46, float %8377, float %8363, float %8387)  ; FMad(a,b,c)
  %8389 = fadd fast float %8388, %8369
  %8390 = fmul fast float %8375, %8352
  %8391 = call float @dx.op.tertiary.f32(i32 46, float %8376, float %8358, float %8390)  ; FMad(a,b,c)
  %8392 = call float @dx.op.tertiary.f32(i32 46, float %8377, float %8364, float %8391)  ; FMad(a,b,c)
  %8393 = fadd fast float %8392, %8370
  %8394 = fdiv fast float %8381, %8393
  %8395 = fdiv fast float %8385, %8393
  %8396 = fdiv fast float %8389, %8393
  %8397 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8396)  ; FMax(a,b)
  %8398 = fmul fast float %271, 0x401921FB60000000
  %8399 = call float @dx.op.unary.f32(i32 13, float %8398)  ; Sin(value)
  %8400 = call float @dx.op.unary.f32(i32 12, float %8398)  ; Cos(value)
  %8401 = fmul fast float %8400, %8345
  %8402 = call float @dx.op.tertiary.f32(i32 46, float %8399, float %8345, float 0.000000e+00)  ; FMad(a,b,c)
  %8403 = fmul fast float %8345, %8399
  %8404 = fsub fast float -0.000000e+00, %8403
  %8405 = call float @dx.op.tertiary.f32(i32 46, float %8400, float %8345, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8406

; <label>:8406                                    ; preds = %8406, %8331
  %8407 = phi float [ 0.000000e+00, %8331 ], [ %8439, %8406 ]
  %8408 = phi float [ 0.000000e+00, %8331 ], [ %8441, %8406 ]
  %8409 = phi i32 [ 0, %8331 ], [ %8442, %8406 ]
  %8410 = mul i32 %8409, 2
  %8411 = add i32 0, %8410
  %8412 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8411
  %8413 = load float, float* %8412, align 4
  %8414 = mul i32 %8409, 2
  %8415 = add i32 1, %8414
  %8416 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8415
  %8417 = load float, float* %8416, align 4
  %8418 = fmul fast float %8401, %8413
  %8419 = call float @dx.op.tertiary.f32(i32 46, float %8417, float %8404, float %8418)  ; FMad(a,b,c)
  %8420 = fmul fast float %8413, %8402
  %8421 = call float @dx.op.tertiary.f32(i32 46, float %8417, float %8405, float %8420)  ; FMad(a,b,c)
  %8422 = fadd fast float %8419, %8394
  %8423 = fadd fast float %8421, %8395
  %8424 = fmul fast float %8422, %8340
  %8425 = fmul fast float %8423, %8340
  %8426 = call float @dx.op.binary.f32(i32 35, float %8424, float %8336)  ; FMax(a,b)
  %8427 = call float @dx.op.binary.f32(i32 35, float %8425, float %8336)  ; FMax(a,b)
  %8428 = call float @dx.op.binary.f32(i32 36, float %8426, float %8337)  ; FMin(a,b)
  %8429 = call float @dx.op.binary.f32(i32 36, float %8427, float %8337)  ; FMin(a,b)
  %8430 = fadd fast float %8428, %8334
  %8431 = fadd fast float %8429, %8335
  %8432 = uitofp i32 %8371 to float
  %8433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %8430, float %8431, float %8432, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8434 = extractvalue %dx.types.ResRet.f32 %8433, 0
  %8435 = fsub fast float %8434, %8397
  %8436 = fsub fast float %8435, %8344
  %8437 = fcmp fast ogt float %8436, 0.000000e+00
  %8438 = select i1 %8437, float 1.000000e+00, float 0.000000e+00
  %8439 = fadd fast float %8438, %8407
  %8440 = select i1 %8437, float %8436, float 0.000000e+00
  %8441 = fadd fast float %8440, %8408
  %8442 = add nuw nsw i32 %8409, 1
  %8443 = icmp eq i32 %8442, 8
  br i1 %8443, label %8444, label %8406

; <label>:8444                                    ; preds = %8406
  %8445 = fdiv fast float 1.000000e+00, %8439
  %8446 = fmul fast float %8445, %8441
  %8447 = fdiv fast float 1.000000e+00, %8397
  %8448 = fmul fast float %8446, %8447
  %8449 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  %8450 = call float @dx.op.binary.f32(i32 35, float %8449, float 0.000000e+00)  ; FMax(a,b)
  %8451 = fmul fast float %8439, 1.250000e-01
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fmul fast float %8452, 2.000000e+00
  %8454 = fadd fast float %8453, -1.000000e+00
  %8455 = fcmp fast ogt float %8454, 0.000000e+00
  %8456 = fcmp fast olt float %8454, 0.000000e+00
  %8457 = zext i1 %8455 to i32
  %8458 = zext i1 %8456 to i32
  %8459 = sub nsw i32 %8457, %8458
  %8460 = sitofp i32 %8459 to float
  %8461 = fmul fast float %8460, %8454
  %8462 = fsub fast float 1.000000e+00, %8461
  %8463 = fmul fast float %8462, %8462
  %8464 = fmul fast float %8463, %8462
  %8465 = fsub fast float %8462, %8464
  %8466 = fmul fast float %8465, %8450
  %8467 = fsub fast float 1.000000e+00, %8464
  %8468 = fsub fast float %8467, %8466
  %8469 = fmul fast float %8460, 5.000000e-01
  %8470 = fmul fast float %8469, %8468
  %8471 = fsub fast float -5.000000e-01, %8470
  %8472 = fmul fast float %8471, %8305
  %8473 = fadd fast float %8472, 1.000000e+00
  %8474 = fmul fast float %8473, %8317
  br label %8475

; <label>:8475                                    ; preds = %8444, %8329
  %8476 = phi float [ %8474, %8444 ], [ %8317, %8329 ]
  %8477 = call float @dx.op.binary.f32(i32 36, float %8476, float %8476)  ; FMin(a,b)
  %8478 = call float @dx.op.binary.f32(i32 36, float %8476, float %8477)  ; FMin(a,b)
  %8479 = fcmp fast ogt float %8478, 0.000000e+00
  br i1 %8479, label %8480, label %8321, !dx.controlflow.hints !135

; <label>:8480                                    ; preds = %8475
  %8481 = fmul fast float %8476, %8239
  %8482 = fmul fast float %8476, %8240
  %8483 = fmul fast float %8476, %8241
  %8484 = fsub fast float %8223, %4822
  %8485 = fcmp fast ogt float %8484, 0.000000e+00
  %8486 = fsub fast float %203, %4822
  %8487 = fcmp fast ogt float %8486, 0.000000e+00
  %8488 = xor i1 %8487, %8485
  %8489 = fsub fast float %4822, %8223
  %8490 = fmul fast float %8489, 2.000000e+00
  %8491 = fadd fast float %8490, %8223
  %8492 = select i1 %8488, float %8223, float %8491
  %8493 = fsub fast float %8492, %203
  %8494 = call float @dx.op.dot3.f32(i32 55, float %8249, float %8250, float %8493, float %8249, float %8250, float %8493)  ; Dot3(ax,ay,az,bx,by,bz)
  %8495 = call float @dx.op.unary.f32(i32 25, float %8494)  ; Rsqrt(value)
  %8496 = fmul fast float %8495, %8249
  %8497 = fmul fast float %8495, %8250
  %8498 = fmul fast float %8495, %8493
  %8499 = fsub fast float %4822, %203
  %8500 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8499)  ; Dot3(ax,ay,az,bx,by,bz)
  %8501 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8496, float %8497, float %8498)  ; Dot3(ax,ay,az,bx,by,bz)
  %8502 = fdiv fast float 1.000000e+00, %8501
  %8503 = fmul fast float %8502, %8500
  %8504 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8486, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8505 = fcmp fast ogt float %8504, 0.000000e+00
  %8506 = fcmp fast olt float %8504, 0.000000e+00
  %8507 = zext i1 %8505 to i32
  %8508 = zext i1 %8506 to i32
  %8509 = sub nsw i32 %8507, %8508
  %8510 = sitofp i32 %8509 to float
  %8511 = fsub fast float %8492, %4822
  %8512 = call float @dx.op.dot3.f32(i32 55, float %8249, float %8250, float %8511, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8513 = fcmp fast ogt float %8512, 0.000000e+00
  %8514 = fcmp fast olt float %8512, 0.000000e+00
  %8515 = zext i1 %8513 to i32
  %8516 = zext i1 %8514 to i32
  %8517 = sub nsw i32 %8515, %8516
  %8518 = sitofp i32 %8517 to float
  %8519 = fcmp fast une float %8510, %8518
  br i1 %8519, label %8520, label %8530

; <label>:8520                                    ; preds = %8480
  %8521 = fmul fast float %8503, %8498
  %8522 = fmul fast float %8503, %8497
  %8523 = fmul fast float %8503, %8496
  %8524 = fmul fast float %8523, %8523
  %8525 = fmul fast float %8522, %8522
  %8526 = fadd fast float %8524, %8525
  %8527 = fmul fast float %8521, %8521
  %8528 = fadd fast float %8526, %8527
  %8529 = call float @dx.op.unary.f32(i32 24, float %8528)  ; Sqrt(value)
  br label %8542

; <label>:8530                                    ; preds = %8480
  %8531 = icmp slt i32 %8509, 0
  br i1 %8531, label %8532, label %8542

; <label>:8532                                    ; preds = %8530
  %8533 = fsub fast float %201, %8221
  %8534 = fsub fast float %202, %8222
  %8535 = fsub fast float %203, %8492
  %8536 = fmul fast float %8533, %8533
  %8537 = fmul fast float %8534, %8534
  %8538 = fadd fast float %8536, %8537
  %8539 = fmul fast float %8535, %8535
  %8540 = fadd fast float %8538, %8539
  %8541 = call float @dx.op.unary.f32(i32 24, float %8540)  ; Sqrt(value)
  br label %8542

; <label>:8542                                    ; preds = %8532, %8530, %8520
  %8543 = phi float [ %8529, %8520 ], [ %8541, %8532 ], [ 0.000000e+00, %8530 ]
  %8544 = and i1 %8487, %8485
  %8545 = fsub fast float -0.000000e+00, %8543
  %8546 = select i1 %8544, float -0.000000e+00, float %8545
  %8547 = fmul fast float %4819, 0x3FF7154760000000
  %8548 = fmul fast float %8547, %8546
  %8549 = fmul fast float %4820, 0x3FF7154760000000
  %8550 = fmul fast float %8549, %8546
  %8551 = fmul fast float %4821, 0x3FF7154760000000
  %8552 = fmul fast float %8551, %8546
  %8553 = call float @dx.op.unary.f32(i32 21, float %8548)  ; Exp(value)
  %8554 = call float @dx.op.unary.f32(i32 21, float %8550)  ; Exp(value)
  %8555 = call float @dx.op.unary.f32(i32 21, float %8552)  ; Exp(value)
  %8556 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8557 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8558 = call float @dx.op.unary.f32(i32 7, float %8555)  ; Saturate(value)
  %8559 = fmul fast float %8481, %8556
  %8560 = fmul fast float %8482, %8557
  %8561 = fmul fast float %8483, %8558
  %8562 = fsub fast float %8255, %5611
  %8563 = fsub fast float %8256, %5610
  %8564 = fsub fast float %8257, %5609
  %8565 = call float @dx.op.dot3.f32(i32 55, float %8562, float %8563, float %8564, float %8562, float %8563, float %8564)  ; Dot3(ax,ay,az,bx,by,bz)
  %8566 = call float @dx.op.unary.f32(i32 25, float %8565)  ; Rsqrt(value)
  %8567 = fmul fast float %8566, %8562
  %8568 = fmul fast float %8566, %8563
  %8569 = fmul fast float %8566, %8564
  %8570 = call float @dx.op.dot3.f32(i32 55, float %8255, float %8256, float %8257, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5607, float %5606, float %8567, float %8568, float %8569)  ; Dot3(ax,ay,az,bx,by,bz)
  %8572 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8573 = fmul fast float %8572, %8262
  %8574 = bitcast i32 %5650 to float
  %8575 = fmul fast float %8572, %8572
  %8576 = fmul fast float %8575, %8574
  %8577 = call float @dx.op.unary.f32(i32 7, float %8576)  ; Saturate(value)
  %8578 = fmul fast float %8573, %8577
  %8579 = bitcast float %8252 to i32
  %8580 = ashr i32 %8579, 1
  %8581 = sub nsw i32 1597463007, %8580
  %8582 = bitcast i32 %8581 to float
  %8583 = fmul fast float %8582, %8249
  %8584 = fmul fast float %8582, %8250
  %8585 = fmul fast float %8582, %8251
  %8586 = fsub fast float %8583, %5611
  %8587 = fsub fast float %8584, %5610
  %8588 = fsub fast float %8585, %5609
  %8589 = call float @dx.op.dot3.f32(i32 55, float %8586, float %8587, float %8588, float %8586, float %8587, float %8588)  ; Dot3(ax,ay,az,bx,by,bz)
  %8590 = call float @dx.op.unary.f32(i32 25, float %8589)  ; Rsqrt(value)
  %8591 = fmul fast float %8586, %8590
  %8592 = fmul fast float %8587, %8590
  %8593 = fmul fast float %8588, %8590
  %8594 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %8591, float %8592, float %8593)  ; Dot3(ax,ay,az,bx,by,bz)
  %8595 = fmul fast float %8594, %8594
  %8596 = call float @dx.op.unary.f32(i32 6, float %8570)  ; FAbs(value)
  %8597 = fsub fast float 1.000000e+00, %5644
  %8598 = fmul fast float %5626, %5626
  %8599 = fmul fast float %8598, %8597
  %8600 = fadd fast float %8599, %5644
  %8601 = bitcast float %8600 to i32
  %8602 = ashr i32 %8601, 1
  %8603 = add nsw i32 %8602, 532487669
  %8604 = bitcast i32 %8603 to float
  %8605 = fadd fast float %8604, %5626
  %8606 = fmul fast float %5644, %8595
  %8607 = fsub fast float 1.000000e+00, %8595
  %8608 = fadd fast float %8607, %8606
  %8609 = fmul fast float %8596, %8596
  %8610 = fmul fast float %8609, %8597
  %8611 = fadd fast float %8610, %5644
  %8612 = bitcast float %8611 to i32
  %8613 = ashr i32 %8612, 1
  %8614 = add nsw i32 %8613, 532487669
  %8615 = bitcast i32 %8614 to float
  %8616 = fadd fast float %8615, %8596
  %8617 = fmul fast float %8608, %8608
  %8618 = fmul fast float %8617, %8605
  %8619 = fmul fast float %8618, %8616
  %8620 = fdiv fast float 1.000000e+00, %8619
  %8621 = bitcast float %5644 to i32
  %8622 = sitofp i32 %8621 to float
  %8623 = fmul fast float %8622, 0x3FE7F73180000000
  %8624 = fadd fast float %8623, 0x41AFE27C40000000
  %8625 = fptosi float %8624 to i32
  %8626 = bitcast i32 %8625 to float
  %8627 = fmul fast float %8218, 0x3FD80E9D60000000
  %8628 = fmul fast float %8627, %8582
  %8629 = fadd fast float %8626, %8628
  %8630 = bitcast float %8629 to i32
  %8631 = sub nsw i32 2129859010, %8630
  %8632 = bitcast i32 %8631 to float
  %8633 = fmul fast float %5644, %8620
  %8634 = fmul fast float %8633, %8626
  %8635 = fmul fast float %8634, %8632
  %8636 = fmul fast float %5750, 0x3FF9999980000000
  %8637 = fsub fast float 5.000000e+00, %8636
  %8638 = call float @dx.op.unary.f32(i32 6, float %8571)  ; FAbs(value)
  %8639 = fsub fast float 1.000000e+00, %8638
  %8640 = fmul fast float %5750, 0x41D9660740000000
  %8641 = fadd fast float %8640, 0xC1EFBF8940000000
  %8642 = bitcast float %8639 to i32
  %8643 = sitofp i32 %8642 to float
  %8644 = fmul fast float %8643, %8637
  %8645 = fadd fast float %8641, %8644
  %8646 = fptosi float %8645 to i32
  %8647 = bitcast i32 %8646 to float
  %8648 = fsub fast float 1.000000e+00, %5612
  %8649 = fsub fast float 1.000000e+00, %5613
  %8650 = fsub fast float 1.000000e+00, %5624
  %8651 = fmul fast float %8647, %8648
  %8652 = fmul fast float %8647, %8649
  %8653 = fmul fast float %8647, %8650
  %8654 = fadd fast float %8651, %5612
  %8655 = fadd fast float %8652, %5613
  %8656 = fadd fast float %8653, %5624
  br i1 %5773, label %8657, label %8680

; <label>:8657                                    ; preds = %8542
  %8658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4414, float %8638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8659 = extractvalue %dx.types.ResRet.f32 %8658, 0
  %8660 = extractvalue %dx.types.ResRet.f32 %8658, 1
  %8661 = extractvalue %dx.types.ResRet.f32 %8658, 2
  %8662 = fadd fast float %8659, -5.000000e-01
  %8663 = fadd fast float %8660, -5.000000e-01
  %8664 = fadd fast float %8661, -5.000000e-01
  %8665 = fmul fast float %5612, 4.000000e+00
  %8666 = fmul fast float %8665, %8648
  %8667 = fmul fast float %8666, %8662
  %8668 = fmul fast float %5613, 4.000000e+00
  %8669 = fmul fast float %8668, %8649
  %8670 = fmul fast float %8669, %8663
  %8671 = fmul fast float %5624, 4.000000e+00
  %8672 = fmul fast float %8671, %8650
  %8673 = fmul fast float %8672, %8664
  %8674 = fadd fast float %8667, %8654
  %8675 = fadd fast float %8670, %8655
  %8676 = fadd fast float %8673, %8656
  %8677 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8678 = call float @dx.op.unary.f32(i32 7, float %8675)  ; Saturate(value)
  %8679 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  br label %8680

; <label>:8680                                    ; preds = %8657, %8542
  %8681 = phi float [ %8677, %8657 ], [ %8654, %8542 ]
  %8682 = phi float [ %8678, %8657 ], [ %8655, %8542 ]
  %8683 = phi float [ %8679, %8657 ], [ %8656, %8542 ]
  %8684 = fmul fast float %8570, 9.843750e-01
  %8685 = fadd fast float %8684, 7.812500e-03
  %8686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8685, float %5754, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8687 = extractvalue %dx.types.ResRet.f32 %8686, 0
  %8688 = extractvalue %dx.types.ResRet.f32 %8686, 1
  %8689 = extractvalue %dx.types.ResRet.f32 %8686, 2
  %8690 = extractvalue %dx.types.ResRet.f32 %8686, 3
  %8691 = fsub fast float %8689, %8687
  %8692 = fsub fast float %8690, %8688
  %8693 = fmul fast float %8691, %5760
  %8694 = fmul fast float %8692, %5760
  %8695 = fadd fast float %8693, %8687
  %8696 = fadd fast float %8694, %8688
  %8697 = fmul fast float %8695, %5612
  %8698 = fmul fast float %8695, %5613
  %8699 = fmul fast float %8695, %5624
  %8700 = fadd fast float %8697, %8696
  %8701 = fadd fast float %8698, %8696
  %8702 = fadd fast float %8699, %8696
  br i1 %5773, label %8703, label %8726

; <label>:8703                                    ; preds = %8680
  %8704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %4414, float %8570, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8705 = extractvalue %dx.types.ResRet.f32 %8704, 0
  %8706 = extractvalue %dx.types.ResRet.f32 %8704, 1
  %8707 = extractvalue %dx.types.ResRet.f32 %8704, 2
  %8708 = fadd fast float %8705, -5.000000e-01
  %8709 = fadd fast float %8706, -5.000000e-01
  %8710 = fadd fast float %8707, -5.000000e-01
  %8711 = fmul fast float %5612, 4.000000e+00
  %8712 = fmul fast float %8711, %8648
  %8713 = fmul fast float %8712, %8708
  %8714 = fmul fast float %5613, 4.000000e+00
  %8715 = fmul fast float %8714, %8649
  %8716 = fmul fast float %8715, %8709
  %8717 = fmul fast float %5624, 4.000000e+00
  %8718 = fmul fast float %8717, %8650
  %8719 = fmul fast float %8718, %8710
  %8720 = fadd fast float %8713, %8700
  %8721 = fadd fast float %8716, %8701
  %8722 = fadd fast float %8719, %8702
  %8723 = call float @dx.op.unary.f32(i32 7, float %8720)  ; Saturate(value)
  %8724 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  %8725 = call float @dx.op.unary.f32(i32 7, float %8722)  ; Saturate(value)
  br label %8726

; <label>:8726                                    ; preds = %8703, %8680
  %8727 = phi float [ %8723, %8703 ], [ %8700, %8680 ]
  %8728 = phi float [ %8724, %8703 ], [ %8701, %8680 ]
  %8729 = phi float [ %8725, %8703 ], [ %8702, %8680 ]
  %8730 = call float @dx.op.binary.f32(i32 35, float %8728, float %8729)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 35, float %8727, float %8730)  ; FMax(a,b)
  %8732 = fsub fast float 1.000000e+00, %8731
  %8733 = fmul fast float %8681, %8635
  %8734 = fmul fast float %8682, %8635
  %8735 = fmul fast float %8683, %8635
  %8736 = fsub fast float 1.000000e+00, %8571
  %8737 = bitcast float %8736 to i32
  %8738 = sitofp i32 %8737 to float
  %8739 = fmul fast float %8738, 5.000000e+00
  %8740 = fadd fast float %8739, 0xC1EFBF8940000000
  %8741 = fptosi float %8740 to i32
  %8742 = bitcast i32 %8741 to float
  %8743 = fmul fast float %8742, %4415
  %8744 = fmul fast float %8732, %8743
  %8745 = fmul fast float %8744, %6315
  %8746 = fmul fast float %8744, %6316
  %8747 = fmul fast float %8744, %6317
  %8748 = fadd fast float %8745, %8733
  %8749 = fadd fast float %8746, %8734
  %8750 = fadd fast float %8747, %8735
  %8751 = fmul fast float %8559, %4411
  %8752 = fmul fast float %8751, %8578
  %8753 = fmul fast float %8752, %8732
  %8754 = fmul fast float %8560, %4411
  %8755 = fmul fast float %8754, %8578
  %8756 = fmul fast float %8755, %8732
  %8757 = fmul fast float %8561, %4411
  %8758 = fmul fast float %8757, %8578
  %8759 = fmul fast float %8758, %8732
  %8760 = fadd fast float %8753, %8192
  %8761 = fadd fast float %8756, %8193
  %8762 = fadd fast float %8759, %8194
  %8763 = fmul fast float %8752, %8748
  %8764 = fmul fast float %8755, %8749
  %8765 = fmul fast float %8758, %8750
  %8766 = fadd fast float %8763, %8189
  %8767 = fadd fast float %8764, %8190
  %8768 = fadd fast float %8765, %8191
  br label %8321

; <label>:8769                                    ; preds = %8321
  br label %8770

; <label>:8770                                    ; preds = %8769, %8155
  %8771 = phi float [ %8157, %8155 ], [ %8322, %8769 ]
  %8772 = phi float [ %8158, %8155 ], [ %8323, %8769 ]
  %8773 = phi float [ %8159, %8155 ], [ %8324, %8769 ]
  %8774 = phi float [ %8160, %8155 ], [ %8325, %8769 ]
  %8775 = phi float [ %8161, %8155 ], [ %8326, %8769 ]
  %8776 = phi float [ %8162, %8155 ], [ %8327, %8769 ]
  %8777 = add i32 %8156, 1
  %8778 = icmp ugt i32 %8777, %8152
  br i1 %8778, label %8779, label %8155

; <label>:8779                                    ; preds = %8770
  br label %8780

; <label>:8780                                    ; preds = %8779, %8105, %8095
  %8781 = phi float [ %8096, %8095 ], [ %8096, %8105 ], [ %8771, %8779 ]
  %8782 = phi float [ %8097, %8095 ], [ %8097, %8105 ], [ %8772, %8779 ]
  %8783 = phi float [ %8098, %8095 ], [ %8098, %8105 ], [ %8773, %8779 ]
  %8784 = phi float [ %8099, %8095 ], [ %8099, %8105 ], [ %8774, %8779 ]
  %8785 = phi float [ %8100, %8095 ], [ %8100, %8105 ], [ %8775, %8779 ]
  %8786 = phi float [ %8101, %8095 ], [ %8101, %8105 ], [ %8776, %8779 ]
  %8787 = fmul fast float %4411, %4411
  %8788 = fmul fast float %8787, %6341
  %8789 = fmul fast float %8787, %6342
  %8790 = fmul fast float %8787, %6343
  %8791 = fadd fast float %8788, 1.000000e+00
  %8792 = fadd fast float %8789, 1.000000e+00
  %8793 = fadd fast float %8790, 1.000000e+00
  %8794 = call float @dx.op.dot3.f32(i32 55, float %8791, float %8792, float %8793, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8795 = fsub fast float 1.000000e+00, %8794
  %8796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8796, 0
  %8798 = fmul fast float %8797, %6347
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8801 = fsub fast float 1.000000e+00, %4419
  %8802 = call float @dx.op.unary.f32(i32 7, float %8801)  ; Saturate(value)
  %8803 = fadd fast float %8786, %4417
  %8804 = fmul fast float %8803, %4419
  %8805 = fmul fast float %8802, %8800
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8808 = fmul fast float %8784, %5615
  %8809 = fmul fast float %8785, %5616
  %8810 = fmul fast float %8786, %5617
  %8811 = fcmp fast ogt float %101, %223
  %8812 = and i1 %8811, %4825
  %8813 = or i1 %4831, %8812
  %8814 = icmp eq i32 %4824, 2
  %8815 = fcmp fast ole float %101, %223
  %8816 = and i1 %8815, %8814
  %8817 = or i1 %8816, %8813
  br i1 %8812, label %8818, label %9075

; <label>:8818                                    ; preds = %8780
  %8819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8820 = extractvalue %dx.types.CBufRet.f32 %8819, 2
  %8821 = extractvalue %dx.types.CBufRet.f32 %8819, 3
  %8822 = fmul fast float %8820, %114
  %8823 = fmul fast float %8821, %115
  %8824 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8825 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8826 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8824, float %8825, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8827 = extractvalue %dx.types.ResRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.ResRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.ResRet.f32 %8826, 2
  %8830 = extractvalue %dx.types.ResRet.f32 %8826, 3
  %8831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8824, float %8825, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8832 = extractvalue %dx.types.ResRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.ResRet.f32 %8831, 1
  %8834 = extractvalue %dx.types.ResRet.f32 %8831, 2
  %8835 = extractvalue %dx.types.ResRet.f32 %8831, 3
  %8836 = call float @dx.op.binary.f32(i32 35, float %8828, float %8829)  ; FMax(a,b)
  %8837 = call float @dx.op.binary.f32(i32 35, float %8827, float %8836)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 35, float %8837, float %8830)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8833, float %8834)  ; FMin(a,b)
  %8840 = call float @dx.op.binary.f32(i32 36, float %8832, float %8839)  ; FMin(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8840, float %8835)  ; FMin(a,b)
  %8842 = fmul fast float %8838, 2.550000e+02
  %8843 = fadd fast float %8842, 0x3F70101020000000
  %8844 = fptoui float %8843 to i32
  %8845 = fmul fast float %8841, 2.550000e+02
  %8846 = fadd fast float %8845, 0x3F70101020000000
  %8847 = fptoui float %8846 to i32
  %8848 = icmp ult i32 %8844, %8847
  br i1 %8848, label %8849, label %9017

; <label>:8849                                    ; preds = %8818
  %8850 = fcmp fast ogt float %100, 9.843750e-01
  %8851 = fadd fast float %101, -4.000000e+00
  %8852 = select i1 %8850, float -4.000000e+00, float %8851
  %8853 = call float @dx.op.binary.f32(i32 35, float %8852, float 0.000000e+00)  ; FMax(a,b)
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8856 = fadd fast float %8855, %8853
  %8857 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8858 = fmul fast float %8856, %8857
  %8859 = call float @dx.op.unary.f32(i32 23, float %8858)  ; Log(value)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8854, 3
  %8861 = fmul fast float %8860, %8859
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8864 = fmul fast float %8861, %8863
  %8865 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8866 = uitofp i32 %8844 to float
  %8867 = uitofp i32 %8847 to float
  %8868 = fadd fast float %8866, 5.000000e-01
  %8869 = fadd fast float %8867, 5.000000e-01
  %8870 = fmul fast float %8863, %8868
  %8871 = fmul fast float %8863, %8869
  %8872 = fadd fast float %8870, 0x3F0FFB4800000000
  %8873 = fadd fast float %8871, 0xBF0FFB4800000000
  %8874 = call float @dx.op.binary.f32(i32 35, float %8865, float %8872)  ; FMax(a,b)
  %8875 = call float @dx.op.binary.f32(i32 36, float %8874, float %8873)  ; FMin(a,b)
  %8876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.f32 %8876, 1
  %8878 = extractvalue %dx.types.CBufRet.f32 %8876, 2
  %8879 = extractvalue %dx.types.CBufRet.f32 %8876, 0
  %8880 = fmul fast float %8877, %8875
  %8881 = fadd fast float %8879, %8880
  %8882 = fadd fast float %8879, %8878
  %8883 = fsub fast float %8877, %8878
  %8884 = fadd fast float %8883, %8879
  %8885 = call float @dx.op.binary.f32(i32 35, float %8881, float %8882)  ; FMax(a,b)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8885, float %8884)  ; FMin(a,b)
  %8887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8824, float %8825, float %8886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8888 = extractvalue %dx.types.ResRet.f32 %8887, 0
  %8889 = extractvalue %dx.types.ResRet.f32 %8887, 1
  %8890 = extractvalue %dx.types.ResRet.f32 %8887, 2
  %8891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.i32 %8891, 0
  %8893 = extractvalue %dx.types.CBufRet.i32 %8891, 1
  %8894 = uitofp i32 %8892 to float
  %8895 = uitofp i32 %8893 to float
  %8896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.f32 %8896, 0
  %8898 = extractvalue %dx.types.CBufRet.f32 %8896, 1
  %8899 = fmul fast float %8894, %8824
  %8900 = fmul fast float %8895, %8825
  %8901 = fadd fast float %8899, -5.000000e-01
  %8902 = fadd fast float %8900, -5.000000e-01
  %8903 = call float @dx.op.unary.f32(i32 22, float %8901)  ; Frc(value)
  %8904 = call float @dx.op.unary.f32(i32 22, float %8902)  ; Frc(value)
  %8905 = fmul fast float %8903, %8903
  %8906 = fmul fast float %8905, %8903
  %8907 = fsub fast float 3.000000e+00, %8903
  %8908 = fmul fast float %8905, %8907
  %8909 = fmul fast float %8903, 3.000000e+00
  %8910 = fmul fast float %8906, 3.000000e+00
  %8911 = fmul fast float %8905, 6.000000e+00
  %8912 = fsub fast float %8910, %8911
  %8913 = fadd fast float %8912, 4.000000e+00
  %8914 = fmul fast float %8913, 0x3FC5555560000000
  %8915 = fmul fast float %8906, -3.000000e+00
  %8916 = fadd fast float %8905, %8903
  %8917 = fmul fast float %8916, 3.000000e+00
  %8918 = fadd fast float %8915, 1.000000e+00
  %8919 = fadd fast float %8918, %8917
  %8920 = fmul fast float %8906, 0x3FC5555560000000
  %8921 = fmul fast float %8904, %8904
  %8922 = fmul fast float %8921, %8904
  %8923 = fsub fast float 3.000000e+00, %8904
  %8924 = fmul fast float %8921, %8923
  %8925 = fmul fast float %8904, 3.000000e+00
  %8926 = fmul fast float %8922, 3.000000e+00
  %8927 = fmul fast float %8921, 6.000000e+00
  %8928 = fsub fast float %8926, %8927
  %8929 = fadd fast float %8928, 4.000000e+00
  %8930 = fmul fast float %8929, 0x3FC5555560000000
  %8931 = fmul fast float %8922, -3.000000e+00
  %8932 = fadd fast float %8921, %8904
  %8933 = fmul fast float %8932, 3.000000e+00
  %8934 = fadd fast float %8931, 1.000000e+00
  %8935 = fadd fast float %8934, %8933
  %8936 = fmul fast float %8922, 0x3FC5555560000000
  %8937 = fadd fast float %8903, 1.000000e+00
  %8938 = fsub fast float 1.000000e+00, %8909
  %8939 = fadd fast float %8938, %8908
  %8940 = fadd fast float %8939, %8913
  %8941 = fmul fast float %8940, 0x3FC5555560000000
  %8942 = fdiv fast float %8914, %8941
  %8943 = fsub fast float %8937, %8942
  %8944 = fsub fast float 1.000000e+00, %8903
  %8945 = fadd fast float %8919, %8906
  %8946 = fmul fast float %8945, 0x3FC5555560000000
  %8947 = fdiv fast float %8920, %8946
  %8948 = fadd fast float %8944, %8947
  %8949 = fadd fast float %8904, 1.000000e+00
  %8950 = fsub fast float 1.000000e+00, %8925
  %8951 = fadd fast float %8950, %8924
  %8952 = fadd fast float %8951, %8929
  %8953 = fmul fast float %8952, 0x3FC5555560000000
  %8954 = fdiv fast float %8930, %8953
  %8955 = fsub fast float %8949, %8954
  %8956 = fsub fast float 1.000000e+00, %8904
  %8957 = fadd fast float %8935, %8922
  %8958 = fmul fast float %8957, 0x3FC5555560000000
  %8959 = fdiv fast float %8936, %8958
  %8960 = fadd fast float %8959, %8956
  %8961 = fmul fast float %8943, %8897
  %8962 = fsub fast float %8824, %8961
  %8963 = fmul fast float %8948, %8897
  %8964 = fadd fast float %8963, %8824
  %8965 = fmul fast float %8960, %8898
  %8966 = fadd fast float %8965, %8825
  %8967 = fmul fast float %8955, %8898
  %8968 = fsub fast float %8825, %8967
  %8969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8962, float %8968, float %8886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8970 = extractvalue %dx.types.ResRet.f32 %8969, 0
  %8971 = extractvalue %dx.types.ResRet.f32 %8969, 1
  %8972 = extractvalue %dx.types.ResRet.f32 %8969, 2
  %8973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8964, float %8968, float %8886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8974 = extractvalue %dx.types.ResRet.f32 %8973, 0
  %8975 = extractvalue %dx.types.ResRet.f32 %8973, 1
  %8976 = extractvalue %dx.types.ResRet.f32 %8973, 2
  %8977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8962, float %8966, float %8886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8978 = extractvalue %dx.types.ResRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.ResRet.f32 %8977, 1
  %8980 = extractvalue %dx.types.ResRet.f32 %8977, 2
  %8981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8964, float %8966, float %8886, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8982 = extractvalue %dx.types.ResRet.f32 %8981, 0
  %8983 = extractvalue %dx.types.ResRet.f32 %8981, 1
  %8984 = extractvalue %dx.types.ResRet.f32 %8981, 2
  %8985 = fsub fast float %8978, %8970
  %8986 = fsub fast float %8979, %8971
  %8987 = fsub fast float %8980, %8972
  %8988 = fmul fast float %8985, %8958
  %8989 = fmul fast float %8986, %8958
  %8990 = fmul fast float %8987, %8958
  %8991 = fadd fast float %8988, %8970
  %8992 = fadd fast float %8989, %8971
  %8993 = fadd fast float %8990, %8972
  %8994 = fsub fast float %8982, %8974
  %8995 = fsub fast float %8983, %8975
  %8996 = fsub fast float %8984, %8976
  %8997 = fmul fast float %8994, %8958
  %8998 = fmul fast float %8995, %8958
  %8999 = fmul fast float %8996, %8958
  %9000 = fsub fast float %8974, %8991
  %9001 = fadd fast float %9000, %8997
  %9002 = fsub fast float %8975, %8992
  %9003 = fadd fast float %9002, %8998
  %9004 = fsub fast float %8976, %8993
  %9005 = fadd fast float %9004, %8999
  %9006 = fmul fast float %9001, %8946
  %9007 = fmul fast float %9003, %8946
  %9008 = fmul fast float %9005, %8946
  %9009 = fadd fast float %9006, %8991
  %9010 = fadd fast float %9007, %8992
  %9011 = fadd fast float %9008, %8993
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9014 = fmul fast float %9009, %9013
  %9015 = fmul fast float %9010, %9013
  %9016 = fmul fast float %9011, %9013
  br label %9017

; <label>:9017                                    ; preds = %8849, %8818
  %9018 = phi float [ %8888, %8849 ], [ 1.000000e+00, %8818 ]
  %9019 = phi float [ %8889, %8849 ], [ 1.000000e+00, %8818 ]
  %9020 = phi float [ %8890, %8849 ], [ 1.000000e+00, %8818 ]
  %9021 = phi float [ %9014, %8849 ], [ 0.000000e+00, %8818 ]
  %9022 = phi float [ %9015, %8849 ], [ 0.000000e+00, %8818 ]
  %9023 = phi float [ %9016, %8849 ], [ 0.000000e+00, %8818 ]
  %9024 = fmul fast float %9021, %8795
  %9025 = fmul fast float %9022, %8795
  %9026 = fmul fast float %9023, %8795
  %9027 = call float @dx.op.dot3.f32(i32 55, float %9018, float %9019, float %9020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9028 = call float @dx.op.dot3.f32(i32 55, float %9024, float %9025, float %9026, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9029 = select i1 %260, float %9027, float %9018
  %9030 = select i1 %260, float %9027, float %9019
  %9031 = select i1 %260, float 1.000000e+00, float %9020
  %9032 = select i1 %260, float %9028, float %9024
  %9033 = select i1 %260, float 0.000000e+00, float %9025
  %9034 = select i1 %260, float 0.000000e+00, float %9026
  %9035 = fmul fast float %9029, %8808
  %9036 = fmul fast float %9030, %8809
  %9037 = fmul fast float %9031, %8810
  %9038 = fadd fast float %9035, %9032
  %9039 = fadd fast float %9036, %9033
  %9040 = fadd fast float %9034, %9037
  %9041 = fmul fast float %9029, %8781
  %9042 = fmul fast float %9030, %8782
  %9043 = fmul fast float %9031, %8783
  %9044 = fmul fast float %150, %8820
  %9045 = fmul fast float %152, %8821
  %9046 = fsub fast float 1.000000e+00, %9044
  %9047 = fsub fast float 1.000000e+00, %9045
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9050 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9051 = extractvalue %dx.types.CBufRet.f32 %9048, 2
  %9052 = fmul fast float %9046, %9049
  %9053 = fmul fast float %9046, %9050
  %9054 = fmul fast float %9046, %9051
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 0
  %9057 = extractvalue %dx.types.CBufRet.f32 %9055, 1
  %9058 = extractvalue %dx.types.CBufRet.f32 %9055, 2
  %9059 = fmul fast float %9047, %9056
  %9060 = fmul fast float %9047, %9057
  %9061 = fmul fast float %9047, %9058
  %9062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9063 = extractvalue %dx.types.CBufRet.f32 %9062, 0
  %9064 = extractvalue %dx.types.CBufRet.f32 %9062, 1
  %9065 = extractvalue %dx.types.CBufRet.f32 %9062, 2
  %9066 = fadd fast float %9059, %9063
  %9067 = fadd fast float %9066, %9052
  %9068 = fadd fast float %9060, %9064
  %9069 = fadd fast float %9068, %9053
  %9070 = fadd fast float %9061, %9065
  %9071 = fadd fast float %9070, %9054
  %9072 = fmul fast float %9067, %223
  %9073 = fmul fast float %9069, %223
  %9074 = fmul fast float %9071, %223
  br label %9075

; <label>:9075                                    ; preds = %9017, %8780
  %9076 = phi float [ %9072, %9017 ], [ %201, %8780 ]
  %9077 = phi float [ %9073, %9017 ], [ %202, %8780 ]
  %9078 = phi float [ %9074, %9017 ], [ %203, %8780 ]
  %9079 = phi float [ %223, %9017 ], [ %101, %8780 ]
  %9080 = phi float [ %9038, %9017 ], [ %8808, %8780 ]
  %9081 = phi float [ %9039, %9017 ], [ %8809, %8780 ]
  %9082 = phi float [ %9040, %9017 ], [ %8810, %8780 ]
  %9083 = phi float [ %9041, %9017 ], [ %8781, %8780 ]
  %9084 = phi float [ %9042, %9017 ], [ %8782, %8780 ]
  %9085 = phi float [ %9043, %9017 ], [ %8783, %8780 ]
  %9086 = phi float [ %9018, %9017 ], [ 1.000000e+00, %8780 ]
  br i1 %8817, label %10241, label %9087

; <label>:9087                                    ; preds = %9075
  %9088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9088, 0
  %9090 = extractvalue %dx.types.CBufRet.f32 %9088, 1
  %9091 = extractvalue %dx.types.CBufRet.f32 %9088, 2
  %9092 = extractvalue %dx.types.CBufRet.f32 %9088, 3
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.CBufRet.f32 %9093, 2
  %9097 = extractvalue %dx.types.CBufRet.f32 %9093, 3
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9102 = extractvalue %dx.types.CBufRet.f32 %9098, 3
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 0
  %9105 = extractvalue %dx.types.CBufRet.f32 %9103, 1
  %9106 = extractvalue %dx.types.CBufRet.f32 %9103, 2
  %9107 = extractvalue %dx.types.CBufRet.f32 %9103, 3
  %9108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9109 = extractvalue %dx.types.CBufRet.f32 %9108, 3
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9112 = extractvalue %dx.types.CBufRet.f32 %9110, 0
  %9113 = extractvalue %dx.types.CBufRet.f32 %9110, 1
  %9114 = extractvalue %dx.types.CBufRet.f32 %9110, 2
  %9115 = fcmp fast olt float %9114, -5.000000e-01
  %9116 = call float @dx.op.dot3.f32(i32 55, float %9076, float %9077, float %9078, float %9076, float %9077, float %9078)  ; Dot3(ax,ay,az,bx,by,bz)
  %9117 = call float @dx.op.unary.f32(i32 25, float %9116)  ; Rsqrt(value)
  %9118 = fmul fast float %9117, %9116
  %9119 = fmul fast float %9117, %9076
  %9120 = fmul fast float %9117, %9077
  %9121 = fmul fast float %9117, %9078
  %9122 = fadd fast float %9118, %9092
  %9123 = call float @dx.op.dot3.f32(i32 55, float %9119, float %9120, float %9121, float %9089, float %9090, float %9091)  ; Dot3(ax,ay,az,bx,by,bz)
  %9124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.i32 %9124, 1
  %9126 = and i32 %9125, 1
  %9127 = icmp ne i32 %9126, 0
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9130 = fcmp fast ogt float %9129, 0.000000e+00
  %9131 = and i1 %9127, %9130
  br i1 %9131, label %9132, label %9538, !dx.controlflow.hints !136

; <label>:9132                                    ; preds = %9087
  %9133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9134 = extractvalue %dx.types.CBufRet.f32 %9133, 3
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 2
  %9139 = fsub fast float %9136, %9138
  %9140 = and i32 %9125, 2
  %9141 = extractvalue %dx.types.CBufRet.i32 %9124, 0
  %9142 = call i32 @dx.op.binary.i32(i32 40, i32 %9141, i32 3)  ; UMin(a,b)
  %9143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9144 = extractvalue %dx.types.CBufRet.f32 %9143, 0
  %9145 = extractvalue %dx.types.CBufRet.f32 %9143, 1
  %9146 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9147 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9148 = fsub fast float %9144, %9146
  %9149 = fsub fast float %9145, %9147
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = fcmp fast ogt float %9151, 0.000000e+00
  %9153 = fsub fast float -0.000000e+00, %9148
  %9154 = fsub fast float -0.000000e+00, %9149
  %9155 = call float @dx.op.dot2.f32(i32 54, float %9119, float %9120, float %9119, float %9120)  ; Dot2(ax,ay,bx,by)
  %9156 = call float @dx.op.dot2.f32(i32 54, float %9119, float %9120, float %9153, float %9154)  ; Dot2(ax,ay,bx,by)
  %9157 = fmul fast float %9156, 2.000000e+00
  %9158 = call float @dx.op.dot2.f32(i32 54, float %9153, float %9154, float %9153, float %9154)  ; Dot2(ax,ay,bx,by)
  %9159 = fmul fast float %9151, %9151
  %9160 = fsub fast float %9158, %9159
  %9161 = fmul fast float %9157, %9157
  %9162 = fmul fast float %9155, 4.000000e+00
  %9163 = fmul fast float %9162, %9160
  %9164 = fsub fast float %9161, %9163
  %9165 = fcmp fast ogt float %9164, 0.000000e+00
  br i1 %9165, label %9166, label %9181

; <label>:9166                                    ; preds = %9132
  %9167 = fcmp fast ogt float %9157, 0.000000e+00
  %9168 = call float @dx.op.unary.f32(i32 24, float %9164)  ; Sqrt(value)
  %9169 = fsub fast float -0.000000e+00, %9168
  %9170 = select i1 %9167, float %9168, float %9169
  %9171 = fadd fast float %9170, %9157
  %9172 = fmul float %9171, -5.000000e-01
  %9173 = fdiv fast float %9172, %9155
  %9174 = call float @dx.op.binary.f32(i32 35, float %9173, float 0.000000e+00)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 36, float %9118, float %9174)  ; FMin(a,b)
  %9176 = fdiv fast float %9160, %9172
  %9177 = call float @dx.op.binary.f32(i32 35, float %9176, float 0.000000e+00)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9118, float %9177)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9175, float %9178)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 35, float %9175, float %9178)  ; FMax(a,b)
  br label %9181

; <label>:9181                                    ; preds = %9166, %9132
  %9182 = phi float [ %9180, %9166 ], [ -1.000000e+00, %9132 ]
  %9183 = phi float [ %9179, %9166 ], [ -1.000000e+00, %9132 ]
  %9184 = phi i1 [ true, %9166 ], [ false, %9132 ]
  %9185 = and i1 %9152, %9184
  br i1 %9185, label %9186, label %9188

; <label>:9186                                    ; preds = %9181
  %9187 = fcmp fast oeq float %9183, %9182
  br i1 %9187, label %9491, label %9189

; <label>:9188                                    ; preds = %9181
  br i1 %9152, label %9491, label %9189

; <label>:9189                                    ; preds = %9188, %9186
  %9190 = phi float [ %9118, %9188 ], [ %9182, %9186 ]
  %9191 = phi float [ 0.000000e+00, %9188 ], [ %9183, %9186 ]
  %9192 = icmp ne i32 %9140, 0
  %9193 = fmul fast float %9190, %9121
  %9194 = fadd fast float %9193, %9134
  %9195 = fmul fast float %9194, %9190
  %9196 = select i1 %9192, float 0.000000e+00, float %9195
  %9197 = fcmp fast oeq float %9121, 0.000000e+00
  %9198 = fdiv fast float %9139, %9121
  %9199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9198)  ; FMax(a,b)
  %9200 = select i1 %9197, float %9190, float %9199
  %9201 = call float @dx.op.binary.f32(i32 36, float %9190, float %9200)  ; FMin(a,b)
  %9202 = fcmp fast ogt float %9121, 0.000000e+00
  %9203 = fcmp fast olt float %9139, 0.000000e+00
  br i1 %9202, label %9204, label %9261

; <label>:9204                                    ; preds = %9189
  %9205 = icmp eq i32 %9140, 0
  br i1 %9203, label %9206, label %9250

; <label>:9206                                    ; preds = %9204
  %9207 = select i1 %9205, float %9190, float 0.000000e+00
  %9208 = fsub fast float -0.000000e+00, %9207
  %9209 = call float @dx.op.unary.f32(i32 6, float %9208)  ; FAbs(value)
  %9210 = fmul fast float %9207, %9121
  %9211 = fadd fast float %9210, %9134
  %9212 = fmul fast float %9209, %9211
  %9213 = fsub fast float %9196, %9212
  %9214 = fsub fast float %9190, %9209
  %9215 = select i1 %9205, float %9214, float 0.000000e+00
  %9216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9217 = extractvalue %dx.types.CBufRet.f32 %9216, 0
  %9218 = extractvalue %dx.types.CBufRet.f32 %9216, 1
  %9219 = extractvalue %dx.types.CBufRet.f32 %9216, 2
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9224 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9226 = extractvalue %dx.types.CBufRet.f32 %9225, 3
  %9227 = call float @dx.op.binary.f32(i32 36, float %9213, float %9226)  ; FMin(a,b)
  %9228 = fmul fast float %9224, %9215
  %9229 = call float @dx.op.unary.f32(i32 7, float %9228)  ; Saturate(value)
  %9230 = fsub fast float %9221, %9217
  %9231 = fsub fast float %9222, %9218
  %9232 = fsub fast float %9223, %9219
  %9233 = fmul fast float %9229, %9230
  %9234 = fmul fast float %9229, %9231
  %9235 = fmul fast float %9229, %9232
  %9236 = fadd fast float %9233, %9217
  %9237 = fadd fast float %9234, %9218
  %9238 = fadd fast float %9235, %9219
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9242 = fadd fast float %9241, %9240
  %9243 = call float @dx.op.unary.f32(i32 7, float %9242)  ; Saturate(value)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9239, 2
  %9245 = extractvalue %dx.types.CBufRet.f32 %9239, 3
  %9246 = fadd fast float %9245, %9244
  %9247 = call float @dx.op.unary.f32(i32 7, float %9246)  ; Saturate(value)
  %9248 = fmul fast float %9243, %9227
  %9249 = fmul fast float %9248, %9247
  br label %9491

; <label>:9250                                    ; preds = %9204
  br i1 %9205, label %9251, label %9272

; <label>:9251                                    ; preds = %9250
  %9252 = call float @dx.op.binary.f32(i32 36, float %9201, float %9191)  ; FMin(a,b)
  %9253 = fsub fast float %9201, %9252
  %9254 = fsub fast float %9253, %9190
  %9255 = call float @dx.op.unary.f32(i32 6, float %9254)  ; FAbs(value)
  %9256 = fadd fast float %9253, %9190
  %9257 = fmul fast float %9256, %9121
  %9258 = fadd fast float %9257, %9134
  %9259 = fmul fast float %9258, %9255
  %9260 = fsub fast float %9196, %9259
  br label %9272

; <label>:9261                                    ; preds = %9189
  br i1 %9203, label %9262, label %9272

; <label>:9262                                    ; preds = %9261
  %9263 = call float @dx.op.binary.f32(i32 35, float %9191, float %9201)  ; FMax(a,b)
  %9264 = icmp eq i32 %9140, 0
  %9265 = select i1 %9264, float %9201, float 0.000000e+00
  %9266 = fsub fast float -0.000000e+00, %9265
  %9267 = call float @dx.op.unary.f32(i32 6, float %9266)  ; FAbs(value)
  %9268 = fmul fast float %9265, %9121
  %9269 = fadd fast float %9268, %9134
  %9270 = fmul fast float %9267, %9269
  %9271 = fsub fast float %9196, %9270
  br label %9272

; <label>:9272                                    ; preds = %9262, %9261, %9251, %9250
  %9273 = phi float [ %9191, %9250 ], [ %9191, %9251 ], [ %9263, %9262 ], [ %9191, %9261 ]
  %9274 = phi float [ 0.000000e+00, %9250 ], [ %9255, %9251 ], [ %9267, %9262 ], [ 0.000000e+00, %9261 ]
  %9275 = phi float [ %9196, %9250 ], [ %9260, %9251 ], [ %9271, %9262 ], [ %9196, %9261 ]
  %9276 = phi float [ %9201, %9250 ], [ %9201, %9251 ], [ %9190, %9262 ], [ %9190, %9261 ]
  %9277 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %9277, align 4, !tbaa !122, !noalias !137
  %9278 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %9278, align 4, !tbaa !122, !noalias !137
  %9279 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %9279, align 4, !tbaa !122, !noalias !137
  %9280 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %9280, align 4, !tbaa !122, !noalias !137
  %9281 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %9281, align 4, !tbaa !122, !noalias !137
  %9282 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %9282, align 4, !tbaa !122, !noalias !137
  %9283 = icmp sgt i32 %9142, 0
  br i1 %9283, label %9284, label %9345

; <label>:9284                                    ; preds = %9272
  br label %9285

; <label>:9285                                    ; preds = %9334, %9284
  %9286 = phi i32 [ %9335, %9334 ], [ 0, %9284 ]
  %9287 = phi i32 [ %9336, %9334 ], [ 0, %9284 ]
  %9288 = add nuw i32 %9287, 171
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9288)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 0
  %9291 = extractvalue %dx.types.CBufRet.f32 %9289, 1
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 0
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9295 = fsub fast float %9290, %9293
  %9296 = fsub fast float %9291, %9294
  %9297 = extractvalue %dx.types.CBufRet.f32 %9289, 2
  %9298 = fsub fast float -0.000000e+00, %9295
  %9299 = fsub fast float -0.000000e+00, %9296
  %9300 = call float @dx.op.dot2.f32(i32 54, float %9119, float %9120, float %9298, float %9299)  ; Dot2(ax,ay,bx,by)
  %9301 = fmul fast float %9300, 2.000000e+00
  %9302 = call float @dx.op.dot2.f32(i32 54, float %9298, float %9299, float %9298, float %9299)  ; Dot2(ax,ay,bx,by)
  %9303 = fmul fast float %9297, %9297
  %9304 = fsub fast float %9302, %9303
  %9305 = fmul fast float %9301, %9301
  %9306 = fmul fast float %9162, %9304
  %9307 = fsub fast float %9305, %9306
  %9308 = fcmp fast ogt float %9307, 0.000000e+00
  br i1 %9308, label %9309, label %9324

; <label>:9309                                    ; preds = %9285
  %9310 = fcmp fast ogt float %9301, 0.000000e+00
  %9311 = call float @dx.op.unary.f32(i32 24, float %9307)  ; Sqrt(value)
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = select i1 %9310, float %9311, float %9312
  %9314 = fadd fast float %9313, %9301
  %9315 = fmul float %9314, -5.000000e-01
  %9316 = fdiv fast float %9315, %9155
  %9317 = call float @dx.op.binary.f32(i32 35, float %9316, float 0.000000e+00)  ; FMax(a,b)
  %9318 = call float @dx.op.binary.f32(i32 36, float %9190, float %9317)  ; FMin(a,b)
  %9319 = fdiv fast float %9304, %9315
  %9320 = call float @dx.op.binary.f32(i32 35, float %9319, float 0.000000e+00)  ; FMax(a,b)
  %9321 = call float @dx.op.binary.f32(i32 36, float %9190, float %9320)  ; FMin(a,b)
  %9322 = call float @dx.op.binary.f32(i32 36, float %9318, float %9321)  ; FMin(a,b)
  %9323 = call float @dx.op.binary.f32(i32 35, float %9318, float %9321)  ; FMax(a,b)
  br label %9324

; <label>:9324                                    ; preds = %9309, %9285
  %9325 = phi float [ %9323, %9309 ], [ -1.000000e+00, %9285 ]
  %9326 = phi float [ %9322, %9309 ], [ -1.000000e+00, %9285 ]
  %9327 = phi i1 [ true, %9309 ], [ false, %9285 ]
  br i1 %9327, label %9328, label %9334

; <label>:9328                                    ; preds = %9324
  %9329 = call float @dx.op.binary.f32(i32 35, float %9273, float %9326)  ; FMax(a,b)
  %9330 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9287
  store float %9329, float* %9330, align 4, !tbaa !122, !noalias !137
  %9331 = call float @dx.op.binary.f32(i32 35, float %9273, float %9325)  ; FMax(a,b)
  %9332 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9287
  store float %9331, float* %9332, align 4, !tbaa !122, !noalias !137
  %9333 = add nsw i32 %9286, 1
  br label %9334

; <label>:9334                                    ; preds = %9328, %9324
  %9335 = phi i32 [ %9333, %9328 ], [ %9286, %9324 ]
  %9336 = add nuw nsw i32 %9287, 1
  %9337 = icmp eq i32 %9336, %9142
  br i1 %9337, label %9338, label %9285

; <label>:9338                                    ; preds = %9334
  %9339 = load float, float* %9279, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9340 = load float, float* %9278, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %9341 = load float, float* %9277, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %9342 = load float, float* %9282, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9343 = load float, float* %9281, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %9344 = load float, float* %9280, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %9345

; <label>:9345                                    ; preds = %9338, %9272
  %9346 = phi float [ -1.000000e+00, %9272 ], [ %9344, %9338 ]
  %9347 = phi float [ -1.000000e+00, %9272 ], [ %9343, %9338 ]
  %9348 = phi float [ -1.000000e+00, %9272 ], [ %9342, %9338 ]
  %9349 = phi float [ -1.000000e+00, %9272 ], [ %9341, %9338 ]
  %9350 = phi float [ -1.000000e+00, %9272 ], [ %9340, %9338 ]
  %9351 = phi float [ -1.000000e+00, %9272 ], [ %9339, %9338 ]
  %9352 = phi i32 [ 0, %9272 ], [ %9335, %9338 ]
  %9353 = call float @dx.op.binary.f32(i32 36, float %9350, float %9351)  ; FMin(a,b)
  %9354 = call float @dx.op.binary.f32(i32 36, float %9349, float %9353)  ; FMin(a,b)
  %9355 = call float @dx.op.binary.f32(i32 35, float %9349, float %9350)  ; FMax(a,b)
  %9356 = call float @dx.op.binary.f32(i32 36, float %9355, float %9351)  ; FMin(a,b)
  %9357 = call float @dx.op.binary.f32(i32 36, float %9349, float %9350)  ; FMin(a,b)
  %9358 = call float @dx.op.binary.f32(i32 35, float %9357, float %9356)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 35, float %9350, float %9351)  ; FMax(a,b)
  %9360 = call float @dx.op.binary.f32(i32 35, float %9349, float %9359)  ; FMax(a,b)
  store float %9354, float* %9277, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %9358, float* %9278, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %9360, float* %9279, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %9361 = call float @dx.op.binary.f32(i32 36, float %9347, float %9348)  ; FMin(a,b)
  %9362 = call float @dx.op.binary.f32(i32 36, float %9346, float %9361)  ; FMin(a,b)
  %9363 = call float @dx.op.binary.f32(i32 35, float %9346, float %9347)  ; FMax(a,b)
  %9364 = call float @dx.op.binary.f32(i32 36, float %9363, float %9348)  ; FMin(a,b)
  %9365 = call float @dx.op.binary.f32(i32 36, float %9346, float %9347)  ; FMin(a,b)
  %9366 = call float @dx.op.binary.f32(i32 35, float %9365, float %9364)  ; FMax(a,b)
  %9367 = call float @dx.op.binary.f32(i32 35, float %9347, float %9348)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 35, float %9346, float %9367)  ; FMax(a,b)
  store float %9362, float* %9280, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %9366, float* %9281, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %9368, float* %9282, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %9369 = sub nsw i32 3, %9352
  %9370 = icmp sgt i32 %9369, 2
  br i1 %9370, label %9371, label %9409

; <label>:9371                                    ; preds = %9345
  %9372 = icmp eq i32 %9140, 0
  %9373 = fsub fast float %9190, %9274
  %9374 = select i1 %9372, float %9373, float %9274
  %9375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.f32 %9375, 0
  %9377 = extractvalue %dx.types.CBufRet.f32 %9375, 1
  %9378 = extractvalue %dx.types.CBufRet.f32 %9375, 2
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 0
  %9381 = extractvalue %dx.types.CBufRet.f32 %9379, 1
  %9382 = extractvalue %dx.types.CBufRet.f32 %9379, 2
  %9383 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9385 = extractvalue %dx.types.CBufRet.f32 %9384, 3
  %9386 = call float @dx.op.binary.f32(i32 36, float %9275, float %9385)  ; FMin(a,b)
  %9387 = fmul fast float %9383, %9374
  %9388 = call float @dx.op.unary.f32(i32 7, float %9387)  ; Saturate(value)
  %9389 = fsub fast float %9380, %9376
  %9390 = fsub fast float %9381, %9377
  %9391 = fsub fast float %9382, %9378
  %9392 = fmul fast float %9388, %9389
  %9393 = fmul fast float %9388, %9390
  %9394 = fmul fast float %9388, %9391
  %9395 = fadd fast float %9392, %9376
  %9396 = fadd fast float %9393, %9377
  %9397 = fadd fast float %9394, %9378
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.CBufRet.f32 %9398, 1
  %9401 = fadd fast float %9400, %9399
  %9402 = call float @dx.op.unary.f32(i32 7, float %9401)  ; Saturate(value)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9398, 2
  %9404 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9405 = fadd fast float %9404, %9403
  %9406 = call float @dx.op.unary.f32(i32 7, float %9405)  ; Saturate(value)
  %9407 = fmul fast float %9402, %9386
  %9408 = fmul fast float %9407, %9406
  br label %9491

; <label>:9409                                    ; preds = %9345
  %9410 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9369
  %9411 = load float, float* %9410, align 4, !tbaa !122, !noalias !137
  %9412 = fcmp fast olt float %9411, %9276
  %9413 = icmp sgt i32 %9352, 0
  %9414 = and i1 %9413, %9412
  br i1 %9414, label %9415, label %9452

; <label>:9415                                    ; preds = %9409
  br label %9416

; <label>:9416                                    ; preds = %9445, %9415
  %9417 = phi float [ %9446, %9445 ], [ %9274, %9415 ]
  %9418 = phi float [ %9447, %9445 ], [ %9275, %9415 ]
  %9419 = phi float [ %9427, %9445 ], [ %9411, %9415 ]
  %9420 = phi i32 [ %9424, %9445 ], [ %9369, %9415 ]
  %9421 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %9420
  %9422 = load float, float* %9421, align 4, !tbaa !122, !noalias !137
  %9423 = icmp slt i32 %9420, 2
  %9424 = add nsw i32 %9420, 1
  %9425 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %9424
  %9426 = load float, float* %9425, align 4, !tbaa !122, !noalias !137
  %9427 = select i1 %9423, float %9426, float %9190
  %9428 = call float @dx.op.binary.f32(i32 36, float %9427, float %9422)  ; FMin(a,b)
  %9429 = call float @dx.op.binary.f32(i32 36, float %9276, float %9428)  ; FMin(a,b)
  %9430 = icmp eq i32 %9140, 0
  %9431 = fadd fast float %9429, %9419
  %9432 = fmul fast float %9431, %9121
  %9433 = fadd fast float %9432, %9134
  br i1 %9430, label %9439, label %9434

; <label>:9434                                    ; preds = %9416
  %9435 = fsub fast float %9429, %9419
  %9436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9435)  ; FMax(a,b)
  %9437 = fmul fast float %9436, %9433
  %9438 = fadd fast float %9437, %9418
  br label %9445

; <label>:9439                                    ; preds = %9416
  %9440 = fsub fast float %9419, %9429
  %9441 = call float @dx.op.unary.f32(i32 6, float %9440)  ; FAbs(value)
  %9442 = fadd fast float %9441, %9417
  %9443 = fmul fast float %9441, %9433
  %9444 = fsub fast float %9418, %9443
  br label %9445

; <label>:9445                                    ; preds = %9439, %9434
  %9446 = phi float [ %9436, %9434 ], [ %9442, %9439 ]
  %9447 = phi float [ %9438, %9434 ], [ %9444, %9439 ]
  %9448 = fcmp fast olt float %9427, %9276
  %9449 = icmp slt i32 %9424, 3
  %9450 = and i1 %9449, %9448
  br i1 %9450, label %9416, label %9451

; <label>:9451                                    ; preds = %9445
  br label %9452

; <label>:9452                                    ; preds = %9451, %9409
  %9453 = phi float [ %9274, %9409 ], [ %9446, %9451 ]
  %9454 = phi float [ %9275, %9409 ], [ %9447, %9451 ]
  %9455 = fsub fast float %9190, %9453
  %9456 = select i1 %9192, float %9453, float %9455
  %9457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9458 = extractvalue %dx.types.CBufRet.f32 %9457, 0
  %9459 = extractvalue %dx.types.CBufRet.f32 %9457, 1
  %9460 = extractvalue %dx.types.CBufRet.f32 %9457, 2
  %9461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9462 = extractvalue %dx.types.CBufRet.f32 %9461, 0
  %9463 = extractvalue %dx.types.CBufRet.f32 %9461, 1
  %9464 = extractvalue %dx.types.CBufRet.f32 %9461, 2
  %9465 = extractvalue %dx.types.CBufRet.f32 %9461, 3
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 3
  %9468 = call float @dx.op.binary.f32(i32 36, float %9454, float %9467)  ; FMin(a,b)
  %9469 = fmul fast float %9465, %9456
  %9470 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9471 = fsub fast float %9462, %9458
  %9472 = fsub fast float %9463, %9459
  %9473 = fsub fast float %9464, %9460
  %9474 = fmul fast float %9470, %9471
  %9475 = fmul fast float %9470, %9472
  %9476 = fmul fast float %9470, %9473
  %9477 = fadd fast float %9474, %9458
  %9478 = fadd fast float %9475, %9459
  %9479 = fadd fast float %9476, %9460
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.CBufRet.f32 %9480, 1
  %9483 = fadd fast float %9482, %9481
  %9484 = call float @dx.op.unary.f32(i32 7, float %9483)  ; Saturate(value)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9486 = extractvalue %dx.types.CBufRet.f32 %9480, 3
  %9487 = fadd fast float %9486, %9485
  %9488 = call float @dx.op.unary.f32(i32 7, float %9487)  ; Saturate(value)
  %9489 = fmul fast float %9484, %9468
  %9490 = fmul fast float %9489, %9488
  br label %9491

; <label>:9491                                    ; preds = %9452, %9371, %9206, %9188, %9186
  %9492 = phi float [ %9215, %9206 ], [ %9374, %9371 ], [ %9456, %9452 ], [ 0.000000e+00, %9186 ], [ 0.000000e+00, %9188 ]
  %9493 = phi float [ %9249, %9206 ], [ %9408, %9371 ], [ %9490, %9452 ], [ 0.000000e+00, %9186 ], [ 0.000000e+00, %9188 ]
  %9494 = phi float [ %9236, %9206 ], [ %9395, %9371 ], [ %9477, %9452 ], [ 0.000000e+00, %9186 ], [ 0.000000e+00, %9188 ]
  %9495 = phi float [ %9237, %9206 ], [ %9396, %9371 ], [ %9478, %9452 ], [ 0.000000e+00, %9186 ], [ 0.000000e+00, %9188 ]
  %9496 = phi float [ %9238, %9206 ], [ %9397, %9371 ], [ %9479, %9452 ], [ 0.000000e+00, %9186 ], [ 0.000000e+00, %9188 ]
  %9497 = fmul fast float %9129, %9493
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 2
  %9500 = fsub fast float %9136, %9499
  %9501 = fcmp fast olt float %9497, -2.000000e+01
  %9502 = call float @dx.op.unary.f32(i32 21, float %9497)  ; Exp(value)
  %9503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9504 = extractvalue %dx.types.CBufRet.f32 %9503, 2
  %9505 = extractvalue %dx.types.CBufRet.f32 %9503, 3
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 2
  %9508 = fmul fast float %9505, %9500
  %9509 = call float @dx.op.unary.f32(i32 7, float %9508)  ; Saturate(value)
  %9510 = fsub fast float 1.000000e+00, %9509
  %9511 = fmul fast float %9121, 5.000000e-01
  %9512 = fadd fast float %9511, 5.000000e-01
  %9513 = call float @dx.op.unary.f32(i32 7, float %9512)  ; Saturate(value)
  %9514 = fsub fast float 1.000000e+00, %9513
  %9515 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9510)  ; FMax(a,b)
  %9516 = fdiv fast float %9514, %9515
  %9517 = fsub fast float %9500, %9078
  %9518 = call float @dx.op.unary.f32(i32 6, float %9517)  ; FAbs(value)
  %9519 = fmul fast float %9518, %9504
  %9520 = call float @dx.op.unary.f32(i32 7, float %9516)  ; Saturate(value)
  %9521 = fsub fast float 1.000000e+00, %9519
  %9522 = fmul fast float %9521, %9520
  %9523 = fadd fast float %9522, %9519
  %9524 = fmul fast float %9507, %9500
  %9525 = call float @dx.op.unary.f32(i32 7, float %9524)  ; Saturate(value)
  %9526 = fsub fast float 1.000000e+00, %9523
  %9527 = fmul fast float %9526, %9525
  %9528 = fadd fast float %9527, %9523
  %9529 = call float @dx.op.unary.f32(i32 7, float %9528)  ; Saturate(value)
  %9530 = fadd fast float %9502, -1.000000e+00
  %9531 = select i1 %9501, float -1.000000e+00, float %9530
  %9532 = fmul fast float %9529, %9531
  %9533 = fadd fast float %9532, 1.000000e+00
  %9534 = fsub fast float -0.000000e+00, %9532
  %9535 = fmul fast float %9494, %9534
  %9536 = fmul fast float %9495, %9534
  %9537 = fmul fast float %9496, %9534
  br label %9538

; <label>:9538                                    ; preds = %9491, %9087
  %9539 = phi float [ %9492, %9491 ], [ 0.000000e+00, %9087 ]
  %9540 = phi float [ %9533, %9491 ], [ 1.000000e+00, %9087 ]
  %9541 = phi float [ %9535, %9491 ], [ 0.000000e+00, %9087 ]
  %9542 = phi float [ %9536, %9491 ], [ 0.000000e+00, %9087 ]
  %9543 = phi float [ %9537, %9491 ], [ 0.000000e+00, %9087 ]
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9546 = fsub fast float 1.000000e+00, %9540
  %9547 = fmul fast float %9546, %9122
  %9548 = fmul fast float %9547, %9545
  %9549 = fsub fast float %9122, %9548
  br i1 %9115, label %9550, label %9579, !dx.controlflow.hints !173

; <label>:9550                                    ; preds = %9538
  %9551 = fmul fast float %9123, %9112
  %9552 = fadd fast float %9551, %9113
  %9553 = call float @dx.op.unary.f32(i32 7, float %9552)  ; Saturate(value)
  %9554 = fmul fast float %9094, %9549
  %9555 = fsub fast float -0.000000e+00, %9554
  %9556 = fmul fast float %9095, %9549
  %9557 = fsub fast float -0.000000e+00, %9556
  %9558 = call float @dx.op.unary.f32(i32 21, float %9555)  ; Exp(value)
  %9559 = call float @dx.op.unary.f32(i32 21, float %9557)  ; Exp(value)
  %9560 = call float @dx.op.binary.f32(i32 35, float %9102, float %9558)  ; FMax(a,b)
  %9561 = call float @dx.op.binary.f32(i32 35, float %9102, float %9559)  ; FMax(a,b)
  %9562 = fsub fast float %9561, %9560
  %9563 = fmul fast float %9562, %9553
  %9564 = fadd fast float %9563, %9560
  %9565 = call float @dx.op.unary.f32(i32 7, float %9564)  ; Saturate(value)
  %9566 = fsub fast float %9099, %9104
  %9567 = fsub fast float %9100, %9105
  %9568 = fsub fast float %9101, %9106
  %9569 = fmul fast float %9553, %9566
  %9570 = fmul fast float %9553, %9567
  %9571 = fmul fast float %9553, %9568
  %9572 = fadd fast float %9569, %9104
  %9573 = fadd fast float %9570, %9105
  %9574 = fadd fast float %9571, %9106
  %9575 = fsub fast float 1.000000e+00, %9565
  %9576 = fmul fast float %9575, %9572
  %9577 = fmul fast float %9575, %9573
  %9578 = fmul fast float %9575, %9574
  br label %9638

; <label>:9579                                    ; preds = %9538
  %9580 = fmul fast float %9549, %9111
  %9581 = call float @dx.op.unary.f32(i32 7, float %9580)  ; Saturate(value)
  %9582 = fsub fast float 2.000000e+00, %9581
  %9583 = fmul fast float %9581, 9.921875e-01
  %9584 = fmul fast float %9583, %9582
  %9585 = fadd fast float %9584, 3.906250e-03
  %9586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9585, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9587 = extractvalue %dx.types.ResRet.f32 %9586, 0
  %9588 = fsub fast float %9581, %9587
  %9589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9588)  ; FMax(a,b)
  %9590 = fmul fast float %9097, %9078
  %9591 = call float @dx.op.unary.f32(i32 6, float %9590)  ; FAbs(value)
  %9592 = fcmp fast ogt float %9591, 0x3EB0C6F7A0000000
  br i1 %9592, label %9593, label %9599, !dx.controlflow.hints !174

; <label>:9593                                    ; preds = %9579
  %9594 = fmul fast float %9590, 0xBFF7154760000000
  %9595 = call float @dx.op.unary.f32(i32 21, float %9594)  ; Exp(value)
  %9596 = fsub fast float 1.000000e+00, %9595
  %9597 = fdiv fast float %9596, %9590
  %9598 = fmul fast float %9597, %9107
  br label %9599

; <label>:9599                                    ; preds = %9593, %9579
  %9600 = phi float [ %9598, %9593 ], [ %9107, %9579 ]
  %9601 = fadd fast float %9600, %9109
  %9602 = fmul fast float %9601, %9589
  %9603 = fmul fast float %9094, %9602
  %9604 = fsub fast float -0.000000e+00, %9603
  %9605 = fmul fast float %9095, %9602
  %9606 = fsub fast float -0.000000e+00, %9605
  %9607 = fmul fast float %9096, %9602
  %9608 = fsub fast float -0.000000e+00, %9607
  %9609 = call float @dx.op.unary.f32(i32 21, float %9604)  ; Exp(value)
  %9610 = call float @dx.op.unary.f32(i32 21, float %9606)  ; Exp(value)
  %9611 = call float @dx.op.unary.f32(i32 21, float %9608)  ; Exp(value)
  %9612 = fmul fast float %9123, %9123
  %9613 = fadd fast float %9612, 1.000000e+00
  %9614 = fmul fast float %9613, 0x3FAE8EC8A0000000
  %9615 = fmul fast float %9614, %9104
  %9616 = fmul fast float %9614, %9105
  %9617 = fmul fast float %9614, %9106
  %9618 = fmul fast float %9123, %9102
  %9619 = fsub fast float 1.000000e+00, %9618
  %9620 = fmul fast float %9102, %9102
  %9621 = fsub fast float 1.000000e+00, %9620
  %9622 = fmul fast float %9621, 0x3FB45F3060000000
  %9623 = fmul fast float %9619, %9619
  %9624 = fdiv fast float 1.000000e+00, %9623
  %9625 = fmul fast float %9622, %9624
  %9626 = fmul fast float %9625, %9099
  %9627 = fmul fast float %9625, %9100
  %9628 = fmul fast float %9625, %9101
  %9629 = fadd fast float %9626, %9615
  %9630 = fadd fast float %9627, %9616
  %9631 = fadd fast float %9628, %9617
  %9632 = fsub fast float 1.000000e+00, %9609
  %9633 = fsub fast float 1.000000e+00, %9610
  %9634 = fsub fast float 1.000000e+00, %9611
  %9635 = fmul fast float %9629, %9632
  %9636 = fmul fast float %9630, %9633
  %9637 = fmul fast float %9631, %9634
  br label %9638

; <label>:9638                                    ; preds = %9599, %9550
  %9639 = phi float [ %9576, %9550 ], [ %9635, %9599 ]
  %9640 = phi float [ %9577, %9550 ], [ %9636, %9599 ]
  %9641 = phi float [ %9578, %9550 ], [ %9637, %9599 ]
  %9642 = phi float [ %9565, %9550 ], [ %9609, %9599 ]
  %9643 = phi float [ %9565, %9550 ], [ %9610, %9599 ]
  %9644 = phi float [ %9565, %9550 ], [ %9611, %9599 ]
  br i1 %9131, label %9645, label %9843, !dx.controlflow.hints !175

; <label>:9645                                    ; preds = %9638
  %9646 = extractvalue %dx.types.CBufRet.f32 %9544, 0
  %9647 = fmul fast float %9646, %9546
  %9648 = fsub fast float %9541, %9639
  %9649 = fsub fast float %9542, %9640
  %9650 = fsub fast float %9543, %9641
  %9651 = fmul fast float %9647, %9648
  %9652 = fmul fast float %9647, %9649
  %9653 = fmul fast float %9647, %9650
  %9654 = fadd fast float %9651, %9639
  %9655 = fadd fast float %9652, %9640
  %9656 = fadd fast float %9653, %9641
  %9657 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9642)  ; FMax(a,b)
  %9658 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9643)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9644)  ; FMax(a,b)
  %9660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9540)  ; FMax(a,b)
  %9661 = call float @dx.op.binary.f32(i32 35, float %9539, float %9549)  ; FMax(a,b)
  %9662 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9661)  ; FMax(a,b)
  %9663 = fdiv fast float %9539, %9662
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9665 = fdiv fast float %9549, %9662
  %9666 = call float @dx.op.unary.f32(i32 7, float %9665)  ; Saturate(value)
  %9667 = fcmp fast une float %9660, 1.000000e+00
  br i1 %9667, label %9668, label %9681, !dx.controlflow.hints !176

; <label>:9668                                    ; preds = %9645
  %9669 = call float @dx.op.unary.f32(i32 23, float %9660)  ; Log(value)
  %9670 = fmul fast float %9669, 0x3FE62E4300000000
  %9671 = fmul fast float %9541, %9670
  %9672 = fsub fast float -0.000000e+00, %9671
  %9673 = fmul fast float %9542, %9670
  %9674 = fsub fast float -0.000000e+00, %9673
  %9675 = fmul fast float %9543, %9670
  %9676 = fsub fast float -0.000000e+00, %9675
  %9677 = fsub fast float 1.000000e+00, %9660
  %9678 = fdiv fast float %9672, %9677
  %9679 = fdiv fast float %9674, %9677
  %9680 = fdiv fast float %9676, %9677
  br label %9681

; <label>:9681                                    ; preds = %9668, %9645
  %9682 = phi float [ %9678, %9668 ], [ %9541, %9645 ]
  %9683 = phi float [ %9679, %9668 ], [ %9542, %9645 ]
  %9684 = phi float [ %9680, %9668 ], [ %9543, %9645 ]
  %9685 = phi float [ %9670, %9668 ], [ 0.000000e+00, %9645 ]
  %9686 = fcmp fast une float %9657, 1.000000e+00
  br i1 %9686, label %9687, label %9694, !dx.controlflow.hints !177

; <label>:9687                                    ; preds = %9681
  %9688 = call float @dx.op.unary.f32(i32 23, float %9657)  ; Log(value)
  %9689 = fmul fast float %9688, 0x3FE62E4300000000
  %9690 = fmul fast float %9654, %9689
  %9691 = fsub fast float -0.000000e+00, %9690
  %9692 = fsub fast float 1.000000e+00, %9657
  %9693 = fdiv fast float %9691, %9692
  br label %9694

; <label>:9694                                    ; preds = %9687, %9681
  %9695 = phi float [ %9693, %9687 ], [ %9654, %9681 ]
  %9696 = phi float [ %9689, %9687 ], [ 0.000000e+00, %9681 ]
  %9697 = fcmp fast une float %9658, 1.000000e+00
  br i1 %9697, label %9698, label %9705, !dx.controlflow.hints !177

; <label>:9698                                    ; preds = %9694
  %9699 = call float @dx.op.unary.f32(i32 23, float %9658)  ; Log(value)
  %9700 = fmul fast float %9699, 0x3FE62E4300000000
  %9701 = fmul fast float %9655, %9700
  %9702 = fsub fast float -0.000000e+00, %9701
  %9703 = fsub fast float 1.000000e+00, %9658
  %9704 = fdiv fast float %9702, %9703
  br label %9705

; <label>:9705                                    ; preds = %9698, %9694
  %9706 = phi float [ %9704, %9698 ], [ %9655, %9694 ]
  %9707 = phi float [ %9700, %9698 ], [ 0.000000e+00, %9694 ]
  %9708 = fcmp fast une float %9659, 1.000000e+00
  br i1 %9708, label %9709, label %9716, !dx.controlflow.hints !177

; <label>:9709                                    ; preds = %9705
  %9710 = call float @dx.op.unary.f32(i32 23, float %9659)  ; Log(value)
  %9711 = fmul fast float %9710, 0x3FE62E4300000000
  %9712 = fmul fast float %9656, %9711
  %9713 = fsub fast float -0.000000e+00, %9712
  %9714 = fsub fast float 1.000000e+00, %9659
  %9715 = fdiv fast float %9713, %9714
  br label %9716

; <label>:9716                                    ; preds = %9709, %9705
  %9717 = phi float [ %9715, %9709 ], [ %9656, %9705 ]
  %9718 = phi float [ %9711, %9709 ], [ 0.000000e+00, %9705 ]
  %9719 = fmul fast float %9682, %9666
  %9720 = fmul fast float %9683, %9666
  %9721 = fmul fast float %9684, %9666
  %9722 = fmul fast float %9685, %9666
  %9723 = fmul fast float %9695, %9664
  %9724 = fmul fast float %9706, %9664
  %9725 = fmul fast float %9717, %9664
  %9726 = fmul fast float %9696, %9664
  %9727 = fmul fast float %9707, %9664
  %9728 = fmul fast float %9718, %9664
  %9729 = fadd fast float %9723, %9719
  %9730 = fadd fast float %9724, %9720
  %9731 = fadd fast float %9725, %9721
  %9732 = fadd fast float %9726, %9722
  %9733 = fadd fast float %9727, %9722
  %9734 = fadd fast float %9728, %9722
  %9735 = fcmp fast une float %9732, 0.000000e+00
  br i1 %9735, label %9736, label %9743, !dx.controlflow.hints !178

; <label>:9736                                    ; preds = %9716
  %9737 = fmul fast float %9732, 0x3FF7154760000000
  %9738 = call float @dx.op.unary.f32(i32 21, float %9737)  ; Exp(value)
  %9739 = fsub fast float 1.000000e+00, %9738
  %9740 = fmul fast float %9729, %9739
  %9741 = fsub fast float -0.000000e+00, %9740
  %9742 = fdiv fast float %9741, %9732
  br label %9743

; <label>:9743                                    ; preds = %9736, %9716
  %9744 = phi float [ %9738, %9736 ], [ 1.000000e+00, %9716 ]
  %9745 = phi float [ %9742, %9736 ], [ %9729, %9716 ]
  %9746 = fcmp fast une float %9733, 0.000000e+00
  br i1 %9746, label %9747, label %9754, !dx.controlflow.hints !178

; <label>:9747                                    ; preds = %9743
  %9748 = fmul fast float %9733, 0x3FF7154760000000
  %9749 = call float @dx.op.unary.f32(i32 21, float %9748)  ; Exp(value)
  %9750 = fsub fast float 1.000000e+00, %9749
  %9751 = fmul fast float %9730, %9750
  %9752 = fsub fast float -0.000000e+00, %9751
  %9753 = fdiv fast float %9752, %9733
  br label %9754

; <label>:9754                                    ; preds = %9747, %9743
  %9755 = phi float [ %9749, %9747 ], [ 1.000000e+00, %9743 ]
  %9756 = phi float [ %9753, %9747 ], [ %9730, %9743 ]
  %9757 = fcmp fast une float %9734, 0.000000e+00
  br i1 %9757, label %9758, label %9765, !dx.controlflow.hints !178

; <label>:9758                                    ; preds = %9754
  %9759 = fmul fast float %9734, 0x3FF7154760000000
  %9760 = call float @dx.op.unary.f32(i32 21, float %9759)  ; Exp(value)
  %9761 = fsub fast float 1.000000e+00, %9760
  %9762 = fmul fast float %9731, %9761
  %9763 = fsub fast float -0.000000e+00, %9762
  %9764 = fdiv fast float %9763, %9734
  br label %9765

; <label>:9765                                    ; preds = %9758, %9754
  %9766 = phi float [ %9760, %9758 ], [ 1.000000e+00, %9754 ]
  %9767 = phi float [ %9764, %9758 ], [ %9731, %9754 ]
  %9768 = fcmp fast ogt float %9664, %9666
  br i1 %9768, label %9769, label %9789

; <label>:9769                                    ; preds = %9765
  %9770 = fsub fast float 1.000000e+00, %9666
  %9771 = fmul fast float %9682, %9770
  %9772 = fmul fast float %9683, %9770
  %9773 = fmul fast float %9684, %9770
  %9774 = fmul fast float %9685, %9770
  %9775 = fcmp fast une float %9774, 0.000000e+00
  br i1 %9775, label %9776, label %9827, !dx.controlflow.hints !179

; <label>:9776                                    ; preds = %9769
  %9777 = fmul fast float %9774, 0x3FF7154760000000
  %9778 = call float @dx.op.unary.f32(i32 21, float %9777)  ; Exp(value)
  %9779 = fsub fast float 1.000000e+00, %9778
  %9780 = fmul fast float %9771, %9779
  %9781 = fsub fast float -0.000000e+00, %9780
  %9782 = fmul fast float %9772, %9779
  %9783 = fsub fast float -0.000000e+00, %9782
  %9784 = fmul fast float %9773, %9779
  %9785 = fsub fast float -0.000000e+00, %9784
  %9786 = fdiv fast float %9781, %9774
  %9787 = fdiv fast float %9783, %9774
  %9788 = fdiv fast float %9785, %9774
  br label %9827

; <label>:9789                                    ; preds = %9765
  %9790 = fsub fast float 1.000000e+00, %9664
  %9791 = fmul fast float %9695, %9790
  %9792 = fmul fast float %9706, %9790
  %9793 = fmul fast float %9717, %9790
  %9794 = fmul fast float %9696, %9790
  %9795 = fmul fast float %9707, %9790
  %9796 = fmul fast float %9718, %9790
  %9797 = fcmp fast une float %9794, 0.000000e+00
  br i1 %9797, label %9798, label %9805, !dx.controlflow.hints !178

; <label>:9798                                    ; preds = %9789
  %9799 = fmul fast float %9794, 0x3FF7154760000000
  %9800 = call float @dx.op.unary.f32(i32 21, float %9799)  ; Exp(value)
  %9801 = fsub fast float 1.000000e+00, %9800
  %9802 = fmul fast float %9791, %9801
  %9803 = fsub fast float -0.000000e+00, %9802
  %9804 = fdiv fast float %9803, %9794
  br label %9805

; <label>:9805                                    ; preds = %9798, %9789
  %9806 = phi float [ %9804, %9798 ], [ %9791, %9789 ]
  %9807 = phi float [ %9800, %9798 ], [ 1.000000e+00, %9789 ]
  %9808 = fcmp fast une float %9795, 0.000000e+00
  br i1 %9808, label %9809, label %9816, !dx.controlflow.hints !178

; <label>:9809                                    ; preds = %9805
  %9810 = fmul fast float %9795, 0x3FF7154760000000
  %9811 = call float @dx.op.unary.f32(i32 21, float %9810)  ; Exp(value)
  %9812 = fsub fast float 1.000000e+00, %9811
  %9813 = fmul fast float %9792, %9812
  %9814 = fsub fast float -0.000000e+00, %9813
  %9815 = fdiv fast float %9814, %9795
  br label %9816

; <label>:9816                                    ; preds = %9809, %9805
  %9817 = phi float [ %9815, %9809 ], [ %9792, %9805 ]
  %9818 = phi float [ %9811, %9809 ], [ 1.000000e+00, %9805 ]
  %9819 = fcmp fast une float %9796, 0.000000e+00
  br i1 %9819, label %9820, label %9827, !dx.controlflow.hints !178

; <label>:9820                                    ; preds = %9816
  %9821 = fmul fast float %9796, 0x3FF7154760000000
  %9822 = call float @dx.op.unary.f32(i32 21, float %9821)  ; Exp(value)
  %9823 = fsub fast float 1.000000e+00, %9822
  %9824 = fmul fast float %9793, %9823
  %9825 = fsub fast float -0.000000e+00, %9824
  %9826 = fdiv fast float %9825, %9796
  br label %9827

; <label>:9827                                    ; preds = %9820, %9816, %9776, %9769
  %9828 = phi float [ %9826, %9820 ], [ %9788, %9776 ], [ %9773, %9769 ], [ %9793, %9816 ]
  %9829 = phi float [ %9817, %9820 ], [ %9787, %9776 ], [ %9772, %9769 ], [ %9817, %9816 ]
  %9830 = phi float [ %9806, %9820 ], [ %9786, %9776 ], [ %9771, %9769 ], [ %9806, %9816 ]
  %9831 = phi float [ %9822, %9820 ], [ %9778, %9776 ], [ 1.000000e+00, %9769 ], [ 1.000000e+00, %9816 ]
  %9832 = phi float [ %9818, %9820 ], [ %9778, %9776 ], [ 1.000000e+00, %9769 ], [ %9818, %9816 ]
  %9833 = phi float [ %9807, %9820 ], [ %9778, %9776 ], [ 1.000000e+00, %9769 ], [ %9807, %9816 ]
  %9834 = fmul fast float %9833, %9745
  %9835 = fmul fast float %9832, %9756
  %9836 = fmul fast float %9831, %9767
  %9837 = fadd fast float %9834, %9830
  %9838 = fadd fast float %9835, %9829
  %9839 = fadd fast float %9836, %9828
  %9840 = fmul fast float %9833, %9744
  %9841 = fmul fast float %9832, %9755
  %9842 = fmul fast float %9831, %9766
  br label %9843

; <label>:9843                                    ; preds = %9827, %9638
  %9844 = phi float [ %9842, %9827 ], [ %9644, %9638 ]
  %9845 = phi float [ %9841, %9827 ], [ %9643, %9638 ]
  %9846 = phi float [ %9840, %9827 ], [ %9642, %9638 ]
  %9847 = phi float [ %9839, %9827 ], [ %9641, %9638 ]
  %9848 = phi float [ %9838, %9827 ], [ %9640, %9638 ]
  %9849 = phi float [ %9837, %9827 ], [ %9639, %9638 ]
  %9850 = fmul fast float %9849, %8795
  %9851 = fmul fast float %9848, %8795
  %9852 = fmul fast float %9847, %8795
  %9853 = fmul fast float %9846, %9086
  %9854 = call float @dx.op.dot3.f32(i32 55, float %9846, float %9845, float %9844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9855 = call float @dx.op.dot3.f32(i32 55, float %9850, float %9851, float %9852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9856 = select i1 %260, float %9854, float %9846
  %9857 = select i1 %260, float %9854, float %9845
  %9858 = select i1 %260, float 1.000000e+00, float %9844
  %9859 = select i1 %260, float %9855, float %9850
  %9860 = select i1 %260, float 0.000000e+00, float %9851
  %9861 = select i1 %260, float 0.000000e+00, float %9852
  %9862 = fmul fast float %9856, %9080
  %9863 = fmul fast float %9857, %9081
  %9864 = fmul fast float %9858, %9082
  %9865 = fadd fast float %9862, %9859
  %9866 = fadd fast float %9863, %9860
  %9867 = fadd fast float %9861, %9864
  %9868 = fmul fast float %9856, %9083
  %9869 = fmul fast float %9857, %9084
  %9870 = fmul fast float %9858, %9085
  %9871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.i32 %9871, 0
  %9873 = icmp eq i32 %9872, 0
  br i1 %9873, label %10241, label %9874, !dx.controlflow.hints !180

; <label>:9874                                    ; preds = %9843
  %9875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9875, 2
  %9877 = extractvalue %dx.types.CBufRet.f32 %9875, 3
  %9878 = fmul fast float %9876, %114
  %9879 = fmul fast float %9877, %115
  %9880 = fmul fast float %9878, 2.000000e+00
  %9881 = fmul fast float %9879, 2.000000e+00
  %9882 = fsub fast float 1.000000e+00, %9880
  %9883 = fsub fast float 1.000000e+00, %9881
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 0
  %9886 = extractvalue %dx.types.CBufRet.f32 %9884, 1
  %9887 = extractvalue %dx.types.CBufRet.f32 %9884, 2
  %9888 = fmul fast float %9882, %9885
  %9889 = fmul fast float %9882, %9886
  %9890 = fmul fast float %9882, %9887
  %9891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.f32 %9891, 0
  %9893 = extractvalue %dx.types.CBufRet.f32 %9891, 1
  %9894 = extractvalue %dx.types.CBufRet.f32 %9891, 2
  %9895 = fmul fast float %9883, %9892
  %9896 = fmul fast float %9883, %9893
  %9897 = fmul fast float %9883, %9894
  %9898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9899 = extractvalue %dx.types.CBufRet.f32 %9898, 0
  %9900 = extractvalue %dx.types.CBufRet.f32 %9898, 1
  %9901 = extractvalue %dx.types.CBufRet.f32 %9898, 2
  %9902 = fadd fast float %9895, %9899
  %9903 = fadd fast float %9902, %9888
  %9904 = fadd fast float %9896, %9900
  %9905 = fadd fast float %9904, %9889
  %9906 = fadd fast float %9897, %9901
  %9907 = fadd fast float %9906, %9890
  %9908 = fmul fast float %9903, %9079
  %9909 = fmul fast float %9905, %9079
  %9910 = fmul fast float %9907, %9079
  %9911 = fmul fast float %9908, %9908
  %9912 = fmul fast float %9909, %9909
  %9913 = fadd fast float %9911, %9912
  %9914 = fmul fast float %9910, %9910
  %9915 = fadd fast float %9913, %9914
  %9916 = call float @dx.op.unary.f32(i32 24, float %9915)  ; Sqrt(value)
  %9917 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %9918 = fsub fast float %9916, %9917
  %9919 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %9920 = fmul fast float %9918, %9919
  %9921 = call float @dx.op.unary.f32(i32 7, float %9920)  ; Saturate(value)
  %9922 = fadd fast float %9921, -5.000000e-01
  %9923 = fmul fast float %9922, 2.000000e+00
  %9924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9925 = extractvalue %dx.types.CBufRet.f32 %9924, 2
  %9926 = call float @dx.op.binary.f32(i32 36, float %9925, float %9923)  ; FMin(a,b)
  %9927 = fsub fast float -0.000000e+00, %9925
  %9928 = fcmp fast ogt float %9926, %9927
  br i1 %9928, label %9929, label %10241, !dx.controlflow.hints !181

; <label>:9929                                    ; preds = %9874
  %9930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9931 = extractvalue %dx.types.CBufRet.f32 %9930, 3
  %9932 = fcmp fast ogt float %9931, 0.000000e+00
  br i1 %9932, label %9933, label %10008, !dx.controlflow.hints !182

; <label>:9933                                    ; preds = %9929
  %9934 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9935 = extractvalue %dx.types.Dimensions %9934, 0
  %9936 = sitofp i32 %9935 to float
  %9937 = extractvalue %dx.types.Dimensions %9934, 1
  %9938 = sitofp i32 %9937 to float
  %9939 = fmul fast float %9878, %9936
  %9940 = fmul fast float %9879, %9938
  %9941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9942 = extractvalue %dx.types.CBufRet.f32 %9941, 1
  %9943 = fsub fast float -0.000000e+00, %9942
  %9944 = fptoui float %9943 to i32
  %9945 = fptoui float %9939 to i32
  %9946 = fptoui float %9940 to i32
  %9947 = and i32 %9944, 31
  %9948 = lshr i32 %9945, %9947
  %9949 = lshr i32 %9946, %9947
  %9950 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9944, i32 %9948, i32 %9949, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9951 = extractvalue %dx.types.ResRet.f32 %9950, 0
  %9952 = fcmp fast olt float %9951, -1.000000e+00
  %9953 = fcmp fast ogt float %9951, -1.000000e+00
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 1
  %9956 = select i1 %9953, float %9955, float 1.000000e+00
  %9957 = fadd fast float %9951, 1.000000e+00
  %9958 = fmul fast float %9956, %9957
  %9959 = call float @dx.op.unary.f32(i32 6, float %9958)  ; FAbs(value)
  %9960 = extractvalue %dx.types.CBufRet.f32 %9954, 3
  %9961 = fcmp fast oge float %9959, %9960
  %9962 = select i1 %9961, float 0x4197782600000000, float %9959
  %9963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9964 = extractvalue %dx.types.CBufRet.f32 %9963, 0
  %9965 = extractvalue %dx.types.CBufRet.f32 %9963, 1
  %9966 = extractvalue %dx.types.CBufRet.f32 %9963, 2
  %9967 = select i1 %9952, float %9964, float %9885
  %9968 = select i1 %9952, float %9965, float %9886
  %9969 = select i1 %9952, float %9966, float %9887
  %9970 = fmul fast float %9967, %9882
  %9971 = fmul fast float %9968, %9882
  %9972 = fmul fast float %9969, %9882
  %9973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9974 = extractvalue %dx.types.CBufRet.f32 %9973, 0
  %9975 = extractvalue %dx.types.CBufRet.f32 %9973, 1
  %9976 = extractvalue %dx.types.CBufRet.f32 %9973, 2
  %9977 = select i1 %9952, float %9974, float %9892
  %9978 = select i1 %9952, float %9975, float %9893
  %9979 = select i1 %9952, float %9976, float %9894
  %9980 = fmul fast float %9977, %9883
  %9981 = fmul fast float %9978, %9883
  %9982 = fmul fast float %9979, %9883
  %9983 = fadd fast float %9980, %9970
  %9984 = fadd fast float %9981, %9971
  %9985 = fadd fast float %9982, %9972
  %9986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9987 = extractvalue %dx.types.CBufRet.f32 %9986, 0
  %9988 = extractvalue %dx.types.CBufRet.f32 %9986, 1
  %9989 = extractvalue %dx.types.CBufRet.f32 %9986, 2
  %9990 = select i1 %9952, float %9987, float %9899
  %9991 = select i1 %9952, float %9988, float %9900
  %9992 = select i1 %9952, float %9989, float %9901
  %9993 = fadd fast float %9983, %9990
  %9994 = fadd fast float %9984, %9991
  %9995 = fadd fast float %9985, %9992
  %9996 = fmul fast float %9993, %9962
  %9997 = fmul fast float %9994, %9962
  %9998 = fmul fast float %9995, %9962
  %9999 = fmul fast float %9996, %9996
  %10000 = fmul fast float %9997, %9997
  %10001 = fadd fast float %9999, %10000
  %10002 = fmul fast float %9998, %9998
  %10003 = fadd fast float %10001, %10002
  %10004 = call float @dx.op.unary.f32(i32 24, float %10003)  ; Sqrt(value)
  %10005 = fsub fast float %10004, %9917
  %10006 = fmul fast float %10005, %9919
  %10007 = call float @dx.op.unary.f32(i32 7, float %10006)  ; Saturate(value)
  br label %10008

; <label>:10008                                   ; preds = %9933, %9929
  %10009 = phi float [ %10007, %9933 ], [ 1.000000e+00, %9929 ]
  %10010 = fmul fast float %9926, 5.000000e-01
  %10011 = fadd fast float %10010, 5.000000e-01
  %10012 = call float @dx.op.unary.f32(i32 22, float %10011)  ; Frc(value)
  %10013 = call float @dx.op.unary.f32(i32 27, float %10012)  ; Round_ni(value)
  %10014 = call float @dx.op.unary.f32(i32 22, float %10012)  ; Frc(value)
  %10015 = fmul fast float %10014, 2.000000e+00
  %10016 = fadd fast float %10015, -1.000000e+00
  %10017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9878, float %9879, float %10013, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10018 = extractvalue %dx.types.ResRet.f32 %10017, 0
  %10019 = extractvalue %dx.types.ResRet.f32 %10017, 1
  %10020 = extractvalue %dx.types.ResRet.f32 %10017, 2
  %10021 = extractvalue %dx.types.ResRet.f32 %10017, 3
  %10022 = fadd fast float %10018, -5.000000e-01
  %10023 = fadd fast float %10020, -5.000000e-01
  %10024 = fmul fast float %10022, 0xBFD5555560000000
  %10025 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10023, float %10024)  ; FMad(a,b,c)
  %10026 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10019, float 0.000000e+00)  ; FMad(a,b,c)
  %10027 = fadd fast float %10026, %10021
  %10028 = fmul fast float %10022, -7.500000e-01
  %10029 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10023, float %10028)  ; FMad(a,b,c)
  %10030 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10019, float 0.000000e+00)  ; FMad(a,b,c)
  %10031 = fadd fast float %10030, %10021
  %10032 = call float @dx.op.binary.f32(i32 35, float %10025, float -1.000000e+00)  ; FMax(a,b)
  %10033 = call float @dx.op.binary.f32(i32 35, float %10027, float -1.000000e+00)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 35, float %10029, float -1.000000e+00)  ; FMax(a,b)
  %10035 = call float @dx.op.binary.f32(i32 35, float %10031, float -1.000000e+00)  ; FMax(a,b)
  %10036 = call float @dx.op.binary.f32(i32 36, float %10032, float 1.000000e+00)  ; FMin(a,b)
  %10037 = call float @dx.op.binary.f32(i32 36, float %10033, float 1.000000e+00)  ; FMin(a,b)
  %10038 = call float @dx.op.binary.f32(i32 36, float %10034, float 1.000000e+00)  ; FMin(a,b)
  %10039 = call float @dx.op.binary.f32(i32 36, float %10035, float 1.000000e+00)  ; FMin(a,b)
  %10040 = fcmp fast olt float %10036, 0x3FEFFF8020000000
  br i1 %10040, label %10041, label %10156, !dx.controlflow.hints !183

; <label>:10041                                   ; preds = %10008
  %10042 = extractvalue %dx.types.CBufRet.f32 %9924, 3
  %10043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10044 = extractvalue %dx.types.CBufRet.f32 %10043, 0
  %10045 = extractvalue %dx.types.CBufRet.f32 %10043, 1
  %10046 = extractvalue %dx.types.CBufRet.f32 %10043, 2
  %10047 = extractvalue %dx.types.CBufRet.f32 %10043, 3
  %10048 = fsub fast float %10044, %10036
  %10049 = fsub fast float %10045, %10037
  %10050 = fsub fast float %10046, %10038
  %10051 = fsub fast float %10047, %10039
  %10052 = fmul fast float %10048, %10042
  %10053 = fmul fast float %10049, %10042
  %10054 = fmul fast float %10050, %10042
  %10055 = fmul fast float %10051, %10042
  %10056 = fadd fast float %10052, %10036
  %10057 = fadd fast float %10053, %10037
  %10058 = fsub fast float -0.000000e+00, %10057
  %10059 = fadd fast float %10054, %10038
  %10060 = fadd fast float %10055, %10039
  %10061 = fmul fast float %10056, %10056
  %10062 = fsub fast float %10057, %10061
  %10063 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10062)  ; FMax(a,b)
  %10064 = fdiv fast float 1.000000e+00, %10063
  %10065 = fmul fast float %10057, %10056
  %10066 = fsub fast float %10059, %10065
  %10067 = fsub fast float %10016, %10056
  %10068 = fmul fast float %10016, %10016
  %10069 = fsub fast float %10068, %10057
  %10070 = fmul fast float %10067, %10064
  %10071 = fmul fast float %10070, %10066
  %10072 = fsub fast float %10069, %10071
  %10073 = fmul fast float %10057, %10057
  %10074 = fsub fast float %10060, %10073
  %10075 = fmul fast float %10066, %10066
  %10076 = fmul fast float %10075, %10064
  %10077 = fsub fast float %10074, %10076
  %10078 = fdiv fast float %10072, %10077
  %10079 = fmul fast float %10066, %10078
  %10080 = fsub fast float %10067, %10079
  %10081 = fmul fast float %10080, %10064
  %10082 = fmul fast float %10081, %10056
  %10083 = fsub fast float 1.000000e+00, %10082
  %10084 = fmul fast float %10057, %10078
  %10085 = fsub fast float %10083, %10084
  %10086 = fmul fast float %10081, %10081
  %10087 = fmul fast float %10078, 4.000000e+00
  %10088 = fmul fast float %10087, %10085
  %10089 = fsub fast float %10086, %10088
  %10090 = call float @dx.op.unary.f32(i32 24, float %10089)  ; Sqrt(value)
  %10091 = fcmp fast oge float %10081, 0.000000e+00
  %10092 = fsub fast float -0.000000e+00, %10090
  %10093 = select i1 %10091, float %10092, float %10090
  %10094 = fsub fast float %10093, %10081
  %10095 = fdiv fast float %10094, %10078
  %10096 = fdiv fast float %10085, %10094
  %10097 = fmul fast float %10095, 5.000000e-01
  %10098 = fmul fast float %10096, 2.000000e+00
  %10099 = select i1 %10091, float %10097, float %10098
  %10100 = select i1 %10091, float %10098, float %10097
  %10101 = call float @dx.op.binary.f32(i32 35, float %10099, float %10100)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 36, float %10099, float %10100)  ; FMin(a,b)
  %10103 = fcmp fast ogt float %10016, %10102
  br i1 %10103, label %10104, label %10114

; <label>:10104                                   ; preds = %10041
  %10105 = fsub fast float %10016, %10102
  %10106 = fsub fast float %10101, %10102
  %10107 = fmul fast float %10105, %10106
  %10108 = fmul fast float %10101, %10016
  %10109 = fadd fast float %10101, %10016
  %10110 = fmul fast float %10109, %10056
  %10111 = fadd fast float %10108, %10057
  %10112 = fsub fast float %10111, %10110
  %10113 = fdiv fast float %10112, %10107
  br label %10114

; <label>:10114                                   ; preds = %10104, %10041
  %10115 = phi float [ %10113, %10104 ], [ 0.000000e+00, %10041 ]
  %10116 = fcmp fast ogt float %10016, %10101
  %10117 = fsub fast float %10016, %10101
  br i1 %10116, label %10118, label %10128

; <label>:10118                                   ; preds = %10114
  %10119 = fsub fast float %10101, %10102
  %10120 = fmul fast float %10119, %10117
  %10121 = fmul fast float %10102, %10016
  %10122 = fadd fast float %10102, %10016
  %10123 = fmul fast float %10122, %10056
  %10124 = fsub fast float %10058, %10121
  %10125 = fadd fast float %10124, %10123
  %10126 = fdiv fast float %10125, %10120
  %10127 = fadd fast float %10126, %10115
  br label %10128

; <label>:10128                                   ; preds = %10118, %10114
  %10129 = phi float [ %10127, %10118 ], [ %10115, %10114 ]
  %10130 = fsub fast float %10016, %10102
  %10131 = fmul fast float %10130, %10117
  %10132 = fmul fast float %10102, %10101
  %10133 = fadd fast float %10102, %10101
  %10134 = fmul fast float %10133, %10056
  %10135 = fadd fast float %10132, %10057
  %10136 = fsub fast float %10135, %10134
  %10137 = fdiv fast float %10136, %10131
  %10138 = call float @dx.op.unary.f32(i32 7, float %10129)  ; Saturate(value)
  %10139 = fcmp fast oeq float %8807, 0.000000e+00
  %10140 = extractvalue %dx.types.CBufRet.f32 %9924, 0
  %10141 = fcmp fast oeq float %10140, 0.000000e+00
  %10142 = or i1 %10139, %10141
  %10143 = fmul fast float %10140, 2.000000e+00
  %10144 = fadd fast float %9925, %9926
  %10145 = fdiv fast float %10144, %10143
  %10146 = call float @dx.op.unary.f32(i32 7, float %10145)  ; Saturate(value)
  %10147 = fmul fast float %10146, 2.000000e+00
  %10148 = fsub fast float 3.000000e+00, %10147
  %10149 = fmul fast float %10146, %10146
  %10150 = fmul fast float %10149, %10148
  %10151 = select i1 %10142, float 1.000000e+00, float %10150
  %10152 = fmul fast float %10137, %8807
  %10153 = fadd fast float %10138, %10152
  %10154 = call float @dx.op.unary.f32(i32 7, float %10153)  ; Saturate(value)
  %10155 = fmul fast float %10151, %10154
  br label %10156

; <label>:10156                                   ; preds = %10128, %10008
  %10157 = phi float [ %10155, %10128 ], [ 0.000000e+00, %10008 ]
  %10158 = fsub fast float 1.000000e+00, %10157
  %10159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9878, float %9879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10160 = extractvalue %dx.types.ResRet.f32 %10159, 0
  %10161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10162 = extractvalue %dx.types.CBufRet.i32 %10161, 2
  %10163 = icmp eq i32 %10162, 0
  br i1 %10163, label %10169, label %10164

; <label>:10164                                   ; preds = %10156
  %10165 = call float @dx.op.unary.f32(i32 7, float %10157)  ; Saturate(value)
  %10166 = fadd fast float %10160, -1.000000e+00
  %10167 = fmul fast float %10165, %10166
  %10168 = fadd fast float %10167, 1.000000e+00
  br label %10169

; <label>:10169                                   ; preds = %10164, %10156
  %10170 = phi float [ %10168, %10164 ], [ %10158, %10156 ]
  br i1 %9932, label %10171, label %10189

; <label>:10171                                   ; preds = %10169
  %10172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10173 = extractvalue %dx.types.CBufRet.f32 %10172, 1
  %10174 = fsub fast float %10009, %10173
  %10175 = call float @dx.op.unary.f32(i32 7, float %10174)  ; Saturate(value)
  %10176 = fsub fast float %10009, %9931
  %10177 = call float @dx.op.unary.f32(i32 7, float %10176)  ; Saturate(value)
  %10178 = fsub fast float %10175, %10177
  %10179 = fsub fast float %10011, %10177
  %10180 = fdiv fast float %10179, %10178
  %10181 = call float @dx.op.unary.f32(i32 7, float %10180)  ; Saturate(value)
  %10182 = fmul fast float %10181, 2.000000e+00
  %10183 = fsub fast float 3.000000e+00, %10182
  %10184 = fsub fast float %10160, %10170
  %10185 = fmul fast float %10181, %10181
  %10186 = fmul fast float %10185, %10184
  %10187 = fmul fast float %10186, %10183
  %10188 = fadd fast float %10187, %10170
  br label %10189

; <label>:10189                                   ; preds = %10171, %10169
  %10190 = phi float [ %10188, %10171 ], [ %10170, %10169 ]
  %10191 = call float @dx.op.binary.f32(i32 35, float %10160, float %10190)  ; FMax(a,b)
  %10192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10193 = extractvalue %dx.types.CBufRet.i32 %10192, 2
  %10194 = and i32 %10193, 1
  %10195 = icmp eq i32 %10194, 0
  %10196 = fcmp fast une float %10191, 1.000000e+00
  %10197 = and i1 %10196, %10195
  br i1 %10197, label %10198, label %10217

; <label>:10198                                   ; preds = %10189
  %10199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9878, float %9879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10200 = extractvalue %dx.types.ResRet.f32 %10199, 0
  %10201 = extractvalue %dx.types.ResRet.f32 %10199, 1
  %10202 = extractvalue %dx.types.ResRet.f32 %10199, 2
  %10203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10204 = extractvalue %dx.types.CBufRet.f32 %10203, 1
  %10205 = fmul fast float %10204, %10200
  %10206 = fmul fast float %10204, %10201
  %10207 = fmul fast float %10204, %10202
  %10208 = fcmp fast ogt float %10160, 0x3FEFFF2E40000000
  %10209 = fsub fast float 1.000000e+00, %10191
  %10210 = fsub fast float 1.000000e+00, %10160
  %10211 = fdiv fast float %10209, %10210
  %10212 = call float @dx.op.unary.f32(i32 7, float %10211)  ; Saturate(value)
  %10213 = select i1 %10208, float 0.000000e+00, float %10212
  %10214 = fmul fast float %10205, %10213
  %10215 = fmul fast float %10206, %10213
  %10216 = fmul fast float %10207, %10213
  br label %10217

; <label>:10217                                   ; preds = %10198, %10189
  %10218 = phi float [ 0.000000e+00, %10189 ], [ %10214, %10198 ]
  %10219 = phi float [ 0.000000e+00, %10189 ], [ %10215, %10198 ]
  %10220 = phi float [ 0.000000e+00, %10189 ], [ %10216, %10198 ]
  %10221 = fmul fast float %10218, %8795
  %10222 = fmul fast float %10219, %8795
  %10223 = fmul fast float %10220, %8795
  %10224 = fmul fast float %10191, %9853
  %10225 = call float @dx.op.dot3.f32(i32 55, float %10191, float %10191, float %10191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10226 = call float @dx.op.dot3.f32(i32 55, float %10221, float %10222, float %10223, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10227 = select i1 %260, float %10225, float %10191
  %10228 = select i1 %260, float 1.000000e+00, float %10191
  %10229 = select i1 %260, float %10226, float %10221
  %10230 = select i1 %260, float 0.000000e+00, float %10222
  %10231 = select i1 %260, float 0.000000e+00, float %10223
  %10232 = fmul fast float %10227, %9865
  %10233 = fmul fast float %10227, %9866
  %10234 = fmul fast float %10228, %9867
  %10235 = fadd fast float %10232, %10229
  %10236 = fadd fast float %10233, %10230
  %10237 = fadd fast float %10231, %10234
  %10238 = fmul fast float %10227, %9868
  %10239 = fmul fast float %10227, %9869
  %10240 = fmul fast float %10228, %9870
  br label %10241

; <label>:10241                                   ; preds = %10217, %9874, %9843, %9075
  %10242 = phi float [ %9080, %9075 ], [ %9865, %9843 ], [ %10235, %10217 ], [ %9865, %9874 ]
  %10243 = phi float [ %9081, %9075 ], [ %9866, %9843 ], [ %10236, %10217 ], [ %9866, %9874 ]
  %10244 = phi float [ %9082, %9075 ], [ %9867, %9843 ], [ %10237, %10217 ], [ %9867, %9874 ]
  %10245 = phi float [ %9083, %9075 ], [ %9868, %9843 ], [ %10238, %10217 ], [ %9868, %9874 ]
  %10246 = phi float [ %9084, %9075 ], [ %9869, %9843 ], [ %10239, %10217 ], [ %9869, %9874 ]
  %10247 = phi float [ %9085, %9075 ], [ %9870, %9843 ], [ %10240, %10217 ], [ %9870, %9874 ]
  %10248 = phi float [ %9086, %9075 ], [ %9853, %9843 ], [ %10224, %10217 ], [ %9853, %9874 ]
  %10249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10250 = extractvalue %dx.types.CBufRet.f32 %10249, 2
  %10251 = extractvalue %dx.types.CBufRet.f32 %10249, 3
  %10252 = fmul fast float %10250, %114
  %10253 = fmul fast float %10251, %115
  %10254 = call float @dx.op.unary.f32(i32 7, float %10252)  ; Saturate(value)
  %10255 = call float @dx.op.unary.f32(i32 7, float %10253)  ; Saturate(value)
  %10256 = select i1 %8817, i32 2, i32 0
  %10257 = or i32 %10256, 1
  %10258 = uitofp i32 %10257 to float
  %10259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10254, float %10255, float %10258, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10260 = extractvalue %dx.types.ResRet.f32 %10259, 0
  %10261 = extractvalue %dx.types.ResRet.f32 %10259, 1
  %10262 = extractvalue %dx.types.ResRet.f32 %10259, 2
  %10263 = extractvalue %dx.types.ResRet.f32 %10259, 3
  %10264 = add nuw nsw i32 %10256, 2
  %10265 = uitofp i32 %10264 to float
  %10266 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10254, float %10255, float %10265, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10267 = extractvalue %dx.types.ResRet.f32 %10266, 0
  %10268 = extractvalue %dx.types.ResRet.f32 %10266, 1
  %10269 = extractvalue %dx.types.ResRet.f32 %10266, 2
  %10270 = extractvalue %dx.types.ResRet.f32 %10266, 3
  %10271 = call float @dx.op.binary.f32(i32 35, float %10261, float %10262)  ; FMax(a,b)
  %10272 = call float @dx.op.binary.f32(i32 35, float %10260, float %10271)  ; FMax(a,b)
  %10273 = call float @dx.op.binary.f32(i32 35, float %10272, float %10263)  ; FMax(a,b)
  %10274 = call float @dx.op.binary.f32(i32 36, float %10268, float %10269)  ; FMin(a,b)
  %10275 = call float @dx.op.binary.f32(i32 36, float %10267, float %10274)  ; FMin(a,b)
  %10276 = call float @dx.op.binary.f32(i32 36, float %10275, float %10270)  ; FMin(a,b)
  %10277 = fmul fast float %10273, 2.550000e+02
  %10278 = fadd fast float %10277, 0x3F70101020000000
  %10279 = fptoui float %10278 to i32
  %10280 = fmul fast float %10276, 2.550000e+02
  %10281 = fadd fast float %10280, 0x3F70101020000000
  %10282 = fptoui float %10281 to i32
  %10283 = icmp ult i32 %10279, %10282
  br i1 %10283, label %10284, label %10453

; <label>:10284                                   ; preds = %10241
  %10285 = fcmp fast ogt float %100, 9.843750e-01
  %10286 = fadd fast float %9079, -4.000000e+00
  %10287 = select i1 %10285, float -4.000000e+00, float %10286
  %10288 = call float @dx.op.binary.f32(i32 35, float %10287, float 0.000000e+00)  ; FMax(a,b)
  %10289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10290 = extractvalue %dx.types.CBufRet.f32 %10289, 0
  %10291 = fadd fast float %10290, %10288
  %10292 = extractvalue %dx.types.CBufRet.f32 %10289, 2
  %10293 = fmul fast float %10291, %10292
  %10294 = call float @dx.op.unary.f32(i32 23, float %10293)  ; Log(value)
  %10295 = extractvalue %dx.types.CBufRet.f32 %10289, 3
  %10296 = fmul fast float %10295, %10294
  %10297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10298 = extractvalue %dx.types.CBufRet.f32 %10297, 2
  %10299 = fmul fast float %10296, %10298
  %10300 = call float @dx.op.unary.f32(i32 7, float %10299)  ; Saturate(value)
  %10301 = uitofp i32 %10279 to float
  %10302 = uitofp i32 %10282 to float
  %10303 = fadd fast float %10301, 5.000000e-01
  %10304 = fadd fast float %10302, 5.000000e-01
  %10305 = fmul fast float %10298, %10303
  %10306 = fmul fast float %10298, %10304
  %10307 = fadd fast float %10305, 0x3F0FFB4800000000
  %10308 = fadd fast float %10306, 0xBF0FFB4800000000
  %10309 = call float @dx.op.binary.f32(i32 35, float %10300, float %10307)  ; FMax(a,b)
  %10310 = call float @dx.op.binary.f32(i32 36, float %10309, float %10308)  ; FMin(a,b)
  %10311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10312 = extractvalue %dx.types.CBufRet.f32 %10311, 1
  %10313 = extractvalue %dx.types.CBufRet.f32 %10311, 2
  %10314 = extractvalue %dx.types.CBufRet.f32 %10311, 0
  %10315 = select i1 %8817, float %10314, float 0.000000e+00
  %10316 = fmul fast float %10312, %10310
  %10317 = fadd fast float %10315, %10316
  %10318 = fadd fast float %10315, %10313
  %10319 = fsub fast float %10312, %10313
  %10320 = fadd fast float %10319, %10315
  %10321 = call float @dx.op.binary.f32(i32 35, float %10317, float %10318)  ; FMax(a,b)
  %10322 = call float @dx.op.binary.f32(i32 36, float %10321, float %10320)  ; FMin(a,b)
  %10323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10254, float %10255, float %10322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10324 = extractvalue %dx.types.ResRet.f32 %10323, 0
  %10325 = extractvalue %dx.types.ResRet.f32 %10323, 1
  %10326 = extractvalue %dx.types.ResRet.f32 %10323, 2
  %10327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10328 = extractvalue %dx.types.CBufRet.i32 %10327, 0
  %10329 = extractvalue %dx.types.CBufRet.i32 %10327, 1
  %10330 = uitofp i32 %10328 to float
  %10331 = uitofp i32 %10329 to float
  %10332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10333 = extractvalue %dx.types.CBufRet.f32 %10332, 0
  %10334 = extractvalue %dx.types.CBufRet.f32 %10332, 1
  %10335 = fmul fast float %10330, %10254
  %10336 = fmul fast float %10331, %10255
  %10337 = fadd fast float %10335, -5.000000e-01
  %10338 = fadd fast float %10336, -5.000000e-01
  %10339 = call float @dx.op.unary.f32(i32 22, float %10337)  ; Frc(value)
  %10340 = call float @dx.op.unary.f32(i32 22, float %10338)  ; Frc(value)
  %10341 = fmul fast float %10339, %10339
  %10342 = fmul fast float %10341, %10339
  %10343 = fsub fast float 3.000000e+00, %10339
  %10344 = fmul fast float %10341, %10343
  %10345 = fmul fast float %10339, 3.000000e+00
  %10346 = fmul fast float %10342, 3.000000e+00
  %10347 = fmul fast float %10341, 6.000000e+00
  %10348 = fsub fast float %10346, %10347
  %10349 = fadd fast float %10348, 4.000000e+00
  %10350 = fmul fast float %10349, 0x3FC5555560000000
  %10351 = fmul fast float %10342, -3.000000e+00
  %10352 = fadd fast float %10341, %10339
  %10353 = fmul fast float %10352, 3.000000e+00
  %10354 = fadd fast float %10351, 1.000000e+00
  %10355 = fadd fast float %10354, %10353
  %10356 = fmul fast float %10342, 0x3FC5555560000000
  %10357 = fmul fast float %10340, %10340
  %10358 = fmul fast float %10357, %10340
  %10359 = fsub fast float 3.000000e+00, %10340
  %10360 = fmul fast float %10357, %10359
  %10361 = fmul fast float %10340, 3.000000e+00
  %10362 = fmul fast float %10358, 3.000000e+00
  %10363 = fmul fast float %10357, 6.000000e+00
  %10364 = fsub fast float %10362, %10363
  %10365 = fadd fast float %10364, 4.000000e+00
  %10366 = fmul fast float %10365, 0x3FC5555560000000
  %10367 = fmul fast float %10358, -3.000000e+00
  %10368 = fadd fast float %10357, %10340
  %10369 = fmul fast float %10368, 3.000000e+00
  %10370 = fadd fast float %10367, 1.000000e+00
  %10371 = fadd fast float %10370, %10369
  %10372 = fmul fast float %10358, 0x3FC5555560000000
  %10373 = fadd fast float %10339, 1.000000e+00
  %10374 = fsub fast float 1.000000e+00, %10345
  %10375 = fadd fast float %10374, %10344
  %10376 = fadd fast float %10375, %10349
  %10377 = fmul fast float %10376, 0x3FC5555560000000
  %10378 = fdiv fast float %10350, %10377
  %10379 = fsub fast float %10373, %10378
  %10380 = fsub fast float 1.000000e+00, %10339
  %10381 = fadd fast float %10355, %10342
  %10382 = fmul fast float %10381, 0x3FC5555560000000
  %10383 = fdiv fast float %10356, %10382
  %10384 = fadd fast float %10380, %10383
  %10385 = fadd fast float %10340, 1.000000e+00
  %10386 = fsub fast float 1.000000e+00, %10361
  %10387 = fadd fast float %10386, %10360
  %10388 = fadd fast float %10387, %10365
  %10389 = fmul fast float %10388, 0x3FC5555560000000
  %10390 = fdiv fast float %10366, %10389
  %10391 = fsub fast float %10385, %10390
  %10392 = fsub fast float 1.000000e+00, %10340
  %10393 = fadd fast float %10371, %10358
  %10394 = fmul fast float %10393, 0x3FC5555560000000
  %10395 = fdiv fast float %10372, %10394
  %10396 = fadd fast float %10395, %10392
  %10397 = fmul fast float %10379, %10333
  %10398 = fsub fast float %10254, %10397
  %10399 = fmul fast float %10384, %10333
  %10400 = fadd fast float %10399, %10254
  %10401 = fmul fast float %10396, %10334
  %10402 = fadd fast float %10401, %10255
  %10403 = fmul fast float %10391, %10334
  %10404 = fsub fast float %10255, %10403
  %10405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10398, float %10404, float %10322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10406 = extractvalue %dx.types.ResRet.f32 %10405, 0
  %10407 = extractvalue %dx.types.ResRet.f32 %10405, 1
  %10408 = extractvalue %dx.types.ResRet.f32 %10405, 2
  %10409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10400, float %10404, float %10322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10410 = extractvalue %dx.types.ResRet.f32 %10409, 0
  %10411 = extractvalue %dx.types.ResRet.f32 %10409, 1
  %10412 = extractvalue %dx.types.ResRet.f32 %10409, 2
  %10413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10398, float %10402, float %10322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10414 = extractvalue %dx.types.ResRet.f32 %10413, 0
  %10415 = extractvalue %dx.types.ResRet.f32 %10413, 1
  %10416 = extractvalue %dx.types.ResRet.f32 %10413, 2
  %10417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10400, float %10402, float %10322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10418 = extractvalue %dx.types.ResRet.f32 %10417, 0
  %10419 = extractvalue %dx.types.ResRet.f32 %10417, 1
  %10420 = extractvalue %dx.types.ResRet.f32 %10417, 2
  %10421 = fsub fast float %10414, %10406
  %10422 = fsub fast float %10415, %10407
  %10423 = fsub fast float %10416, %10408
  %10424 = fmul fast float %10421, %10394
  %10425 = fmul fast float %10422, %10394
  %10426 = fmul fast float %10423, %10394
  %10427 = fadd fast float %10424, %10406
  %10428 = fadd fast float %10425, %10407
  %10429 = fadd fast float %10426, %10408
  %10430 = fsub fast float %10418, %10410
  %10431 = fsub fast float %10419, %10411
  %10432 = fsub fast float %10420, %10412
  %10433 = fmul fast float %10430, %10394
  %10434 = fmul fast float %10431, %10394
  %10435 = fmul fast float %10432, %10394
  %10436 = fsub fast float %10410, %10427
  %10437 = fadd fast float %10436, %10433
  %10438 = fsub fast float %10411, %10428
  %10439 = fadd fast float %10438, %10434
  %10440 = fsub fast float %10412, %10429
  %10441 = fadd fast float %10440, %10435
  %10442 = fmul fast float %10437, %10382
  %10443 = fmul fast float %10439, %10382
  %10444 = fmul fast float %10441, %10382
  %10445 = fadd fast float %10442, %10427
  %10446 = fadd fast float %10443, %10428
  %10447 = fadd fast float %10444, %10429
  %10448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10449 = extractvalue %dx.types.CBufRet.f32 %10448, 1
  %10450 = fmul fast float %10445, %10449
  %10451 = fmul fast float %10446, %10449
  %10452 = fmul fast float %10447, %10449
  br label %10453

; <label>:10453                                   ; preds = %10284, %10241
  %10454 = phi float [ %10324, %10284 ], [ 1.000000e+00, %10241 ]
  %10455 = phi float [ %10325, %10284 ], [ 1.000000e+00, %10241 ]
  %10456 = phi float [ %10326, %10284 ], [ 1.000000e+00, %10241 ]
  %10457 = phi float [ %10450, %10284 ], [ 0.000000e+00, %10241 ]
  %10458 = phi float [ %10451, %10284 ], [ 0.000000e+00, %10241 ]
  %10459 = phi float [ %10452, %10284 ], [ 0.000000e+00, %10241 ]
  %10460 = fmul fast float %10457, %8795
  %10461 = fmul fast float %10458, %8795
  %10462 = fmul fast float %10459, %8795
  %10463 = fmul fast float %10454, %10248
  %10464 = call float @dx.op.dot3.f32(i32 55, float %10454, float %10455, float %10456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10465 = call float @dx.op.dot3.f32(i32 55, float %10460, float %10461, float %10462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10466 = select i1 %260, float %10464, float %10454
  %10467 = select i1 %260, float %10464, float %10455
  %10468 = select i1 %260, float 1.000000e+00, float %10456
  %10469 = select i1 %260, float %10465, float %10460
  %10470 = select i1 %260, float 0.000000e+00, float %10461
  %10471 = select i1 %260, float 0.000000e+00, float %10462
  %10472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10473 = extractvalue %dx.types.CBufRet.i32 %10472, 3
  %10474 = and i32 %10473, 3
  %10475 = icmp ne i32 %10474, 0
  %10476 = and i32 %10473, 4
  %10477 = icmp ne i32 %10476, 0
  %10478 = and i1 %10475, %10477
  %10479 = and i1 %260, %10478
  br i1 %10479, label %10480, label %10486

; <label>:10480                                   ; preds = %10453
  %10481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10482 = extractvalue %dx.types.CBufRet.f32 %10481, 1
  %10483 = fadd fast float %10463, -1.000000e+00
  %10484 = fmul fast float %10482, %10483
  %10485 = fadd fast float %10484, 1.000000e+00
  br label %10486

; <label>:10486                                   ; preds = %10480, %10453
  %10487 = phi float [ %10485, %10480 ], [ %10463, %10453 ]
  %10488 = fadd fast float %10245, %10242
  %10489 = fmul fast float %10466, %10488
  %10490 = fadd fast float %10489, %10469
  %10491 = fadd fast float %10246, %10243
  %10492 = fmul fast float %10467, %10491
  %10493 = fadd fast float %10492, %10470
  %10494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10495 = extractvalue %dx.types.CBufRet.f32 %10494, 0
  br i1 %260, label %10496, label %10520

; <label>:10496                                   ; preds = %10486
  %10497 = fadd fast float %10490, %10493
  %10498 = fmul fast float %10495, %10497
  %10499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10500 = extractvalue %dx.types.CBufRet.f32 %10499, 3
  %10501 = extractvalue %dx.types.CBufRet.f32 %8799, 1
  %10502 = fsub fast float %8804, %8798
  %10503 = fadd fast float %10502, %8805
  %10504 = fsub fast float %10503, %10501
  %10505 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %10506 = fmul fast float %10504, %10505
  %10507 = call float @dx.op.unary.f32(i32 7, float %10506)  ; Saturate(value)
  %10508 = fsub fast float %10507, %10500
  %10509 = fmul fast float %10508, %10487
  %10510 = fadd fast float %10509, %10500
  %10511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10512 = extractvalue %dx.types.CBufRet.f32 %10511, 0
  %10513 = fsub fast float %10510, %10512
  %10514 = fmul fast float %10513, 1.000000e+01
  %10515 = call float @dx.op.unary.f32(i32 7, float %10514)  ; Saturate(value)
  %10516 = fsub fast float %4418, %8795
  %10517 = fmul fast float %10515, %10516
  %10518 = fadd fast float %10517, %8795
  %10519 = fmul fast float %10518, %10510
  br label %10544

; <label>:10520                                   ; preds = %10486
  %10521 = fadd fast float %10247, %10244
  %10522 = fmul fast float %10468, %10521
  %10523 = fadd fast float %10522, %10471
  %10524 = fmul fast float %10495, %10490
  %10525 = fmul fast float %10495, %10493
  %10526 = fmul fast float %10495, %10523
  %10527 = call float @dx.op.binary.f32(i32 35, float %10525, float %10526)  ; FMax(a,b)
  %10528 = call float @dx.op.binary.f32(i32 35, float %10524, float %10527)  ; FMax(a,b)
  %10529 = call float @dx.op.binary.f32(i32 35, float %10528, float %8795)  ; FMax(a,b)
  %10530 = fcmp fast ugt float %10529, 0x3F10000000000000
  br i1 %10530, label %10532, label %10531

; <label>:10531                                   ; preds = %10520
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10532

; <label>:10532                                   ; preds = %10531, %10520
  %10533 = add i32 %60, 356
  %10534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10533, i32 undef)  ; BufferLoad(srv,index,wot)
  %10535 = extractvalue %dx.types.ResRet.i32 %10534, 0
  %10536 = and i32 %10535, 32
  %10537 = icmp eq i32 %10536, 0
  br i1 %10537, label %10544, label %10538

; <label>:10538                                   ; preds = %10532
  %10539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10540 = extractvalue %dx.types.CBufRet.f32 %10539, 0
  %10541 = fmul fast float %10540, 0x3FE99999A0000000
  %10542 = fadd fast float %10540, %10524
  %10543 = fadd fast float %10541, %10526
  br label %10544

; <label>:10544                                   ; preds = %10538, %10532, %10496
  %10545 = phi float [ %10498, %10496 ], [ %10542, %10538 ], [ %10524, %10532 ]
  %10546 = phi float [ %10519, %10496 ], [ %10525, %10538 ], [ %10525, %10532 ]
  %10547 = phi float [ %10518, %10496 ], [ %10543, %10538 ], [ %10526, %10532 ]
  %10548 = phi float [ %10518, %10496 ], [ %8795, %10538 ], [ %8795, %10532 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10549 = call float @dx.op.binary.f32(i32 36, float %10545, float 3.225500e+04)  ; FMin(a,b)
  %10550 = call float @dx.op.binary.f32(i32 36, float %10546, float 3.225500e+04)  ; FMin(a,b)
  %10551 = call float @dx.op.binary.f32(i32 36, float %10547, float 3.225500e+04)  ; FMin(a,b)
  %10552 = call float @dx.op.binary.f32(i32 36, float %10548, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

