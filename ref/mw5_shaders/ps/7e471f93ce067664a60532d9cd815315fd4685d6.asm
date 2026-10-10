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
; shader hash: a5553cd1f649a29029130d299329b8a0
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
  br i1 %510, label %1113, label %511

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
  %615 = add i32 %60, 456
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
  %667 = add i32 %60, 440
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
  %691 = add i32 %60, 392
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
  %714 = add i32 %60, 472
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
  br i1 %907, label %1048, label %908

; <label>:908                                     ; preds = %886
  %909 = add i32 %60, 92
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = add i32 %60, 408
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %914, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = add i32 %60, 360
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = extractvalue %dx.types.ResRet.i32 %918, 1
  %921 = extractvalue %dx.types.ResRet.i32 %918, 2
  %922 = extractvalue %dx.types.ResRet.i32 %918, 3
  %923 = bitcast i32 %920 to float
  %924 = bitcast i32 %921 to float
  %925 = bitcast i32 %922 to float
  %926 = add i32 %60, 376
  %927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.i32 %927, 0
  %929 = extractvalue %dx.types.ResRet.i32 %927, 1
  %930 = extractvalue %dx.types.ResRet.i32 %927, 2
  %931 = extractvalue %dx.types.ResRet.i32 %927, 3
  %932 = bitcast i32 %929 to float
  %933 = bitcast i32 %930 to float
  %934 = bitcast i32 %931 to float
  %935 = fmul fast float %923, %610
  %936 = fmul fast float %923, %611
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %939 = fmul fast float %938, %924
  %940 = fmul fast float %938, %925
  %941 = fadd fast float %939, %935
  %942 = fadd fast float %940, %936
  %943 = fmul fast float %932, %610
  %944 = fmul fast float %932, %611
  %945 = fmul fast float %938, %933
  %946 = fmul fast float %938, %934
  %947 = fadd fast float %945, %943
  %948 = fadd fast float %946, %944
  %949 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %916, i32 0)  ; GetDimensions(handle,mipLevel)
  %950 = extractvalue %dx.types.Dimensions %949, 3
  %951 = sitofp i32 %950 to float
  %952 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %916, %dx.types.Handle %110, float %941, float %942, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %953 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %916, %dx.types.Handle %110, float %947, float %948, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %110, float %941, float %942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = extractvalue %dx.types.ResRet.f32 %954, 1
  %957 = extractvalue %dx.types.ResRet.f32 %954, 2
  %958 = extractvalue %dx.types.ResRet.f32 %954, 3
  %959 = and i32 %911, 255
  %960 = uitofp i32 %959 to float
  %961 = lshr i32 %911, 8
  %962 = and i32 %961, 255
  %963 = uitofp i32 %962 to float
  %964 = lshr i32 %911, 16
  %965 = and i32 %964, 255
  %966 = uitofp i32 %965 to float
  %967 = fmul fast float %966, 0x3F70101000000000
  %968 = fmul fast float %955, %960
  %969 = fadd fast float %968, %963
  %970 = fadd fast float %956, -5.000000e-01
  %971 = fadd fast float %958, -5.000000e-01
  %972 = fmul fast float %970, %967
  %973 = fmul fast float %971, %967
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fadd fast float %973, 5.000000e-01
  %976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %916, %dx.types.Handle %110, float %947, float %948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %977 = extractvalue %dx.types.ResRet.f32 %976, 0
  %978 = extractvalue %dx.types.ResRet.f32 %976, 1
  %979 = extractvalue %dx.types.ResRet.f32 %976, 2
  %980 = extractvalue %dx.types.ResRet.f32 %976, 3
  %981 = fmul fast float %977, %960
  %982 = fadd fast float %981, %963
  %983 = fadd fast float %978, -5.000000e-01
  %984 = fadd fast float %980, -5.000000e-01
  %985 = fmul fast float %983, %967
  %986 = fmul fast float %984, %967
  %987 = fadd fast float %985, 5.000000e-01
  %988 = fadd fast float %986, 5.000000e-01
  %989 = fmul fast float %974, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fmul fast float %975, 2.000000e+00
  %992 = fadd fast float %991, -1.000000e+00
  %993 = fadd fast float %990, %992
  %994 = fmul fast float %993, 5.000000e-01
  %995 = fsub fast float %990, %992
  %996 = fmul fast float %995, 5.000000e-01
  %997 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %998 = fsub fast float 1.000000e+00, %997
  %999 = call float @dx.op.unary.f32(i32 6, float %996)  ; FAbs(value)
  %1000 = fsub fast float %998, %999
  %1001 = call float @dx.op.dot3.f32(i32 55, float %994, float %996, float %1000, float %994, float %996, float %1000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1002 = call float @dx.op.unary.f32(i32 25, float %1001)  ; Rsqrt(value)
  %1003 = fmul fast float %987, 2.000000e+00
  %1004 = fadd fast float %1003, -1.000000e+00
  %1005 = fmul fast float %988, 2.000000e+00
  %1006 = fadd fast float %1005, -1.000000e+00
  %1007 = fadd fast float %1004, %1006
  %1008 = fmul fast float %1007, 5.000000e-01
  %1009 = fsub fast float %1004, %1006
  %1010 = fmul fast float %1009, 5.000000e-01
  %1011 = call float @dx.op.unary.f32(i32 6, float %1008)  ; FAbs(value)
  %1012 = fsub fast float 1.000000e+00, %1011
  %1013 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1014 = fsub fast float %1012, %1013
  %1015 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1010, float %1014, float %1008, float %1010, float %1014)  ; Dot3(ax,ay,az,bx,by,bz)
  %1016 = call float @dx.op.unary.f32(i32 25, float %1015)  ; Rsqrt(value)
  %1017 = fadd fast float %951, -1.000000e+00
  %1018 = fsub fast float %1017, %952
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fsub fast float %1017, %953
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1024 = bitcast i32 %919 to float
  %1025 = bitcast i32 %928 to float
  %1026 = fmul fast float %994, %1024
  %1027 = fmul fast float %1026, %1002
  %1028 = fmul fast float %1027, %1020
  %1029 = fmul fast float %996, %1024
  %1030 = fmul fast float %1029, %1002
  %1031 = fmul fast float %1030, %1020
  %1032 = fmul fast float %1016, %1025
  %1033 = fmul fast float %1032, %1008
  %1034 = fmul fast float %1033, %1023
  %1035 = fmul fast float %1032, %1010
  %1036 = fmul fast float %1035, %1023
  %1037 = fadd fast float %1034, %1028
  %1038 = fadd fast float %1036, %1031
  %1039 = fmul fast float %957, %1024
  %1040 = fmul fast float %979, %1025
  %1041 = fadd fast float %1040, %1039
  %1042 = fmul fast float %969, %1024
  %1043 = fmul fast float %982, %1025
  %1044 = fadd fast float %1043, %1042
  %1045 = fmul fast float %1044, 0x3F70101000000000
  %1046 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %514, float %515)  ; Dot2(ax,ay,bx,by)
  %1047 = call float @dx.op.dot2.f32(i32 54, float %1037, float %1038, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  br label %1048

; <label>:1048                                    ; preds = %908, %886
  %1049 = phi float [ %1045, %908 ], [ 0x3FD6666660000000, %886 ]
  %1050 = phi float [ %1046, %908 ], [ 0.000000e+00, %886 ]
  %1051 = phi float [ %1047, %908 ], [ 0.000000e+00, %886 ]
  %1052 = phi float [ %1041, %908 ], [ 1.000000e+00, %886 ]
  %1053 = add i32 %60, 160
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = lshr i32 %1055, 22
  %1057 = shl nuw nsw i32 %1056, 5
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = and i32 %1060, 64
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1096, label %1063

; <label>:1063                                    ; preds = %1048
  %1064 = add i32 %60, 424
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = add i32 %1066, 0
  %1068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 131072
  %1072 = icmp eq i32 %1071, 0
  %1073 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1068, %dx.types.Handle %110, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = fmul fast float %1074, %277
  %1078 = fmul fast float %1075, %280
  %1079 = fmul fast float %1076, %283
  br i1 %1072, label %1086, label %1080

; <label>:1080                                    ; preds = %1063
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 0
  %1083 = fmul fast float %1082, %1077
  %1084 = fmul fast float %1082, %1078
  %1085 = fmul fast float %1082, %1079
  br label %1086

; <label>:1086                                    ; preds = %1080, %1063
  %1087 = phi float [ %1083, %1080 ], [ %1077, %1063 ]
  %1088 = phi float [ %1084, %1080 ], [ %1078, %1063 ]
  %1089 = phi float [ %1085, %1080 ], [ %1079, %1063 ]
  %1090 = fmul fast float %1087, %1058
  %1091 = select i1 %260, float %1090, float %1087
  %1092 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1088, float %1089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1093 = select i1 %260, float 0.000000e+00, float %1087
  %1094 = select i1 %260, float %1092, float %1088
  %1095 = select i1 %260, float 0.000000e+00, float %1089
  br label %1096

; <label>:1096                                    ; preds = %1086, %1048
  %1097 = phi float [ %1093, %1086 ], [ 0.000000e+00, %1048 ]
  %1098 = phi float [ %1094, %1086 ], [ 0.000000e+00, %1048 ]
  %1099 = phi float [ %1095, %1086 ], [ 0.000000e+00, %1048 ]
  %1100 = add i32 %60, 96
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1100, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 255
  %1104 = uitofp i32 %1103 to float
  %1105 = lshr i32 %1102, 8
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = fmul fast float %1107, %1108
  %1110 = fadd fast float %1109, %1104
  %1111 = fmul fast float %1110, 0x3F70101020000000
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  br label %1113

; <label>:1113                                    ; preds = %1096, %496
  %1114 = phi float [ 0.000000e+00, %496 ], [ %1050, %1096 ]
  %1115 = phi float [ 0.000000e+00, %496 ], [ %1051, %1096 ]
  %1116 = phi float [ 0.000000e+00, %496 ], [ %901, %1096 ]
  %1117 = phi float [ 0.000000e+00, %496 ], [ %902, %1096 ]
  %1118 = phi float [ 0.000000e+00, %496 ], [ %903, %1096 ]
  %1119 = phi float [ 0.000000e+00, %496 ], [ %1097, %1096 ]
  %1120 = phi float [ 0.000000e+00, %496 ], [ %1098, %1096 ]
  %1121 = phi float [ 0.000000e+00, %496 ], [ %1099, %1096 ]
  %1122 = phi float [ 0.000000e+00, %496 ], [ %887, %1096 ]
  %1123 = phi float [ 0.000000e+00, %496 ], [ %683, %1096 ]
  %1124 = phi float [ 0.000000e+00, %496 ], [ %1049, %1096 ]
  %1125 = phi float [ 0.000000e+00, %496 ], [ %1052, %1096 ]
  %1126 = phi float [ 0.000000e+00, %496 ], [ %1112, %1096 ]
  br i1 %444, label %1853, label %1127

; <label>:1127                                    ; preds = %1113
  %1128 = icmp ult i32 %502, 2
  %1129 = add i32 %60, 40
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %60, 44
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = or i32 %1134, %1131
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1853, label %1137

; <label>:1137                                    ; preds = %1127
  %1138 = and i32 %1131, 262144
  %1139 = icmp ne i32 %1138, 0
  %1140 = select i1 %1139, float %65, float 1.000000e+00
  %1141 = select i1 %1139, float %66, float 0.000000e+00
  %1142 = select i1 %1139, float %67, float 0.000000e+00
  %1143 = select i1 %1139, float %68, float 1.000000e+00
  %1144 = select i1 %1139, float %69, float %92
  %1145 = select i1 %1139, float %70, float %93
  %1146 = add i32 %60, 300
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 16
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fmul fast float %1150, 0x3F50624DE0000000
  %1152 = add i32 %60, 104
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = lshr i32 %1154, 16
  %1156 = and i32 %1155, 255
  %1157 = lshr i32 %1154, 24
  %1158 = add i32 %60, 308
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 65535
  %1162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1161)  ; LegacyF16ToF32(value)
  %1163 = lshr i32 %1160, 16
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = add i32 %60, 48
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = lshr i32 %1167, 22
  %1169 = shl nuw nsw i32 %1168, 5
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = shl i32 %1167, 4
  %1172 = and i32 %1171, 32752
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = lshr i32 %1167, 7
  %1175 = and i32 %1174, 32752
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1179 = fmul fast float %1178, 1.000000e+03
  %1180 = fmul fast float %354, %1179
  %1181 = call float @dx.op.unary.f32(i32 22, float %1180)  ; Frc(value)
  %1182 = fadd fast float %1181, %344
  %1183 = fmul fast float %355, %1179
  %1184 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1185 = fadd fast float %1184, %346
  %1186 = fmul fast float %1151, %1179
  %1187 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1188 = fmul fast float %1187, 0x401921FB60000000
  %1189 = fadd fast float %1188, %1170
  %1190 = call float @dx.op.unary.f32(i32 13, float %1189)  ; Sin(value)
  %1191 = call float @dx.op.unary.f32(i32 12, float %1189)  ; Cos(value)
  %1192 = fsub fast float -0.000000e+00, %1190
  %1193 = fadd fast float %1144, -5.000000e-01
  %1194 = fadd fast float %1145, -5.000000e-01
  %1195 = fmul fast float %1162, %1193
  %1196 = fmul fast float %1164, %1194
  %1197 = fadd fast float %1195, 5.000000e-01
  %1198 = fadd fast float %1196, 5.000000e-01
  %1199 = fmul fast float %1173, %1197
  %1200 = fmul fast float %1176, %1198
  %1201 = fmul fast float %1191, %1199
  %1202 = call float @dx.op.tertiary.f32(i32 46, float %1192, float %1200, float %1201)  ; FMad(a,b,c)
  %1203 = fmul fast float %1190, %1199
  %1204 = call float @dx.op.tertiary.f32(i32 46, float %1191, float %1200, float %1203)  ; FMad(a,b,c)
  %1205 = fadd fast float %1182, %1202
  %1206 = fadd fast float %1185, %1204
  %1207 = icmp ugt i32 %1156, 1
  %1208 = icmp ugt i32 %1154, 33554431
  %1209 = or i1 %1208, %1207
  br i1 %1209, label %1210, label %1235

; <label>:1210                                    ; preds = %1137
  %1211 = add i32 %60, 244
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = lshr i32 %1213, 16
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = fmul fast float %1178, %1215
  %1217 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1218 = mul nuw nsw i32 %1156, %1157
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1217, %1219
  %1221 = call float @dx.op.unary.f32(i32 27, float %1220)  ; Round_ni(value)
  %1222 = fptoui float %1221 to i32
  %1223 = urem i32 %1222, %1156
  %1224 = udiv i32 %1222, %1157
  %1225 = call float @dx.op.unary.f32(i32 22, float %1205)  ; Frc(value)
  %1226 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1227 = uitofp i32 %1223 to float
  %1228 = uitofp i32 %1224 to float
  %1229 = fadd fast float %1225, %1227
  %1230 = fadd fast float %1226, %1228
  %1231 = uitofp i32 %1156 to float
  %1232 = uitofp i32 %1157 to float
  %1233 = fdiv fast float %1229, %1231
  %1234 = fdiv fast float %1230, %1232
  br label %1235

; <label>:1235                                    ; preds = %1210, %1137
  %1236 = phi float [ %1233, %1210 ], [ %1205, %1137 ]
  %1237 = phi float [ %1234, %1210 ], [ %1206, %1137 ]
  %1238 = and i32 %1131, 256
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1286, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = add i32 %60, 460
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %1243, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1245, %dx.types.Handle %111, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = add i32 %60, 116
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = shl i32 %1250, 4
  %1252 = and i32 %1251, 32752
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1250, 7
  %1255 = and i32 %1254, 32752
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = fsub fast float 1.000000e+00, %499
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1259 = bitcast float %499 to i32
  %1260 = sitofp i32 %1259 to float
  %1261 = fadd fast float %1260, 0xC1CFBF8940000000
  %1262 = fmul fast float %1256, %1261
  %1263 = fadd fast float %1262, 0x41CFBF8940000000
  %1264 = fptosi float %1263 to i32
  %1265 = bitcast i32 %1264 to float
  %1266 = bitcast float %1258 to i32
  %1267 = sitofp i32 %1266 to float
  %1268 = fadd fast float %1267, 0xC1CFBF8940000000
  %1269 = fmul fast float %1268, %1256
  %1270 = fadd fast float %1269, 0x41CFBF8940000000
  %1271 = fptosi float %1270 to i32
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1265, %1253
  %1274 = fmul fast float %1272, %1253
  %1275 = fsub fast float %1258, %1273
  %1276 = fadd fast float %1274, %1258
  %1277 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1278 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1279 = fsub fast float %1247, %1277
  %1280 = fsub fast float %1278, %1277
  %1281 = bitcast float %1280 to i32
  %1282 = sub nsw i32 2129859010, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1283, %1279
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  br label %1286

; <label>:1286                                    ; preds = %1240, %1235
  %1287 = phi float [ %1285, %1240 ], [ %499, %1235 ]
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 128
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %1308, label %1292

; <label>:1292                                    ; preds = %1286
  %1293 = add i32 %60, 444
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = add i32 %1295, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1297, %dx.types.Handle %111, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = and i32 %1301, 524288
  %1303 = icmp ne i32 %1302, 0
  %1304 = fcmp fast ogt float %1299, 0x3FE0101020000000
  %1305 = select i1 %1304, float 1.000000e+00, float 0.000000e+00
  %1306 = select i1 %1303, float %1305, float %1299
  %1307 = fmul fast float %1306, %1287
  br label %1308

; <label>:1308                                    ; preds = %1292, %1286
  %1309 = phi float [ %1307, %1292 ], [ %1287, %1286 ]
  %1310 = fcmp fast ult float %1309, 0x3F70101020000000
  br i1 %1310, label %1853, label %1311

; <label>:1311                                    ; preds = %1308
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %1313, 16
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1514, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = add i32 %60, 396
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = add i32 %1321, 0
  %1323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1323, %dx.types.Handle %110, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1325 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 2
  %1328 = extractvalue %dx.types.ResRet.f32 %1324, 3
  %1329 = and i32 %1318, 255
  %1330 = uitofp i32 %1329 to float
  %1331 = lshr i32 %1318, 8
  %1332 = and i32 %1331, 255
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1328, %1330
  %1335 = fadd fast float %1334, %1333
  %1336 = fmul fast float %1335, 0x3F70101000000000
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 512
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1349, label %1341

; <label>:1341                                    ; preds = %1316
  %1342 = add i32 %60, 476
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %111, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  br label %1349

; <label>:1349                                    ; preds = %1341, %1316
  %1350 = phi float [ %1348, %1341 ], [ 1.000000e+00, %1316 ]
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 33554432
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1461, label %1355

; <label>:1355                                    ; preds = %1349
  %1356 = add i32 %60, 240
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1358, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = add i32 %60, 244
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = and i32 %1365, 65535
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = lshr i32 %1369, 24
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1371, 0x3F70101020000000
  %1373 = and i32 %1369, 255
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1374, 0x3F70101020000000
  %1376 = lshr i32 %1369, 8
  %1377 = and i32 %1376, 255
  %1378 = uitofp i32 %1377 to float
  %1379 = fmul fast float %1378, 0x3F70101020000000
  %1380 = lshr i32 %1369, 16
  %1381 = and i32 %1380, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = add i32 %60, 236
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = lshr i32 %1386, 24
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = and i32 %1386, 255
  %1391 = uitofp i32 %1390 to float
  %1392 = fmul fast float %1391, 0x3F70101020000000
  %1393 = lshr i32 %1386, 8
  %1394 = and i32 %1393, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = lshr i32 %1386, 16
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = bitcast float %1325 to i32
  %1402 = ashr i32 %1401, 1
  %1403 = sub nsw i32 1597463174, %1402
  %1404 = bitcast i32 %1403 to float
  %1405 = fmul fast float %1325, 5.000000e-01
  %1406 = fmul fast float %1404, %1404
  %1407 = fmul fast float %1406, %1405
  %1408 = fsub fast float 1.500000e+00, %1407
  %1409 = fmul fast float %1404, %1325
  %1410 = fmul fast float %1409, %1408
  %1411 = bitcast float %1326 to i32
  %1412 = ashr i32 %1411, 1
  %1413 = sub nsw i32 1597463174, %1412
  %1414 = bitcast i32 %1413 to float
  %1415 = fmul fast float %1326, 5.000000e-01
  %1416 = fmul fast float %1414, %1414
  %1417 = fmul fast float %1416, %1415
  %1418 = fsub fast float 1.500000e+00, %1417
  %1419 = fmul fast float %1414, %1326
  %1420 = fmul fast float %1419, %1418
  %1421 = bitcast float %1327 to i32
  %1422 = ashr i32 %1421, 1
  %1423 = sub nsw i32 1597463174, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1327, 5.000000e-01
  %1426 = fmul fast float %1424, %1424
  %1427 = fmul fast float %1426, %1425
  %1428 = fsub fast float 1.500000e+00, %1427
  %1429 = fmul fast float %1424, %1327
  %1430 = fmul fast float %1429, %1428
  %1431 = fsub fast float %1410, %1392
  %1432 = fsub fast float %1420, %1396
  %1433 = fsub fast float %1430, %1400
  %1434 = fmul fast float %1431, %1360
  %1435 = fmul fast float %1432, %1362
  %1436 = fmul fast float %1433, %1367
  %1437 = fadd fast float %1434, %1375
  %1438 = fadd fast float %1435, %1379
  %1439 = fadd fast float %1436, %1383
  %1440 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1441 = call float @dx.op.unary.f32(i32 7, float %1438)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1443 = fmul fast float %1440, %1440
  %1444 = fmul fast float %1441, %1441
  %1445 = fmul fast float %1442, %1442
  %1446 = fsub fast float %1443, %1325
  %1447 = fsub fast float %1444, %1326
  %1448 = fsub fast float %1445, %1327
  %1449 = fmul fast float %1446, %1350
  %1450 = fmul fast float %1447, %1350
  %1451 = fmul fast float %1448, %1350
  %1452 = fadd fast float %1449, %1325
  %1453 = fadd fast float %1450, %1326
  %1454 = fadd fast float %1451, %1327
  %1455 = fadd fast float %1372, %1336
  %1456 = fsub fast float %1455, %1389
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fsub fast float %1457, %1336
  %1459 = fmul fast float %1458, %1350
  %1460 = fadd fast float %1459, %1336
  br label %1514

; <label>:1461                                    ; preds = %1349
  %1462 = and i32 %1352, 134217728
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1498, label %1464

; <label>:1464                                    ; preds = %1461
  %1465 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1466 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1467 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1468 = fadd fast float %1465, -5.000000e-01
  %1469 = fadd fast float %1466, -5.000000e-01
  %1470 = fadd fast float %1467, -5.000000e-01
  %1471 = fmul fast float %1468, %1350
  %1472 = fmul fast float %1469, %1350
  %1473 = fmul fast float %1470, %1350
  %1474 = fadd fast float %1471, 5.000000e-01
  %1475 = fadd fast float %1472, 5.000000e-01
  %1476 = fadd fast float %1473, 5.000000e-01
  %1477 = call float @dx.op.unary.f32(i32 24, float %1325)  ; Sqrt(value)
  %1478 = call float @dx.op.unary.f32(i32 24, float %1326)  ; Sqrt(value)
  %1479 = call float @dx.op.unary.f32(i32 24, float %1327)  ; Sqrt(value)
  %1480 = fmul fast float %1474, 2.000000e+00
  %1481 = fsub fast float 1.000000e+00, %1480
  %1482 = fmul fast float %1481, %1477
  %1483 = fadd fast float %1482, %1480
  %1484 = fmul fast float %1483, %1477
  %1485 = fmul fast float %1475, 2.000000e+00
  %1486 = fsub fast float 1.000000e+00, %1485
  %1487 = fmul fast float %1486, %1478
  %1488 = fadd fast float %1487, %1485
  %1489 = fmul fast float %1488, %1478
  %1490 = fmul fast float %1476, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1490
  %1492 = fmul fast float %1491, %1479
  %1493 = fadd fast float %1492, %1490
  %1494 = fmul fast float %1493, %1479
  %1495 = fmul fast float %1484, %1484
  %1496 = fmul fast float %1489, %1489
  %1497 = fmul fast float %1494, %1494
  br label %1514

; <label>:1498                                    ; preds = %1461
  %1499 = fmul fast float %331, %331
  %1500 = fmul fast float %335, %335
  %1501 = fmul fast float %339, %339
  %1502 = fadd fast float %1499, -1.000000e+00
  %1503 = fadd fast float %1500, -1.000000e+00
  %1504 = fadd fast float %1501, -1.000000e+00
  %1505 = fmul fast float %1350, %1502
  %1506 = fmul fast float %1350, %1503
  %1507 = fmul fast float %1350, %1504
  %1508 = fadd fast float %1505, 1.000000e+00
  %1509 = fadd fast float %1506, 1.000000e+00
  %1510 = fadd fast float %1507, 1.000000e+00
  %1511 = fmul fast float %1508, %1325
  %1512 = fmul fast float %1509, %1326
  %1513 = fmul fast float %1510, %1327
  br label %1514

; <label>:1514                                    ; preds = %1498, %1464, %1355, %1311
  %1515 = phi float [ %1460, %1355 ], [ %1336, %1464 ], [ %1336, %1498 ], [ 0x3FA23C0BE0000000, %1311 ]
  %1516 = phi float [ %1452, %1355 ], [ %1495, %1464 ], [ %1511, %1498 ], [ 1.000000e+00, %1311 ]
  %1517 = phi float [ %1453, %1355 ], [ %1496, %1464 ], [ %1512, %1498 ], [ 1.000000e+00, %1311 ]
  %1518 = phi float [ %1454, %1355 ], [ %1497, %1464 ], [ %1513, %1498 ], [ 1.000000e+00, %1311 ]
  %1519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.i32 %1519, 1
  %1521 = and i32 %1520, 1
  %1522 = icmp ne i32 %1521, 0
  %1523 = add i32 %60, 356
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1523, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 32
  %1527 = icmp ne i32 %1526, 0
  %1528 = and i1 %1522, %1527
  %1529 = select i1 %1528, float 1.000000e+00, float %1516
  %1530 = select i1 %1528, float 0x3FD3333340000000, float %1517
  %1531 = select i1 %1528, float 0x3FD3333340000000, float %1518
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 32
  %1535 = icmp eq i32 %1534, 0
  br i1 %1535, label %1608, label %1536

; <label>:1536                                    ; preds = %1514
  %1537 = add i32 %60, 108
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = add i32 %60, 412
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = add i32 %1542, 0
  %1544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1544, %dx.types.Handle %110, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.ResRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.ResRet.f32 %1545, 2
  %1549 = extractvalue %dx.types.ResRet.f32 %1545, 3
  %1550 = and i32 %1539, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = lshr i32 %1539, 8
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = lshr i32 %1539, 16
  %1556 = and i32 %1555, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = fmul fast float %1557, 0x3F70101000000000
  %1559 = fmul fast float %1546, %1551
  %1560 = fadd fast float %1559, %1554
  %1561 = fmul fast float %1560, 0x3F70101000000000
  %1562 = fadd fast float %1547, -5.000000e-01
  %1563 = fadd fast float %1549, -5.000000e-01
  %1564 = fmul fast float %1562, %1558
  %1565 = fmul fast float %1563, %1558
  %1566 = fadd fast float %1564, 5.000000e-01
  %1567 = fadd fast float %1565, 5.000000e-01
  %1568 = fmul fast float %1566, 2.000000e+00
  %1569 = fadd fast float %1568, -1.000000e+00
  %1570 = fmul fast float %1567, 2.000000e+00
  %1571 = fadd fast float %1570, -1.000000e+00
  %1572 = fadd fast float %1569, %1571
  %1573 = fmul fast float %1572, 5.000000e-01
  %1574 = fsub fast float %1569, %1571
  %1575 = fmul fast float %1574, 5.000000e-01
  %1576 = call float @dx.op.unary.f32(i32 6, float %1573)  ; FAbs(value)
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = call float @dx.op.unary.f32(i32 6, float %1575)  ; FAbs(value)
  %1579 = fsub fast float %1577, %1578
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1575, float %1579, float %1573, float %1575, float %1579)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = call float @dx.op.unary.f32(i32 25, float %1580)  ; Rsqrt(value)
  %1582 = fmul fast float %1573, %1581
  %1583 = fmul fast float %1575, %1581
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 67108864
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1604, label %1588

; <label>:1588                                    ; preds = %1536
  %1589 = add i32 %60, 296
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 65535
  %1593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1592)  ; LegacyF16ToF32(value)
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1591, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = fsub fast float %1561, %1599
  %1601 = fmul fast float %1600, %1593
  %1602 = fadd fast float %1601, %1597
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  br label %1604

; <label>:1604                                    ; preds = %1588, %1536
  %1605 = phi float [ %1603, %1588 ], [ %1561, %1536 ]
  %1606 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1140, float %1141)  ; Dot2(ax,ay,bx,by)
  %1607 = call float @dx.op.dot2.f32(i32 54, float %1582, float %1583, float %1142, float %1143)  ; Dot2(ax,ay,bx,by)
  br label %1608

; <label>:1608                                    ; preds = %1604, %1514
  %1609 = phi float [ %1605, %1604 ], [ 0x3FD6666660000000, %1514 ]
  %1610 = phi float [ %1606, %1604 ], [ 0.000000e+00, %1514 ]
  %1611 = phi float [ %1607, %1604 ], [ 0.000000e+00, %1514 ]
  %1612 = phi float [ %1548, %1604 ], [ 1.000000e+00, %1514 ]
  %1613 = add i32 %60, 176
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 22
  %1617 = shl nuw nsw i32 %1616, 5
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 64
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1656, label %1623

; <label>:1623                                    ; preds = %1608
  %1624 = add i32 %60, 428
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = add i32 %1626, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 131072
  %1632 = icmp eq i32 %1631, 0
  %1633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1628, %dx.types.Handle %110, float %1236, float %1237, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = extractvalue %dx.types.ResRet.f32 %1633, 1
  %1636 = extractvalue %dx.types.ResRet.f32 %1633, 2
  %1637 = fmul fast float %1634, %319
  %1638 = fmul fast float %1635, %322
  %1639 = fmul fast float %1636, %325
  br i1 %1632, label %1646, label %1640

; <label>:1640                                    ; preds = %1623
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = fmul fast float %1642, %1637
  %1644 = fmul fast float %1642, %1638
  %1645 = fmul fast float %1642, %1639
  br label %1646

; <label>:1646                                    ; preds = %1640, %1623
  %1647 = phi float [ %1643, %1640 ], [ %1637, %1623 ]
  %1648 = phi float [ %1644, %1640 ], [ %1638, %1623 ]
  %1649 = phi float [ %1645, %1640 ], [ %1639, %1623 ]
  %1650 = fmul fast float %1647, %1618
  %1651 = select i1 %260, float %1650, float %1647
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1648, float %1649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = select i1 %260, float 0.000000e+00, float %1647
  %1654 = select i1 %260, float %1652, float %1648
  %1655 = select i1 %260, float 0.000000e+00, float %1649
  br label %1656

; <label>:1656                                    ; preds = %1646, %1608
  %1657 = phi float [ %1653, %1646 ], [ 0.000000e+00, %1608 ]
  %1658 = phi float [ %1654, %1646 ], [ 0.000000e+00, %1608 ]
  %1659 = phi float [ %1655, %1646 ], [ 0.000000e+00, %1608 ]
  %1660 = add i32 %60, 112
  %1661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1660, i32 undef)  ; BufferLoad(srv,index,wot)
  %1662 = extractvalue %dx.types.ResRet.i32 %1661, 0
  %1663 = and i32 %1662, 255
  %1664 = uitofp i32 %1663 to float
  %1665 = lshr i32 %1662, 8
  %1666 = and i32 %1665, 255
  %1667 = uitofp i32 %1666 to float
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1529, float %1530, float %1531, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = fmul fast float %1667, %1668
  %1670 = fadd fast float %1669, %1664
  %1671 = fmul fast float %1670, 0x3F70101020000000
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  br i1 %1128, label %1673, label %1681

; <label>:1673                                    ; preds = %1656
  %1674 = fsub fast float 1.000000e+00, %1309
  %1675 = fmul fast float %1674, %1116
  %1676 = fmul fast float %1674, %1117
  %1677 = fmul fast float %1674, %1118
  %1678 = fmul fast float %1674, %1119
  %1679 = fmul fast float %1674, %1120
  %1680 = fmul fast float %1674, %1121
  br label %1681

; <label>:1681                                    ; preds = %1673, %1656
  %1682 = phi float [ %1675, %1673 ], [ %1116, %1656 ]
  %1683 = phi float [ %1676, %1673 ], [ %1117, %1656 ]
  %1684 = phi float [ %1677, %1673 ], [ %1118, %1656 ]
  %1685 = phi float [ %1678, %1673 ], [ %1119, %1656 ]
  %1686 = phi float [ %1679, %1673 ], [ %1120, %1656 ]
  %1687 = phi float [ %1680, %1673 ], [ %1121, %1656 ]
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 3
  %1691 = icmp eq i32 %1690, 3
  br i1 %1691, label %1770, label %1692

; <label>:1692                                    ; preds = %1681
  %1693 = and i32 %1689, 16
  %1694 = icmp ne i32 %1693, 0
  %1695 = select i1 %1694, float %1309, float 0.000000e+00
  %1696 = icmp eq i32 %1690, 0
  br i1 %1696, label %1697, label %1725

; <label>:1697                                    ; preds = %1692
  %1698 = and i32 %1689, 64
  %1699 = icmp ne i32 %1698, 0
  %1700 = select i1 %1699, float %1309, float 0.000000e+00
  %1701 = fsub fast float %1529, %1682
  %1702 = fsub fast float %1530, %1683
  %1703 = fsub fast float %1531, %1684
  %1704 = fmul fast float %1695, %1701
  %1705 = fmul fast float %1695, %1702
  %1706 = fmul fast float %1695, %1703
  %1707 = fadd fast float %1704, %1682
  %1708 = fadd fast float %1705, %1683
  %1709 = fadd fast float %1706, %1684
  %1710 = fsub fast float %1515, %1122
  %1711 = fmul fast float %1695, %1710
  %1712 = fadd fast float %1711, %1122
  %1713 = fsub fast float %1657, %1685
  %1714 = fsub fast float %1658, %1686
  %1715 = fsub fast float %1659, %1687
  %1716 = fmul fast float %1700, %1713
  %1717 = fmul fast float %1700, %1714
  %1718 = fmul fast float %1700, %1715
  %1719 = fadd fast float %1716, %1685
  %1720 = fadd fast float %1717, %1686
  %1721 = fadd fast float %1718, %1687
  %1722 = fsub fast float %1672, %1126
  %1723 = fmul fast float %1695, %1722
  %1724 = fadd fast float %1723, %1126
  br label %1770

; <label>:1725                                    ; preds = %1692
  %1726 = icmp eq i32 %1690, 1
  br i1 %1726, label %1727, label %1740

; <label>:1727                                    ; preds = %1725
  %1728 = fadd fast float %1529, -1.000000e+00
  %1729 = fadd fast float %1530, -1.000000e+00
  %1730 = fadd fast float %1531, -1.000000e+00
  %1731 = fmul fast float %1695, %1728
  %1732 = fmul fast float %1695, %1729
  %1733 = fmul fast float %1695, %1730
  %1734 = fadd fast float %1731, 1.000000e+00
  %1735 = fadd fast float %1732, 1.000000e+00
  %1736 = fadd fast float %1733, 1.000000e+00
  %1737 = fmul fast float %1734, %1682
  %1738 = fmul fast float %1735, %1683
  %1739 = fmul fast float %1736, %1684
  br label %1770

; <label>:1740                                    ; preds = %1725
  %1741 = icmp eq i32 %1690, 2
  br i1 %1741, label %1742, label %1770

; <label>:1742                                    ; preds = %1740
  %1743 = call float @dx.op.unary.f32(i32 24, float %1529)  ; Sqrt(value)
  %1744 = call float @dx.op.unary.f32(i32 24, float %1530)  ; Sqrt(value)
  %1745 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1746 = fadd fast float %1743, -5.000000e-01
  %1747 = fadd fast float %1744, -5.000000e-01
  %1748 = fadd fast float %1745, -5.000000e-01
  %1749 = fmul fast float %1746, %1695
  %1750 = fmul fast float %1747, %1695
  %1751 = fmul fast float %1748, %1695
  %1752 = fadd fast float %1749, 5.000000e-01
  %1753 = fadd fast float %1750, 5.000000e-01
  %1754 = fadd fast float %1751, 5.000000e-01
  %1755 = fmul fast float %1752, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1682
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1682
  %1760 = fmul fast float %1753, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1683
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1683
  %1765 = fmul fast float %1754, 2.000000e+00
  %1766 = fsub fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1766, %1684
  %1768 = fadd fast float %1767, %1765
  %1769 = fmul fast float %1768, %1684
  br label %1770

; <label>:1770                                    ; preds = %1742, %1740, %1727, %1697, %1681
  %1771 = phi float [ %1682, %1681 ], [ %1759, %1742 ], [ %1682, %1740 ], [ %1737, %1727 ], [ %1707, %1697 ]
  %1772 = phi float [ %1683, %1681 ], [ %1764, %1742 ], [ %1683, %1740 ], [ %1738, %1727 ], [ %1708, %1697 ]
  %1773 = phi float [ %1684, %1681 ], [ %1769, %1742 ], [ %1684, %1740 ], [ %1739, %1727 ], [ %1709, %1697 ]
  %1774 = phi float [ %1685, %1681 ], [ %1685, %1742 ], [ %1685, %1740 ], [ %1685, %1727 ], [ %1719, %1697 ]
  %1775 = phi float [ %1686, %1681 ], [ %1686, %1742 ], [ %1686, %1740 ], [ %1686, %1727 ], [ %1720, %1697 ]
  %1776 = phi float [ %1687, %1681 ], [ %1687, %1742 ], [ %1687, %1740 ], [ %1687, %1727 ], [ %1721, %1697 ]
  %1777 = phi float [ %1122, %1681 ], [ %1122, %1742 ], [ %1122, %1740 ], [ %1122, %1727 ], [ %1712, %1697 ]
  %1778 = phi float [ %1126, %1681 ], [ %1126, %1742 ], [ %1126, %1740 ], [ %1126, %1727 ], [ %1724, %1697 ]
  %1779 = and i32 %1689, 12
  %1780 = icmp eq i32 %1779, 12
  br i1 %1780, label %1853, label %1781

; <label>:1781                                    ; preds = %1770
  %1782 = and i32 %1689, 2097184
  %1783 = icmp eq i32 %1782, 2097184
  %1784 = select i1 %1783, float %1309, float 0.000000e+00
  %1785 = and i32 %1689, 4194336
  %1786 = icmp eq i32 %1785, 4194336
  %1787 = select i1 %1786, float %1309, float 0.000000e+00
  %1788 = and i32 %1689, 8388640
  %1789 = icmp eq i32 %1788, 8388640
  %1790 = select i1 %1789, float %1309, float 0.000000e+00
  %1791 = icmp eq i32 %1779, 0
  br i1 %1791, label %1792, label %1805

; <label>:1792                                    ; preds = %1781
  %1793 = fsub fast float %1610, %1114
  %1794 = fsub fast float %1611, %1115
  %1795 = fmul fast float %1784, %1793
  %1796 = fmul fast float %1784, %1794
  %1797 = fadd fast float %1795, %1114
  %1798 = fadd fast float %1796, %1115
  %1799 = fsub fast float %1612, %1125
  %1800 = fmul fast float %1787, %1799
  %1801 = fadd fast float %1800, %1125
  %1802 = fsub fast float %1609, %1124
  %1803 = fmul fast float %1790, %1802
  %1804 = fadd fast float %1803, %1124
  br label %1853

; <label>:1805                                    ; preds = %1781
  %1806 = icmp eq i32 %1779, 4
  br i1 %1806, label %1807, label %1839

; <label>:1807                                    ; preds = %1805
  %1808 = fmul fast float %1784, %1610
  %1809 = fmul fast float %1784, %1611
  %1810 = fadd fast float %1808, %1114
  %1811 = fadd fast float %1809, %1115
  %1812 = call float @dx.op.binary.f32(i32 36, float %1125, float %1612)  ; FMin(a,b)
  %1813 = fsub fast float %1812, %1125
  %1814 = fmul fast float %1813, %1787
  %1815 = fadd fast float %1814, %1125
  %1816 = fadd fast float %1609, %1124
  %1817 = fmul fast float %1816, 0x3FF337FAE0000000
  %1818 = fmul fast float %1124, %1124
  %1819 = fmul fast float %1609, %1609
  %1820 = fadd fast float %1819, %1818
  %1821 = fmul fast float %1820, 0x3FE5152B00000000
  %1822 = fmul fast float %1124, 0xBFCC1F85E0000000
  %1823 = fmul fast float %1822, %1609
  %1824 = fadd fast float %1823, 0xBFE1363700000000
  %1825 = fadd fast float %1824, %1817
  %1826 = fsub fast float %1825, %1821
  %1827 = fmul fast float %1816, 0x3FBA6F0D00000000
  %1828 = fmul fast float %1820, 0x3FD0432880000000
  %1829 = fmul fast float %1124, 0xBFEF110800000000
  %1830 = fmul fast float %1829, %1609
  %1831 = fadd fast float %1830, 1.000000e+00
  %1832 = fsub fast float %1831, %1827
  %1833 = fadd fast float %1832, %1828
  %1834 = fdiv fast float %1826, %1833
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fsub fast float %1835, %1124
  %1837 = fmul fast float %1836, %1790
  %1838 = fadd fast float %1837, %1124
  br label %1853

; <label>:1839                                    ; preds = %1805
  %1840 = icmp eq i32 %1779, 8
  br i1 %1840, label %1841, label %1853

; <label>:1841                                    ; preds = %1839
  %1842 = fmul fast float %1784, %1610
  %1843 = fmul fast float %1784, %1611
  %1844 = fadd fast float %1842, %1114
  %1845 = fadd fast float %1843, %1115
  %1846 = call float @dx.op.binary.f32(i32 36, float %1125, float %1612)  ; FMin(a,b)
  %1847 = fsub fast float %1846, %1125
  %1848 = fmul fast float %1847, %1787
  %1849 = fadd fast float %1848, %1125
  %1850 = fsub fast float %1609, %1124
  %1851 = fmul fast float %1790, %1850
  %1852 = fadd fast float %1851, %1124
  br label %1853

; <label>:1853                                    ; preds = %1841, %1839, %1807, %1792, %1770, %1308, %1127, %1113
  %1854 = phi float [ %1114, %1770 ], [ %1114, %1308 ], [ %1114, %1113 ], [ %1844, %1841 ], [ %1114, %1839 ], [ %1810, %1807 ], [ %1797, %1792 ], [ %1114, %1127 ]
  %1855 = phi float [ %1115, %1770 ], [ %1115, %1308 ], [ %1115, %1113 ], [ %1845, %1841 ], [ %1115, %1839 ], [ %1811, %1807 ], [ %1798, %1792 ], [ %1115, %1127 ]
  %1856 = phi float [ %1771, %1770 ], [ %1116, %1308 ], [ %1116, %1113 ], [ %1771, %1841 ], [ %1771, %1839 ], [ %1771, %1807 ], [ %1771, %1792 ], [ %1116, %1127 ]
  %1857 = phi float [ %1772, %1770 ], [ %1117, %1308 ], [ %1117, %1113 ], [ %1772, %1841 ], [ %1772, %1839 ], [ %1772, %1807 ], [ %1772, %1792 ], [ %1117, %1127 ]
  %1858 = phi float [ %1773, %1770 ], [ %1118, %1308 ], [ %1118, %1113 ], [ %1773, %1841 ], [ %1773, %1839 ], [ %1773, %1807 ], [ %1773, %1792 ], [ %1118, %1127 ]
  %1859 = phi float [ %1774, %1770 ], [ %1119, %1308 ], [ %1119, %1113 ], [ %1774, %1841 ], [ %1774, %1839 ], [ %1774, %1807 ], [ %1774, %1792 ], [ %1119, %1127 ]
  %1860 = phi float [ %1775, %1770 ], [ %1120, %1308 ], [ %1120, %1113 ], [ %1775, %1841 ], [ %1775, %1839 ], [ %1775, %1807 ], [ %1775, %1792 ], [ %1120, %1127 ]
  %1861 = phi float [ %1776, %1770 ], [ %1121, %1308 ], [ %1121, %1113 ], [ %1776, %1841 ], [ %1776, %1839 ], [ %1776, %1807 ], [ %1776, %1792 ], [ %1121, %1127 ]
  %1862 = phi float [ %1777, %1770 ], [ %1122, %1308 ], [ %1122, %1113 ], [ %1777, %1841 ], [ %1777, %1839 ], [ %1777, %1807 ], [ %1777, %1792 ], [ %1122, %1127 ]
  %1863 = phi float [ %1124, %1770 ], [ %1124, %1308 ], [ %1124, %1113 ], [ %1852, %1841 ], [ %1124, %1839 ], [ %1838, %1807 ], [ %1804, %1792 ], [ %1124, %1127 ]
  %1864 = phi float [ %1125, %1770 ], [ %1125, %1308 ], [ %1125, %1113 ], [ %1849, %1841 ], [ %1125, %1839 ], [ %1815, %1807 ], [ %1801, %1792 ], [ %1125, %1127 ]
  %1865 = phi float [ %1778, %1770 ], [ %1126, %1308 ], [ %1126, %1113 ], [ %1778, %1841 ], [ %1778, %1839 ], [ %1778, %1807 ], [ %1778, %1792 ], [ %1126, %1127 ]
  br i1 %446, label %2592, label %1866

; <label>:1866                                    ; preds = %1853
  %1867 = icmp ult i32 %502, 3
  %1868 = add i32 %60, 56
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = add i32 %60, 60
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = or i32 %1873, %1870
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %2592, label %1876

; <label>:1876                                    ; preds = %1866
  %1877 = and i32 %1870, 262144
  %1878 = icmp ne i32 %1877, 0
  %1879 = select i1 %1878, float %65, float 1.000000e+00
  %1880 = select i1 %1878, float %66, float 0.000000e+00
  %1881 = select i1 %1878, float %67, float 0.000000e+00
  %1882 = select i1 %1878, float %68, float 1.000000e+00
  %1883 = select i1 %1878, float %69, float %92
  %1884 = select i1 %1878, float %70, float %93
  %1885 = add i32 %60, 316
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = lshr i32 %1887, 16
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = fmul fast float %1889, 0x3F50624DE0000000
  %1891 = add i32 %60, 120
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = lshr i32 %1893, 16
  %1895 = and i32 %1894, 255
  %1896 = lshr i32 %1893, 24
  %1897 = add i32 %60, 324
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 65535
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = lshr i32 %1899, 16
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = add i32 %60, 64
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = lshr i32 %1906, 22
  %1908 = shl nuw nsw i32 %1907, 5
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = shl i32 %1906, 4
  %1911 = and i32 %1910, 32752
  %1912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1911)  ; LegacyF16ToF32(value)
  %1913 = lshr i32 %1906, 7
  %1914 = and i32 %1913, 32752
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 3
  %1918 = fmul fast float %1917, 1.000000e+03
  %1919 = fmul fast float %396, %1918
  %1920 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1921 = fadd fast float %1920, %386
  %1922 = fmul fast float %397, %1918
  %1923 = call float @dx.op.unary.f32(i32 22, float %1922)  ; Frc(value)
  %1924 = fadd fast float %1923, %388
  %1925 = fmul fast float %1890, %1918
  %1926 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1927 = fmul fast float %1926, 0x401921FB60000000
  %1928 = fadd fast float %1927, %1909
  %1929 = call float @dx.op.unary.f32(i32 13, float %1928)  ; Sin(value)
  %1930 = call float @dx.op.unary.f32(i32 12, float %1928)  ; Cos(value)
  %1931 = fsub fast float -0.000000e+00, %1929
  %1932 = fadd fast float %1883, -5.000000e-01
  %1933 = fadd fast float %1884, -5.000000e-01
  %1934 = fmul fast float %1901, %1932
  %1935 = fmul fast float %1903, %1933
  %1936 = fadd fast float %1934, 5.000000e-01
  %1937 = fadd fast float %1935, 5.000000e-01
  %1938 = fmul fast float %1912, %1936
  %1939 = fmul fast float %1915, %1937
  %1940 = fmul fast float %1930, %1938
  %1941 = call float @dx.op.tertiary.f32(i32 46, float %1931, float %1939, float %1940)  ; FMad(a,b,c)
  %1942 = fmul fast float %1929, %1938
  %1943 = call float @dx.op.tertiary.f32(i32 46, float %1930, float %1939, float %1942)  ; FMad(a,b,c)
  %1944 = fadd fast float %1921, %1941
  %1945 = fadd fast float %1924, %1943
  %1946 = icmp ugt i32 %1895, 1
  %1947 = icmp ugt i32 %1893, 33554431
  %1948 = or i1 %1947, %1946
  br i1 %1948, label %1949, label %1974

; <label>:1949                                    ; preds = %1876
  %1950 = add i32 %60, 260
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = lshr i32 %1952, 16
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = fmul fast float %1917, %1954
  %1956 = call float @dx.op.unary.f32(i32 22, float %1955)  ; Frc(value)
  %1957 = mul nuw nsw i32 %1895, %1896
  %1958 = uitofp i32 %1957 to float
  %1959 = fmul fast float %1956, %1958
  %1960 = call float @dx.op.unary.f32(i32 27, float %1959)  ; Round_ni(value)
  %1961 = fptoui float %1960 to i32
  %1962 = urem i32 %1961, %1895
  %1963 = udiv i32 %1961, %1896
  %1964 = call float @dx.op.unary.f32(i32 22, float %1944)  ; Frc(value)
  %1965 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1966 = uitofp i32 %1962 to float
  %1967 = uitofp i32 %1963 to float
  %1968 = fadd fast float %1964, %1966
  %1969 = fadd fast float %1965, %1967
  %1970 = uitofp i32 %1895 to float
  %1971 = uitofp i32 %1896 to float
  %1972 = fdiv fast float %1968, %1970
  %1973 = fdiv fast float %1969, %1971
  br label %1974

; <label>:1974                                    ; preds = %1949, %1876
  %1975 = phi float [ %1972, %1949 ], [ %1944, %1876 ]
  %1976 = phi float [ %1973, %1949 ], [ %1945, %1876 ]
  %1977 = and i32 %1870, 256
  %1978 = icmp eq i32 %1977, 0
  br i1 %1978, label %2025, label %1979

; <label>:1979                                    ; preds = %1974
  %1980 = add i32 %60, 464
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %1982, 0
  %1984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1983, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1984, %dx.types.Handle %111, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = add i32 %60, 132
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = shl i32 %1989, 4
  %1991 = and i32 %1990, 32752
  %1992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1991)  ; LegacyF16ToF32(value)
  %1993 = lshr i32 %1989, 7
  %1994 = and i32 %1993, 32752
  %1995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1994)  ; LegacyF16ToF32(value)
  %1996 = fsub fast float 1.000000e+00, %498
  %1997 = call float @dx.op.binary.f32(i32 35, float %1996, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1998 = bitcast float %498 to i32
  %1999 = sitofp i32 %1998 to float
  %2000 = fadd fast float %1999, 0xC1CFBF8940000000
  %2001 = fmul fast float %1995, %2000
  %2002 = fadd fast float %2001, 0x41CFBF8940000000
  %2003 = fptosi float %2002 to i32
  %2004 = bitcast i32 %2003 to float
  %2005 = bitcast float %1997 to i32
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, 0xC1CFBF8940000000
  %2008 = fmul fast float %2007, %1995
  %2009 = fadd fast float %2008, 0x41CFBF8940000000
  %2010 = fptosi float %2009 to i32
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %2004, %1992
  %2013 = fmul fast float %2011, %1992
  %2014 = fsub fast float %1997, %2012
  %2015 = fadd fast float %2013, %1997
  %2016 = call float @dx.op.unary.f32(i32 7, float %2014)  ; Saturate(value)
  %2017 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2018 = fsub fast float %1986, %2016
  %2019 = fsub fast float %2017, %2016
  %2020 = bitcast float %2019 to i32
  %2021 = sub nsw i32 2129859010, %2020
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2022, %2018
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  br label %2025

; <label>:2025                                    ; preds = %1979, %1974
  %2026 = phi float [ %2024, %1979 ], [ %498, %1974 ]
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 128
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2047, label %2031

; <label>:2031                                    ; preds = %2025
  %2032 = add i32 %60, 448
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %2034, 0
  %2036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2036, %dx.types.Handle %111, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2038 = extractvalue %dx.types.ResRet.f32 %2037, 0
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 524288
  %2042 = icmp ne i32 %2041, 0
  %2043 = fcmp fast ogt float %2038, 0x3FE0101020000000
  %2044 = select i1 %2043, float 1.000000e+00, float 0.000000e+00
  %2045 = select i1 %2042, float %2044, float %2038
  %2046 = fmul fast float %2045, %2026
  br label %2047

; <label>:2047                                    ; preds = %2031, %2025
  %2048 = phi float [ %2046, %2031 ], [ %2026, %2025 ]
  %2049 = fcmp fast ult float %2048, 0x3F70101020000000
  br i1 %2049, label %2592, label %2050

; <label>:2050                                    ; preds = %2047
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 16
  %2054 = icmp eq i32 %2053, 0
  br i1 %2054, label %2253, label %2055

; <label>:2055                                    ; preds = %2050
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = add i32 %60, 400
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2058, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = add i32 %2060, 0
  %2062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2062, %dx.types.Handle %110, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = extractvalue %dx.types.ResRet.f32 %2063, 1
  %2066 = extractvalue %dx.types.ResRet.f32 %2063, 2
  %2067 = extractvalue %dx.types.ResRet.f32 %2063, 3
  %2068 = and i32 %2057, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = lshr i32 %2057, 8
  %2071 = and i32 %2070, 255
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2067, %2069
  %2074 = fadd fast float %2073, %2072
  %2075 = fmul fast float %2074, 0x3F70101000000000
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 512
  %2079 = icmp eq i32 %2078, 0
  br i1 %2079, label %2088, label %2080

; <label>:2080                                    ; preds = %2055
  %2081 = add i32 %60, 480
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = add i32 %2083, 0
  %2085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2086 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2085, %dx.types.Handle %111, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  br label %2088

; <label>:2088                                    ; preds = %2080, %2055
  %2089 = phi float [ %2087, %2080 ], [ 1.000000e+00, %2055 ]
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 33554432
  %2093 = icmp eq i32 %2092, 0
  br i1 %2093, label %2200, label %2094

; <label>:2094                                    ; preds = %2088
  %2095 = add i32 %60, 256
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 65535
  %2099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2098)  ; LegacyF16ToF32(value)
  %2100 = lshr i32 %2097, 16
  %2101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2100)  ; LegacyF16ToF32(value)
  %2102 = add i32 %60, 260
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 65535
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 24
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = and i32 %2108, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2108, 8
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = lshr i32 %2108, 16
  %2120 = and i32 %2119, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = add i32 %60, 252
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = lshr i32 %2125, 24
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = and i32 %2125, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2125, 8
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = lshr i32 %2125, 16
  %2137 = and i32 %2136, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = bitcast float %2064 to i32
  %2141 = ashr i32 %2140, 1
  %2142 = sub nsw i32 1597463174, %2141
  %2143 = bitcast i32 %2142 to float
  %2144 = fmul fast float %2064, 5.000000e-01
  %2145 = fmul fast float %2143, %2143
  %2146 = fmul fast float %2145, %2144
  %2147 = fsub fast float 1.500000e+00, %2146
  %2148 = fmul fast float %2143, %2064
  %2149 = fmul fast float %2148, %2147
  %2150 = bitcast float %2065 to i32
  %2151 = ashr i32 %2150, 1
  %2152 = sub nsw i32 1597463174, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2065, 5.000000e-01
  %2155 = fmul fast float %2153, %2153
  %2156 = fmul fast float %2155, %2154
  %2157 = fsub fast float 1.500000e+00, %2156
  %2158 = fmul fast float %2153, %2065
  %2159 = fmul fast float %2158, %2157
  %2160 = bitcast float %2066 to i32
  %2161 = ashr i32 %2160, 1
  %2162 = sub nsw i32 1597463174, %2161
  %2163 = bitcast i32 %2162 to float
  %2164 = fmul fast float %2066, 5.000000e-01
  %2165 = fmul fast float %2163, %2163
  %2166 = fmul fast float %2165, %2164
  %2167 = fsub fast float 1.500000e+00, %2166
  %2168 = fmul fast float %2163, %2066
  %2169 = fmul fast float %2168, %2167
  %2170 = fsub fast float %2149, %2131
  %2171 = fsub fast float %2159, %2135
  %2172 = fsub fast float %2169, %2139
  %2173 = fmul fast float %2170, %2099
  %2174 = fmul fast float %2171, %2101
  %2175 = fmul fast float %2172, %2106
  %2176 = fadd fast float %2173, %2114
  %2177 = fadd fast float %2174, %2118
  %2178 = fadd fast float %2175, %2122
  %2179 = call float @dx.op.unary.f32(i32 7, float %2176)  ; Saturate(value)
  %2180 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2181 = call float @dx.op.unary.f32(i32 7, float %2178)  ; Saturate(value)
  %2182 = fmul fast float %2179, %2179
  %2183 = fmul fast float %2180, %2180
  %2184 = fmul fast float %2181, %2181
  %2185 = fsub fast float %2182, %2064
  %2186 = fsub fast float %2183, %2065
  %2187 = fsub fast float %2184, %2066
  %2188 = fmul fast float %2185, %2089
  %2189 = fmul fast float %2186, %2089
  %2190 = fmul fast float %2187, %2089
  %2191 = fadd fast float %2188, %2064
  %2192 = fadd fast float %2189, %2065
  %2193 = fadd fast float %2190, %2066
  %2194 = fadd fast float %2111, %2075
  %2195 = fsub fast float %2194, %2128
  %2196 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2197 = fsub fast float %2196, %2075
  %2198 = fmul fast float %2197, %2089
  %2199 = fadd fast float %2198, %2075
  br label %2253

; <label>:2200                                    ; preds = %2088
  %2201 = and i32 %2091, 134217728
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2237, label %2203

; <label>:2203                                    ; preds = %2200
  %2204 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2207 = fadd fast float %2204, -5.000000e-01
  %2208 = fadd fast float %2205, -5.000000e-01
  %2209 = fadd fast float %2206, -5.000000e-01
  %2210 = fmul fast float %2207, %2089
  %2211 = fmul fast float %2208, %2089
  %2212 = fmul fast float %2209, %2089
  %2213 = fadd fast float %2210, 5.000000e-01
  %2214 = fadd fast float %2211, 5.000000e-01
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %2065)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %2066)  ; Sqrt(value)
  %2219 = fmul fast float %2213, 2.000000e+00
  %2220 = fsub fast float 1.000000e+00, %2219
  %2221 = fmul fast float %2220, %2216
  %2222 = fadd fast float %2221, %2219
  %2223 = fmul fast float %2222, %2216
  %2224 = fmul fast float %2214, 2.000000e+00
  %2225 = fsub fast float 1.000000e+00, %2224
  %2226 = fmul fast float %2225, %2217
  %2227 = fadd fast float %2226, %2224
  %2228 = fmul fast float %2227, %2217
  %2229 = fmul fast float %2215, 2.000000e+00
  %2230 = fsub fast float 1.000000e+00, %2229
  %2231 = fmul fast float %2230, %2218
  %2232 = fadd fast float %2231, %2229
  %2233 = fmul fast float %2232, %2218
  %2234 = fmul fast float %2223, %2223
  %2235 = fmul fast float %2228, %2228
  %2236 = fmul fast float %2233, %2233
  br label %2253

; <label>:2237                                    ; preds = %2200
  %2238 = fmul fast float %373, %373
  %2239 = fmul fast float %377, %377
  %2240 = fmul fast float %381, %381
  %2241 = fadd fast float %2238, -1.000000e+00
  %2242 = fadd fast float %2239, -1.000000e+00
  %2243 = fadd fast float %2240, -1.000000e+00
  %2244 = fmul fast float %2089, %2241
  %2245 = fmul fast float %2089, %2242
  %2246 = fmul fast float %2089, %2243
  %2247 = fadd fast float %2244, 1.000000e+00
  %2248 = fadd fast float %2245, 1.000000e+00
  %2249 = fadd fast float %2246, 1.000000e+00
  %2250 = fmul fast float %2247, %2064
  %2251 = fmul fast float %2248, %2065
  %2252 = fmul fast float %2249, %2066
  br label %2253

; <label>:2253                                    ; preds = %2237, %2203, %2094, %2050
  %2254 = phi float [ %2199, %2094 ], [ %2075, %2203 ], [ %2075, %2237 ], [ 0x3FA23C0BE0000000, %2050 ]
  %2255 = phi float [ %2191, %2094 ], [ %2234, %2203 ], [ %2250, %2237 ], [ 1.000000e+00, %2050 ]
  %2256 = phi float [ %2192, %2094 ], [ %2235, %2203 ], [ %2251, %2237 ], [ 1.000000e+00, %2050 ]
  %2257 = phi float [ %2193, %2094 ], [ %2236, %2203 ], [ %2252, %2237 ], [ 1.000000e+00, %2050 ]
  %2258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2259 = extractvalue %dx.types.CBufRet.i32 %2258, 1
  %2260 = and i32 %2259, 1
  %2261 = icmp ne i32 %2260, 0
  %2262 = add i32 %60, 356
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = and i32 %2264, 32
  %2266 = icmp ne i32 %2265, 0
  %2267 = and i1 %2261, %2266
  %2268 = select i1 %2267, float 1.000000e+00, float %2255
  %2269 = select i1 %2267, float 0x3FD3333340000000, float %2256
  %2270 = select i1 %2267, float 0x3FD3333340000000, float %2257
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 32
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2347, label %2275

; <label>:2275                                    ; preds = %2253
  %2276 = add i32 %60, 124
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = add i32 %60, 416
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = add i32 %2281, 0
  %2283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2283, %dx.types.Handle %110, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2285 = extractvalue %dx.types.ResRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.ResRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.ResRet.f32 %2284, 2
  %2288 = extractvalue %dx.types.ResRet.f32 %2284, 3
  %2289 = and i32 %2278, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = lshr i32 %2278, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = lshr i32 %2278, 16
  %2295 = and i32 %2294, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = fmul fast float %2296, 0x3F70101000000000
  %2298 = fmul fast float %2285, %2290
  %2299 = fadd fast float %2298, %2293
  %2300 = fmul fast float %2299, 0x3F70101000000000
  %2301 = fadd fast float %2286, -5.000000e-01
  %2302 = fadd fast float %2288, -5.000000e-01
  %2303 = fmul fast float %2301, %2297
  %2304 = fmul fast float %2302, %2297
  %2305 = fadd fast float %2303, 5.000000e-01
  %2306 = fadd fast float %2304, 5.000000e-01
  %2307 = fmul fast float %2305, 2.000000e+00
  %2308 = fadd fast float %2307, -1.000000e+00
  %2309 = fmul fast float %2306, 2.000000e+00
  %2310 = fadd fast float %2309, -1.000000e+00
  %2311 = fadd fast float %2308, %2310
  %2312 = fmul fast float %2311, 5.000000e-01
  %2313 = fsub fast float %2308, %2310
  %2314 = fmul fast float %2313, 5.000000e-01
  %2315 = call float @dx.op.unary.f32(i32 6, float %2312)  ; FAbs(value)
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = call float @dx.op.unary.f32(i32 6, float %2314)  ; FAbs(value)
  %2318 = fsub fast float %2316, %2317
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2314, float %2318, float %2312, float %2314, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  %2321 = fmul fast float %2312, %2320
  %2322 = fmul fast float %2314, %2320
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 67108864
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2343, label %2327

; <label>:2327                                    ; preds = %2275
  %2328 = add i32 %60, 312
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 65535
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = lshr i32 %2330, 16
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = fsub fast float %2300, %2338
  %2340 = fmul fast float %2339, %2332
  %2341 = fadd fast float %2340, %2336
  %2342 = call float @dx.op.unary.f32(i32 7, float %2341)  ; Saturate(value)
  br label %2343

; <label>:2343                                    ; preds = %2327, %2275
  %2344 = phi float [ %2342, %2327 ], [ %2300, %2275 ]
  %2345 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1879, float %1880)  ; Dot2(ax,ay,bx,by)
  %2346 = call float @dx.op.dot2.f32(i32 54, float %2321, float %2322, float %1881, float %1882)  ; Dot2(ax,ay,bx,by)
  br label %2347

; <label>:2347                                    ; preds = %2343, %2253
  %2348 = phi float [ %2344, %2343 ], [ 0x3FD6666660000000, %2253 ]
  %2349 = phi float [ %2345, %2343 ], [ 0.000000e+00, %2253 ]
  %2350 = phi float [ %2346, %2343 ], [ 0.000000e+00, %2253 ]
  %2351 = phi float [ %2287, %2343 ], [ 1.000000e+00, %2253 ]
  %2352 = add i32 %60, 192
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = lshr i32 %2354, 22
  %2356 = shl nuw nsw i32 %2355, 5
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 64
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2395, label %2362

; <label>:2362                                    ; preds = %2347
  %2363 = add i32 %60, 432
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 131072
  %2371 = icmp eq i32 %2370, 0
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2367, %dx.types.Handle %110, float %1975, float %1976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = fmul fast float %2373, %361
  %2377 = fmul fast float %2374, %364
  %2378 = fmul fast float %2375, %367
  br i1 %2371, label %2385, label %2379

; <label>:2379                                    ; preds = %2362
  %2380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2381 = extractvalue %dx.types.CBufRet.f32 %2380, 0
  %2382 = fmul fast float %2381, %2376
  %2383 = fmul fast float %2381, %2377
  %2384 = fmul fast float %2381, %2378
  br label %2385

; <label>:2385                                    ; preds = %2379, %2362
  %2386 = phi float [ %2382, %2379 ], [ %2376, %2362 ]
  %2387 = phi float [ %2383, %2379 ], [ %2377, %2362 ]
  %2388 = phi float [ %2384, %2379 ], [ %2378, %2362 ]
  %2389 = fmul fast float %2386, %2357
  %2390 = select i1 %260, float %2389, float %2386
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2390, float %2387, float %2388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = select i1 %260, float 0.000000e+00, float %2386
  %2393 = select i1 %260, float %2391, float %2387
  %2394 = select i1 %260, float 0.000000e+00, float %2388
  br label %2395

; <label>:2395                                    ; preds = %2385, %2347
  %2396 = phi float [ %2392, %2385 ], [ 0.000000e+00, %2347 ]
  %2397 = phi float [ %2393, %2385 ], [ 0.000000e+00, %2347 ]
  %2398 = phi float [ %2394, %2385 ], [ 0.000000e+00, %2347 ]
  %2399 = add i32 %60, 128
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 255
  %2403 = uitofp i32 %2402 to float
  %2404 = lshr i32 %2401, 8
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2268, float %2269, float %2270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = fmul fast float %2406, %2407
  %2409 = fadd fast float %2408, %2403
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  br i1 %1867, label %2412, label %2420

; <label>:2412                                    ; preds = %2395
  %2413 = fsub fast float 1.000000e+00, %2048
  %2414 = fmul fast float %2413, %1856
  %2415 = fmul fast float %2413, %1857
  %2416 = fmul fast float %2413, %1858
  %2417 = fmul fast float %2413, %1859
  %2418 = fmul fast float %2413, %1860
  %2419 = fmul fast float %2413, %1861
  br label %2420

; <label>:2420                                    ; preds = %2412, %2395
  %2421 = phi float [ %2414, %2412 ], [ %1856, %2395 ]
  %2422 = phi float [ %2415, %2412 ], [ %1857, %2395 ]
  %2423 = phi float [ %2416, %2412 ], [ %1858, %2395 ]
  %2424 = phi float [ %2417, %2412 ], [ %1859, %2395 ]
  %2425 = phi float [ %2418, %2412 ], [ %1860, %2395 ]
  %2426 = phi float [ %2419, %2412 ], [ %1861, %2395 ]
  %2427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2428 = extractvalue %dx.types.ResRet.i32 %2427, 0
  %2429 = and i32 %2428, 3
  %2430 = icmp eq i32 %2429, 3
  br i1 %2430, label %2509, label %2431

; <label>:2431                                    ; preds = %2420
  %2432 = and i32 %2428, 16
  %2433 = icmp ne i32 %2432, 0
  %2434 = select i1 %2433, float %2048, float 0.000000e+00
  %2435 = icmp eq i32 %2429, 0
  br i1 %2435, label %2436, label %2464

; <label>:2436                                    ; preds = %2431
  %2437 = and i32 %2428, 64
  %2438 = icmp ne i32 %2437, 0
  %2439 = select i1 %2438, float %2048, float 0.000000e+00
  %2440 = fsub fast float %2268, %2421
  %2441 = fsub fast float %2269, %2422
  %2442 = fsub fast float %2270, %2423
  %2443 = fmul fast float %2434, %2440
  %2444 = fmul fast float %2434, %2441
  %2445 = fmul fast float %2434, %2442
  %2446 = fadd fast float %2443, %2421
  %2447 = fadd fast float %2444, %2422
  %2448 = fadd fast float %2445, %2423
  %2449 = fsub fast float %2254, %1862
  %2450 = fmul fast float %2434, %2449
  %2451 = fadd fast float %2450, %1862
  %2452 = fsub fast float %2396, %2424
  %2453 = fsub fast float %2397, %2425
  %2454 = fsub fast float %2398, %2426
  %2455 = fmul fast float %2439, %2452
  %2456 = fmul fast float %2439, %2453
  %2457 = fmul fast float %2439, %2454
  %2458 = fadd fast float %2455, %2424
  %2459 = fadd fast float %2456, %2425
  %2460 = fadd fast float %2457, %2426
  %2461 = fsub fast float %2411, %1865
  %2462 = fmul fast float %2434, %2461
  %2463 = fadd fast float %2462, %1865
  br label %2509

; <label>:2464                                    ; preds = %2431
  %2465 = icmp eq i32 %2429, 1
  br i1 %2465, label %2466, label %2479

; <label>:2466                                    ; preds = %2464
  %2467 = fadd fast float %2268, -1.000000e+00
  %2468 = fadd fast float %2269, -1.000000e+00
  %2469 = fadd fast float %2270, -1.000000e+00
  %2470 = fmul fast float %2434, %2467
  %2471 = fmul fast float %2434, %2468
  %2472 = fmul fast float %2434, %2469
  %2473 = fadd fast float %2470, 1.000000e+00
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fmul fast float %2473, %2421
  %2477 = fmul fast float %2474, %2422
  %2478 = fmul fast float %2475, %2423
  br label %2509

; <label>:2479                                    ; preds = %2464
  %2480 = icmp eq i32 %2429, 2
  br i1 %2480, label %2481, label %2509

; <label>:2481                                    ; preds = %2479
  %2482 = call float @dx.op.unary.f32(i32 24, float %2268)  ; Sqrt(value)
  %2483 = call float @dx.op.unary.f32(i32 24, float %2269)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %2270)  ; Sqrt(value)
  %2485 = fadd fast float %2482, -5.000000e-01
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fmul fast float %2485, %2434
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2434
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fmul fast float %2491, 2.000000e+00
  %2495 = fsub fast float 1.000000e+00, %2494
  %2496 = fmul fast float %2495, %2421
  %2497 = fadd fast float %2496, %2494
  %2498 = fmul fast float %2497, %2421
  %2499 = fmul fast float %2492, 2.000000e+00
  %2500 = fsub fast float 1.000000e+00, %2499
  %2501 = fmul fast float %2500, %2422
  %2502 = fadd fast float %2501, %2499
  %2503 = fmul fast float %2502, %2422
  %2504 = fmul fast float %2493, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2423
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2423
  br label %2509

; <label>:2509                                    ; preds = %2481, %2479, %2466, %2436, %2420
  %2510 = phi float [ %2421, %2420 ], [ %2498, %2481 ], [ %2421, %2479 ], [ %2476, %2466 ], [ %2446, %2436 ]
  %2511 = phi float [ %2422, %2420 ], [ %2503, %2481 ], [ %2422, %2479 ], [ %2477, %2466 ], [ %2447, %2436 ]
  %2512 = phi float [ %2423, %2420 ], [ %2508, %2481 ], [ %2423, %2479 ], [ %2478, %2466 ], [ %2448, %2436 ]
  %2513 = phi float [ %2424, %2420 ], [ %2424, %2481 ], [ %2424, %2479 ], [ %2424, %2466 ], [ %2458, %2436 ]
  %2514 = phi float [ %2425, %2420 ], [ %2425, %2481 ], [ %2425, %2479 ], [ %2425, %2466 ], [ %2459, %2436 ]
  %2515 = phi float [ %2426, %2420 ], [ %2426, %2481 ], [ %2426, %2479 ], [ %2426, %2466 ], [ %2460, %2436 ]
  %2516 = phi float [ %1862, %2420 ], [ %1862, %2481 ], [ %1862, %2479 ], [ %1862, %2466 ], [ %2451, %2436 ]
  %2517 = phi float [ %1865, %2420 ], [ %1865, %2481 ], [ %1865, %2479 ], [ %1865, %2466 ], [ %2463, %2436 ]
  %2518 = and i32 %2428, 12
  %2519 = icmp eq i32 %2518, 12
  br i1 %2519, label %2592, label %2520

; <label>:2520                                    ; preds = %2509
  %2521 = and i32 %2428, 2097184
  %2522 = icmp eq i32 %2521, 2097184
  %2523 = select i1 %2522, float %2048, float 0.000000e+00
  %2524 = and i32 %2428, 4194336
  %2525 = icmp eq i32 %2524, 4194336
  %2526 = select i1 %2525, float %2048, float 0.000000e+00
  %2527 = and i32 %2428, 8388640
  %2528 = icmp eq i32 %2527, 8388640
  %2529 = select i1 %2528, float %2048, float 0.000000e+00
  %2530 = icmp eq i32 %2518, 0
  br i1 %2530, label %2531, label %2544

; <label>:2531                                    ; preds = %2520
  %2532 = fsub fast float %2349, %1854
  %2533 = fsub fast float %2350, %1855
  %2534 = fmul fast float %2523, %2532
  %2535 = fmul fast float %2523, %2533
  %2536 = fadd fast float %2534, %1854
  %2537 = fadd fast float %2535, %1855
  %2538 = fsub fast float %2351, %1864
  %2539 = fmul fast float %2526, %2538
  %2540 = fadd fast float %2539, %1864
  %2541 = fsub fast float %2348, %1863
  %2542 = fmul fast float %2529, %2541
  %2543 = fadd fast float %2542, %1863
  br label %2592

; <label>:2544                                    ; preds = %2520
  %2545 = icmp eq i32 %2518, 4
  br i1 %2545, label %2546, label %2578

; <label>:2546                                    ; preds = %2544
  %2547 = fmul fast float %2523, %2349
  %2548 = fmul fast float %2523, %2350
  %2549 = fadd fast float %2547, %1854
  %2550 = fadd fast float %2548, %1855
  %2551 = call float @dx.op.binary.f32(i32 36, float %1864, float %2351)  ; FMin(a,b)
  %2552 = fsub fast float %2551, %1864
  %2553 = fmul fast float %2552, %2526
  %2554 = fadd fast float %2553, %1864
  %2555 = fadd fast float %2348, %1863
  %2556 = fmul fast float %2555, 0x3FF337FAE0000000
  %2557 = fmul fast float %1863, %1863
  %2558 = fmul fast float %2348, %2348
  %2559 = fadd fast float %2558, %2557
  %2560 = fmul fast float %2559, 0x3FE5152B00000000
  %2561 = fmul fast float %1863, 0xBFCC1F85E0000000
  %2562 = fmul fast float %2561, %2348
  %2563 = fadd fast float %2562, 0xBFE1363700000000
  %2564 = fadd fast float %2563, %2556
  %2565 = fsub fast float %2564, %2560
  %2566 = fmul fast float %2555, 0x3FBA6F0D00000000
  %2567 = fmul fast float %2559, 0x3FD0432880000000
  %2568 = fmul fast float %1863, 0xBFEF110800000000
  %2569 = fmul fast float %2568, %2348
  %2570 = fadd fast float %2569, 1.000000e+00
  %2571 = fsub fast float %2570, %2566
  %2572 = fadd fast float %2571, %2567
  %2573 = fdiv fast float %2565, %2572
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fsub fast float %2574, %1863
  %2576 = fmul fast float %2575, %2529
  %2577 = fadd fast float %2576, %1863
  br label %2592

; <label>:2578                                    ; preds = %2544
  %2579 = icmp eq i32 %2518, 8
  br i1 %2579, label %2580, label %2592

; <label>:2580                                    ; preds = %2578
  %2581 = fmul fast float %2523, %2349
  %2582 = fmul fast float %2523, %2350
  %2583 = fadd fast float %2581, %1854
  %2584 = fadd fast float %2582, %1855
  %2585 = call float @dx.op.binary.f32(i32 36, float %1864, float %2351)  ; FMin(a,b)
  %2586 = fsub fast float %2585, %1864
  %2587 = fmul fast float %2586, %2526
  %2588 = fadd fast float %2587, %1864
  %2589 = fsub fast float %2348, %1863
  %2590 = fmul fast float %2529, %2589
  %2591 = fadd fast float %2590, %1863
  br label %2592

; <label>:2592                                    ; preds = %2580, %2578, %2546, %2531, %2509, %2047, %1866, %1853
  %2593 = phi float [ %1854, %2509 ], [ %1854, %2047 ], [ %1854, %1853 ], [ %2583, %2580 ], [ %1854, %2578 ], [ %2549, %2546 ], [ %2536, %2531 ], [ %1854, %1866 ]
  %2594 = phi float [ %1855, %2509 ], [ %1855, %2047 ], [ %1855, %1853 ], [ %2584, %2580 ], [ %1855, %2578 ], [ %2550, %2546 ], [ %2537, %2531 ], [ %1855, %1866 ]
  %2595 = phi float [ %2510, %2509 ], [ %1856, %2047 ], [ %1856, %1853 ], [ %2510, %2580 ], [ %2510, %2578 ], [ %2510, %2546 ], [ %2510, %2531 ], [ %1856, %1866 ]
  %2596 = phi float [ %2511, %2509 ], [ %1857, %2047 ], [ %1857, %1853 ], [ %2511, %2580 ], [ %2511, %2578 ], [ %2511, %2546 ], [ %2511, %2531 ], [ %1857, %1866 ]
  %2597 = phi float [ %2512, %2509 ], [ %1858, %2047 ], [ %1858, %1853 ], [ %2512, %2580 ], [ %2512, %2578 ], [ %2512, %2546 ], [ %2512, %2531 ], [ %1858, %1866 ]
  %2598 = phi float [ %2513, %2509 ], [ %1859, %2047 ], [ %1859, %1853 ], [ %2513, %2580 ], [ %2513, %2578 ], [ %2513, %2546 ], [ %2513, %2531 ], [ %1859, %1866 ]
  %2599 = phi float [ %2514, %2509 ], [ %1860, %2047 ], [ %1860, %1853 ], [ %2514, %2580 ], [ %2514, %2578 ], [ %2514, %2546 ], [ %2514, %2531 ], [ %1860, %1866 ]
  %2600 = phi float [ %2515, %2509 ], [ %1861, %2047 ], [ %1861, %1853 ], [ %2515, %2580 ], [ %2515, %2578 ], [ %2515, %2546 ], [ %2515, %2531 ], [ %1861, %1866 ]
  %2601 = phi float [ %2516, %2509 ], [ %1862, %2047 ], [ %1862, %1853 ], [ %2516, %2580 ], [ %2516, %2578 ], [ %2516, %2546 ], [ %2516, %2531 ], [ %1862, %1866 ]
  %2602 = phi float [ %1863, %2509 ], [ %1863, %2047 ], [ %1863, %1853 ], [ %2591, %2580 ], [ %1863, %2578 ], [ %2577, %2546 ], [ %2543, %2531 ], [ %1863, %1866 ]
  %2603 = phi float [ %1864, %2509 ], [ %1864, %2047 ], [ %1864, %1853 ], [ %2588, %2580 ], [ %1864, %2578 ], [ %2554, %2546 ], [ %2540, %2531 ], [ %1864, %1866 ]
  %2604 = phi float [ %2517, %2509 ], [ %1865, %2047 ], [ %1865, %1853 ], [ %2517, %2580 ], [ %2517, %2578 ], [ %2517, %2546 ], [ %2517, %2531 ], [ %1865, %1866 ]
  br i1 %448, label %3331, label %2605

; <label>:2605                                    ; preds = %2592
  %2606 = icmp ult i32 %502, 4
  %2607 = add i32 %60, 72
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %60, 76
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = or i32 %2612, %2609
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %3331, label %2615

; <label>:2615                                    ; preds = %2605
  %2616 = and i32 %2609, 262144
  %2617 = icmp ne i32 %2616, 0
  %2618 = select i1 %2617, float %65, float 1.000000e+00
  %2619 = select i1 %2617, float %66, float 0.000000e+00
  %2620 = select i1 %2617, float %67, float 0.000000e+00
  %2621 = select i1 %2617, float %68, float 1.000000e+00
  %2622 = select i1 %2617, float %69, float %92
  %2623 = select i1 %2617, float %70, float %93
  %2624 = add i32 %60, 332
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = fmul fast float %2628, 0x3F50624DE0000000
  %2630 = add i32 %60, 136
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = lshr i32 %2632, 16
  %2634 = and i32 %2633, 255
  %2635 = lshr i32 %2632, 24
  %2636 = add i32 %60, 340
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 65535
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = lshr i32 %2638, 16
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = add i32 %60, 80
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 22
  %2647 = shl nuw nsw i32 %2646, 5
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = shl i32 %2645, 4
  %2650 = and i32 %2649, 32752
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2645, 7
  %2653 = and i32 %2652, 32752
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.f32 %2655, 3
  %2657 = fmul fast float %2656, 1.000000e+03
  %2658 = fmul fast float %438, %2657
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fadd fast float %2659, %428
  %2661 = fmul fast float %439, %2657
  %2662 = call float @dx.op.unary.f32(i32 22, float %2661)  ; Frc(value)
  %2663 = fadd fast float %2662, %430
  %2664 = fmul fast float %2629, %2657
  %2665 = call float @dx.op.unary.f32(i32 22, float %2664)  ; Frc(value)
  %2666 = fmul fast float %2665, 0x401921FB60000000
  %2667 = fadd fast float %2666, %2648
  %2668 = call float @dx.op.unary.f32(i32 13, float %2667)  ; Sin(value)
  %2669 = call float @dx.op.unary.f32(i32 12, float %2667)  ; Cos(value)
  %2670 = fsub fast float -0.000000e+00, %2668
  %2671 = fadd fast float %2622, -5.000000e-01
  %2672 = fadd fast float %2623, -5.000000e-01
  %2673 = fmul fast float %2640, %2671
  %2674 = fmul fast float %2642, %2672
  %2675 = fadd fast float %2673, 5.000000e-01
  %2676 = fadd fast float %2674, 5.000000e-01
  %2677 = fmul fast float %2651, %2675
  %2678 = fmul fast float %2654, %2676
  %2679 = fmul fast float %2669, %2677
  %2680 = call float @dx.op.tertiary.f32(i32 46, float %2670, float %2678, float %2679)  ; FMad(a,b,c)
  %2681 = fmul fast float %2668, %2677
  %2682 = call float @dx.op.tertiary.f32(i32 46, float %2669, float %2678, float %2681)  ; FMad(a,b,c)
  %2683 = fadd fast float %2660, %2680
  %2684 = fadd fast float %2663, %2682
  %2685 = icmp ugt i32 %2634, 1
  %2686 = icmp ugt i32 %2632, 33554431
  %2687 = or i1 %2686, %2685
  br i1 %2687, label %2688, label %2713

; <label>:2688                                    ; preds = %2615
  %2689 = add i32 %60, 276
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = lshr i32 %2691, 16
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = fmul fast float %2656, %2693
  %2695 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2696 = mul nuw nsw i32 %2634, %2635
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2695, %2697
  %2699 = call float @dx.op.unary.f32(i32 27, float %2698)  ; Round_ni(value)
  %2700 = fptoui float %2699 to i32
  %2701 = urem i32 %2700, %2634
  %2702 = udiv i32 %2700, %2635
  %2703 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2704 = call float @dx.op.unary.f32(i32 22, float %2684)  ; Frc(value)
  %2705 = uitofp i32 %2701 to float
  %2706 = uitofp i32 %2702 to float
  %2707 = fadd fast float %2703, %2705
  %2708 = fadd fast float %2704, %2706
  %2709 = uitofp i32 %2634 to float
  %2710 = uitofp i32 %2635 to float
  %2711 = fdiv fast float %2707, %2709
  %2712 = fdiv fast float %2708, %2710
  br label %2713

; <label>:2713                                    ; preds = %2688, %2615
  %2714 = phi float [ %2711, %2688 ], [ %2683, %2615 ]
  %2715 = phi float [ %2712, %2688 ], [ %2684, %2615 ]
  %2716 = and i32 %2609, 256
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2764, label %2718

; <label>:2718                                    ; preds = %2713
  %2719 = add i32 %60, 468
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %111, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = add i32 %60, 148
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = shl i32 %2728, 4
  %2730 = and i32 %2729, 32752
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = lshr i32 %2728, 7
  %2733 = and i32 %2732, 32752
  %2734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2733)  ; LegacyF16ToF32(value)
  %2735 = fsub fast float 1.000000e+00, %497
  %2736 = call float @dx.op.binary.f32(i32 35, float %2735, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2737 = bitcast float %497 to i32
  %2738 = sitofp i32 %2737 to float
  %2739 = fadd fast float %2738, 0xC1CFBF8940000000
  %2740 = fmul fast float %2734, %2739
  %2741 = fadd fast float %2740, 0x41CFBF8940000000
  %2742 = fptosi float %2741 to i32
  %2743 = bitcast i32 %2742 to float
  %2744 = bitcast float %2736 to i32
  %2745 = sitofp i32 %2744 to float
  %2746 = fadd fast float %2745, 0xC1CFBF8940000000
  %2747 = fmul fast float %2746, %2734
  %2748 = fadd fast float %2747, 0x41CFBF8940000000
  %2749 = fptosi float %2748 to i32
  %2750 = bitcast i32 %2749 to float
  %2751 = fmul fast float %2743, %2731
  %2752 = fmul fast float %2750, %2731
  %2753 = fsub fast float %2736, %2751
  %2754 = fadd fast float %2752, %2736
  %2755 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2756 = call float @dx.op.unary.f32(i32 7, float %2754)  ; Saturate(value)
  %2757 = fsub fast float %2725, %2755
  %2758 = fsub fast float %2756, %2755
  %2759 = bitcast float %2758 to i32
  %2760 = sub nsw i32 2129859010, %2759
  %2761 = bitcast i32 %2760 to float
  %2762 = fmul fast float %2761, %2757
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  br label %2764

; <label>:2764                                    ; preds = %2718, %2713
  %2765 = phi float [ %2763, %2718 ], [ %497, %2713 ]
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 128
  %2769 = icmp eq i32 %2768, 0
  br i1 %2769, label %2786, label %2770

; <label>:2770                                    ; preds = %2764
  %2771 = add i32 %60, 452
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = add i32 %2773, 0
  %2775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2775, %dx.types.Handle %111, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2779 = extractvalue %dx.types.ResRet.i32 %2778, 0
  %2780 = and i32 %2779, 524288
  %2781 = icmp ne i32 %2780, 0
  %2782 = fcmp fast ogt float %2777, 0x3FE0101020000000
  %2783 = select i1 %2782, float 1.000000e+00, float 0.000000e+00
  %2784 = select i1 %2781, float %2783, float %2777
  %2785 = fmul fast float %2784, %2765
  br label %2786

; <label>:2786                                    ; preds = %2770, %2764
  %2787 = phi float [ %2785, %2770 ], [ %2765, %2764 ]
  %2788 = fcmp fast ult float %2787, 0x3F70101020000000
  br i1 %2788, label %3331, label %2789

; <label>:2789                                    ; preds = %2786
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = and i32 %2791, 16
  %2793 = icmp eq i32 %2792, 0
  br i1 %2793, label %2992, label %2794

; <label>:2794                                    ; preds = %2789
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = add i32 %60, 404
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = add i32 %2799, 0
  %2801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2802 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2801, %dx.types.Handle %110, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 1
  %2805 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2806 = extractvalue %dx.types.ResRet.f32 %2802, 3
  %2807 = and i32 %2796, 255
  %2808 = uitofp i32 %2807 to float
  %2809 = lshr i32 %2796, 8
  %2810 = and i32 %2809, 255
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2806, %2808
  %2813 = fadd fast float %2812, %2811
  %2814 = fmul fast float %2813, 0x3F70101000000000
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 512
  %2818 = icmp eq i32 %2817, 0
  br i1 %2818, label %2827, label %2819

; <label>:2819                                    ; preds = %2794
  %2820 = add i32 %60, 484
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = add i32 %2822, 0
  %2824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2824, %dx.types.Handle %111, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  br label %2827

; <label>:2827                                    ; preds = %2819, %2794
  %2828 = phi float [ %2826, %2819 ], [ 1.000000e+00, %2794 ]
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = and i32 %2830, 33554432
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %2939, label %2833

; <label>:2833                                    ; preds = %2827
  %2834 = add i32 %60, 272
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 65535
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = lshr i32 %2836, 16
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = add i32 %60, 276
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 65535
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = lshr i32 %2847, 24
  %2849 = uitofp i32 %2848 to float
  %2850 = fmul fast float %2849, 0x3F70101020000000
  %2851 = and i32 %2847, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = fmul fast float %2852, 0x3F70101020000000
  %2854 = lshr i32 %2847, 8
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = fmul fast float %2856, 0x3F70101020000000
  %2858 = lshr i32 %2847, 16
  %2859 = and i32 %2858, 255
  %2860 = uitofp i32 %2859 to float
  %2861 = fmul fast float %2860, 0x3F70101020000000
  %2862 = add i32 %60, 268
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 24
  %2866 = uitofp i32 %2865 to float
  %2867 = fmul fast float %2866, 0x3F70101020000000
  %2868 = and i32 %2864, 255
  %2869 = uitofp i32 %2868 to float
  %2870 = fmul fast float %2869, 0x3F70101020000000
  %2871 = lshr i32 %2864, 8
  %2872 = and i32 %2871, 255
  %2873 = uitofp i32 %2872 to float
  %2874 = fmul fast float %2873, 0x3F70101020000000
  %2875 = lshr i32 %2864, 16
  %2876 = and i32 %2875, 255
  %2877 = uitofp i32 %2876 to float
  %2878 = fmul fast float %2877, 0x3F70101020000000
  %2879 = bitcast float %2803 to i32
  %2880 = ashr i32 %2879, 1
  %2881 = sub nsw i32 1597463174, %2880
  %2882 = bitcast i32 %2881 to float
  %2883 = fmul fast float %2803, 5.000000e-01
  %2884 = fmul fast float %2882, %2882
  %2885 = fmul fast float %2884, %2883
  %2886 = fsub fast float 1.500000e+00, %2885
  %2887 = fmul fast float %2882, %2803
  %2888 = fmul fast float %2887, %2886
  %2889 = bitcast float %2804 to i32
  %2890 = ashr i32 %2889, 1
  %2891 = sub nsw i32 1597463174, %2890
  %2892 = bitcast i32 %2891 to float
  %2893 = fmul fast float %2804, 5.000000e-01
  %2894 = fmul fast float %2892, %2892
  %2895 = fmul fast float %2894, %2893
  %2896 = fsub fast float 1.500000e+00, %2895
  %2897 = fmul fast float %2892, %2804
  %2898 = fmul fast float %2897, %2896
  %2899 = bitcast float %2805 to i32
  %2900 = ashr i32 %2899, 1
  %2901 = sub nsw i32 1597463174, %2900
  %2902 = bitcast i32 %2901 to float
  %2903 = fmul fast float %2805, 5.000000e-01
  %2904 = fmul fast float %2902, %2902
  %2905 = fmul fast float %2904, %2903
  %2906 = fsub fast float 1.500000e+00, %2905
  %2907 = fmul fast float %2902, %2805
  %2908 = fmul fast float %2907, %2906
  %2909 = fsub fast float %2888, %2870
  %2910 = fsub fast float %2898, %2874
  %2911 = fsub fast float %2908, %2878
  %2912 = fmul fast float %2909, %2838
  %2913 = fmul fast float %2910, %2840
  %2914 = fmul fast float %2911, %2845
  %2915 = fadd fast float %2912, %2853
  %2916 = fadd fast float %2913, %2857
  %2917 = fadd fast float %2914, %2861
  %2918 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  %2919 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  %2920 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2921 = fmul fast float %2918, %2918
  %2922 = fmul fast float %2919, %2919
  %2923 = fmul fast float %2920, %2920
  %2924 = fsub fast float %2921, %2803
  %2925 = fsub fast float %2922, %2804
  %2926 = fsub fast float %2923, %2805
  %2927 = fmul fast float %2924, %2828
  %2928 = fmul fast float %2925, %2828
  %2929 = fmul fast float %2926, %2828
  %2930 = fadd fast float %2927, %2803
  %2931 = fadd fast float %2928, %2804
  %2932 = fadd fast float %2929, %2805
  %2933 = fadd fast float %2850, %2814
  %2934 = fsub fast float %2933, %2867
  %2935 = call float @dx.op.unary.f32(i32 7, float %2934)  ; Saturate(value)
  %2936 = fsub fast float %2935, %2814
  %2937 = fmul fast float %2936, %2828
  %2938 = fadd fast float %2937, %2814
  br label %2992

; <label>:2939                                    ; preds = %2827
  %2940 = and i32 %2830, 134217728
  %2941 = icmp eq i32 %2940, 0
  br i1 %2941, label %2976, label %2942

; <label>:2942                                    ; preds = %2939
  %2943 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2944 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %2945 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %2946 = fadd fast float %2943, -5.000000e-01
  %2947 = fadd fast float %2944, -5.000000e-01
  %2948 = fadd fast float %2945, -5.000000e-01
  %2949 = fmul fast float %2946, %2828
  %2950 = fmul fast float %2947, %2828
  %2951 = fmul fast float %2948, %2828
  %2952 = fadd fast float %2949, 5.000000e-01
  %2953 = fadd fast float %2950, 5.000000e-01
  %2954 = fadd fast float %2951, 5.000000e-01
  %2955 = call float @dx.op.unary.f32(i32 24, float %2803)  ; Sqrt(value)
  %2956 = call float @dx.op.unary.f32(i32 24, float %2804)  ; Sqrt(value)
  %2957 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %2958 = fmul fast float %2952, 2.000000e+00
  %2959 = fsub fast float 1.000000e+00, %2958
  %2960 = fmul fast float %2959, %2955
  %2961 = fadd fast float %2960, %2958
  %2962 = fmul fast float %2961, %2955
  %2963 = fmul fast float %2953, 2.000000e+00
  %2964 = fsub fast float 1.000000e+00, %2963
  %2965 = fmul fast float %2964, %2956
  %2966 = fadd fast float %2965, %2963
  %2967 = fmul fast float %2966, %2956
  %2968 = fmul fast float %2954, 2.000000e+00
  %2969 = fsub fast float 1.000000e+00, %2968
  %2970 = fmul fast float %2969, %2957
  %2971 = fadd fast float %2970, %2968
  %2972 = fmul fast float %2971, %2957
  %2973 = fmul fast float %2962, %2962
  %2974 = fmul fast float %2967, %2967
  %2975 = fmul fast float %2972, %2972
  br label %2992

; <label>:2976                                    ; preds = %2939
  %2977 = fmul fast float %415, %415
  %2978 = fmul fast float %419, %419
  %2979 = fmul fast float %423, %423
  %2980 = fadd fast float %2977, -1.000000e+00
  %2981 = fadd fast float %2978, -1.000000e+00
  %2982 = fadd fast float %2979, -1.000000e+00
  %2983 = fmul fast float %2828, %2980
  %2984 = fmul fast float %2828, %2981
  %2985 = fmul fast float %2828, %2982
  %2986 = fadd fast float %2983, 1.000000e+00
  %2987 = fadd fast float %2984, 1.000000e+00
  %2988 = fadd fast float %2985, 1.000000e+00
  %2989 = fmul fast float %2986, %2803
  %2990 = fmul fast float %2987, %2804
  %2991 = fmul fast float %2988, %2805
  br label %2992

; <label>:2992                                    ; preds = %2976, %2942, %2833, %2789
  %2993 = phi float [ %2938, %2833 ], [ %2814, %2942 ], [ %2814, %2976 ], [ 0x3FA23C0BE0000000, %2789 ]
  %2994 = phi float [ %2930, %2833 ], [ %2973, %2942 ], [ %2989, %2976 ], [ 1.000000e+00, %2789 ]
  %2995 = phi float [ %2931, %2833 ], [ %2974, %2942 ], [ %2990, %2976 ], [ 1.000000e+00, %2789 ]
  %2996 = phi float [ %2932, %2833 ], [ %2975, %2942 ], [ %2991, %2976 ], [ 1.000000e+00, %2789 ]
  %2997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2998 = extractvalue %dx.types.CBufRet.i32 %2997, 1
  %2999 = and i32 %2998, 1
  %3000 = icmp ne i32 %2999, 0
  %3001 = add i32 %60, 356
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 32
  %3005 = icmp ne i32 %3004, 0
  %3006 = and i1 %3000, %3005
  %3007 = select i1 %3006, float 1.000000e+00, float %2994
  %3008 = select i1 %3006, float 0x3FD3333340000000, float %2995
  %3009 = select i1 %3006, float 0x3FD3333340000000, float %2996
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = and i32 %3011, 32
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3086, label %3014

; <label>:3014                                    ; preds = %2992
  %3015 = add i32 %60, 140
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3015, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = add i32 %60, 420
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %110, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3027 = extractvalue %dx.types.ResRet.f32 %3023, 3
  %3028 = and i32 %3017, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = lshr i32 %3017, 8
  %3031 = and i32 %3030, 255
  %3032 = uitofp i32 %3031 to float
  %3033 = lshr i32 %3017, 16
  %3034 = and i32 %3033, 255
  %3035 = uitofp i32 %3034 to float
  %3036 = fmul fast float %3035, 0x3F70101000000000
  %3037 = fmul fast float %3024, %3029
  %3038 = fadd fast float %3037, %3032
  %3039 = fmul fast float %3038, 0x3F70101000000000
  %3040 = fadd fast float %3025, -5.000000e-01
  %3041 = fadd fast float %3027, -5.000000e-01
  %3042 = fmul fast float %3040, %3036
  %3043 = fmul fast float %3041, %3036
  %3044 = fadd fast float %3042, 5.000000e-01
  %3045 = fadd fast float %3043, 5.000000e-01
  %3046 = fmul fast float %3044, 2.000000e+00
  %3047 = fadd fast float %3046, -1.000000e+00
  %3048 = fmul fast float %3045, 2.000000e+00
  %3049 = fadd fast float %3048, -1.000000e+00
  %3050 = fadd fast float %3047, %3049
  %3051 = fmul fast float %3050, 5.000000e-01
  %3052 = fsub fast float %3047, %3049
  %3053 = fmul fast float %3052, 5.000000e-01
  %3054 = call float @dx.op.unary.f32(i32 6, float %3051)  ; FAbs(value)
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = call float @dx.op.unary.f32(i32 6, float %3053)  ; FAbs(value)
  %3057 = fsub fast float %3055, %3056
  %3058 = call float @dx.op.dot3.f32(i32 55, float %3051, float %3053, float %3057, float %3051, float %3053, float %3057)  ; Dot3(ax,ay,az,bx,by,bz)
  %3059 = call float @dx.op.unary.f32(i32 25, float %3058)  ; Rsqrt(value)
  %3060 = fmul fast float %3051, %3059
  %3061 = fmul fast float %3053, %3059
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 67108864
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3082, label %3066

; <label>:3066                                    ; preds = %3014
  %3067 = add i32 %60, 328
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = and i32 %3069, 65535
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = and i32 %3073, 65535
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = lshr i32 %3069, 16
  %3077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3076)  ; LegacyF16ToF32(value)
  %3078 = fsub fast float %3039, %3077
  %3079 = fmul fast float %3078, %3071
  %3080 = fadd fast float %3079, %3075
  %3081 = call float @dx.op.unary.f32(i32 7, float %3080)  ; Saturate(value)
  br label %3082

; <label>:3082                                    ; preds = %3066, %3014
  %3083 = phi float [ %3081, %3066 ], [ %3039, %3014 ]
  %3084 = call float @dx.op.dot2.f32(i32 54, float %3060, float %3061, float %2618, float %2619)  ; Dot2(ax,ay,bx,by)
  %3085 = call float @dx.op.dot2.f32(i32 54, float %3060, float %3061, float %2620, float %2621)  ; Dot2(ax,ay,bx,by)
  br label %3086

; <label>:3086                                    ; preds = %3082, %2992
  %3087 = phi float [ %3083, %3082 ], [ 0x3FD6666660000000, %2992 ]
  %3088 = phi float [ %3084, %3082 ], [ 0.000000e+00, %2992 ]
  %3089 = phi float [ %3085, %3082 ], [ 0.000000e+00, %2992 ]
  %3090 = phi float [ %3026, %3082 ], [ 1.000000e+00, %2992 ]
  %3091 = add i32 %60, 208
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = lshr i32 %3093, 22
  %3095 = shl nuw nsw i32 %3094, 5
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 64
  %3100 = icmp eq i32 %3099, 0
  br i1 %3100, label %3134, label %3101

; <label>:3101                                    ; preds = %3086
  %3102 = add i32 %60, 436
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = add i32 %3104, 0
  %3106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 131072
  %3110 = icmp eq i32 %3109, 0
  %3111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3106, %dx.types.Handle %110, float %2714, float %2715, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = fmul fast float %3112, %403
  %3116 = fmul fast float %3113, %406
  %3117 = fmul fast float %3114, %409
  br i1 %3110, label %3124, label %3118

; <label>:3118                                    ; preds = %3101
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = fmul fast float %3120, %3115
  %3122 = fmul fast float %3120, %3116
  %3123 = fmul fast float %3120, %3117
  br label %3124

; <label>:3124                                    ; preds = %3118, %3101
  %3125 = phi float [ %3121, %3118 ], [ %3115, %3101 ]
  %3126 = phi float [ %3122, %3118 ], [ %3116, %3101 ]
  %3127 = phi float [ %3123, %3118 ], [ %3117, %3101 ]
  %3128 = fmul fast float %3125, %3096
  %3129 = select i1 %260, float %3128, float %3125
  %3130 = call float @dx.op.dot3.f32(i32 55, float %3129, float %3126, float %3127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = select i1 %260, float 0.000000e+00, float %3125
  %3132 = select i1 %260, float %3130, float %3126
  %3133 = select i1 %260, float 0.000000e+00, float %3127
  br label %3134

; <label>:3134                                    ; preds = %3124, %3086
  %3135 = phi float [ %3131, %3124 ], [ 0.000000e+00, %3086 ]
  %3136 = phi float [ %3132, %3124 ], [ 0.000000e+00, %3086 ]
  %3137 = phi float [ %3133, %3124 ], [ 0.000000e+00, %3086 ]
  %3138 = add i32 %60, 144
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = and i32 %3140, 255
  %3142 = uitofp i32 %3141 to float
  %3143 = lshr i32 %3140, 8
  %3144 = and i32 %3143, 255
  %3145 = uitofp i32 %3144 to float
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3007, float %3008, float %3009, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = fmul fast float %3145, %3146
  %3148 = fadd fast float %3147, %3142
  %3149 = fmul fast float %3148, 0x3F70101020000000
  %3150 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  br i1 %2606, label %3151, label %3159

; <label>:3151                                    ; preds = %3134
  %3152 = fsub fast float 1.000000e+00, %2787
  %3153 = fmul fast float %3152, %2595
  %3154 = fmul fast float %3152, %2596
  %3155 = fmul fast float %3152, %2597
  %3156 = fmul fast float %3152, %2598
  %3157 = fmul fast float %3152, %2599
  %3158 = fmul fast float %3152, %2600
  br label %3159

; <label>:3159                                    ; preds = %3151, %3134
  %3160 = phi float [ %3153, %3151 ], [ %2595, %3134 ]
  %3161 = phi float [ %3154, %3151 ], [ %2596, %3134 ]
  %3162 = phi float [ %3155, %3151 ], [ %2597, %3134 ]
  %3163 = phi float [ %3156, %3151 ], [ %2598, %3134 ]
  %3164 = phi float [ %3157, %3151 ], [ %2599, %3134 ]
  %3165 = phi float [ %3158, %3151 ], [ %2600, %3134 ]
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 3
  %3169 = icmp eq i32 %3168, 3
  br i1 %3169, label %3248, label %3170

; <label>:3170                                    ; preds = %3159
  %3171 = and i32 %3167, 16
  %3172 = icmp ne i32 %3171, 0
  %3173 = select i1 %3172, float %2787, float 0.000000e+00
  %3174 = icmp eq i32 %3168, 0
  br i1 %3174, label %3175, label %3203

; <label>:3175                                    ; preds = %3170
  %3176 = and i32 %3167, 64
  %3177 = icmp ne i32 %3176, 0
  %3178 = select i1 %3177, float %2787, float 0.000000e+00
  %3179 = fsub fast float %3007, %3160
  %3180 = fsub fast float %3008, %3161
  %3181 = fsub fast float %3009, %3162
  %3182 = fmul fast float %3173, %3179
  %3183 = fmul fast float %3173, %3180
  %3184 = fmul fast float %3173, %3181
  %3185 = fadd fast float %3182, %3160
  %3186 = fadd fast float %3183, %3161
  %3187 = fadd fast float %3184, %3162
  %3188 = fsub fast float %2993, %2601
  %3189 = fmul fast float %3173, %3188
  %3190 = fadd fast float %3189, %2601
  %3191 = fsub fast float %3135, %3163
  %3192 = fsub fast float %3136, %3164
  %3193 = fsub fast float %3137, %3165
  %3194 = fmul fast float %3178, %3191
  %3195 = fmul fast float %3178, %3192
  %3196 = fmul fast float %3178, %3193
  %3197 = fadd fast float %3194, %3163
  %3198 = fadd fast float %3195, %3164
  %3199 = fadd fast float %3196, %3165
  %3200 = fsub fast float %3150, %2604
  %3201 = fmul fast float %3173, %3200
  %3202 = fadd fast float %3201, %2604
  br label %3248

; <label>:3203                                    ; preds = %3170
  %3204 = icmp eq i32 %3168, 1
  br i1 %3204, label %3205, label %3218

; <label>:3205                                    ; preds = %3203
  %3206 = fadd fast float %3007, -1.000000e+00
  %3207 = fadd fast float %3008, -1.000000e+00
  %3208 = fadd fast float %3009, -1.000000e+00
  %3209 = fmul fast float %3173, %3206
  %3210 = fmul fast float %3173, %3207
  %3211 = fmul fast float %3173, %3208
  %3212 = fadd fast float %3209, 1.000000e+00
  %3213 = fadd fast float %3210, 1.000000e+00
  %3214 = fadd fast float %3211, 1.000000e+00
  %3215 = fmul fast float %3212, %3160
  %3216 = fmul fast float %3213, %3161
  %3217 = fmul fast float %3214, %3162
  br label %3248

; <label>:3218                                    ; preds = %3203
  %3219 = icmp eq i32 %3168, 2
  br i1 %3219, label %3220, label %3248

; <label>:3220                                    ; preds = %3218
  %3221 = call float @dx.op.unary.f32(i32 24, float %3007)  ; Sqrt(value)
  %3222 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3223 = call float @dx.op.unary.f32(i32 24, float %3009)  ; Sqrt(value)
  %3224 = fadd fast float %3221, -5.000000e-01
  %3225 = fadd fast float %3222, -5.000000e-01
  %3226 = fadd fast float %3223, -5.000000e-01
  %3227 = fmul fast float %3224, %3173
  %3228 = fmul fast float %3225, %3173
  %3229 = fmul fast float %3226, %3173
  %3230 = fadd fast float %3227, 5.000000e-01
  %3231 = fadd fast float %3228, 5.000000e-01
  %3232 = fadd fast float %3229, 5.000000e-01
  %3233 = fmul fast float %3230, 2.000000e+00
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3160
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3160
  %3238 = fmul fast float %3231, 2.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3238
  %3240 = fmul fast float %3239, %3161
  %3241 = fadd fast float %3240, %3238
  %3242 = fmul fast float %3241, %3161
  %3243 = fmul fast float %3232, 2.000000e+00
  %3244 = fsub fast float 1.000000e+00, %3243
  %3245 = fmul fast float %3244, %3162
  %3246 = fadd fast float %3245, %3243
  %3247 = fmul fast float %3246, %3162
  br label %3248

; <label>:3248                                    ; preds = %3220, %3218, %3205, %3175, %3159
  %3249 = phi float [ %3160, %3159 ], [ %3237, %3220 ], [ %3160, %3218 ], [ %3215, %3205 ], [ %3185, %3175 ]
  %3250 = phi float [ %3161, %3159 ], [ %3242, %3220 ], [ %3161, %3218 ], [ %3216, %3205 ], [ %3186, %3175 ]
  %3251 = phi float [ %3162, %3159 ], [ %3247, %3220 ], [ %3162, %3218 ], [ %3217, %3205 ], [ %3187, %3175 ]
  %3252 = phi float [ %3163, %3159 ], [ %3163, %3220 ], [ %3163, %3218 ], [ %3163, %3205 ], [ %3197, %3175 ]
  %3253 = phi float [ %3164, %3159 ], [ %3164, %3220 ], [ %3164, %3218 ], [ %3164, %3205 ], [ %3198, %3175 ]
  %3254 = phi float [ %3165, %3159 ], [ %3165, %3220 ], [ %3165, %3218 ], [ %3165, %3205 ], [ %3199, %3175 ]
  %3255 = phi float [ %2601, %3159 ], [ %2601, %3220 ], [ %2601, %3218 ], [ %2601, %3205 ], [ %3190, %3175 ]
  %3256 = phi float [ %2604, %3159 ], [ %2604, %3220 ], [ %2604, %3218 ], [ %2604, %3205 ], [ %3202, %3175 ]
  %3257 = and i32 %3167, 12
  %3258 = icmp eq i32 %3257, 12
  br i1 %3258, label %3331, label %3259

; <label>:3259                                    ; preds = %3248
  %3260 = and i32 %3167, 2097184
  %3261 = icmp eq i32 %3260, 2097184
  %3262 = select i1 %3261, float %2787, float 0.000000e+00
  %3263 = and i32 %3167, 4194336
  %3264 = icmp eq i32 %3263, 4194336
  %3265 = select i1 %3264, float %2787, float 0.000000e+00
  %3266 = and i32 %3167, 8388640
  %3267 = icmp eq i32 %3266, 8388640
  %3268 = select i1 %3267, float %2787, float 0.000000e+00
  %3269 = icmp eq i32 %3257, 0
  br i1 %3269, label %3270, label %3283

; <label>:3270                                    ; preds = %3259
  %3271 = fsub fast float %3088, %2593
  %3272 = fsub fast float %3089, %2594
  %3273 = fmul fast float %3262, %3271
  %3274 = fmul fast float %3262, %3272
  %3275 = fadd fast float %3273, %2593
  %3276 = fadd fast float %3274, %2594
  %3277 = fsub fast float %3090, %2603
  %3278 = fmul fast float %3265, %3277
  %3279 = fadd fast float %3278, %2603
  %3280 = fsub fast float %3087, %2602
  %3281 = fmul fast float %3268, %3280
  %3282 = fadd fast float %3281, %2602
  br label %3331

; <label>:3283                                    ; preds = %3259
  %3284 = icmp eq i32 %3257, 4
  br i1 %3284, label %3285, label %3317

; <label>:3285                                    ; preds = %3283
  %3286 = fmul fast float %3262, %3088
  %3287 = fmul fast float %3262, %3089
  %3288 = fadd fast float %3286, %2593
  %3289 = fadd fast float %3287, %2594
  %3290 = call float @dx.op.binary.f32(i32 36, float %2603, float %3090)  ; FMin(a,b)
  %3291 = fsub fast float %3290, %2603
  %3292 = fmul fast float %3291, %3265
  %3293 = fadd fast float %3292, %2603
  %3294 = fadd fast float %3087, %2602
  %3295 = fmul fast float %3294, 0x3FF337FAE0000000
  %3296 = fmul fast float %2602, %2602
  %3297 = fmul fast float %3087, %3087
  %3298 = fadd fast float %3297, %3296
  %3299 = fmul fast float %3298, 0x3FE5152B00000000
  %3300 = fmul fast float %2602, 0xBFCC1F85E0000000
  %3301 = fmul fast float %3300, %3087
  %3302 = fadd fast float %3301, 0xBFE1363700000000
  %3303 = fadd fast float %3302, %3295
  %3304 = fsub fast float %3303, %3299
  %3305 = fmul fast float %3294, 0x3FBA6F0D00000000
  %3306 = fmul fast float %3298, 0x3FD0432880000000
  %3307 = fmul fast float %2602, 0xBFEF110800000000
  %3308 = fmul fast float %3307, %3087
  %3309 = fadd fast float %3308, 1.000000e+00
  %3310 = fsub fast float %3309, %3305
  %3311 = fadd fast float %3310, %3306
  %3312 = fdiv fast float %3304, %3311
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3314 = fsub fast float %3313, %2602
  %3315 = fmul fast float %3314, %3268
  %3316 = fadd fast float %3315, %2602
  br label %3331

; <label>:3317                                    ; preds = %3283
  %3318 = icmp eq i32 %3257, 8
  br i1 %3318, label %3319, label %3331

; <label>:3319                                    ; preds = %3317
  %3320 = fmul fast float %3262, %3088
  %3321 = fmul fast float %3262, %3089
  %3322 = fadd fast float %3320, %2593
  %3323 = fadd fast float %3321, %2594
  %3324 = call float @dx.op.binary.f32(i32 36, float %2603, float %3090)  ; FMin(a,b)
  %3325 = fsub fast float %3324, %2603
  %3326 = fmul fast float %3325, %3265
  %3327 = fadd fast float %3326, %2603
  %3328 = fsub fast float %3087, %2602
  %3329 = fmul fast float %3268, %3328
  %3330 = fadd fast float %3329, %2602
  br label %3331

; <label>:3331                                    ; preds = %3319, %3317, %3285, %3270, %3248, %2786, %2605, %2592
  %3332 = phi float [ %2593, %3248 ], [ %2593, %2786 ], [ %2593, %2592 ], [ %2593, %2605 ], [ %3275, %3270 ], [ %3288, %3285 ], [ %2593, %3317 ], [ %3322, %3319 ]
  %3333 = phi float [ %2594, %3248 ], [ %2594, %2786 ], [ %2594, %2592 ], [ %2594, %2605 ], [ %3276, %3270 ], [ %3289, %3285 ], [ %2594, %3317 ], [ %3323, %3319 ]
  %3334 = phi float [ %3249, %3248 ], [ %2595, %2786 ], [ %2595, %2592 ], [ %2595, %2605 ], [ %3249, %3270 ], [ %3249, %3285 ], [ %3249, %3317 ], [ %3249, %3319 ]
  %3335 = phi float [ %3250, %3248 ], [ %2596, %2786 ], [ %2596, %2592 ], [ %2596, %2605 ], [ %3250, %3270 ], [ %3250, %3285 ], [ %3250, %3317 ], [ %3250, %3319 ]
  %3336 = phi float [ %3251, %3248 ], [ %2597, %2786 ], [ %2597, %2592 ], [ %2597, %2605 ], [ %3251, %3270 ], [ %3251, %3285 ], [ %3251, %3317 ], [ %3251, %3319 ]
  %3337 = phi float [ %3252, %3248 ], [ %2598, %2786 ], [ %2598, %2592 ], [ %2598, %2605 ], [ %3252, %3270 ], [ %3252, %3285 ], [ %3252, %3317 ], [ %3252, %3319 ]
  %3338 = phi float [ %3253, %3248 ], [ %2599, %2786 ], [ %2599, %2592 ], [ %2599, %2605 ], [ %3253, %3270 ], [ %3253, %3285 ], [ %3253, %3317 ], [ %3253, %3319 ]
  %3339 = phi float [ %3254, %3248 ], [ %2600, %2786 ], [ %2600, %2592 ], [ %2600, %2605 ], [ %3254, %3270 ], [ %3254, %3285 ], [ %3254, %3317 ], [ %3254, %3319 ]
  %3340 = phi float [ %3255, %3248 ], [ %2601, %2786 ], [ %2601, %2592 ], [ %2601, %2605 ], [ %3255, %3270 ], [ %3255, %3285 ], [ %3255, %3317 ], [ %3255, %3319 ]
  %3341 = phi float [ %2602, %3248 ], [ %2602, %2786 ], [ %2602, %2592 ], [ %2602, %2605 ], [ %3282, %3270 ], [ %3316, %3285 ], [ %2602, %3317 ], [ %3330, %3319 ]
  %3342 = phi float [ %2603, %3248 ], [ %2603, %2786 ], [ %2603, %2592 ], [ %2603, %2605 ], [ %3279, %3270 ], [ %3293, %3285 ], [ %2603, %3317 ], [ %3327, %3319 ]
  %3343 = phi float [ %3256, %3248 ], [ %2604, %2786 ], [ %2604, %2592 ], [ %2604, %2605 ], [ %3256, %3270 ], [ %3256, %3285 ], [ %3256, %3317 ], [ %3256, %3319 ]
  %3344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3345 = extractvalue %dx.types.CBufRet.f32 %3344, 0
  %3346 = call float @dx.op.dot2.f32(i32 54, float %3332, float %3333, float %3332, float %3333)  ; Dot2(ax,ay,bx,by)
  %3347 = fmul fast float %3346, 0x3FE3333340000000
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3333, float %3348, float %3332, float %3333, float %3348)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call float @dx.op.unary.f32(i32 25, float %3349)  ; Rsqrt(value)
  %3351 = fmul fast float %3350, %3332
  %3352 = fmul fast float %3350, %3333
  %3353 = fmul fast float %3348, %3350
  %3354 = fmul fast float %3353, %121
  %3355 = fmul fast float %3353, %122
  %3356 = fmul fast float %3353, %123
  %3357 = fmul fast float %3351, %85
  %3358 = fmul fast float %3351, %86
  %3359 = fmul fast float %3351, %87
  %3360 = fadd fast float %3354, %3357
  %3361 = fadd fast float %3355, %3358
  %3362 = fadd fast float %3356, %3359
  %3363 = fmul fast float %133, %3352
  %3364 = fmul fast float %134, %3352
  %3365 = fmul fast float %135, %3352
  %3366 = fadd fast float %3360, %3363
  %3367 = fadd fast float %3361, %3364
  %3368 = fadd fast float %3362, %3365
  %3369 = call float @dx.op.dot3.f32(i32 55, float %3366, float %3367, float %3368, float %3366, float %3367, float %3368)  ; Dot3(ax,ay,az,bx,by,bz)
  %3370 = call float @dx.op.unary.f32(i32 25, float %3369)  ; Rsqrt(value)
  %3371 = fmul fast float %3366, %3370
  %3372 = fmul fast float %3367, %3370
  %3373 = fmul fast float %3368, %3370
  %3374 = icmp eq i32 %61, 65535
  br i1 %3374, label %3889, label %3375

; <label>:3375                                    ; preds = %3331
  %3376 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3377 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3378 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3379 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3380 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3381 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3382 = fadd fast float %3376, %62
  %3383 = fadd fast float %3377, %63
  %3384 = fadd fast float %3378, %64
  %3385 = fadd fast float %3379, %62
  %3386 = fadd fast float %3380, %63
  %3387 = fadd fast float %3381, %64
  %3388 = mul i32 %61, 48
  %3389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = extractvalue %dx.types.ResRet.f32 %3389, 1
  %3392 = extractvalue %dx.types.ResRet.f32 %3389, 2
  %3393 = add i32 %3388, 16
  %3394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.ResRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.ResRet.f32 %3394, 2
  %3398 = add i32 %3388, 32
  %3399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.f32 %3399, 0
  %3401 = extractvalue %dx.types.ResRet.f32 %3399, 1
  %3402 = extractvalue %dx.types.ResRet.f32 %3399, 2
  %3403 = extractvalue %dx.types.ResRet.f32 %3399, 3
  %3404 = bitcast float %3403 to i32
  %3405 = fmul fast float %3390, %62
  %3406 = fmul fast float %3391, %63
  %3407 = fmul fast float %3392, %64
  %3408 = fsub fast float %3405, %3395
  %3409 = fsub fast float %3406, %3396
  %3410 = fsub fast float %3407, %3397
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3414 = fmul fast float %3411, %3400
  %3415 = fmul fast float %3412, %3401
  %3416 = fmul fast float %3413, %3402
  %3417 = fadd fast float %3400, -1.000000e+00
  %3418 = fadd fast float %3401, -1.000000e+00
  %3419 = fadd fast float %3402, -1.000000e+00
  %3420 = call float @dx.op.unary.f32(i32 27, float %3414)  ; Round_ni(value)
  %3421 = call float @dx.op.unary.f32(i32 27, float %3415)  ; Round_ni(value)
  %3422 = call float @dx.op.unary.f32(i32 27, float %3416)  ; Round_ni(value)
  %3423 = call float @dx.op.binary.f32(i32 36, float %3420, float %3417)  ; FMin(a,b)
  %3424 = call float @dx.op.binary.f32(i32 36, float %3421, float %3418)  ; FMin(a,b)
  %3425 = call float @dx.op.binary.f32(i32 36, float %3422, float %3419)  ; FMin(a,b)
  %3426 = fmul fast float %3425, %3401
  %3427 = fadd fast float %3426, %3424
  %3428 = fmul fast float %3427, %3400
  %3429 = fadd fast float %3428, %3423
  %3430 = fptosi float %3429 to i32
  %3431 = add nsw i32 %3430, %3404
  %3432 = shl nsw i32 %3431, 2
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = lshr i32 %3434, 16
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3858, label %3437

; <label>:3437                                    ; preds = %3375
  br label %3438

; <label>:3438                                    ; preds = %3559, %3437
  %3439 = phi i32 [ %3461, %3559 ], [ %3435, %3437 ]
  %3440 = phi float [ %3560, %3559 ], [ 0.000000e+00, %3437 ]
  %3441 = phi float [ %3561, %3559 ], [ %3345, %3437 ]
  %3442 = phi float [ %3562, %3559 ], [ %3343, %3437 ]
  %3443 = phi float [ %3563, %3559 ], [ 0.000000e+00, %3437 ]
  %3444 = phi float [ %3564, %3559 ], [ 0.000000e+00, %3437 ]
  %3445 = phi float [ %3565, %3559 ], [ %3337, %3437 ]
  %3446 = phi float [ %3566, %3559 ], [ %3338, %3437 ]
  %3447 = phi float [ %3567, %3559 ], [ %3339, %3437 ]
  %3448 = phi float [ %3568, %3559 ], [ %3371, %3437 ]
  %3449 = phi float [ %3569, %3559 ], [ %3372, %3437 ]
  %3450 = phi float [ %3570, %3559 ], [ %3373, %3437 ]
  %3451 = phi float [ %3571, %3559 ], [ %3342, %3437 ]
  %3452 = phi float [ %3572, %3559 ], [ %3341, %3437 ]
  %3453 = phi float [ %3573, %3559 ], [ 0.000000e+00, %3437 ]
  %3454 = phi float [ %3574, %3559 ], [ %3340, %3437 ]
  %3455 = phi float [ %3575, %3559 ], [ %3334, %3437 ]
  %3456 = phi float [ %3576, %3559 ], [ %3335, %3437 ]
  %3457 = phi float [ %3577, %3559 ], [ %3336, %3437 ]
  %3458 = shl nuw nsw i32 %3439, 2
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = lshr i32 %3460, 16
  %3462 = shl i32 %3460, 8
  %3463 = and i32 %3462, 16776960
  %3464 = or i32 %3463, 48
  %3465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = or i32 %3463, 64
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.i32 %3470, 1
  %3473 = or i32 %3463, 80
  %3474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3473, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 3
  %3477 = or i32 %3463, 96
  %3478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.ResRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.ResRet.f32 %3478, 2
  %3482 = extractvalue %dx.types.ResRet.f32 %3478, 3
  %3483 = or i32 %3463, 112
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3486 = or i32 %3463, 128
  %3487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.f32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.f32 %3487, 1
  %3490 = extractvalue %dx.types.ResRet.f32 %3487, 2
  %3491 = extractvalue %dx.types.ResRet.f32 %3487, 3
  %3492 = or i32 %3463, 144
  %3493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3492, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.ResRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.ResRet.f32 %3493, 2
  %3497 = extractvalue %dx.types.ResRet.f32 %3493, 3
  %3498 = or i32 %3463, 160
  %3499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.f32 %3499, 0
  %3501 = extractvalue %dx.types.ResRet.f32 %3499, 1
  %3502 = extractvalue %dx.types.ResRet.f32 %3499, 2
  %3503 = extractvalue %dx.types.ResRet.f32 %3499, 3
  %3504 = or i32 %3463, 192
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = or i32 %3463, 208
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = or i32 %3463, 248
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = extractvalue %dx.types.ResRet.f32 %3514, 3
  %3519 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3520 = or i32 %3463, 16
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3525 = extractvalue %dx.types.ResRet.f32 %3521, 3
  %3526 = call float @dx.op.dot4.f32(i32 56, float %3522, float %3523, float %3524, float %3525, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3527 = or i32 %3463, 32
  %3528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.ResRet.f32 %3528, 1
  %3531 = extractvalue %dx.types.ResRet.f32 %3528, 2
  %3532 = extractvalue %dx.types.ResRet.f32 %3528, 3
  %3533 = call float @dx.op.dot4.f32(i32 56, float %3529, float %3530, float %3531, float %3532, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3534 = call float @dx.op.unary.f32(i32 27, float %3519)  ; Round_ni(value)
  %3535 = call float @dx.op.unary.f32(i32 6, float %3534)  ; FAbs(value)
  %3536 = call float @dx.op.unary.f32(i32 27, float %3526)  ; Round_ni(value)
  %3537 = call float @dx.op.unary.f32(i32 6, float %3536)  ; FAbs(value)
  %3538 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3539 = call float @dx.op.unary.f32(i32 27, float %3538)  ; Round_ni(value)
  %3540 = fadd fast float %3537, %3535
  %3541 = fadd fast float %3540, %3539
  %3542 = fcmp fast oeq float %3541, 0.000000e+00
  %3543 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %3382, float %3383, float %3384, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3544 = call float @dx.op.dot4.f32(i32 56, float %3522, float %3523, float %3524, float %3525, float %3382, float %3383, float %3384, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3545 = call float @dx.op.dot4.f32(i32 56, float %3515, float %3516, float %3517, float %3518, float %3385, float %3386, float %3387, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3546 = call float @dx.op.dot4.f32(i32 56, float %3522, float %3523, float %3524, float %3525, float %3385, float %3386, float %3387, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3547 = fsub fast float %3543, %3519
  %3548 = fsub fast float %3545, %3519
  %3549 = fsub fast float %3544, %3526
  %3550 = fsub fast float %3546, %3526
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3466, float %3467, float %3468, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 2
  %3554 = fadd fast float %3553, %3551
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3552, 0
  %3557 = fcmp fast ogt float %3555, %3556
  %3558 = and i1 %3542, %3557
  br i1 %3558, label %3579, label %3559

; <label>:3559                                    ; preds = %3844, %3662, %3579, %3438
  %3560 = phi float [ %3440, %3579 ], [ %3665, %3662 ], [ %3665, %3844 ], [ %3440, %3438 ]
  %3561 = phi float [ %3441, %3579 ], [ %3441, %3662 ], [ %3819, %3844 ], [ %3441, %3438 ]
  %3562 = phi float [ %3442, %3579 ], [ %3442, %3662 ], [ %3817, %3844 ], [ %3442, %3438 ]
  %3563 = phi float [ %3443, %3579 ], [ %3443, %3662 ], [ %3789, %3844 ], [ %3443, %3438 ]
  %3564 = phi float [ %3444, %3579 ], [ %3444, %3662 ], [ %3787, %3844 ], [ %3444, %3438 ]
  %3565 = phi float [ %3445, %3579 ], [ %3445, %3662 ], [ %3854, %3844 ], [ %3445, %3438 ]
  %3566 = phi float [ %3446, %3579 ], [ %3446, %3662 ], [ %3855, %3844 ], [ %3446, %3438 ]
  %3567 = phi float [ %3447, %3579 ], [ %3447, %3662 ], [ %3856, %3844 ], [ %3447, %3438 ]
  %3568 = phi float [ %3448, %3579 ], [ %3448, %3662 ], [ %3768, %3844 ], [ %3448, %3438 ]
  %3569 = phi float [ %3449, %3579 ], [ %3449, %3662 ], [ %3769, %3844 ], [ %3449, %3438 ]
  %3570 = phi float [ %3450, %3579 ], [ %3450, %3662 ], [ %3770, %3844 ], [ %3450, %3438 ]
  %3571 = phi float [ %3451, %3579 ], [ %3451, %3662 ], [ %3797, %3844 ], [ %3451, %3438 ]
  %3572 = phi float [ %3452, %3579 ], [ %3452, %3662 ], [ %3794, %3844 ], [ %3452, %3438 ]
  %3573 = phi float [ %3453, %3579 ], [ %3453, %3662 ], [ %3791, %3844 ], [ %3453, %3438 ]
  %3574 = phi float [ %3454, %3579 ], [ %3454, %3662 ], [ %3785, %3844 ], [ %3454, %3438 ]
  %3575 = phi float [ %3455, %3579 ], [ %3455, %3662 ], [ %3780, %3844 ], [ %3455, %3438 ]
  %3576 = phi float [ %3456, %3579 ], [ %3456, %3662 ], [ %3781, %3844 ], [ %3456, %3438 ]
  %3577 = phi float [ %3457, %3579 ], [ %3457, %3662 ], [ %3782, %3844 ], [ %3457, %3438 ]
  %3578 = icmp eq i32 %3461, 0
  br i1 %3578, label %3857, label %3438

; <label>:3579                                    ; preds = %3438
  %3580 = extractvalue %dx.types.ResRet.f32 %3465, 3
  %3581 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3582 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3583 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3586 = extractvalue %dx.types.ResRet.i32 %3470, 3
  %3587 = extractvalue %dx.types.ResRet.i32 %3470, 2
  %3588 = bitcast float %3580 to i32
  %3589 = add i32 %3586, 0
  %3590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3592 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3590, %dx.types.Handle %3591, float %3519, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float %3547, float %3549, float undef, float %3548, float %3550, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = fmul fast float %3593, %3585
  %3595 = fadd fast float %3594, %3584
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = fmul fast float %3519, %3479
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3480, float %3526, float %3597)  ; FMad(a,b,c)
  %3599 = fadd fast float %3598, %3583
  %3600 = fmul fast float %3519, %3481
  %3601 = call float @dx.op.tertiary.f32(i32 46, float %3482, float %3526, float %3600)  ; FMad(a,b,c)
  %3602 = fadd fast float %3601, %3582
  %3603 = fmul fast float %3547, %3479
  %3604 = call float @dx.op.tertiary.f32(i32 46, float %3480, float %3549, float %3603)  ; FMad(a,b,c)
  %3605 = fmul fast float %3547, %3481
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3482, float %3549, float %3605)  ; FMad(a,b,c)
  %3607 = fmul fast float %3548, %3479
  %3608 = call float @dx.op.tertiary.f32(i32 46, float %3480, float %3550, float %3607)  ; FMad(a,b,c)
  %3609 = fmul fast float %3548, %3481
  %3610 = call float @dx.op.tertiary.f32(i32 46, float %3482, float %3550, float %3609)  ; FMad(a,b,c)
  %3611 = add i32 %3587, 0
  %3612 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3611, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3613 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3612, %dx.types.Handle %3591, float %3599, float %3602, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3606, float undef, float %3608, float %3610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = and i32 %3588, 1024
  %3616 = icmp ne i32 %3615, 0
  %3617 = fcmp fast ogt float %3614, 0x3FE0101020000000
  %3618 = uitofp i1 %3617 to float
  %3619 = select i1 %3616, float %3618, float %3614
  %3620 = and i32 %3588, 8192
  %3621 = icmp ne i32 %3620, 0
  %3622 = select i1 %3621, float %3581, float 1.000000e+00
  %3623 = fmul fast float %3519, 2.000000e+00
  %3624 = fadd fast float %3623, -1.000000e+00
  %3625 = call float @dx.op.unary.f32(i32 6, float %3624)  ; FAbs(value)
  %3626 = fmul fast float %3625, %3512
  %3627 = fsub fast float %3626, %3512
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3629 = fmul fast float %3526, 2.000000e+00
  %3630 = fadd fast float %3629, -1.000000e+00
  %3631 = call float @dx.op.unary.f32(i32 6, float %3630)  ; FAbs(value)
  %3632 = fmul fast float %3631, %3513
  %3633 = fsub fast float %3632, %3513
  %3634 = call float @dx.op.unary.f32(i32 7, float %3633)  ; Saturate(value)
  %3635 = fmul fast float %3538, %3475
  %3636 = fsub fast float %3635, %3475
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  %3638 = fmul fast float %3596, %3622
  %3639 = fmul fast float %3638, %3593
  %3640 = fmul fast float %3639, %3628
  %3641 = fmul fast float %3640, %3619
  %3642 = fmul fast float %3641, %3634
  %3643 = fmul fast float %3642, %3637
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 1
  %3646 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3647 = fsub fast float %3555, %3646
  %3648 = fmul fast float %3647, %3645
  %3649 = call float @dx.op.unary.f32(i32 7, float %3648)  ; Saturate(value)
  %3650 = fmul fast float %3643, %3476
  %3651 = fadd fast float %3643, %3476
  %3652 = fmul fast float %3651, %3485
  %3653 = fsub fast float %3652, %3485
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = and i32 %3588, 128
  %3656 = icmp ne i32 %3655, 0
  %3657 = select i1 %3656, float %3654, float %3650
  %3658 = fmul fast float %3657, %3649
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = fcmp fast ugt float %3658, %3660
  br i1 %3661, label %3662, label %3559

; <label>:3662                                    ; preds = %3579
  %3663 = select i1 %3621, float %3658, float 0.000000e+00
  %3664 = fadd fast float %3663, %3440
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  br i1 %3621, label %3559, label %3666

; <label>:3666                                    ; preds = %3662
  %3667 = and i32 %3588, 4
  %3668 = and i32 %3588, 8
  %3669 = add i32 %3471, 0
  %3670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3669, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3672 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3670, %dx.types.Handle %3671, float %3599, float %3602, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3606, float undef, float %3608, float %3610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = bitcast float %3497 to i32
  %3678 = and i32 %3677, 255
  %3679 = uitofp i32 %3678 to float
  %3680 = lshr i32 %3677, 8
  %3681 = and i32 %3680, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = fmul fast float %3676, %3679
  %3684 = fadd fast float %3683, %3682
  %3685 = fmul fast float %3684, 0x3F70101000000000
  %3686 = add i32 %3472, 0
  %3687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3686, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3687, %dx.types.Handle %3671, float %3599, float %3602, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3606, float undef, float %3608, float %3610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  %3692 = extractvalue %dx.types.ResRet.f32 %3688, 3
  %3693 = bitcast float %3491 to i32
  %3694 = and i32 %3693, 255
  %3695 = uitofp i32 %3694 to float
  %3696 = lshr i32 %3693, 8
  %3697 = and i32 %3696, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = lshr i32 %3693, 16
  %3700 = and i32 %3699, 255
  %3701 = uitofp i32 %3700 to float
  %3702 = fmul fast float %3701, 0x3F70101000000000
  %3703 = fmul fast float %3689, %3695
  %3704 = fadd fast float %3703, %3698
  %3705 = fmul fast float %3704, 0x3F70101000000000
  %3706 = fadd fast float %3690, -5.000000e-01
  %3707 = fadd fast float %3692, -5.000000e-01
  %3708 = fmul fast float %3706, %3702
  %3709 = fmul fast float %3707, %3702
  %3710 = fadd fast float %3708, 5.000000e-01
  %3711 = fadd fast float %3709, 5.000000e-01
  %3712 = fmul fast float %3673, %3500
  %3713 = fmul fast float %3674, %3501
  %3714 = fmul fast float %3675, %3502
  %3715 = fmul fast float %3710, 2.000000e+00
  %3716 = fadd fast float %3715, -1.000000e+00
  %3717 = fmul fast float %3711, 2.000000e+00
  %3718 = fadd fast float %3717, -1.000000e+00
  %3719 = fadd fast float %3716, %3718
  %3720 = fmul fast float %3719, 5.000000e-01
  %3721 = fsub fast float %3716, %3718
  %3722 = fmul fast float %3721, 5.000000e-01
  %3723 = call float @dx.op.unary.f32(i32 6, float %3720)  ; FAbs(value)
  %3724 = fsub fast float 1.000000e+00, %3723
  %3725 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3726 = fsub fast float %3724, %3725
  %3727 = call float @dx.op.dot3.f32(i32 55, float %3720, float %3722, float %3726, float %3720, float %3722, float %3726)  ; Dot3(ax,ay,az,bx,by,bz)
  %3728 = call float @dx.op.unary.f32(i32 25, float %3727)  ; Rsqrt(value)
  %3729 = fmul fast float %3720, %3728
  %3730 = fmul fast float %3722, %3728
  %3731 = fmul fast float %3728, %3726
  %3732 = fmul fast float %3731, %3466
  %3733 = fmul fast float %3731, %3467
  %3734 = fmul fast float %3731, %3468
  %3735 = fmul fast float %3729, %3488
  %3736 = fmul fast float %3729, %3489
  %3737 = fmul fast float %3729, %3490
  %3738 = fadd fast float %3735, %3732
  %3739 = fadd fast float %3736, %3733
  %3740 = fadd fast float %3737, %3734
  %3741 = fmul fast float %3730, %3494
  %3742 = fmul fast float %3730, %3495
  %3743 = fmul fast float %3730, %3496
  %3744 = fadd fast float %3738, %3741
  %3745 = fadd fast float %3739, %3742
  %3746 = fadd fast float %3740, %3743
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3744, float %3745, float %3746, float %3744, float %3745, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call float @dx.op.unary.f32(i32 25, float %3747)  ; Rsqrt(value)
  %3749 = fmul fast float %3744, %3748
  %3750 = fmul fast float %3745, %3748
  %3751 = fmul fast float %3746, %3748
  %3752 = icmp ne i32 %3668, 0
  %3753 = select i1 %3752, float 1.000000e+00, float 0.000000e+00
  %3754 = fmul fast float %3658, %3753
  %3755 = and i32 %3588, 1
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3757, label %3761

; <label>:3757                                    ; preds = %3666
  %3758 = fsub fast float %3749, %3448
  %3759 = fsub fast float %3750, %3449
  %3760 = fsub fast float %3751, %3450
  br label %3761

; <label>:3761                                    ; preds = %3757, %3666
  %3762 = phi float [ %3758, %3757 ], [ %3749, %3666 ]
  %3763 = phi float [ %3759, %3757 ], [ %3750, %3666 ]
  %3764 = phi float [ %3760, %3757 ], [ %3751, %3666 ]
  %3765 = fmul float %3764, %3754
  %3766 = fmul float %3763, %3754
  %3767 = fmul float %3762, %3754
  %3768 = fadd fast float %3767, %3448
  %3769 = fadd fast float %3766, %3449
  %3770 = fadd fast float %3765, %3450
  %3771 = icmp ne i32 %3667, 0
  %3772 = select i1 %3771, float 1.000000e+00, float 0.000000e+00
  %3773 = fmul fast float %3658, %3772
  %3774 = fsub fast float %3712, %3455
  %3775 = fsub fast float %3713, %3456
  %3776 = fsub fast float %3714, %3457
  %3777 = fmul fast float %3774, %3773
  %3778 = fmul fast float %3775, %3773
  %3779 = fmul fast float %3776, %3773
  %3780 = fadd fast float %3777, %3455
  %3781 = fadd fast float %3778, %3456
  %3782 = fadd fast float %3779, %3457
  %3783 = fsub fast float %3685, %3454
  %3784 = fmul fast float %3783, %3773
  %3785 = fadd fast float %3784, %3454
  %3786 = fmul fast float %3773, %3444
  %3787 = fsub fast float %3444, %3786
  %3788 = fmul fast float %3773, %3443
  %3789 = fsub fast float %3443, %3788
  %3790 = fadd fast float %3658, %3453
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = fsub fast float %3705, %3452
  %3793 = fmul fast float %3792, %3754
  %3794 = fadd fast float %3793, %3452
  %3795 = fsub fast float %3691, %3451
  %3796 = fmul fast float %3795, %3754
  %3797 = fadd fast float %3796, %3451
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3712, float %3713, float %3714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = fmul fast float %3801, %3798
  %3803 = fadd fast float %3802, %3800
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = bitcast float %3503 to i32
  %3806 = and i32 %3805, 65535
  %3807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3806)  ; LegacyF16ToF32(value)
  %3808 = lshr i32 %3805, 16
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = fcmp fast oge float %3807, 0.000000e+00
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = select i1 %3810, float %3807, float %3812
  %3814 = fadd fast float %3813, %3809
  %3815 = fsub fast float %3804, %3442
  %3816 = fmul fast float %3815, %3658
  %3817 = fadd fast float %3816, %3442
  %3818 = fmul fast float %3814, %3658
  %3819 = call float @dx.op.binary.f32(i32 35, float %3441, float %3818)  ; FMax(a,b)
  %3820 = and i32 %3588, 16
  %3821 = icmp eq i32 %3820, 0
  br i1 %3821, label %3844, label %3822

; <label>:3822                                    ; preds = %3761
  %3823 = bitcast float %3509 to i32
  %3824 = add i32 %3506, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3825, %dx.types.Handle %3671, float %3599, float %3602, float undef, float undef, i32 0, i32 0, i32 undef, float %3604, float %3606, float undef, float %3608, float %3610, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = and i32 %3823, 65535
  %3831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3830)  ; LegacyF16ToF32(value)
  %3832 = fmul fast float %3827, %3500
  %3833 = fmul fast float %3828, %3501
  %3834 = fmul fast float %3829, %3502
  %3835 = and i32 %3588, 16384
  %3836 = icmp ne i32 %3835, 0
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 0
  %3839 = select i1 %3836, float %3838, float 1.000000e+00
  %3840 = fmul fast float %3839, %3831
  %3841 = fmul fast float %3832, %3840
  %3842 = fmul fast float %3833, %3840
  %3843 = fmul fast float %3834, %3840
  br label %3844

; <label>:3844                                    ; preds = %3822, %3761
  %3845 = phi float [ %3841, %3822 ], [ 0.000000e+00, %3761 ]
  %3846 = phi float [ %3842, %3822 ], [ 0.000000e+00, %3761 ]
  %3847 = phi float [ %3843, %3822 ], [ 0.000000e+00, %3761 ]
  %3848 = fsub fast float %3845, %3445
  %3849 = fsub fast float %3846, %3446
  %3850 = fsub fast float %3847, %3447
  %3851 = fmul fast float %3848, %3658
  %3852 = fmul fast float %3849, %3658
  %3853 = fmul fast float %3850, %3658
  %3854 = fadd fast float %3851, %3445
  %3855 = fadd fast float %3852, %3446
  %3856 = fadd fast float %3853, %3447
  br label %3559

; <label>:3857                                    ; preds = %3559
  br label %3858

; <label>:3858                                    ; preds = %3857, %3375
  %3859 = phi float [ 0.000000e+00, %3375 ], [ %3560, %3857 ]
  %3860 = phi float [ %3345, %3375 ], [ %3561, %3857 ]
  %3861 = phi float [ %3343, %3375 ], [ %3562, %3857 ]
  %3862 = phi float [ 0.000000e+00, %3375 ], [ %3563, %3857 ]
  %3863 = phi float [ 0.000000e+00, %3375 ], [ %3564, %3857 ]
  %3864 = phi float [ %3337, %3375 ], [ %3565, %3857 ]
  %3865 = phi float [ %3338, %3375 ], [ %3566, %3857 ]
  %3866 = phi float [ %3339, %3375 ], [ %3567, %3857 ]
  %3867 = phi float [ %3371, %3375 ], [ %3568, %3857 ]
  %3868 = phi float [ %3372, %3375 ], [ %3569, %3857 ]
  %3869 = phi float [ %3373, %3375 ], [ %3570, %3857 ]
  %3870 = phi float [ %3342, %3375 ], [ %3571, %3857 ]
  %3871 = phi float [ %3341, %3375 ], [ %3572, %3857 ]
  %3872 = phi float [ 0.000000e+00, %3375 ], [ %3573, %3857 ]
  %3873 = phi float [ %3340, %3375 ], [ %3574, %3857 ]
  %3874 = phi float [ %3334, %3375 ], [ %3575, %3857 ]
  %3875 = phi float [ %3335, %3375 ], [ %3576, %3857 ]
  %3876 = phi float [ %3336, %3375 ], [ %3577, %3857 ]
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3868, float %3869, float %3867, float %3868, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.unary.f32(i32 25, float %3877)  ; Rsqrt(value)
  %3879 = fmul fast float %3878, %3867
  %3880 = fmul fast float %3878, %3868
  %3881 = fmul fast float %3878, %3869
  %3882 = fadd fast float %3872, %1123
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float %3879, float %3880, float %3881)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call float @dx.op.unary.f32(i32 25, float %3884)  ; Rsqrt(value)
  %3886 = fmul fast float %3885, %3879
  %3887 = fmul fast float %3885, %3880
  %3888 = fmul fast float %3885, %3881
  br label %3889

; <label>:3889                                    ; preds = %3858, %3331
  %3890 = phi float [ %3886, %3858 ], [ %3371, %3331 ]
  %3891 = phi float [ %3887, %3858 ], [ %3372, %3331 ]
  %3892 = phi float [ %3888, %3858 ], [ %3373, %3331 ]
  %3893 = phi float [ %3864, %3858 ], [ %3337, %3331 ]
  %3894 = phi float [ %3865, %3858 ], [ %3338, %3331 ]
  %3895 = phi float [ %3866, %3858 ], [ %3339, %3331 ]
  %3896 = phi float [ %3874, %3858 ], [ %3334, %3331 ]
  %3897 = phi float [ %3875, %3858 ], [ %3335, %3331 ]
  %3898 = phi float [ %3876, %3858 ], [ %3336, %3331 ]
  %3899 = phi float [ %3873, %3858 ], [ %3340, %3331 ]
  %3900 = phi float [ %3883, %3858 ], [ %1123, %3331 ]
  %3901 = phi float [ %3871, %3858 ], [ %3341, %3331 ]
  %3902 = phi float [ %3870, %3858 ], [ %3342, %3331 ]
  %3903 = phi float [ %3863, %3858 ], [ 0.000000e+00, %3331 ]
  %3904 = phi float [ %3862, %3858 ], [ 0.000000e+00, %3331 ]
  %3905 = phi float [ %3859, %3858 ], [ 0.000000e+00, %3331 ]
  %3906 = phi float [ %3860, %3858 ], [ %3345, %3331 ]
  %3907 = phi float [ %3861, %3858 ], [ %3343, %3331 ]
  %3908 = fadd fast float %3899, 0xBFB99999A0000000
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3909, 0x3FF1C71C80000000
  %3911 = call float @dx.op.binary.f32(i32 36, float %3899, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3912 = fsub fast float 1.000000e+00, %3910
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = fmul fast float %3913, %3896
  %3915 = fmul fast float %3913, %3897
  %3916 = fmul fast float %3913, %3898
  %3917 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3918 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3919 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  %3920 = fmul fast float %3910, %3896
  %3921 = fmul fast float %3910, %3897
  %3922 = fmul fast float %3910, %3898
  %3923 = fadd fast float %3920, %3911
  %3924 = fadd fast float %3921, %3911
  %3925 = fadd fast float %3922, %3911
  %3926 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3927 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3928 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3929 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.i32 %3930, 3
  %3932 = and i32 %3931, 8
  %3933 = icmp ne i32 %3932, 0
  %3934 = call float @dx.op.binary.f32(i32 35, float %3917, float %3896)  ; FMax(a,b)
  %3935 = call float @dx.op.binary.f32(i32 35, float %3918, float %3896)  ; FMax(a,b)
  %3936 = call float @dx.op.binary.f32(i32 35, float %3919, float %3896)  ; FMax(a,b)
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3917, float %3918, float %3919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = select i1 %260, float %3896, float %3917
  %3939 = select i1 %260, float %3937, float %3918
  %3940 = select i1 %260, float 1.000000e+00, float %3919
  %3941 = select i1 %3933, float %3934, float %3938
  %3942 = select i1 %3933, float %3935, float %3939
  %3943 = select i1 %3933, float %3936, float %3940
  %3944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3945 = extractvalue %dx.types.CBufRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.CBufRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.CBufRet.f32 %3944, 2
  %3948 = fadd fast float %3945, %201
  %3949 = fadd fast float %3946, %202
  %3950 = fadd fast float %3947, %203
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3954 = fsub fast float %3948, %3952
  %3955 = fsub fast float %3949, %3953
  %3956 = fmul fast float %3954, %3954
  %3957 = fmul fast float %3955, %3955
  %3958 = fadd fast float %3956, %3957
  %3959 = call float @dx.op.unary.f32(i32 24, float %3958)  ; Sqrt(value)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3961 = fcmp fast olt float %3959, %3960
  br i1 %3961, label %3962, label %4029

; <label>:3962                                    ; preds = %3889
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3970 = extractvalue %dx.types.CBufRet.f32 %3965, 1
  %3971 = extractvalue %dx.types.CBufRet.f32 %3967, 1
  %3972 = extractvalue %dx.types.CBufRet.f32 %3963, 3
  %3973 = extractvalue %dx.types.CBufRet.f32 %3965, 3
  %3974 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3975 = fadd fast float %3972, %3948
  %3976 = fadd fast float %3973, %3949
  %3977 = fadd fast float %3974, %3950
  %3978 = fmul fast float %3975, %3964
  %3979 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3966, float %3978)  ; FMad(a,b,c)
  %3980 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3968, float %3979)  ; FMad(a,b,c)
  %3981 = fmul fast float %3975, %3969
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %3976, float %3970, float %3981)  ; FMad(a,b,c)
  %3983 = call float @dx.op.tertiary.f32(i32 46, float %3977, float %3971, float %3982)  ; FMad(a,b,c)
  %3984 = fsub fast float %3980, %3972
  %3985 = fsub fast float %3983, %3973
  %3986 = fsub fast float %3984, %3952
  %3987 = fadd fast float %3986, %3960
  %3988 = fsub fast float %3985, %3953
  %3989 = fadd fast float %3988, %3960
  %3990 = extractvalue %dx.types.CBufRet.f32 %3951, 3
  %3991 = fmul fast float %3987, %3990
  %3992 = fmul fast float %3989, %3990
  %3993 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3994 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3995 = fsub fast float 1.000000e+00, %3993
  %3996 = fsub fast float 1.000000e+00, %3994
  %3997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3998 = extractvalue %dx.types.ResRet.f32 %3997, 0
  %3999 = fcmp fast ugt float %3998, 0.000000e+00
  br i1 %3999, label %4000, label %4303

; <label>:4000                                    ; preds = %3962
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 2
  %4003 = fmul fast float %4002, %3998
  %4004 = extractvalue %dx.types.CBufRet.f32 %4001, 3
  %4005 = fadd fast float %4004, %4003
  %4006 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %4007 = fadd fast float %4005, %3974
  %4008 = fmul fast float %3980, %3968
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %3983, float %3971, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %4006, float %4009)  ; FMad(a,b,c)
  %4011 = fsub fast float %4010, %3974
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4014 = fsub fast float %4011, %4013
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %3995, float %3996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = fadd fast float %4020, %4016
  %4024 = fmul fast float %4023, 0x3F847AE140000000
  %4025 = fadd fast float %4021, %4017
  %4026 = fmul fast float %4025, 0x3F847AE140000000
  %4027 = fadd fast float %4022, %4018
  %4028 = fmul fast float %4027, 0x3F847AE140000000
  br label %4303

; <label>:4029                                    ; preds = %3889
  %4030 = and i32 %239, 1
  %4031 = icmp eq i32 %4030, 0
  br i1 %4031, label %4303, label %4032

; <label>:4032                                    ; preds = %4029
  %4033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4034 = extractvalue %dx.types.CBufRet.f32 %4033, 0
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4033, 1
  %4040 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4041 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4033, 3
  %4043 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4044 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4045 = fadd fast float %4042, %3948
  %4046 = fadd fast float %4043, %3949
  %4047 = fadd fast float %4044, %3950
  %4048 = fmul fast float %4045, %4034
  %4049 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4036, float %4048)  ; FMad(a,b,c)
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4038, float %4049)  ; FMad(a,b,c)
  %4051 = fmul fast float %4045, %4039
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4040, float %4051)  ; FMad(a,b,c)
  %4053 = call float @dx.op.tertiary.f32(i32 46, float %4047, float %4041, float %4052)  ; FMad(a,b,c)
  %4054 = fsub fast float %4050, %4042
  %4055 = fsub fast float %4053, %4043
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.CBufRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4060 = extractvalue %dx.types.CBufRet.f32 %4056, 3
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.i32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.i32 %4063, 1
  %4066 = udiv i32 %4065, %4064
  %4067 = fsub fast float %4054, %4057
  %4068 = fsub fast float %4055, %4058
  %4069 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4070 = call float @dx.op.binary.f32(i32 35, float %4068, float 0.000000e+00)  ; FMax(a,b)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4069, float %4059)  ; FMin(a,b)
  %4072 = call float @dx.op.binary.f32(i32 36, float %4070, float %4060)  ; FMin(a,b)
  %4073 = add i32 %4064, -1
  %4074 = add i32 %4066, -1
  %4075 = fmul fast float %4071, %4062
  %4076 = fmul fast float %4072, %4062
  %4077 = fptoui float %4075 to i32
  %4078 = fptoui float %4076 to i32
  %4079 = call i32 @dx.op.binary.i32(i32 40, i32 %4077, i32 %4073)  ; UMin(a,b)
  %4080 = call i32 @dx.op.binary.i32(i32 40, i32 %4078, i32 %4074)  ; UMin(a,b)
  %4081 = mul i32 %4080, %4064
  %4082 = add i32 %4081, %4079
  %4083 = shl i32 %4082, 2
  %4084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.i32 %4084, 0
  %4086 = icmp eq i32 %4085, -1
  br i1 %4086, label %4303, label %4087

; <label>:4087                                    ; preds = %4032
  %4088 = mul i32 %4085, 148
  %4089 = add i32 %4088, 4
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = add i32 %4088, 8
  %4093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = add i32 %4088, 36
  %4096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4095, i32 undef)  ; BufferLoad(srv,index,wot)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = add i32 %4088, 60
  %4099 = add i32 %4088, 92
  %4100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.i32 %4100, 0
  %4102 = add i32 %4088, 116
  %4103 = fsub fast float %4054, %4091
  %4104 = fsub fast float %4055, %4094
  %4105 = fmul fast float %4062, %4103
  %4106 = fmul fast float %4062, %4104
  %4107 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4109 = fsub fast float 1.000000e+00, %4108
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4112 = call float @dx.op.unary.f32(i32 83, float %4107)  ; DerivCoarseX(value)
  %4113 = call float @dx.op.unary.f32(i32 83, float %4109)  ; DerivCoarseX(value)
  %4114 = call float @dx.op.unary.f32(i32 84, float %4107)  ; DerivCoarseY(value)
  %4115 = call float @dx.op.unary.f32(i32 84, float %4109)  ; DerivCoarseY(value)
  %4116 = fmul fast float %4112, %4111
  %4117 = fmul fast float %4113, %4111
  %4118 = fmul fast float %4114, %4111
  %4119 = fmul fast float %4115, %4111
  %4120 = call float @dx.op.dot2.f32(i32 54, float %4118, float %4119, float %4118, float %4119)  ; Dot2(ax,ay,bx,by)
  %4121 = call float @dx.op.dot2.f32(i32 54, float %4116, float %4117, float %4116, float %4117)  ; Dot2(ax,ay,bx,by)
  %4122 = call float @dx.op.binary.f32(i32 35, float %4121, float %4120)  ; FMax(a,b)
  %4123 = call float @dx.op.unary.f32(i32 23, float %4122)  ; Log(value)
  %4124 = fmul fast float %4123, 5.000000e-01
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4127 = fadd fast float %4126, %4124
  %4128 = call float @dx.op.binary.f32(i32 35, float %4127, float 0.000000e+00)  ; FMax(a,b)
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4131 = fadd fast float %4130, %4128
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4134 = fadd fast float %4131, %4133
  %4135 = add i32 %4101, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4136, i32 0)  ; GetDimensions(handle,mipLevel)
  %4138 = extractvalue %dx.types.Dimensions %4137, 0
  %4139 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4138)  ; FirstbitLo(value)
  %4140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.i32 %4140, 1
  %4142 = sub nsw i32 %4141, %4139
  %4143 = sitofp i32 %4142 to float
  %4144 = fsub fast float %4134, %4143
  %4145 = call float @dx.op.binary.f32(i32 35, float %4144, float 0.000000e+00)  ; FMax(a,b)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4136, %dx.types.Handle %52, float %4107, float %4109, float %4097, float undef, i32 0, i32 0, i32 undef, float %4145)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = fcmp ule float %4147, 0x3FE0101020000000
  %4149 = extractvalue %dx.types.CBufRet.i32 %4140, 0
  %4150 = and i32 %4149, 128
  %4151 = icmp ne i32 %4150, 0
  %4152 = and i1 %4148, %4151
  br i1 %4152, label %4303, label %4153

; <label>:4153                                    ; preds = %4087
  %4154 = add i32 %4088, 20
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = add i32 %4088, 24
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4088, 40
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = add i32 %4088, 96
  %4164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.i32 %4164, 0
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fmul fast float %4167, %4107
  %4169 = fmul fast float %4167, %4109
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = fadd fast float %4168, %4170
  %4172 = fadd fast float %4169, %4170
  %4173 = add i32 %4165, 0
  %4174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4173, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4175 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4174, i32 0)  ; GetDimensions(handle,mipLevel)
  %4176 = extractvalue %dx.types.Dimensions %4175, 0
  %4177 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4176)  ; FirstbitLo(value)
  %4178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.i32 %4178, 1
  %4180 = sub nsw i32 %4179, %4177
  %4181 = sitofp i32 %4180 to float
  %4182 = fsub fast float %4131, %4181
  %4183 = call float @dx.op.binary.f32(i32 35, float %4182, float 0.000000e+00)  ; FMax(a,b)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4174, %dx.types.Handle %52, float %4171, float %4172, float %4162, float undef, i32 0, i32 0, i32 undef, float %4183)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fmul fast float %4185, %4156
  %4187 = fadd fast float %4186, %4159
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4196 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4197 = fadd fast float %4193, %4054
  %4198 = fadd fast float %4195, %4055
  %4199 = fadd fast float %4187, %4196
  %4200 = fmul fast float %4197, %4189
  %4201 = call float @dx.op.tertiary.f32(i32 46, float %4198, float %4190, float %4200)  ; FMad(a,b,c)
  %4202 = call float @dx.op.tertiary.f32(i32 46, float %4199, float %4191, float %4201)  ; FMad(a,b,c)
  %4203 = fsub fast float %4202, %4196
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4206 = fsub fast float %4203, %4205
  %4207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.i32 %4207, 0
  %4209 = call i32 @dx.op.binary.i32(i32 40, i32 %4085, i32 %4208)  ; UMin(a,b)
  %4210 = mul i32 %4209, 36
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = add i32 %4210, 4
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = fmul fast float %4215, %4107
  %4217 = fmul fast float %4215, %4109
  %4218 = extractvalue %dx.types.CBufRet.f32 %4214, 1
  %4219 = fadd fast float %4216, %4218
  %4220 = fadd fast float %4217, %4218
  %4221 = icmp eq i32 %4212, 0
  br i1 %4221, label %4290, label %4222

; <label>:4222                                    ; preds = %4153
  br label %4223

; <label>:4223                                    ; preds = %4280, %4222
  %4224 = phi float [ %4281, %4280 ], [ 0.000000e+00, %4222 ]
  %4225 = phi float [ %4282, %4280 ], [ 0.000000e+00, %4222 ]
  %4226 = phi float [ %4283, %4280 ], [ 0.000000e+00, %4222 ]
  %4227 = phi float [ %4284, %4280 ], [ 0.000000e+00, %4222 ]
  %4228 = phi float [ %4285, %4280 ], [ 0.000000e+00, %4222 ]
  %4229 = phi float [ %4286, %4280 ], [ 0.000000e+00, %4222 ]
  %4230 = phi i32 [ %4287, %4280 ], [ 0, %4222 ]
  %4231 = shl i32 %4230, 2
  %4232 = add i32 %4098, %4231
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = add i32 %4102, %4231
  %4236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.i32 %4236, 0
  %4238 = add i32 %4237, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4239, i32 0)  ; GetDimensions(handle,mipLevel)
  %4241 = extractvalue %dx.types.Dimensions %4240, 0
  %4242 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4241)  ; FirstbitLo(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4245 = sub nsw i32 %4244, %4242
  %4246 = sitofp i32 %4245 to float
  %4247 = fsub fast float %4131, %4246
  %4248 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4239, %dx.types.Handle %52, float %4219, float %4220, float %4234, float undef, i32 0, i32 0, i32 undef, float %4248)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %4251, label %4252, label %4280

; <label>:4252                                    ; preds = %4223
  %4253 = add i32 %4213, %4231
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = and i32 %4255, 32767
  %4257 = mul nuw nsw i32 %4256, 928
  %4258 = add nuw nsw i32 %4257, 48
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4259, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4259, 2
  %4263 = add nuw nsw i32 %4257, 60
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = fmul fast float %4260, %4250
  %4269 = fmul fast float %4261, %4250
  %4270 = fmul fast float %4262, %4250
  %4271 = fadd fast float %4268, %4224
  %4272 = fadd fast float %4269, %4225
  %4273 = fadd fast float %4270, %4226
  %4274 = fmul fast float %4265, %4250
  %4275 = fmul fast float %4266, %4250
  %4276 = fmul fast float %4267, %4250
  %4277 = fadd fast float %4274, %4227
  %4278 = fadd fast float %4275, %4228
  %4279 = fadd fast float %4276, %4229
  br label %4280

; <label>:4280                                    ; preds = %4252, %4223
  %4281 = phi float [ %4271, %4252 ], [ %4224, %4223 ]
  %4282 = phi float [ %4272, %4252 ], [ %4225, %4223 ]
  %4283 = phi float [ %4273, %4252 ], [ %4226, %4223 ]
  %4284 = phi float [ %4277, %4252 ], [ %4227, %4223 ]
  %4285 = phi float [ %4278, %4252 ], [ %4228, %4223 ]
  %4286 = phi float [ %4279, %4252 ], [ %4229, %4223 ]
  %4287 = add nuw i32 %4230, 1
  %4288 = icmp eq i32 %4287, %4212
  br i1 %4288, label %4289, label %4223

; <label>:4289                                    ; preds = %4280
  br label %4290

; <label>:4290                                    ; preds = %4289, %4153
  %4291 = phi float [ 0.000000e+00, %4153 ], [ %4281, %4289 ]
  %4292 = phi float [ 0.000000e+00, %4153 ], [ %4282, %4289 ]
  %4293 = phi float [ 0.000000e+00, %4153 ], [ %4283, %4289 ]
  %4294 = phi float [ 0.000000e+00, %4153 ], [ %4284, %4289 ]
  %4295 = phi float [ 0.000000e+00, %4153 ], [ %4285, %4289 ]
  %4296 = phi float [ 0.000000e+00, %4153 ], [ %4286, %4289 ]
  %4297 = fadd fast float %4294, %4291
  %4298 = fmul fast float %4297, 0x3F847AE140000000
  %4299 = fadd fast float %4295, %4292
  %4300 = fmul fast float %4299, 0x3F847AE140000000
  %4301 = fadd fast float %4296, %4293
  %4302 = fmul fast float %4301, 0x3F847AE140000000
  br label %4303

; <label>:4303                                    ; preds = %4290, %4087, %4032, %4029, %4000, %3962
  %4304 = phi float [ %4024, %4000 ], [ 0.000000e+00, %3962 ], [ %4298, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4305 = phi float [ %4026, %4000 ], [ 0.000000e+00, %3962 ], [ %4300, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4306 = phi float [ %4028, %4000 ], [ 0.000000e+00, %3962 ], [ %4302, %4290 ], [ 0.000000e+00, %4032 ], [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4029 ]
  %4307 = phi float [ %4014, %4000 ], [ -1.310720e+05, %3962 ], [ %4206, %4290 ], [ -1.310720e+05, %4032 ], [ -1.310720e+05, %4087 ], [ -1.310720e+05, %4029 ]
  %4308 = phi i1 [ true, %4000 ], [ false, %3962 ], [ true, %4290 ], [ false, %4032 ], [ false, %4087 ], [ false, %4029 ]
  %4309 = and i32 %239, 3
  %4310 = icmp eq i32 %4309, 1
  %4311 = select i1 %4310, float 1.000000e+00, float 0.000000e+00
  %4312 = fsub fast float %4307, %203
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = select i1 %4308, float %4313, float 1.000000e+00
  %4315 = fmul fast float %4314, %4311
  %4316 = icmp eq i32 %4309, 3
  %4317 = select i1 %4316, float 1.000000e+00, float %4315
  %4318 = call float @dx.op.binary.f32(i32 35, float %3905, float %4317)  ; FMax(a,b)
  %4319 = fcmp fast olt float %4317, 1.000000e+00
  %4320 = fcmp uge float %75, 0.000000e+00
  %4321 = and i1 %4320, %4319
  br i1 %4321, label %4322, label %4332

; <label>:4322                                    ; preds = %4303
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = fadd fast float %4324, %4318
  %4328 = fcmp ule float %74, 0.000000e+00
  %4329 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4330 = select i1 %4328, float %4329, float 1.000000e+00
  %4331 = fmul fast float %4330, %4326
  br label %4332

; <label>:4332                                    ; preds = %4322, %4303
  %4333 = phi float [ %4327, %4322 ], [ %4318, %4303 ]
  %4334 = phi float [ %4325, %4322 ], [ 0.000000e+00, %4303 ]
  %4335 = phi float [ %4331, %4322 ], [ 0.000000e+00, %4303 ]
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = fcmp fast une float %4337, 0.000000e+00
  %4340 = fcmp fast une float %4338, 0.000000e+00
  %4341 = or i1 %4339, %4340
  br i1 %4341, label %4342, label %4901

; <label>:4342                                    ; preds = %4332
  br i1 %4339, label %4343, label %4616

; <label>:4343                                    ; preds = %4342
  %4344 = call float @dx.op.unary.f32(i32 23, float %3902)  ; Log(value)
  %4345 = fmul fast float %4344, 4.000000e+00
  %4346 = call float @dx.op.unary.f32(i32 21, float %4345)  ; Exp(value)
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %62
  %4350 = fmul fast float %4348, %63
  %4351 = fmul fast float %4348, %64
  %4352 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4353 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4354 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4355 = call float @dx.op.unary.f32(i32 23, float %4352)  ; Log(value)
  %4356 = call float @dx.op.unary.f32(i32 23, float %4353)  ; Log(value)
  %4357 = call float @dx.op.unary.f32(i32 23, float %4354)  ; Log(value)
  %4358 = fmul fast float %4355, 4.000000e+00
  %4359 = fmul fast float %4356, 4.000000e+00
  %4360 = fmul fast float %4357, 4.000000e+00
  %4361 = call float @dx.op.unary.f32(i32 21, float %4358)  ; Exp(value)
  %4362 = call float @dx.op.unary.f32(i32 21, float %4359)  ; Exp(value)
  %4363 = call float @dx.op.unary.f32(i32 21, float %4360)  ; Exp(value)
  %4364 = fadd fast float %4362, %4361
  %4365 = fadd fast float %4364, %4363
  %4366 = fdiv fast float 1.000000e+00, %4365
  %4367 = fmul fast float %4366, %4361
  %4368 = fcmp fast ogt float %71, 0.000000e+00
  %4369 = fcmp fast ogt float %72, 0.000000e+00
  %4370 = fcmp fast ogt float %73, 0.000000e+00
  %4371 = fcmp fast olt float %71, 0.000000e+00
  %4372 = fcmp fast olt float %72, 0.000000e+00
  %4373 = fcmp fast olt float %73, 0.000000e+00
  %4374 = zext i1 %4368 to i32
  %4375 = zext i1 %4369 to i32
  %4376 = zext i1 %4370 to i32
  %4377 = zext i1 %4371 to i32
  %4378 = zext i1 %4372 to i32
  %4379 = zext i1 %4373 to i32
  %4380 = sub nsw i32 %4374, %4377
  %4381 = sub nsw i32 %4375, %4378
  %4382 = sub nsw i32 %4376, %4379
  %4383 = call float @dx.op.unary.f32(i32 83, float %4349)  ; DerivCoarseX(value)
  %4384 = call float @dx.op.unary.f32(i32 83, float %4350)  ; DerivCoarseX(value)
  %4385 = call float @dx.op.unary.f32(i32 83, float %4351)  ; DerivCoarseX(value)
  %4386 = call float @dx.op.unary.f32(i32 84, float %4349)  ; DerivCoarseY(value)
  %4387 = call float @dx.op.unary.f32(i32 84, float %4350)  ; DerivCoarseY(value)
  %4388 = call float @dx.op.unary.f32(i32 84, float %4351)  ; DerivCoarseY(value)
  %4389 = fcmp fast ole float %271, %4367
  %4390 = fmul fast float %4366, %4364
  %4391 = fcmp fast ole float %271, %4390
  %4392 = select i1 %4391, float %4351, float %4349
  %4393 = select i1 %4391, float %4349, float %4350
  %4394 = select i1 %4389, float %4350, float %4392
  %4395 = select i1 %4389, float %4351, float %4393
  %4396 = select i1 %4391, float %4385, float %4383
  %4397 = select i1 %4391, float %4383, float %4384
  %4398 = select i1 %4389, float %4384, float %4396
  %4399 = select i1 %4389, float %4385, float %4397
  %4400 = select i1 %4391, float %4388, float %4386
  %4401 = select i1 %4391, float %4386, float %4387
  %4402 = select i1 %4389, float %4387, float %4400
  %4403 = select i1 %4389, float %4388, float %4401
  %4404 = call float @dx.op.unary.f32(i32 27, float %4394)  ; Round_ni(value)
  %4405 = call float @dx.op.unary.f32(i32 27, float %4395)  ; Round_ni(value)
  %4406 = fptosi float %4404 to i32
  %4407 = fptosi float %4405 to i32
  %4408 = xor i32 %4407, %4406
  %4409 = sitofp i32 %4408 to float
  %4410 = fptosi float %4409 to i32
  %4411 = sitofp i32 %4410 to float
  %4412 = fmul fast float %4411, 0x3FE3C6EF40000000
  %4413 = frem fast float %4404, 2.560000e+02
  %4414 = frem fast float %4405, 2.560000e+02
  %4415 = fptoui float %4413 to i32
  %4416 = fptoui float %4414 to i32
  %4417 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4415, i32 %4416, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = fadd fast float %4418, %4412
  %4422 = fadd fast float %4419, %4412
  %4423 = fadd fast float %4420, %4412
  %4424 = call float @dx.op.unary.f32(i32 22, float %4421)  ; Frc(value)
  %4425 = call float @dx.op.unary.f32(i32 22, float %4422)  ; Frc(value)
  %4426 = call float @dx.op.unary.f32(i32 22, float %4423)  ; Frc(value)
  %4427 = fmul fast float %4426, 0x401921FB60000000
  %4428 = call float @dx.op.unary.f32(i32 13, float %4427)  ; Sin(value)
  %4429 = call float @dx.op.unary.f32(i32 12, float %4427)  ; Cos(value)
  %4430 = fsub fast float -0.000000e+00, %4429
  %4431 = fmul fast float %4429, %4394
  %4432 = call float @dx.op.tertiary.f32(i32 46, float %4428, float %4395, float %4431)  ; FMad(a,b,c)
  %4433 = fmul fast float %4428, %4394
  %4434 = call float @dx.op.tertiary.f32(i32 46, float %4430, float %4395, float %4433)  ; FMad(a,b,c)
  %4435 = fadd fast float %4432, %4424
  %4436 = fadd fast float %4434, %4425
  %4437 = extractvalue %dx.types.CBufRet.f32 %4347, 3
  %4438 = bitcast float %4437 to i32
  %4439 = icmp eq i32 %4438, 0
  br i1 %4439, label %4478, label %4440

; <label>:4440                                    ; preds = %4343
  %4441 = add i32 %4438, 0
  %4442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4443 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4442, %dx.types.Handle %111, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4445, 2
  %4448 = fsub fast float 1.000000e+00, %4337
  %4449 = call float @dx.op.binary.f32(i32 35, float %4448, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4450 = bitcast float %4337 to i32
  %4451 = sitofp i32 %4450 to float
  %4452 = fadd fast float %4451, 0xC1CFBF8940000000
  %4453 = fmul fast float %4447, %4452
  %4454 = fadd fast float %4453, 0x41CFBF8940000000
  %4455 = fptosi float %4454 to i32
  %4456 = bitcast i32 %4455 to float
  %4457 = bitcast float %4449 to i32
  %4458 = sitofp i32 %4457 to float
  %4459 = fadd fast float %4458, 0xC1CFBF8940000000
  %4460 = fmul fast float %4459, %4447
  %4461 = fadd fast float %4460, 0x41CFBF8940000000
  %4462 = fptosi float %4461 to i32
  %4463 = bitcast i32 %4462 to float
  %4464 = fmul fast float %4456, %4446
  %4465 = fmul fast float %4463, %4446
  %4466 = fsub fast float %4449, %4464
  %4467 = fadd fast float %4465, %4449
  %4468 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4470 = fsub fast float %4444, %4468
  %4471 = fsub fast float %4469, %4468
  %4472 = bitcast float %4471 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = fmul fast float %4474, %4470
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fcmp fast olt float %4476, 0x3F70101020000000
  br i1 %4477, label %4616, label %4478

; <label>:4478                                    ; preds = %4440, %4343
  %4479 = phi float [ %4476, %4440 ], [ %4337, %4343 ]
  %4480 = fmul fast float %4479, %4346
  %4481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.i32 %4481, 1
  %4483 = extractvalue %dx.types.CBufRet.i32 %4481, 0
  %4484 = add i32 %4483, 0
  %4485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4485, %dx.types.Handle %110, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = extractvalue %dx.types.ResRet.f32 %4486, 1
  %4489 = extractvalue %dx.types.ResRet.f32 %4486, 2
  %4490 = extractvalue %dx.types.ResRet.f32 %4486, 3
  %4491 = and i32 %4482, 255
  %4492 = uitofp i32 %4491 to float
  %4493 = lshr i32 %4482, 8
  %4494 = and i32 %4493, 255
  %4495 = uitofp i32 %4494 to float
  %4496 = fmul fast float %4490, %4492
  %4497 = fadd fast float %4496, %4495
  %4498 = fmul fast float %4497, 0x3F70101000000000
  %4499 = fadd fast float %4498, 0xBFB99999A0000000
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4500, 0x3FF1C71C80000000
  %4502 = call float @dx.op.binary.f32(i32 36, float %4498, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4503 = fsub fast float 1.000000e+00, %4501
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fmul fast float %4504, %4487
  %4506 = fmul fast float %4504, %4488
  %4507 = fmul fast float %4504, %4489
  %4508 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4511 = fmul fast float %4501, %4487
  %4512 = fmul fast float %4501, %4488
  %4513 = fmul fast float %4501, %4489
  %4514 = fadd fast float %4511, %4502
  %4515 = fadd fast float %4512, %4502
  %4516 = fadd fast float %4513, %4502
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.i32 %4520, 3
  %4522 = extractvalue %dx.types.CBufRet.i32 %4520, 2
  %4523 = add i32 %4522, 0
  %4524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4524, %dx.types.Handle %110, float %4435, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4398, float %4399, float undef, float %4402, float %4403, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = extractvalue %dx.types.ResRet.f32 %4525, 3
  %4530 = and i32 %4521, 255
  %4531 = uitofp i32 %4530 to float
  %4532 = lshr i32 %4521, 8
  %4533 = and i32 %4532, 255
  %4534 = uitofp i32 %4533 to float
  %4535 = lshr i32 %4521, 16
  %4536 = and i32 %4535, 255
  %4537 = uitofp i32 %4536 to float
  %4538 = fmul fast float %4537, 0x3F70101000000000
  %4539 = fmul fast float %4526, %4531
  %4540 = fadd fast float %4539, %4534
  %4541 = fmul fast float %4540, 0x3F70101000000000
  %4542 = fadd fast float %4527, -5.000000e-01
  %4543 = fadd fast float %4529, -5.000000e-01
  %4544 = fmul fast float %4542, %4538
  %4545 = fmul fast float %4543, %4538
  %4546 = fadd fast float %4544, 5.000000e-01
  %4547 = fadd fast float %4545, 5.000000e-01
  %4548 = fmul fast float %4546, 2.000000e+00
  %4549 = fadd fast float %4548, -1.000000e+00
  %4550 = fmul fast float %4547, 2.000000e+00
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = fadd fast float %4549, %4551
  %4553 = fmul fast float %4552, 5.000000e-01
  %4554 = fsub fast float %4549, %4551
  %4555 = fmul fast float %4554, 5.000000e-01
  %4556 = call float @dx.op.unary.f32(i32 6, float %4553)  ; FAbs(value)
  %4557 = fsub fast float 1.000000e+00, %4556
  %4558 = call float @dx.op.unary.f32(i32 6, float %4555)  ; FAbs(value)
  %4559 = fsub fast float %4557, %4558
  %4560 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4555, float %4559, float %4553, float %4555, float %4559)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = call float @dx.op.unary.f32(i32 25, float %4560)  ; Rsqrt(value)
  %4562 = fmul fast float %4553, %4561
  %4563 = fmul fast float %4555, %4561
  %4564 = select i1 %4391, i32 %4381, i32 %4382
  %4565 = select i1 %4389, i32 %4380, i32 %4564
  %4566 = sitofp i32 %4565 to float
  %4567 = fmul fast float %4559, %4566
  %4568 = fmul fast float %4567, %4561
  %4569 = select i1 %4391, float %4568, float %4563
  %4570 = select i1 %4391, float %4563, float %4568
  %4571 = select i1 %4389, float %4568, float %4562
  %4572 = select i1 %4389, float %4563, float %4569
  %4573 = select i1 %4389, float %4562, float %4570
  %4574 = fsub fast float %4508, %3941
  %4575 = fsub fast float %4509, %3942
  %4576 = fsub fast float %4510, %3943
  %4577 = fmul fast float %4574, %4480
  %4578 = fmul fast float %4575, %4480
  %4579 = fmul fast float %4576, %4480
  %4580 = fadd fast float %4577, %3941
  %4581 = fadd fast float %4578, %3942
  %4582 = fadd fast float %4579, %3943
  %4583 = fsub fast float %4517, %3926
  %4584 = fsub fast float %4518, %3927
  %4585 = fsub fast float %4519, %3928
  %4586 = fmul fast float %4583, %4480
  %4587 = fmul fast float %4584, %4480
  %4588 = fmul fast float %4585, %4480
  %4589 = fadd fast float %4586, %3926
  %4590 = fadd fast float %4587, %3927
  %4591 = fadd fast float %4588, %3928
  %4592 = fadd fast float %4571, %3890
  %4593 = fadd fast float %4572, %3891
  %4594 = fadd fast float %4573, %3892
  %4595 = call float @dx.op.dot3.f32(i32 55, float %4592, float %4593, float %4594, float %4592, float %4593, float %4594)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = call float @dx.op.unary.f32(i32 25, float %4595)  ; Rsqrt(value)
  %4597 = fmul fast float %4592, %4596
  %4598 = fmul fast float %4593, %4596
  %4599 = fmul fast float %4594, %4596
  %4600 = fsub fast float %4597, %3890
  %4601 = fsub fast float %4598, %3891
  %4602 = fsub fast float %4599, %3892
  %4603 = fmul fast float %4600, %4480
  %4604 = fmul fast float %4601, %4480
  %4605 = fmul fast float %4602, %4480
  %4606 = fadd fast float %4603, %3890
  %4607 = fadd fast float %4604, %3891
  %4608 = fadd fast float %4605, %3892
  %4609 = call float @dx.op.binary.f32(i32 36, float %3902, float %4528)  ; FMin(a,b)
  %4610 = fsub fast float %4609, %3902
  %4611 = fmul fast float %4610, %4480
  %4612 = fadd fast float %4611, %3902
  %4613 = fsub fast float %4541, %3929
  %4614 = fmul fast float %4613, %4480
  %4615 = fadd fast float %4614, %3929
  br label %4616

; <label>:4616                                    ; preds = %4478, %4440, %4342
  %4617 = phi float [ %4580, %4478 ], [ %3941, %4440 ], [ %3941, %4342 ]
  %4618 = phi float [ %4581, %4478 ], [ %3942, %4440 ], [ %3942, %4342 ]
  %4619 = phi float [ %4582, %4478 ], [ %3943, %4440 ], [ %3943, %4342 ]
  %4620 = phi float [ %4589, %4478 ], [ %3926, %4440 ], [ %3926, %4342 ]
  %4621 = phi float [ %4590, %4478 ], [ %3927, %4440 ], [ %3927, %4342 ]
  %4622 = phi float [ %4591, %4478 ], [ %3928, %4440 ], [ %3928, %4342 ]
  %4623 = phi float [ %4606, %4478 ], [ %3890, %4440 ], [ %3890, %4342 ]
  %4624 = phi float [ %4607, %4478 ], [ %3891, %4440 ], [ %3891, %4342 ]
  %4625 = phi float [ %4608, %4478 ], [ %3892, %4440 ], [ %3892, %4342 ]
  %4626 = phi float [ %4615, %4478 ], [ %3929, %4440 ], [ %3929, %4342 ]
  %4627 = phi float [ %4612, %4478 ], [ %3902, %4440 ], [ %3902, %4342 ]
  br i1 %4340, label %4628, label %4901

; <label>:4628                                    ; preds = %4616
  %4629 = call float @dx.op.unary.f32(i32 23, float %4627)  ; Log(value)
  %4630 = fmul fast float %4629, 4.000000e+00
  %4631 = call float @dx.op.unary.f32(i32 21, float %4630)  ; Exp(value)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %62
  %4635 = fmul fast float %4633, %63
  %4636 = fmul fast float %4633, %64
  %4637 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4638 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4639 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4640 = call float @dx.op.unary.f32(i32 23, float %4637)  ; Log(value)
  %4641 = call float @dx.op.unary.f32(i32 23, float %4638)  ; Log(value)
  %4642 = call float @dx.op.unary.f32(i32 23, float %4639)  ; Log(value)
  %4643 = fmul fast float %4640, 4.000000e+00
  %4644 = fmul fast float %4641, 4.000000e+00
  %4645 = fmul fast float %4642, 4.000000e+00
  %4646 = call float @dx.op.unary.f32(i32 21, float %4643)  ; Exp(value)
  %4647 = call float @dx.op.unary.f32(i32 21, float %4644)  ; Exp(value)
  %4648 = call float @dx.op.unary.f32(i32 21, float %4645)  ; Exp(value)
  %4649 = fadd fast float %4647, %4646
  %4650 = fadd fast float %4649, %4648
  %4651 = fdiv fast float 1.000000e+00, %4650
  %4652 = fmul fast float %4651, %4646
  %4653 = fcmp fast ogt float %71, 0.000000e+00
  %4654 = fcmp fast ogt float %72, 0.000000e+00
  %4655 = fcmp fast ogt float %73, 0.000000e+00
  %4656 = fcmp fast olt float %71, 0.000000e+00
  %4657 = fcmp fast olt float %72, 0.000000e+00
  %4658 = fcmp fast olt float %73, 0.000000e+00
  %4659 = zext i1 %4653 to i32
  %4660 = zext i1 %4654 to i32
  %4661 = zext i1 %4655 to i32
  %4662 = zext i1 %4656 to i32
  %4663 = zext i1 %4657 to i32
  %4664 = zext i1 %4658 to i32
  %4665 = sub nsw i32 %4659, %4662
  %4666 = sub nsw i32 %4660, %4663
  %4667 = sub nsw i32 %4661, %4664
  %4668 = call float @dx.op.unary.f32(i32 83, float %4634)  ; DerivCoarseX(value)
  %4669 = call float @dx.op.unary.f32(i32 83, float %4635)  ; DerivCoarseX(value)
  %4670 = call float @dx.op.unary.f32(i32 83, float %4636)  ; DerivCoarseX(value)
  %4671 = call float @dx.op.unary.f32(i32 84, float %4634)  ; DerivCoarseY(value)
  %4672 = call float @dx.op.unary.f32(i32 84, float %4635)  ; DerivCoarseY(value)
  %4673 = call float @dx.op.unary.f32(i32 84, float %4636)  ; DerivCoarseY(value)
  %4674 = fcmp fast ole float %271, %4652
  %4675 = fmul fast float %4651, %4649
  %4676 = fcmp fast ole float %271, %4675
  %4677 = select i1 %4676, float %4636, float %4634
  %4678 = select i1 %4676, float %4634, float %4635
  %4679 = select i1 %4674, float %4635, float %4677
  %4680 = select i1 %4674, float %4636, float %4678
  %4681 = select i1 %4676, float %4670, float %4668
  %4682 = select i1 %4676, float %4668, float %4669
  %4683 = select i1 %4674, float %4669, float %4681
  %4684 = select i1 %4674, float %4670, float %4682
  %4685 = select i1 %4676, float %4673, float %4671
  %4686 = select i1 %4676, float %4671, float %4672
  %4687 = select i1 %4674, float %4672, float %4685
  %4688 = select i1 %4674, float %4673, float %4686
  %4689 = call float @dx.op.unary.f32(i32 27, float %4679)  ; Round_ni(value)
  %4690 = call float @dx.op.unary.f32(i32 27, float %4680)  ; Round_ni(value)
  %4691 = fptosi float %4689 to i32
  %4692 = fptosi float %4690 to i32
  %4693 = xor i32 %4692, %4691
  %4694 = sitofp i32 %4693 to float
  %4695 = fptosi float %4694 to i32
  %4696 = sitofp i32 %4695 to float
  %4697 = fmul fast float %4696, 0x3FE3C6EF40000000
  %4698 = frem fast float %4689, 2.560000e+02
  %4699 = frem fast float %4690, 2.560000e+02
  %4700 = fptoui float %4698 to i32
  %4701 = fptoui float %4699 to i32
  %4702 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4700, i32 %4701, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4706 = fadd fast float %4703, %4697
  %4707 = fadd fast float %4704, %4697
  %4708 = fadd fast float %4705, %4697
  %4709 = call float @dx.op.unary.f32(i32 22, float %4706)  ; Frc(value)
  %4710 = call float @dx.op.unary.f32(i32 22, float %4707)  ; Frc(value)
  %4711 = call float @dx.op.unary.f32(i32 22, float %4708)  ; Frc(value)
  %4712 = fmul fast float %4711, 0x401921FB60000000
  %4713 = call float @dx.op.unary.f32(i32 13, float %4712)  ; Sin(value)
  %4714 = call float @dx.op.unary.f32(i32 12, float %4712)  ; Cos(value)
  %4715 = fsub fast float -0.000000e+00, %4714
  %4716 = fmul fast float %4714, %4679
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4713, float %4680, float %4716)  ; FMad(a,b,c)
  %4718 = fmul fast float %4713, %4679
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4715, float %4680, float %4718)  ; FMad(a,b,c)
  %4720 = fadd fast float %4717, %4709
  %4721 = fadd fast float %4719, %4710
  %4722 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4723 = bitcast float %4722 to i32
  %4724 = icmp eq i32 %4723, 0
  br i1 %4724, label %4763, label %4725

; <label>:4725                                    ; preds = %4628
  %4726 = add i32 %4723, 0
  %4727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4727, %dx.types.Handle %111, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4733 = fsub fast float 1.000000e+00, %4338
  %4734 = call float @dx.op.binary.f32(i32 35, float %4733, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4735 = bitcast float %4338 to i32
  %4736 = sitofp i32 %4735 to float
  %4737 = fadd fast float %4736, 0xC1CFBF8940000000
  %4738 = fmul fast float %4732, %4737
  %4739 = fadd fast float %4738, 0x41CFBF8940000000
  %4740 = fptosi float %4739 to i32
  %4741 = bitcast i32 %4740 to float
  %4742 = bitcast float %4734 to i32
  %4743 = sitofp i32 %4742 to float
  %4744 = fadd fast float %4743, 0xC1CFBF8940000000
  %4745 = fmul fast float %4744, %4732
  %4746 = fadd fast float %4745, 0x41CFBF8940000000
  %4747 = fptosi float %4746 to i32
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4741, %4731
  %4750 = fmul fast float %4748, %4731
  %4751 = fsub fast float %4734, %4749
  %4752 = fadd fast float %4750, %4734
  %4753 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4755 = fsub fast float %4729, %4753
  %4756 = fsub fast float %4754, %4753
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = fmul fast float %4759, %4755
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fcmp fast olt float %4761, 0x3F70101020000000
  br i1 %4762, label %4901, label %4763

; <label>:4763                                    ; preds = %4725, %4628
  %4764 = phi float [ %4761, %4725 ], [ %4338, %4628 ]
  %4765 = fmul fast float %4764, %4631
  %4766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.i32 %4766, 1
  %4768 = extractvalue %dx.types.CBufRet.i32 %4766, 0
  %4769 = add i32 %4768, 0
  %4770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4770, %dx.types.Handle %110, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = extractvalue %dx.types.ResRet.f32 %4771, 3
  %4776 = and i32 %4767, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4767, 8
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4775, %4777
  %4782 = fadd fast float %4781, %4780
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = fadd fast float %4783, 0xBFB99999A0000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = fmul fast float %4785, 0x3FF1C71C80000000
  %4787 = call float @dx.op.binary.f32(i32 36, float %4783, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4788 = fsub fast float 1.000000e+00, %4786
  %4789 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4790 = fmul fast float %4789, %4772
  %4791 = fmul fast float %4789, %4773
  %4792 = fmul fast float %4789, %4774
  %4793 = call float @dx.op.unary.f32(i32 7, float %4790)  ; Saturate(value)
  %4794 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4795 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4796 = fmul fast float %4786, %4772
  %4797 = fmul fast float %4786, %4773
  %4798 = fmul fast float %4786, %4774
  %4799 = fadd fast float %4796, %4787
  %4800 = fadd fast float %4797, %4787
  %4801 = fadd fast float %4798, %4787
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.i32 %4805, 3
  %4807 = extractvalue %dx.types.CBufRet.i32 %4805, 2
  %4808 = add i32 %4807, 0
  %4809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4809, %dx.types.Handle %110, float %4720, float %4721, float undef, float undef, i32 0, i32 0, i32 undef, float %4683, float %4684, float undef, float %4687, float %4688, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.ResRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.ResRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.ResRet.f32 %4810, 3
  %4815 = and i32 %4806, 255
  %4816 = uitofp i32 %4815 to float
  %4817 = lshr i32 %4806, 8
  %4818 = and i32 %4817, 255
  %4819 = uitofp i32 %4818 to float
  %4820 = lshr i32 %4806, 16
  %4821 = and i32 %4820, 255
  %4822 = uitofp i32 %4821 to float
  %4823 = fmul fast float %4822, 0x3F70101000000000
  %4824 = fmul fast float %4811, %4816
  %4825 = fadd fast float %4824, %4819
  %4826 = fmul fast float %4825, 0x3F70101000000000
  %4827 = fadd fast float %4812, -5.000000e-01
  %4828 = fadd fast float %4814, -5.000000e-01
  %4829 = fmul fast float %4827, %4823
  %4830 = fmul fast float %4828, %4823
  %4831 = fadd fast float %4829, 5.000000e-01
  %4832 = fadd fast float %4830, 5.000000e-01
  %4833 = fmul fast float %4831, 2.000000e+00
  %4834 = fadd fast float %4833, -1.000000e+00
  %4835 = fmul fast float %4832, 2.000000e+00
  %4836 = fadd fast float %4835, -1.000000e+00
  %4837 = fadd fast float %4834, %4836
  %4838 = fmul fast float %4837, 5.000000e-01
  %4839 = fsub fast float %4834, %4836
  %4840 = fmul fast float %4839, 5.000000e-01
  %4841 = call float @dx.op.unary.f32(i32 6, float %4838)  ; FAbs(value)
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = call float @dx.op.unary.f32(i32 6, float %4840)  ; FAbs(value)
  %4844 = fsub fast float %4842, %4843
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4838, float %4840, float %4844, float %4838, float %4840, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4838, %4846
  %4848 = fmul fast float %4840, %4846
  %4849 = select i1 %4676, i32 %4666, i32 %4667
  %4850 = select i1 %4674, i32 %4665, i32 %4849
  %4851 = sitofp i32 %4850 to float
  %4852 = fmul fast float %4844, %4851
  %4853 = fmul fast float %4852, %4846
  %4854 = select i1 %4676, float %4853, float %4848
  %4855 = select i1 %4676, float %4848, float %4853
  %4856 = select i1 %4674, float %4853, float %4847
  %4857 = select i1 %4674, float %4848, float %4854
  %4858 = select i1 %4674, float %4847, float %4855
  %4859 = fsub fast float %4793, %4617
  %4860 = fsub fast float %4794, %4618
  %4861 = fsub fast float %4795, %4619
  %4862 = fmul fast float %4859, %4765
  %4863 = fmul fast float %4860, %4765
  %4864 = fmul fast float %4861, %4765
  %4865 = fadd fast float %4862, %4617
  %4866 = fadd fast float %4863, %4618
  %4867 = fadd fast float %4864, %4619
  %4868 = fsub fast float %4802, %4620
  %4869 = fsub fast float %4803, %4621
  %4870 = fsub fast float %4804, %4622
  %4871 = fmul fast float %4868, %4765
  %4872 = fmul fast float %4869, %4765
  %4873 = fmul fast float %4870, %4765
  %4874 = fadd fast float %4871, %4620
  %4875 = fadd fast float %4872, %4621
  %4876 = fadd fast float %4873, %4622
  %4877 = fadd fast float %4856, %4623
  %4878 = fadd fast float %4857, %4624
  %4879 = fadd fast float %4858, %4625
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4877, float %4878, float %4879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.unary.f32(i32 25, float %4880)  ; Rsqrt(value)
  %4882 = fmul fast float %4877, %4881
  %4883 = fmul fast float %4878, %4881
  %4884 = fmul fast float %4879, %4881
  %4885 = fsub fast float %4882, %4623
  %4886 = fsub fast float %4883, %4624
  %4887 = fsub fast float %4884, %4625
  %4888 = fmul fast float %4885, %4765
  %4889 = fmul fast float %4886, %4765
  %4890 = fmul fast float %4887, %4765
  %4891 = fadd fast float %4888, %4623
  %4892 = fadd fast float %4889, %4624
  %4893 = fadd fast float %4890, %4625
  %4894 = call float @dx.op.binary.f32(i32 36, float %4627, float %4813)  ; FMin(a,b)
  %4895 = fsub fast float %4894, %4627
  %4896 = fmul fast float %4895, %4765
  %4897 = fadd fast float %4896, %4627
  %4898 = fsub fast float %4826, %4626
  %4899 = fmul fast float %4898, %4765
  %4900 = fadd fast float %4899, %4626
  br label %4901

; <label>:4901                                    ; preds = %4763, %4725, %4616, %4332
  %4902 = phi float [ %4865, %4763 ], [ %4617, %4725 ], [ %4617, %4616 ], [ %3941, %4332 ]
  %4903 = phi float [ %4866, %4763 ], [ %4618, %4725 ], [ %4618, %4616 ], [ %3942, %4332 ]
  %4904 = phi float [ %4867, %4763 ], [ %4619, %4725 ], [ %4619, %4616 ], [ %3943, %4332 ]
  %4905 = phi float [ %4874, %4763 ], [ %4620, %4725 ], [ %4620, %4616 ], [ %3926, %4332 ]
  %4906 = phi float [ %4875, %4763 ], [ %4621, %4725 ], [ %4621, %4616 ], [ %3927, %4332 ]
  %4907 = phi float [ %4876, %4763 ], [ %4622, %4725 ], [ %4622, %4616 ], [ %3928, %4332 ]
  %4908 = phi float [ %4891, %4763 ], [ %4623, %4725 ], [ %4623, %4616 ], [ %3890, %4332 ]
  %4909 = phi float [ %4892, %4763 ], [ %4624, %4725 ], [ %4624, %4616 ], [ %3891, %4332 ]
  %4910 = phi float [ %4893, %4763 ], [ %4625, %4725 ], [ %4625, %4616 ], [ %3892, %4332 ]
  %4911 = phi float [ %4900, %4763 ], [ %4626, %4725 ], [ %4626, %4616 ], [ %3929, %4332 ]
  %4912 = phi float [ %4897, %4763 ], [ %4627, %4725 ], [ %4627, %4616 ], [ %3902, %4332 ]
  %4913 = fcmp fast une float %4336, 0.000000e+00
  %4914 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 25, float %4914)  ; Rsqrt(value)
  br i1 %4913, label %4923, label %4916

; <label>:4916                                    ; preds = %4901
  %4917 = fmul fast float %4915, %201
  %4918 = fmul fast float %4915, %202
  %4919 = fmul fast float %4915, %203
  %4920 = fsub fast float -0.000000e+00, %4917
  %4921 = fsub fast float -0.000000e+00, %4918
  %4922 = fsub fast float -0.000000e+00, %4919
  br label %5090

; <label>:4923                                    ; preds = %4901
  %4924 = fmul fast float %201, %4915
  %4925 = fsub fast float -0.000000e+00, %4924
  %4926 = fmul fast float %202, %4915
  %4927 = fsub fast float -0.000000e+00, %4926
  %4928 = fmul fast float %203, %4915
  %4929 = fsub fast float -0.000000e+00, %4928
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4927, float %4929, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = fmul fast float %4336, 2.500000e+00
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4336, 0x4013FFFFE0000000
  %4934 = fadd fast float %4933, 0xBFFFFFFFE0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4336, 0x4004000020000000
  %4937 = fadd fast float %4936, 0xBFF8000040000000
  %4938 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4939 = fmul fast float %3908, 1.000000e+01
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = fmul fast float %4940, 2.000000e+00
  %4942 = fsub fast float 3.000000e+00, %4941
  %4943 = fmul fast float %4940, %4940
  %4944 = fmul fast float %4943, %4942
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fsub fast float 0x3FE3333340000000, %4911
  %4947 = fmul fast float %4946, 0x400AAAAAA0000000
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4945, %4948
  %4950 = fmul fast float %4902, 0x3FEA2B8620000000
  %4951 = fmul fast float %4903, 0x3FEA2B8620000000
  %4952 = fmul fast float %4904, 0x3FEA2B8620000000
  %4953 = fadd fast float %4950, 0x3FC81DFBA0000000
  %4954 = fmul fast float %4953, %4902
  %4955 = fadd fast float %4954, 0x3F910E6020000000
  %4956 = fadd fast float %4951, 0x3FC81DFBA0000000
  %4957 = fmul fast float %4956, %4903
  %4958 = fadd fast float %4957, 0x3F910E6020000000
  %4959 = fadd fast float %4952, 0x3FC81DFBA0000000
  %4960 = fmul fast float %4959, %4904
  %4961 = fadd fast float %4960, 0x3F910E6020000000
  %4962 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4965 = fsub fast float %4962, %4902
  %4966 = fsub fast float %4963, %4903
  %4967 = fsub fast float %4964, %4904
  %4968 = fmul fast float %4965, %4932
  %4969 = fmul fast float %4968, %4949
  %4970 = fmul fast float %4966, %4932
  %4971 = fmul fast float %4970, %4949
  %4972 = fmul fast float %4967, %4932
  %4973 = fmul fast float %4972, %4949
  %4974 = fadd fast float %4969, %4902
  %4975 = fadd fast float %4971, %4903
  %4976 = fadd fast float %4973, %4904
  %4977 = fmul fast float %4912, %4912
  %4978 = fmul fast float %4977, %4977
  %4979 = fadd fast float %4935, 1.000000e+00
  %4980 = fsub fast float %4979, %4949
  %4981 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4982 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fsub fast float 1.000000e+00, %4978
  %4985 = call float @dx.op.binary.f32(i32 36, float %4981, float %4984)  ; FMin(a,b)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4987 = call float @dx.op.binary.f32(i32 35, float %4985, float %4986)  ; FMax(a,b)
  %4988 = fadd fast float %4983, 0xBFE4CCCCC0000000
  %4989 = fmul fast float %4988, 0x4006DB6DA0000000
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fmul fast float %4990, 2.000000e+00
  %4992 = fsub fast float 3.000000e+00, %4991
  %4993 = bitcast float %4905 to i32
  %4994 = ashr i32 %4993, 1
  %4995 = add nsw i32 %4994, 532487669
  %4996 = bitcast i32 %4995 to float
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = bitcast float %4997 to i32
  %4999 = sub nsw i32 2129859010, %4998
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, 2.000000e+00
  %5002 = bitcast float %4906 to i32
  %5003 = ashr i32 %5002, 1
  %5004 = add nsw i32 %5003, 532487669
  %5005 = bitcast i32 %5004 to float
  %5006 = fsub fast float 1.000000e+00, %5005
  %5007 = bitcast float %5006 to i32
  %5008 = sub nsw i32 2129859010, %5007
  %5009 = bitcast i32 %5008 to float
  %5010 = fmul fast float %5009, 2.000000e+00
  %5011 = bitcast float %4907 to i32
  %5012 = ashr i32 %5011, 1
  %5013 = add nsw i32 %5012, 532487669
  %5014 = bitcast i32 %5013 to float
  %5015 = fsub fast float 1.000000e+00, %5014
  %5016 = bitcast float %5015 to i32
  %5017 = sub nsw i32 2129859010, %5016
  %5018 = bitcast i32 %5017 to float
  %5019 = fmul fast float %5018, 2.000000e+00
  %5020 = fsub fast float 0x4002A9FBE0000000, %5001
  %5021 = fadd fast float %5001, 0x3FD54FDF00000000
  %5022 = bitcast float %5021 to i32
  %5023 = sub nsw i32 2129859010, %5022
  %5024 = bitcast i32 %5023 to float
  %5025 = fmul fast float %5024, %5020
  %5026 = fmul fast float %5025, %5025
  %5027 = fsub fast float 0x4002A9FBE0000000, %5010
  %5028 = fadd fast float %5010, 0x3FD54FDF00000000
  %5029 = bitcast float %5028 to i32
  %5030 = sub nsw i32 2129859010, %5029
  %5031 = bitcast i32 %5030 to float
  %5032 = fmul fast float %5031, %5027
  %5033 = fmul fast float %5032, %5032
  %5034 = fsub fast float 0x4002A9FBE0000000, %5019
  %5035 = fadd fast float %5019, 0x3FD54FDF00000000
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, %5034
  %5040 = fmul fast float %5039, %5039
  %5041 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5026)  ; FMax(a,b)
  %5042 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5033)  ; FMax(a,b)
  %5043 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5040)  ; FMax(a,b)
  %5044 = fsub fast float 1.000000e+00, %4930
  %5045 = fadd fast float %5044, %4945
  %5046 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5047 = fsub fast float 1.000000e+00, %4317
  %5048 = fmul fast float %4987, %5047
  %5049 = fmul fast float %4990, %4990
  %5050 = fmul fast float %5049, %5048
  %5051 = fmul fast float %5050, %4992
  %5052 = fmul fast float %5047, 0xBFE99999A0000000
  %5053 = fmul fast float %5052, %4932
  %5054 = fmul fast float %5053, %4949
  %5055 = fadd fast float %5054, 1.000000e+00
  %5056 = fadd fast float %4911, -1.000000e+00
  %5057 = fmul fast float %5055, %5056
  %5058 = fadd fast float %5057, 1.000000e+00
  %5059 = fsub fast float %5041, %4905
  %5060 = fsub fast float %5042, %4906
  %5061 = fsub fast float %5043, %4907
  %5062 = fmul fast float %5051, %5059
  %5063 = fmul fast float %5051, %5060
  %5064 = fmul fast float %5051, %5061
  %5065 = fadd fast float %5062, %4905
  %5066 = fadd fast float %5063, %4906
  %5067 = fadd fast float %5064, %4907
  %5068 = fsub fast float %121, %4908
  %5069 = fsub fast float %122, %4909
  %5070 = fsub fast float %123, %4910
  %5071 = fmul fast float %5051, %5068
  %5072 = fmul fast float %5051, %5069
  %5073 = fmul fast float %5051, %5070
  %5074 = fadd fast float %5071, %4908
  %5075 = fadd fast float %5072, %4909
  %5076 = fadd fast float %5073, %4910
  %5077 = fmul fast float %5051, %5046
  %5078 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = fmul fast float %5077, %5079
  %5081 = fadd fast float %5080, %5078
  %5082 = fsub fast float 1.000000e+00, %4912
  %5083 = fmul fast float %5051, %5082
  %5084 = fadd fast float %5083, %4912
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = call float @dx.op.unary.f32(i32 25, float %5085)  ; Rsqrt(value)
  %5087 = fmul fast float %5074, %5086
  %5088 = fmul fast float %5075, %5086
  %5089 = fmul fast float %5076, %5086
  br label %5090

; <label>:5090                                    ; preds = %4923, %4916
  %5091 = phi float [ %4922, %4916 ], [ %4929, %4923 ]
  %5092 = phi float [ %4921, %4916 ], [ %4927, %4923 ]
  %5093 = phi float [ %4920, %4916 ], [ %4925, %4923 ]
  %5094 = phi float [ %4919, %4916 ], [ %4928, %4923 ]
  %5095 = phi float [ %4918, %4916 ], [ %4926, %4923 ]
  %5096 = phi float [ %4917, %4916 ], [ %4924, %4923 ]
  %5097 = phi float [ %4902, %4916 ], [ %4974, %4923 ]
  %5098 = phi float [ %4903, %4916 ], [ %4975, %4923 ]
  %5099 = phi float [ %4904, %4916 ], [ %4976, %4923 ]
  %5100 = phi float [ %4905, %4916 ], [ %5065, %4923 ]
  %5101 = phi float [ %4906, %4916 ], [ %5066, %4923 ]
  %5102 = phi float [ %4907, %4916 ], [ %5067, %4923 ]
  %5103 = phi float [ %4908, %4916 ], [ %5087, %4923 ]
  %5104 = phi float [ %4909, %4916 ], [ %5088, %4923 ]
  %5105 = phi float [ %4910, %4916 ], [ %5089, %4923 ]
  %5106 = phi float [ %4911, %4916 ], [ %5081, %4923 ]
  %5107 = phi float [ %4912, %4916 ], [ %5084, %4923 ]
  %5108 = fsub fast float -0.000000e+00, %203
  %5109 = select i1 %260, float 0.000000e+00, float %5102
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %5093, float %5092, float %5091)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5095, float %5094, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %5112, 2.000000e+00
  %5114 = fmul fast float %5113, %5103
  %5115 = fmul fast float %5113, %5104
  %5116 = fmul fast float %5113, %5105
  %5117 = fsub fast float %5096, %5114
  %5118 = fsub fast float %5095, %5115
  %5119 = fsub fast float %5094, %5116
  %5120 = call float @dx.op.binary.f32(i32 36, float %5107, float 1.000000e+00)  ; FMin(a,b)
  %5121 = fsub fast float 1.000000e+00, %5120
  %5122 = bitcast float %5121 to i32
  %5123 = ashr i32 %5122, 1
  %5124 = add nsw i32 %5123, 532487669
  %5125 = bitcast i32 %5124 to float
  %5126 = fsub fast float 1.000000e+00, %5106
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0x3F847AE140000000)  ; FMax(a,b)
  %5128 = fmul fast float %5127, %5127
  %5129 = fmul fast float %5128, %5128
  %5130 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5125, float %5129, float %5130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5132 = extractvalue %dx.types.ResRet.f32 %5131, 0
  %5133 = fsub fast float 1.000000e+00, %5107
  %5134 = bitcast float %5133 to i32
  %5135 = sub nsw i32 2129859010, %5134
  %5136 = bitcast i32 %5135 to float
  %5137 = fsub fast float 1.000000e+00, %81
  %5138 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.binary.f32(i32 35, float %5138, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5140 = fdiv fast float %5137, %5139
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fmul fast float %5142, 5.000000e-01
  %5144 = fadd fast float %5143, 5.000000e-01
  %5145 = fmul fast float %5144, %81
  %5146 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fmul fast float %5147, %5140
  %5149 = fadd fast float %5145, %5148
  %5150 = fsub fast float 5.000000e-01, %5143
  %5151 = fmul fast float %5150, %5097
  %5152 = fmul fast float %5150, %5098
  %5153 = fmul fast float %5150, %5099
  %5154 = fadd fast float %5149, %5151
  %5155 = fadd fast float %5149, %5152
  %5156 = fadd fast float %5149, %5153
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fmul fast float %5158, 5.000000e-01
  %5160 = fadd fast float %5159, 5.000000e-01
  %5161 = fmul fast float %5160, %81
  %5162 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fmul fast float %5163, %5140
  %5165 = fadd fast float %5161, %5164
  %5166 = fsub fast float 5.000000e-01, %5159
  %5167 = fmul fast float %5166, %5097
  %5168 = fmul fast float %5166, %5098
  %5169 = fmul fast float %5166, %5099
  %5170 = fadd fast float %5165, %5167
  %5171 = fadd fast float %5165, %5168
  %5172 = fadd fast float %5165, %5169
  %5173 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = call float @dx.op.binary.f32(i32 36, float %5097, float %5175)  ; FMin(a,b)
  %5177 = fmul fast float %5176, %5121
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = bitcast float %5178 to i32
  %5180 = sub nsw i32 2129859010, %5179
  %5181 = bitcast i32 %5180 to float
  %5182 = call float @dx.op.binary.f32(i32 36, float %5098, float %5175)  ; FMin(a,b)
  %5183 = fmul fast float %5182, %5121
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = bitcast float %5184 to i32
  %5186 = sub nsw i32 2129859010, %5185
  %5187 = bitcast i32 %5186 to float
  %5188 = call float @dx.op.binary.f32(i32 36, float %5099, float %5175)  ; FMin(a,b)
  %5189 = fmul fast float %5188, %5121
  %5190 = fsub fast float 1.000000e+00, %5189
  %5191 = bitcast float %5190 to i32
  %5192 = sub nsw i32 2129859010, %5191
  %5193 = bitcast i32 %5192 to float
  %5194 = fmul fast float %5120, %82
  %5195 = fmul fast float %5194, %5154
  %5196 = fmul fast float %5195, %5181
  %5197 = fmul fast float %5120, %83
  %5198 = fmul fast float %5197, %5155
  %5199 = fmul fast float %5198, %5187
  %5200 = fmul fast float %5120, %84
  %5201 = fmul fast float %5200, %5156
  %5202 = fmul fast float %5201, %5193
  %5203 = call float @dx.op.binary.f32(i32 36, float %5100, float %5175)  ; FMin(a,b)
  %5204 = fmul fast float %5203, %5121
  %5205 = fsub fast float 1.000000e+00, %5204
  %5206 = bitcast float %5205 to i32
  %5207 = sub nsw i32 2129859010, %5206
  %5208 = bitcast i32 %5207 to float
  %5209 = call float @dx.op.binary.f32(i32 36, float %5101, float %5175)  ; FMin(a,b)
  %5210 = fmul fast float %5209, %5121
  %5211 = fsub fast float 1.000000e+00, %5210
  %5212 = bitcast float %5211 to i32
  %5213 = sub nsw i32 2129859010, %5212
  %5214 = bitcast i32 %5213 to float
  %5215 = call float @dx.op.binary.f32(i32 36, float %5109, float %5175)  ; FMin(a,b)
  %5216 = fmul fast float %5215, %5121
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5194, %5170
  %5222 = fmul fast float %5221, %5208
  %5223 = fmul fast float %5197, %5171
  %5224 = fmul fast float %5223, %5214
  %5225 = fmul fast float %5200, %5172
  %5226 = fmul fast float %5225, %5220
  %5227 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5199, float %5202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = select i1 %260, float 0.000000e+00, float %5196
  %5229 = select i1 %260, float %5227, float %5199
  %5230 = select i1 %260, float 0.000000e+00, float %5202
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5222, float %5224, float %5226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = select i1 %260, float 0.000000e+00, float %5222
  %5233 = select i1 %260, float %5231, float %5224
  %5234 = select i1 %260, float 0.000000e+00, float %5226
  %5235 = fmul fast float %5111, 9.843750e-01
  %5236 = fmul fast float %5106, 9.843750e-01
  %5237 = fadd fast float %5235, 7.812500e-03
  %5238 = fadd fast float %5236, 7.812500e-03
  %5239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5237, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 3
  %5242 = fmul fast float %5240, %5100
  %5243 = fmul fast float %5240, %5101
  %5244 = fmul fast float %5240, %5109
  %5245 = fadd fast float %5242, %5241
  %5246 = fadd fast float %5243, %5241
  %5247 = fadd fast float %5244, %5241
  %5248 = fcmp fast ogt float %3903, 0.000000e+00
  br i1 %5248, label %5249, label %5275

; <label>:5249                                    ; preds = %5090
  %5250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3903, float %5111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5251 = extractvalue %dx.types.ResRet.f32 %5250, 0
  %5252 = extractvalue %dx.types.ResRet.f32 %5250, 1
  %5253 = extractvalue %dx.types.ResRet.f32 %5250, 2
  %5254 = fadd fast float %5251, -5.000000e-01
  %5255 = fadd fast float %5252, -5.000000e-01
  %5256 = fadd fast float %5253, -5.000000e-01
  %5257 = fsub fast float 1.000000e+00, %5100
  %5258 = fsub fast float 1.000000e+00, %5101
  %5259 = fsub fast float 1.000000e+00, %5109
  %5260 = fmul fast float %5100, 4.000000e+00
  %5261 = fmul fast float %5260, %5257
  %5262 = fmul fast float %5261, %5254
  %5263 = fmul fast float %5101, 4.000000e+00
  %5264 = fmul fast float %5263, %5258
  %5265 = fmul fast float %5264, %5255
  %5266 = fmul fast float %5109, 4.000000e+00
  %5267 = fmul fast float %5266, %5259
  %5268 = fmul fast float %5267, %5256
  %5269 = fadd fast float %5262, %5245
  %5270 = fadd fast float %5265, %5246
  %5271 = fadd fast float %5268, %5247
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  br label %5275

; <label>:5275                                    ; preds = %5249, %5090
  %5276 = phi float [ %5272, %5249 ], [ %5245, %5090 ]
  %5277 = phi float [ %5273, %5249 ], [ %5246, %5090 ]
  %5278 = phi float [ %5274, %5249 ], [ %5247, %5090 ]
  %5279 = call float @dx.op.binary.f32(i32 35, float %5277, float %5278)  ; FMax(a,b)
  %5280 = call float @dx.op.binary.f32(i32 35, float %5276, float %5279)  ; FMax(a,b)
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = fmul fast float %5280, %5106
  %5283 = fadd fast float %5282, %5106
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5287 = fmul fast float %5283, %5285
  %5288 = fadd fast float %5287, %5286
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fsub fast float 1.000000e+00, %5132
  %5291 = fadd fast float %5290, %5289
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fcmp fast olt float %5292, 1.000000e+00
  br i1 %5293, label %5294, label %5770

; <label>:5294                                    ; preds = %5275
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 3
  %5298 = fmul fast float %5296, %114
  %5299 = fmul fast float %5297, %115
  %5300 = fptoui float %5298 to i32
  %5301 = fptoui float %5299 to i32
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5305 = extractvalue %dx.types.CBufRet.f32 %5302, 3
  %5306 = fadd fast float %101, -4.000000e+00
  %5307 = call float @dx.op.binary.f32(i32 35, float %5306, float 0.000000e+00)  ; FMax(a,b)
  %5308 = fadd fast float %5307, %5303
  %5309 = fmul fast float %5308, %5304
  %5310 = call float @dx.op.unary.f32(i32 23, float %5309)  ; Log(value)
  %5311 = fmul fast float %5310, %5305
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5314 = fmul fast float %5311, %5313
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.i32 %5316, 1
  %5318 = add i32 %5317, -1
  %5319 = uitofp i32 %5317 to float
  %5320 = fmul fast float %5319, %5315
  %5321 = fptoui float %5320 to i32
  %5322 = call i32 @dx.op.binary.i32(i32 40, i32 %5321, i32 %5318)  ; UMin(a,b)
  %5323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.i32 %5323, 2
  %5325 = extractvalue %dx.types.CBufRet.i32 %5323, 3
  %5326 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5301, i32 %5324, i32 %5300)  ; UMad(a,b,c)
  %5327 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5322, i32 %5325, i32 %5326)  ; UMad(a,b,c)
  %5328 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5329 = fptoui float %5328 to i32
  %5330 = lshr i32 %5329, 5
  %5331 = call i32 @dx.op.binary.i32(i32 40, i32 %5330, i32 8191)  ; UMin(a,b)
  %5332 = fsub fast float %4307, %203
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fcmp fast ogt float %5333, 0.000000e+00
  %5335 = fcmp fast ogt float %5119, 0.000000e+00
  %5336 = and i1 %5335, %5334
  br i1 %5336, label %5337, label %5366

; <label>:5337                                    ; preds = %5294
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5338, float -1.000000e+00)  ; FMax(a,b)
  %5340 = call float @dx.op.binary.f32(i32 36, float %5339, float 1.000000e+00)  ; FMin(a,b)
  %5341 = fmul fast float %5340, %5340
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = fmul fast float %5342, 0x3FFC6E2300000000
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = fcmp fast ogt float %5344, 0.000000e+00
  %5346 = call float @dx.op.unary.f32(i32 24, float %5344)  ; Sqrt(value)
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = call float @dx.op.unary.f32(i32 23, float %5347)  ; Log(value)
  %5349 = fmul fast float %5348, 5.000000e+00
  %5350 = call float @dx.op.unary.f32(i32 21, float %5349)  ; Exp(value)
  %5351 = fmul fast float %5350, 0x3FEF591A60000000
  %5352 = fadd fast float %5351, 0x3F94DCB540000000
  %5353 = select i1 %5345, float %5352, float 1.000000e+00
  %5354 = fcmp fast oge float %5353, 1.000000e+00
  %5355 = fmul fast float %5338, 2.000000e+00
  %5356 = fadd fast float %5355, %5119
  %5357 = select i1 %5354, float %5356, float %5119
  %5358 = fsub fast float %5357, %5119
  %5359 = fmul fast float %5358, %5333
  %5360 = fadd fast float %5359, %5119
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5360, float %5117, float %5118, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.unary.f32(i32 25, float %5361)  ; Rsqrt(value)
  %5363 = fmul fast float %5362, %5117
  %5364 = fmul fast float %5362, %5118
  %5365 = fmul fast float %5360, %5362
  br label %5366

; <label>:5366                                    ; preds = %5337, %5294
  %5367 = phi float [ %5363, %5337 ], [ %5117, %5294 ]
  %5368 = phi float [ %5364, %5337 ], [ %5118, %5294 ]
  %5369 = phi float [ %5365, %5337 ], [ %5119, %5294 ]
  %5370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.i32 %5370, 2
  %5372 = add nsw i32 %5371, -1
  %5373 = call i32 @dx.op.binary.i32(i32 37, i32 %5372, i32 0)  ; IMax(a,b)
  %5374 = shl i32 %5331, 2
  %5375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.i32 %5375, 0
  %5377 = lshr i32 %5376, 16
  %5378 = and i32 %5376, 65535
  %5379 = lshr i32 %5376, 21
  %5380 = lshr i32 %5378, 5
  %5381 = call i32 @dx.op.binary.i32(i32 40, i32 %5380, i32 %5373)  ; UMin(a,b)
  %5382 = icmp ugt i32 %5379, %5381
  br i1 %5382, label %5746, label %5383

; <label>:5383                                    ; preds = %5366
  br label %5384

; <label>:5384                                    ; preds = %5738, %5383
  %5385 = phi float [ %5739, %5738 ], [ 0.000000e+00, %5383 ]
  %5386 = phi float [ %5740, %5738 ], [ 0.000000e+00, %5383 ]
  %5387 = phi float [ %5741, %5738 ], [ 0.000000e+00, %5383 ]
  %5388 = phi float [ %5742, %5738 ], [ 1.000000e+00, %5383 ]
  %5389 = phi i32 [ %5743, %5738 ], [ %5379, %5383 ]
  %5390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.i32 %5390, 2
  %5392 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5327, i32 %5391, i32 %5389)  ; UMad(a,b,c)
  %5393 = shl i32 %5392, 2
  %5394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.i32 %5394, 0
  %5396 = shl i32 %5389, 5
  %5397 = sub nsw i32 %5377, %5396
  %5398 = call i32 @dx.op.binary.i32(i32 37, i32 %5397, i32 0)  ; IMax(a,b)
  %5399 = call i32 @dx.op.binary.i32(i32 38, i32 %5398, i32 31)  ; IMin(a,b)
  %5400 = sub nsw i32 1, %5377
  %5401 = add nsw i32 %5400, %5378
  %5402 = call i32 @dx.op.binary.i32(i32 37, i32 %5401, i32 0)  ; IMax(a,b)
  %5403 = call i32 @dx.op.binary.i32(i32 38, i32 %5402, i32 32)  ; IMin(a,b)
  %5404 = and i32 %5403, 31
  %5405 = shl i32 -1, %5404
  %5406 = xor i32 %5405, -1
  %5407 = and i32 %5399, 31
  %5408 = shl i32 %5406, %5407
  %5409 = icmp eq i32 %5403, 32
  %5410 = select i1 %5409, i32 -1, i32 %5408
  %5411 = and i32 %5410, %5395
  %5412 = icmp eq i32 %5411, 0
  br i1 %5412, label %5738, label %5413

; <label>:5413                                    ; preds = %5384
  br label %5414

; <label>:5414                                    ; preds = %5521, %5413
  %5415 = phi float [ %5522, %5521 ], [ %5385, %5413 ]
  %5416 = phi float [ %5523, %5521 ], [ %5386, %5413 ]
  %5417 = phi float [ %5524, %5521 ], [ %5387, %5413 ]
  %5418 = phi float [ %5525, %5521 ], [ %5388, %5413 ]
  %5419 = phi i32 [ %5424, %5521 ], [ %5411, %5413 ]
  %5420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5419)  ; FirstbitLo(value)
  %5421 = add i32 %5420, %5396
  %5422 = and i32 %5420, 31
  %5423 = shl i32 1, %5422
  %5424 = xor i32 %5423, %5419
  %5425 = mul i32 %5421, 72
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.ResRet.f32 %5426, 1
  %5429 = extractvalue %dx.types.ResRet.f32 %5426, 2
  %5430 = add i32 %5425, 12
  %5431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.i32 %5431, 0
  %5433 = add i32 %5425, 16
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = add i32 %5425, 28
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = add i32 %5425, 32
  %5442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5441, i32 undef)  ; BufferLoad(srv,index,wot)
  %5443 = extractvalue %dx.types.ResRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.ResRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.ResRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.ResRet.f32 %5442, 3
  %5447 = add i32 %5425, 48
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 1
  %5451 = add i32 %5425, 56
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = add i32 %5425, 64
  %5456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = mul i32 %5421, 60
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = add i32 %5459, 12
  %5465 = add i32 %5459, 48
  %5466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5470 = and i32 %5432, 32767
  %5471 = bitcast float %5427 to i32
  %5472 = icmp eq i32 %5471, -1
  %5473 = bitcast float %5428 to i32
  %5474 = and i32 %5432, 32768
  %5475 = icmp ne i32 %5474, 0
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = fsub fast float %5461, %5477
  %5481 = fsub fast float %5462, %5478
  %5482 = fsub fast float %5463, %5479
  %5483 = fsub fast float %201, %5480
  %5484 = fsub fast float %202, %5481
  %5485 = fsub fast float %203, %5482
  %5486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.ResRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.ResRet.f32 %5486, 2
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = add i32 %5459, 24
  %5492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5491, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.ResRet.f32 %5492, 2
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5493, float %5494, float %5495)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = add i32 %5459, 36
  %5498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5497, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.ResRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.ResRet.f32 %5498, 2
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5499, float %5500, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5504 = call float @dx.op.unary.f32(i32 6, float %5496)  ; FAbs(value)
  %5505 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5506 = fsub fast float %5467, %5503
  %5507 = fsub fast float %5468, %5504
  %5508 = fsub fast float %5469, %5505
  %5509 = fmul fast float %5506, %5435
  %5510 = fmul fast float %5507, %5436
  %5511 = fmul fast float %5508, %5437
  %5512 = call float @dx.op.binary.f32(i32 36, float %5510, float %5511)  ; FMin(a,b)
  %5513 = call float @dx.op.binary.f32(i32 36, float %5509, float %5512)  ; FMin(a,b)
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = call float @dx.op.binary.f32(i32 36, float %5418, float %5514)  ; FMin(a,b)
  %5516 = uitofp i1 %5475 to float
  %5517 = fadd fast float %5333, 1.000000e+00
  %5518 = fsub fast float %5517, %5516
  %5519 = fmul fast float %5515, %5518
  %5520 = fcmp fast ogt float %5519, 0.000000e+00
  br i1 %5520, label %5527, label %5521

; <label>:5521                                    ; preds = %5669, %5414
  %5522 = phi float [ %5733, %5669 ], [ %5415, %5414 ]
  %5523 = phi float [ %5734, %5669 ], [ %5416, %5414 ]
  %5524 = phi float [ %5735, %5669 ], [ %5417, %5414 ]
  %5525 = phi float [ %5736, %5669 ], [ %5418, %5414 ]
  %5526 = icmp eq i32 %5419, %5423
  br i1 %5526, label %5737, label %5414

; <label>:5527                                    ; preds = %5414
  br i1 %5472, label %5585, label %5528

; <label>:5528                                    ; preds = %5527
  %5529 = fsub fast float -0.000000e+00, %5487
  %5530 = fsub fast float -0.000000e+00, %5488
  %5531 = fsub fast float -0.000000e+00, %5489
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float %5529, float %5530, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fsub fast float -0.000000e+00, %5532
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5529, float %5530, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fadd fast float %5534, %5450
  %5536 = fadd fast float %5449, %5534
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = fcmp ogt float %5532, -0.000000e+00
  %5539 = select i1 %5538, float %5537, float %5535
  %5540 = call float @dx.op.unary.f32(i32 6, float %5533)  ; FAbs(value)
  %5541 = fdiv fast float 1.000000e+00, %5540
  %5542 = fmul fast float %5539, %5541
  %5543 = call float @dx.op.binary.f32(i32 35, float %5542, float 0.000000e+00)  ; FMax(a,b)
  %5544 = fsub fast float -0.000000e+00, %5493
  %5545 = fsub fast float -0.000000e+00, %5494
  %5546 = fsub fast float -0.000000e+00, %5495
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fsub fast float -0.000000e+00, %5547
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fadd fast float %5549, %5454
  %5551 = fadd fast float %5453, %5549
  %5552 = fsub fast float -0.000000e+00, %5551
  %5553 = fcmp ogt float %5547, -0.000000e+00
  %5554 = select i1 %5553, float %5552, float %5550
  %5555 = call float @dx.op.unary.f32(i32 6, float %5548)  ; FAbs(value)
  %5556 = fdiv fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5554, %5556
  %5558 = call float @dx.op.binary.f32(i32 35, float %5557, float 0.000000e+00)  ; FMax(a,b)
  %5559 = fsub fast float -0.000000e+00, %5499
  %5560 = fsub fast float -0.000000e+00, %5500
  %5561 = fsub fast float -0.000000e+00, %5501
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5367, float %5368, float %5369, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fsub fast float -0.000000e+00, %5562
  %5564 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5484, float %5485, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5565 = fadd fast float %5564, %5458
  %5566 = fadd fast float %5457, %5564
  %5567 = fsub fast float -0.000000e+00, %5566
  %5568 = fcmp ogt float %5562, -0.000000e+00
  %5569 = select i1 %5568, float %5567, float %5565
  %5570 = call float @dx.op.unary.f32(i32 6, float %5563)  ; FAbs(value)
  %5571 = fdiv fast float 1.000000e+00, %5570
  %5572 = fmul fast float %5569, %5571
  %5573 = call float @dx.op.binary.f32(i32 35, float %5572, float 0.000000e+00)  ; FMax(a,b)
  %5574 = call float @dx.op.binary.f32(i32 36, float %5558, float %5573)  ; FMin(a,b)
  %5575 = call float @dx.op.binary.f32(i32 36, float %5543, float %5574)  ; FMin(a,b)
  %5576 = fmul fast float %5575, %5367
  %5577 = fmul fast float %5575, %5368
  %5578 = fmul fast float %5575, %5369
  %5579 = fadd fast float %5576, %201
  %5580 = fadd fast float %5577, %202
  %5581 = fadd fast float %5578, %203
  %5582 = fsub fast float %5579, %5427
  %5583 = fsub fast float %5580, %5428
  %5584 = fsub fast float %5581, %5429
  br label %5592

; <label>:5585                                    ; preds = %5527
  %5586 = fmul fast float %5367, 8.096000e+03
  %5587 = fmul fast float %5368, 8.096000e+03
  %5588 = fmul fast float %5369, 8.096000e+03
  %5589 = fadd fast float %5586, %201
  %5590 = fadd fast float %5587, %202
  %5591 = fadd fast float %5588, %203
  br label %5592

; <label>:5592                                    ; preds = %5585, %5528
  %5593 = phi float [ %5367, %5585 ], [ %5582, %5528 ]
  %5594 = phi float [ %5368, %5585 ], [ %5583, %5528 ]
  %5595 = phi float [ %5369, %5585 ], [ %5584, %5528 ]
  %5596 = phi float [ %5589, %5585 ], [ %5579, %5528 ]
  %5597 = phi float [ %5590, %5585 ], [ %5580, %5528 ]
  %5598 = phi float [ %5591, %5585 ], [ %5581, %5528 ]
  %5599 = fcmp fast olt float %5446, 1.000000e+00
  br i1 %5599, label %5600, label %5631, !dx.controlflow.hints !100

; <label>:5600                                    ; preds = %5592
  %5601 = fmul fast float %5595, %5444
  %5602 = fmul fast float %5594, %5445
  %5603 = fsub fast float %5601, %5602
  %5604 = fmul fast float %5593, %5445
  %5605 = fmul fast float %5595, %5443
  %5606 = fsub fast float %5604, %5605
  %5607 = fmul fast float %5594, %5443
  %5608 = fmul fast float %5593, %5444
  %5609 = fsub fast float %5607, %5608
  %5610 = fmul fast float %5603, 2.000000e+00
  %5611 = fmul fast float %5606, 2.000000e+00
  %5612 = fmul fast float %5609, 2.000000e+00
  %5613 = fmul fast float %5610, %5446
  %5614 = fmul fast float %5611, %5446
  %5615 = fmul fast float %5612, %5446
  %5616 = fmul fast float %5612, %5444
  %5617 = fmul fast float %5611, %5445
  %5618 = fmul fast float %5610, %5445
  %5619 = fmul fast float %5612, %5443
  %5620 = fmul fast float %5611, %5443
  %5621 = fmul fast float %5610, %5444
  %5622 = fadd fast float %5616, %5593
  %5623 = fadd fast float %5622, %5613
  %5624 = fsub fast float %5623, %5617
  %5625 = fsub fast float %5594, %5619
  %5626 = fadd fast float %5625, %5614
  %5627 = fadd fast float %5626, %5618
  %5628 = fadd fast float %5615, %5595
  %5629 = fsub fast float %5628, %5621
  %5630 = fadd fast float %5629, %5620
  br label %5631

; <label>:5631                                    ; preds = %5600, %5592
  %5632 = phi float [ %5624, %5600 ], [ %5593, %5592 ]
  %5633 = phi float [ %5627, %5600 ], [ %5594, %5592 ]
  %5634 = phi float [ %5630, %5600 ], [ %5595, %5592 ]
  br i1 %5472, label %5666, label %5635

; <label>:5635                                    ; preds = %5631
  %5636 = fmul fast float %5106, 0x400187C840000000
  %5637 = fadd fast float %5636, 0xC00EFC2120000000
  %5638 = fmul fast float %5637, %5106
  %5639 = fadd fast float %5638, 0x3FE5D16340000000
  %5640 = fmul fast float %5639, %5106
  %5641 = fadd fast float %5640, 1.000000e+00
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fsub fast float %5596, %201
  %5644 = fsub fast float %5597, %202
  %5645 = fsub fast float %5598, %203
  %5646 = fsub fast float %5596, %5427
  %5647 = fsub fast float %5597, %5428
  %5648 = fsub fast float %5598, %5429
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5644, float %5645, float %5643, float %5644, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = fadd fast float %5650, 0x3EE4F8B580000000
  %5652 = fdiv fast float %5649, %5651
  %5653 = bitcast float %5652 to i32
  %5654 = ashr i32 %5653, 1
  %5655 = add nsw i32 %5654, 532487669
  %5656 = bitcast i32 %5655 to float
  %5657 = fmul fast float %5656, %5642
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fmul fast float %5658, 0x4009981AE0000000
  %5660 = fsub fast float 0x40111BBD80000000, %5659
  %5661 = fmul fast float %5660, %5658
  %5662 = fadd fast float %5661, 0xC0009F6020000000
  %5663 = fmul fast float %5662, %5658
  %5664 = fadd fast float %5663, 1.000000e+00
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  br label %5669

; <label>:5666                                    ; preds = %5631
  %5667 = icmp ne i32 %5473, -1
  %5668 = zext i1 %5667 to i32
  br label %5669

; <label>:5669                                    ; preds = %5666, %5635
  %5670 = phi float [ %5106, %5666 ], [ %5665, %5635 ]
  %5671 = phi i32 [ %5668, %5666 ], [ 0, %5635 ]
  %5672 = fmul float %5670, 5.000000e+00
  %5673 = fsub float 5.000000e+00, %5672
  %5674 = icmp ne i32 %5671, 0
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5677 = fadd fast float %5676, %5673
  %5678 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5677)  ; FMax(a,b)
  %5679 = call float @dx.op.unary.f32(i32 6, float %5632)  ; FAbs(value)
  %5680 = call float @dx.op.unary.f32(i32 6, float %5633)  ; FAbs(value)
  %5681 = fadd fast float %5680, %5679
  %5682 = call float @dx.op.unary.f32(i32 6, float %5634)  ; FAbs(value)
  %5683 = fadd fast float %5681, %5682
  %5684 = fcmp fast oeq float %5683, 0.000000e+00
  %5685 = fdiv fast float 1.000000e+00, %5683
  %5686 = select i1 %5684, float 1.000000e+00, float %5685
  %5687 = fmul fast float %5686, %5632
  %5688 = fmul fast float %5686, %5633
  %5689 = call float @dx.op.unary.f32(i32 6, float %5688)  ; FAbs(value)
  %5690 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5691 = fsub fast float 1.000000e+00, %5689
  %5692 = fsub fast float 1.000000e+00, %5690
  %5693 = fcmp fast oge float %5687, 0.000000e+00
  %5694 = fcmp fast oge float %5688, 0.000000e+00
  %5695 = select i1 %5693, float 1.000000e+00, float -1.000000e+00
  %5696 = select i1 %5694, float 1.000000e+00, float -1.000000e+00
  %5697 = fcmp fast ole float %5634, 0.000000e+00
  %5698 = fmul fast float %5695, %5691
  %5699 = fmul fast float %5696, %5692
  %5700 = select i1 %5697, float %5698, float %5687
  %5701 = select i1 %5697, float %5699, float %5688
  %5702 = fmul fast float %5700, 5.000000e-01
  %5703 = fmul fast float %5701, 5.000000e-01
  %5704 = fadd fast float %5702, 5.000000e-01
  %5705 = fadd fast float %5703, 5.000000e-01
  %5706 = uitofp i32 %5470 to float
  %5707 = call float @dx.op.binary.f32(i32 36, float %5678, float 3.000000e+00)  ; FMin(a,b)
  %5708 = fadd fast float %5707, 2.000000e+00
  %5709 = call float @dx.op.unary.f32(i32 21, float %5708)  ; Exp(value)
  %5710 = extractvalue %dx.types.CBufRet.f32 %5675, 1
  %5711 = fmul fast float %5710, %5709
  %5712 = fmul fast float %5711, 2.000000e+00
  %5713 = fsub fast float 1.000000e+00, %5712
  %5714 = fmul fast float %5704, %5713
  %5715 = fmul fast float %5705, %5713
  %5716 = fadd fast float %5714, %5711
  %5717 = fadd fast float %5715, %5711
  %5718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5716, float %5717, float %5706, float undef, i32 0, i32 0, i32 undef, float %5678)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5724 = fmul fast float %5723, %5440
  %5725 = call float @dx.op.binary.f32(i32 36, float %5173, float %5724)  ; FMin(a,b)
  %5726 = select i1 %5674, float %5725, float %5724
  %5727 = fmul fast float %5719, %5519
  %5728 = fmul fast float %5727, %5726
  %5729 = fmul fast float %5720, %5519
  %5730 = fmul fast float %5729, %5726
  %5731 = fmul fast float %5721, %5519
  %5732 = fmul fast float %5731, %5726
  %5733 = fadd fast float %5728, %5415
  %5734 = fadd fast float %5730, %5416
  %5735 = fadd fast float %5732, %5417
  %5736 = fsub fast float %5418, %5519
  br label %5521

; <label>:5737                                    ; preds = %5521
  br label %5738

; <label>:5738                                    ; preds = %5737, %5384
  %5739 = phi float [ %5385, %5384 ], [ %5522, %5737 ]
  %5740 = phi float [ %5386, %5384 ], [ %5523, %5737 ]
  %5741 = phi float [ %5387, %5384 ], [ %5524, %5737 ]
  %5742 = phi float [ %5388, %5384 ], [ %5525, %5737 ]
  %5743 = add i32 %5389, 1
  %5744 = icmp ugt i32 %5743, %5381
  br i1 %5744, label %5745, label %5384, !llvm.loop !101

; <label>:5745                                    ; preds = %5738
  br label %5746

; <label>:5746                                    ; preds = %5745, %5366
  %5747 = phi float [ 0.000000e+00, %5366 ], [ %5739, %5745 ]
  %5748 = phi float [ 0.000000e+00, %5366 ], [ %5740, %5745 ]
  %5749 = phi float [ 0.000000e+00, %5366 ], [ %5741, %5745 ]
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = select i1 %260, float 0.000000e+00, float %5747
  %5752 = select i1 %260, float %5750, float %5748
  %5753 = select i1 %260, float 0.000000e+00, float %5749
  %5754 = fcmp fast olt float %5292, 0.000000e+00
  %5755 = call float @dx.op.unary.f32(i32 6, float %5292)  ; FAbs(value)
  %5756 = fmul fast float %5755, %5232
  %5757 = fmul fast float %5755, %5233
  %5758 = fmul fast float %5755, %5234
  %5759 = select i1 %5754, float %5232, float %5756
  %5760 = select i1 %5754, float %5233, float %5757
  %5761 = select i1 %5754, float %5234, float %5758
  %5762 = fsub fast float 1.000000e+00, %5755
  %5763 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5764 = fmul fast float %5763, %5751
  %5765 = fmul fast float %5763, %5752
  %5766 = fmul fast float %5763, %5753
  %5767 = fadd fast float %5759, %5764
  %5768 = fadd fast float %5760, %5765
  %5769 = fadd fast float %5761, %5766
  br label %5770

; <label>:5770                                    ; preds = %5746, %5275
  %5771 = phi float [ %5232, %5275 ], [ %5767, %5746 ]
  %5772 = phi float [ %5233, %5275 ], [ %5768, %5746 ]
  %5773 = phi float [ %5234, %5275 ], [ %5769, %5746 ]
  %5774 = fmul fast float %5281, %5228
  %5775 = fmul fast float %5281, %5229
  %5776 = fmul fast float %5281, %5230
  %5777 = call float @dx.op.dot3.f32(i32 55, float %5097, float %5098, float %5099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = fcmp fast ogt float %5777, 0x3E7FF19E20000000
  %5779 = fdiv fast float 1.000000e+00, %5777
  %5780 = select i1 %5778, float %5779, float 0.000000e+00
  %5781 = fmul fast float %5780, %5097
  %5782 = fmul fast float %5780, %5098
  %5783 = fmul fast float %5780, %5099
  %5784 = fadd fast float %5781, -1.000000e+00
  %5785 = fadd fast float %5782, -1.000000e+00
  %5786 = fadd fast float %5783, -1.000000e+00
  %5787 = fmul fast float %5784, 5.000000e-01
  %5788 = fmul fast float %5785, 5.000000e-01
  %5789 = fmul fast float %5786, 5.000000e-01
  %5790 = fadd fast float %5787, 1.000000e+00
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fadd fast float %5789, 1.000000e+00
  %5793 = fmul fast float %5771, %5276
  %5794 = fmul fast float %5772, %5277
  %5795 = fmul fast float %5773, %5278
  %5796 = fsub fast float 1.000000e+00, %5111
  %5797 = bitcast float %5796 to i32
  %5798 = sitofp i32 %5797 to float
  %5799 = fmul fast float %5798, 5.000000e+00
  %5800 = fadd fast float %5799, 0xC1EFBF8940000000
  %5801 = fptosi float %5800 to i32
  %5802 = bitcast i32 %5801 to float
  %5803 = fmul fast float %5802, %3904
  %5804 = fmul fast float %5228, %5803
  %5805 = fmul fast float %5804, %5281
  %5806 = fmul fast float %5805, %5790
  %5807 = fmul fast float %5229, %5803
  %5808 = fmul fast float %5807, %5281
  %5809 = fmul fast float %5808, %5791
  %5810 = fmul fast float %5230, %5803
  %5811 = fmul fast float %5810, %5281
  %5812 = fmul fast float %5811, %5792
  %5813 = fmul fast float %5774, %3900
  %5814 = fmul fast float %5775, %3900
  %5815 = fmul fast float %5776, %3900
  %5816 = fadd fast float %5793, %3893
  %5817 = fadd fast float %5816, %5806
  %5818 = fmul fast float %5817, %3900
  %5819 = fadd fast float %5794, %3894
  %5820 = fadd fast float %5819, %5809
  %5821 = fmul fast float %5820, %3900
  %5822 = fadd fast float %5795, %3895
  %5823 = fadd fast float %5822, %5812
  %5824 = fmul fast float %5823, %3900
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 3
  %5827 = fcmp fast oeq float %5826, 0.000000e+00
  br i1 %5827, label %7531, label %5828

; <label>:5828                                    ; preds = %5770
  %5829 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5830 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5831 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5834 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5835 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5833, float %5834, float %5835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = select i1 %260, float %5837, float %5833
  %5841 = select i1 %260, float %5839, float %5834
  %5842 = select i1 %260, float %5838, float %5835
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5845 = fmul fast float %5844, %121
  %5846 = fmul fast float %5844, %122
  %5847 = fmul fast float %5844, %123
  %5848 = fadd fast float %5845, %201
  %5849 = fadd fast float %5846, %202
  %5850 = fadd fast float %5847, %203
  %5851 = fcmp fast olt float %5826, 0.000000e+00
  br i1 %5851, label %7109, label %5852

; <label>:5852                                    ; preds = %5828
  %5853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5853, 0
  %5855 = extractvalue %dx.types.CBufRet.f32 %5853, 1
  %5856 = extractvalue %dx.types.CBufRet.f32 %5853, 2
  %5857 = extractvalue %dx.types.CBufRet.f32 %5853, 3
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = extractvalue %dx.types.CBufRet.f32 %5858, 3
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.CBufRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.CBufRet.f32 %5863, 2
  %5867 = extractvalue %dx.types.CBufRet.f32 %5863, 3
  %5868 = fmul fast float %5854, %5848
  %5869 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %5855, float %5868)  ; FMad(a,b,c)
  %5870 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %5856, float %5869)  ; FMad(a,b,c)
  %5871 = fadd fast float %5870, %5857
  %5872 = fmul fast float %5859, %5848
  %5873 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %5860, float %5872)  ; FMad(a,b,c)
  %5874 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %5861, float %5873)  ; FMad(a,b,c)
  %5875 = fadd fast float %5874, %5862
  %5876 = fmul fast float %5864, %5848
  %5877 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %5865, float %5876)  ; FMad(a,b,c)
  %5878 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %5866, float %5877)  ; FMad(a,b,c)
  %5879 = fadd fast float %5878, %5867
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = fcmp fast une float %5881, 0.000000e+00
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.CBufRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.CBufRet.f32 %5883, 3
  %5887 = fmul fast float %5886, %5871
  %5888 = fmul fast float %5886, %5875
  %5889 = fadd fast float %5887, %5884
  %5890 = fadd fast float %5888, %5885
  %5891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.CBufRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.CBufRet.f32 %5891, 3
  %5895 = fmul fast float %5894, %5871
  %5896 = fmul fast float %5894, %5875
  %5897 = fadd fast float %5895, %5892
  %5898 = fadd fast float %5896, %5893
  %5899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5900 = extractvalue %dx.types.CBufRet.f32 %5899, 1
  %5901 = fsub fast float %5900, %5879
  %5902 = extractvalue %dx.types.CBufRet.f32 %5899, 2
  %5903 = fmul fast float %5901, %5902
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  br i1 %5882, label %5966, label %5906

; <label>:5906                                    ; preds = %5852
  %5907 = extractvalue %dx.types.CBufRet.f32 %5891, 2
  %5908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5909 = extractvalue %dx.types.CBufRet.f32 %5908, 2
  %5910 = fadd fast float %5909, %5907
  %5911 = fcmp fast ogt float %5910, 0.000000e+00
  br i1 %5911, label %5912, label %5936

; <label>:5912                                    ; preds = %5906
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = fsub fast float %5897, %5914
  %5917 = fsub fast float %5898, %5915
  %5918 = fcmp fast olt float %5916, 0.000000e+00
  %5919 = fcmp fast olt float %5917, 0.000000e+00
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5924 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5925 = select i1 %5918, float %5921, float %5923
  %5926 = select i1 %5919, float %5922, float %5924
  %5927 = fmul fast float %5925, %5916
  %5928 = fmul fast float %5926, %5917
  %5929 = call float @dx.op.unary.f32(i32 6, float %5927)  ; FAbs(value)
  %5930 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5932 = call float @dx.op.binary.f32(i32 35, float %5929, float %5930)  ; FMax(a,b)
  %5933 = fsub fast float %5931, %5932
  %5934 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5935 = fmul fast float %5934, %5905
  br label %5936

; <label>:5936                                    ; preds = %5912, %5906
  %5937 = phi float [ %5935, %5912 ], [ 0.000000e+00, %5906 ]
  %5938 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5908, 1
  %5940 = fadd fast float %5939, %5938
  %5941 = fcmp fast ogt float %5940, 0.000000e+00
  br i1 %5941, label %5942, label %5966

; <label>:5942                                    ; preds = %5936
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = fsub fast float %5889, %5944
  %5947 = fsub fast float %5890, %5945
  %5948 = fcmp fast olt float %5946, 0.000000e+00
  %5949 = fcmp fast olt float %5947, 0.000000e+00
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5955 = select i1 %5948, float %5951, float %5953
  %5956 = select i1 %5949, float %5952, float %5954
  %5957 = fmul fast float %5955, %5946
  %5958 = fmul fast float %5956, %5947
  %5959 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5960 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5962 = call float @dx.op.binary.f32(i32 35, float %5959, float %5960)  ; FMax(a,b)
  %5963 = fsub fast float %5961, %5962
  %5964 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5965 = fmul fast float %5964, %5905
  br label %5966

; <label>:5966                                    ; preds = %5942, %5936, %5852
  %5967 = phi float [ 0.000000e+00, %5852 ], [ %5965, %5942 ], [ 0.000000e+00, %5936 ]
  %5968 = phi float [ 0.000000e+00, %5852 ], [ %5937, %5942 ], [ %5937, %5936 ]
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 1
  %5971 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5975 = fsub fast float %5871, %5973
  %5976 = fsub fast float %5875, %5974
  %5977 = fcmp fast olt float %5975, 0.000000e+00
  %5978 = fcmp fast olt float %5976, 0.000000e+00
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %5983 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5984 = select i1 %5977, float %5980, float %5982
  %5985 = select i1 %5978, float %5981, float %5983
  %5986 = fmul fast float %5984, %5975
  %5987 = fmul fast float %5985, %5976
  %5988 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %5989 = call float @dx.op.unary.f32(i32 6, float %5987)  ; FAbs(value)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5991 = call float @dx.op.binary.f32(i32 35, float %5988, float %5989)  ; FMax(a,b)
  %5992 = fsub fast float %5990, %5991
  %5993 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5994 = call float @dx.op.binary.f32(i32 36, float %5993, float %5971)  ; FMin(a,b)
  %5995 = fmul fast float %5994, %5905
  %5996 = fsub fast float %5967, %5995
  %5997 = fsub fast float %5968, %5967
  %5998 = fsub fast float %5997, %5995
  %5999 = call float @dx.op.binary.f32(i32 35, float %5967, float %5968)  ; FMax(a,b)
  %6000 = call float @dx.op.binary.f32(i32 35, float %5995, float %5999)  ; FMax(a,b)
  %6001 = fcmp fast olt float %6000, 1.000000e+00
  br i1 %6001, label %6002, label %6400, !dx.controlflow.hints !103

; <label>:6002                                    ; preds = %5966
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 0
  %6005 = fcmp fast une float %6004, 0.000000e+00
  br i1 %6005, label %6006, label %6400, !dx.controlflow.hints !104

; <label>:6006                                    ; preds = %6002
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = extractvalue %dx.types.CBufRet.f32 %6007, 2
  %6011 = extractvalue %dx.types.CBufRet.f32 %6007, 3
  %6012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6012, 0
  %6014 = extractvalue %dx.types.CBufRet.f32 %6012, 1
  %6015 = extractvalue %dx.types.CBufRet.f32 %6012, 2
  %6016 = extractvalue %dx.types.CBufRet.f32 %6012, 3
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6022 = fmul fast float %6008, %5848
  %6023 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %6009, float %6022)  ; FMad(a,b,c)
  %6024 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %6010, float %6023)  ; FMad(a,b,c)
  %6025 = fadd fast float %6024, %6011
  %6026 = fmul fast float %6013, %5848
  %6027 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %6014, float %6026)  ; FMad(a,b,c)
  %6028 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %6015, float %6027)  ; FMad(a,b,c)
  %6029 = fadd fast float %6028, %6016
  %6030 = fmul fast float %6018, %5848
  %6031 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %6019, float %6030)  ; FMad(a,b,c)
  %6032 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %6020, float %6031)  ; FMad(a,b,c)
  %6033 = fadd fast float %6032, %6021
  %6034 = fcmp fast oge float %6025, 1.000000e+00
  %6035 = fcmp fast oge float %6029, 1.000000e+00
  %6036 = or i1 %6034, %6035
  %6037 = fcmp fast olt float %6025, 0.000000e+00
  %6038 = fcmp fast olt float %6029, 0.000000e+00
  %6039 = or i1 %6037, %6038
  %6040 = or i1 %6036, %6039
  br i1 %6040, label %6400, label %6041, !dx.controlflow.hints !105

; <label>:6041                                    ; preds = %6006
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.CBufRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.i32 %6046, 2
  %6048 = uitofp i32 %6047 to float
  %6049 = extractvalue %dx.types.CBufRet.i32 %6046, 3
  %6050 = uitofp i32 %6049 to float
  %6051 = extractvalue %dx.types.CBufRet.f32 %6042, 3
  %6052 = fmul fast float %6051, 2.000000e+00
  %6053 = fsub fast float %6025, %6043
  %6054 = fsub fast float %6029, %6044
  %6055 = fmul fast float %6052, %6053
  %6056 = fmul fast float %6052, %6054
  %6057 = fdiv fast float 1.000000e+00, %5831
  %6058 = fmul fast float %6056, %6057
  %6059 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6060 = fmul fast float %6045, %5850
  %6061 = fmul fast float %6060, %6052
  %6062 = call float @dx.op.unary.f32(i32 6, float %6061)  ; FAbs(value)
  %6063 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6064 = call float @dx.op.binary.f32(i32 35, float %6062, float %6059)  ; FMax(a,b)
  %6065 = call float @dx.op.binary.f32(i32 35, float %6063, float %6064)  ; FMax(a,b)
  %6066 = fmul fast float %6065, 2.000000e+00
  %6067 = call float @dx.op.unary.f32(i32 23, float %6066)  ; Log(value)
  %6068 = call float @dx.op.binary.f32(i32 35, float %6067, float %6048)  ; FMax(a,b)
  %6069 = call float @dx.op.unary.f32(i32 22, float %6068)  ; Frc(value)
  %6070 = fadd fast float %6069, 0xBFEA666660000000
  %6071 = fmul fast float %6070, 8.000000e+00
  %6072 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6073 = call float @dx.op.unary.f32(i32 27, float %6068)  ; Round_ni(value)
  %6074 = fadd fast float %6073, %6072
  %6075 = call float @dx.op.binary.f32(i32 36, float %6074, float %6050)  ; FMin(a,b)
  %6076 = call float @dx.op.unary.f32(i32 27, float %6075)  ; Round_ni(value)
  %6077 = fsub fast float -0.000000e+00, %6076
  %6078 = call float @dx.op.unary.f32(i32 21, float %6077)  ; Exp(value)
  %6079 = fmul fast float %6078, %6052
  %6080 = fmul fast float %6079, %6025
  %6081 = fmul fast float %6079, %6029
  %6082 = fmul fast float %6080, 2.500000e-01
  %6083 = fmul fast float %6081, 2.500000e-01
  %6084 = fadd fast float %6082, 5.000000e-01
  %6085 = fadd fast float %6083, 5.000000e-01
  %6086 = fsub fast float %6050, %6048
  %6087 = fptoui float %6086 to i32
  %6088 = add i32 %6087, 320
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6088)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = fcmp fast une float %6075, %6050
  %6093 = fsub fast float %6025, %6090
  %6094 = fsub fast float %6029, %6091
  %6095 = call float @dx.op.unary.f32(i32 6, float %6093)  ; FAbs(value)
  %6096 = call float @dx.op.unary.f32(i32 6, float %6094)  ; FAbs(value)
  %6097 = fmul fast float %6095, %6079
  %6098 = fmul fast float %6096, %6079
  %6099 = fcmp fast olt float %6097, 1.000000e+00
  %6100 = fcmp fast olt float %6098, 1.000000e+00
  %6101 = and i1 %6099, %6100
  %6102 = or i1 %6092, %6101
  br i1 %6102, label %6103, label %6400, !dx.controlflow.hints !106

; <label>:6103                                    ; preds = %6041
  %6104 = fmul fast float %6081, 5.000000e-01
  %6105 = fmul fast float %6080, 5.000000e-01
  %6106 = fadd fast float %6104, 5.000000e-01
  %6107 = fadd fast float %6105, 5.000000e-01
  %6108 = sitofp i32 %6047 to float
  %6109 = fsub fast float %6075, %6108
  %6110 = call float @dx.op.unary.f32(i32 27, float %6109)  ; Round_ni(value)
  %6111 = call float @dx.op.unary.f32(i32 22, float %6075)  ; Frc(value)
  %6112 = call float @dx.op.unary.f32(i32 22, float %6107)  ; Frc(value)
  %6113 = call float @dx.op.unary.f32(i32 22, float %6106)  ; Frc(value)
  %6114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6112, float %6113, float %6110, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6118 = extractvalue %dx.types.ResRet.f32 %6114, 3
  %6119 = fcmp fast ogt float %6111, 0.000000e+00
  br i1 %6119, label %6120, label %6141, !dx.controlflow.hints !107

; <label>:6120                                    ; preds = %6103
  %6121 = fadd fast float %6110, 1.000000e+00
  %6122 = call float @dx.op.unary.f32(i32 22, float %6084)  ; Frc(value)
  %6123 = call float @dx.op.unary.f32(i32 22, float %6085)  ; Frc(value)
  %6124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6122, float %6123, float %6121, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6125 = extractvalue %dx.types.ResRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.ResRet.f32 %6124, 1
  %6127 = extractvalue %dx.types.ResRet.f32 %6124, 2
  %6128 = extractvalue %dx.types.ResRet.f32 %6124, 3
  %6129 = fsub fast float %6125, %6115
  %6130 = fsub fast float %6126, %6116
  %6131 = fsub fast float %6127, %6117
  %6132 = fsub fast float %6128, %6118
  %6133 = fmul fast float %6129, %6111
  %6134 = fmul fast float %6130, %6111
  %6135 = fmul fast float %6131, %6111
  %6136 = fmul fast float %6132, %6111
  %6137 = fadd fast float %6133, %6115
  %6138 = fadd fast float %6134, %6116
  %6139 = fadd fast float %6135, %6117
  %6140 = fadd fast float %6136, %6118
  br label %6141

; <label>:6141                                    ; preds = %6120, %6103
  %6142 = phi float [ %6137, %6120 ], [ %6115, %6103 ]
  %6143 = phi float [ %6138, %6120 ], [ %6116, %6103 ]
  %6144 = phi float [ %6139, %6120 ], [ %6117, %6103 ]
  %6145 = phi float [ %6140, %6120 ], [ %6118, %6103 ]
  %6146 = fadd fast float %6142, -5.000000e-01
  %6147 = fadd fast float %6144, -5.000000e-01
  %6148 = fmul fast float %6146, 0xBFD5555560000000
  %6149 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6147, float %6148)  ; FMad(a,b,c)
  %6150 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6143, float 0.000000e+00)  ; FMad(a,b,c)
  %6151 = fadd fast float %6150, %6145
  %6152 = fmul fast float %6146, -7.500000e-01
  %6153 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6147, float %6152)  ; FMad(a,b,c)
  %6154 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6143, float 0.000000e+00)  ; FMad(a,b,c)
  %6155 = fadd fast float %6154, %6145
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6163 = fsub fast float %6159, %6149
  %6164 = fsub fast float %6160, %6151
  %6165 = fsub fast float %6161, %6153
  %6166 = fsub fast float %6162, %6155
  %6167 = fmul fast float %6163, %6157
  %6168 = fmul fast float %6164, %6157
  %6169 = fmul fast float %6165, %6157
  %6170 = fmul fast float %6166, %6157
  %6171 = fadd fast float %6167, %6149
  %6172 = fadd fast float %6168, %6151
  %6173 = fadd fast float %6169, %6153
  %6174 = fadd fast float %6170, %6155
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = and i32 %6176, 536870911
  %6178 = uitofp i32 %6177 to float
  %6179 = fmul fast float %6178, %6025
  %6180 = fmul fast float %6178, %6029
  %6181 = fptoui float %6179 to i32
  %6182 = fptoui float %6180 to i32
  %6183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.i32 %6183, 0
  %6185 = and i32 %6184, 31
  %6186 = lshr i32 %6181, %6185
  %6187 = lshr i32 %6182, %6185
  %6188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6189 = extractvalue %dx.types.ResRet.i32 %6188, 0
  %6190 = and i32 %6189, 31
  %6191 = shl i32 1, %6190
  %6192 = call i32 @dx.op.binary.i32(i32 40, i32 %6191, i32 4)  ; UMin(a,b)
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.i32 %6193, 1
  %6196 = icmp eq i32 %6192, 0
  br i1 %6196, label %6238, label %6197

; <label>:6197                                    ; preds = %6141
  br label %6198

; <label>:6198                                    ; preds = %6226, %6197
  %6199 = phi i32 [ %6229, %6226 ], [ 0, %6197 ]
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = lshr i32 %6201, 16
  %6203 = and i32 %6202, 31
  %6204 = shl i32 %6187, %6203
  %6205 = add i32 %6204, %6186
  %6206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.i32 %6206, 0
  %6208 = and i32 %6207, 31
  %6209 = shl i32 %6205, %6208
  %6210 = add i32 %6209, %6199
  %6211 = shl i32 %6210, 2
  %6212 = add i32 %6211, 32
  %6213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6212, i32 undef)  ; BufferLoad(srv,index,wot)
  %6214 = extractvalue %dx.types.ResRet.i32 %6213, 0
  %6215 = icmp slt i32 %6214, 0
  %6216 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6199
  %6217 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6199
  %6218 = bitcast float* %6216 to i32*
  %6219 = bitcast float* %6217 to i32*
  br i1 %6215, label %6220, label %6226

; <label>:6220                                    ; preds = %6198
  %6221 = and i32 %6214, 1073741823
  %6222 = add nuw nsw i32 %6221, 20
  %6223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6222, i32 undef)  ; BufferLoad(srv,index,wot)
  %6224 = extractvalue %dx.types.ResRet.i32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.i32 %6223, 1
  br label %6226

; <label>:6226                                    ; preds = %6220, %6198
  %6227 = phi i32 [ %6224, %6220 ], [ %6194, %6198 ]
  %6228 = phi i32 [ %6225, %6220 ], [ %6195, %6198 ]
  store i32 %6227, i32* %6218, align 4
  store i32 %6228, i32* %6219, align 4
  %6229 = add nuw i32 %6199, 1
  %6230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.i32 %6230, 2
  %6232 = icmp eq i32 %6231, 0
  %6233 = icmp ugt i32 %6214, -1073741825
  %6234 = and i1 %6233, %6232
  %6235 = icmp ult i32 %6229, %6192
  %6236 = and i1 %6234, %6235
  br i1 %6236, label %6198, label %6237

; <label>:6237                                    ; preds = %6226
  br label %6238

; <label>:6238                                    ; preds = %6237, %6141
  %6239 = phi i32 [ 0, %6141 ], [ %6229, %6237 ]
  %6240 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6241 = fptoui float %6240 to i32
  %6242 = icmp eq i32 %6241, 0
  br i1 %6242, label %6294, label %6243

; <label>:6243                                    ; preds = %6238
  br label %6244

; <label>:6244                                    ; preds = %6289, %6243
  %6245 = phi i32 [ %6290, %6289 ], [ %6239, %6243 ]
  %6246 = phi i32 [ %6291, %6289 ], [ 0, %6243 ]
  %6247 = lshr i32 %6246, 2
  %6248 = and i32 %6246, 3
  %6249 = add nuw nsw i32 %6247, 83
  %6250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6249)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.i32 %6250, 0
  %6252 = extractvalue %dx.types.CBufRet.i32 %6250, 1
  %6253 = extractvalue %dx.types.CBufRet.i32 %6250, 2
  %6254 = extractvalue %dx.types.CBufRet.i32 %6250, 3
  %6255 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6251, i32* %6255, align 4
  %6256 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6252, i32* %6256, align 4
  %6257 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6253, i32* %6257, align 4
  %6258 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6254, i32* %6258, align 4
  %6259 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6248
  %6260 = load i32, i32* %6259, align 4, !tbaa !108, !noalias !112
  %6261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.i32 %6261, 0
  %6263 = lshr i32 %6262, 16
  %6264 = and i32 %6263, 31
  %6265 = shl i32 %6187, %6264
  %6266 = add i32 %6265, %6186
  %6267 = shl i32 %6266, 2
  %6268 = add i32 %6267, %6260
  %6269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6268, i32 undef)  ; BufferLoad(srv,index,wot)
  %6270 = extractvalue %dx.types.ResRet.i32 %6269, 0
  %6271 = icmp eq i32 %6270, 0
  br i1 %6271, label %6289, label %6272

; <label>:6272                                    ; preds = %6244
  %6273 = icmp slt i32 %6270, 0
  %6274 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6245
  %6275 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6245
  %6276 = bitcast float* %6274 to i32*
  %6277 = bitcast float* %6275 to i32*
  br i1 %6273, label %6278, label %6285

; <label>:6278                                    ; preds = %6272
  %6279 = and i32 %6270, 1073741823
  %6280 = add i32 %6260, 20
  %6281 = add i32 %6280, %6279
  %6282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6281, i32 undef)  ; BufferLoad(srv,index,wot)
  %6283 = extractvalue %dx.types.ResRet.i32 %6282, 0
  %6284 = extractvalue %dx.types.ResRet.i32 %6282, 1
  br label %6285

; <label>:6285                                    ; preds = %6278, %6272
  %6286 = phi i32 [ %6283, %6278 ], [ %6194, %6272 ]
  %6287 = phi i32 [ %6284, %6278 ], [ %6195, %6272 ]
  store i32 %6286, i32* %6276, align 4
  store i32 %6287, i32* %6277, align 4
  %6288 = add i32 %6245, 1
  br label %6289

; <label>:6289                                    ; preds = %6285, %6244
  %6290 = phi i32 [ %6245, %6244 ], [ %6288, %6285 ]
  %6291 = add nuw i32 %6246, 1
  %6292 = icmp eq i32 %6291, %6241
  br i1 %6292, label %6293, label %6244

; <label>:6293                                    ; preds = %6289
  br label %6294

; <label>:6294                                    ; preds = %6293, %6238
  %6295 = phi i32 [ %6239, %6238 ], [ %6290, %6293 ]
  %6296 = icmp eq i32 %6295, 1
  %6297 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6298 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6296, label %6299, label %6302

; <label>:6299                                    ; preds = %6294
  %6300 = load float, float* %6297, align 4
  %6301 = load float, float* %6298, align 4
  br label %6329

; <label>:6302                                    ; preds = %6294
  %6303 = load float, float* %6297, align 4
  %6304 = load float, float* %6298, align 4
  %6305 = fdiv fast float 1.000000e+00, %6304
  %6306 = fsub fast float %6303, %6305
  %6307 = icmp ugt i32 %6295, 1
  br i1 %6307, label %6308, label %6324

; <label>:6308                                    ; preds = %6302
  br label %6309

; <label>:6309                                    ; preds = %6309, %6308
  %6310 = phi float [ %6319, %6309 ], [ %6306, %6308 ]
  %6311 = phi float [ %6320, %6309 ], [ %6303, %6308 ]
  %6312 = phi i32 [ %6321, %6309 ], [ 1, %6308 ]
  %6313 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6312
  %6314 = load float, float* %6313, align 4
  %6315 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6312
  %6316 = load float, float* %6315, align 4
  %6317 = fdiv fast float 1.000000e+00, %6316
  %6318 = fsub fast float %6314, %6317
  %6319 = call float @dx.op.binary.f32(i32 36, float %6310, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 35, float %6311, float %6314)  ; FMax(a,b)
  %6321 = add nuw i32 %6312, 1
  %6322 = icmp eq i32 %6321, %6295
  br i1 %6322, label %6323, label %6309

; <label>:6323                                    ; preds = %6309
  br label %6324

; <label>:6324                                    ; preds = %6323, %6302
  %6325 = phi float [ %6306, %6302 ], [ %6319, %6323 ]
  %6326 = phi float [ %6303, %6302 ], [ %6320, %6323 ]
  %6327 = fsub fast float %6326, %6325
  %6328 = fdiv fast float 1.000000e+00, %6327
  br label %6329

; <label>:6329                                    ; preds = %6324, %6299
  %6330 = phi float [ %6300, %6299 ], [ %6326, %6324 ]
  %6331 = phi float [ %6301, %6299 ], [ %6328, %6324 ]
  %6332 = fadd fast float %6033, %6330
  %6333 = fmul fast float %6332, %6331
  %6334 = call float @dx.op.unary.f32(i32 7, float %6333)  ; Saturate(value)
  %6335 = fmul fast float %6334, 2.000000e+00
  %6336 = fsub fast float 1.000000e+00, %6335
  %6337 = fmul fast float %6171, %6171
  %6338 = fsub fast float %6172, %6337
  %6339 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6338)  ; FMax(a,b)
  %6340 = fdiv fast float 1.000000e+00, %6339
  %6341 = fmul fast float %6172, %6171
  %6342 = fsub fast float %6173, %6341
  %6343 = fsub fast float %6336, %6171
  %6344 = fmul fast float %6336, %6336
  %6345 = fsub fast float %6344, %6172
  %6346 = fmul fast float %6340, %6342
  %6347 = fmul fast float %6346, %6343
  %6348 = fsub fast float %6345, %6347
  %6349 = fmul fast float %6172, %6172
  %6350 = fsub fast float %6174, %6349
  %6351 = fmul fast float %6342, %6342
  %6352 = fmul fast float %6351, %6340
  %6353 = fsub fast float %6350, %6352
  %6354 = fdiv fast float %6348, %6353
  %6355 = fmul fast float %6354, %6342
  %6356 = fsub fast float %6343, %6355
  %6357 = fmul fast float %6356, %6340
  %6358 = fmul fast float %6357, %6171
  %6359 = fsub fast float 1.000000e+00, %6358
  %6360 = fmul fast float %6354, %6172
  %6361 = fsub fast float %6359, %6360
  %6362 = fmul fast float %6357, %6357
  %6363 = fmul fast float %6354, 4.000000e+00
  %6364 = fmul fast float %6363, %6361
  %6365 = fsub fast float %6362, %6364
  %6366 = call float @dx.op.unary.f32(i32 24, float %6365)  ; Sqrt(value)
  %6367 = fcmp fast oge float %6357, 0.000000e+00
  %6368 = fsub fast float -0.000000e+00, %6366
  %6369 = select i1 %6367, float %6368, float %6366
  %6370 = fsub fast float %6369, %6357
  %6371 = fdiv fast float %6370, %6354
  %6372 = fdiv fast float %6361, %6370
  %6373 = fmul fast float %6371, 5.000000e-01
  %6374 = fmul fast float %6372, 2.000000e+00
  %6375 = select i1 %6367, float %6373, float %6374
  %6376 = select i1 %6367, float %6374, float %6373
  %6377 = call float @dx.op.binary.f32(i32 35, float %6375, float %6376)  ; FMax(a,b)
  %6378 = call float @dx.op.binary.f32(i32 36, float %6375, float %6376)  ; FMin(a,b)
  %6379 = fcmp fast ogt float %6336, %6377
  %6380 = fsub fast float %6336, %6378
  %6381 = fsub fast float %6336, %6377
  %6382 = fsub fast float %6377, %6378
  %6383 = select i1 %6379, float %6381, float %6382
  %6384 = fmul float %6380, %6383
  %6385 = select i1 %6379, float %6378, float %6336
  %6386 = fcmp fast ogt float %6336, %6378
  %6387 = fmul fast float %6385, %6377
  %6388 = fadd fast float %6385, %6377
  %6389 = fmul fast float %6388, %6171
  %6390 = fadd fast float %6387, %6172
  %6391 = fsub fast float %6390, %6389
  %6392 = fdiv fast float %6391, %6384
  %6393 = select i1 %6386, float %6392, float 0.000000e+00
  %6394 = fsub fast float 1.000000e+00, %6393
  %6395 = select i1 %6379, float %6394, float %6393
  %6396 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6156, 3
  %6398 = fmul fast float %6397, %6396
  %6399 = fsub fast float 1.000000e+00, %6398
  br label %6400

; <label>:6400                                    ; preds = %6329, %6041, %6006, %6002, %5966
  %6401 = phi float [ 1.000000e+00, %5966 ], [ %6399, %6329 ], [ 1.000000e+00, %6006 ], [ 1.000000e+00, %6041 ], [ 1.000000e+00, %6002 ]
  %6402 = fcmp fast ogt float %5998, 0.000000e+00
  br i1 %6402, label %6403, label %6567, !dx.controlflow.hints !121

; <label>:6403                                    ; preds = %6400
  %6404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6404, 2
  %6406 = fadd fast float %6405, %5879
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6412 = call float @dx.op.binary.f32(i32 35, float %6406, float 0.000000e+00)  ; FMax(a,b)
  %6413 = fadd fast float %6412, 0x3F10000000000000
  %6414 = fcmp fast oeq float %6411, 0.000000e+00
  br i1 %6414, label %6415, label %6482

; <label>:6415                                    ; preds = %6403
  %6416 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6417 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6418 = fmul fast float %6417, %5897
  %6419 = fmul fast float %6416, %5898
  %6420 = fadd fast float %6418, 5.000000e-01
  %6421 = call float @dx.op.unary.f32(i32 27, float %6420)  ; Round_ni(value)
  %6422 = fadd fast float %6419, 5.000000e-01
  %6423 = call float @dx.op.unary.f32(i32 27, float %6422)  ; Round_ni(value)
  %6424 = fsub fast float %6420, %6421
  %6425 = fsub fast float %6422, %6423
  %6426 = fadd fast float %6421, -5.000000e-01
  %6427 = fadd fast float %6423, -5.000000e-01
  %6428 = fmul fast float %6424, 2.000000e+00
  %6429 = fsub fast float 3.000000e+00, %6428
  %6430 = fadd fast float %6428, 1.000000e+00
  %6431 = fsub fast float 2.000000e+00, %6424
  %6432 = bitcast float %6429 to i32
  %6433 = sub nsw i32 2129859010, %6432
  %6434 = bitcast i32 %6433 to float
  %6435 = fmul fast float %6434, %6431
  %6436 = fadd fast float %6435, -1.000000e+00
  %6437 = bitcast float %6430 to i32
  %6438 = sub nsw i32 2129859010, %6437
  %6439 = bitcast i32 %6438 to float
  %6440 = fmul fast float %6439, %6424
  %6441 = fadd fast float %6440, 1.000000e+00
  %6442 = fmul fast float %6425, 2.000000e+00
  %6443 = fsub fast float 3.000000e+00, %6442
  %6444 = fadd fast float %6442, 1.000000e+00
  %6445 = fsub fast float 2.000000e+00, %6425
  %6446 = bitcast float %6443 to i32
  %6447 = sub nsw i32 2129859010, %6446
  %6448 = bitcast i32 %6447 to float
  %6449 = fmul fast float %6448, %6445
  %6450 = fadd fast float %6449, -1.000000e+00
  %6451 = bitcast float %6444 to i32
  %6452 = sub nsw i32 2129859010, %6451
  %6453 = bitcast i32 %6452 to float
  %6454 = fmul fast float %6453, %6425
  %6455 = fadd fast float %6454, 1.000000e+00
  %6456 = fadd fast float %6436, %6426
  %6457 = fmul fast float %6456, %6408
  %6458 = fadd fast float %6450, %6427
  %6459 = fmul fast float %6458, %6409
  %6460 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6457, float %6459, float undef, float undef, i32 0, i32 0, i32 undef, float %6413)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6461 = extractvalue %dx.types.ResRet.f32 %6460, 0
  %6462 = fmul fast float %6461, %6429
  %6463 = fadd fast float %6441, %6426
  %6464 = fmul fast float %6463, %6408
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6464, float %6459, float undef, float undef, i32 0, i32 0, i32 undef, float %6413)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  %6467 = fmul fast float %6466, %6430
  %6468 = fadd fast float %6455, %6427
  %6469 = fmul fast float %6468, %6409
  %6470 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6457, float %6469, float undef, float undef, i32 0, i32 0, i32 undef, float %6413)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 0
  %6472 = fmul fast float %6471, %6429
  %6473 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6464, float %6469, float undef, float undef, i32 0, i32 0, i32 undef, float %6413)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6474 = extractvalue %dx.types.ResRet.f32 %6473, 0
  %6475 = fmul fast float %6474, %6430
  %6476 = fadd fast float %6475, %6472
  %6477 = fmul fast float %6476, %6444
  %6478 = fadd fast float %6467, %6462
  %6479 = fmul fast float %6478, %6443
  %6480 = fadd fast float %6479, %6477
  %6481 = fmul fast float %6480, 6.250000e-02
  br label %6567

; <label>:6482                                    ; preds = %6403
  %6483 = fmul fast float %271, 0x401921FB60000000
  %6484 = call float @dx.op.unary.f32(i32 13, float %6483)  ; Sin(value)
  %6485 = call float @dx.op.unary.f32(i32 12, float %6483)  ; Cos(value)
  %6486 = fsub fast float -0.000000e+00, %6484
  br label %6487

; <label>:6487                                    ; preds = %6536, %6482
  %6488 = phi float [ 0.000000e+00, %6482 ], [ %6531, %6536 ]
  %6489 = phi float [ 0.000000e+00, %6482 ], [ %6533, %6536 ]
  %6490 = phi i32 [ 0, %6482 ], [ %6537, %6536 ]
  %6491 = mul i32 %6490, 2
  %6492 = add i32 0, %6491
  %6493 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6492
  %6494 = load float, float* %6493, align 4
  %6495 = mul i32 %6490, 2
  %6496 = add i32 1, %6495
  %6497 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6496
  %6498 = load float, float* %6497, align 4
  %6499 = fmul fast float %6494, %6485
  %6500 = call float @dx.op.tertiary.f32(i32 46, float %6498, float %6486, float %6499)  ; FMad(a,b,c)
  %6501 = fmul fast float %6494, %6484
  %6502 = call float @dx.op.tertiary.f32(i32 46, float %6498, float %6485, float %6501)  ; FMad(a,b,c)
  %6503 = fmul fast float %6500, %6411
  %6504 = fmul fast float %6502, %6411
  %6505 = fadd fast float %6503, %5897
  %6506 = fadd fast float %6504, %5898
  %6507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6505, float %6506, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6508 = extractvalue %dx.types.ResRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.ResRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.ResRet.f32 %6507, 2
  %6511 = extractvalue %dx.types.ResRet.f32 %6507, 3
  %6512 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6508, float* %6512, align 4
  %6513 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6509, float* %6513, align 4
  %6514 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6510, float* %6514, align 4
  %6515 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6511, float* %6515, align 4
  %6516 = fsub fast float %6508, %6413
  %6517 = fcmp fast olt float %6516, 0.000000e+00
  %6518 = select i1 %6517, float 0.000000e+00, float 1.000000e+00
  %6519 = fadd fast float %6518, %6488
  %6520 = fmul fast float %6518, %6516
  %6521 = fadd fast float %6520, %6489
  br label %6522

; <label>:6522                                    ; preds = %6522, %6487
  %6523 = phi i32 [ 1, %6487 ], [ %6534, %6522 ]
  %6524 = phi float [ %6521, %6487 ], [ %6533, %6522 ]
  %6525 = phi float [ %6519, %6487 ], [ %6531, %6522 ]
  %6526 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6523
  %6527 = load float, float* %6526, align 4, !tbaa !122, !noalias !112
  %6528 = fsub fast float %6527, %6413
  %6529 = fcmp fast olt float %6528, 0.000000e+00
  %6530 = select i1 %6529, float 0.000000e+00, float 1.000000e+00
  %6531 = fadd fast float %6530, %6525
  %6532 = fmul fast float %6530, %6528
  %6533 = fadd fast float %6532, %6524
  %6534 = add nuw nsw i32 %6523, 1
  %6535 = icmp eq i32 %6534, 4
  br i1 %6535, label %6536, label %6522, !llvm.loop !124

; <label>:6536                                    ; preds = %6522
  %6537 = add nuw nsw i32 %6490, 1
  %6538 = icmp eq i32 %6537, 8
  br i1 %6538, label %6539, label %6487, !llvm.loop !125

; <label>:6539                                    ; preds = %6536
  %6540 = fdiv fast float 1.000000e+00, %6531
  %6541 = fmul fast float %6540, %6533
  %6542 = fdiv fast float 1.000000e+00, %6413
  %6543 = fmul fast float %6541, %6542
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = call float @dx.op.binary.f32(i32 35, float %6544, float 0.000000e+00)  ; FMax(a,b)
  %6546 = fmul fast float %6531, 3.125000e-02
  %6547 = call float @dx.op.unary.f32(i32 7, float %6546)  ; Saturate(value)
  %6548 = fmul fast float %6547, 2.000000e+00
  %6549 = fadd fast float %6548, -1.000000e+00
  %6550 = fcmp fast ogt float %6549, 0.000000e+00
  %6551 = fcmp fast olt float %6549, 0.000000e+00
  %6552 = zext i1 %6550 to i32
  %6553 = zext i1 %6551 to i32
  %6554 = sub nsw i32 %6552, %6553
  %6555 = sitofp i32 %6554 to float
  %6556 = fmul fast float %6555, %6549
  %6557 = fsub fast float 1.000000e+00, %6556
  %6558 = fmul fast float %6557, %6557
  %6559 = fmul fast float %6558, %6557
  %6560 = fsub fast float %6557, %6559
  %6561 = fmul fast float %6560, %6545
  %6562 = fsub fast float 1.000000e+00, %6559
  %6563 = fsub fast float %6562, %6561
  %6564 = fmul fast float %6555, 5.000000e-01
  %6565 = fmul fast float %6564, %6563
  %6566 = fsub fast float 5.000000e-01, %6565
  br label %6567

; <label>:6567                                    ; preds = %6539, %6415, %6400
  %6568 = phi float [ 1.000000e+00, %6400 ], [ %6481, %6415 ], [ %6566, %6539 ]
  %6569 = fcmp fast ogt float %5996, 0.000000e+00
  br i1 %6569, label %6570, label %6734, !dx.controlflow.hints !126

; <label>:6570                                    ; preds = %6567
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6573 = fadd fast float %6572, %5879
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.f32 %6577, 1
  %6579 = call float @dx.op.binary.f32(i32 35, float %6573, float 0.000000e+00)  ; FMax(a,b)
  %6580 = fadd fast float %6579, 0x3F10000000000000
  %6581 = fcmp fast oeq float %6578, 0.000000e+00
  br i1 %6581, label %6582, label %6649

; <label>:6582                                    ; preds = %6570
  %6583 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6584 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6585 = fmul fast float %6584, %5889
  %6586 = fmul fast float %6583, %5890
  %6587 = fadd fast float %6585, 5.000000e-01
  %6588 = call float @dx.op.unary.f32(i32 27, float %6587)  ; Round_ni(value)
  %6589 = fadd fast float %6586, 5.000000e-01
  %6590 = call float @dx.op.unary.f32(i32 27, float %6589)  ; Round_ni(value)
  %6591 = fsub fast float %6587, %6588
  %6592 = fsub fast float %6589, %6590
  %6593 = fadd fast float %6588, -5.000000e-01
  %6594 = fadd fast float %6590, -5.000000e-01
  %6595 = fmul fast float %6591, 2.000000e+00
  %6596 = fsub fast float 3.000000e+00, %6595
  %6597 = fadd fast float %6595, 1.000000e+00
  %6598 = fsub fast float 2.000000e+00, %6591
  %6599 = bitcast float %6596 to i32
  %6600 = sub nsw i32 2129859010, %6599
  %6601 = bitcast i32 %6600 to float
  %6602 = fmul fast float %6601, %6598
  %6603 = fadd fast float %6602, -1.000000e+00
  %6604 = bitcast float %6597 to i32
  %6605 = sub nsw i32 2129859010, %6604
  %6606 = bitcast i32 %6605 to float
  %6607 = fmul fast float %6606, %6591
  %6608 = fadd fast float %6607, 1.000000e+00
  %6609 = fmul fast float %6592, 2.000000e+00
  %6610 = fsub fast float 3.000000e+00, %6609
  %6611 = fadd fast float %6609, 1.000000e+00
  %6612 = fsub fast float 2.000000e+00, %6592
  %6613 = bitcast float %6610 to i32
  %6614 = sub nsw i32 2129859010, %6613
  %6615 = bitcast i32 %6614 to float
  %6616 = fmul fast float %6615, %6612
  %6617 = fadd fast float %6616, -1.000000e+00
  %6618 = bitcast float %6611 to i32
  %6619 = sub nsw i32 2129859010, %6618
  %6620 = bitcast i32 %6619 to float
  %6621 = fmul fast float %6620, %6592
  %6622 = fadd fast float %6621, 1.000000e+00
  %6623 = fadd fast float %6603, %6593
  %6624 = fmul fast float %6623, %6575
  %6625 = fadd fast float %6617, %6594
  %6626 = fmul fast float %6625, %6576
  %6627 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6624, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6580)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6628 = extractvalue %dx.types.ResRet.f32 %6627, 0
  %6629 = fmul fast float %6628, %6596
  %6630 = fadd fast float %6608, %6593
  %6631 = fmul fast float %6630, %6575
  %6632 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6631, float %6626, float undef, float undef, i32 0, i32 0, i32 undef, float %6580)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6633 = extractvalue %dx.types.ResRet.f32 %6632, 0
  %6634 = fmul fast float %6633, %6597
  %6635 = fadd fast float %6622, %6594
  %6636 = fmul fast float %6635, %6576
  %6637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6624, float %6636, float undef, float undef, i32 0, i32 0, i32 undef, float %6580)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = fmul fast float %6638, %6596
  %6640 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6631, float %6636, float undef, float undef, i32 0, i32 0, i32 undef, float %6580)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6641 = extractvalue %dx.types.ResRet.f32 %6640, 0
  %6642 = fmul fast float %6641, %6597
  %6643 = fadd fast float %6642, %6639
  %6644 = fmul fast float %6643, %6611
  %6645 = fadd fast float %6634, %6629
  %6646 = fmul fast float %6645, %6610
  %6647 = fadd fast float %6646, %6644
  %6648 = fmul fast float %6647, 6.250000e-02
  br label %6734

; <label>:6649                                    ; preds = %6570
  %6650 = fmul fast float %271, 0x401921FB60000000
  %6651 = call float @dx.op.unary.f32(i32 13, float %6650)  ; Sin(value)
  %6652 = call float @dx.op.unary.f32(i32 12, float %6650)  ; Cos(value)
  %6653 = fsub fast float -0.000000e+00, %6651
  br label %6654

; <label>:6654                                    ; preds = %6703, %6649
  %6655 = phi float [ 0.000000e+00, %6649 ], [ %6698, %6703 ]
  %6656 = phi float [ 0.000000e+00, %6649 ], [ %6700, %6703 ]
  %6657 = phi i32 [ 0, %6649 ], [ %6704, %6703 ]
  %6658 = mul i32 %6657, 2
  %6659 = add i32 0, %6658
  %6660 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6659
  %6661 = load float, float* %6660, align 4
  %6662 = mul i32 %6657, 2
  %6663 = add i32 1, %6662
  %6664 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6663
  %6665 = load float, float* %6664, align 4
  %6666 = fmul fast float %6661, %6652
  %6667 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6653, float %6666)  ; FMad(a,b,c)
  %6668 = fmul fast float %6661, %6651
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6665, float %6652, float %6668)  ; FMad(a,b,c)
  %6670 = fmul fast float %6667, %6578
  %6671 = fmul fast float %6669, %6578
  %6672 = fadd fast float %6670, %5889
  %6673 = fadd fast float %6671, %5890
  %6674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6672, float %6673, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = extractvalue %dx.types.ResRet.f32 %6674, 3
  %6679 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6675, float* %6679, align 4
  %6680 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6676, float* %6680, align 4
  %6681 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6677, float* %6681, align 4
  %6682 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6678, float* %6682, align 4
  %6683 = fsub fast float %6675, %6580
  %6684 = fcmp fast olt float %6683, 0.000000e+00
  %6685 = select i1 %6684, float 0.000000e+00, float 1.000000e+00
  %6686 = fadd fast float %6685, %6655
  %6687 = fmul fast float %6685, %6683
  %6688 = fadd fast float %6687, %6656
  br label %6689

; <label>:6689                                    ; preds = %6689, %6654
  %6690 = phi i32 [ 1, %6654 ], [ %6701, %6689 ]
  %6691 = phi float [ %6688, %6654 ], [ %6700, %6689 ]
  %6692 = phi float [ %6686, %6654 ], [ %6698, %6689 ]
  %6693 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6690
  %6694 = load float, float* %6693, align 4, !tbaa !122, !noalias !112
  %6695 = fsub fast float %6694, %6580
  %6696 = fcmp fast olt float %6695, 0.000000e+00
  %6697 = select i1 %6696, float 0.000000e+00, float 1.000000e+00
  %6698 = fadd fast float %6697, %6692
  %6699 = fmul fast float %6697, %6695
  %6700 = fadd fast float %6699, %6691
  %6701 = add nuw nsw i32 %6690, 1
  %6702 = icmp eq i32 %6701, 4
  br i1 %6702, label %6703, label %6689, !llvm.loop !124

; <label>:6703                                    ; preds = %6689
  %6704 = add nuw nsw i32 %6657, 1
  %6705 = icmp eq i32 %6704, 8
  br i1 %6705, label %6706, label %6654, !llvm.loop !125

; <label>:6706                                    ; preds = %6703
  %6707 = fdiv fast float 1.000000e+00, %6698
  %6708 = fmul fast float %6707, %6700
  %6709 = fdiv fast float 1.000000e+00, %6580
  %6710 = fmul fast float %6708, %6709
  %6711 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6712 = call float @dx.op.binary.f32(i32 35, float %6711, float 0.000000e+00)  ; FMax(a,b)
  %6713 = fmul fast float %6698, 3.125000e-02
  %6714 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6715 = fmul fast float %6714, 2.000000e+00
  %6716 = fadd fast float %6715, -1.000000e+00
  %6717 = fcmp fast ogt float %6716, 0.000000e+00
  %6718 = fcmp fast olt float %6716, 0.000000e+00
  %6719 = zext i1 %6717 to i32
  %6720 = zext i1 %6718 to i32
  %6721 = sub nsw i32 %6719, %6720
  %6722 = sitofp i32 %6721 to float
  %6723 = fmul fast float %6722, %6716
  %6724 = fsub fast float 1.000000e+00, %6723
  %6725 = fmul fast float %6724, %6724
  %6726 = fmul fast float %6725, %6724
  %6727 = fsub fast float %6724, %6726
  %6728 = fmul fast float %6727, %6712
  %6729 = fsub fast float 1.000000e+00, %6726
  %6730 = fsub fast float %6729, %6728
  %6731 = fmul fast float %6722, 5.000000e-01
  %6732 = fmul fast float %6731, %6730
  %6733 = fsub fast float 5.000000e-01, %6732
  br label %6734

; <label>:6734                                    ; preds = %6706, %6582, %6567
  %6735 = phi float [ 1.000000e+00, %6567 ], [ %6648, %6582 ], [ %6733, %6706 ]
  %6736 = fcmp fast ogt float %5995, 0.000000e+00
  br i1 %6736, label %6737, label %7055, !dx.controlflow.hints !127

; <label>:6737                                    ; preds = %6734
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6740 = fadd fast float %6739, %5879
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6741, 3
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = call float @dx.op.binary.f32(i32 35, float %6740, float 0.000000e+00)  ; FMax(a,b)
  %6747 = fadd fast float %6746, 0x3F10000000000000
  %6748 = fcmp fast oeq float %6745, 0.000000e+00
  br i1 %5882, label %6749, label %6902, !dx.controlflow.hints !128

; <label>:6749                                    ; preds = %6737
  br i1 %6748, label %6750, label %6817

; <label>:6750                                    ; preds = %6749
  %6751 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6753 = fmul fast float %6752, %5871
  %6754 = fmul fast float %6751, %5875
  %6755 = fadd fast float %6753, 5.000000e-01
  %6756 = call float @dx.op.unary.f32(i32 27, float %6755)  ; Round_ni(value)
  %6757 = fadd fast float %6754, 5.000000e-01
  %6758 = call float @dx.op.unary.f32(i32 27, float %6757)  ; Round_ni(value)
  %6759 = fsub fast float %6755, %6756
  %6760 = fsub fast float %6757, %6758
  %6761 = fadd fast float %6756, -5.000000e-01
  %6762 = fadd fast float %6758, -5.000000e-01
  %6763 = fmul fast float %6759, 2.000000e+00
  %6764 = fsub fast float 3.000000e+00, %6763
  %6765 = fadd fast float %6763, 1.000000e+00
  %6766 = fsub fast float 2.000000e+00, %6759
  %6767 = bitcast float %6764 to i32
  %6768 = sub nsw i32 2129859010, %6767
  %6769 = bitcast i32 %6768 to float
  %6770 = fmul fast float %6769, %6766
  %6771 = fadd fast float %6770, -1.000000e+00
  %6772 = bitcast float %6765 to i32
  %6773 = sub nsw i32 2129859010, %6772
  %6774 = bitcast i32 %6773 to float
  %6775 = fmul fast float %6774, %6759
  %6776 = fadd fast float %6775, 1.000000e+00
  %6777 = fmul fast float %6760, 2.000000e+00
  %6778 = fsub fast float 3.000000e+00, %6777
  %6779 = fadd fast float %6777, 1.000000e+00
  %6780 = fsub fast float 2.000000e+00, %6760
  %6781 = bitcast float %6778 to i32
  %6782 = sub nsw i32 2129859010, %6781
  %6783 = bitcast i32 %6782 to float
  %6784 = fmul fast float %6783, %6780
  %6785 = fadd fast float %6784, -1.000000e+00
  %6786 = bitcast float %6779 to i32
  %6787 = sub nsw i32 2129859010, %6786
  %6788 = bitcast i32 %6787 to float
  %6789 = fmul fast float %6788, %6760
  %6790 = fadd fast float %6789, 1.000000e+00
  %6791 = fadd fast float %6771, %6761
  %6792 = fmul fast float %6791, %6742
  %6793 = fadd fast float %6785, %6762
  %6794 = fmul fast float %6793, %6743
  %6795 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6792, float %6794, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6796 = extractvalue %dx.types.ResRet.f32 %6795, 0
  %6797 = fmul fast float %6796, %6764
  %6798 = fadd fast float %6776, %6761
  %6799 = fmul fast float %6798, %6742
  %6800 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6799, float %6794, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6801 = extractvalue %dx.types.ResRet.f32 %6800, 0
  %6802 = fmul fast float %6801, %6765
  %6803 = fadd fast float %6790, %6762
  %6804 = fmul fast float %6803, %6743
  %6805 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6792, float %6804, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = fmul fast float %6806, %6764
  %6808 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6799, float %6804, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6809 = extractvalue %dx.types.ResRet.f32 %6808, 0
  %6810 = fmul fast float %6809, %6765
  %6811 = fadd fast float %6810, %6807
  %6812 = fmul fast float %6811, %6779
  %6813 = fadd fast float %6802, %6797
  %6814 = fmul fast float %6813, %6778
  %6815 = fadd fast float %6814, %6812
  %6816 = fmul fast float %6815, 6.250000e-02
  br label %7055

; <label>:6817                                    ; preds = %6749
  %6818 = fmul fast float %271, 0x401921FB60000000
  %6819 = call float @dx.op.unary.f32(i32 13, float %6818)  ; Sin(value)
  %6820 = call float @dx.op.unary.f32(i32 12, float %6818)  ; Cos(value)
  %6821 = fsub fast float -0.000000e+00, %6819
  br label %6822

; <label>:6822                                    ; preds = %6871, %6817
  %6823 = phi float [ 0.000000e+00, %6817 ], [ %6866, %6871 ]
  %6824 = phi float [ 0.000000e+00, %6817 ], [ %6868, %6871 ]
  %6825 = phi i32 [ 0, %6817 ], [ %6872, %6871 ]
  %6826 = mul i32 %6825, 2
  %6827 = add i32 0, %6826
  %6828 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6827
  %6829 = load float, float* %6828, align 4
  %6830 = mul i32 %6825, 2
  %6831 = add i32 1, %6830
  %6832 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6831
  %6833 = load float, float* %6832, align 4
  %6834 = fmul fast float %6829, %6820
  %6835 = call float @dx.op.tertiary.f32(i32 46, float %6833, float %6821, float %6834)  ; FMad(a,b,c)
  %6836 = fmul fast float %6829, %6819
  %6837 = call float @dx.op.tertiary.f32(i32 46, float %6833, float %6820, float %6836)  ; FMad(a,b,c)
  %6838 = fmul fast float %6835, %6745
  %6839 = fmul fast float %6837, %6745
  %6840 = fadd fast float %6838, %5871
  %6841 = fadd fast float %6839, %5875
  %6842 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6840, float %6841, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6846 = extractvalue %dx.types.ResRet.f32 %6842, 3
  %6847 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6843, float* %6847, align 4
  %6848 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6844, float* %6848, align 4
  %6849 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6845, float* %6849, align 4
  %6850 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6846, float* %6850, align 4
  %6851 = fsub fast float %6843, %6747
  %6852 = fcmp fast olt float %6851, 0.000000e+00
  %6853 = select i1 %6852, float 0.000000e+00, float 1.000000e+00
  %6854 = fadd fast float %6853, %6823
  %6855 = fmul fast float %6853, %6851
  %6856 = fadd fast float %6855, %6824
  br label %6857

; <label>:6857                                    ; preds = %6857, %6822
  %6858 = phi i32 [ 1, %6822 ], [ %6869, %6857 ]
  %6859 = phi float [ %6856, %6822 ], [ %6868, %6857 ]
  %6860 = phi float [ %6854, %6822 ], [ %6866, %6857 ]
  %6861 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6858
  %6862 = load float, float* %6861, align 4, !tbaa !122, !noalias !112
  %6863 = fsub fast float %6862, %6747
  %6864 = fcmp fast olt float %6863, 0.000000e+00
  %6865 = select i1 %6864, float 0.000000e+00, float 1.000000e+00
  %6866 = fadd fast float %6865, %6860
  %6867 = fmul fast float %6865, %6863
  %6868 = fadd fast float %6867, %6859
  %6869 = add nuw nsw i32 %6858, 1
  %6870 = icmp eq i32 %6869, 4
  br i1 %6870, label %6871, label %6857, !llvm.loop !124

; <label>:6871                                    ; preds = %6857
  %6872 = add nuw nsw i32 %6825, 1
  %6873 = icmp eq i32 %6872, 8
  br i1 %6873, label %6874, label %6822, !llvm.loop !125

; <label>:6874                                    ; preds = %6871
  %6875 = fdiv fast float 1.000000e+00, %6866
  %6876 = fmul fast float %6875, %6868
  %6877 = fdiv fast float 1.000000e+00, %6747
  %6878 = fmul fast float %6876, %6877
  %6879 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6880 = call float @dx.op.binary.f32(i32 35, float %6879, float 0.000000e+00)  ; FMax(a,b)
  %6881 = fmul fast float %6866, 3.125000e-02
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = fmul fast float %6882, 2.000000e+00
  %6884 = fadd fast float %6883, -1.000000e+00
  %6885 = fcmp fast ogt float %6884, 0.000000e+00
  %6886 = fcmp fast olt float %6884, 0.000000e+00
  %6887 = zext i1 %6885 to i32
  %6888 = zext i1 %6886 to i32
  %6889 = sub nsw i32 %6887, %6888
  %6890 = sitofp i32 %6889 to float
  %6891 = fmul fast float %6890, %6884
  %6892 = fsub fast float 1.000000e+00, %6891
  %6893 = fmul fast float %6892, %6892
  %6894 = fmul fast float %6893, %6892
  %6895 = fsub fast float %6892, %6894
  %6896 = fmul fast float %6895, %6880
  %6897 = fsub fast float 1.000000e+00, %6894
  %6898 = fsub fast float %6897, %6896
  %6899 = fmul fast float %6890, 5.000000e-01
  %6900 = fmul fast float %6899, %6898
  %6901 = fsub fast float 5.000000e-01, %6900
  br label %7055

; <label>:6902                                    ; preds = %6737
  br i1 %6748, label %6903, label %6970

; <label>:6903                                    ; preds = %6902
  %6904 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %6905 = extractvalue %dx.types.CBufRet.f32 %6741, 0
  %6906 = fmul fast float %6905, %5871
  %6907 = fmul fast float %6904, %5875
  %6908 = fadd fast float %6906, 5.000000e-01
  %6909 = call float @dx.op.unary.f32(i32 27, float %6908)  ; Round_ni(value)
  %6910 = fadd fast float %6907, 5.000000e-01
  %6911 = call float @dx.op.unary.f32(i32 27, float %6910)  ; Round_ni(value)
  %6912 = fsub fast float %6908, %6909
  %6913 = fsub fast float %6910, %6911
  %6914 = fadd fast float %6909, -5.000000e-01
  %6915 = fadd fast float %6911, -5.000000e-01
  %6916 = fmul fast float %6912, 2.000000e+00
  %6917 = fsub fast float 3.000000e+00, %6916
  %6918 = fadd fast float %6916, 1.000000e+00
  %6919 = fsub fast float 2.000000e+00, %6912
  %6920 = bitcast float %6917 to i32
  %6921 = sub nsw i32 2129859010, %6920
  %6922 = bitcast i32 %6921 to float
  %6923 = fmul fast float %6922, %6919
  %6924 = fadd fast float %6923, -1.000000e+00
  %6925 = bitcast float %6918 to i32
  %6926 = sub nsw i32 2129859010, %6925
  %6927 = bitcast i32 %6926 to float
  %6928 = fmul fast float %6927, %6912
  %6929 = fadd fast float %6928, 1.000000e+00
  %6930 = fmul fast float %6913, 2.000000e+00
  %6931 = fsub fast float 3.000000e+00, %6930
  %6932 = fadd fast float %6930, 1.000000e+00
  %6933 = fsub fast float 2.000000e+00, %6913
  %6934 = bitcast float %6931 to i32
  %6935 = sub nsw i32 2129859010, %6934
  %6936 = bitcast i32 %6935 to float
  %6937 = fmul fast float %6936, %6933
  %6938 = fadd fast float %6937, -1.000000e+00
  %6939 = bitcast float %6932 to i32
  %6940 = sub nsw i32 2129859010, %6939
  %6941 = bitcast i32 %6940 to float
  %6942 = fmul fast float %6941, %6913
  %6943 = fadd fast float %6942, 1.000000e+00
  %6944 = fadd fast float %6924, %6914
  %6945 = fmul fast float %6944, %6742
  %6946 = fadd fast float %6938, %6915
  %6947 = fmul fast float %6946, %6743
  %6948 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6945, float %6947, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = fmul fast float %6949, %6917
  %6951 = fadd fast float %6929, %6914
  %6952 = fmul fast float %6951, %6742
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6952, float %6947, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 0
  %6955 = fmul fast float %6954, %6918
  %6956 = fadd fast float %6943, %6915
  %6957 = fmul fast float %6956, %6743
  %6958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6945, float %6957, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = fmul fast float %6959, %6917
  %6961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6952, float %6957, float undef, float undef, i32 0, i32 0, i32 undef, float %6747)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = fmul fast float %6962, %6918
  %6964 = fadd fast float %6963, %6960
  %6965 = fmul fast float %6964, %6932
  %6966 = fadd fast float %6955, %6950
  %6967 = fmul fast float %6966, %6931
  %6968 = fadd fast float %6967, %6965
  %6969 = fmul fast float %6968, 6.250000e-02
  br label %7055

; <label>:6970                                    ; preds = %6902
  %6971 = fmul fast float %271, 0x401921FB60000000
  %6972 = call float @dx.op.unary.f32(i32 13, float %6971)  ; Sin(value)
  %6973 = call float @dx.op.unary.f32(i32 12, float %6971)  ; Cos(value)
  %6974 = fsub fast float -0.000000e+00, %6972
  br label %6975

; <label>:6975                                    ; preds = %7024, %6970
  %6976 = phi float [ 0.000000e+00, %6970 ], [ %7019, %7024 ]
  %6977 = phi float [ 0.000000e+00, %6970 ], [ %7021, %7024 ]
  %6978 = phi i32 [ 0, %6970 ], [ %7025, %7024 ]
  %6979 = mul i32 %6978, 2
  %6980 = add i32 0, %6979
  %6981 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6980
  %6982 = load float, float* %6981, align 4
  %6983 = mul i32 %6978, 2
  %6984 = add i32 1, %6983
  %6985 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6984
  %6986 = load float, float* %6985, align 4
  %6987 = fmul fast float %6982, %6973
  %6988 = call float @dx.op.tertiary.f32(i32 46, float %6986, float %6974, float %6987)  ; FMad(a,b,c)
  %6989 = fmul fast float %6982, %6972
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6986, float %6973, float %6989)  ; FMad(a,b,c)
  %6991 = fmul fast float %6988, %6745
  %6992 = fmul fast float %6990, %6745
  %6993 = fadd fast float %6991, %5871
  %6994 = fadd fast float %6992, %5875
  %6995 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6993, float %6994, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.ResRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.ResRet.f32 %6995, 2
  %6999 = extractvalue %dx.types.ResRet.f32 %6995, 3
  %7000 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6996, float* %7000, align 4
  %7001 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6997, float* %7001, align 4
  %7002 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6998, float* %7002, align 4
  %7003 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6999, float* %7003, align 4
  %7004 = fsub fast float %6996, %6747
  %7005 = fcmp fast olt float %7004, 0.000000e+00
  %7006 = select i1 %7005, float 0.000000e+00, float 1.000000e+00
  %7007 = fadd fast float %7006, %6976
  %7008 = fmul fast float %7006, %7004
  %7009 = fadd fast float %7008, %6977
  br label %7010

; <label>:7010                                    ; preds = %7010, %6975
  %7011 = phi i32 [ 1, %6975 ], [ %7022, %7010 ]
  %7012 = phi float [ %7009, %6975 ], [ %7021, %7010 ]
  %7013 = phi float [ %7007, %6975 ], [ %7019, %7010 ]
  %7014 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7011
  %7015 = load float, float* %7014, align 4, !tbaa !122, !noalias !112
  %7016 = fsub fast float %7015, %6747
  %7017 = fcmp fast olt float %7016, 0.000000e+00
  %7018 = select i1 %7017, float 0.000000e+00, float 1.000000e+00
  %7019 = fadd fast float %7018, %7013
  %7020 = fmul fast float %7018, %7016
  %7021 = fadd fast float %7020, %7012
  %7022 = add nuw nsw i32 %7011, 1
  %7023 = icmp eq i32 %7022, 4
  br i1 %7023, label %7024, label %7010, !llvm.loop !124

; <label>:7024                                    ; preds = %7010
  %7025 = add nuw nsw i32 %6978, 1
  %7026 = icmp eq i32 %7025, 8
  br i1 %7026, label %7027, label %6975, !llvm.loop !125

; <label>:7027                                    ; preds = %7024
  %7028 = fdiv fast float 1.000000e+00, %7019
  %7029 = fmul fast float %7028, %7021
  %7030 = fdiv fast float 1.000000e+00, %6747
  %7031 = fmul fast float %7029, %7030
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = call float @dx.op.binary.f32(i32 35, float %7032, float 0.000000e+00)  ; FMax(a,b)
  %7034 = fmul fast float %7019, 3.125000e-02
  %7035 = call float @dx.op.unary.f32(i32 7, float %7034)  ; Saturate(value)
  %7036 = fmul fast float %7035, 2.000000e+00
  %7037 = fadd fast float %7036, -1.000000e+00
  %7038 = fcmp fast ogt float %7037, 0.000000e+00
  %7039 = fcmp fast olt float %7037, 0.000000e+00
  %7040 = zext i1 %7038 to i32
  %7041 = zext i1 %7039 to i32
  %7042 = sub nsw i32 %7040, %7041
  %7043 = sitofp i32 %7042 to float
  %7044 = fmul fast float %7043, %7037
  %7045 = fsub fast float 1.000000e+00, %7044
  %7046 = fmul fast float %7045, %7045
  %7047 = fmul fast float %7046, %7045
  %7048 = fsub fast float %7045, %7047
  %7049 = fmul fast float %7048, %7033
  %7050 = fsub fast float 1.000000e+00, %7047
  %7051 = fsub fast float %7050, %7049
  %7052 = fmul fast float %7043, 5.000000e-01
  %7053 = fmul fast float %7052, %7051
  %7054 = fsub fast float 5.000000e-01, %7053
  br label %7055

; <label>:7055                                    ; preds = %7027, %6903, %6874, %6750, %6734
  %7056 = phi float [ 1.000000e+00, %6734 ], [ %6816, %6750 ], [ %6901, %6874 ], [ %6969, %6903 ], [ %7054, %7027 ]
  %7057 = fsub fast float %6568, %6401
  %7058 = fmul fast float %7057, %5968
  %7059 = fadd fast float %7058, %6401
  %7060 = fsub fast float %6735, %7059
  %7061 = fmul fast float %7060, %5967
  %7062 = fadd fast float %7061, %7059
  %7063 = fsub fast float %7056, %7062
  %7064 = fmul fast float %7063, %5995
  %7065 = fadd fast float %7064, %7062
  %7066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.f32 %7066, 2
  %7068 = fcmp fast ogt float %7067, 0.000000e+00
  br i1 %7068, label %7069, label %7109, !dx.controlflow.hints !129

; <label>:7069                                    ; preds = %7055
  %7070 = fcmp fast ugt float %7067, 0.000000e+00
  br i1 %7070, label %7071, label %7106

; <label>:7071                                    ; preds = %7069
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.CBufRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.CBufRet.f32 %7072, 2
  %7076 = extractvalue %dx.types.CBufRet.f32 %7072, 3
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7079 = extractvalue %dx.types.CBufRet.f32 %7077, 1
  %7080 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7081 = extractvalue %dx.types.CBufRet.f32 %7077, 3
  %7082 = extractvalue %dx.types.CBufRet.f32 %7066, 0
  %7083 = extractvalue %dx.types.CBufRet.f32 %7066, 1
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7086 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7087 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7088 = fadd fast float %7085, %5848
  %7089 = fadd fast float %7086, %5849
  %7090 = fadd fast float %7087, %5850
  %7091 = fmul fast float %7088, %7073
  %7092 = call float @dx.op.tertiary.f32(i32 46, float %7074, float %7089, float %7091)  ; FMad(a,b,c)
  %7093 = call float @dx.op.tertiary.f32(i32 46, float %7075, float %7090, float %7092)  ; FMad(a,b,c)
  %7094 = fadd fast float %7093, %7076
  %7095 = fmul fast float %7088, %7078
  %7096 = call float @dx.op.tertiary.f32(i32 46, float %7079, float %7089, float %7095)  ; FMad(a,b,c)
  %7097 = call float @dx.op.tertiary.f32(i32 46, float %7080, float %7090, float %7096)  ; FMad(a,b,c)
  %7098 = fadd fast float %7097, %7081
  %7099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7094, float %7098, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7100 = extractvalue %dx.types.ResRet.f32 %7099, 0
  %7101 = fmul fast float %7100, %7083
  %7102 = fadd fast float %7101, %7082
  %7103 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7104 = fmul fast float %7103, %7067
  %7105 = fsub fast float 1.000000e+00, %7104
  br label %7106

; <label>:7106                                    ; preds = %7071, %7069
  %7107 = phi float [ %7105, %7071 ], [ 1.000000e+00, %7069 ]
  %7108 = fmul fast float %7107, %7065
  br label %7109

; <label>:7109                                    ; preds = %7106, %7055, %5828
  %7110 = phi float [ 1.000000e+00, %5828 ], [ %7108, %7106 ], [ %7065, %7055 ]
  %7111 = call float @dx.op.binary.f32(i32 36, float %7110, float %7110)  ; FMin(a,b)
  %7112 = call float @dx.op.binary.f32(i32 36, float %7110, float %7111)  ; FMin(a,b)
  %7113 = fcmp fast ogt float %7112, 0.000000e+00
  br i1 %7113, label %7114, label %7279, !dx.controlflow.hints !130

; <label>:7114                                    ; preds = %7109
  %7115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7116 = extractvalue %dx.types.CBufRet.f32 %7115, 0
  %7117 = extractvalue %dx.types.CBufRet.f32 %7115, 1
  %7118 = extractvalue %dx.types.CBufRet.f32 %7115, 2
  %7119 = extractvalue %dx.types.CBufRet.f32 %7115, 3
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7124 = extractvalue %dx.types.CBufRet.f32 %7120, 3
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7128 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7129 = extractvalue %dx.types.CBufRet.f32 %7125, 3
  %7130 = fmul fast float %7116, %5848
  %7131 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %7117, float %7130)  ; FMad(a,b,c)
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %7118, float %7131)  ; FMad(a,b,c)
  %7133 = fadd fast float %7132, %7119
  %7134 = fmul fast float %7121, %5848
  %7135 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %7122, float %7134)  ; FMad(a,b,c)
  %7136 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %7123, float %7135)  ; FMad(a,b,c)
  %7137 = fadd fast float %7136, %7124
  %7138 = fmul fast float %7126, %5848
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %5849, float %7127, float %7138)  ; FMad(a,b,c)
  %7140 = call float @dx.op.tertiary.f32(i32 46, float %5850, float %7128, float %7139)  ; FMad(a,b,c)
  %7141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7142 = extractvalue %dx.types.CBufRet.f32 %7141, 0
  %7143 = extractvalue %dx.types.CBufRet.f32 %7141, 1
  %7144 = extractvalue %dx.types.CBufRet.f32 %7141, 3
  %7145 = fmul fast float %7144, %7133
  %7146 = fmul fast float %7144, %7137
  %7147 = fadd fast float %7145, %7142
  %7148 = fadd fast float %7146, %7143
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7152 = fsub fast float %7147, %7150
  %7153 = fsub fast float %7148, %7151
  %7154 = fcmp fast olt float %7152, 0.000000e+00
  %7155 = fcmp fast olt float %7153, 0.000000e+00
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.CBufRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7160 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7161 = select i1 %7154, float %7157, float %7159
  %7162 = select i1 %7155, float %7158, float %7160
  %7163 = fmul fast float %7161, %7152
  %7164 = fmul fast float %7162, %7153
  %7165 = call float @dx.op.unary.f32(i32 6, float %7163)  ; FAbs(value)
  %7166 = call float @dx.op.unary.f32(i32 6, float %7164)  ; FAbs(value)
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7169 = call float @dx.op.binary.f32(i32 35, float %7165, float %7166)  ; FMax(a,b)
  %7170 = fsub fast float %7168, %7169
  %7171 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7172 = fcmp fast ogt float %7171, 0.000000e+00
  br i1 %7172, label %7173, label %7214, !dx.controlflow.hints !131

; <label>:7173                                    ; preds = %7114
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7147, float %7148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 1
  %7176 = fcmp fast ogt float %7175, 0.000000e+00
  br i1 %7176, label %7177, label %7209

; <label>:7177                                    ; preds = %7173
  %7178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7147, float %7148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7179 = extractvalue %dx.types.ResRet.f32 %7178, 0
  %7180 = extractvalue %dx.types.ResRet.f32 %7178, 1
  %7181 = extractvalue %dx.types.ResRet.f32 %7178, 2
  %7182 = extractvalue %dx.types.ResRet.f32 %7178, 3
  %7183 = fsub fast float 1.000000e+00, %7129
  %7184 = fsub fast float %7183, %7140
  %7185 = fmul fast float %7184, 0x400921FB60000000
  %7186 = fadd fast float %7185, 0x3FF921FB60000000
  %7187 = call float @dx.op.unary.f32(i32 13, float %7186)  ; Sin(value)
  %7188 = fadd fast float %7187, -1.000000e+00
  %7189 = fmul fast float %7188, 0x3FD45F3060000000
  %7190 = fmul fast float %7184, 0x401921FB60000000
  %7191 = fadd fast float %7190, 0x400921FB60000000
  %7192 = call float @dx.op.unary.f32(i32 13, float %7191)  ; Sin(value)
  %7193 = fadd fast float %7192, 0x3E7777A5C0000000
  %7194 = fmul fast float %7193, 0x3FC45F3060000000
  %7195 = fmul fast float %7184, 0x4022D97C80000000
  %7196 = fadd fast float %7195, 0x4012D97C80000000
  %7197 = call float @dx.op.unary.f32(i32 13, float %7196)  ; Sin(value)
  %7198 = fadd fast float %7197, 1.000000e+00
  %7199 = fmul fast float %7198, 0x3FBB2995E0000000
  %7200 = fmul fast float %7184, 0x402921FB60000000
  %7201 = fadd fast float %7200, 0x401921FB60000000
  %7202 = call float @dx.op.unary.f32(i32 13, float %7201)  ; Sin(value)
  %7203 = fadd fast float %7202, 0xBE8777A5C0000000
  %7204 = fmul fast float %7203, 0x3FB45F3060000000
  %7205 = call float @dx.op.dot4.f32(i32 56, float %7179, float %7180, float %7181, float %7182, float %7189, float %7194, float %7199, float %7204)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7206 = fmul fast float %7205, 0xBFF7154760000000
  %7207 = call float @dx.op.unary.f32(i32 21, float %7206)  ; Exp(value)
  %7208 = call float @dx.op.unary.f32(i32 7, float %7207)  ; Saturate(value)
  br label %7209

; <label>:7209                                    ; preds = %7177, %7173
  %7210 = phi float [ %7208, %7177 ], [ 1.000000e+00, %7173 ]
  %7211 = fadd fast float %7210, -1.000000e+00
  %7212 = fmul fast float %7211, %7171
  %7213 = fadd fast float %7212, 1.000000e+00
  br label %7214

; <label>:7214                                    ; preds = %7209, %7114
  %7215 = phi float [ %7213, %7209 ], [ 1.000000e+00, %7114 ]
  %7216 = fmul fast float %7215, %7110
  %7217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7218 = extractvalue %dx.types.CBufRet.f32 %7217, 0
  %7219 = extractvalue %dx.types.CBufRet.f32 %7217, 1
  %7220 = extractvalue %dx.types.CBufRet.f32 %7217, 2
  %7221 = fadd fast float %7218, %201
  %7222 = fadd fast float %7219, %202
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 0
  %7227 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7228 = extractvalue %dx.types.CBufRet.f32 %7225, 2
  %7229 = fsub fast float -0.000000e+00, %7221
  %7230 = fsub fast float -0.000000e+00, %7222
  %7231 = fsub fast float %5108, %7220
  %7232 = fadd fast float %7231, %7224
  %7233 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7229, float %7230, float %7232)  ; Dot3(ax,ay,az,bx,by,bz)
  %7234 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7226, float %7227, float %7228)  ; Dot3(ax,ay,az,bx,by,bz)
  %7235 = fdiv fast float 1.000000e+00, %7234
  %7236 = fmul fast float %7235, %7233
  %7237 = fmul fast float %7226, %7236
  %7238 = fmul fast float %7227, %7236
  %7239 = fadd fast float %7237, %7221
  %7240 = fadd fast float %7238, %7222
  %7241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7241, 0
  %7243 = extractvalue %dx.types.CBufRet.f32 %7241, 1
  %7244 = fsub fast float %7239, %7242
  %7245 = fsub fast float %7240, %7243
  %7246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7247 = extractvalue %dx.types.CBufRet.f32 %7246, 2
  %7248 = extractvalue %dx.types.CBufRet.f32 %7246, 3
  %7249 = fmul fast float %7244, %7247
  %7250 = fmul fast float %7245, %7248
  %7251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.i32 %7251, 3
  %7253 = icmp eq i32 %7252, 0
  br i1 %7253, label %7259, label %7254

; <label>:7254                                    ; preds = %7214
  %7255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7249, float %7250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7256 = extractvalue %dx.types.ResRet.f32 %7255, 0
  %7257 = extractvalue %dx.types.ResRet.f32 %7255, 1
  %7258 = extractvalue %dx.types.ResRet.f32 %7255, 2
  br label %7264

; <label>:7259                                    ; preds = %7214
  %7260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7249, float %7250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.ResRet.f32 %7260, 2
  br label %7264

; <label>:7264                                    ; preds = %7259, %7254
  %7265 = phi float [ %7256, %7254 ], [ %7261, %7259 ]
  %7266 = phi float [ %7257, %7254 ], [ %7262, %7259 ]
  %7267 = phi float [ %7258, %7254 ], [ %7263, %7259 ]
  %7268 = extractvalue %dx.types.CBufRet.f32 %7223, 2
  %7269 = fmul fast float %7268, %7265
  %7270 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7271 = fsub fast float %7236, %7270
  %7272 = fsub fast float %7271, %7269
  %7273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7272)  ; FMax(a,b)
  %7274 = fmul fast float %7273, %7266
  %7275 = call float @dx.op.binary.f32(i32 36, float %7267, float %7274)  ; FMin(a,b)
  %7276 = fmul fast float %7275, 0xBFF7154760000000
  %7277 = call float @dx.op.unary.f32(i32 21, float %7276)  ; Exp(value)
  %7278 = fmul fast float %7216, %7277
  br label %7279

; <label>:7279                                    ; preds = %7264, %7109
  %7280 = phi float [ %7278, %7264 ], [ %7110, %7109 ]
  %7281 = call float @dx.op.binary.f32(i32 36, float %7280, float %7280)  ; FMin(a,b)
  %7282 = call float @dx.op.binary.f32(i32 36, float %7280, float %7281)  ; FMin(a,b)
  %7283 = fcmp fast ogt float %7282, 0.000000e+00
  br i1 %7283, label %7284, label %7531, !dx.controlflow.hints !132

; <label>:7284                                    ; preds = %7279
  %7285 = fmul fast float %7280, %5840
  %7286 = fmul fast float %7280, %5841
  %7287 = fmul fast float %7280, %5842
  %7288 = fsub fast float %203, %4307
  %7289 = fcmp fast ogt float %7288, 0.000000e+00
  %7290 = fmul fast float %5829, 5.120000e+02
  %7291 = fmul fast float %5830, 5.120000e+02
  %7292 = fmul fast float %5831, 5.120000e+02
  %7293 = fadd fast float %7292, %203
  %7294 = fsub fast float %4307, %7293
  %7295 = fmul fast float %7294, 2.000000e+00
  %7296 = fadd fast float %7295, %7293
  %7297 = select i1 %7289, float %7296, float %7293
  %7298 = fsub fast float %7297, %203
  %7299 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7298, float %7290, float %7291, float %7298)  ; Dot3(ax,ay,az,bx,by,bz)
  %7300 = call float @dx.op.unary.f32(i32 25, float %7299)  ; Rsqrt(value)
  %7301 = fmul fast float %7300, %7290
  %7302 = fmul fast float %7300, %7291
  %7303 = fmul fast float %7300, %7298
  %7304 = fsub fast float %4307, %203
  %7305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7304)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7301, float %7302, float %7303)  ; Dot3(ax,ay,az,bx,by,bz)
  %7307 = fdiv fast float 1.000000e+00, %7306
  %7308 = fmul fast float %7307, %7305
  %7309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7288, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = fcmp fast ogt float %7309, 0.000000e+00
  %7311 = fcmp fast olt float %7309, 0.000000e+00
  %7312 = zext i1 %7310 to i32
  %7313 = zext i1 %7311 to i32
  %7314 = sub nsw i32 %7312, %7313
  %7315 = sitofp i32 %7314 to float
  %7316 = fsub fast float %7297, %4307
  %7317 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7316, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = fcmp fast ogt float %7317, 0.000000e+00
  %7319 = fcmp fast olt float %7317, 0.000000e+00
  %7320 = zext i1 %7318 to i32
  %7321 = zext i1 %7319 to i32
  %7322 = sub nsw i32 %7320, %7321
  %7323 = sitofp i32 %7322 to float
  %7324 = fcmp fast une float %7315, %7323
  br i1 %7324, label %7325, label %7335

; <label>:7325                                    ; preds = %7284
  %7326 = fmul fast float %7308, %7303
  %7327 = fmul fast float %7308, %7302
  %7328 = fmul fast float %7308, %7301
  %7329 = fmul fast float %7328, %7328
  %7330 = fmul fast float %7327, %7327
  %7331 = fadd fast float %7329, %7330
  %7332 = fmul fast float %7326, %7326
  %7333 = fadd fast float %7331, %7332
  %7334 = call float @dx.op.unary.f32(i32 24, float %7333)  ; Sqrt(value)
  br label %7345

; <label>:7335                                    ; preds = %7284
  %7336 = icmp slt i32 %7314, 0
  br i1 %7336, label %7337, label %7345

; <label>:7337                                    ; preds = %7335
  %7338 = fsub fast float %203, %7297
  %7339 = fmul fast float %7290, %7290
  %7340 = fmul fast float %7291, %7291
  %7341 = fadd fast float %7339, %7340
  %7342 = fmul fast float %7338, %7338
  %7343 = fadd fast float %7341, %7342
  %7344 = call float @dx.op.unary.f32(i32 24, float %7343)  ; Sqrt(value)
  br label %7345

; <label>:7345                                    ; preds = %7337, %7335, %7325
  %7346 = phi float [ %7334, %7325 ], [ %7344, %7337 ], [ 0.000000e+00, %7335 ]
  %7347 = fsub fast float -0.000000e+00, %7346
  %7348 = select i1 %7289, float -0.000000e+00, float %7347
  %7349 = fmul fast float %4304, 0x3FF7154760000000
  %7350 = fmul fast float %7349, %7348
  %7351 = fmul fast float %4305, 0x3FF7154760000000
  %7352 = fmul fast float %7351, %7348
  %7353 = fmul fast float %4306, 0x3FF7154760000000
  %7354 = fmul fast float %7353, %7348
  %7355 = call float @dx.op.unary.f32(i32 21, float %7350)  ; Exp(value)
  %7356 = call float @dx.op.unary.f32(i32 21, float %7352)  ; Exp(value)
  %7357 = call float @dx.op.unary.f32(i32 21, float %7354)  ; Exp(value)
  %7358 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7359 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7360 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7361 = fmul fast float %7285, %7358
  %7362 = fmul fast float %7286, %7359
  %7363 = fmul fast float %7287, %7360
  %7364 = fsub fast float %5829, %5096
  %7365 = fsub fast float %5830, %5095
  %7366 = fsub fast float %5831, %5094
  %7367 = call float @dx.op.dot3.f32(i32 55, float %7364, float %7365, float %7366, float %7364, float %7365, float %7366)  ; Dot3(ax,ay,az,bx,by,bz)
  %7368 = call float @dx.op.unary.f32(i32 25, float %7367)  ; Rsqrt(value)
  %7369 = fmul fast float %7368, %7364
  %7370 = fmul fast float %7368, %7365
  %7371 = fmul fast float %7368, %7366
  %7372 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %7373 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5092, float %5091, float %7369, float %7370, float %7371)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = call float @dx.op.unary.f32(i32 7, float %7372)  ; Saturate(value)
  %7375 = fmul fast float %7374, %7374
  %7376 = fmul fast float %7375, %5136
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = fmul fast float %7377, %7374
  %7379 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %7369, float %7370, float %7371)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = fmul fast float %7379, %7379
  %7381 = call float @dx.op.unary.f32(i32 6, float %7372)  ; FAbs(value)
  %7382 = fsub fast float 1.000000e+00, %5129
  %7383 = fmul fast float %5111, %5111
  %7384 = fmul fast float %7383, %7382
  %7385 = fadd fast float %7384, %5129
  %7386 = bitcast float %7385 to i32
  %7387 = ashr i32 %7386, 1
  %7388 = add nsw i32 %7387, 532487669
  %7389 = bitcast i32 %7388 to float
  %7390 = fadd fast float %7389, %5111
  %7391 = fmul fast float %5129, %7380
  %7392 = fsub fast float 1.000000e+00, %7380
  %7393 = fadd fast float %7392, %7391
  %7394 = fmul fast float %7381, %7381
  %7395 = fmul fast float %7394, %7382
  %7396 = fadd fast float %7395, %5129
  %7397 = bitcast float %7396 to i32
  %7398 = ashr i32 %7397, 1
  %7399 = add nsw i32 %7398, 532487669
  %7400 = bitcast i32 %7399 to float
  %7401 = fadd fast float %7400, %7381
  %7402 = fmul fast float %7393, %7393
  %7403 = fmul fast float %7402, %7390
  %7404 = fmul fast float %7403, %7401
  %7405 = fdiv fast float 0x3FF0A00000000000, %7404
  %7406 = fmul fast float %7405, %5129
  %7407 = call float @dx.op.unary.f32(i32 6, float %7373)  ; FAbs(value)
  %7408 = fsub fast float 1.000000e+00, %7407
  %7409 = bitcast float %7408 to i32
  %7410 = sitofp i32 %7409 to float
  %7411 = fmul fast float %7410, 5.000000e+00
  %7412 = fadd fast float %7411, 0xC1EFBF8940000000
  %7413 = fptosi float %7412 to i32
  %7414 = bitcast i32 %7413 to float
  %7415 = fsub fast float 1.000000e+00, %5100
  %7416 = fsub fast float 1.000000e+00, %5101
  %7417 = fsub fast float 1.000000e+00, %5109
  %7418 = fmul fast float %7414, %7415
  %7419 = fmul fast float %7414, %7416
  %7420 = fmul fast float %7414, %7417
  %7421 = fadd fast float %7418, %5100
  %7422 = fadd fast float %7419, %5101
  %7423 = fadd fast float %7420, %5109
  br i1 %5248, label %7424, label %7447

; <label>:7424                                    ; preds = %7345
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3903, float %7407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = fadd fast float %7426, -5.000000e-01
  %7430 = fadd fast float %7427, -5.000000e-01
  %7431 = fadd fast float %7428, -5.000000e-01
  %7432 = fmul fast float %5100, 4.000000e+00
  %7433 = fmul fast float %7432, %7415
  %7434 = fmul fast float %7433, %7429
  %7435 = fmul fast float %5101, 4.000000e+00
  %7436 = fmul fast float %7435, %7416
  %7437 = fmul fast float %7436, %7430
  %7438 = fmul fast float %5109, 4.000000e+00
  %7439 = fmul fast float %7438, %7417
  %7440 = fmul fast float %7439, %7431
  %7441 = fadd fast float %7434, %7421
  %7442 = fadd fast float %7437, %7422
  %7443 = fadd fast float %7440, %7423
  %7444 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7445 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7446 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  br label %7447

; <label>:7447                                    ; preds = %7424, %7345
  %7448 = phi float [ %7444, %7424 ], [ %7421, %7345 ]
  %7449 = phi float [ %7445, %7424 ], [ %7422, %7345 ]
  %7450 = phi float [ %7446, %7424 ], [ %7423, %7345 ]
  %7451 = fmul fast float %7372, 9.843750e-01
  %7452 = fadd fast float %7451, 7.812500e-03
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7452, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 2
  %7455 = extractvalue %dx.types.ResRet.f32 %7453, 3
  %7456 = fmul fast float %7454, %5100
  %7457 = fmul fast float %7454, %5101
  %7458 = fmul fast float %7454, %5109
  %7459 = fadd fast float %7456, %7455
  %7460 = fadd fast float %7457, %7455
  %7461 = fadd fast float %7458, %7455
  br i1 %5248, label %7462, label %7485

; <label>:7462                                    ; preds = %7447
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3903, float %7372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = fadd fast float %7464, -5.000000e-01
  %7468 = fadd fast float %7465, -5.000000e-01
  %7469 = fadd fast float %7466, -5.000000e-01
  %7470 = fmul fast float %5100, 4.000000e+00
  %7471 = fmul fast float %7470, %7415
  %7472 = fmul fast float %7471, %7467
  %7473 = fmul fast float %5101, 4.000000e+00
  %7474 = fmul fast float %7473, %7416
  %7475 = fmul fast float %7474, %7468
  %7476 = fmul fast float %5109, 4.000000e+00
  %7477 = fmul fast float %7476, %7417
  %7478 = fmul fast float %7477, %7469
  %7479 = fadd fast float %7472, %7459
  %7480 = fadd fast float %7475, %7460
  %7481 = fadd fast float %7478, %7461
  %7482 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7483 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7484 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  br label %7485

; <label>:7485                                    ; preds = %7462, %7447
  %7486 = phi float [ %7482, %7462 ], [ %7459, %7447 ]
  %7487 = phi float [ %7483, %7462 ], [ %7460, %7447 ]
  %7488 = phi float [ %7484, %7462 ], [ %7461, %7447 ]
  %7489 = call float @dx.op.binary.f32(i32 35, float %7487, float %7488)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float %7486, float %7489)  ; FMax(a,b)
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = fmul fast float %7448, %7406
  %7493 = fmul fast float %7449, %7406
  %7494 = fmul fast float %7450, %7406
  %7495 = fsub fast float 1.000000e+00, %7373
  %7496 = bitcast float %7495 to i32
  %7497 = sitofp i32 %7496 to float
  %7498 = fmul fast float %7497, 5.000000e+00
  %7499 = fadd fast float %7498, 0xC1EFBF8940000000
  %7500 = fptosi float %7499 to i32
  %7501 = bitcast i32 %7500 to float
  %7502 = fmul fast float %7501, %3904
  %7503 = fmul fast float %7491, %7502
  %7504 = fmul fast float %7503, %5790
  %7505 = fmul fast float %7503, %5791
  %7506 = fmul fast float %7503, %5792
  %7507 = fadd fast float %7504, %7492
  %7508 = fadd fast float %7505, %7493
  %7509 = fadd fast float %7506, %7494
  %7510 = fmul fast float %7378, %7361
  %7511 = fmul fast float %7510, %7491
  %7512 = fmul fast float %7378, %7362
  %7513 = fmul fast float %7512, %7491
  %7514 = fmul fast float %7378, %7363
  %7515 = fmul fast float %7514, %7491
  %7516 = fmul fast float %7510, %7507
  %7517 = fmul fast float %7512, %7508
  %7518 = fmul fast float %7514, %7509
  %7519 = fadd fast float %7511, %5774
  %7520 = fmul fast float %7519, %3900
  %7521 = fadd fast float %7513, %5775
  %7522 = fmul fast float %7521, %3900
  %7523 = fadd fast float %7515, %5776
  %7524 = fmul fast float %7523, %3900
  %7525 = fadd fast float %7516, %5817
  %7526 = fmul fast float %7525, %3900
  %7527 = fadd fast float %7517, %5820
  %7528 = fmul fast float %7527, %3900
  %7529 = fadd fast float %7518, %5823
  %7530 = fmul fast float %7529, %3900
  br label %7531

; <label>:7531                                    ; preds = %7485, %7279, %5770
  %7532 = phi float [ %5818, %5770 ], [ %5818, %7279 ], [ %7526, %7485 ]
  %7533 = phi float [ %5821, %5770 ], [ %5821, %7279 ], [ %7528, %7485 ]
  %7534 = phi float [ %5824, %5770 ], [ %5824, %7279 ], [ %7530, %7485 ]
  %7535 = phi float [ %5813, %5770 ], [ %5813, %7279 ], [ %7520, %7485 ]
  %7536 = phi float [ %5814, %5770 ], [ %5814, %7279 ], [ %7522, %7485 ]
  %7537 = phi float [ %5815, %5770 ], [ %5815, %7279 ], [ %7524, %7485 ]
  %7538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.i32 %7538, 0
  %7540 = icmp eq i32 %7539, 0
  br i1 %7540, label %8203, label %7541

; <label>:7541                                    ; preds = %7531
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7544 = extractvalue %dx.types.CBufRet.f32 %7542, 3
  %7545 = fmul fast float %7543, %114
  %7546 = fmul fast float %7544, %115
  %7547 = fptoui float %7545 to i32
  %7548 = fptoui float %7546 to i32
  %7549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7550 = extractvalue %dx.types.CBufRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.CBufRet.f32 %7549, 2
  %7552 = extractvalue %dx.types.CBufRet.f32 %7549, 3
  %7553 = fadd fast float %101, -4.000000e+00
  %7554 = call float @dx.op.binary.f32(i32 35, float %7553, float 0.000000e+00)  ; FMax(a,b)
  %7555 = fadd fast float %7554, %7550
  %7556 = fmul fast float %7555, %7551
  %7557 = call float @dx.op.unary.f32(i32 23, float %7556)  ; Log(value)
  %7558 = fmul fast float %7557, %7552
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7561 = fmul fast float %7558, %7560
  %7562 = call float @dx.op.unary.f32(i32 7, float %7561)  ; Saturate(value)
  %7563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.i32 %7563, 1
  %7565 = add i32 %7564, -1
  %7566 = uitofp i32 %7564 to float
  %7567 = fmul fast float %7566, %7562
  %7568 = fptoui float %7567 to i32
  %7569 = call i32 @dx.op.binary.i32(i32 40, i32 %7568, i32 %7565)  ; UMin(a,b)
  %7570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.i32 %7570, 2
  %7572 = extractvalue %dx.types.CBufRet.i32 %7570, 3
  %7573 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7548, i32 %7571, i32 %7547)  ; UMad(a,b,c)
  %7574 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7569, i32 %7572, i32 %7573)  ; UMad(a,b,c)
  %7575 = add nsw i32 %7539, -1
  %7576 = call i32 @dx.op.binary.i32(i32 37, i32 %7575, i32 0)  ; IMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7578 = fptoui float %7577 to i32
  %7579 = lshr i32 %7578, 5
  %7580 = call i32 @dx.op.binary.i32(i32 40, i32 %7579, i32 8191)  ; UMin(a,b)
  %7581 = shl i32 %7580, 2
  %7582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7581, i32 undef)  ; BufferLoad(srv,index,wot)
  %7583 = extractvalue %dx.types.ResRet.i32 %7582, 0
  %7584 = lshr i32 %7583, 16
  %7585 = and i32 %7583, 65535
  %7586 = lshr i32 %7583, 21
  %7587 = lshr i32 %7585, 5
  %7588 = call i32 @dx.op.binary.i32(i32 40, i32 %7587, i32 %7576)  ; UMin(a,b)
  %7589 = icmp ugt i32 %7586, %7588
  br i1 %7589, label %8203, label %7590

; <label>:7590                                    ; preds = %7541
  br label %7591

; <label>:7591                                    ; preds = %8193, %7590
  %7592 = phi i32 [ %8200, %8193 ], [ %7586, %7590 ]
  %7593 = phi float [ %8194, %8193 ], [ %7532, %7590 ]
  %7594 = phi float [ %8195, %8193 ], [ %7533, %7590 ]
  %7595 = phi float [ %8196, %8193 ], [ %7534, %7590 ]
  %7596 = phi float [ %8197, %8193 ], [ %7535, %7590 ]
  %7597 = phi float [ %8198, %8193 ], [ %7536, %7590 ]
  %7598 = phi float [ %8199, %8193 ], [ %7537, %7590 ]
  %7599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.i32 %7599, 0
  %7601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7574, i32 %7600, i32 %7592)  ; UMad(a,b,c)
  %7602 = shl i32 %7601, 2
  %7603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7602, i32 undef)  ; BufferLoad(srv,index,wot)
  %7604 = extractvalue %dx.types.ResRet.i32 %7603, 0
  %7605 = shl i32 %7592, 5
  %7606 = sub nsw i32 %7584, %7605
  %7607 = call i32 @dx.op.binary.i32(i32 37, i32 %7606, i32 0)  ; IMax(a,b)
  %7608 = call i32 @dx.op.binary.i32(i32 38, i32 %7607, i32 31)  ; IMin(a,b)
  %7609 = sub nsw i32 1, %7584
  %7610 = add nsw i32 %7609, %7585
  %7611 = call i32 @dx.op.binary.i32(i32 37, i32 %7610, i32 0)  ; IMax(a,b)
  %7612 = call i32 @dx.op.binary.i32(i32 38, i32 %7611, i32 32)  ; IMin(a,b)
  %7613 = and i32 %7612, 31
  %7614 = shl i32 -1, %7613
  %7615 = xor i32 %7614, -1
  %7616 = and i32 %7608, 31
  %7617 = shl i32 %7615, %7616
  %7618 = icmp eq i32 %7612, 32
  %7619 = select i1 %7618, i32 -1, i32 %7617
  %7620 = and i32 %7619, %7604
  %7621 = icmp eq i32 %7620, 0
  br i1 %7621, label %8193, label %7622

; <label>:7622                                    ; preds = %7591
  br label %7623

; <label>:7623                                    ; preds = %7757, %7622
  %7624 = phi i32 [ %7635, %7757 ], [ %7620, %7622 ]
  %7625 = phi float [ %7758, %7757 ], [ %7593, %7622 ]
  %7626 = phi float [ %7759, %7757 ], [ %7594, %7622 ]
  %7627 = phi float [ %7760, %7757 ], [ %7595, %7622 ]
  %7628 = phi float [ %7761, %7757 ], [ %7596, %7622 ]
  %7629 = phi float [ %7762, %7757 ], [ %7597, %7622 ]
  %7630 = phi float [ %7763, %7757 ], [ %7598, %7622 ]
  %7631 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7624)  ; FirstbitLo(value)
  %7632 = add i32 %7631, %7605
  %7633 = and i32 %7631, 31
  %7634 = shl i32 1, %7633
  %7635 = xor i32 %7634, %7624
  %7636 = mul i32 %7632, 112
  %7637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7636, i32 undef)  ; BufferLoad(srv,index,wot)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = extractvalue %dx.types.ResRet.f32 %7637, 1
  %7640 = extractvalue %dx.types.ResRet.f32 %7637, 2
  %7641 = or i32 %7636, 12
  %7642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7641, i32 undef)  ; BufferLoad(srv,index,wot)
  %7643 = extractvalue %dx.types.ResRet.f32 %7642, 0
  %7644 = add i32 %7636, 16
  %7645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7644, i32 undef)  ; BufferLoad(srv,index,wot)
  %7646 = extractvalue %dx.types.ResRet.f32 %7645, 0
  %7647 = extractvalue %dx.types.ResRet.f32 %7645, 1
  %7648 = extractvalue %dx.types.ResRet.f32 %7645, 2
  %7649 = add i32 %7636, 28
  %7650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7649, i32 undef)  ; BufferLoad(srv,index,wot)
  %7651 = extractvalue %dx.types.ResRet.i32 %7650, 0
  %7652 = add i32 %7636, 44
  %7653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7652, i32 undef)  ; BufferLoad(srv,index,wot)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 0
  %7655 = add i32 %7636, 48
  %7656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7655, i32 undef)  ; BufferLoad(srv,index,wot)
  %7657 = extractvalue %dx.types.ResRet.f32 %7656, 0
  %7658 = extractvalue %dx.types.ResRet.f32 %7656, 1
  %7659 = extractvalue %dx.types.ResRet.f32 %7656, 2
  %7660 = extractvalue %dx.types.ResRet.f32 %7656, 3
  %7661 = add i32 %7636, 64
  %7662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7661, i32 undef)  ; BufferLoad(srv,index,wot)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.ResRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.ResRet.f32 %7662, 2
  %7666 = extractvalue %dx.types.ResRet.f32 %7662, 3
  %7667 = add i32 %7636, 80
  %7668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7667, i32 undef)  ; BufferLoad(srv,index,wot)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 1
  %7670 = extractvalue %dx.types.ResRet.f32 %7668, 2
  %7671 = add i32 %7636, 92
  %7672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7671, i32 undef)  ; BufferLoad(srv,index,wot)
  %7673 = extractvalue %dx.types.ResRet.i32 %7672, 0
  %7674 = call float @dx.op.dot3.f32(i32 55, float %7638, float %7639, float %7640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7675 = select i1 %260, float %7669, float %7638
  %7676 = select i1 %260, float %7674, float %7639
  %7677 = select i1 %260, float %7670, float %7640
  %7678 = and i32 %7673, 65535
  %7679 = uitofp i32 %7678 to float
  %7680 = lshr i32 %7673, 16
  %7681 = uitofp i32 %7680 to float
  %7682 = and i32 %7651, 65535
  %7683 = and i32 %7651, 50331648
  %7684 = icmp eq i32 %7683, 33554432
  %7685 = fsub fast float %7657, %201
  %7686 = fsub fast float %7658, %202
  %7687 = fsub fast float %7659, %203
  %7688 = call float @dx.op.dot3.f32(i32 55, float %7685, float %7686, float %7687, float %7685, float %7686, float %7687)  ; Dot3(ax,ay,az,bx,by,bz)
  %7689 = call float @dx.op.unary.f32(i32 24, float %7688)  ; Sqrt(value)
  %7690 = fdiv fast float 1.000000e+00, %7689
  %7691 = fmul fast float %7690, %7685
  %7692 = fmul fast float %7690, %7686
  %7693 = fmul fast float %7690, %7687
  %7694 = fadd fast float %7689, %7643
  %7695 = fdiv fast float 1.000000e+00, %7694
  %7696 = fmul float %7654, %7695
  %7697 = fmul float %7696, %7696
  %7698 = call float @dx.op.unary.f32(i32 7, float %7697)  ; Saturate(value)
  br i1 %7684, label %7699, label %7720

; <label>:7699                                    ; preds = %7623
  %7700 = fmul fast float %7665, %7646
  %7701 = fmul fast float %7665, %7647
  %7702 = fmul fast float %7665, %7648
  %7703 = fadd fast float %7685, %7700
  %7704 = fadd fast float %7686, %7701
  %7705 = fadd fast float %7687, %7702
  %7706 = call float @dx.op.dot3.f32(i32 55, float %7703, float %7704, float %7705, float %7703, float %7704, float %7705)  ; Dot3(ax,ay,az,bx,by,bz)
  %7707 = call float @dx.op.unary.f32(i32 25, float %7706)  ; Rsqrt(value)
  %7708 = fmul fast float %7707, %7703
  %7709 = fmul fast float %7707, %7704
  %7710 = fmul fast float %7707, %7705
  %7711 = fsub fast float %201, %7657
  %7712 = fsub fast float %202, %7658
  %7713 = fsub fast float %203, %7659
  %7714 = fsub fast float -0.000000e+00, %7711
  %7715 = fsub fast float -0.000000e+00, %7712
  %7716 = fsub fast float -0.000000e+00, %7713
  %7717 = call float @dx.op.dot3.f32(i32 55, float %7714, float %7715, float %7716, float %7646, float %7647, float %7648)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = fcmp fast ogt float %7717, 0.000000e+00
  %7719 = uitofp i1 %7718 to float
  br label %7720

; <label>:7720                                    ; preds = %7699, %7623
  %7721 = phi float [ %7719, %7699 ], [ 1.000000e+00, %7623 ]
  %7722 = phi float [ %7708, %7699 ], [ %7691, %7623 ]
  %7723 = phi float [ %7709, %7699 ], [ %7692, %7623 ]
  %7724 = phi float [ %7710, %7699 ], [ %7693, %7623 ]
  %7725 = call float @dx.op.dot3.f32(i32 55, float %7646, float %7647, float %7648, float %7722, float %7723, float %7724)  ; Dot3(ax,ay,az,bx,by,bz)
  %7726 = fmul fast float %7725, %7725
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = fsub fast float 1.000000e+00, %7727
  %7729 = fmul fast float %7728, 5.000000e-01
  %7730 = fcmp fast ogt float %7725, 0.000000e+00
  %7731 = fsub fast float 1.000000e+00, %7729
  %7732 = select i1 %7730, float %7729, float %7731
  %7733 = fmul fast float %7732, %7681
  %7734 = fadd fast float %7733, %7679
  %7735 = fmul fast float %7734, 0x3EF0001000000000
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7735, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 0
  %7738 = fmul fast float %7725, %7663
  %7739 = fadd fast float %7738, %7664
  %7740 = call float @dx.op.unary.f32(i32 7, float %7739)  ; Saturate(value)
  %7741 = select i1 %7684, float 1.000000e+00, float %7740
  %7742 = select i1 %7684, float %7740, float 1.000000e+00
  %7743 = fmul fast float %7689, %7660
  %7744 = fsub fast float 1.000000e+00, %7743
  %7745 = fmul fast float %7744, %7666
  %7746 = call float @dx.op.unary.f32(i32 7, float %7745)  ; Saturate(value)
  %7747 = fmul fast float %7746, %7742
  %7748 = fmul fast float %7747, 2.000000e+00
  %7749 = fsub fast float 3.000000e+00, %7748
  %7750 = fmul fast float %7737, %7721
  %7751 = fmul fast float %7747, %7747
  %7752 = fmul fast float %7751, %7750
  %7753 = fmul fast float %7752, %7749
  %7754 = call float @dx.op.binary.f32(i32 36, float %7753, float %7753)  ; FMin(a,b)
  %7755 = call float @dx.op.binary.f32(i32 36, float %7753, float %7754)  ; FMin(a,b)
  %7756 = fcmp fast ogt float %7755, 0.000000e+00
  br i1 %7756, label %7765, label %7757, !dx.controlflow.hints !133

; <label>:7757                                    ; preds = %8149, %7911, %7720
  %7758 = phi float [ %7625, %7911 ], [ %7625, %7720 ], [ %8189, %8149 ]
  %7759 = phi float [ %7626, %7911 ], [ %7626, %7720 ], [ %8190, %8149 ]
  %7760 = phi float [ %7627, %7911 ], [ %7627, %7720 ], [ %8191, %8149 ]
  %7761 = phi float [ %7628, %7911 ], [ %7628, %7720 ], [ %8183, %8149 ]
  %7762 = phi float [ %7629, %7911 ], [ %7629, %7720 ], [ %8184, %8149 ]
  %7763 = phi float [ %7630, %7911 ], [ %7630, %7720 ], [ %8185, %8149 ]
  %7764 = icmp eq i32 %7624, %7634
  br i1 %7764, label %8192, label %7623

; <label>:7765                                    ; preds = %7720
  %7766 = icmp eq i32 %7682, 255
  br i1 %7766, label %7911, label %7767, !dx.controlflow.hints !134

; <label>:7767                                    ; preds = %7765
  %7768 = mul nuw nsw i32 %7682, 176
  %7769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7768, i32 undef)  ; BufferLoad(srv,index,wot)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.ResRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.ResRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.ResRet.f32 %7769, 3
  %7774 = add nuw nsw i32 %7768, 16
  %7775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7774, i32 undef)  ; BufferLoad(srv,index,wot)
  %7776 = extractvalue %dx.types.ResRet.f32 %7775, 0
  %7777 = extractvalue %dx.types.ResRet.f32 %7775, 1
  %7778 = add nuw nsw i32 %7768, 32
  %7779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7778, i32 undef)  ; BufferLoad(srv,index,wot)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  %7783 = add nuw nsw i32 %7768, 48
  %7784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7783, i32 undef)  ; BufferLoad(srv,index,wot)
  %7785 = extractvalue %dx.types.ResRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.ResRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.ResRet.f32 %7784, 2
  %7788 = extractvalue %dx.types.ResRet.f32 %7784, 3
  %7789 = add nuw nsw i32 %7768, 64
  %7790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7789, i32 undef)  ; BufferLoad(srv,index,wot)
  %7791 = extractvalue %dx.types.ResRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.ResRet.f32 %7790, 1
  %7793 = extractvalue %dx.types.ResRet.f32 %7790, 2
  %7794 = extractvalue %dx.types.ResRet.f32 %7790, 3
  %7795 = add nuw nsw i32 %7768, 80
  %7796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7795, i32 undef)  ; BufferLoad(srv,index,wot)
  %7797 = extractvalue %dx.types.ResRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.ResRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.ResRet.f32 %7796, 2
  %7800 = extractvalue %dx.types.ResRet.f32 %7796, 3
  %7801 = add nuw nsw i32 %7768, 96
  %7802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7801, i32 undef)  ; BufferLoad(srv,index,wot)
  %7803 = extractvalue %dx.types.ResRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.ResRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.ResRet.f32 %7802, 2
  %7806 = extractvalue %dx.types.ResRet.f32 %7802, 3
  %7807 = bitcast float %7777 to i32
  %7808 = fmul fast float %7782, %121
  %7809 = fmul fast float %7782, %122
  %7810 = fmul fast float %7782, %123
  %7811 = fadd fast float %7808, %201
  %7812 = fadd fast float %7809, %202
  %7813 = fadd fast float %7810, %203
  %7814 = fmul fast float %7811, %7785
  %7815 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7791, float %7814)  ; FMad(a,b,c)
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %7813, float %7797, float %7815)  ; FMad(a,b,c)
  %7817 = fadd fast float %7816, %7803
  %7818 = fmul fast float %7811, %7786
  %7819 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7792, float %7818)  ; FMad(a,b,c)
  %7820 = call float @dx.op.tertiary.f32(i32 46, float %7813, float %7798, float %7819)  ; FMad(a,b,c)
  %7821 = fadd fast float %7820, %7804
  %7822 = fmul fast float %7811, %7787
  %7823 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7793, float %7822)  ; FMad(a,b,c)
  %7824 = call float @dx.op.tertiary.f32(i32 46, float %7813, float %7799, float %7823)  ; FMad(a,b,c)
  %7825 = fadd fast float %7824, %7805
  %7826 = fmul fast float %7811, %7788
  %7827 = call float @dx.op.tertiary.f32(i32 46, float %7812, float %7794, float %7826)  ; FMad(a,b,c)
  %7828 = call float @dx.op.tertiary.f32(i32 46, float %7813, float %7800, float %7827)  ; FMad(a,b,c)
  %7829 = fadd fast float %7828, %7806
  %7830 = fdiv fast float %7817, %7829
  %7831 = fdiv fast float %7821, %7829
  %7832 = fdiv fast float %7825, %7829
  %7833 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7832)  ; FMax(a,b)
  %7834 = fmul fast float %271, 0x401921FB60000000
  %7835 = call float @dx.op.unary.f32(i32 13, float %7834)  ; Sin(value)
  %7836 = call float @dx.op.unary.f32(i32 12, float %7834)  ; Cos(value)
  %7837 = fmul fast float %7836, %7781
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %7835, float %7781, float 0.000000e+00)  ; FMad(a,b,c)
  %7839 = fmul fast float %7781, %7835
  %7840 = fsub fast float -0.000000e+00, %7839
  %7841 = call float @dx.op.tertiary.f32(i32 46, float %7836, float %7781, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7842

; <label>:7842                                    ; preds = %7842, %7767
  %7843 = phi float [ 0.000000e+00, %7767 ], [ %7875, %7842 ]
  %7844 = phi float [ 0.000000e+00, %7767 ], [ %7877, %7842 ]
  %7845 = phi i32 [ 0, %7767 ], [ %7878, %7842 ]
  %7846 = mul i32 %7845, 2
  %7847 = add i32 0, %7846
  %7848 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7847
  %7849 = load float, float* %7848, align 4
  %7850 = mul i32 %7845, 2
  %7851 = add i32 1, %7850
  %7852 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7851
  %7853 = load float, float* %7852, align 4
  %7854 = fmul fast float %7837, %7849
  %7855 = call float @dx.op.tertiary.f32(i32 46, float %7853, float %7840, float %7854)  ; FMad(a,b,c)
  %7856 = fmul fast float %7849, %7838
  %7857 = call float @dx.op.tertiary.f32(i32 46, float %7853, float %7841, float %7856)  ; FMad(a,b,c)
  %7858 = fadd fast float %7855, %7830
  %7859 = fadd fast float %7857, %7831
  %7860 = fmul fast float %7858, %7776
  %7861 = fmul fast float %7859, %7776
  %7862 = call float @dx.op.binary.f32(i32 35, float %7860, float %7772)  ; FMax(a,b)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7861, float %7772)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7862, float %7773)  ; FMin(a,b)
  %7865 = call float @dx.op.binary.f32(i32 36, float %7863, float %7773)  ; FMin(a,b)
  %7866 = fadd fast float %7864, %7770
  %7867 = fadd fast float %7865, %7771
  %7868 = uitofp i32 %7807 to float
  %7869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7866, float %7867, float %7868, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7870 = extractvalue %dx.types.ResRet.f32 %7869, 0
  %7871 = fsub fast float %7870, %7833
  %7872 = fsub fast float %7871, %7780
  %7873 = fcmp fast ogt float %7872, 0.000000e+00
  %7874 = select i1 %7873, float 1.000000e+00, float 0.000000e+00
  %7875 = fadd fast float %7874, %7843
  %7876 = select i1 %7873, float %7872, float 0.000000e+00
  %7877 = fadd fast float %7876, %7844
  %7878 = add nuw nsw i32 %7845, 1
  %7879 = icmp eq i32 %7878, 8
  br i1 %7879, label %7880, label %7842

; <label>:7880                                    ; preds = %7842
  %7881 = fdiv fast float 1.000000e+00, %7875
  %7882 = fmul fast float %7881, %7877
  %7883 = fdiv fast float 1.000000e+00, %7833
  %7884 = fmul fast float %7882, %7883
  %7885 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  %7886 = call float @dx.op.binary.f32(i32 35, float %7885, float 0.000000e+00)  ; FMax(a,b)
  %7887 = fmul fast float %7875, 1.250000e-01
  %7888 = call float @dx.op.unary.f32(i32 7, float %7887)  ; Saturate(value)
  %7889 = fmul fast float %7888, 2.000000e+00
  %7890 = fadd fast float %7889, -1.000000e+00
  %7891 = fcmp fast ogt float %7890, 0.000000e+00
  %7892 = fcmp fast olt float %7890, 0.000000e+00
  %7893 = zext i1 %7891 to i32
  %7894 = zext i1 %7892 to i32
  %7895 = sub nsw i32 %7893, %7894
  %7896 = sitofp i32 %7895 to float
  %7897 = fmul fast float %7896, %7890
  %7898 = fsub fast float 1.000000e+00, %7897
  %7899 = fmul fast float %7898, %7898
  %7900 = fmul fast float %7899, %7898
  %7901 = fsub fast float %7898, %7900
  %7902 = fmul fast float %7901, %7886
  %7903 = fsub fast float 1.000000e+00, %7900
  %7904 = fsub fast float %7903, %7902
  %7905 = fmul fast float %7896, 5.000000e-01
  %7906 = fmul fast float %7905, %7904
  %7907 = fsub fast float -5.000000e-01, %7906
  %7908 = fmul fast float %7907, %7741
  %7909 = fadd fast float %7908, 1.000000e+00
  %7910 = fmul fast float %7909, %7753
  br label %7911

; <label>:7911                                    ; preds = %7880, %7765
  %7912 = phi float [ %7910, %7880 ], [ %7753, %7765 ]
  %7913 = call float @dx.op.binary.f32(i32 36, float %7912, float %7912)  ; FMin(a,b)
  %7914 = call float @dx.op.binary.f32(i32 36, float %7912, float %7913)  ; FMin(a,b)
  %7915 = fcmp fast ogt float %7914, 0.000000e+00
  br i1 %7915, label %7916, label %7757, !dx.controlflow.hints !135

; <label>:7916                                    ; preds = %7911
  %7917 = fmul fast float %7912, %7675
  %7918 = fmul fast float %7912, %7676
  %7919 = fmul fast float %7912, %7677
  %7920 = fsub fast float %7659, %4307
  %7921 = fcmp fast ogt float %7920, 0.000000e+00
  %7922 = fsub fast float %203, %4307
  %7923 = fcmp fast ogt float %7922, 0.000000e+00
  %7924 = xor i1 %7923, %7921
  %7925 = fsub fast float %4307, %7659
  %7926 = fmul fast float %7925, 2.000000e+00
  %7927 = fadd fast float %7926, %7659
  %7928 = select i1 %7924, float %7659, float %7927
  %7929 = fsub fast float %7928, %203
  %7930 = call float @dx.op.dot3.f32(i32 55, float %7685, float %7686, float %7929, float %7685, float %7686, float %7929)  ; Dot3(ax,ay,az,bx,by,bz)
  %7931 = call float @dx.op.unary.f32(i32 25, float %7930)  ; Rsqrt(value)
  %7932 = fmul fast float %7931, %7685
  %7933 = fmul fast float %7931, %7686
  %7934 = fmul fast float %7931, %7929
  %7935 = fsub fast float %4307, %203
  %7936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7935)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7932, float %7933, float %7934)  ; Dot3(ax,ay,az,bx,by,bz)
  %7938 = fdiv fast float 1.000000e+00, %7937
  %7939 = fmul fast float %7938, %7936
  %7940 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7922, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7941 = fcmp fast ogt float %7940, 0.000000e+00
  %7942 = fcmp fast olt float %7940, 0.000000e+00
  %7943 = zext i1 %7941 to i32
  %7944 = zext i1 %7942 to i32
  %7945 = sub nsw i32 %7943, %7944
  %7946 = sitofp i32 %7945 to float
  %7947 = fsub fast float %7928, %4307
  %7948 = call float @dx.op.dot3.f32(i32 55, float %7685, float %7686, float %7947, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7949 = fcmp fast ogt float %7948, 0.000000e+00
  %7950 = fcmp fast olt float %7948, 0.000000e+00
  %7951 = zext i1 %7949 to i32
  %7952 = zext i1 %7950 to i32
  %7953 = sub nsw i32 %7951, %7952
  %7954 = sitofp i32 %7953 to float
  %7955 = fcmp fast une float %7946, %7954
  br i1 %7955, label %7956, label %7966

; <label>:7956                                    ; preds = %7916
  %7957 = fmul fast float %7939, %7934
  %7958 = fmul fast float %7939, %7933
  %7959 = fmul fast float %7939, %7932
  %7960 = fmul fast float %7959, %7959
  %7961 = fmul fast float %7958, %7958
  %7962 = fadd fast float %7960, %7961
  %7963 = fmul fast float %7957, %7957
  %7964 = fadd fast float %7962, %7963
  %7965 = call float @dx.op.unary.f32(i32 24, float %7964)  ; Sqrt(value)
  br label %7978

; <label>:7966                                    ; preds = %7916
  %7967 = icmp slt i32 %7945, 0
  br i1 %7967, label %7968, label %7978

; <label>:7968                                    ; preds = %7966
  %7969 = fsub fast float %201, %7657
  %7970 = fsub fast float %202, %7658
  %7971 = fsub fast float %203, %7928
  %7972 = fmul fast float %7969, %7969
  %7973 = fmul fast float %7970, %7970
  %7974 = fadd fast float %7972, %7973
  %7975 = fmul fast float %7971, %7971
  %7976 = fadd fast float %7974, %7975
  %7977 = call float @dx.op.unary.f32(i32 24, float %7976)  ; Sqrt(value)
  br label %7978

; <label>:7978                                    ; preds = %7968, %7966, %7956
  %7979 = phi float [ %7965, %7956 ], [ %7977, %7968 ], [ 0.000000e+00, %7966 ]
  %7980 = and i1 %7923, %7921
  %7981 = fsub fast float -0.000000e+00, %7979
  %7982 = select i1 %7980, float -0.000000e+00, float %7981
  %7983 = fmul fast float %4304, 0x3FF7154760000000
  %7984 = fmul fast float %7983, %7982
  %7985 = fmul fast float %4305, 0x3FF7154760000000
  %7986 = fmul fast float %7985, %7982
  %7987 = fmul fast float %4306, 0x3FF7154760000000
  %7988 = fmul fast float %7987, %7982
  %7989 = call float @dx.op.unary.f32(i32 21, float %7984)  ; Exp(value)
  %7990 = call float @dx.op.unary.f32(i32 21, float %7986)  ; Exp(value)
  %7991 = call float @dx.op.unary.f32(i32 21, float %7988)  ; Exp(value)
  %7992 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7993 = call float @dx.op.unary.f32(i32 7, float %7990)  ; Saturate(value)
  %7994 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7995 = fmul fast float %7917, %7992
  %7996 = fmul fast float %7918, %7993
  %7997 = fmul fast float %7919, %7994
  %7998 = fsub fast float %7691, %5096
  %7999 = fsub fast float %7692, %5095
  %8000 = fsub fast float %7693, %5094
  %8001 = call float @dx.op.dot3.f32(i32 55, float %7998, float %7999, float %8000, float %7998, float %7999, float %8000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = call float @dx.op.unary.f32(i32 25, float %8001)  ; Rsqrt(value)
  %8003 = fmul fast float %8002, %7998
  %8004 = fmul fast float %8002, %7999
  %8005 = fmul fast float %8002, %8000
  %8006 = call float @dx.op.dot3.f32(i32 55, float %7691, float %7692, float %7693, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %8007 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5092, float %5091, float %8003, float %8004, float %8005)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8009 = fmul fast float %8008, %7698
  %8010 = fmul fast float %8008, %8008
  %8011 = fmul fast float %8010, %5136
  %8012 = call float @dx.op.unary.f32(i32 7, float %8011)  ; Saturate(value)
  %8013 = fmul fast float %8009, %8012
  %8014 = bitcast float %7688 to i32
  %8015 = ashr i32 %8014, 1
  %8016 = sub nsw i32 1597463007, %8015
  %8017 = bitcast i32 %8016 to float
  %8018 = fmul fast float %8017, %7685
  %8019 = fmul fast float %8017, %7686
  %8020 = fmul fast float %8017, %7687
  %8021 = fsub fast float %8018, %5096
  %8022 = fsub fast float %8019, %5095
  %8023 = fsub fast float %8020, %5094
  %8024 = call float @dx.op.dot3.f32(i32 55, float %8021, float %8022, float %8023, float %8021, float %8022, float %8023)  ; Dot3(ax,ay,az,bx,by,bz)
  %8025 = call float @dx.op.unary.f32(i32 25, float %8024)  ; Rsqrt(value)
  %8026 = fmul fast float %8021, %8025
  %8027 = fmul fast float %8022, %8025
  %8028 = fmul fast float %8023, %8025
  %8029 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %8026, float %8027, float %8028)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = fmul fast float %8029, %8029
  %8031 = call float @dx.op.unary.f32(i32 6, float %8006)  ; FAbs(value)
  %8032 = fsub fast float 1.000000e+00, %5129
  %8033 = fmul fast float %5111, %5111
  %8034 = fmul fast float %8033, %8032
  %8035 = fadd fast float %8034, %5129
  %8036 = bitcast float %8035 to i32
  %8037 = ashr i32 %8036, 1
  %8038 = add nsw i32 %8037, 532487669
  %8039 = bitcast i32 %8038 to float
  %8040 = fadd fast float %8039, %5111
  %8041 = fmul fast float %5129, %8030
  %8042 = fsub fast float 1.000000e+00, %8030
  %8043 = fadd fast float %8042, %8041
  %8044 = fmul fast float %8031, %8031
  %8045 = fmul fast float %8044, %8032
  %8046 = fadd fast float %8045, %5129
  %8047 = bitcast float %8046 to i32
  %8048 = ashr i32 %8047, 1
  %8049 = add nsw i32 %8048, 532487669
  %8050 = bitcast i32 %8049 to float
  %8051 = fadd fast float %8050, %8031
  %8052 = fmul fast float %8043, %8043
  %8053 = fmul fast float %8052, %8040
  %8054 = fmul fast float %8053, %8051
  %8055 = fdiv fast float 1.000000e+00, %8054
  %8056 = bitcast float %5129 to i32
  %8057 = sitofp i32 %8056 to float
  %8058 = fmul fast float %8057, 0x3FE7F73180000000
  %8059 = fadd fast float %8058, 0x41AFE27C40000000
  %8060 = fptosi float %8059 to i32
  %8061 = bitcast i32 %8060 to float
  %8062 = fmul fast float %7654, 0x3FD80E9D60000000
  %8063 = fmul fast float %8062, %8017
  %8064 = fadd fast float %8061, %8063
  %8065 = bitcast float %8064 to i32
  %8066 = sub nsw i32 2129859010, %8065
  %8067 = bitcast i32 %8066 to float
  %8068 = fmul fast float %5129, %8055
  %8069 = fmul fast float %8068, %8061
  %8070 = fmul fast float %8069, %8067
  %8071 = call float @dx.op.unary.f32(i32 6, float %8007)  ; FAbs(value)
  %8072 = fsub fast float 1.000000e+00, %8071
  %8073 = bitcast float %8072 to i32
  %8074 = sitofp i32 %8073 to float
  %8075 = fmul fast float %8074, 5.000000e+00
  %8076 = fadd fast float %8075, 0xC1EFBF8940000000
  %8077 = fptosi float %8076 to i32
  %8078 = bitcast i32 %8077 to float
  %8079 = fsub fast float 1.000000e+00, %5100
  %8080 = fsub fast float 1.000000e+00, %5101
  %8081 = fsub fast float 1.000000e+00, %5109
  %8082 = fmul fast float %8078, %8079
  %8083 = fmul fast float %8078, %8080
  %8084 = fmul fast float %8078, %8081
  %8085 = fadd fast float %8082, %5100
  %8086 = fadd fast float %8083, %5101
  %8087 = fadd fast float %8084, %5109
  br i1 %5248, label %8088, label %8111

; <label>:8088                                    ; preds = %7978
  %8089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3903, float %8071, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 0
  %8091 = extractvalue %dx.types.ResRet.f32 %8089, 1
  %8092 = extractvalue %dx.types.ResRet.f32 %8089, 2
  %8093 = fadd fast float %8090, -5.000000e-01
  %8094 = fadd fast float %8091, -5.000000e-01
  %8095 = fadd fast float %8092, -5.000000e-01
  %8096 = fmul fast float %5100, 4.000000e+00
  %8097 = fmul fast float %8096, %8079
  %8098 = fmul fast float %8097, %8093
  %8099 = fmul fast float %5101, 4.000000e+00
  %8100 = fmul fast float %8099, %8080
  %8101 = fmul fast float %8100, %8094
  %8102 = fmul fast float %5109, 4.000000e+00
  %8103 = fmul fast float %8102, %8081
  %8104 = fmul fast float %8103, %8095
  %8105 = fadd fast float %8098, %8085
  %8106 = fadd fast float %8101, %8086
  %8107 = fadd fast float %8104, %8087
  %8108 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8109 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8110 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  br label %8111

; <label>:8111                                    ; preds = %8088, %7978
  %8112 = phi float [ %8108, %8088 ], [ %8085, %7978 ]
  %8113 = phi float [ %8109, %8088 ], [ %8086, %7978 ]
  %8114 = phi float [ %8110, %8088 ], [ %8087, %7978 ]
  %8115 = fmul fast float %8006, 9.843750e-01
  %8116 = fadd fast float %8115, 7.812500e-03
  %8117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8116, float %5238, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8118 = extractvalue %dx.types.ResRet.f32 %8117, 2
  %8119 = extractvalue %dx.types.ResRet.f32 %8117, 3
  %8120 = fmul fast float %8118, %5100
  %8121 = fmul fast float %8118, %5101
  %8122 = fmul fast float %8118, %5109
  %8123 = fadd fast float %8120, %8119
  %8124 = fadd fast float %8121, %8119
  %8125 = fadd fast float %8122, %8119
  br i1 %5248, label %8126, label %8149

; <label>:8126                                    ; preds = %8111
  %8127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3903, float %8006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8128 = extractvalue %dx.types.ResRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.ResRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.ResRet.f32 %8127, 2
  %8131 = fadd fast float %8128, -5.000000e-01
  %8132 = fadd fast float %8129, -5.000000e-01
  %8133 = fadd fast float %8130, -5.000000e-01
  %8134 = fmul fast float %5100, 4.000000e+00
  %8135 = fmul fast float %8134, %8079
  %8136 = fmul fast float %8135, %8131
  %8137 = fmul fast float %5101, 4.000000e+00
  %8138 = fmul fast float %8137, %8080
  %8139 = fmul fast float %8138, %8132
  %8140 = fmul fast float %5109, 4.000000e+00
  %8141 = fmul fast float %8140, %8081
  %8142 = fmul fast float %8141, %8133
  %8143 = fadd fast float %8136, %8123
  %8144 = fadd fast float %8139, %8124
  %8145 = fadd fast float %8142, %8125
  %8146 = call float @dx.op.unary.f32(i32 7, float %8143)  ; Saturate(value)
  %8147 = call float @dx.op.unary.f32(i32 7, float %8144)  ; Saturate(value)
  %8148 = call float @dx.op.unary.f32(i32 7, float %8145)  ; Saturate(value)
  br label %8149

; <label>:8149                                    ; preds = %8126, %8111
  %8150 = phi float [ %8146, %8126 ], [ %8123, %8111 ]
  %8151 = phi float [ %8147, %8126 ], [ %8124, %8111 ]
  %8152 = phi float [ %8148, %8126 ], [ %8125, %8111 ]
  %8153 = call float @dx.op.binary.f32(i32 35, float %8151, float %8152)  ; FMax(a,b)
  %8154 = call float @dx.op.binary.f32(i32 35, float %8150, float %8153)  ; FMax(a,b)
  %8155 = fsub fast float 1.000000e+00, %8154
  %8156 = fmul fast float %8112, %8070
  %8157 = fmul fast float %8113, %8070
  %8158 = fmul fast float %8114, %8070
  %8159 = fsub fast float 1.000000e+00, %8007
  %8160 = bitcast float %8159 to i32
  %8161 = sitofp i32 %8160 to float
  %8162 = fmul fast float %8161, 5.000000e+00
  %8163 = fadd fast float %8162, 0xC1EFBF8940000000
  %8164 = fptosi float %8163 to i32
  %8165 = bitcast i32 %8164 to float
  %8166 = fmul fast float %8165, %3904
  %8167 = fmul fast float %8155, %8166
  %8168 = fmul fast float %8167, %5790
  %8169 = fmul fast float %8167, %5791
  %8170 = fmul fast float %8167, %5792
  %8171 = fadd fast float %8168, %8156
  %8172 = fadd fast float %8169, %8157
  %8173 = fadd fast float %8170, %8158
  %8174 = fmul fast float %7995, %3900
  %8175 = fmul fast float %8174, %8013
  %8176 = fmul fast float %8175, %8155
  %8177 = fmul fast float %7996, %3900
  %8178 = fmul fast float %8177, %8013
  %8179 = fmul fast float %8178, %8155
  %8180 = fmul fast float %7997, %3900
  %8181 = fmul fast float %8180, %8013
  %8182 = fmul fast float %8181, %8155
  %8183 = fadd fast float %8176, %7628
  %8184 = fadd fast float %8179, %7629
  %8185 = fadd fast float %8182, %7630
  %8186 = fmul fast float %8175, %8171
  %8187 = fmul fast float %8178, %8172
  %8188 = fmul fast float %8181, %8173
  %8189 = fadd fast float %8186, %7625
  %8190 = fadd fast float %8187, %7626
  %8191 = fadd fast float %8188, %7627
  br label %7757

; <label>:8192                                    ; preds = %7757
  br label %8193

; <label>:8193                                    ; preds = %8192, %7591
  %8194 = phi float [ %7593, %7591 ], [ %7758, %8192 ]
  %8195 = phi float [ %7594, %7591 ], [ %7759, %8192 ]
  %8196 = phi float [ %7595, %7591 ], [ %7760, %8192 ]
  %8197 = phi float [ %7596, %7591 ], [ %7761, %8192 ]
  %8198 = phi float [ %7597, %7591 ], [ %7762, %8192 ]
  %8199 = phi float [ %7598, %7591 ], [ %7763, %8192 ]
  %8200 = add i32 %7592, 1
  %8201 = icmp ugt i32 %8200, %7588
  br i1 %8201, label %8202, label %7591

; <label>:8202                                    ; preds = %8193
  br label %8203

; <label>:8203                                    ; preds = %8202, %7541, %7531
  %8204 = phi float [ %7532, %7531 ], [ %7532, %7541 ], [ %8194, %8202 ]
  %8205 = phi float [ %7533, %7531 ], [ %7533, %7541 ], [ %8195, %8202 ]
  %8206 = phi float [ %7534, %7531 ], [ %7534, %7541 ], [ %8196, %8202 ]
  %8207 = phi float [ %7535, %7531 ], [ %7535, %7541 ], [ %8197, %8202 ]
  %8208 = phi float [ %7536, %7531 ], [ %7536, %7541 ], [ %8198, %8202 ]
  %8209 = phi float [ %7537, %7531 ], [ %7537, %7541 ], [ %8199, %8202 ]
  %8210 = fmul fast float %3900, %3900
  %8211 = fsub fast float 1.000000e+00, %8210
  %8212 = call float @dx.op.dot3.f32(i32 55, float %8211, float %8211, float %8211, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8213 = fsub fast float 1.000000e+00, %8212
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %8216 = fmul fast float %8215, %5796
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 3
  %8219 = fsub fast float 1.000000e+00, %3907
  %8220 = call float @dx.op.unary.f32(i32 7, float %8219)  ; Saturate(value)
  %8221 = fadd fast float %8209, %3906
  %8222 = fmul fast float %8221, %3907
  %8223 = fmul fast float %8220, %8218
  %8224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8225 = extractvalue %dx.types.CBufRet.f32 %8224, 3
  %8226 = fmul fast float %8207, %5097
  %8227 = fmul fast float %8208, %5098
  %8228 = fmul fast float %8209, %5099
  %8229 = fcmp fast ogt float %101, %223
  %8230 = and i1 %8229, %4310
  %8231 = or i1 %4316, %8230
  %8232 = icmp eq i32 %4309, 2
  %8233 = fcmp fast ole float %101, %223
  %8234 = and i1 %8233, %8232
  %8235 = or i1 %8234, %8231
  br i1 %8230, label %8236, label %8493

; <label>:8236                                    ; preds = %8203
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 3
  %8240 = fmul fast float %8238, %114
  %8241 = fmul fast float %8239, %115
  %8242 = call float @dx.op.unary.f32(i32 7, float %8240)  ; Saturate(value)
  %8243 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8242, float %8243, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8245 = extractvalue %dx.types.ResRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.ResRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.ResRet.f32 %8244, 2
  %8248 = extractvalue %dx.types.ResRet.f32 %8244, 3
  %8249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8242, float %8243, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8250 = extractvalue %dx.types.ResRet.f32 %8249, 0
  %8251 = extractvalue %dx.types.ResRet.f32 %8249, 1
  %8252 = extractvalue %dx.types.ResRet.f32 %8249, 2
  %8253 = extractvalue %dx.types.ResRet.f32 %8249, 3
  %8254 = call float @dx.op.binary.f32(i32 35, float %8246, float %8247)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float %8245, float %8254)  ; FMax(a,b)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8255, float %8248)  ; FMax(a,b)
  %8257 = call float @dx.op.binary.f32(i32 36, float %8251, float %8252)  ; FMin(a,b)
  %8258 = call float @dx.op.binary.f32(i32 36, float %8250, float %8257)  ; FMin(a,b)
  %8259 = call float @dx.op.binary.f32(i32 36, float %8258, float %8253)  ; FMin(a,b)
  %8260 = fmul fast float %8256, 2.550000e+02
  %8261 = fadd fast float %8260, 0x3F70101020000000
  %8262 = fptoui float %8261 to i32
  %8263 = fmul fast float %8259, 2.550000e+02
  %8264 = fadd fast float %8263, 0x3F70101020000000
  %8265 = fptoui float %8264 to i32
  %8266 = icmp ult i32 %8262, %8265
  br i1 %8266, label %8267, label %8435

; <label>:8267                                    ; preds = %8236
  %8268 = fcmp fast ogt float %100, 9.843750e-01
  %8269 = fadd fast float %101, -4.000000e+00
  %8270 = select i1 %8268, float -4.000000e+00, float %8269
  %8271 = call float @dx.op.binary.f32(i32 35, float %8270, float 0.000000e+00)  ; FMax(a,b)
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = fadd fast float %8273, %8271
  %8275 = extractvalue %dx.types.CBufRet.f32 %8272, 2
  %8276 = fmul fast float %8274, %8275
  %8277 = call float @dx.op.unary.f32(i32 23, float %8276)  ; Log(value)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8272, 3
  %8279 = fmul fast float %8278, %8277
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8282 = fmul fast float %8279, %8281
  %8283 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8284 = uitofp i32 %8262 to float
  %8285 = uitofp i32 %8265 to float
  %8286 = fadd fast float %8284, 5.000000e-01
  %8287 = fadd fast float %8285, 5.000000e-01
  %8288 = fmul fast float %8281, %8286
  %8289 = fmul fast float %8281, %8287
  %8290 = fadd fast float %8288, 0x3F0FFB4800000000
  %8291 = fadd fast float %8289, 0xBF0FFB4800000000
  %8292 = call float @dx.op.binary.f32(i32 35, float %8283, float %8290)  ; FMax(a,b)
  %8293 = call float @dx.op.binary.f32(i32 36, float %8292, float %8291)  ; FMin(a,b)
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 1
  %8296 = extractvalue %dx.types.CBufRet.f32 %8294, 2
  %8297 = extractvalue %dx.types.CBufRet.f32 %8294, 0
  %8298 = fmul fast float %8295, %8293
  %8299 = fadd fast float %8297, %8298
  %8300 = fadd fast float %8297, %8296
  %8301 = fsub fast float %8295, %8296
  %8302 = fadd fast float %8301, %8297
  %8303 = call float @dx.op.binary.f32(i32 35, float %8299, float %8300)  ; FMax(a,b)
  %8304 = call float @dx.op.binary.f32(i32 36, float %8303, float %8302)  ; FMin(a,b)
  %8305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8242, float %8243, float %8304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8306 = extractvalue %dx.types.ResRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.ResRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.ResRet.f32 %8305, 2
  %8309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.i32 %8309, 0
  %8311 = extractvalue %dx.types.CBufRet.i32 %8309, 1
  %8312 = uitofp i32 %8310 to float
  %8313 = uitofp i32 %8311 to float
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 0
  %8316 = extractvalue %dx.types.CBufRet.f32 %8314, 1
  %8317 = fmul fast float %8312, %8242
  %8318 = fmul fast float %8313, %8243
  %8319 = fadd fast float %8317, -5.000000e-01
  %8320 = fadd fast float %8318, -5.000000e-01
  %8321 = call float @dx.op.unary.f32(i32 22, float %8319)  ; Frc(value)
  %8322 = call float @dx.op.unary.f32(i32 22, float %8320)  ; Frc(value)
  %8323 = fmul fast float %8321, %8321
  %8324 = fmul fast float %8323, %8321
  %8325 = fsub fast float 3.000000e+00, %8321
  %8326 = fmul fast float %8323, %8325
  %8327 = fmul fast float %8321, 3.000000e+00
  %8328 = fmul fast float %8324, 3.000000e+00
  %8329 = fmul fast float %8323, 6.000000e+00
  %8330 = fsub fast float %8328, %8329
  %8331 = fadd fast float %8330, 4.000000e+00
  %8332 = fmul fast float %8331, 0x3FC5555560000000
  %8333 = fmul fast float %8324, -3.000000e+00
  %8334 = fadd fast float %8323, %8321
  %8335 = fmul fast float %8334, 3.000000e+00
  %8336 = fadd fast float %8333, 1.000000e+00
  %8337 = fadd fast float %8336, %8335
  %8338 = fmul fast float %8324, 0x3FC5555560000000
  %8339 = fmul fast float %8322, %8322
  %8340 = fmul fast float %8339, %8322
  %8341 = fsub fast float 3.000000e+00, %8322
  %8342 = fmul fast float %8339, %8341
  %8343 = fmul fast float %8322, 3.000000e+00
  %8344 = fmul fast float %8340, 3.000000e+00
  %8345 = fmul fast float %8339, 6.000000e+00
  %8346 = fsub fast float %8344, %8345
  %8347 = fadd fast float %8346, 4.000000e+00
  %8348 = fmul fast float %8347, 0x3FC5555560000000
  %8349 = fmul fast float %8340, -3.000000e+00
  %8350 = fadd fast float %8339, %8322
  %8351 = fmul fast float %8350, 3.000000e+00
  %8352 = fadd fast float %8349, 1.000000e+00
  %8353 = fadd fast float %8352, %8351
  %8354 = fmul fast float %8340, 0x3FC5555560000000
  %8355 = fadd fast float %8321, 1.000000e+00
  %8356 = fsub fast float 1.000000e+00, %8327
  %8357 = fadd fast float %8356, %8326
  %8358 = fadd fast float %8357, %8331
  %8359 = fmul fast float %8358, 0x3FC5555560000000
  %8360 = fdiv fast float %8332, %8359
  %8361 = fsub fast float %8355, %8360
  %8362 = fsub fast float 1.000000e+00, %8321
  %8363 = fadd fast float %8337, %8324
  %8364 = fmul fast float %8363, 0x3FC5555560000000
  %8365 = fdiv fast float %8338, %8364
  %8366 = fadd fast float %8362, %8365
  %8367 = fadd fast float %8322, 1.000000e+00
  %8368 = fsub fast float 1.000000e+00, %8343
  %8369 = fadd fast float %8368, %8342
  %8370 = fadd fast float %8369, %8347
  %8371 = fmul fast float %8370, 0x3FC5555560000000
  %8372 = fdiv fast float %8348, %8371
  %8373 = fsub fast float %8367, %8372
  %8374 = fsub fast float 1.000000e+00, %8322
  %8375 = fadd fast float %8353, %8340
  %8376 = fmul fast float %8375, 0x3FC5555560000000
  %8377 = fdiv fast float %8354, %8376
  %8378 = fadd fast float %8377, %8374
  %8379 = fmul fast float %8361, %8315
  %8380 = fsub fast float %8242, %8379
  %8381 = fmul fast float %8366, %8315
  %8382 = fadd fast float %8381, %8242
  %8383 = fmul fast float %8378, %8316
  %8384 = fadd fast float %8383, %8243
  %8385 = fmul fast float %8373, %8316
  %8386 = fsub fast float %8243, %8385
  %8387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8380, float %8386, float %8304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8388 = extractvalue %dx.types.ResRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.ResRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.ResRet.f32 %8387, 2
  %8391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8382, float %8386, float %8304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8392 = extractvalue %dx.types.ResRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.ResRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.ResRet.f32 %8391, 2
  %8395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8380, float %8384, float %8304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8382, float %8384, float %8304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8400 = extractvalue %dx.types.ResRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.ResRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.ResRet.f32 %8399, 2
  %8403 = fsub fast float %8396, %8388
  %8404 = fsub fast float %8397, %8389
  %8405 = fsub fast float %8398, %8390
  %8406 = fmul fast float %8403, %8376
  %8407 = fmul fast float %8404, %8376
  %8408 = fmul fast float %8405, %8376
  %8409 = fadd fast float %8406, %8388
  %8410 = fadd fast float %8407, %8389
  %8411 = fadd fast float %8408, %8390
  %8412 = fsub fast float %8400, %8392
  %8413 = fsub fast float %8401, %8393
  %8414 = fsub fast float %8402, %8394
  %8415 = fmul fast float %8412, %8376
  %8416 = fmul fast float %8413, %8376
  %8417 = fmul fast float %8414, %8376
  %8418 = fsub fast float %8392, %8409
  %8419 = fadd fast float %8418, %8415
  %8420 = fsub fast float %8393, %8410
  %8421 = fadd fast float %8420, %8416
  %8422 = fsub fast float %8394, %8411
  %8423 = fadd fast float %8422, %8417
  %8424 = fmul fast float %8419, %8364
  %8425 = fmul fast float %8421, %8364
  %8426 = fmul fast float %8423, %8364
  %8427 = fadd fast float %8424, %8409
  %8428 = fadd fast float %8425, %8410
  %8429 = fadd fast float %8426, %8411
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8432 = fmul fast float %8427, %8431
  %8433 = fmul fast float %8428, %8431
  %8434 = fmul fast float %8429, %8431
  br label %8435

; <label>:8435                                    ; preds = %8267, %8236
  %8436 = phi float [ %8306, %8267 ], [ 1.000000e+00, %8236 ]
  %8437 = phi float [ %8307, %8267 ], [ 1.000000e+00, %8236 ]
  %8438 = phi float [ %8308, %8267 ], [ 1.000000e+00, %8236 ]
  %8439 = phi float [ %8432, %8267 ], [ 0.000000e+00, %8236 ]
  %8440 = phi float [ %8433, %8267 ], [ 0.000000e+00, %8236 ]
  %8441 = phi float [ %8434, %8267 ], [ 0.000000e+00, %8236 ]
  %8442 = fmul fast float %8439, %8213
  %8443 = fmul fast float %8440, %8213
  %8444 = fmul fast float %8441, %8213
  %8445 = call float @dx.op.dot3.f32(i32 55, float %8436, float %8437, float %8438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8446 = call float @dx.op.dot3.f32(i32 55, float %8442, float %8443, float %8444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8447 = select i1 %260, float %8445, float %8436
  %8448 = select i1 %260, float %8445, float %8437
  %8449 = select i1 %260, float 1.000000e+00, float %8438
  %8450 = select i1 %260, float %8446, float %8442
  %8451 = select i1 %260, float 0.000000e+00, float %8443
  %8452 = select i1 %260, float 0.000000e+00, float %8444
  %8453 = fmul fast float %8447, %8226
  %8454 = fmul fast float %8448, %8227
  %8455 = fmul fast float %8449, %8228
  %8456 = fadd fast float %8453, %8450
  %8457 = fadd fast float %8454, %8451
  %8458 = fadd fast float %8452, %8455
  %8459 = fmul fast float %8447, %8204
  %8460 = fmul fast float %8448, %8205
  %8461 = fmul fast float %8449, %8206
  %8462 = fmul fast float %150, %8238
  %8463 = fmul fast float %152, %8239
  %8464 = fsub fast float 1.000000e+00, %8462
  %8465 = fsub fast float 1.000000e+00, %8463
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8470 = fmul fast float %8464, %8467
  %8471 = fmul fast float %8464, %8468
  %8472 = fmul fast float %8464, %8469
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = fmul fast float %8465, %8474
  %8478 = fmul fast float %8465, %8475
  %8479 = fmul fast float %8465, %8476
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 0
  %8482 = extractvalue %dx.types.CBufRet.f32 %8480, 1
  %8483 = extractvalue %dx.types.CBufRet.f32 %8480, 2
  %8484 = fadd fast float %8477, %8481
  %8485 = fadd fast float %8484, %8470
  %8486 = fadd fast float %8478, %8482
  %8487 = fadd fast float %8486, %8471
  %8488 = fadd fast float %8479, %8483
  %8489 = fadd fast float %8488, %8472
  %8490 = fmul fast float %8485, %223
  %8491 = fmul fast float %8487, %223
  %8492 = fmul fast float %8489, %223
  br label %8493

; <label>:8493                                    ; preds = %8435, %8203
  %8494 = phi float [ %8490, %8435 ], [ %201, %8203 ]
  %8495 = phi float [ %8491, %8435 ], [ %202, %8203 ]
  %8496 = phi float [ %8492, %8435 ], [ %203, %8203 ]
  %8497 = phi float [ %223, %8435 ], [ %101, %8203 ]
  %8498 = phi float [ %8456, %8435 ], [ %8226, %8203 ]
  %8499 = phi float [ %8457, %8435 ], [ %8227, %8203 ]
  %8500 = phi float [ %8458, %8435 ], [ %8228, %8203 ]
  %8501 = phi float [ %8459, %8435 ], [ %8204, %8203 ]
  %8502 = phi float [ %8460, %8435 ], [ %8205, %8203 ]
  %8503 = phi float [ %8461, %8435 ], [ %8206, %8203 ]
  %8504 = phi float [ %8436, %8435 ], [ 1.000000e+00, %8203 ]
  br i1 %8235, label %9659, label %8505

; <label>:8505                                    ; preds = %8493
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.CBufRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.CBufRet.f32 %8506, 2
  %8510 = extractvalue %dx.types.CBufRet.f32 %8506, 3
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8520 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.CBufRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.CBufRet.f32 %8521, 2
  %8525 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 3
  %8528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8529 = extractvalue %dx.types.CBufRet.f32 %8528, 3
  %8530 = extractvalue %dx.types.CBufRet.f32 %8528, 0
  %8531 = extractvalue %dx.types.CBufRet.f32 %8528, 1
  %8532 = extractvalue %dx.types.CBufRet.f32 %8528, 2
  %8533 = fcmp fast olt float %8532, -5.000000e-01
  %8534 = call float @dx.op.dot3.f32(i32 55, float %8494, float %8495, float %8496, float %8494, float %8495, float %8496)  ; Dot3(ax,ay,az,bx,by,bz)
  %8535 = call float @dx.op.unary.f32(i32 25, float %8534)  ; Rsqrt(value)
  %8536 = fmul fast float %8535, %8534
  %8537 = fmul fast float %8535, %8494
  %8538 = fmul fast float %8535, %8495
  %8539 = fmul fast float %8535, %8496
  %8540 = fadd fast float %8536, %8510
  %8541 = call float @dx.op.dot3.f32(i32 55, float %8537, float %8538, float %8539, float %8507, float %8508, float %8509)  ; Dot3(ax,ay,az,bx,by,bz)
  %8542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.i32 %8542, 1
  %8544 = and i32 %8543, 1
  %8545 = icmp ne i32 %8544, 0
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8548 = fcmp fast ogt float %8547, 0.000000e+00
  %8549 = and i1 %8545, %8548
  br i1 %8549, label %8550, label %8956, !dx.controlflow.hints !136

; <label>:8550                                    ; preds = %8505
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 3
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8556 = extractvalue %dx.types.CBufRet.f32 %8555, 2
  %8557 = fsub fast float %8554, %8556
  %8558 = and i32 %8543, 2
  %8559 = extractvalue %dx.types.CBufRet.i32 %8542, 0
  %8560 = call i32 @dx.op.binary.i32(i32 40, i32 %8559, i32 3)  ; UMin(a,b)
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8563 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8564 = extractvalue %dx.types.CBufRet.f32 %8555, 0
  %8565 = extractvalue %dx.types.CBufRet.f32 %8555, 1
  %8566 = fsub fast float %8562, %8564
  %8567 = fsub fast float %8563, %8565
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = fcmp fast ogt float %8569, 0.000000e+00
  %8571 = fsub fast float -0.000000e+00, %8566
  %8572 = fsub fast float -0.000000e+00, %8567
  %8573 = call float @dx.op.dot2.f32(i32 54, float %8537, float %8538, float %8537, float %8538)  ; Dot2(ax,ay,bx,by)
  %8574 = call float @dx.op.dot2.f32(i32 54, float %8537, float %8538, float %8571, float %8572)  ; Dot2(ax,ay,bx,by)
  %8575 = fmul fast float %8574, 2.000000e+00
  %8576 = call float @dx.op.dot2.f32(i32 54, float %8571, float %8572, float %8571, float %8572)  ; Dot2(ax,ay,bx,by)
  %8577 = fmul fast float %8569, %8569
  %8578 = fsub fast float %8576, %8577
  %8579 = fmul fast float %8575, %8575
  %8580 = fmul fast float %8573, 4.000000e+00
  %8581 = fmul fast float %8580, %8578
  %8582 = fsub fast float %8579, %8581
  %8583 = fcmp fast ogt float %8582, 0.000000e+00
  br i1 %8583, label %8584, label %8599

; <label>:8584                                    ; preds = %8550
  %8585 = fcmp fast ogt float %8575, 0.000000e+00
  %8586 = call float @dx.op.unary.f32(i32 24, float %8582)  ; Sqrt(value)
  %8587 = fsub fast float -0.000000e+00, %8586
  %8588 = select i1 %8585, float %8586, float %8587
  %8589 = fadd fast float %8588, %8575
  %8590 = fmul float %8589, -5.000000e-01
  %8591 = fdiv fast float %8590, %8573
  %8592 = call float @dx.op.binary.f32(i32 35, float %8591, float 0.000000e+00)  ; FMax(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8536, float %8592)  ; FMin(a,b)
  %8594 = fdiv fast float %8578, %8590
  %8595 = call float @dx.op.binary.f32(i32 35, float %8594, float 0.000000e+00)  ; FMax(a,b)
  %8596 = call float @dx.op.binary.f32(i32 36, float %8536, float %8595)  ; FMin(a,b)
  %8597 = call float @dx.op.binary.f32(i32 36, float %8593, float %8596)  ; FMin(a,b)
  %8598 = call float @dx.op.binary.f32(i32 35, float %8593, float %8596)  ; FMax(a,b)
  br label %8599

; <label>:8599                                    ; preds = %8584, %8550
  %8600 = phi float [ %8598, %8584 ], [ -1.000000e+00, %8550 ]
  %8601 = phi float [ %8597, %8584 ], [ -1.000000e+00, %8550 ]
  %8602 = phi i1 [ true, %8584 ], [ false, %8550 ]
  %8603 = and i1 %8570, %8602
  br i1 %8603, label %8604, label %8606

; <label>:8604                                    ; preds = %8599
  %8605 = fcmp fast oeq float %8601, %8600
  br i1 %8605, label %8909, label %8607

; <label>:8606                                    ; preds = %8599
  br i1 %8570, label %8909, label %8607

; <label>:8607                                    ; preds = %8606, %8604
  %8608 = phi float [ %8536, %8606 ], [ %8600, %8604 ]
  %8609 = phi float [ 0.000000e+00, %8606 ], [ %8601, %8604 ]
  %8610 = icmp ne i32 %8558, 0
  %8611 = fmul fast float %8608, %8539
  %8612 = fadd fast float %8611, %8552
  %8613 = fmul fast float %8612, %8608
  %8614 = select i1 %8610, float 0.000000e+00, float %8613
  %8615 = fcmp fast oeq float %8539, 0.000000e+00
  %8616 = fdiv fast float %8557, %8539
  %8617 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8616)  ; FMax(a,b)
  %8618 = select i1 %8615, float %8608, float %8617
  %8619 = call float @dx.op.binary.f32(i32 36, float %8608, float %8618)  ; FMin(a,b)
  %8620 = fcmp fast ogt float %8539, 0.000000e+00
  %8621 = fcmp fast olt float %8557, 0.000000e+00
  br i1 %8620, label %8622, label %8679

; <label>:8622                                    ; preds = %8607
  %8623 = icmp eq i32 %8558, 0
  br i1 %8621, label %8624, label %8668

; <label>:8624                                    ; preds = %8622
  %8625 = select i1 %8623, float %8608, float 0.000000e+00
  %8626 = fsub fast float -0.000000e+00, %8625
  %8627 = call float @dx.op.unary.f32(i32 6, float %8626)  ; FAbs(value)
  %8628 = fmul fast float %8625, %8539
  %8629 = fadd fast float %8628, %8552
  %8630 = fmul fast float %8627, %8629
  %8631 = fsub fast float %8614, %8630
  %8632 = fsub fast float %8608, %8627
  %8633 = select i1 %8623, float %8632, float 0.000000e+00
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.CBufRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8642 = extractvalue %dx.types.CBufRet.f32 %8638, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8645 = call float @dx.op.binary.f32(i32 36, float %8631, float %8644)  ; FMin(a,b)
  %8646 = fmul fast float %8642, %8633
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = fsub fast float %8639, %8635
  %8649 = fsub fast float %8640, %8636
  %8650 = fsub fast float %8641, %8637
  %8651 = fmul fast float %8647, %8648
  %8652 = fmul fast float %8647, %8649
  %8653 = fmul fast float %8647, %8650
  %8654 = fadd fast float %8651, %8635
  %8655 = fadd fast float %8652, %8636
  %8656 = fadd fast float %8653, %8637
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = fadd fast float %8659, %8658
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8663 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8664 = fadd fast float %8663, %8662
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = fmul fast float %8661, %8645
  %8667 = fmul fast float %8666, %8665
  br label %8909

; <label>:8668                                    ; preds = %8622
  br i1 %8623, label %8669, label %8690

; <label>:8669                                    ; preds = %8668
  %8670 = call float @dx.op.binary.f32(i32 36, float %8619, float %8609)  ; FMin(a,b)
  %8671 = fsub fast float %8619, %8670
  %8672 = fsub fast float %8671, %8608
  %8673 = call float @dx.op.unary.f32(i32 6, float %8672)  ; FAbs(value)
  %8674 = fadd fast float %8671, %8608
  %8675 = fmul fast float %8674, %8539
  %8676 = fadd fast float %8675, %8552
  %8677 = fmul fast float %8676, %8673
  %8678 = fsub fast float %8614, %8677
  br label %8690

; <label>:8679                                    ; preds = %8607
  br i1 %8621, label %8680, label %8690

; <label>:8680                                    ; preds = %8679
  %8681 = call float @dx.op.binary.f32(i32 35, float %8609, float %8619)  ; FMax(a,b)
  %8682 = icmp eq i32 %8558, 0
  %8683 = select i1 %8682, float %8619, float 0.000000e+00
  %8684 = fsub fast float -0.000000e+00, %8683
  %8685 = call float @dx.op.unary.f32(i32 6, float %8684)  ; FAbs(value)
  %8686 = fmul fast float %8683, %8539
  %8687 = fadd fast float %8686, %8552
  %8688 = fmul fast float %8685, %8687
  %8689 = fsub fast float %8614, %8688
  br label %8690

; <label>:8690                                    ; preds = %8680, %8679, %8669, %8668
  %8691 = phi float [ %8609, %8668 ], [ %8609, %8669 ], [ %8681, %8680 ], [ %8609, %8679 ]
  %8692 = phi float [ 0.000000e+00, %8668 ], [ %8673, %8669 ], [ %8685, %8680 ], [ 0.000000e+00, %8679 ]
  %8693 = phi float [ %8614, %8668 ], [ %8678, %8669 ], [ %8689, %8680 ], [ %8614, %8679 ]
  %8694 = phi float [ %8619, %8668 ], [ %8619, %8669 ], [ %8608, %8680 ], [ %8608, %8679 ]
  %8695 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8695, align 4, !tbaa !122, !noalias !137
  %8696 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8696, align 4, !tbaa !122, !noalias !137
  %8697 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8697, align 4, !tbaa !122, !noalias !137
  %8698 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8698, align 4, !tbaa !122, !noalias !137
  %8699 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8699, align 4, !tbaa !122, !noalias !137
  %8700 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8700, align 4, !tbaa !122, !noalias !137
  %8701 = icmp sgt i32 %8560, 0
  br i1 %8701, label %8702, label %8763

; <label>:8702                                    ; preds = %8690
  br label %8703

; <label>:8703                                    ; preds = %8752, %8702
  %8704 = phi i32 [ %8753, %8752 ], [ 0, %8702 ]
  %8705 = phi i32 [ %8754, %8752 ], [ 0, %8702 ]
  %8706 = add nuw i32 %8705, 171
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8706)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.CBufRet.f32 %8707, 1
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 0
  %8712 = extractvalue %dx.types.CBufRet.f32 %8710, 1
  %8713 = fsub fast float %8708, %8711
  %8714 = fsub fast float %8709, %8712
  %8715 = extractvalue %dx.types.CBufRet.f32 %8707, 2
  %8716 = fsub fast float -0.000000e+00, %8713
  %8717 = fsub fast float -0.000000e+00, %8714
  %8718 = call float @dx.op.dot2.f32(i32 54, float %8537, float %8538, float %8716, float %8717)  ; Dot2(ax,ay,bx,by)
  %8719 = fmul fast float %8718, 2.000000e+00
  %8720 = call float @dx.op.dot2.f32(i32 54, float %8716, float %8717, float %8716, float %8717)  ; Dot2(ax,ay,bx,by)
  %8721 = fmul fast float %8715, %8715
  %8722 = fsub fast float %8720, %8721
  %8723 = fmul fast float %8719, %8719
  %8724 = fmul fast float %8580, %8722
  %8725 = fsub fast float %8723, %8724
  %8726 = fcmp fast ogt float %8725, 0.000000e+00
  br i1 %8726, label %8727, label %8742

; <label>:8727                                    ; preds = %8703
  %8728 = fcmp fast ogt float %8719, 0.000000e+00
  %8729 = call float @dx.op.unary.f32(i32 24, float %8725)  ; Sqrt(value)
  %8730 = fsub fast float -0.000000e+00, %8729
  %8731 = select i1 %8728, float %8729, float %8730
  %8732 = fadd fast float %8731, %8719
  %8733 = fmul float %8732, -5.000000e-01
  %8734 = fdiv fast float %8733, %8573
  %8735 = call float @dx.op.binary.f32(i32 35, float %8734, float 0.000000e+00)  ; FMax(a,b)
  %8736 = call float @dx.op.binary.f32(i32 36, float %8608, float %8735)  ; FMin(a,b)
  %8737 = fdiv fast float %8722, %8733
  %8738 = call float @dx.op.binary.f32(i32 35, float %8737, float 0.000000e+00)  ; FMax(a,b)
  %8739 = call float @dx.op.binary.f32(i32 36, float %8608, float %8738)  ; FMin(a,b)
  %8740 = call float @dx.op.binary.f32(i32 36, float %8736, float %8739)  ; FMin(a,b)
  %8741 = call float @dx.op.binary.f32(i32 35, float %8736, float %8739)  ; FMax(a,b)
  br label %8742

; <label>:8742                                    ; preds = %8727, %8703
  %8743 = phi float [ %8741, %8727 ], [ -1.000000e+00, %8703 ]
  %8744 = phi float [ %8740, %8727 ], [ -1.000000e+00, %8703 ]
  %8745 = phi i1 [ true, %8727 ], [ false, %8703 ]
  br i1 %8745, label %8746, label %8752

; <label>:8746                                    ; preds = %8742
  %8747 = call float @dx.op.binary.f32(i32 35, float %8691, float %8744)  ; FMax(a,b)
  %8748 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8705
  store float %8747, float* %8748, align 4, !tbaa !122, !noalias !137
  %8749 = call float @dx.op.binary.f32(i32 35, float %8691, float %8743)  ; FMax(a,b)
  %8750 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8705
  store float %8749, float* %8750, align 4, !tbaa !122, !noalias !137
  %8751 = add nsw i32 %8704, 1
  br label %8752

; <label>:8752                                    ; preds = %8746, %8742
  %8753 = phi i32 [ %8751, %8746 ], [ %8704, %8742 ]
  %8754 = add nuw nsw i32 %8705, 1
  %8755 = icmp eq i32 %8754, %8560
  br i1 %8755, label %8756, label %8703

; <label>:8756                                    ; preds = %8752
  %8757 = load float, float* %8697, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8758 = load float, float* %8696, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8759 = load float, float* %8695, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8760 = load float, float* %8700, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8761 = load float, float* %8699, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8762 = load float, float* %8698, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8763

; <label>:8763                                    ; preds = %8756, %8690
  %8764 = phi float [ -1.000000e+00, %8690 ], [ %8762, %8756 ]
  %8765 = phi float [ -1.000000e+00, %8690 ], [ %8761, %8756 ]
  %8766 = phi float [ -1.000000e+00, %8690 ], [ %8760, %8756 ]
  %8767 = phi float [ -1.000000e+00, %8690 ], [ %8759, %8756 ]
  %8768 = phi float [ -1.000000e+00, %8690 ], [ %8758, %8756 ]
  %8769 = phi float [ -1.000000e+00, %8690 ], [ %8757, %8756 ]
  %8770 = phi i32 [ 0, %8690 ], [ %8753, %8756 ]
  %8771 = call float @dx.op.binary.f32(i32 36, float %8768, float %8769)  ; FMin(a,b)
  %8772 = call float @dx.op.binary.f32(i32 36, float %8767, float %8771)  ; FMin(a,b)
  %8773 = call float @dx.op.binary.f32(i32 35, float %8767, float %8768)  ; FMax(a,b)
  %8774 = call float @dx.op.binary.f32(i32 36, float %8773, float %8769)  ; FMin(a,b)
  %8775 = call float @dx.op.binary.f32(i32 36, float %8767, float %8768)  ; FMin(a,b)
  %8776 = call float @dx.op.binary.f32(i32 35, float %8775, float %8774)  ; FMax(a,b)
  %8777 = call float @dx.op.binary.f32(i32 35, float %8768, float %8769)  ; FMax(a,b)
  %8778 = call float @dx.op.binary.f32(i32 35, float %8767, float %8777)  ; FMax(a,b)
  store float %8772, float* %8695, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8776, float* %8696, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8778, float* %8697, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8779 = call float @dx.op.binary.f32(i32 36, float %8765, float %8766)  ; FMin(a,b)
  %8780 = call float @dx.op.binary.f32(i32 36, float %8764, float %8779)  ; FMin(a,b)
  %8781 = call float @dx.op.binary.f32(i32 35, float %8764, float %8765)  ; FMax(a,b)
  %8782 = call float @dx.op.binary.f32(i32 36, float %8781, float %8766)  ; FMin(a,b)
  %8783 = call float @dx.op.binary.f32(i32 36, float %8764, float %8765)  ; FMin(a,b)
  %8784 = call float @dx.op.binary.f32(i32 35, float %8783, float %8782)  ; FMax(a,b)
  %8785 = call float @dx.op.binary.f32(i32 35, float %8765, float %8766)  ; FMax(a,b)
  %8786 = call float @dx.op.binary.f32(i32 35, float %8764, float %8785)  ; FMax(a,b)
  store float %8780, float* %8698, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8784, float* %8699, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8786, float* %8700, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8787 = sub nsw i32 3, %8770
  %8788 = icmp sgt i32 %8787, 2
  br i1 %8788, label %8789, label %8827

; <label>:8789                                    ; preds = %8763
  %8790 = icmp eq i32 %8558, 0
  %8791 = fsub fast float %8608, %8692
  %8792 = select i1 %8790, float %8791, float %8692
  %8793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8794 = extractvalue %dx.types.CBufRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.CBufRet.f32 %8793, 1
  %8796 = extractvalue %dx.types.CBufRet.f32 %8793, 2
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = extractvalue %dx.types.CBufRet.f32 %8797, 3
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 3
  %8804 = call float @dx.op.binary.f32(i32 36, float %8693, float %8803)  ; FMin(a,b)
  %8805 = fmul fast float %8801, %8792
  %8806 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8807 = fsub fast float %8798, %8794
  %8808 = fsub fast float %8799, %8795
  %8809 = fsub fast float %8800, %8796
  %8810 = fmul fast float %8806, %8807
  %8811 = fmul fast float %8806, %8808
  %8812 = fmul fast float %8806, %8809
  %8813 = fadd fast float %8810, %8794
  %8814 = fadd fast float %8811, %8795
  %8815 = fadd fast float %8812, %8796
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 0
  %8818 = extractvalue %dx.types.CBufRet.f32 %8816, 1
  %8819 = fadd fast float %8818, %8817
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8816, 2
  %8822 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8823 = fadd fast float %8822, %8821
  %8824 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8825 = fmul fast float %8820, %8804
  %8826 = fmul fast float %8825, %8824
  br label %8909

; <label>:8827                                    ; preds = %8763
  %8828 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8787
  %8829 = load float, float* %8828, align 4, !tbaa !122, !noalias !137
  %8830 = fcmp fast olt float %8829, %8694
  %8831 = icmp sgt i32 %8770, 0
  %8832 = and i1 %8831, %8830
  br i1 %8832, label %8833, label %8870

; <label>:8833                                    ; preds = %8827
  br label %8834

; <label>:8834                                    ; preds = %8863, %8833
  %8835 = phi float [ %8864, %8863 ], [ %8692, %8833 ]
  %8836 = phi float [ %8865, %8863 ], [ %8693, %8833 ]
  %8837 = phi float [ %8845, %8863 ], [ %8829, %8833 ]
  %8838 = phi i32 [ %8842, %8863 ], [ %8787, %8833 ]
  %8839 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8838
  %8840 = load float, float* %8839, align 4, !tbaa !122, !noalias !137
  %8841 = icmp slt i32 %8838, 2
  %8842 = add nsw i32 %8838, 1
  %8843 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8842
  %8844 = load float, float* %8843, align 4, !tbaa !122, !noalias !137
  %8845 = select i1 %8841, float %8844, float %8608
  %8846 = call float @dx.op.binary.f32(i32 36, float %8845, float %8840)  ; FMin(a,b)
  %8847 = call float @dx.op.binary.f32(i32 36, float %8694, float %8846)  ; FMin(a,b)
  %8848 = icmp eq i32 %8558, 0
  %8849 = fadd fast float %8847, %8837
  %8850 = fmul fast float %8849, %8539
  %8851 = fadd fast float %8850, %8552
  br i1 %8848, label %8857, label %8852

; <label>:8852                                    ; preds = %8834
  %8853 = fsub fast float %8847, %8837
  %8854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8853)  ; FMax(a,b)
  %8855 = fmul fast float %8854, %8851
  %8856 = fadd fast float %8855, %8836
  br label %8863

; <label>:8857                                    ; preds = %8834
  %8858 = fsub fast float %8837, %8847
  %8859 = call float @dx.op.unary.f32(i32 6, float %8858)  ; FAbs(value)
  %8860 = fadd fast float %8859, %8835
  %8861 = fmul fast float %8859, %8851
  %8862 = fsub fast float %8836, %8861
  br label %8863

; <label>:8863                                    ; preds = %8857, %8852
  %8864 = phi float [ %8854, %8852 ], [ %8860, %8857 ]
  %8865 = phi float [ %8856, %8852 ], [ %8862, %8857 ]
  %8866 = fcmp fast olt float %8845, %8694
  %8867 = icmp slt i32 %8842, 3
  %8868 = and i1 %8867, %8866
  br i1 %8868, label %8834, label %8869

; <label>:8869                                    ; preds = %8863
  br label %8870

; <label>:8870                                    ; preds = %8869, %8827
  %8871 = phi float [ %8692, %8827 ], [ %8864, %8869 ]
  %8872 = phi float [ %8693, %8827 ], [ %8865, %8869 ]
  %8873 = fsub fast float %8608, %8871
  %8874 = select i1 %8610, float %8871, float %8873
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8878 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 0
  %8881 = extractvalue %dx.types.CBufRet.f32 %8879, 1
  %8882 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8883 = extractvalue %dx.types.CBufRet.f32 %8879, 3
  %8884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8885 = extractvalue %dx.types.CBufRet.f32 %8884, 3
  %8886 = call float @dx.op.binary.f32(i32 36, float %8872, float %8885)  ; FMin(a,b)
  %8887 = fmul fast float %8883, %8874
  %8888 = call float @dx.op.unary.f32(i32 7, float %8887)  ; Saturate(value)
  %8889 = fsub fast float %8880, %8876
  %8890 = fsub fast float %8881, %8877
  %8891 = fsub fast float %8882, %8878
  %8892 = fmul fast float %8888, %8889
  %8893 = fmul fast float %8888, %8890
  %8894 = fmul fast float %8888, %8891
  %8895 = fadd fast float %8892, %8876
  %8896 = fadd fast float %8893, %8877
  %8897 = fadd fast float %8894, %8878
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 0
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 1
  %8901 = fadd fast float %8900, %8899
  %8902 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8898, 2
  %8904 = extractvalue %dx.types.CBufRet.f32 %8898, 3
  %8905 = fadd fast float %8904, %8903
  %8906 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  %8907 = fmul fast float %8902, %8886
  %8908 = fmul fast float %8907, %8906
  br label %8909

; <label>:8909                                    ; preds = %8870, %8789, %8624, %8606, %8604
  %8910 = phi float [ %8633, %8624 ], [ %8792, %8789 ], [ %8874, %8870 ], [ 0.000000e+00, %8604 ], [ 0.000000e+00, %8606 ]
  %8911 = phi float [ %8667, %8624 ], [ %8826, %8789 ], [ %8908, %8870 ], [ 0.000000e+00, %8604 ], [ 0.000000e+00, %8606 ]
  %8912 = phi float [ %8654, %8624 ], [ %8813, %8789 ], [ %8895, %8870 ], [ 0.000000e+00, %8604 ], [ 0.000000e+00, %8606 ]
  %8913 = phi float [ %8655, %8624 ], [ %8814, %8789 ], [ %8896, %8870 ], [ 0.000000e+00, %8604 ], [ 0.000000e+00, %8606 ]
  %8914 = phi float [ %8656, %8624 ], [ %8815, %8789 ], [ %8897, %8870 ], [ 0.000000e+00, %8604 ], [ 0.000000e+00, %8606 ]
  %8915 = fmul fast float %8547, %8911
  %8916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.f32 %8916, 2
  %8918 = fsub fast float %8554, %8917
  %8919 = fcmp fast olt float %8915, -2.000000e+01
  %8920 = call float @dx.op.unary.f32(i32 21, float %8915)  ; Exp(value)
  %8921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.f32 %8921, 2
  %8923 = extractvalue %dx.types.CBufRet.f32 %8921, 3
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8926 = fmul fast float %8923, %8918
  %8927 = call float @dx.op.unary.f32(i32 7, float %8926)  ; Saturate(value)
  %8928 = fsub fast float 1.000000e+00, %8927
  %8929 = fmul fast float %8539, 5.000000e-01
  %8930 = fadd fast float %8929, 5.000000e-01
  %8931 = call float @dx.op.unary.f32(i32 7, float %8930)  ; Saturate(value)
  %8932 = fsub fast float 1.000000e+00, %8931
  %8933 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8928)  ; FMax(a,b)
  %8934 = fdiv fast float %8932, %8933
  %8935 = fsub fast float %8918, %8496
  %8936 = call float @dx.op.unary.f32(i32 6, float %8935)  ; FAbs(value)
  %8937 = fmul fast float %8936, %8922
  %8938 = call float @dx.op.unary.f32(i32 7, float %8934)  ; Saturate(value)
  %8939 = fsub fast float 1.000000e+00, %8937
  %8940 = fmul fast float %8939, %8938
  %8941 = fadd fast float %8940, %8937
  %8942 = fmul fast float %8925, %8918
  %8943 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8944 = fsub fast float 1.000000e+00, %8941
  %8945 = fmul fast float %8944, %8943
  %8946 = fadd fast float %8945, %8941
  %8947 = call float @dx.op.unary.f32(i32 7, float %8946)  ; Saturate(value)
  %8948 = fadd fast float %8920, -1.000000e+00
  %8949 = select i1 %8919, float -1.000000e+00, float %8948
  %8950 = fmul fast float %8947, %8949
  %8951 = fadd fast float %8950, 1.000000e+00
  %8952 = fsub fast float -0.000000e+00, %8950
  %8953 = fmul fast float %8912, %8952
  %8954 = fmul fast float %8913, %8952
  %8955 = fmul fast float %8914, %8952
  br label %8956

; <label>:8956                                    ; preds = %8909, %8505
  %8957 = phi float [ %8910, %8909 ], [ 0.000000e+00, %8505 ]
  %8958 = phi float [ %8951, %8909 ], [ 1.000000e+00, %8505 ]
  %8959 = phi float [ %8953, %8909 ], [ 0.000000e+00, %8505 ]
  %8960 = phi float [ %8954, %8909 ], [ 0.000000e+00, %8505 ]
  %8961 = phi float [ %8955, %8909 ], [ 0.000000e+00, %8505 ]
  %8962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8963 = extractvalue %dx.types.CBufRet.f32 %8962, 1
  %8964 = fsub fast float 1.000000e+00, %8958
  %8965 = fmul fast float %8964, %8540
  %8966 = fmul fast float %8965, %8963
  %8967 = fsub fast float %8540, %8966
  br i1 %8533, label %8968, label %8997, !dx.controlflow.hints !173

; <label>:8968                                    ; preds = %8956
  %8969 = fmul fast float %8541, %8530
  %8970 = fadd fast float %8969, %8531
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fmul fast float %8512, %8967
  %8973 = fsub fast float -0.000000e+00, %8972
  %8974 = fmul fast float %8513, %8967
  %8975 = fsub fast float -0.000000e+00, %8974
  %8976 = call float @dx.op.unary.f32(i32 21, float %8973)  ; Exp(value)
  %8977 = call float @dx.op.unary.f32(i32 21, float %8975)  ; Exp(value)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8520, float %8976)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 35, float %8520, float %8977)  ; FMax(a,b)
  %8980 = fsub fast float %8979, %8978
  %8981 = fmul fast float %8980, %8971
  %8982 = fadd fast float %8981, %8978
  %8983 = call float @dx.op.unary.f32(i32 7, float %8982)  ; Saturate(value)
  %8984 = fsub fast float %8517, %8522
  %8985 = fsub fast float %8518, %8523
  %8986 = fsub fast float %8519, %8524
  %8987 = fmul fast float %8971, %8984
  %8988 = fmul fast float %8971, %8985
  %8989 = fmul fast float %8971, %8986
  %8990 = fadd fast float %8987, %8522
  %8991 = fadd fast float %8988, %8523
  %8992 = fadd fast float %8989, %8524
  %8993 = fsub fast float 1.000000e+00, %8983
  %8994 = fmul fast float %8993, %8990
  %8995 = fmul fast float %8993, %8991
  %8996 = fmul fast float %8993, %8992
  br label %9056

; <label>:8997                                    ; preds = %8956
  %8998 = fmul fast float %8967, %8529
  %8999 = call float @dx.op.unary.f32(i32 7, float %8998)  ; Saturate(value)
  %9000 = fsub fast float 2.000000e+00, %8999
  %9001 = fmul fast float %8999, 9.921875e-01
  %9002 = fmul fast float %9001, %9000
  %9003 = fadd fast float %9002, 3.906250e-03
  %9004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9003, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9005 = extractvalue %dx.types.ResRet.f32 %9004, 0
  %9006 = fsub fast float %8999, %9005
  %9007 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9006)  ; FMax(a,b)
  %9008 = fmul fast float %8515, %8496
  %9009 = call float @dx.op.unary.f32(i32 6, float %9008)  ; FAbs(value)
  %9010 = fcmp fast ogt float %9009, 0x3EB0C6F7A0000000
  br i1 %9010, label %9011, label %9017, !dx.controlflow.hints !174

; <label>:9011                                    ; preds = %8997
  %9012 = fmul fast float %9008, 0xBFF7154760000000
  %9013 = call float @dx.op.unary.f32(i32 21, float %9012)  ; Exp(value)
  %9014 = fsub fast float 1.000000e+00, %9013
  %9015 = fdiv fast float %9014, %9008
  %9016 = fmul fast float %9015, %8525
  br label %9017

; <label>:9017                                    ; preds = %9011, %8997
  %9018 = phi float [ %9016, %9011 ], [ %8525, %8997 ]
  %9019 = fadd fast float %9018, %8527
  %9020 = fmul fast float %9019, %9007
  %9021 = fmul fast float %8512, %9020
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fmul fast float %8513, %9020
  %9024 = fsub fast float -0.000000e+00, %9023
  %9025 = fmul fast float %8514, %9020
  %9026 = fsub fast float -0.000000e+00, %9025
  %9027 = call float @dx.op.unary.f32(i32 21, float %9022)  ; Exp(value)
  %9028 = call float @dx.op.unary.f32(i32 21, float %9024)  ; Exp(value)
  %9029 = call float @dx.op.unary.f32(i32 21, float %9026)  ; Exp(value)
  %9030 = fmul fast float %8541, %8541
  %9031 = fadd fast float %9030, 1.000000e+00
  %9032 = fmul fast float %9031, 0x3FAE8EC8A0000000
  %9033 = fmul fast float %9032, %8522
  %9034 = fmul fast float %9032, %8523
  %9035 = fmul fast float %9032, %8524
  %9036 = fmul fast float %8541, %8520
  %9037 = fsub fast float 1.000000e+00, %9036
  %9038 = fmul fast float %8520, %8520
  %9039 = fsub fast float 1.000000e+00, %9038
  %9040 = fmul fast float %9039, 0x3FB45F3060000000
  %9041 = fmul fast float %9037, %9037
  %9042 = fdiv fast float 1.000000e+00, %9041
  %9043 = fmul fast float %9040, %9042
  %9044 = fmul fast float %9043, %8517
  %9045 = fmul fast float %9043, %8518
  %9046 = fmul fast float %9043, %8519
  %9047 = fadd fast float %9044, %9033
  %9048 = fadd fast float %9045, %9034
  %9049 = fadd fast float %9046, %9035
  %9050 = fsub fast float 1.000000e+00, %9027
  %9051 = fsub fast float 1.000000e+00, %9028
  %9052 = fsub fast float 1.000000e+00, %9029
  %9053 = fmul fast float %9047, %9050
  %9054 = fmul fast float %9048, %9051
  %9055 = fmul fast float %9049, %9052
  br label %9056

; <label>:9056                                    ; preds = %9017, %8968
  %9057 = phi float [ %8994, %8968 ], [ %9053, %9017 ]
  %9058 = phi float [ %8995, %8968 ], [ %9054, %9017 ]
  %9059 = phi float [ %8996, %8968 ], [ %9055, %9017 ]
  %9060 = phi float [ %8983, %8968 ], [ %9027, %9017 ]
  %9061 = phi float [ %8983, %8968 ], [ %9028, %9017 ]
  %9062 = phi float [ %8983, %8968 ], [ %9029, %9017 ]
  br i1 %8549, label %9063, label %9261, !dx.controlflow.hints !175

; <label>:9063                                    ; preds = %9056
  %9064 = extractvalue %dx.types.CBufRet.f32 %8962, 0
  %9065 = fmul fast float %9064, %8964
  %9066 = fsub fast float %8959, %9057
  %9067 = fsub fast float %8960, %9058
  %9068 = fsub fast float %8961, %9059
  %9069 = fmul fast float %9065, %9066
  %9070 = fmul fast float %9065, %9067
  %9071 = fmul fast float %9065, %9068
  %9072 = fadd fast float %9069, %9057
  %9073 = fadd fast float %9070, %9058
  %9074 = fadd fast float %9071, %9059
  %9075 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9060)  ; FMax(a,b)
  %9076 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9061)  ; FMax(a,b)
  %9077 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9062)  ; FMax(a,b)
  %9078 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8958)  ; FMax(a,b)
  %9079 = call float @dx.op.binary.f32(i32 35, float %8957, float %8967)  ; FMax(a,b)
  %9080 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9079)  ; FMax(a,b)
  %9081 = fdiv fast float %8957, %9080
  %9082 = call float @dx.op.unary.f32(i32 7, float %9081)  ; Saturate(value)
  %9083 = fdiv fast float %8967, %9080
  %9084 = call float @dx.op.unary.f32(i32 7, float %9083)  ; Saturate(value)
  %9085 = fcmp fast une float %9078, 1.000000e+00
  br i1 %9085, label %9086, label %9099, !dx.controlflow.hints !176

; <label>:9086                                    ; preds = %9063
  %9087 = call float @dx.op.unary.f32(i32 23, float %9078)  ; Log(value)
  %9088 = fmul fast float %9087, 0x3FE62E4300000000
  %9089 = fmul fast float %8959, %9088
  %9090 = fsub fast float -0.000000e+00, %9089
  %9091 = fmul fast float %8960, %9088
  %9092 = fsub fast float -0.000000e+00, %9091
  %9093 = fmul fast float %8961, %9088
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = fsub fast float 1.000000e+00, %9078
  %9096 = fdiv fast float %9090, %9095
  %9097 = fdiv fast float %9092, %9095
  %9098 = fdiv fast float %9094, %9095
  br label %9099

; <label>:9099                                    ; preds = %9086, %9063
  %9100 = phi float [ %9096, %9086 ], [ %8959, %9063 ]
  %9101 = phi float [ %9097, %9086 ], [ %8960, %9063 ]
  %9102 = phi float [ %9098, %9086 ], [ %8961, %9063 ]
  %9103 = phi float [ %9088, %9086 ], [ 0.000000e+00, %9063 ]
  %9104 = fcmp fast une float %9075, 1.000000e+00
  br i1 %9104, label %9105, label %9112, !dx.controlflow.hints !177

; <label>:9105                                    ; preds = %9099
  %9106 = call float @dx.op.unary.f32(i32 23, float %9075)  ; Log(value)
  %9107 = fmul fast float %9106, 0x3FE62E4300000000
  %9108 = fmul fast float %9072, %9107
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fsub fast float 1.000000e+00, %9075
  %9111 = fdiv fast float %9109, %9110
  br label %9112

; <label>:9112                                    ; preds = %9105, %9099
  %9113 = phi float [ %9111, %9105 ], [ %9072, %9099 ]
  %9114 = phi float [ %9107, %9105 ], [ 0.000000e+00, %9099 ]
  %9115 = fcmp fast une float %9076, 1.000000e+00
  br i1 %9115, label %9116, label %9123, !dx.controlflow.hints !177

; <label>:9116                                    ; preds = %9112
  %9117 = call float @dx.op.unary.f32(i32 23, float %9076)  ; Log(value)
  %9118 = fmul fast float %9117, 0x3FE62E4300000000
  %9119 = fmul fast float %9073, %9118
  %9120 = fsub fast float -0.000000e+00, %9119
  %9121 = fsub fast float 1.000000e+00, %9076
  %9122 = fdiv fast float %9120, %9121
  br label %9123

; <label>:9123                                    ; preds = %9116, %9112
  %9124 = phi float [ %9122, %9116 ], [ %9073, %9112 ]
  %9125 = phi float [ %9118, %9116 ], [ 0.000000e+00, %9112 ]
  %9126 = fcmp fast une float %9077, 1.000000e+00
  br i1 %9126, label %9127, label %9134, !dx.controlflow.hints !177

; <label>:9127                                    ; preds = %9123
  %9128 = call float @dx.op.unary.f32(i32 23, float %9077)  ; Log(value)
  %9129 = fmul fast float %9128, 0x3FE62E4300000000
  %9130 = fmul fast float %9074, %9129
  %9131 = fsub fast float -0.000000e+00, %9130
  %9132 = fsub fast float 1.000000e+00, %9077
  %9133 = fdiv fast float %9131, %9132
  br label %9134

; <label>:9134                                    ; preds = %9127, %9123
  %9135 = phi float [ %9133, %9127 ], [ %9074, %9123 ]
  %9136 = phi float [ %9129, %9127 ], [ 0.000000e+00, %9123 ]
  %9137 = fmul fast float %9100, %9084
  %9138 = fmul fast float %9101, %9084
  %9139 = fmul fast float %9102, %9084
  %9140 = fmul fast float %9103, %9084
  %9141 = fmul fast float %9113, %9082
  %9142 = fmul fast float %9124, %9082
  %9143 = fmul fast float %9135, %9082
  %9144 = fmul fast float %9114, %9082
  %9145 = fmul fast float %9125, %9082
  %9146 = fmul fast float %9136, %9082
  %9147 = fadd fast float %9141, %9137
  %9148 = fadd fast float %9142, %9138
  %9149 = fadd fast float %9143, %9139
  %9150 = fadd fast float %9144, %9140
  %9151 = fadd fast float %9145, %9140
  %9152 = fadd fast float %9146, %9140
  %9153 = fcmp fast une float %9150, 0.000000e+00
  br i1 %9153, label %9154, label %9161, !dx.controlflow.hints !178

; <label>:9154                                    ; preds = %9134
  %9155 = fmul fast float %9150, 0x3FF7154760000000
  %9156 = call float @dx.op.unary.f32(i32 21, float %9155)  ; Exp(value)
  %9157 = fsub fast float 1.000000e+00, %9156
  %9158 = fmul fast float %9147, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fdiv fast float %9159, %9150
  br label %9161

; <label>:9161                                    ; preds = %9154, %9134
  %9162 = phi float [ %9156, %9154 ], [ 1.000000e+00, %9134 ]
  %9163 = phi float [ %9160, %9154 ], [ %9147, %9134 ]
  %9164 = fcmp fast une float %9151, 0.000000e+00
  br i1 %9164, label %9165, label %9172, !dx.controlflow.hints !178

; <label>:9165                                    ; preds = %9161
  %9166 = fmul fast float %9151, 0x3FF7154760000000
  %9167 = call float @dx.op.unary.f32(i32 21, float %9166)  ; Exp(value)
  %9168 = fsub fast float 1.000000e+00, %9167
  %9169 = fmul fast float %9148, %9168
  %9170 = fsub fast float -0.000000e+00, %9169
  %9171 = fdiv fast float %9170, %9151
  br label %9172

; <label>:9172                                    ; preds = %9165, %9161
  %9173 = phi float [ %9167, %9165 ], [ 1.000000e+00, %9161 ]
  %9174 = phi float [ %9171, %9165 ], [ %9148, %9161 ]
  %9175 = fcmp fast une float %9152, 0.000000e+00
  br i1 %9175, label %9176, label %9183, !dx.controlflow.hints !178

; <label>:9176                                    ; preds = %9172
  %9177 = fmul fast float %9152, 0x3FF7154760000000
  %9178 = call float @dx.op.unary.f32(i32 21, float %9177)  ; Exp(value)
  %9179 = fsub fast float 1.000000e+00, %9178
  %9180 = fmul fast float %9149, %9179
  %9181 = fsub fast float -0.000000e+00, %9180
  %9182 = fdiv fast float %9181, %9152
  br label %9183

; <label>:9183                                    ; preds = %9176, %9172
  %9184 = phi float [ %9178, %9176 ], [ 1.000000e+00, %9172 ]
  %9185 = phi float [ %9182, %9176 ], [ %9149, %9172 ]
  %9186 = fcmp fast ogt float %9082, %9084
  br i1 %9186, label %9187, label %9207

; <label>:9187                                    ; preds = %9183
  %9188 = fsub fast float 1.000000e+00, %9084
  %9189 = fmul fast float %9100, %9188
  %9190 = fmul fast float %9101, %9188
  %9191 = fmul fast float %9102, %9188
  %9192 = fmul fast float %9103, %9188
  %9193 = fcmp fast une float %9192, 0.000000e+00
  br i1 %9193, label %9194, label %9245, !dx.controlflow.hints !179

; <label>:9194                                    ; preds = %9187
  %9195 = fmul fast float %9192, 0x3FF7154760000000
  %9196 = call float @dx.op.unary.f32(i32 21, float %9195)  ; Exp(value)
  %9197 = fsub fast float 1.000000e+00, %9196
  %9198 = fmul fast float %9189, %9197
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fmul fast float %9190, %9197
  %9201 = fsub fast float -0.000000e+00, %9200
  %9202 = fmul fast float %9191, %9197
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = fdiv fast float %9199, %9192
  %9205 = fdiv fast float %9201, %9192
  %9206 = fdiv fast float %9203, %9192
  br label %9245

; <label>:9207                                    ; preds = %9183
  %9208 = fsub fast float 1.000000e+00, %9082
  %9209 = fmul fast float %9113, %9208
  %9210 = fmul fast float %9124, %9208
  %9211 = fmul fast float %9135, %9208
  %9212 = fmul fast float %9114, %9208
  %9213 = fmul fast float %9125, %9208
  %9214 = fmul fast float %9136, %9208
  %9215 = fcmp fast une float %9212, 0.000000e+00
  br i1 %9215, label %9216, label %9223, !dx.controlflow.hints !178

; <label>:9216                                    ; preds = %9207
  %9217 = fmul fast float %9212, 0x3FF7154760000000
  %9218 = call float @dx.op.unary.f32(i32 21, float %9217)  ; Exp(value)
  %9219 = fsub fast float 1.000000e+00, %9218
  %9220 = fmul fast float %9209, %9219
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = fdiv fast float %9221, %9212
  br label %9223

; <label>:9223                                    ; preds = %9216, %9207
  %9224 = phi float [ %9222, %9216 ], [ %9209, %9207 ]
  %9225 = phi float [ %9218, %9216 ], [ 1.000000e+00, %9207 ]
  %9226 = fcmp fast une float %9213, 0.000000e+00
  br i1 %9226, label %9227, label %9234, !dx.controlflow.hints !178

; <label>:9227                                    ; preds = %9223
  %9228 = fmul fast float %9213, 0x3FF7154760000000
  %9229 = call float @dx.op.unary.f32(i32 21, float %9228)  ; Exp(value)
  %9230 = fsub fast float 1.000000e+00, %9229
  %9231 = fmul fast float %9210, %9230
  %9232 = fsub fast float -0.000000e+00, %9231
  %9233 = fdiv fast float %9232, %9213
  br label %9234

; <label>:9234                                    ; preds = %9227, %9223
  %9235 = phi float [ %9233, %9227 ], [ %9210, %9223 ]
  %9236 = phi float [ %9229, %9227 ], [ 1.000000e+00, %9223 ]
  %9237 = fcmp fast une float %9214, 0.000000e+00
  br i1 %9237, label %9238, label %9245, !dx.controlflow.hints !178

; <label>:9238                                    ; preds = %9234
  %9239 = fmul fast float %9214, 0x3FF7154760000000
  %9240 = call float @dx.op.unary.f32(i32 21, float %9239)  ; Exp(value)
  %9241 = fsub fast float 1.000000e+00, %9240
  %9242 = fmul fast float %9211, %9241
  %9243 = fsub fast float -0.000000e+00, %9242
  %9244 = fdiv fast float %9243, %9214
  br label %9245

; <label>:9245                                    ; preds = %9238, %9234, %9194, %9187
  %9246 = phi float [ %9244, %9238 ], [ %9206, %9194 ], [ %9191, %9187 ], [ %9211, %9234 ]
  %9247 = phi float [ %9235, %9238 ], [ %9205, %9194 ], [ %9190, %9187 ], [ %9235, %9234 ]
  %9248 = phi float [ %9224, %9238 ], [ %9204, %9194 ], [ %9189, %9187 ], [ %9224, %9234 ]
  %9249 = phi float [ %9240, %9238 ], [ %9196, %9194 ], [ 1.000000e+00, %9187 ], [ 1.000000e+00, %9234 ]
  %9250 = phi float [ %9236, %9238 ], [ %9196, %9194 ], [ 1.000000e+00, %9187 ], [ %9236, %9234 ]
  %9251 = phi float [ %9225, %9238 ], [ %9196, %9194 ], [ 1.000000e+00, %9187 ], [ %9225, %9234 ]
  %9252 = fmul fast float %9251, %9163
  %9253 = fmul fast float %9250, %9174
  %9254 = fmul fast float %9249, %9185
  %9255 = fadd fast float %9252, %9248
  %9256 = fadd fast float %9253, %9247
  %9257 = fadd fast float %9254, %9246
  %9258 = fmul fast float %9251, %9162
  %9259 = fmul fast float %9250, %9173
  %9260 = fmul fast float %9249, %9184
  br label %9261

; <label>:9261                                    ; preds = %9245, %9056
  %9262 = phi float [ %9260, %9245 ], [ %9062, %9056 ]
  %9263 = phi float [ %9259, %9245 ], [ %9061, %9056 ]
  %9264 = phi float [ %9258, %9245 ], [ %9060, %9056 ]
  %9265 = phi float [ %9257, %9245 ], [ %9059, %9056 ]
  %9266 = phi float [ %9256, %9245 ], [ %9058, %9056 ]
  %9267 = phi float [ %9255, %9245 ], [ %9057, %9056 ]
  %9268 = fmul fast float %9267, %8213
  %9269 = fmul fast float %9266, %8213
  %9270 = fmul fast float %9265, %8213
  %9271 = fmul fast float %9264, %8504
  %9272 = call float @dx.op.dot3.f32(i32 55, float %9264, float %9263, float %9262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9273 = call float @dx.op.dot3.f32(i32 55, float %9268, float %9269, float %9270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9274 = select i1 %260, float %9272, float %9264
  %9275 = select i1 %260, float %9272, float %9263
  %9276 = select i1 %260, float 1.000000e+00, float %9262
  %9277 = select i1 %260, float %9273, float %9268
  %9278 = select i1 %260, float 0.000000e+00, float %9269
  %9279 = select i1 %260, float 0.000000e+00, float %9270
  %9280 = fmul fast float %9274, %8498
  %9281 = fmul fast float %9275, %8499
  %9282 = fmul fast float %9276, %8500
  %9283 = fadd fast float %9280, %9277
  %9284 = fadd fast float %9281, %9278
  %9285 = fadd fast float %9279, %9282
  %9286 = fmul fast float %9274, %8501
  %9287 = fmul fast float %9275, %8502
  %9288 = fmul fast float %9276, %8503
  %9289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.i32 %9289, 0
  %9291 = icmp eq i32 %9290, 0
  br i1 %9291, label %9659, label %9292, !dx.controlflow.hints !180

; <label>:9292                                    ; preds = %9261
  %9293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9294 = extractvalue %dx.types.CBufRet.f32 %9293, 2
  %9295 = extractvalue %dx.types.CBufRet.f32 %9293, 3
  %9296 = fmul fast float %9294, %114
  %9297 = fmul fast float %9295, %115
  %9298 = fmul fast float %9296, 2.000000e+00
  %9299 = fmul fast float %9297, 2.000000e+00
  %9300 = fsub fast float 1.000000e+00, %9298
  %9301 = fsub fast float 1.000000e+00, %9299
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.CBufRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.CBufRet.f32 %9302, 2
  %9306 = fmul fast float %9300, %9303
  %9307 = fmul fast float %9300, %9304
  %9308 = fmul fast float %9300, %9305
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 0
  %9311 = extractvalue %dx.types.CBufRet.f32 %9309, 1
  %9312 = extractvalue %dx.types.CBufRet.f32 %9309, 2
  %9313 = fmul fast float %9301, %9310
  %9314 = fmul fast float %9301, %9311
  %9315 = fmul fast float %9301, %9312
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 0
  %9318 = extractvalue %dx.types.CBufRet.f32 %9316, 1
  %9319 = extractvalue %dx.types.CBufRet.f32 %9316, 2
  %9320 = fadd fast float %9313, %9317
  %9321 = fadd fast float %9320, %9306
  %9322 = fadd fast float %9314, %9318
  %9323 = fadd fast float %9322, %9307
  %9324 = fadd fast float %9315, %9319
  %9325 = fadd fast float %9324, %9308
  %9326 = fmul fast float %9321, %8497
  %9327 = fmul fast float %9323, %8497
  %9328 = fmul fast float %9325, %8497
  %9329 = fmul fast float %9326, %9326
  %9330 = fmul fast float %9327, %9327
  %9331 = fadd fast float %9329, %9330
  %9332 = fmul fast float %9328, %9328
  %9333 = fadd fast float %9331, %9332
  %9334 = call float @dx.op.unary.f32(i32 24, float %9333)  ; Sqrt(value)
  %9335 = extractvalue %dx.types.CBufRet.f32 %8224, 0
  %9336 = fsub fast float %9334, %9335
  %9337 = extractvalue %dx.types.CBufRet.f32 %8224, 2
  %9338 = fmul fast float %9336, %9337
  %9339 = call float @dx.op.unary.f32(i32 7, float %9338)  ; Saturate(value)
  %9340 = fadd fast float %9339, -5.000000e-01
  %9341 = fmul fast float %9340, 2.000000e+00
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 2
  %9344 = call float @dx.op.binary.f32(i32 36, float %9343, float %9341)  ; FMin(a,b)
  %9345 = fsub fast float -0.000000e+00, %9343
  %9346 = fcmp fast ogt float %9344, %9345
  br i1 %9346, label %9347, label %9659, !dx.controlflow.hints !181

; <label>:9347                                    ; preds = %9292
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 3
  %9350 = fcmp fast ogt float %9349, 0.000000e+00
  br i1 %9350, label %9351, label %9426, !dx.controlflow.hints !182

; <label>:9351                                    ; preds = %9347
  %9352 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9353 = extractvalue %dx.types.Dimensions %9352, 0
  %9354 = sitofp i32 %9353 to float
  %9355 = extractvalue %dx.types.Dimensions %9352, 1
  %9356 = sitofp i32 %9355 to float
  %9357 = fmul fast float %9296, %9354
  %9358 = fmul fast float %9297, %9356
  %9359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9360 = extractvalue %dx.types.CBufRet.f32 %9359, 1
  %9361 = fsub fast float -0.000000e+00, %9360
  %9362 = fptoui float %9361 to i32
  %9363 = fptoui float %9357 to i32
  %9364 = fptoui float %9358 to i32
  %9365 = and i32 %9362, 31
  %9366 = lshr i32 %9363, %9365
  %9367 = lshr i32 %9364, %9365
  %9368 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9362, i32 %9366, i32 %9367, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9369 = extractvalue %dx.types.ResRet.f32 %9368, 0
  %9370 = fcmp fast olt float %9369, -1.000000e+00
  %9371 = fcmp fast ogt float %9369, -1.000000e+00
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 1
  %9374 = select i1 %9371, float %9373, float 1.000000e+00
  %9375 = fadd fast float %9369, 1.000000e+00
  %9376 = fmul fast float %9374, %9375
  %9377 = call float @dx.op.unary.f32(i32 6, float %9376)  ; FAbs(value)
  %9378 = extractvalue %dx.types.CBufRet.f32 %9372, 3
  %9379 = fcmp fast oge float %9377, %9378
  %9380 = select i1 %9379, float 0x4197782600000000, float %9377
  %9381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9382 = extractvalue %dx.types.CBufRet.f32 %9381, 0
  %9383 = extractvalue %dx.types.CBufRet.f32 %9381, 1
  %9384 = extractvalue %dx.types.CBufRet.f32 %9381, 2
  %9385 = select i1 %9370, float %9382, float %9303
  %9386 = select i1 %9370, float %9383, float %9304
  %9387 = select i1 %9370, float %9384, float %9305
  %9388 = fmul fast float %9385, %9300
  %9389 = fmul fast float %9386, %9300
  %9390 = fmul fast float %9387, %9300
  %9391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.f32 %9391, 0
  %9393 = extractvalue %dx.types.CBufRet.f32 %9391, 1
  %9394 = extractvalue %dx.types.CBufRet.f32 %9391, 2
  %9395 = select i1 %9370, float %9392, float %9310
  %9396 = select i1 %9370, float %9393, float %9311
  %9397 = select i1 %9370, float %9394, float %9312
  %9398 = fmul fast float %9395, %9301
  %9399 = fmul fast float %9396, %9301
  %9400 = fmul fast float %9397, %9301
  %9401 = fadd fast float %9398, %9388
  %9402 = fadd fast float %9399, %9389
  %9403 = fadd fast float %9400, %9390
  %9404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9405 = extractvalue %dx.types.CBufRet.f32 %9404, 0
  %9406 = extractvalue %dx.types.CBufRet.f32 %9404, 1
  %9407 = extractvalue %dx.types.CBufRet.f32 %9404, 2
  %9408 = select i1 %9370, float %9405, float %9317
  %9409 = select i1 %9370, float %9406, float %9318
  %9410 = select i1 %9370, float %9407, float %9319
  %9411 = fadd fast float %9401, %9408
  %9412 = fadd fast float %9402, %9409
  %9413 = fadd fast float %9403, %9410
  %9414 = fmul fast float %9411, %9380
  %9415 = fmul fast float %9412, %9380
  %9416 = fmul fast float %9413, %9380
  %9417 = fmul fast float %9414, %9414
  %9418 = fmul fast float %9415, %9415
  %9419 = fadd fast float %9417, %9418
  %9420 = fmul fast float %9416, %9416
  %9421 = fadd fast float %9419, %9420
  %9422 = call float @dx.op.unary.f32(i32 24, float %9421)  ; Sqrt(value)
  %9423 = fsub fast float %9422, %9335
  %9424 = fmul fast float %9423, %9337
  %9425 = call float @dx.op.unary.f32(i32 7, float %9424)  ; Saturate(value)
  br label %9426

; <label>:9426                                    ; preds = %9351, %9347
  %9427 = phi float [ %9425, %9351 ], [ 1.000000e+00, %9347 ]
  %9428 = fmul fast float %9344, 5.000000e-01
  %9429 = fadd fast float %9428, 5.000000e-01
  %9430 = call float @dx.op.unary.f32(i32 22, float %9429)  ; Frc(value)
  %9431 = call float @dx.op.unary.f32(i32 27, float %9430)  ; Round_ni(value)
  %9432 = call float @dx.op.unary.f32(i32 22, float %9430)  ; Frc(value)
  %9433 = fmul fast float %9432, 2.000000e+00
  %9434 = fadd fast float %9433, -1.000000e+00
  %9435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9296, float %9297, float %9431, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9436 = extractvalue %dx.types.ResRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.ResRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.ResRet.f32 %9435, 2
  %9439 = extractvalue %dx.types.ResRet.f32 %9435, 3
  %9440 = fadd fast float %9436, -5.000000e-01
  %9441 = fadd fast float %9438, -5.000000e-01
  %9442 = fmul fast float %9440, 0xBFD5555560000000
  %9443 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9441, float %9442)  ; FMad(a,b,c)
  %9444 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9437, float 0.000000e+00)  ; FMad(a,b,c)
  %9445 = fadd fast float %9444, %9439
  %9446 = fmul fast float %9440, -7.500000e-01
  %9447 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9441, float %9446)  ; FMad(a,b,c)
  %9448 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9437, float 0.000000e+00)  ; FMad(a,b,c)
  %9449 = fadd fast float %9448, %9439
  %9450 = call float @dx.op.binary.f32(i32 35, float %9443, float -1.000000e+00)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 35, float %9445, float -1.000000e+00)  ; FMax(a,b)
  %9452 = call float @dx.op.binary.f32(i32 35, float %9447, float -1.000000e+00)  ; FMax(a,b)
  %9453 = call float @dx.op.binary.f32(i32 35, float %9449, float -1.000000e+00)  ; FMax(a,b)
  %9454 = call float @dx.op.binary.f32(i32 36, float %9450, float 1.000000e+00)  ; FMin(a,b)
  %9455 = call float @dx.op.binary.f32(i32 36, float %9451, float 1.000000e+00)  ; FMin(a,b)
  %9456 = call float @dx.op.binary.f32(i32 36, float %9452, float 1.000000e+00)  ; FMin(a,b)
  %9457 = call float @dx.op.binary.f32(i32 36, float %9453, float 1.000000e+00)  ; FMin(a,b)
  %9458 = fcmp fast olt float %9454, 0x3FEFFF8020000000
  br i1 %9458, label %9459, label %9574, !dx.controlflow.hints !183

; <label>:9459                                    ; preds = %9426
  %9460 = extractvalue %dx.types.CBufRet.f32 %9342, 3
  %9461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9462 = extractvalue %dx.types.CBufRet.f32 %9461, 0
  %9463 = extractvalue %dx.types.CBufRet.f32 %9461, 1
  %9464 = extractvalue %dx.types.CBufRet.f32 %9461, 2
  %9465 = extractvalue %dx.types.CBufRet.f32 %9461, 3
  %9466 = fsub fast float %9462, %9454
  %9467 = fsub fast float %9463, %9455
  %9468 = fsub fast float %9464, %9456
  %9469 = fsub fast float %9465, %9457
  %9470 = fmul fast float %9466, %9460
  %9471 = fmul fast float %9467, %9460
  %9472 = fmul fast float %9468, %9460
  %9473 = fmul fast float %9469, %9460
  %9474 = fadd fast float %9470, %9454
  %9475 = fadd fast float %9471, %9455
  %9476 = fsub fast float -0.000000e+00, %9475
  %9477 = fadd fast float %9472, %9456
  %9478 = fadd fast float %9473, %9457
  %9479 = fmul fast float %9474, %9474
  %9480 = fsub fast float %9475, %9479
  %9481 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9480)  ; FMax(a,b)
  %9482 = fdiv fast float 1.000000e+00, %9481
  %9483 = fmul fast float %9475, %9474
  %9484 = fsub fast float %9477, %9483
  %9485 = fsub fast float %9434, %9474
  %9486 = fmul fast float %9434, %9434
  %9487 = fsub fast float %9486, %9475
  %9488 = fmul fast float %9485, %9482
  %9489 = fmul fast float %9488, %9484
  %9490 = fsub fast float %9487, %9489
  %9491 = fmul fast float %9475, %9475
  %9492 = fsub fast float %9478, %9491
  %9493 = fmul fast float %9484, %9484
  %9494 = fmul fast float %9493, %9482
  %9495 = fsub fast float %9492, %9494
  %9496 = fdiv fast float %9490, %9495
  %9497 = fmul fast float %9484, %9496
  %9498 = fsub fast float %9485, %9497
  %9499 = fmul fast float %9498, %9482
  %9500 = fmul fast float %9499, %9474
  %9501 = fsub fast float 1.000000e+00, %9500
  %9502 = fmul fast float %9475, %9496
  %9503 = fsub fast float %9501, %9502
  %9504 = fmul fast float %9499, %9499
  %9505 = fmul fast float %9496, 4.000000e+00
  %9506 = fmul fast float %9505, %9503
  %9507 = fsub fast float %9504, %9506
  %9508 = call float @dx.op.unary.f32(i32 24, float %9507)  ; Sqrt(value)
  %9509 = fcmp fast oge float %9499, 0.000000e+00
  %9510 = fsub fast float -0.000000e+00, %9508
  %9511 = select i1 %9509, float %9510, float %9508
  %9512 = fsub fast float %9511, %9499
  %9513 = fdiv fast float %9512, %9496
  %9514 = fdiv fast float %9503, %9512
  %9515 = fmul fast float %9513, 5.000000e-01
  %9516 = fmul fast float %9514, 2.000000e+00
  %9517 = select i1 %9509, float %9515, float %9516
  %9518 = select i1 %9509, float %9516, float %9515
  %9519 = call float @dx.op.binary.f32(i32 35, float %9517, float %9518)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 36, float %9517, float %9518)  ; FMin(a,b)
  %9521 = fcmp fast ogt float %9434, %9520
  br i1 %9521, label %9522, label %9532

; <label>:9522                                    ; preds = %9459
  %9523 = fsub fast float %9434, %9520
  %9524 = fsub fast float %9519, %9520
  %9525 = fmul fast float %9523, %9524
  %9526 = fmul fast float %9519, %9434
  %9527 = fadd fast float %9519, %9434
  %9528 = fmul fast float %9527, %9474
  %9529 = fadd fast float %9526, %9475
  %9530 = fsub fast float %9529, %9528
  %9531 = fdiv fast float %9530, %9525
  br label %9532

; <label>:9532                                    ; preds = %9522, %9459
  %9533 = phi float [ %9531, %9522 ], [ 0.000000e+00, %9459 ]
  %9534 = fcmp fast ogt float %9434, %9519
  %9535 = fsub fast float %9434, %9519
  br i1 %9534, label %9536, label %9546

; <label>:9536                                    ; preds = %9532
  %9537 = fsub fast float %9519, %9520
  %9538 = fmul fast float %9537, %9535
  %9539 = fmul fast float %9520, %9434
  %9540 = fadd fast float %9520, %9434
  %9541 = fmul fast float %9540, %9474
  %9542 = fsub fast float %9476, %9539
  %9543 = fadd fast float %9542, %9541
  %9544 = fdiv fast float %9543, %9538
  %9545 = fadd fast float %9544, %9533
  br label %9546

; <label>:9546                                    ; preds = %9536, %9532
  %9547 = phi float [ %9545, %9536 ], [ %9533, %9532 ]
  %9548 = fsub fast float %9434, %9520
  %9549 = fmul fast float %9548, %9535
  %9550 = fmul fast float %9520, %9519
  %9551 = fadd fast float %9520, %9519
  %9552 = fmul fast float %9551, %9474
  %9553 = fadd fast float %9550, %9475
  %9554 = fsub fast float %9553, %9552
  %9555 = fdiv fast float %9554, %9549
  %9556 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9557 = fcmp fast oeq float %8225, 0.000000e+00
  %9558 = extractvalue %dx.types.CBufRet.f32 %9342, 0
  %9559 = fcmp fast oeq float %9558, 0.000000e+00
  %9560 = or i1 %9557, %9559
  %9561 = fmul fast float %9558, 2.000000e+00
  %9562 = fadd fast float %9343, %9344
  %9563 = fdiv fast float %9562, %9561
  %9564 = call float @dx.op.unary.f32(i32 7, float %9563)  ; Saturate(value)
  %9565 = fmul fast float %9564, 2.000000e+00
  %9566 = fsub fast float 3.000000e+00, %9565
  %9567 = fmul fast float %9564, %9564
  %9568 = fmul fast float %9567, %9566
  %9569 = select i1 %9560, float 1.000000e+00, float %9568
  %9570 = fmul fast float %9555, %8225
  %9571 = fadd fast float %9556, %9570
  %9572 = call float @dx.op.unary.f32(i32 7, float %9571)  ; Saturate(value)
  %9573 = fmul fast float %9569, %9572
  br label %9574

; <label>:9574                                    ; preds = %9546, %9426
  %9575 = phi float [ %9573, %9546 ], [ 0.000000e+00, %9426 ]
  %9576 = fsub fast float 1.000000e+00, %9575
  %9577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9296, float %9297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9578 = extractvalue %dx.types.ResRet.f32 %9577, 0
  %9579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.i32 %9579, 2
  %9581 = icmp eq i32 %9580, 0
  br i1 %9581, label %9587, label %9582

; <label>:9582                                    ; preds = %9574
  %9583 = call float @dx.op.unary.f32(i32 7, float %9575)  ; Saturate(value)
  %9584 = fadd fast float %9578, -1.000000e+00
  %9585 = fmul fast float %9583, %9584
  %9586 = fadd fast float %9585, 1.000000e+00
  br label %9587

; <label>:9587                                    ; preds = %9582, %9574
  %9588 = phi float [ %9586, %9582 ], [ %9576, %9574 ]
  br i1 %9350, label %9589, label %9607

; <label>:9589                                    ; preds = %9587
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9592 = fsub fast float %9427, %9591
  %9593 = call float @dx.op.unary.f32(i32 7, float %9592)  ; Saturate(value)
  %9594 = fsub fast float %9427, %9349
  %9595 = call float @dx.op.unary.f32(i32 7, float %9594)  ; Saturate(value)
  %9596 = fsub fast float %9593, %9595
  %9597 = fsub fast float %9429, %9595
  %9598 = fdiv fast float %9597, %9596
  %9599 = call float @dx.op.unary.f32(i32 7, float %9598)  ; Saturate(value)
  %9600 = fmul fast float %9599, 2.000000e+00
  %9601 = fsub fast float 3.000000e+00, %9600
  %9602 = fsub fast float %9578, %9588
  %9603 = fmul fast float %9599, %9599
  %9604 = fmul fast float %9603, %9602
  %9605 = fmul fast float %9604, %9601
  %9606 = fadd fast float %9605, %9588
  br label %9607

; <label>:9607                                    ; preds = %9589, %9587
  %9608 = phi float [ %9606, %9589 ], [ %9588, %9587 ]
  %9609 = call float @dx.op.binary.f32(i32 35, float %9578, float %9608)  ; FMax(a,b)
  %9610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.i32 %9610, 2
  %9612 = and i32 %9611, 1
  %9613 = icmp eq i32 %9612, 0
  %9614 = fcmp fast une float %9609, 1.000000e+00
  %9615 = and i1 %9614, %9613
  br i1 %9615, label %9616, label %9635

; <label>:9616                                    ; preds = %9607
  %9617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9296, float %9297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9618 = extractvalue %dx.types.ResRet.f32 %9617, 0
  %9619 = extractvalue %dx.types.ResRet.f32 %9617, 1
  %9620 = extractvalue %dx.types.ResRet.f32 %9617, 2
  %9621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9622 = extractvalue %dx.types.CBufRet.f32 %9621, 1
  %9623 = fmul fast float %9622, %9618
  %9624 = fmul fast float %9622, %9619
  %9625 = fmul fast float %9622, %9620
  %9626 = fcmp fast ogt float %9578, 0x3FEFFF2E40000000
  %9627 = fsub fast float 1.000000e+00, %9609
  %9628 = fsub fast float 1.000000e+00, %9578
  %9629 = fdiv fast float %9627, %9628
  %9630 = call float @dx.op.unary.f32(i32 7, float %9629)  ; Saturate(value)
  %9631 = select i1 %9626, float 0.000000e+00, float %9630
  %9632 = fmul fast float %9623, %9631
  %9633 = fmul fast float %9624, %9631
  %9634 = fmul fast float %9625, %9631
  br label %9635

; <label>:9635                                    ; preds = %9616, %9607
  %9636 = phi float [ 0.000000e+00, %9607 ], [ %9632, %9616 ]
  %9637 = phi float [ 0.000000e+00, %9607 ], [ %9633, %9616 ]
  %9638 = phi float [ 0.000000e+00, %9607 ], [ %9634, %9616 ]
  %9639 = fmul fast float %9636, %8213
  %9640 = fmul fast float %9637, %8213
  %9641 = fmul fast float %9638, %8213
  %9642 = fmul fast float %9609, %9271
  %9643 = call float @dx.op.dot3.f32(i32 55, float %9609, float %9609, float %9609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9644 = call float @dx.op.dot3.f32(i32 55, float %9639, float %9640, float %9641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9645 = select i1 %260, float %9643, float %9609
  %9646 = select i1 %260, float 1.000000e+00, float %9609
  %9647 = select i1 %260, float %9644, float %9639
  %9648 = select i1 %260, float 0.000000e+00, float %9640
  %9649 = select i1 %260, float 0.000000e+00, float %9641
  %9650 = fmul fast float %9645, %9283
  %9651 = fmul fast float %9645, %9284
  %9652 = fmul fast float %9646, %9285
  %9653 = fadd fast float %9650, %9647
  %9654 = fadd fast float %9651, %9648
  %9655 = fadd fast float %9649, %9652
  %9656 = fmul fast float %9645, %9286
  %9657 = fmul fast float %9645, %9287
  %9658 = fmul fast float %9646, %9288
  br label %9659

; <label>:9659                                    ; preds = %9635, %9292, %9261, %8493
  %9660 = phi float [ %8498, %8493 ], [ %9283, %9261 ], [ %9653, %9635 ], [ %9283, %9292 ]
  %9661 = phi float [ %8499, %8493 ], [ %9284, %9261 ], [ %9654, %9635 ], [ %9284, %9292 ]
  %9662 = phi float [ %8500, %8493 ], [ %9285, %9261 ], [ %9655, %9635 ], [ %9285, %9292 ]
  %9663 = phi float [ %8501, %8493 ], [ %9286, %9261 ], [ %9656, %9635 ], [ %9286, %9292 ]
  %9664 = phi float [ %8502, %8493 ], [ %9287, %9261 ], [ %9657, %9635 ], [ %9287, %9292 ]
  %9665 = phi float [ %8503, %8493 ], [ %9288, %9261 ], [ %9658, %9635 ], [ %9288, %9292 ]
  %9666 = phi float [ %8504, %8493 ], [ %9271, %9261 ], [ %9642, %9635 ], [ %9271, %9292 ]
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 2
  %9669 = extractvalue %dx.types.CBufRet.f32 %9667, 3
  %9670 = fmul fast float %9668, %114
  %9671 = fmul fast float %9669, %115
  %9672 = call float @dx.op.unary.f32(i32 7, float %9670)  ; Saturate(value)
  %9673 = call float @dx.op.unary.f32(i32 7, float %9671)  ; Saturate(value)
  %9674 = select i1 %8235, i32 2, i32 0
  %9675 = or i32 %9674, 1
  %9676 = uitofp i32 %9675 to float
  %9677 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9672, float %9673, float %9676, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9678 = extractvalue %dx.types.ResRet.f32 %9677, 0
  %9679 = extractvalue %dx.types.ResRet.f32 %9677, 1
  %9680 = extractvalue %dx.types.ResRet.f32 %9677, 2
  %9681 = extractvalue %dx.types.ResRet.f32 %9677, 3
  %9682 = add nuw nsw i32 %9674, 2
  %9683 = uitofp i32 %9682 to float
  %9684 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9672, float %9673, float %9683, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9685 = extractvalue %dx.types.ResRet.f32 %9684, 0
  %9686 = extractvalue %dx.types.ResRet.f32 %9684, 1
  %9687 = extractvalue %dx.types.ResRet.f32 %9684, 2
  %9688 = extractvalue %dx.types.ResRet.f32 %9684, 3
  %9689 = call float @dx.op.binary.f32(i32 35, float %9679, float %9680)  ; FMax(a,b)
  %9690 = call float @dx.op.binary.f32(i32 35, float %9678, float %9689)  ; FMax(a,b)
  %9691 = call float @dx.op.binary.f32(i32 35, float %9690, float %9681)  ; FMax(a,b)
  %9692 = call float @dx.op.binary.f32(i32 36, float %9686, float %9687)  ; FMin(a,b)
  %9693 = call float @dx.op.binary.f32(i32 36, float %9685, float %9692)  ; FMin(a,b)
  %9694 = call float @dx.op.binary.f32(i32 36, float %9693, float %9688)  ; FMin(a,b)
  %9695 = fmul fast float %9691, 2.550000e+02
  %9696 = fadd fast float %9695, 0x3F70101020000000
  %9697 = fptoui float %9696 to i32
  %9698 = fmul fast float %9694, 2.550000e+02
  %9699 = fadd fast float %9698, 0x3F70101020000000
  %9700 = fptoui float %9699 to i32
  %9701 = icmp ult i32 %9697, %9700
  br i1 %9701, label %9702, label %9871

; <label>:9702                                    ; preds = %9659
  %9703 = fcmp fast ogt float %100, 9.843750e-01
  %9704 = fadd fast float %8497, -4.000000e+00
  %9705 = select i1 %9703, float -4.000000e+00, float %9704
  %9706 = call float @dx.op.binary.f32(i32 35, float %9705, float 0.000000e+00)  ; FMax(a,b)
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 0
  %9709 = fadd fast float %9708, %9706
  %9710 = extractvalue %dx.types.CBufRet.f32 %9707, 2
  %9711 = fmul fast float %9709, %9710
  %9712 = call float @dx.op.unary.f32(i32 23, float %9711)  ; Log(value)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9707, 3
  %9714 = fmul fast float %9713, %9712
  %9715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9715, 2
  %9717 = fmul fast float %9714, %9716
  %9718 = call float @dx.op.unary.f32(i32 7, float %9717)  ; Saturate(value)
  %9719 = uitofp i32 %9697 to float
  %9720 = uitofp i32 %9700 to float
  %9721 = fadd fast float %9719, 5.000000e-01
  %9722 = fadd fast float %9720, 5.000000e-01
  %9723 = fmul fast float %9716, %9721
  %9724 = fmul fast float %9716, %9722
  %9725 = fadd fast float %9723, 0x3F0FFB4800000000
  %9726 = fadd fast float %9724, 0xBF0FFB4800000000
  %9727 = call float @dx.op.binary.f32(i32 35, float %9718, float %9725)  ; FMax(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9727, float %9726)  ; FMin(a,b)
  %9729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9730 = extractvalue %dx.types.CBufRet.f32 %9729, 1
  %9731 = extractvalue %dx.types.CBufRet.f32 %9729, 2
  %9732 = extractvalue %dx.types.CBufRet.f32 %9729, 0
  %9733 = select i1 %8235, float %9732, float 0.000000e+00
  %9734 = fmul fast float %9730, %9728
  %9735 = fadd fast float %9733, %9734
  %9736 = fadd fast float %9733, %9731
  %9737 = fsub fast float %9730, %9731
  %9738 = fadd fast float %9737, %9733
  %9739 = call float @dx.op.binary.f32(i32 35, float %9735, float %9736)  ; FMax(a,b)
  %9740 = call float @dx.op.binary.f32(i32 36, float %9739, float %9738)  ; FMin(a,b)
  %9741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9672, float %9673, float %9740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9742 = extractvalue %dx.types.ResRet.f32 %9741, 0
  %9743 = extractvalue %dx.types.ResRet.f32 %9741, 1
  %9744 = extractvalue %dx.types.ResRet.f32 %9741, 2
  %9745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.i32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.i32 %9745, 1
  %9748 = uitofp i32 %9746 to float
  %9749 = uitofp i32 %9747 to float
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 0
  %9752 = extractvalue %dx.types.CBufRet.f32 %9750, 1
  %9753 = fmul fast float %9748, %9672
  %9754 = fmul fast float %9749, %9673
  %9755 = fadd fast float %9753, -5.000000e-01
  %9756 = fadd fast float %9754, -5.000000e-01
  %9757 = call float @dx.op.unary.f32(i32 22, float %9755)  ; Frc(value)
  %9758 = call float @dx.op.unary.f32(i32 22, float %9756)  ; Frc(value)
  %9759 = fmul fast float %9757, %9757
  %9760 = fmul fast float %9759, %9757
  %9761 = fsub fast float 3.000000e+00, %9757
  %9762 = fmul fast float %9759, %9761
  %9763 = fmul fast float %9757, 3.000000e+00
  %9764 = fmul fast float %9760, 3.000000e+00
  %9765 = fmul fast float %9759, 6.000000e+00
  %9766 = fsub fast float %9764, %9765
  %9767 = fadd fast float %9766, 4.000000e+00
  %9768 = fmul fast float %9767, 0x3FC5555560000000
  %9769 = fmul fast float %9760, -3.000000e+00
  %9770 = fadd fast float %9759, %9757
  %9771 = fmul fast float %9770, 3.000000e+00
  %9772 = fadd fast float %9769, 1.000000e+00
  %9773 = fadd fast float %9772, %9771
  %9774 = fmul fast float %9760, 0x3FC5555560000000
  %9775 = fmul fast float %9758, %9758
  %9776 = fmul fast float %9775, %9758
  %9777 = fsub fast float 3.000000e+00, %9758
  %9778 = fmul fast float %9775, %9777
  %9779 = fmul fast float %9758, 3.000000e+00
  %9780 = fmul fast float %9776, 3.000000e+00
  %9781 = fmul fast float %9775, 6.000000e+00
  %9782 = fsub fast float %9780, %9781
  %9783 = fadd fast float %9782, 4.000000e+00
  %9784 = fmul fast float %9783, 0x3FC5555560000000
  %9785 = fmul fast float %9776, -3.000000e+00
  %9786 = fadd fast float %9775, %9758
  %9787 = fmul fast float %9786, 3.000000e+00
  %9788 = fadd fast float %9785, 1.000000e+00
  %9789 = fadd fast float %9788, %9787
  %9790 = fmul fast float %9776, 0x3FC5555560000000
  %9791 = fadd fast float %9757, 1.000000e+00
  %9792 = fsub fast float 1.000000e+00, %9763
  %9793 = fadd fast float %9792, %9762
  %9794 = fadd fast float %9793, %9767
  %9795 = fmul fast float %9794, 0x3FC5555560000000
  %9796 = fdiv fast float %9768, %9795
  %9797 = fsub fast float %9791, %9796
  %9798 = fsub fast float 1.000000e+00, %9757
  %9799 = fadd fast float %9773, %9760
  %9800 = fmul fast float %9799, 0x3FC5555560000000
  %9801 = fdiv fast float %9774, %9800
  %9802 = fadd fast float %9798, %9801
  %9803 = fadd fast float %9758, 1.000000e+00
  %9804 = fsub fast float 1.000000e+00, %9779
  %9805 = fadd fast float %9804, %9778
  %9806 = fadd fast float %9805, %9783
  %9807 = fmul fast float %9806, 0x3FC5555560000000
  %9808 = fdiv fast float %9784, %9807
  %9809 = fsub fast float %9803, %9808
  %9810 = fsub fast float 1.000000e+00, %9758
  %9811 = fadd fast float %9789, %9776
  %9812 = fmul fast float %9811, 0x3FC5555560000000
  %9813 = fdiv fast float %9790, %9812
  %9814 = fadd fast float %9813, %9810
  %9815 = fmul fast float %9797, %9751
  %9816 = fsub fast float %9672, %9815
  %9817 = fmul fast float %9802, %9751
  %9818 = fadd fast float %9817, %9672
  %9819 = fmul fast float %9814, %9752
  %9820 = fadd fast float %9819, %9673
  %9821 = fmul fast float %9809, %9752
  %9822 = fsub fast float %9673, %9821
  %9823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9816, float %9822, float %9740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9824 = extractvalue %dx.types.ResRet.f32 %9823, 0
  %9825 = extractvalue %dx.types.ResRet.f32 %9823, 1
  %9826 = extractvalue %dx.types.ResRet.f32 %9823, 2
  %9827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9818, float %9822, float %9740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9828 = extractvalue %dx.types.ResRet.f32 %9827, 0
  %9829 = extractvalue %dx.types.ResRet.f32 %9827, 1
  %9830 = extractvalue %dx.types.ResRet.f32 %9827, 2
  %9831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9816, float %9820, float %9740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9832 = extractvalue %dx.types.ResRet.f32 %9831, 0
  %9833 = extractvalue %dx.types.ResRet.f32 %9831, 1
  %9834 = extractvalue %dx.types.ResRet.f32 %9831, 2
  %9835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9818, float %9820, float %9740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9836 = extractvalue %dx.types.ResRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.ResRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.ResRet.f32 %9835, 2
  %9839 = fsub fast float %9832, %9824
  %9840 = fsub fast float %9833, %9825
  %9841 = fsub fast float %9834, %9826
  %9842 = fmul fast float %9839, %9812
  %9843 = fmul fast float %9840, %9812
  %9844 = fmul fast float %9841, %9812
  %9845 = fadd fast float %9842, %9824
  %9846 = fadd fast float %9843, %9825
  %9847 = fadd fast float %9844, %9826
  %9848 = fsub fast float %9836, %9828
  %9849 = fsub fast float %9837, %9829
  %9850 = fsub fast float %9838, %9830
  %9851 = fmul fast float %9848, %9812
  %9852 = fmul fast float %9849, %9812
  %9853 = fmul fast float %9850, %9812
  %9854 = fsub fast float %9828, %9845
  %9855 = fadd fast float %9854, %9851
  %9856 = fsub fast float %9829, %9846
  %9857 = fadd fast float %9856, %9852
  %9858 = fsub fast float %9830, %9847
  %9859 = fadd fast float %9858, %9853
  %9860 = fmul fast float %9855, %9800
  %9861 = fmul fast float %9857, %9800
  %9862 = fmul fast float %9859, %9800
  %9863 = fadd fast float %9860, %9845
  %9864 = fadd fast float %9861, %9846
  %9865 = fadd fast float %9862, %9847
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 1
  %9868 = fmul fast float %9863, %9867
  %9869 = fmul fast float %9864, %9867
  %9870 = fmul fast float %9865, %9867
  br label %9871

; <label>:9871                                    ; preds = %9702, %9659
  %9872 = phi float [ %9742, %9702 ], [ 1.000000e+00, %9659 ]
  %9873 = phi float [ %9743, %9702 ], [ 1.000000e+00, %9659 ]
  %9874 = phi float [ %9744, %9702 ], [ 1.000000e+00, %9659 ]
  %9875 = phi float [ %9868, %9702 ], [ 0.000000e+00, %9659 ]
  %9876 = phi float [ %9869, %9702 ], [ 0.000000e+00, %9659 ]
  %9877 = phi float [ %9870, %9702 ], [ 0.000000e+00, %9659 ]
  %9878 = fmul fast float %9875, %8213
  %9879 = fmul fast float %9876, %8213
  %9880 = fmul fast float %9877, %8213
  %9881 = fmul fast float %9872, %9666
  %9882 = call float @dx.op.dot3.f32(i32 55, float %9872, float %9873, float %9874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9883 = call float @dx.op.dot3.f32(i32 55, float %9878, float %9879, float %9880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9884 = select i1 %260, float %9882, float %9872
  %9885 = select i1 %260, float %9882, float %9873
  %9886 = select i1 %260, float 1.000000e+00, float %9874
  %9887 = select i1 %260, float %9883, float %9878
  %9888 = select i1 %260, float 0.000000e+00, float %9879
  %9889 = select i1 %260, float 0.000000e+00, float %9880
  %9890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.i32 %9890, 3
  %9892 = and i32 %9891, 3
  %9893 = icmp ne i32 %9892, 0
  %9894 = and i32 %9891, 4
  %9895 = icmp ne i32 %9894, 0
  %9896 = and i1 %9893, %9895
  %9897 = and i1 %260, %9896
  br i1 %9897, label %9898, label %9904

; <label>:9898                                    ; preds = %9871
  %9899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9900 = extractvalue %dx.types.CBufRet.f32 %9899, 1
  %9901 = fadd fast float %9881, -1.000000e+00
  %9902 = fmul fast float %9900, %9901
  %9903 = fadd fast float %9902, 1.000000e+00
  br label %9904

; <label>:9904                                    ; preds = %9898, %9871
  %9905 = phi float [ %9903, %9898 ], [ %9881, %9871 ]
  %9906 = fadd fast float %9663, %9660
  %9907 = fmul fast float %9884, %9906
  %9908 = fadd fast float %9907, %9887
  %9909 = fadd fast float %9664, %9661
  %9910 = fmul fast float %9885, %9909
  %9911 = fadd fast float %9910, %9888
  %9912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9912, 0
  br i1 %260, label %9914, label %9937

; <label>:9914                                    ; preds = %9904
  %9915 = fadd fast float %9908, %9911
  %9916 = fmul fast float %9913, %9915
  %9917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9918 = extractvalue %dx.types.CBufRet.f32 %9917, 3
  %9919 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %9920 = fsub fast float %8222, %8216
  %9921 = fadd fast float %9920, %8223
  %9922 = fsub fast float %9921, %9919
  %9923 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %9924 = fmul fast float %9922, %9923
  %9925 = call float @dx.op.unary.f32(i32 7, float %9924)  ; Saturate(value)
  %9926 = fsub fast float %9925, %9918
  %9927 = fmul fast float %9926, %9905
  %9928 = fadd fast float %9927, %9918
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 0
  %9931 = fsub fast float %9928, %9930
  %9932 = fmul fast float %9931, 1.000000e+01
  %9933 = call float @dx.op.unary.f32(i32 7, float %9932)  ; Saturate(value)
  %9934 = fmul fast float %9933, %8212
  %9935 = fadd fast float %9934, %8213
  %9936 = fmul fast float %9935, %9928
  br label %9961

; <label>:9937                                    ; preds = %9904
  %9938 = fadd fast float %9665, %9662
  %9939 = fmul fast float %9886, %9938
  %9940 = fadd fast float %9939, %9889
  %9941 = fmul fast float %9913, %9908
  %9942 = fmul fast float %9913, %9911
  %9943 = fmul fast float %9913, %9940
  %9944 = call float @dx.op.binary.f32(i32 35, float %9942, float %9943)  ; FMax(a,b)
  %9945 = call float @dx.op.binary.f32(i32 35, float %9941, float %9944)  ; FMax(a,b)
  %9946 = call float @dx.op.binary.f32(i32 35, float %9945, float %8213)  ; FMax(a,b)
  %9947 = fcmp fast ugt float %9946, 0x3F10000000000000
  br i1 %9947, label %9949, label %9948

; <label>:9948                                    ; preds = %9937
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9949

; <label>:9949                                    ; preds = %9948, %9937
  %9950 = add i32 %60, 356
  %9951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9950, i32 undef)  ; BufferLoad(srv,index,wot)
  %9952 = extractvalue %dx.types.ResRet.i32 %9951, 0
  %9953 = and i32 %9952, 32
  %9954 = icmp eq i32 %9953, 0
  br i1 %9954, label %9961, label %9955

; <label>:9955                                    ; preds = %9949
  %9956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9957 = extractvalue %dx.types.CBufRet.f32 %9956, 0
  %9958 = fmul fast float %9957, 0x3FE99999A0000000
  %9959 = fadd fast float %9957, %9941
  %9960 = fadd fast float %9958, %9943
  br label %9961

; <label>:9961                                    ; preds = %9955, %9949, %9914
  %9962 = phi float [ %9916, %9914 ], [ %9959, %9955 ], [ %9941, %9949 ]
  %9963 = phi float [ %9936, %9914 ], [ %9942, %9955 ], [ %9942, %9949 ]
  %9964 = phi float [ %9935, %9914 ], [ %9960, %9955 ], [ %9943, %9949 ]
  %9965 = phi float [ %9935, %9914 ], [ %8213, %9955 ], [ %8213, %9949 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9966 = call float @dx.op.binary.f32(i32 36, float %9962, float 3.225500e+04)  ; FMin(a,b)
  %9967 = call float @dx.op.binary.f32(i32 36, float %9963, float 3.225500e+04)  ; FMin(a,b)
  %9968 = call float @dx.op.binary.f32(i32 36, float %9964, float 3.225500e+04)  ; FMin(a,b)
  %9969 = call float @dx.op.binary.f32(i32 36, float %9965, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9968)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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

