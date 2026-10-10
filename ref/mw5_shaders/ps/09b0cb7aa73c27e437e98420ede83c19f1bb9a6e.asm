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
; shader hash: 78cd5cf41cf88dda91ed225acfd97736
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
  br i1 %510, label %1076, label %511

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
  %1034 = and i32 %1033, 14336
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1061, label %1036

; <label>:1036                                    ; preds = %1028
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 4096
  %1040 = icmp eq i32 %1039, 0
  br i1 %1040, label %1061, label %1041

; <label>:1041                                    ; preds = %1036
  %1042 = and i32 %1038, 1048576
  %1043 = icmp ne i32 %1042, 0
  %1044 = add i32 %60, 456
  %1045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.i32 %1045, 0
  %1047 = add i32 %1046, 0
  %1048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1048, %dx.types.Handle %111, float %610, float %611, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1051 = select i1 %1043, float 1.000000e+00, float %1050
  %1052 = add i32 %60, 164
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1054, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = fmul fast float %1056, %1051
  %1060 = fadd fast float %1059, %1058
  br label %1061

; <label>:1061                                    ; preds = %1041, %1036, %1028
  %1062 = phi float [ %1060, %1041 ], [ 0.000000e+00, %1036 ], [ 0.000000e+00, %1028 ]
  %1063 = add i32 %60, 96
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 255
  %1067 = uitofp i32 %1066 to float
  %1068 = lshr i32 %1065, 8
  %1069 = and i32 %1068, 255
  %1070 = uitofp i32 %1069 to float
  %1071 = call float @dx.op.dot3.f32(i32 55, float %901, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = fmul fast float %1070, %1071
  %1073 = fadd fast float %1072, %1067
  %1074 = fmul fast float %1073, 0x3F70101020000000
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  br label %1076

; <label>:1076                                    ; preds = %1061, %496
  %1077 = phi float [ 0.000000e+00, %496 ], [ %982, %1061 ]
  %1078 = phi float [ 0.000000e+00, %496 ], [ %983, %1061 ]
  %1079 = phi float [ 0.000000e+00, %496 ], [ %901, %1061 ]
  %1080 = phi float [ 0.000000e+00, %496 ], [ %902, %1061 ]
  %1081 = phi float [ 0.000000e+00, %496 ], [ %903, %1061 ]
  %1082 = phi float [ 0.000000e+00, %496 ], [ %1029, %1061 ]
  %1083 = phi float [ 0.000000e+00, %496 ], [ %1030, %1061 ]
  %1084 = phi float [ 0.000000e+00, %496 ], [ %1031, %1061 ]
  %1085 = phi float [ 0.000000e+00, %496 ], [ %887, %1061 ]
  %1086 = phi float [ 0.000000e+00, %496 ], [ %683, %1061 ]
  %1087 = phi float [ 0.000000e+00, %496 ], [ %981, %1061 ]
  %1088 = phi float [ 0.000000e+00, %496 ], [ %984, %1061 ]
  %1089 = phi float [ 0.000000e+00, %496 ], [ %1062, %1061 ]
  %1090 = phi float [ 0.000000e+00, %496 ], [ %1075, %1061 ]
  br i1 %444, label %1858, label %1091

; <label>:1091                                    ; preds = %1076
  %1092 = icmp ult i32 %502, 2
  %1093 = add i32 %60, 40
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %60, 44
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = or i32 %1098, %1095
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1858, label %1101

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
  %1144 = fmul fast float %354, %1143
  %1145 = call float @dx.op.unary.f32(i32 22, float %1144)  ; Frc(value)
  %1146 = fadd fast float %1145, %344
  %1147 = fmul fast float %355, %1143
  %1148 = call float @dx.op.unary.f32(i32 22, float %1147)  ; Frc(value)
  %1149 = fadd fast float %1148, %346
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
  %1205 = add i32 %60, 428
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
  %1221 = fsub fast float 1.000000e+00, %499
  %1222 = call float @dx.op.binary.f32(i32 35, float %1221, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1223 = bitcast float %499 to i32
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
  %1251 = phi float [ %1249, %1204 ], [ %499, %1199 ]
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = and i32 %1253, 128
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %1272, label %1256

; <label>:1256                                    ; preds = %1250
  %1257 = add i32 %60, 412
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
  br i1 %1274, label %1858, label %1275

; <label>:1275                                    ; preds = %1272
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 16
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1478, label %1280

; <label>:1280                                    ; preds = %1275
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = add i32 %60, 364
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
  %1306 = add i32 %60, 444
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
  %1332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1429 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %1430 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1431 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
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
  %1463 = fmul fast float %331, %331
  %1464 = fmul fast float %335, %335
  %1465 = fmul fast float %339, %339
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
  %1504 = add i32 %60, 380
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
  %1588 = add i32 %60, 396
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
  %1601 = fmul fast float %1598, %319
  %1602 = fmul fast float %1599, %322
  %1603 = fmul fast float %1600, %325
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
  %1615 = select i1 %260, float %1614, float %1611
  %1616 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1617 = select i1 %260, float 0.000000e+00, float %1611
  %1618 = select i1 %260, float %1616, float %1612
  %1619 = select i1 %260, float 0.000000e+00, float %1613
  br label %1620

; <label>:1620                                    ; preds = %1610, %1572
  %1621 = phi float [ %1617, %1610 ], [ 0.000000e+00, %1572 ]
  %1622 = phi float [ %1618, %1610 ], [ 0.000000e+00, %1572 ]
  %1623 = phi float [ %1619, %1610 ], [ 0.000000e+00, %1572 ]
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = and i32 %1625, 14336
  %1627 = icmp eq i32 %1626, 0
  br i1 %1627, label %1653, label %1628

; <label>:1628                                    ; preds = %1620
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 4096
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1653, label %1633

; <label>:1633                                    ; preds = %1628
  %1634 = and i32 %1630, 1048576
  %1635 = icmp ne i32 %1634, 0
  %1636 = add i32 %60, 460
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = add i32 %1638, 0
  %1640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1640, %dx.types.Handle %111, float %1200, float %1201, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 2
  %1643 = select i1 %1635, float 1.000000e+00, float %1642
  %1644 = add i32 %60, 180
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = and i32 %1646, 65535
  %1648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1647)  ; LegacyF16ToF32(value)
  %1649 = lshr i32 %1646, 16
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = fmul fast float %1648, %1643
  %1652 = fadd fast float %1651, %1650
  br label %1653

; <label>:1653                                    ; preds = %1633, %1628, %1620
  %1654 = phi float [ %1652, %1633 ], [ 0.000000e+00, %1628 ], [ 0.000000e+00, %1620 ]
  %1655 = add i32 %60, 112
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 255
  %1659 = uitofp i32 %1658 to float
  %1660 = lshr i32 %1657, 8
  %1661 = and i32 %1660, 255
  %1662 = uitofp i32 %1661 to float
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1494, float %1495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = fmul fast float %1662, %1663
  %1665 = fadd fast float %1664, %1659
  %1666 = fmul fast float %1665, 0x3F70101020000000
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  br i1 %1092, label %1668, label %1676

; <label>:1668                                    ; preds = %1653
  %1669 = fsub fast float 1.000000e+00, %1273
  %1670 = fmul fast float %1669, %1079
  %1671 = fmul fast float %1669, %1080
  %1672 = fmul fast float %1669, %1081
  %1673 = fmul fast float %1669, %1082
  %1674 = fmul fast float %1669, %1083
  %1675 = fmul fast float %1669, %1084
  br label %1676

; <label>:1676                                    ; preds = %1668, %1653
  %1677 = phi float [ %1670, %1668 ], [ %1079, %1653 ]
  %1678 = phi float [ %1671, %1668 ], [ %1080, %1653 ]
  %1679 = phi float [ %1672, %1668 ], [ %1081, %1653 ]
  %1680 = phi float [ %1673, %1668 ], [ %1082, %1653 ]
  %1681 = phi float [ %1674, %1668 ], [ %1083, %1653 ]
  %1682 = phi float [ %1675, %1668 ], [ %1084, %1653 ]
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 3
  %1686 = icmp eq i32 %1685, 3
  br i1 %1686, label %1765, label %1687

; <label>:1687                                    ; preds = %1676
  %1688 = and i32 %1684, 16
  %1689 = icmp ne i32 %1688, 0
  %1690 = select i1 %1689, float %1273, float 0.000000e+00
  %1691 = icmp eq i32 %1685, 0
  br i1 %1691, label %1692, label %1720

; <label>:1692                                    ; preds = %1687
  %1693 = and i32 %1684, 64
  %1694 = icmp ne i32 %1693, 0
  %1695 = select i1 %1694, float %1273, float 0.000000e+00
  %1696 = fsub fast float %1493, %1677
  %1697 = fsub fast float %1494, %1678
  %1698 = fsub fast float %1495, %1679
  %1699 = fmul fast float %1690, %1696
  %1700 = fmul fast float %1690, %1697
  %1701 = fmul fast float %1690, %1698
  %1702 = fadd fast float %1699, %1677
  %1703 = fadd fast float %1700, %1678
  %1704 = fadd fast float %1701, %1679
  %1705 = fsub fast float %1479, %1085
  %1706 = fmul fast float %1690, %1705
  %1707 = fadd fast float %1706, %1085
  %1708 = fsub fast float %1621, %1680
  %1709 = fsub fast float %1622, %1681
  %1710 = fsub fast float %1623, %1682
  %1711 = fmul fast float %1695, %1708
  %1712 = fmul fast float %1695, %1709
  %1713 = fmul fast float %1695, %1710
  %1714 = fadd fast float %1711, %1680
  %1715 = fadd fast float %1712, %1681
  %1716 = fadd fast float %1713, %1682
  %1717 = fsub fast float %1667, %1090
  %1718 = fmul fast float %1690, %1717
  %1719 = fadd fast float %1718, %1090
  br label %1765

; <label>:1720                                    ; preds = %1687
  %1721 = icmp eq i32 %1685, 1
  br i1 %1721, label %1722, label %1735

; <label>:1722                                    ; preds = %1720
  %1723 = fadd fast float %1493, -1.000000e+00
  %1724 = fadd fast float %1494, -1.000000e+00
  %1725 = fadd fast float %1495, -1.000000e+00
  %1726 = fmul fast float %1690, %1723
  %1727 = fmul fast float %1690, %1724
  %1728 = fmul fast float %1690, %1725
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fadd fast float %1727, 1.000000e+00
  %1731 = fadd fast float %1728, 1.000000e+00
  %1732 = fmul fast float %1729, %1677
  %1733 = fmul fast float %1730, %1678
  %1734 = fmul fast float %1731, %1679
  br label %1765

; <label>:1735                                    ; preds = %1720
  %1736 = icmp eq i32 %1685, 2
  br i1 %1736, label %1737, label %1765

; <label>:1737                                    ; preds = %1735
  %1738 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1739 = call float @dx.op.unary.f32(i32 24, float %1494)  ; Sqrt(value)
  %1740 = call float @dx.op.unary.f32(i32 24, float %1495)  ; Sqrt(value)
  %1741 = fadd fast float %1738, -5.000000e-01
  %1742 = fadd fast float %1739, -5.000000e-01
  %1743 = fadd fast float %1740, -5.000000e-01
  %1744 = fmul fast float %1741, %1690
  %1745 = fmul fast float %1742, %1690
  %1746 = fmul fast float %1743, %1690
  %1747 = fadd fast float %1744, 5.000000e-01
  %1748 = fadd fast float %1745, 5.000000e-01
  %1749 = fadd fast float %1746, 5.000000e-01
  %1750 = fmul fast float %1747, 2.000000e+00
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = fmul fast float %1751, %1677
  %1753 = fadd fast float %1752, %1750
  %1754 = fmul fast float %1753, %1677
  %1755 = fmul fast float %1748, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1678
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1678
  %1760 = fmul fast float %1749, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1679
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1679
  br label %1765

; <label>:1765                                    ; preds = %1737, %1735, %1722, %1692, %1676
  %1766 = phi float [ %1677, %1676 ], [ %1754, %1737 ], [ %1677, %1735 ], [ %1732, %1722 ], [ %1702, %1692 ]
  %1767 = phi float [ %1678, %1676 ], [ %1759, %1737 ], [ %1678, %1735 ], [ %1733, %1722 ], [ %1703, %1692 ]
  %1768 = phi float [ %1679, %1676 ], [ %1764, %1737 ], [ %1679, %1735 ], [ %1734, %1722 ], [ %1704, %1692 ]
  %1769 = phi float [ %1680, %1676 ], [ %1680, %1737 ], [ %1680, %1735 ], [ %1680, %1722 ], [ %1714, %1692 ]
  %1770 = phi float [ %1681, %1676 ], [ %1681, %1737 ], [ %1681, %1735 ], [ %1681, %1722 ], [ %1715, %1692 ]
  %1771 = phi float [ %1682, %1676 ], [ %1682, %1737 ], [ %1682, %1735 ], [ %1682, %1722 ], [ %1716, %1692 ]
  %1772 = phi float [ %1085, %1676 ], [ %1085, %1737 ], [ %1085, %1735 ], [ %1085, %1722 ], [ %1707, %1692 ]
  %1773 = phi float [ %1090, %1676 ], [ %1090, %1737 ], [ %1090, %1735 ], [ %1090, %1722 ], [ %1719, %1692 ]
  %1774 = and i32 %1684, 12
  %1775 = icmp eq i32 %1774, 12
  br i1 %1775, label %1858, label %1776

; <label>:1776                                    ; preds = %1765
  %1777 = and i32 %1684, 2097184
  %1778 = icmp eq i32 %1777, 2097184
  %1779 = select i1 %1778, float %1273, float 0.000000e+00
  %1780 = and i32 %1684, 4194336
  %1781 = icmp eq i32 %1780, 4194336
  %1782 = select i1 %1781, float %1273, float 0.000000e+00
  %1783 = and i32 %1684, 8388640
  %1784 = icmp eq i32 %1783, 8388640
  %1785 = select i1 %1784, float %1273, float 0.000000e+00
  %1786 = and i32 %1684, 4096
  %1787 = icmp ne i32 %1786, 0
  %1788 = select i1 %1787, float %1273, float 0.000000e+00
  %1789 = icmp eq i32 %1774, 0
  br i1 %1789, label %1790, label %1806

; <label>:1790                                    ; preds = %1776
  %1791 = fsub fast float %1574, %1077
  %1792 = fsub fast float %1575, %1078
  %1793 = fmul fast float %1779, %1791
  %1794 = fmul fast float %1779, %1792
  %1795 = fadd fast float %1793, %1077
  %1796 = fadd fast float %1794, %1078
  %1797 = fsub fast float %1576, %1088
  %1798 = fmul fast float %1782, %1797
  %1799 = fadd fast float %1798, %1088
  %1800 = fsub fast float %1573, %1087
  %1801 = fmul fast float %1785, %1800
  %1802 = fadd fast float %1801, %1087
  %1803 = fsub fast float %1654, %1089
  %1804 = fmul fast float %1788, %1803
  %1805 = fadd fast float %1804, %1089
  br label %1858

; <label>:1806                                    ; preds = %1776
  %1807 = icmp eq i32 %1774, 4
  br i1 %1807, label %1808, label %1842

; <label>:1808                                    ; preds = %1806
  %1809 = fmul fast float %1779, %1574
  %1810 = fmul fast float %1779, %1575
  %1811 = fadd fast float %1809, %1077
  %1812 = fadd fast float %1810, %1078
  %1813 = call float @dx.op.binary.f32(i32 36, float %1088, float %1576)  ; FMin(a,b)
  %1814 = fsub fast float %1813, %1088
  %1815 = fmul fast float %1814, %1782
  %1816 = fadd fast float %1815, %1088
  %1817 = fadd fast float %1573, %1087
  %1818 = fmul fast float %1817, 0x3FF337FAE0000000
  %1819 = fmul fast float %1087, %1087
  %1820 = fmul fast float %1573, %1573
  %1821 = fadd fast float %1820, %1819
  %1822 = fmul fast float %1821, 0x3FE5152B00000000
  %1823 = fmul fast float %1087, 0xBFCC1F85E0000000
  %1824 = fmul fast float %1823, %1573
  %1825 = fadd fast float %1824, 0xBFE1363700000000
  %1826 = fadd fast float %1825, %1818
  %1827 = fsub fast float %1826, %1822
  %1828 = fmul fast float %1817, 0x3FBA6F0D00000000
  %1829 = fmul fast float %1821, 0x3FD0432880000000
  %1830 = fmul fast float %1087, 0xBFEF110800000000
  %1831 = fmul fast float %1830, %1573
  %1832 = fadd fast float %1831, 1.000000e+00
  %1833 = fsub fast float %1832, %1828
  %1834 = fadd fast float %1833, %1829
  %1835 = fdiv fast float %1827, %1834
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = fsub fast float %1836, %1087
  %1838 = fmul fast float %1837, %1785
  %1839 = fadd fast float %1838, %1087
  %1840 = fmul fast float %1788, %1654
  %1841 = fadd fast float %1840, %1089
  br label %1858

; <label>:1842                                    ; preds = %1806
  %1843 = icmp eq i32 %1774, 8
  br i1 %1843, label %1844, label %1858

; <label>:1844                                    ; preds = %1842
  %1845 = fmul fast float %1779, %1574
  %1846 = fmul fast float %1779, %1575
  %1847 = fadd fast float %1845, %1077
  %1848 = fadd fast float %1846, %1078
  %1849 = call float @dx.op.binary.f32(i32 36, float %1088, float %1576)  ; FMin(a,b)
  %1850 = fsub fast float %1849, %1088
  %1851 = fmul fast float %1850, %1782
  %1852 = fadd fast float %1851, %1088
  %1853 = fsub fast float %1573, %1087
  %1854 = fmul fast float %1785, %1853
  %1855 = fadd fast float %1854, %1087
  %1856 = fmul fast float %1788, %1654
  %1857 = fadd fast float %1856, %1089
  br label %1858

; <label>:1858                                    ; preds = %1844, %1842, %1808, %1790, %1765, %1272, %1091, %1076
  %1859 = phi float [ %1077, %1765 ], [ %1077, %1272 ], [ %1077, %1076 ], [ %1847, %1844 ], [ %1077, %1842 ], [ %1811, %1808 ], [ %1795, %1790 ], [ %1077, %1091 ]
  %1860 = phi float [ %1078, %1765 ], [ %1078, %1272 ], [ %1078, %1076 ], [ %1848, %1844 ], [ %1078, %1842 ], [ %1812, %1808 ], [ %1796, %1790 ], [ %1078, %1091 ]
  %1861 = phi float [ %1766, %1765 ], [ %1079, %1272 ], [ %1079, %1076 ], [ %1766, %1844 ], [ %1766, %1842 ], [ %1766, %1808 ], [ %1766, %1790 ], [ %1079, %1091 ]
  %1862 = phi float [ %1767, %1765 ], [ %1080, %1272 ], [ %1080, %1076 ], [ %1767, %1844 ], [ %1767, %1842 ], [ %1767, %1808 ], [ %1767, %1790 ], [ %1080, %1091 ]
  %1863 = phi float [ %1768, %1765 ], [ %1081, %1272 ], [ %1081, %1076 ], [ %1768, %1844 ], [ %1768, %1842 ], [ %1768, %1808 ], [ %1768, %1790 ], [ %1081, %1091 ]
  %1864 = phi float [ %1769, %1765 ], [ %1082, %1272 ], [ %1082, %1076 ], [ %1769, %1844 ], [ %1769, %1842 ], [ %1769, %1808 ], [ %1769, %1790 ], [ %1082, %1091 ]
  %1865 = phi float [ %1770, %1765 ], [ %1083, %1272 ], [ %1083, %1076 ], [ %1770, %1844 ], [ %1770, %1842 ], [ %1770, %1808 ], [ %1770, %1790 ], [ %1083, %1091 ]
  %1866 = phi float [ %1771, %1765 ], [ %1084, %1272 ], [ %1084, %1076 ], [ %1771, %1844 ], [ %1771, %1842 ], [ %1771, %1808 ], [ %1771, %1790 ], [ %1084, %1091 ]
  %1867 = phi float [ %1772, %1765 ], [ %1085, %1272 ], [ %1085, %1076 ], [ %1772, %1844 ], [ %1772, %1842 ], [ %1772, %1808 ], [ %1772, %1790 ], [ %1085, %1091 ]
  %1868 = phi float [ %1087, %1765 ], [ %1087, %1272 ], [ %1087, %1076 ], [ %1855, %1844 ], [ %1087, %1842 ], [ %1839, %1808 ], [ %1802, %1790 ], [ %1087, %1091 ]
  %1869 = phi float [ %1088, %1765 ], [ %1088, %1272 ], [ %1088, %1076 ], [ %1852, %1844 ], [ %1088, %1842 ], [ %1816, %1808 ], [ %1799, %1790 ], [ %1088, %1091 ]
  %1870 = phi float [ %1089, %1765 ], [ %1089, %1272 ], [ %1089, %1076 ], [ %1857, %1844 ], [ %1089, %1842 ], [ %1841, %1808 ], [ %1805, %1790 ], [ %1089, %1091 ]
  %1871 = phi float [ %1773, %1765 ], [ %1090, %1272 ], [ %1090, %1076 ], [ %1773, %1844 ], [ %1773, %1842 ], [ %1773, %1808 ], [ %1773, %1790 ], [ %1090, %1091 ]
  br i1 %446, label %2639, label %1872

; <label>:1872                                    ; preds = %1858
  %1873 = icmp ult i32 %502, 3
  %1874 = add i32 %60, 56
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = add i32 %60, 60
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = or i32 %1879, %1876
  %1881 = icmp eq i32 %1880, 0
  br i1 %1881, label %2639, label %1882

; <label>:1882                                    ; preds = %1872
  %1883 = and i32 %1876, 262144
  %1884 = icmp ne i32 %1883, 0
  %1885 = select i1 %1884, float %65, float 1.000000e+00
  %1886 = select i1 %1884, float %66, float 0.000000e+00
  %1887 = select i1 %1884, float %67, float 0.000000e+00
  %1888 = select i1 %1884, float %68, float 1.000000e+00
  %1889 = select i1 %1884, float %69, float %92
  %1890 = select i1 %1884, float %70, float %93
  %1891 = add i32 %60, 316
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = lshr i32 %1893, 16
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = fmul fast float %1895, 0x3F50624DE0000000
  %1897 = add i32 %60, 120
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = lshr i32 %1899, 16
  %1901 = and i32 %1900, 255
  %1902 = lshr i32 %1899, 24
  %1903 = add i32 %60, 324
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = lshr i32 %1905, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = add i32 %60, 64
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = lshr i32 %1912, 22
  %1914 = shl nuw nsw i32 %1913, 5
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = shl i32 %1912, 4
  %1917 = and i32 %1916, 32752
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = lshr i32 %1912, 7
  %1920 = and i32 %1919, 32752
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1923 = extractvalue %dx.types.CBufRet.f32 %1922, 3
  %1924 = fmul fast float %1923, 1.000000e+03
  %1925 = fmul fast float %396, %1924
  %1926 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1927 = fadd fast float %1926, %386
  %1928 = fmul fast float %397, %1924
  %1929 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1930 = fadd fast float %1929, %388
  %1931 = fmul fast float %1896, %1924
  %1932 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1933 = fmul fast float %1932, 0x401921FB60000000
  %1934 = fadd fast float %1933, %1915
  %1935 = call float @dx.op.unary.f32(i32 13, float %1934)  ; Sin(value)
  %1936 = call float @dx.op.unary.f32(i32 12, float %1934)  ; Cos(value)
  %1937 = fsub fast float -0.000000e+00, %1935
  %1938 = fadd fast float %1889, -5.000000e-01
  %1939 = fadd fast float %1890, -5.000000e-01
  %1940 = fmul fast float %1907, %1938
  %1941 = fmul fast float %1909, %1939
  %1942 = fadd fast float %1940, 5.000000e-01
  %1943 = fadd fast float %1941, 5.000000e-01
  %1944 = fmul fast float %1918, %1942
  %1945 = fmul fast float %1921, %1943
  %1946 = fmul fast float %1936, %1944
  %1947 = call float @dx.op.tertiary.f32(i32 46, float %1937, float %1945, float %1946)  ; FMad(a,b,c)
  %1948 = fmul fast float %1935, %1944
  %1949 = call float @dx.op.tertiary.f32(i32 46, float %1936, float %1945, float %1948)  ; FMad(a,b,c)
  %1950 = fadd fast float %1927, %1947
  %1951 = fadd fast float %1930, %1949
  %1952 = icmp ugt i32 %1901, 1
  %1953 = icmp ugt i32 %1899, 33554431
  %1954 = or i1 %1953, %1952
  br i1 %1954, label %1955, label %1980

; <label>:1955                                    ; preds = %1882
  %1956 = add i32 %60, 260
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = lshr i32 %1958, 16
  %1960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1959)  ; LegacyF16ToF32(value)
  %1961 = fmul fast float %1923, %1960
  %1962 = call float @dx.op.unary.f32(i32 22, float %1961)  ; Frc(value)
  %1963 = mul nuw nsw i32 %1901, %1902
  %1964 = uitofp i32 %1963 to float
  %1965 = fmul fast float %1962, %1964
  %1966 = call float @dx.op.unary.f32(i32 27, float %1965)  ; Round_ni(value)
  %1967 = fptoui float %1966 to i32
  %1968 = urem i32 %1967, %1901
  %1969 = udiv i32 %1967, %1902
  %1970 = call float @dx.op.unary.f32(i32 22, float %1950)  ; Frc(value)
  %1971 = call float @dx.op.unary.f32(i32 22, float %1951)  ; Frc(value)
  %1972 = uitofp i32 %1968 to float
  %1973 = uitofp i32 %1969 to float
  %1974 = fadd fast float %1970, %1972
  %1975 = fadd fast float %1971, %1973
  %1976 = uitofp i32 %1901 to float
  %1977 = uitofp i32 %1902 to float
  %1978 = fdiv fast float %1974, %1976
  %1979 = fdiv fast float %1975, %1977
  br label %1980

; <label>:1980                                    ; preds = %1955, %1882
  %1981 = phi float [ %1978, %1955 ], [ %1950, %1882 ]
  %1982 = phi float [ %1979, %1955 ], [ %1951, %1882 ]
  %1983 = and i32 %1876, 256
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %2031, label %1985

; <label>:1985                                    ; preds = %1980
  %1986 = add i32 %60, 432
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %1988, 0
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1989, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1990, %dx.types.Handle %111, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = add i32 %60, 132
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = shl i32 %1995, 4
  %1997 = and i32 %1996, 32752
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = lshr i32 %1995, 7
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fsub fast float 1.000000e+00, %498
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2004 = bitcast float %498 to i32
  %2005 = sitofp i32 %2004 to float
  %2006 = fadd fast float %2005, 0xC1CFBF8940000000
  %2007 = fmul fast float %2001, %2006
  %2008 = fadd fast float %2007, 0x41CFBF8940000000
  %2009 = fptosi float %2008 to i32
  %2010 = bitcast i32 %2009 to float
  %2011 = bitcast float %2003 to i32
  %2012 = sitofp i32 %2011 to float
  %2013 = fadd fast float %2012, 0xC1CFBF8940000000
  %2014 = fmul fast float %2013, %2001
  %2015 = fadd fast float %2014, 0x41CFBF8940000000
  %2016 = fptosi float %2015 to i32
  %2017 = bitcast i32 %2016 to float
  %2018 = fmul fast float %2010, %1998
  %2019 = fmul fast float %2017, %1998
  %2020 = fsub fast float %2003, %2018
  %2021 = fadd fast float %2019, %2003
  %2022 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2023 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2024 = fsub fast float %1992, %2022
  %2025 = fsub fast float %2023, %2022
  %2026 = bitcast float %2025 to i32
  %2027 = sub nsw i32 2129859010, %2026
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %2028, %2024
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  br label %2031

; <label>:2031                                    ; preds = %1985, %1980
  %2032 = phi float [ %2030, %1985 ], [ %498, %1980 ]
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 128
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2053, label %2037

; <label>:2037                                    ; preds = %2031
  %2038 = add i32 %60, 416
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %2040, 0
  %2042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2042, %dx.types.Handle %111, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 524288
  %2048 = icmp ne i32 %2047, 0
  %2049 = fcmp fast ogt float %2044, 0x3FE0101020000000
  %2050 = select i1 %2049, float 1.000000e+00, float 0.000000e+00
  %2051 = select i1 %2048, float %2050, float %2044
  %2052 = fmul fast float %2051, %2032
  br label %2053

; <label>:2053                                    ; preds = %2037, %2031
  %2054 = phi float [ %2052, %2037 ], [ %2032, %2031 ]
  %2055 = fcmp fast ult float %2054, 0x3F70101020000000
  br i1 %2055, label %2639, label %2056

; <label>:2056                                    ; preds = %2053
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = and i32 %2058, 16
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2259, label %2061

; <label>:2061                                    ; preds = %2056
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %60, 368
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %2066, 0
  %2068 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2067, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2069 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2068, %dx.types.Handle %110, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = extractvalue %dx.types.ResRet.f32 %2069, 3
  %2074 = and i32 %2063, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = lshr i32 %2063, 8
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2073, %2075
  %2080 = fadd fast float %2079, %2078
  %2081 = fmul fast float %2080, 0x3F70101000000000
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 512
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2094, label %2086

; <label>:2086                                    ; preds = %2061
  %2087 = add i32 %60, 448
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2091, %dx.types.Handle %111, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  br label %2094

; <label>:2094                                    ; preds = %2086, %2061
  %2095 = phi float [ %2093, %2086 ], [ 1.000000e+00, %2061 ]
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 33554432
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2206, label %2100

; <label>:2100                                    ; preds = %2094
  %2101 = add i32 %60, 256
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = and i32 %2103, 65535
  %2105 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2104)  ; LegacyF16ToF32(value)
  %2106 = lshr i32 %2103, 16
  %2107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2106)  ; LegacyF16ToF32(value)
  %2108 = add i32 %60, 260
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 65535
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = lshr i32 %2114, 24
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2116, 0x3F70101020000000
  %2118 = and i32 %2114, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2114, 8
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = lshr i32 %2114, 16
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = add i32 %60, 252
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2129, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = lshr i32 %2131, 24
  %2133 = uitofp i32 %2132 to float
  %2134 = fmul fast float %2133, 0x3F70101020000000
  %2135 = and i32 %2131, 255
  %2136 = uitofp i32 %2135 to float
  %2137 = fmul fast float %2136, 0x3F70101020000000
  %2138 = lshr i32 %2131, 8
  %2139 = and i32 %2138, 255
  %2140 = uitofp i32 %2139 to float
  %2141 = fmul fast float %2140, 0x3F70101020000000
  %2142 = lshr i32 %2131, 16
  %2143 = and i32 %2142, 255
  %2144 = uitofp i32 %2143 to float
  %2145 = fmul fast float %2144, 0x3F70101020000000
  %2146 = bitcast float %2070 to i32
  %2147 = ashr i32 %2146, 1
  %2148 = sub nsw i32 1597463174, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2070, 5.000000e-01
  %2151 = fmul fast float %2149, %2149
  %2152 = fmul fast float %2151, %2150
  %2153 = fsub fast float 1.500000e+00, %2152
  %2154 = fmul fast float %2149, %2070
  %2155 = fmul fast float %2154, %2153
  %2156 = bitcast float %2071 to i32
  %2157 = ashr i32 %2156, 1
  %2158 = sub nsw i32 1597463174, %2157
  %2159 = bitcast i32 %2158 to float
  %2160 = fmul fast float %2071, 5.000000e-01
  %2161 = fmul fast float %2159, %2159
  %2162 = fmul fast float %2161, %2160
  %2163 = fsub fast float 1.500000e+00, %2162
  %2164 = fmul fast float %2159, %2071
  %2165 = fmul fast float %2164, %2163
  %2166 = bitcast float %2072 to i32
  %2167 = ashr i32 %2166, 1
  %2168 = sub nsw i32 1597463174, %2167
  %2169 = bitcast i32 %2168 to float
  %2170 = fmul fast float %2072, 5.000000e-01
  %2171 = fmul fast float %2169, %2169
  %2172 = fmul fast float %2171, %2170
  %2173 = fsub fast float 1.500000e+00, %2172
  %2174 = fmul fast float %2169, %2072
  %2175 = fmul fast float %2174, %2173
  %2176 = fsub fast float %2155, %2137
  %2177 = fsub fast float %2165, %2141
  %2178 = fsub fast float %2175, %2145
  %2179 = fmul fast float %2176, %2105
  %2180 = fmul fast float %2177, %2107
  %2181 = fmul fast float %2178, %2112
  %2182 = fadd fast float %2179, %2120
  %2183 = fadd fast float %2180, %2124
  %2184 = fadd fast float %2181, %2128
  %2185 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2186 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = fmul fast float %2185, %2185
  %2189 = fmul fast float %2186, %2186
  %2190 = fmul fast float %2187, %2187
  %2191 = fsub fast float %2188, %2070
  %2192 = fsub fast float %2189, %2071
  %2193 = fsub fast float %2190, %2072
  %2194 = fmul fast float %2191, %2095
  %2195 = fmul fast float %2192, %2095
  %2196 = fmul fast float %2193, %2095
  %2197 = fadd fast float %2194, %2070
  %2198 = fadd fast float %2195, %2071
  %2199 = fadd fast float %2196, %2072
  %2200 = fadd fast float %2117, %2081
  %2201 = fsub fast float %2200, %2134
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fsub fast float %2202, %2081
  %2204 = fmul fast float %2203, %2095
  %2205 = fadd fast float %2204, %2081
  br label %2259

; <label>:2206                                    ; preds = %2094
  %2207 = and i32 %2097, 134217728
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2243, label %2209

; <label>:2209                                    ; preds = %2206
  %2210 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %2211 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2212 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2213 = fadd fast float %2210, -5.000000e-01
  %2214 = fadd fast float %2211, -5.000000e-01
  %2215 = fadd fast float %2212, -5.000000e-01
  %2216 = fmul fast float %2213, %2095
  %2217 = fmul fast float %2214, %2095
  %2218 = fmul fast float %2215, %2095
  %2219 = fadd fast float %2216, 5.000000e-01
  %2220 = fadd fast float %2217, 5.000000e-01
  %2221 = fadd fast float %2218, 5.000000e-01
  %2222 = call float @dx.op.unary.f32(i32 24, float %2070)  ; Sqrt(value)
  %2223 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2224 = call float @dx.op.unary.f32(i32 24, float %2072)  ; Sqrt(value)
  %2225 = fmul fast float %2219, 2.000000e+00
  %2226 = fsub fast float 1.000000e+00, %2225
  %2227 = fmul fast float %2226, %2222
  %2228 = fadd fast float %2227, %2225
  %2229 = fmul fast float %2228, %2222
  %2230 = fmul fast float %2220, 2.000000e+00
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2231, %2223
  %2233 = fadd fast float %2232, %2230
  %2234 = fmul fast float %2233, %2223
  %2235 = fmul fast float %2221, 2.000000e+00
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2224
  %2238 = fadd fast float %2237, %2235
  %2239 = fmul fast float %2238, %2224
  %2240 = fmul fast float %2229, %2229
  %2241 = fmul fast float %2234, %2234
  %2242 = fmul fast float %2239, %2239
  br label %2259

; <label>:2243                                    ; preds = %2206
  %2244 = fmul fast float %373, %373
  %2245 = fmul fast float %377, %377
  %2246 = fmul fast float %381, %381
  %2247 = fadd fast float %2244, -1.000000e+00
  %2248 = fadd fast float %2245, -1.000000e+00
  %2249 = fadd fast float %2246, -1.000000e+00
  %2250 = fmul fast float %2095, %2247
  %2251 = fmul fast float %2095, %2248
  %2252 = fmul fast float %2095, %2249
  %2253 = fadd fast float %2250, 1.000000e+00
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fadd fast float %2252, 1.000000e+00
  %2256 = fmul fast float %2253, %2070
  %2257 = fmul fast float %2254, %2071
  %2258 = fmul fast float %2255, %2072
  br label %2259

; <label>:2259                                    ; preds = %2243, %2209, %2100, %2056
  %2260 = phi float [ %2205, %2100 ], [ %2081, %2209 ], [ %2081, %2243 ], [ 0x3FA23C0BE0000000, %2056 ]
  %2261 = phi float [ %2197, %2100 ], [ %2240, %2209 ], [ %2256, %2243 ], [ 1.000000e+00, %2056 ]
  %2262 = phi float [ %2198, %2100 ], [ %2241, %2209 ], [ %2257, %2243 ], [ 1.000000e+00, %2056 ]
  %2263 = phi float [ %2199, %2100 ], [ %2242, %2209 ], [ %2258, %2243 ], [ 1.000000e+00, %2056 ]
  %2264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.i32 %2264, 1
  %2266 = and i32 %2265, 1
  %2267 = icmp ne i32 %2266, 0
  %2268 = add i32 %60, 356
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 32
  %2272 = icmp ne i32 %2271, 0
  %2273 = and i1 %2267, %2272
  %2274 = select i1 %2273, float 1.000000e+00, float %2261
  %2275 = select i1 %2273, float 0x3FD3333340000000, float %2262
  %2276 = select i1 %2273, float 0x3FD3333340000000, float %2263
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 32
  %2280 = icmp eq i32 %2279, 0
  br i1 %2280, label %2353, label %2281

; <label>:2281                                    ; preds = %2259
  %2282 = add i32 %60, 124
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = add i32 %60, 384
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %2287, 0
  %2289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2289, %dx.types.Handle %110, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = extractvalue %dx.types.ResRet.f32 %2290, 3
  %2295 = and i32 %2284, 255
  %2296 = uitofp i32 %2295 to float
  %2297 = lshr i32 %2284, 8
  %2298 = and i32 %2297, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = lshr i32 %2284, 16
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2302, 0x3F70101000000000
  %2304 = fmul fast float %2291, %2296
  %2305 = fadd fast float %2304, %2299
  %2306 = fmul fast float %2305, 0x3F70101000000000
  %2307 = fadd fast float %2292, -5.000000e-01
  %2308 = fadd fast float %2294, -5.000000e-01
  %2309 = fmul fast float %2307, %2303
  %2310 = fmul fast float %2308, %2303
  %2311 = fadd fast float %2309, 5.000000e-01
  %2312 = fadd fast float %2310, 5.000000e-01
  %2313 = fmul fast float %2311, 2.000000e+00
  %2314 = fadd fast float %2313, -1.000000e+00
  %2315 = fmul fast float %2312, 2.000000e+00
  %2316 = fadd fast float %2315, -1.000000e+00
  %2317 = fadd fast float %2314, %2316
  %2318 = fmul fast float %2317, 5.000000e-01
  %2319 = fsub fast float %2314, %2316
  %2320 = fmul fast float %2319, 5.000000e-01
  %2321 = call float @dx.op.unary.f32(i32 6, float %2318)  ; FAbs(value)
  %2322 = fsub fast float 1.000000e+00, %2321
  %2323 = call float @dx.op.unary.f32(i32 6, float %2320)  ; FAbs(value)
  %2324 = fsub fast float %2322, %2323
  %2325 = call float @dx.op.dot3.f32(i32 55, float %2318, float %2320, float %2324, float %2318, float %2320, float %2324)  ; Dot3(ax,ay,az,bx,by,bz)
  %2326 = call float @dx.op.unary.f32(i32 25, float %2325)  ; Rsqrt(value)
  %2327 = fmul fast float %2318, %2326
  %2328 = fmul fast float %2320, %2326
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 67108864
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2349, label %2333

; <label>:2333                                    ; preds = %2281
  %2334 = add i32 %60, 312
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 65535
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = lshr i32 %2336, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = fsub fast float %2306, %2344
  %2346 = fmul fast float %2345, %2338
  %2347 = fadd fast float %2346, %2342
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  br label %2349

; <label>:2349                                    ; preds = %2333, %2281
  %2350 = phi float [ %2348, %2333 ], [ %2306, %2281 ]
  %2351 = call float @dx.op.dot2.f32(i32 54, float %2327, float %2328, float %1885, float %1886)  ; Dot2(ax,ay,bx,by)
  %2352 = call float @dx.op.dot2.f32(i32 54, float %2327, float %2328, float %1887, float %1888)  ; Dot2(ax,ay,bx,by)
  br label %2353

; <label>:2353                                    ; preds = %2349, %2259
  %2354 = phi float [ %2350, %2349 ], [ 0x3FD6666660000000, %2259 ]
  %2355 = phi float [ %2351, %2349 ], [ 0.000000e+00, %2259 ]
  %2356 = phi float [ %2352, %2349 ], [ 0.000000e+00, %2259 ]
  %2357 = phi float [ %2293, %2349 ], [ 1.000000e+00, %2259 ]
  %2358 = add i32 %60, 192
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = lshr i32 %2360, 22
  %2362 = shl nuw nsw i32 %2361, 5
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = and i32 %2365, 64
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2401, label %2368

; <label>:2368                                    ; preds = %2353
  %2369 = add i32 %60, 400
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2369, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = add i32 %2371, 0
  %2373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 131072
  %2377 = icmp eq i32 %2376, 0
  %2378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2373, %dx.types.Handle %110, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.ResRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.ResRet.f32 %2378, 2
  %2382 = fmul fast float %2379, %361
  %2383 = fmul fast float %2380, %364
  %2384 = fmul fast float %2381, %367
  br i1 %2377, label %2391, label %2385

; <label>:2385                                    ; preds = %2368
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = fmul fast float %2387, %2382
  %2389 = fmul fast float %2387, %2383
  %2390 = fmul fast float %2387, %2384
  br label %2391

; <label>:2391                                    ; preds = %2385, %2368
  %2392 = phi float [ %2388, %2385 ], [ %2382, %2368 ]
  %2393 = phi float [ %2389, %2385 ], [ %2383, %2368 ]
  %2394 = phi float [ %2390, %2385 ], [ %2384, %2368 ]
  %2395 = fmul fast float %2392, %2363
  %2396 = select i1 %260, float %2395, float %2392
  %2397 = call float @dx.op.dot3.f32(i32 55, float %2396, float %2393, float %2394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2398 = select i1 %260, float 0.000000e+00, float %2392
  %2399 = select i1 %260, float %2397, float %2393
  %2400 = select i1 %260, float 0.000000e+00, float %2394
  br label %2401

; <label>:2401                                    ; preds = %2391, %2353
  %2402 = phi float [ %2398, %2391 ], [ 0.000000e+00, %2353 ]
  %2403 = phi float [ %2399, %2391 ], [ 0.000000e+00, %2353 ]
  %2404 = phi float [ %2400, %2391 ], [ 0.000000e+00, %2353 ]
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 14336
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2434, label %2409

; <label>:2409                                    ; preds = %2401
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 4096
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2434, label %2414

; <label>:2414                                    ; preds = %2409
  %2415 = and i32 %2411, 1048576
  %2416 = icmp ne i32 %2415, 0
  %2417 = add i32 %60, 464
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2421, %dx.types.Handle %111, float %1981, float %1982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 2
  %2424 = select i1 %2416, float 1.000000e+00, float %2423
  %2425 = add i32 %60, 196
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 65535
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2427, 16
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = fmul fast float %2429, %2424
  %2433 = fadd fast float %2432, %2431
  br label %2434

; <label>:2434                                    ; preds = %2414, %2409, %2401
  %2435 = phi float [ %2433, %2414 ], [ 0.000000e+00, %2409 ], [ 0.000000e+00, %2401 ]
  %2436 = add i32 %60, 128
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 255
  %2440 = uitofp i32 %2439 to float
  %2441 = lshr i32 %2438, 8
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = call float @dx.op.dot3.f32(i32 55, float %2274, float %2275, float %2276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2445 = fmul fast float %2443, %2444
  %2446 = fadd fast float %2445, %2440
  %2447 = fmul fast float %2446, 0x3F70101020000000
  %2448 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  br i1 %1873, label %2449, label %2457

; <label>:2449                                    ; preds = %2434
  %2450 = fsub fast float 1.000000e+00, %2054
  %2451 = fmul fast float %2450, %1861
  %2452 = fmul fast float %2450, %1862
  %2453 = fmul fast float %2450, %1863
  %2454 = fmul fast float %2450, %1864
  %2455 = fmul fast float %2450, %1865
  %2456 = fmul fast float %2450, %1866
  br label %2457

; <label>:2457                                    ; preds = %2449, %2434
  %2458 = phi float [ %2451, %2449 ], [ %1861, %2434 ]
  %2459 = phi float [ %2452, %2449 ], [ %1862, %2434 ]
  %2460 = phi float [ %2453, %2449 ], [ %1863, %2434 ]
  %2461 = phi float [ %2454, %2449 ], [ %1864, %2434 ]
  %2462 = phi float [ %2455, %2449 ], [ %1865, %2434 ]
  %2463 = phi float [ %2456, %2449 ], [ %1866, %2434 ]
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 3
  %2467 = icmp eq i32 %2466, 3
  br i1 %2467, label %2546, label %2468

; <label>:2468                                    ; preds = %2457
  %2469 = and i32 %2465, 16
  %2470 = icmp ne i32 %2469, 0
  %2471 = select i1 %2470, float %2054, float 0.000000e+00
  %2472 = icmp eq i32 %2466, 0
  br i1 %2472, label %2473, label %2501

; <label>:2473                                    ; preds = %2468
  %2474 = and i32 %2465, 64
  %2475 = icmp ne i32 %2474, 0
  %2476 = select i1 %2475, float %2054, float 0.000000e+00
  %2477 = fsub fast float %2274, %2458
  %2478 = fsub fast float %2275, %2459
  %2479 = fsub fast float %2276, %2460
  %2480 = fmul fast float %2471, %2477
  %2481 = fmul fast float %2471, %2478
  %2482 = fmul fast float %2471, %2479
  %2483 = fadd fast float %2480, %2458
  %2484 = fadd fast float %2481, %2459
  %2485 = fadd fast float %2482, %2460
  %2486 = fsub fast float %2260, %1867
  %2487 = fmul fast float %2471, %2486
  %2488 = fadd fast float %2487, %1867
  %2489 = fsub fast float %2402, %2461
  %2490 = fsub fast float %2403, %2462
  %2491 = fsub fast float %2404, %2463
  %2492 = fmul fast float %2476, %2489
  %2493 = fmul fast float %2476, %2490
  %2494 = fmul fast float %2476, %2491
  %2495 = fadd fast float %2492, %2461
  %2496 = fadd fast float %2493, %2462
  %2497 = fadd fast float %2494, %2463
  %2498 = fsub fast float %2448, %1871
  %2499 = fmul fast float %2471, %2498
  %2500 = fadd fast float %2499, %1871
  br label %2546

; <label>:2501                                    ; preds = %2468
  %2502 = icmp eq i32 %2466, 1
  br i1 %2502, label %2503, label %2516

; <label>:2503                                    ; preds = %2501
  %2504 = fadd fast float %2274, -1.000000e+00
  %2505 = fadd fast float %2275, -1.000000e+00
  %2506 = fadd fast float %2276, -1.000000e+00
  %2507 = fmul fast float %2471, %2504
  %2508 = fmul fast float %2471, %2505
  %2509 = fmul fast float %2471, %2506
  %2510 = fadd fast float %2507, 1.000000e+00
  %2511 = fadd fast float %2508, 1.000000e+00
  %2512 = fadd fast float %2509, 1.000000e+00
  %2513 = fmul fast float %2510, %2458
  %2514 = fmul fast float %2511, %2459
  %2515 = fmul fast float %2512, %2460
  br label %2546

; <label>:2516                                    ; preds = %2501
  %2517 = icmp eq i32 %2466, 2
  br i1 %2517, label %2518, label %2546

; <label>:2518                                    ; preds = %2516
  %2519 = call float @dx.op.unary.f32(i32 24, float %2274)  ; Sqrt(value)
  %2520 = call float @dx.op.unary.f32(i32 24, float %2275)  ; Sqrt(value)
  %2521 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2522 = fadd fast float %2519, -5.000000e-01
  %2523 = fadd fast float %2520, -5.000000e-01
  %2524 = fadd fast float %2521, -5.000000e-01
  %2525 = fmul fast float %2522, %2471
  %2526 = fmul fast float %2523, %2471
  %2527 = fmul fast float %2524, %2471
  %2528 = fadd fast float %2525, 5.000000e-01
  %2529 = fadd fast float %2526, 5.000000e-01
  %2530 = fadd fast float %2527, 5.000000e-01
  %2531 = fmul fast float %2528, 2.000000e+00
  %2532 = fsub fast float 1.000000e+00, %2531
  %2533 = fmul fast float %2532, %2458
  %2534 = fadd fast float %2533, %2531
  %2535 = fmul fast float %2534, %2458
  %2536 = fmul fast float %2529, 2.000000e+00
  %2537 = fsub fast float 1.000000e+00, %2536
  %2538 = fmul fast float %2537, %2459
  %2539 = fadd fast float %2538, %2536
  %2540 = fmul fast float %2539, %2459
  %2541 = fmul fast float %2530, 2.000000e+00
  %2542 = fsub fast float 1.000000e+00, %2541
  %2543 = fmul fast float %2542, %2460
  %2544 = fadd fast float %2543, %2541
  %2545 = fmul fast float %2544, %2460
  br label %2546

; <label>:2546                                    ; preds = %2518, %2516, %2503, %2473, %2457
  %2547 = phi float [ %2458, %2457 ], [ %2535, %2518 ], [ %2458, %2516 ], [ %2513, %2503 ], [ %2483, %2473 ]
  %2548 = phi float [ %2459, %2457 ], [ %2540, %2518 ], [ %2459, %2516 ], [ %2514, %2503 ], [ %2484, %2473 ]
  %2549 = phi float [ %2460, %2457 ], [ %2545, %2518 ], [ %2460, %2516 ], [ %2515, %2503 ], [ %2485, %2473 ]
  %2550 = phi float [ %2461, %2457 ], [ %2461, %2518 ], [ %2461, %2516 ], [ %2461, %2503 ], [ %2495, %2473 ]
  %2551 = phi float [ %2462, %2457 ], [ %2462, %2518 ], [ %2462, %2516 ], [ %2462, %2503 ], [ %2496, %2473 ]
  %2552 = phi float [ %2463, %2457 ], [ %2463, %2518 ], [ %2463, %2516 ], [ %2463, %2503 ], [ %2497, %2473 ]
  %2553 = phi float [ %1867, %2457 ], [ %1867, %2518 ], [ %1867, %2516 ], [ %1867, %2503 ], [ %2488, %2473 ]
  %2554 = phi float [ %1871, %2457 ], [ %1871, %2518 ], [ %1871, %2516 ], [ %1871, %2503 ], [ %2500, %2473 ]
  %2555 = and i32 %2465, 12
  %2556 = icmp eq i32 %2555, 12
  br i1 %2556, label %2639, label %2557

; <label>:2557                                    ; preds = %2546
  %2558 = and i32 %2465, 2097184
  %2559 = icmp eq i32 %2558, 2097184
  %2560 = select i1 %2559, float %2054, float 0.000000e+00
  %2561 = and i32 %2465, 4194336
  %2562 = icmp eq i32 %2561, 4194336
  %2563 = select i1 %2562, float %2054, float 0.000000e+00
  %2564 = and i32 %2465, 8388640
  %2565 = icmp eq i32 %2564, 8388640
  %2566 = select i1 %2565, float %2054, float 0.000000e+00
  %2567 = and i32 %2465, 4096
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2054, float 0.000000e+00
  %2570 = icmp eq i32 %2555, 0
  br i1 %2570, label %2571, label %2587

; <label>:2571                                    ; preds = %2557
  %2572 = fsub fast float %2355, %1859
  %2573 = fsub fast float %2356, %1860
  %2574 = fmul fast float %2560, %2572
  %2575 = fmul fast float %2560, %2573
  %2576 = fadd fast float %2574, %1859
  %2577 = fadd fast float %2575, %1860
  %2578 = fsub fast float %2357, %1869
  %2579 = fmul fast float %2563, %2578
  %2580 = fadd fast float %2579, %1869
  %2581 = fsub fast float %2354, %1868
  %2582 = fmul fast float %2566, %2581
  %2583 = fadd fast float %2582, %1868
  %2584 = fsub fast float %2435, %1870
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1870
  br label %2639

; <label>:2587                                    ; preds = %2557
  %2588 = icmp eq i32 %2555, 4
  br i1 %2588, label %2589, label %2623

; <label>:2589                                    ; preds = %2587
  %2590 = fmul fast float %2560, %2355
  %2591 = fmul fast float %2560, %2356
  %2592 = fadd fast float %2590, %1859
  %2593 = fadd fast float %2591, %1860
  %2594 = call float @dx.op.binary.f32(i32 36, float %1869, float %2357)  ; FMin(a,b)
  %2595 = fsub fast float %2594, %1869
  %2596 = fmul fast float %2595, %2563
  %2597 = fadd fast float %2596, %1869
  %2598 = fadd fast float %2354, %1868
  %2599 = fmul fast float %2598, 0x3FF337FAE0000000
  %2600 = fmul fast float %1868, %1868
  %2601 = fmul fast float %2354, %2354
  %2602 = fadd fast float %2601, %2600
  %2603 = fmul fast float %2602, 0x3FE5152B00000000
  %2604 = fmul fast float %1868, 0xBFCC1F85E0000000
  %2605 = fmul fast float %2604, %2354
  %2606 = fadd fast float %2605, 0xBFE1363700000000
  %2607 = fadd fast float %2606, %2599
  %2608 = fsub fast float %2607, %2603
  %2609 = fmul fast float %2598, 0x3FBA6F0D00000000
  %2610 = fmul fast float %2602, 0x3FD0432880000000
  %2611 = fmul fast float %1868, 0xBFEF110800000000
  %2612 = fmul fast float %2611, %2354
  %2613 = fadd fast float %2612, 1.000000e+00
  %2614 = fsub fast float %2613, %2609
  %2615 = fadd fast float %2614, %2610
  %2616 = fdiv fast float %2608, %2615
  %2617 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2618 = fsub fast float %2617, %1868
  %2619 = fmul fast float %2618, %2566
  %2620 = fadd fast float %2619, %1868
  %2621 = fmul fast float %2569, %2435
  %2622 = fadd fast float %2621, %1870
  br label %2639

; <label>:2623                                    ; preds = %2587
  %2624 = icmp eq i32 %2555, 8
  br i1 %2624, label %2625, label %2639

; <label>:2625                                    ; preds = %2623
  %2626 = fmul fast float %2560, %2355
  %2627 = fmul fast float %2560, %2356
  %2628 = fadd fast float %2626, %1859
  %2629 = fadd fast float %2627, %1860
  %2630 = call float @dx.op.binary.f32(i32 36, float %1869, float %2357)  ; FMin(a,b)
  %2631 = fsub fast float %2630, %1869
  %2632 = fmul fast float %2631, %2563
  %2633 = fadd fast float %2632, %1869
  %2634 = fsub fast float %2354, %1868
  %2635 = fmul fast float %2566, %2634
  %2636 = fadd fast float %2635, %1868
  %2637 = fmul fast float %2569, %2435
  %2638 = fadd fast float %2637, %1870
  br label %2639

; <label>:2639                                    ; preds = %2625, %2623, %2589, %2571, %2546, %2053, %1872, %1858
  %2640 = phi float [ %1859, %2546 ], [ %1859, %2053 ], [ %1859, %1858 ], [ %2628, %2625 ], [ %1859, %2623 ], [ %2592, %2589 ], [ %2576, %2571 ], [ %1859, %1872 ]
  %2641 = phi float [ %1860, %2546 ], [ %1860, %2053 ], [ %1860, %1858 ], [ %2629, %2625 ], [ %1860, %2623 ], [ %2593, %2589 ], [ %2577, %2571 ], [ %1860, %1872 ]
  %2642 = phi float [ %2547, %2546 ], [ %1861, %2053 ], [ %1861, %1858 ], [ %2547, %2625 ], [ %2547, %2623 ], [ %2547, %2589 ], [ %2547, %2571 ], [ %1861, %1872 ]
  %2643 = phi float [ %2548, %2546 ], [ %1862, %2053 ], [ %1862, %1858 ], [ %2548, %2625 ], [ %2548, %2623 ], [ %2548, %2589 ], [ %2548, %2571 ], [ %1862, %1872 ]
  %2644 = phi float [ %2549, %2546 ], [ %1863, %2053 ], [ %1863, %1858 ], [ %2549, %2625 ], [ %2549, %2623 ], [ %2549, %2589 ], [ %2549, %2571 ], [ %1863, %1872 ]
  %2645 = phi float [ %2550, %2546 ], [ %1864, %2053 ], [ %1864, %1858 ], [ %2550, %2625 ], [ %2550, %2623 ], [ %2550, %2589 ], [ %2550, %2571 ], [ %1864, %1872 ]
  %2646 = phi float [ %2551, %2546 ], [ %1865, %2053 ], [ %1865, %1858 ], [ %2551, %2625 ], [ %2551, %2623 ], [ %2551, %2589 ], [ %2551, %2571 ], [ %1865, %1872 ]
  %2647 = phi float [ %2552, %2546 ], [ %1866, %2053 ], [ %1866, %1858 ], [ %2552, %2625 ], [ %2552, %2623 ], [ %2552, %2589 ], [ %2552, %2571 ], [ %1866, %1872 ]
  %2648 = phi float [ %2553, %2546 ], [ %1867, %2053 ], [ %1867, %1858 ], [ %2553, %2625 ], [ %2553, %2623 ], [ %2553, %2589 ], [ %2553, %2571 ], [ %1867, %1872 ]
  %2649 = phi float [ %1868, %2546 ], [ %1868, %2053 ], [ %1868, %1858 ], [ %2636, %2625 ], [ %1868, %2623 ], [ %2620, %2589 ], [ %2583, %2571 ], [ %1868, %1872 ]
  %2650 = phi float [ %1869, %2546 ], [ %1869, %2053 ], [ %1869, %1858 ], [ %2633, %2625 ], [ %1869, %2623 ], [ %2597, %2589 ], [ %2580, %2571 ], [ %1869, %1872 ]
  %2651 = phi float [ %1870, %2546 ], [ %1870, %2053 ], [ %1870, %1858 ], [ %2638, %2625 ], [ %1870, %2623 ], [ %2622, %2589 ], [ %2586, %2571 ], [ %1870, %1872 ]
  %2652 = phi float [ %2554, %2546 ], [ %1871, %2053 ], [ %1871, %1858 ], [ %2554, %2625 ], [ %2554, %2623 ], [ %2554, %2589 ], [ %2554, %2571 ], [ %1871, %1872 ]
  br i1 %448, label %3420, label %2653

; <label>:2653                                    ; preds = %2639
  %2654 = icmp ult i32 %502, 4
  %2655 = add i32 %60, 72
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = add i32 %60, 76
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = or i32 %2660, %2657
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %3420, label %2663

; <label>:2663                                    ; preds = %2653
  %2664 = and i32 %2657, 262144
  %2665 = icmp ne i32 %2664, 0
  %2666 = select i1 %2665, float %65, float 1.000000e+00
  %2667 = select i1 %2665, float %66, float 0.000000e+00
  %2668 = select i1 %2665, float %67, float 0.000000e+00
  %2669 = select i1 %2665, float %68, float 1.000000e+00
  %2670 = select i1 %2665, float %69, float %92
  %2671 = select i1 %2665, float %70, float %93
  %2672 = add i32 %60, 332
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = lshr i32 %2674, 16
  %2676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2675)  ; LegacyF16ToF32(value)
  %2677 = fmul fast float %2676, 0x3F50624DE0000000
  %2678 = add i32 %60, 136
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 16
  %2682 = and i32 %2681, 255
  %2683 = lshr i32 %2680, 24
  %2684 = add i32 %60, 340
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = and i32 %2686, 65535
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = lshr i32 %2686, 16
  %2690 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2689)  ; LegacyF16ToF32(value)
  %2691 = add i32 %60, 80
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = lshr i32 %2693, 22
  %2695 = shl nuw nsw i32 %2694, 5
  %2696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2695)  ; LegacyF16ToF32(value)
  %2697 = shl i32 %2693, 4
  %2698 = and i32 %2697, 32752
  %2699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2698)  ; LegacyF16ToF32(value)
  %2700 = lshr i32 %2693, 7
  %2701 = and i32 %2700, 32752
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 3
  %2705 = fmul fast float %2704, 1.000000e+03
  %2706 = fmul fast float %438, %2705
  %2707 = call float @dx.op.unary.f32(i32 22, float %2706)  ; Frc(value)
  %2708 = fadd fast float %2707, %428
  %2709 = fmul fast float %439, %2705
  %2710 = call float @dx.op.unary.f32(i32 22, float %2709)  ; Frc(value)
  %2711 = fadd fast float %2710, %430
  %2712 = fmul fast float %2677, %2705
  %2713 = call float @dx.op.unary.f32(i32 22, float %2712)  ; Frc(value)
  %2714 = fmul fast float %2713, 0x401921FB60000000
  %2715 = fadd fast float %2714, %2696
  %2716 = call float @dx.op.unary.f32(i32 13, float %2715)  ; Sin(value)
  %2717 = call float @dx.op.unary.f32(i32 12, float %2715)  ; Cos(value)
  %2718 = fsub fast float -0.000000e+00, %2716
  %2719 = fadd fast float %2670, -5.000000e-01
  %2720 = fadd fast float %2671, -5.000000e-01
  %2721 = fmul fast float %2688, %2719
  %2722 = fmul fast float %2690, %2720
  %2723 = fadd fast float %2721, 5.000000e-01
  %2724 = fadd fast float %2722, 5.000000e-01
  %2725 = fmul fast float %2699, %2723
  %2726 = fmul fast float %2702, %2724
  %2727 = fmul fast float %2717, %2725
  %2728 = call float @dx.op.tertiary.f32(i32 46, float %2718, float %2726, float %2727)  ; FMad(a,b,c)
  %2729 = fmul fast float %2716, %2725
  %2730 = call float @dx.op.tertiary.f32(i32 46, float %2717, float %2726, float %2729)  ; FMad(a,b,c)
  %2731 = fadd fast float %2708, %2728
  %2732 = fadd fast float %2711, %2730
  %2733 = icmp ugt i32 %2682, 1
  %2734 = icmp ugt i32 %2680, 33554431
  %2735 = or i1 %2734, %2733
  br i1 %2735, label %2736, label %2761

; <label>:2736                                    ; preds = %2663
  %2737 = add i32 %60, 276
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = lshr i32 %2739, 16
  %2741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2740)  ; LegacyF16ToF32(value)
  %2742 = fmul fast float %2704, %2741
  %2743 = call float @dx.op.unary.f32(i32 22, float %2742)  ; Frc(value)
  %2744 = mul nuw nsw i32 %2682, %2683
  %2745 = uitofp i32 %2744 to float
  %2746 = fmul fast float %2743, %2745
  %2747 = call float @dx.op.unary.f32(i32 27, float %2746)  ; Round_ni(value)
  %2748 = fptoui float %2747 to i32
  %2749 = urem i32 %2748, %2682
  %2750 = udiv i32 %2748, %2683
  %2751 = call float @dx.op.unary.f32(i32 22, float %2731)  ; Frc(value)
  %2752 = call float @dx.op.unary.f32(i32 22, float %2732)  ; Frc(value)
  %2753 = uitofp i32 %2749 to float
  %2754 = uitofp i32 %2750 to float
  %2755 = fadd fast float %2751, %2753
  %2756 = fadd fast float %2752, %2754
  %2757 = uitofp i32 %2682 to float
  %2758 = uitofp i32 %2683 to float
  %2759 = fdiv fast float %2755, %2757
  %2760 = fdiv fast float %2756, %2758
  br label %2761

; <label>:2761                                    ; preds = %2736, %2663
  %2762 = phi float [ %2759, %2736 ], [ %2731, %2663 ]
  %2763 = phi float [ %2760, %2736 ], [ %2732, %2663 ]
  %2764 = and i32 %2657, 256
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2812, label %2766

; <label>:2766                                    ; preds = %2761
  %2767 = add i32 %60, 436
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = add i32 %2769, 0
  %2771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2771, %dx.types.Handle %111, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = add i32 %60, 148
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = shl i32 %2776, 4
  %2778 = and i32 %2777, 32752
  %2779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2778)  ; LegacyF16ToF32(value)
  %2780 = lshr i32 %2776, 7
  %2781 = and i32 %2780, 32752
  %2782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2781)  ; LegacyF16ToF32(value)
  %2783 = fsub fast float 1.000000e+00, %497
  %2784 = call float @dx.op.binary.f32(i32 35, float %2783, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2785 = bitcast float %497 to i32
  %2786 = sitofp i32 %2785 to float
  %2787 = fadd fast float %2786, 0xC1CFBF8940000000
  %2788 = fmul fast float %2782, %2787
  %2789 = fadd fast float %2788, 0x41CFBF8940000000
  %2790 = fptosi float %2789 to i32
  %2791 = bitcast i32 %2790 to float
  %2792 = bitcast float %2784 to i32
  %2793 = sitofp i32 %2792 to float
  %2794 = fadd fast float %2793, 0xC1CFBF8940000000
  %2795 = fmul fast float %2794, %2782
  %2796 = fadd fast float %2795, 0x41CFBF8940000000
  %2797 = fptosi float %2796 to i32
  %2798 = bitcast i32 %2797 to float
  %2799 = fmul fast float %2791, %2779
  %2800 = fmul fast float %2798, %2779
  %2801 = fsub fast float %2784, %2799
  %2802 = fadd fast float %2800, %2784
  %2803 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  %2804 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2805 = fsub fast float %2773, %2803
  %2806 = fsub fast float %2804, %2803
  %2807 = bitcast float %2806 to i32
  %2808 = sub nsw i32 2129859010, %2807
  %2809 = bitcast i32 %2808 to float
  %2810 = fmul fast float %2809, %2805
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  br label %2812

; <label>:2812                                    ; preds = %2766, %2761
  %2813 = phi float [ %2811, %2766 ], [ %497, %2761 ]
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 128
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2834, label %2818

; <label>:2818                                    ; preds = %2812
  %2819 = add i32 %60, 420
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2823, %dx.types.Handle %111, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 524288
  %2829 = icmp ne i32 %2828, 0
  %2830 = fcmp fast ogt float %2825, 0x3FE0101020000000
  %2831 = select i1 %2830, float 1.000000e+00, float 0.000000e+00
  %2832 = select i1 %2829, float %2831, float %2825
  %2833 = fmul fast float %2832, %2813
  br label %2834

; <label>:2834                                    ; preds = %2818, %2812
  %2835 = phi float [ %2833, %2818 ], [ %2813, %2812 ]
  %2836 = fcmp fast ult float %2835, 0x3F70101020000000
  br i1 %2836, label %3420, label %2837

; <label>:2837                                    ; preds = %2834
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 16
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %3040, label %2842

; <label>:2842                                    ; preds = %2837
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = add i32 %60, 372
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = add i32 %2847, 0
  %2849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2849, %dx.types.Handle %110, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = extractvalue %dx.types.ResRet.f32 %2850, 1
  %2853 = extractvalue %dx.types.ResRet.f32 %2850, 2
  %2854 = extractvalue %dx.types.ResRet.f32 %2850, 3
  %2855 = and i32 %2844, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = lshr i32 %2844, 8
  %2858 = and i32 %2857, 255
  %2859 = uitofp i32 %2858 to float
  %2860 = fmul fast float %2854, %2856
  %2861 = fadd fast float %2860, %2859
  %2862 = fmul fast float %2861, 0x3F70101000000000
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 512
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %2875, label %2867

; <label>:2867                                    ; preds = %2842
  %2868 = add i32 %60, 452
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = add i32 %2870, 0
  %2872 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2871, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2873 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2872, %dx.types.Handle %111, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2874 = extractvalue %dx.types.ResRet.f32 %2873, 0
  br label %2875

; <label>:2875                                    ; preds = %2867, %2842
  %2876 = phi float [ %2874, %2867 ], [ 1.000000e+00, %2842 ]
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 33554432
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2987, label %2881

; <label>:2881                                    ; preds = %2875
  %2882 = add i32 %60, 272
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = lshr i32 %2884, 16
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = add i32 %60, 276
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 65535
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 24
  %2897 = uitofp i32 %2896 to float
  %2898 = fmul fast float %2897, 0x3F70101020000000
  %2899 = and i32 %2895, 255
  %2900 = uitofp i32 %2899 to float
  %2901 = fmul fast float %2900, 0x3F70101020000000
  %2902 = lshr i32 %2895, 8
  %2903 = and i32 %2902, 255
  %2904 = uitofp i32 %2903 to float
  %2905 = fmul fast float %2904, 0x3F70101020000000
  %2906 = lshr i32 %2895, 16
  %2907 = and i32 %2906, 255
  %2908 = uitofp i32 %2907 to float
  %2909 = fmul fast float %2908, 0x3F70101020000000
  %2910 = add i32 %60, 268
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = lshr i32 %2912, 24
  %2914 = uitofp i32 %2913 to float
  %2915 = fmul fast float %2914, 0x3F70101020000000
  %2916 = and i32 %2912, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2917, 0x3F70101020000000
  %2919 = lshr i32 %2912, 8
  %2920 = and i32 %2919, 255
  %2921 = uitofp i32 %2920 to float
  %2922 = fmul fast float %2921, 0x3F70101020000000
  %2923 = lshr i32 %2912, 16
  %2924 = and i32 %2923, 255
  %2925 = uitofp i32 %2924 to float
  %2926 = fmul fast float %2925, 0x3F70101020000000
  %2927 = bitcast float %2851 to i32
  %2928 = ashr i32 %2927, 1
  %2929 = sub nsw i32 1597463174, %2928
  %2930 = bitcast i32 %2929 to float
  %2931 = fmul fast float %2851, 5.000000e-01
  %2932 = fmul fast float %2930, %2930
  %2933 = fmul fast float %2932, %2931
  %2934 = fsub fast float 1.500000e+00, %2933
  %2935 = fmul fast float %2930, %2851
  %2936 = fmul fast float %2935, %2934
  %2937 = bitcast float %2852 to i32
  %2938 = ashr i32 %2937, 1
  %2939 = sub nsw i32 1597463174, %2938
  %2940 = bitcast i32 %2939 to float
  %2941 = fmul fast float %2852, 5.000000e-01
  %2942 = fmul fast float %2940, %2940
  %2943 = fmul fast float %2942, %2941
  %2944 = fsub fast float 1.500000e+00, %2943
  %2945 = fmul fast float %2940, %2852
  %2946 = fmul fast float %2945, %2944
  %2947 = bitcast float %2853 to i32
  %2948 = ashr i32 %2947, 1
  %2949 = sub nsw i32 1597463174, %2948
  %2950 = bitcast i32 %2949 to float
  %2951 = fmul fast float %2853, 5.000000e-01
  %2952 = fmul fast float %2950, %2950
  %2953 = fmul fast float %2952, %2951
  %2954 = fsub fast float 1.500000e+00, %2953
  %2955 = fmul fast float %2950, %2853
  %2956 = fmul fast float %2955, %2954
  %2957 = fsub fast float %2936, %2918
  %2958 = fsub fast float %2946, %2922
  %2959 = fsub fast float %2956, %2926
  %2960 = fmul fast float %2957, %2886
  %2961 = fmul fast float %2958, %2888
  %2962 = fmul fast float %2959, %2893
  %2963 = fadd fast float %2960, %2901
  %2964 = fadd fast float %2961, %2905
  %2965 = fadd fast float %2962, %2909
  %2966 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2967 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2968 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2969 = fmul fast float %2966, %2966
  %2970 = fmul fast float %2967, %2967
  %2971 = fmul fast float %2968, %2968
  %2972 = fsub fast float %2969, %2851
  %2973 = fsub fast float %2970, %2852
  %2974 = fsub fast float %2971, %2853
  %2975 = fmul fast float %2972, %2876
  %2976 = fmul fast float %2973, %2876
  %2977 = fmul fast float %2974, %2876
  %2978 = fadd fast float %2975, %2851
  %2979 = fadd fast float %2976, %2852
  %2980 = fadd fast float %2977, %2853
  %2981 = fadd fast float %2898, %2862
  %2982 = fsub fast float %2981, %2915
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2984 = fsub fast float %2983, %2862
  %2985 = fmul fast float %2984, %2876
  %2986 = fadd fast float %2985, %2862
  br label %3040

; <label>:2987                                    ; preds = %2875
  %2988 = and i32 %2878, 134217728
  %2989 = icmp eq i32 %2988, 0
  br i1 %2989, label %3024, label %2990

; <label>:2990                                    ; preds = %2987
  %2991 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2992 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %2993 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %2994 = fadd fast float %2991, -5.000000e-01
  %2995 = fadd fast float %2992, -5.000000e-01
  %2996 = fadd fast float %2993, -5.000000e-01
  %2997 = fmul fast float %2994, %2876
  %2998 = fmul fast float %2995, %2876
  %2999 = fmul fast float %2996, %2876
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = fadd fast float %2998, 5.000000e-01
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = call float @dx.op.unary.f32(i32 24, float %2851)  ; Sqrt(value)
  %3004 = call float @dx.op.unary.f32(i32 24, float %2852)  ; Sqrt(value)
  %3005 = call float @dx.op.unary.f32(i32 24, float %2853)  ; Sqrt(value)
  %3006 = fmul fast float %3000, 2.000000e+00
  %3007 = fsub fast float 1.000000e+00, %3006
  %3008 = fmul fast float %3007, %3003
  %3009 = fadd fast float %3008, %3006
  %3010 = fmul fast float %3009, %3003
  %3011 = fmul fast float %3001, 2.000000e+00
  %3012 = fsub fast float 1.000000e+00, %3011
  %3013 = fmul fast float %3012, %3004
  %3014 = fadd fast float %3013, %3011
  %3015 = fmul fast float %3014, %3004
  %3016 = fmul fast float %3002, 2.000000e+00
  %3017 = fsub fast float 1.000000e+00, %3016
  %3018 = fmul fast float %3017, %3005
  %3019 = fadd fast float %3018, %3016
  %3020 = fmul fast float %3019, %3005
  %3021 = fmul fast float %3010, %3010
  %3022 = fmul fast float %3015, %3015
  %3023 = fmul fast float %3020, %3020
  br label %3040

; <label>:3024                                    ; preds = %2987
  %3025 = fmul fast float %415, %415
  %3026 = fmul fast float %419, %419
  %3027 = fmul fast float %423, %423
  %3028 = fadd fast float %3025, -1.000000e+00
  %3029 = fadd fast float %3026, -1.000000e+00
  %3030 = fadd fast float %3027, -1.000000e+00
  %3031 = fmul fast float %2876, %3028
  %3032 = fmul fast float %2876, %3029
  %3033 = fmul fast float %2876, %3030
  %3034 = fadd fast float %3031, 1.000000e+00
  %3035 = fadd fast float %3032, 1.000000e+00
  %3036 = fadd fast float %3033, 1.000000e+00
  %3037 = fmul fast float %3034, %2851
  %3038 = fmul fast float %3035, %2852
  %3039 = fmul fast float %3036, %2853
  br label %3040

; <label>:3040                                    ; preds = %3024, %2990, %2881, %2837
  %3041 = phi float [ %2986, %2881 ], [ %2862, %2990 ], [ %2862, %3024 ], [ 0x3FA23C0BE0000000, %2837 ]
  %3042 = phi float [ %2978, %2881 ], [ %3021, %2990 ], [ %3037, %3024 ], [ 1.000000e+00, %2837 ]
  %3043 = phi float [ %2979, %2881 ], [ %3022, %2990 ], [ %3038, %3024 ], [ 1.000000e+00, %2837 ]
  %3044 = phi float [ %2980, %2881 ], [ %3023, %2990 ], [ %3039, %3024 ], [ 1.000000e+00, %2837 ]
  %3045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.i32 %3045, 1
  %3047 = and i32 %3046, 1
  %3048 = icmp ne i32 %3047, 0
  %3049 = add i32 %60, 356
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 32
  %3053 = icmp ne i32 %3052, 0
  %3054 = and i1 %3048, %3053
  %3055 = select i1 %3054, float 1.000000e+00, float %3042
  %3056 = select i1 %3054, float 0x3FD3333340000000, float %3043
  %3057 = select i1 %3054, float 0x3FD3333340000000, float %3044
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 32
  %3061 = icmp eq i32 %3060, 0
  br i1 %3061, label %3134, label %3062

; <label>:3062                                    ; preds = %3040
  %3063 = add i32 %60, 140
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %60, 388
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = add i32 %3068, 0
  %3070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3070, %dx.types.Handle %110, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3072 = extractvalue %dx.types.ResRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.ResRet.f32 %3071, 1
  %3074 = extractvalue %dx.types.ResRet.f32 %3071, 2
  %3075 = extractvalue %dx.types.ResRet.f32 %3071, 3
  %3076 = and i32 %3065, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = lshr i32 %3065, 8
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = lshr i32 %3065, 16
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F70101000000000
  %3085 = fmul fast float %3072, %3077
  %3086 = fadd fast float %3085, %3080
  %3087 = fmul fast float %3086, 0x3F70101000000000
  %3088 = fadd fast float %3073, -5.000000e-01
  %3089 = fadd fast float %3075, -5.000000e-01
  %3090 = fmul fast float %3088, %3084
  %3091 = fmul fast float %3089, %3084
  %3092 = fadd fast float %3090, 5.000000e-01
  %3093 = fadd fast float %3091, 5.000000e-01
  %3094 = fmul fast float %3092, 2.000000e+00
  %3095 = fadd fast float %3094, -1.000000e+00
  %3096 = fmul fast float %3093, 2.000000e+00
  %3097 = fadd fast float %3096, -1.000000e+00
  %3098 = fadd fast float %3095, %3097
  %3099 = fmul fast float %3098, 5.000000e-01
  %3100 = fsub fast float %3095, %3097
  %3101 = fmul fast float %3100, 5.000000e-01
  %3102 = call float @dx.op.unary.f32(i32 6, float %3099)  ; FAbs(value)
  %3103 = fsub fast float 1.000000e+00, %3102
  %3104 = call float @dx.op.unary.f32(i32 6, float %3101)  ; FAbs(value)
  %3105 = fsub fast float %3103, %3104
  %3106 = call float @dx.op.dot3.f32(i32 55, float %3099, float %3101, float %3105, float %3099, float %3101, float %3105)  ; Dot3(ax,ay,az,bx,by,bz)
  %3107 = call float @dx.op.unary.f32(i32 25, float %3106)  ; Rsqrt(value)
  %3108 = fmul fast float %3099, %3107
  %3109 = fmul fast float %3101, %3107
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 67108864
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3130, label %3114

; <label>:3114                                    ; preds = %3062
  %3115 = add i32 %60, 328
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = and i32 %3117, 65535
  %3119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3118)  ; LegacyF16ToF32(value)
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 65535
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = lshr i32 %3117, 16
  %3125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3124)  ; LegacyF16ToF32(value)
  %3126 = fsub fast float %3087, %3125
  %3127 = fmul fast float %3126, %3119
  %3128 = fadd fast float %3127, %3123
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  br label %3130

; <label>:3130                                    ; preds = %3114, %3062
  %3131 = phi float [ %3129, %3114 ], [ %3087, %3062 ]
  %3132 = call float @dx.op.dot2.f32(i32 54, float %3108, float %3109, float %2666, float %2667)  ; Dot2(ax,ay,bx,by)
  %3133 = call float @dx.op.dot2.f32(i32 54, float %3108, float %3109, float %2668, float %2669)  ; Dot2(ax,ay,bx,by)
  br label %3134

; <label>:3134                                    ; preds = %3130, %3040
  %3135 = phi float [ %3131, %3130 ], [ 0x3FD6666660000000, %3040 ]
  %3136 = phi float [ %3132, %3130 ], [ 0.000000e+00, %3040 ]
  %3137 = phi float [ %3133, %3130 ], [ 0.000000e+00, %3040 ]
  %3138 = phi float [ %3074, %3130 ], [ 1.000000e+00, %3040 ]
  %3139 = add i32 %60, 208
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = lshr i32 %3141, 22
  %3143 = shl nuw nsw i32 %3142, 5
  %3144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3143)  ; LegacyF16ToF32(value)
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 64
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3182, label %3149

; <label>:3149                                    ; preds = %3134
  %3150 = add i32 %60, 404
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3152, 0
  %3154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 131072
  %3158 = icmp eq i32 %3157, 0
  %3159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3154, %dx.types.Handle %110, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  %3161 = extractvalue %dx.types.ResRet.f32 %3159, 1
  %3162 = extractvalue %dx.types.ResRet.f32 %3159, 2
  %3163 = fmul fast float %3160, %403
  %3164 = fmul fast float %3161, %406
  %3165 = fmul fast float %3162, %409
  br i1 %3158, label %3172, label %3166

; <label>:3166                                    ; preds = %3149
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = fmul fast float %3168, %3163
  %3170 = fmul fast float %3168, %3164
  %3171 = fmul fast float %3168, %3165
  br label %3172

; <label>:3172                                    ; preds = %3166, %3149
  %3173 = phi float [ %3169, %3166 ], [ %3163, %3149 ]
  %3174 = phi float [ %3170, %3166 ], [ %3164, %3149 ]
  %3175 = phi float [ %3171, %3166 ], [ %3165, %3149 ]
  %3176 = fmul fast float %3173, %3144
  %3177 = select i1 %260, float %3176, float %3173
  %3178 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3174, float %3175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3179 = select i1 %260, float 0.000000e+00, float %3173
  %3180 = select i1 %260, float %3178, float %3174
  %3181 = select i1 %260, float 0.000000e+00, float %3175
  br label %3182

; <label>:3182                                    ; preds = %3172, %3134
  %3183 = phi float [ %3179, %3172 ], [ 0.000000e+00, %3134 ]
  %3184 = phi float [ %3180, %3172 ], [ 0.000000e+00, %3134 ]
  %3185 = phi float [ %3181, %3172 ], [ 0.000000e+00, %3134 ]
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 14336
  %3189 = icmp eq i32 %3188, 0
  br i1 %3189, label %3215, label %3190

; <label>:3190                                    ; preds = %3182
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 4096
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3215, label %3195

; <label>:3195                                    ; preds = %3190
  %3196 = and i32 %3192, 1048576
  %3197 = icmp ne i32 %3196, 0
  %3198 = add i32 %60, 468
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = add i32 %3200, 0
  %3202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3202, %dx.types.Handle %111, float %2762, float %2763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3204 = extractvalue %dx.types.ResRet.f32 %3203, 2
  %3205 = select i1 %3197, float 1.000000e+00, float %3204
  %3206 = add i32 %60, 212
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = lshr i32 %3208, 16
  %3212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3211)  ; LegacyF16ToF32(value)
  %3213 = fmul fast float %3210, %3205
  %3214 = fadd fast float %3213, %3212
  br label %3215

; <label>:3215                                    ; preds = %3195, %3190, %3182
  %3216 = phi float [ %3214, %3195 ], [ 0.000000e+00, %3190 ], [ 0.000000e+00, %3182 ]
  %3217 = add i32 %60, 144
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = lshr i32 %3219, 8
  %3223 = and i32 %3222, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = call float @dx.op.dot3.f32(i32 55, float %3055, float %3056, float %3057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3226 = fmul fast float %3224, %3225
  %3227 = fadd fast float %3226, %3221
  %3228 = fmul fast float %3227, 0x3F70101020000000
  %3229 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  br i1 %2654, label %3230, label %3238

; <label>:3230                                    ; preds = %3215
  %3231 = fsub fast float 1.000000e+00, %2835
  %3232 = fmul fast float %3231, %2642
  %3233 = fmul fast float %3231, %2643
  %3234 = fmul fast float %3231, %2644
  %3235 = fmul fast float %3231, %2645
  %3236 = fmul fast float %3231, %2646
  %3237 = fmul fast float %3231, %2647
  br label %3238

; <label>:3238                                    ; preds = %3230, %3215
  %3239 = phi float [ %3232, %3230 ], [ %2642, %3215 ]
  %3240 = phi float [ %3233, %3230 ], [ %2643, %3215 ]
  %3241 = phi float [ %3234, %3230 ], [ %2644, %3215 ]
  %3242 = phi float [ %3235, %3230 ], [ %2645, %3215 ]
  %3243 = phi float [ %3236, %3230 ], [ %2646, %3215 ]
  %3244 = phi float [ %3237, %3230 ], [ %2647, %3215 ]
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 3
  %3248 = icmp eq i32 %3247, 3
  br i1 %3248, label %3327, label %3249

; <label>:3249                                    ; preds = %3238
  %3250 = and i32 %3246, 16
  %3251 = icmp ne i32 %3250, 0
  %3252 = select i1 %3251, float %2835, float 0.000000e+00
  %3253 = icmp eq i32 %3247, 0
  br i1 %3253, label %3254, label %3282

; <label>:3254                                    ; preds = %3249
  %3255 = and i32 %3246, 64
  %3256 = icmp ne i32 %3255, 0
  %3257 = select i1 %3256, float %2835, float 0.000000e+00
  %3258 = fsub fast float %3055, %3239
  %3259 = fsub fast float %3056, %3240
  %3260 = fsub fast float %3057, %3241
  %3261 = fmul fast float %3252, %3258
  %3262 = fmul fast float %3252, %3259
  %3263 = fmul fast float %3252, %3260
  %3264 = fadd fast float %3261, %3239
  %3265 = fadd fast float %3262, %3240
  %3266 = fadd fast float %3263, %3241
  %3267 = fsub fast float %3041, %2648
  %3268 = fmul fast float %3252, %3267
  %3269 = fadd fast float %3268, %2648
  %3270 = fsub fast float %3183, %3242
  %3271 = fsub fast float %3184, %3243
  %3272 = fsub fast float %3185, %3244
  %3273 = fmul fast float %3257, %3270
  %3274 = fmul fast float %3257, %3271
  %3275 = fmul fast float %3257, %3272
  %3276 = fadd fast float %3273, %3242
  %3277 = fadd fast float %3274, %3243
  %3278 = fadd fast float %3275, %3244
  %3279 = fsub fast float %3229, %2652
  %3280 = fmul fast float %3252, %3279
  %3281 = fadd fast float %3280, %2652
  br label %3327

; <label>:3282                                    ; preds = %3249
  %3283 = icmp eq i32 %3247, 1
  br i1 %3283, label %3284, label %3297

; <label>:3284                                    ; preds = %3282
  %3285 = fadd fast float %3055, -1.000000e+00
  %3286 = fadd fast float %3056, -1.000000e+00
  %3287 = fadd fast float %3057, -1.000000e+00
  %3288 = fmul fast float %3252, %3285
  %3289 = fmul fast float %3252, %3286
  %3290 = fmul fast float %3252, %3287
  %3291 = fadd fast float %3288, 1.000000e+00
  %3292 = fadd fast float %3289, 1.000000e+00
  %3293 = fadd fast float %3290, 1.000000e+00
  %3294 = fmul fast float %3291, %3239
  %3295 = fmul fast float %3292, %3240
  %3296 = fmul fast float %3293, %3241
  br label %3327

; <label>:3297                                    ; preds = %3282
  %3298 = icmp eq i32 %3247, 2
  br i1 %3298, label %3299, label %3327

; <label>:3299                                    ; preds = %3297
  %3300 = call float @dx.op.unary.f32(i32 24, float %3055)  ; Sqrt(value)
  %3301 = call float @dx.op.unary.f32(i32 24, float %3056)  ; Sqrt(value)
  %3302 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3303 = fadd fast float %3300, -5.000000e-01
  %3304 = fadd fast float %3301, -5.000000e-01
  %3305 = fadd fast float %3302, -5.000000e-01
  %3306 = fmul fast float %3303, %3252
  %3307 = fmul fast float %3304, %3252
  %3308 = fmul fast float %3305, %3252
  %3309 = fadd fast float %3306, 5.000000e-01
  %3310 = fadd fast float %3307, 5.000000e-01
  %3311 = fadd fast float %3308, 5.000000e-01
  %3312 = fmul fast float %3309, 2.000000e+00
  %3313 = fsub fast float 1.000000e+00, %3312
  %3314 = fmul fast float %3313, %3239
  %3315 = fadd fast float %3314, %3312
  %3316 = fmul fast float %3315, %3239
  %3317 = fmul fast float %3310, 2.000000e+00
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3240
  %3320 = fadd fast float %3319, %3317
  %3321 = fmul fast float %3320, %3240
  %3322 = fmul fast float %3311, 2.000000e+00
  %3323 = fsub fast float 1.000000e+00, %3322
  %3324 = fmul fast float %3323, %3241
  %3325 = fadd fast float %3324, %3322
  %3326 = fmul fast float %3325, %3241
  br label %3327

; <label>:3327                                    ; preds = %3299, %3297, %3284, %3254, %3238
  %3328 = phi float [ %3239, %3238 ], [ %3316, %3299 ], [ %3239, %3297 ], [ %3294, %3284 ], [ %3264, %3254 ]
  %3329 = phi float [ %3240, %3238 ], [ %3321, %3299 ], [ %3240, %3297 ], [ %3295, %3284 ], [ %3265, %3254 ]
  %3330 = phi float [ %3241, %3238 ], [ %3326, %3299 ], [ %3241, %3297 ], [ %3296, %3284 ], [ %3266, %3254 ]
  %3331 = phi float [ %3242, %3238 ], [ %3242, %3299 ], [ %3242, %3297 ], [ %3242, %3284 ], [ %3276, %3254 ]
  %3332 = phi float [ %3243, %3238 ], [ %3243, %3299 ], [ %3243, %3297 ], [ %3243, %3284 ], [ %3277, %3254 ]
  %3333 = phi float [ %3244, %3238 ], [ %3244, %3299 ], [ %3244, %3297 ], [ %3244, %3284 ], [ %3278, %3254 ]
  %3334 = phi float [ %2648, %3238 ], [ %2648, %3299 ], [ %2648, %3297 ], [ %2648, %3284 ], [ %3269, %3254 ]
  %3335 = phi float [ %2652, %3238 ], [ %2652, %3299 ], [ %2652, %3297 ], [ %2652, %3284 ], [ %3281, %3254 ]
  %3336 = and i32 %3246, 12
  %3337 = icmp eq i32 %3336, 12
  br i1 %3337, label %3420, label %3338

; <label>:3338                                    ; preds = %3327
  %3339 = and i32 %3246, 2097184
  %3340 = icmp eq i32 %3339, 2097184
  %3341 = select i1 %3340, float %2835, float 0.000000e+00
  %3342 = and i32 %3246, 4194336
  %3343 = icmp eq i32 %3342, 4194336
  %3344 = select i1 %3343, float %2835, float 0.000000e+00
  %3345 = and i32 %3246, 8388640
  %3346 = icmp eq i32 %3345, 8388640
  %3347 = select i1 %3346, float %2835, float 0.000000e+00
  %3348 = and i32 %3246, 4096
  %3349 = icmp ne i32 %3348, 0
  %3350 = select i1 %3349, float %2835, float 0.000000e+00
  %3351 = icmp eq i32 %3336, 0
  br i1 %3351, label %3352, label %3368

; <label>:3352                                    ; preds = %3338
  %3353 = fsub fast float %3136, %2640
  %3354 = fsub fast float %3137, %2641
  %3355 = fmul fast float %3341, %3353
  %3356 = fmul fast float %3341, %3354
  %3357 = fadd fast float %3355, %2640
  %3358 = fadd fast float %3356, %2641
  %3359 = fsub fast float %3138, %2650
  %3360 = fmul fast float %3344, %3359
  %3361 = fadd fast float %3360, %2650
  %3362 = fsub fast float %3135, %2649
  %3363 = fmul fast float %3347, %3362
  %3364 = fadd fast float %3363, %2649
  %3365 = fsub fast float %3216, %2651
  %3366 = fmul fast float %3350, %3365
  %3367 = fadd fast float %3366, %2651
  br label %3420

; <label>:3368                                    ; preds = %3338
  %3369 = icmp eq i32 %3336, 4
  br i1 %3369, label %3370, label %3404

; <label>:3370                                    ; preds = %3368
  %3371 = fmul fast float %3341, %3136
  %3372 = fmul fast float %3341, %3137
  %3373 = fadd fast float %3371, %2640
  %3374 = fadd fast float %3372, %2641
  %3375 = call float @dx.op.binary.f32(i32 36, float %2650, float %3138)  ; FMin(a,b)
  %3376 = fsub fast float %3375, %2650
  %3377 = fmul fast float %3376, %3344
  %3378 = fadd fast float %3377, %2650
  %3379 = fadd fast float %3135, %2649
  %3380 = fmul fast float %3379, 0x3FF337FAE0000000
  %3381 = fmul fast float %2649, %2649
  %3382 = fmul fast float %3135, %3135
  %3383 = fadd fast float %3382, %3381
  %3384 = fmul fast float %3383, 0x3FE5152B00000000
  %3385 = fmul fast float %2649, 0xBFCC1F85E0000000
  %3386 = fmul fast float %3385, %3135
  %3387 = fadd fast float %3386, 0xBFE1363700000000
  %3388 = fadd fast float %3387, %3380
  %3389 = fsub fast float %3388, %3384
  %3390 = fmul fast float %3379, 0x3FBA6F0D00000000
  %3391 = fmul fast float %3383, 0x3FD0432880000000
  %3392 = fmul fast float %2649, 0xBFEF110800000000
  %3393 = fmul fast float %3392, %3135
  %3394 = fadd fast float %3393, 1.000000e+00
  %3395 = fsub fast float %3394, %3390
  %3396 = fadd fast float %3395, %3391
  %3397 = fdiv fast float %3389, %3396
  %3398 = call float @dx.op.unary.f32(i32 7, float %3397)  ; Saturate(value)
  %3399 = fsub fast float %3398, %2649
  %3400 = fmul fast float %3399, %3347
  %3401 = fadd fast float %3400, %2649
  %3402 = fmul fast float %3350, %3216
  %3403 = fadd fast float %3402, %2651
  br label %3420

; <label>:3404                                    ; preds = %3368
  %3405 = icmp eq i32 %3336, 8
  br i1 %3405, label %3406, label %3420

; <label>:3406                                    ; preds = %3404
  %3407 = fmul fast float %3341, %3136
  %3408 = fmul fast float %3341, %3137
  %3409 = fadd fast float %3407, %2640
  %3410 = fadd fast float %3408, %2641
  %3411 = call float @dx.op.binary.f32(i32 36, float %2650, float %3138)  ; FMin(a,b)
  %3412 = fsub fast float %3411, %2650
  %3413 = fmul fast float %3412, %3344
  %3414 = fadd fast float %3413, %2650
  %3415 = fsub fast float %3135, %2649
  %3416 = fmul fast float %3347, %3415
  %3417 = fadd fast float %3416, %2649
  %3418 = fmul fast float %3350, %3216
  %3419 = fadd fast float %3418, %2651
  br label %3420

; <label>:3420                                    ; preds = %3406, %3404, %3370, %3352, %3327, %2834, %2653, %2639
  %3421 = phi float [ %2640, %3327 ], [ %2640, %2834 ], [ %2640, %2639 ], [ %2640, %2653 ], [ %3357, %3352 ], [ %3373, %3370 ], [ %2640, %3404 ], [ %3409, %3406 ]
  %3422 = phi float [ %2641, %3327 ], [ %2641, %2834 ], [ %2641, %2639 ], [ %2641, %2653 ], [ %3358, %3352 ], [ %3374, %3370 ], [ %2641, %3404 ], [ %3410, %3406 ]
  %3423 = phi float [ %3328, %3327 ], [ %2642, %2834 ], [ %2642, %2639 ], [ %2642, %2653 ], [ %3328, %3352 ], [ %3328, %3370 ], [ %3328, %3404 ], [ %3328, %3406 ]
  %3424 = phi float [ %3329, %3327 ], [ %2643, %2834 ], [ %2643, %2639 ], [ %2643, %2653 ], [ %3329, %3352 ], [ %3329, %3370 ], [ %3329, %3404 ], [ %3329, %3406 ]
  %3425 = phi float [ %3330, %3327 ], [ %2644, %2834 ], [ %2644, %2639 ], [ %2644, %2653 ], [ %3330, %3352 ], [ %3330, %3370 ], [ %3330, %3404 ], [ %3330, %3406 ]
  %3426 = phi float [ %3331, %3327 ], [ %2645, %2834 ], [ %2645, %2639 ], [ %2645, %2653 ], [ %3331, %3352 ], [ %3331, %3370 ], [ %3331, %3404 ], [ %3331, %3406 ]
  %3427 = phi float [ %3332, %3327 ], [ %2646, %2834 ], [ %2646, %2639 ], [ %2646, %2653 ], [ %3332, %3352 ], [ %3332, %3370 ], [ %3332, %3404 ], [ %3332, %3406 ]
  %3428 = phi float [ %3333, %3327 ], [ %2647, %2834 ], [ %2647, %2639 ], [ %2647, %2653 ], [ %3333, %3352 ], [ %3333, %3370 ], [ %3333, %3404 ], [ %3333, %3406 ]
  %3429 = phi float [ %3334, %3327 ], [ %2648, %2834 ], [ %2648, %2639 ], [ %2648, %2653 ], [ %3334, %3352 ], [ %3334, %3370 ], [ %3334, %3404 ], [ %3334, %3406 ]
  %3430 = phi float [ %2649, %3327 ], [ %2649, %2834 ], [ %2649, %2639 ], [ %2649, %2653 ], [ %3364, %3352 ], [ %3401, %3370 ], [ %2649, %3404 ], [ %3417, %3406 ]
  %3431 = phi float [ %2650, %3327 ], [ %2650, %2834 ], [ %2650, %2639 ], [ %2650, %2653 ], [ %3361, %3352 ], [ %3378, %3370 ], [ %2650, %3404 ], [ %3414, %3406 ]
  %3432 = phi float [ %2651, %3327 ], [ %2651, %2834 ], [ %2651, %2639 ], [ %2651, %2653 ], [ %3367, %3352 ], [ %3403, %3370 ], [ %2651, %3404 ], [ %3419, %3406 ]
  %3433 = phi float [ %3335, %3327 ], [ %2652, %2834 ], [ %2652, %2639 ], [ %2652, %2653 ], [ %3335, %3352 ], [ %3335, %3370 ], [ %3335, %3404 ], [ %3335, %3406 ]
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = call float @dx.op.dot2.f32(i32 54, float %3421, float %3422, float %3421, float %3422)  ; Dot2(ax,ay,bx,by)
  %3437 = fmul fast float %3436, 0x3FE3333340000000
  %3438 = fsub fast float 1.000000e+00, %3437
  %3439 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3438, float %3421, float %3422, float %3438)  ; Dot3(ax,ay,az,bx,by,bz)
  %3440 = call float @dx.op.unary.f32(i32 25, float %3439)  ; Rsqrt(value)
  %3441 = fmul fast float %3440, %3421
  %3442 = fmul fast float %3440, %3422
  %3443 = fmul fast float %3438, %3440
  %3444 = fmul fast float %3443, %121
  %3445 = fmul fast float %3443, %122
  %3446 = fmul fast float %3443, %123
  %3447 = fmul fast float %3441, %85
  %3448 = fmul fast float %3441, %86
  %3449 = fmul fast float %3441, %87
  %3450 = fadd fast float %3444, %3447
  %3451 = fadd fast float %3445, %3448
  %3452 = fadd fast float %3446, %3449
  %3453 = fmul fast float %133, %3442
  %3454 = fmul fast float %134, %3442
  %3455 = fmul fast float %135, %3442
  %3456 = fadd fast float %3450, %3453
  %3457 = fadd fast float %3451, %3454
  %3458 = fadd fast float %3452, %3455
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3458, float %3456, float %3457, float %3458)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = call float @dx.op.unary.f32(i32 25, float %3459)  ; Rsqrt(value)
  %3461 = fmul fast float %3456, %3460
  %3462 = fmul fast float %3457, %3460
  %3463 = fmul fast float %3458, %3460
  %3464 = icmp eq i32 %61, 65535
  br i1 %3464, label %3983, label %3465

; <label>:3465                                    ; preds = %3420
  %3466 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %3467 = call float @dx.op.unary.f32(i32 83, float %63)  ; DerivCoarseX(value)
  %3468 = call float @dx.op.unary.f32(i32 83, float %64)  ; DerivCoarseX(value)
  %3469 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %3470 = call float @dx.op.unary.f32(i32 84, float %63)  ; DerivCoarseY(value)
  %3471 = call float @dx.op.unary.f32(i32 84, float %64)  ; DerivCoarseY(value)
  %3472 = fadd fast float %3466, %62
  %3473 = fadd fast float %3467, %63
  %3474 = fadd fast float %3468, %64
  %3475 = fadd fast float %3469, %62
  %3476 = fadd fast float %3470, %63
  %3477 = fadd fast float %3471, %64
  %3478 = mul i32 %61, 48
  %3479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.ResRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.ResRet.f32 %3479, 2
  %3483 = add i32 %3478, 16
  %3484 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3483, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3487 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3488 = add i32 %3478, 32
  %3489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3494 = bitcast float %3493 to i32
  %3495 = fmul fast float %3480, %62
  %3496 = fmul fast float %3481, %63
  %3497 = fmul fast float %3482, %64
  %3498 = fsub fast float %3495, %3485
  %3499 = fsub fast float %3496, %3486
  %3500 = fsub fast float %3497, %3487
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3502 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3503 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3504 = fmul fast float %3501, %3490
  %3505 = fmul fast float %3502, %3491
  %3506 = fmul fast float %3503, %3492
  %3507 = fadd fast float %3490, -1.000000e+00
  %3508 = fadd fast float %3491, -1.000000e+00
  %3509 = fadd fast float %3492, -1.000000e+00
  %3510 = call float @dx.op.unary.f32(i32 27, float %3504)  ; Round_ni(value)
  %3511 = call float @dx.op.unary.f32(i32 27, float %3505)  ; Round_ni(value)
  %3512 = call float @dx.op.unary.f32(i32 27, float %3506)  ; Round_ni(value)
  %3513 = call float @dx.op.binary.f32(i32 36, float %3510, float %3507)  ; FMin(a,b)
  %3514 = call float @dx.op.binary.f32(i32 36, float %3511, float %3508)  ; FMin(a,b)
  %3515 = call float @dx.op.binary.f32(i32 36, float %3512, float %3509)  ; FMin(a,b)
  %3516 = fmul fast float %3515, %3491
  %3517 = fadd fast float %3516, %3514
  %3518 = fmul fast float %3517, %3490
  %3519 = fadd fast float %3518, %3513
  %3520 = fptosi float %3519 to i32
  %3521 = add nsw i32 %3520, %3494
  %3522 = shl nsw i32 %3521, 2
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = lshr i32 %3524, 16
  %3526 = icmp eq i32 %3525, 0
  br i1 %3526, label %3951, label %3527

; <label>:3527                                    ; preds = %3465
  br label %3528

; <label>:3528                                    ; preds = %3650, %3527
  %3529 = phi i32 [ %3552, %3650 ], [ %3525, %3527 ]
  %3530 = phi float [ %3651, %3650 ], [ 0.000000e+00, %3527 ]
  %3531 = phi float [ %3652, %3650 ], [ %1086, %3527 ]
  %3532 = phi float [ %3653, %3650 ], [ %3435, %3527 ]
  %3533 = phi float [ %3654, %3650 ], [ %3433, %3527 ]
  %3534 = phi float [ %3655, %3650 ], [ 0.000000e+00, %3527 ]
  %3535 = phi float [ %3656, %3650 ], [ %3432, %3527 ]
  %3536 = phi float [ %3657, %3650 ], [ %3426, %3527 ]
  %3537 = phi float [ %3658, %3650 ], [ %3427, %3527 ]
  %3538 = phi float [ %3659, %3650 ], [ %3428, %3527 ]
  %3539 = phi float [ %3660, %3650 ], [ %3461, %3527 ]
  %3540 = phi float [ %3661, %3650 ], [ %3462, %3527 ]
  %3541 = phi float [ %3662, %3650 ], [ %3463, %3527 ]
  %3542 = phi float [ %3663, %3650 ], [ %3431, %3527 ]
  %3543 = phi float [ %3664, %3650 ], [ %3430, %3527 ]
  %3544 = phi float [ %3665, %3650 ], [ 0.000000e+00, %3527 ]
  %3545 = phi float [ %3666, %3650 ], [ %3429, %3527 ]
  %3546 = phi float [ %3667, %3650 ], [ %3423, %3527 ]
  %3547 = phi float [ %3668, %3650 ], [ %3424, %3527 ]
  %3548 = phi float [ %3669, %3650 ], [ %3425, %3527 ]
  %3549 = shl nuw nsw i32 %3529, 2
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = lshr i32 %3551, 16
  %3553 = shl i32 %3551, 8
  %3554 = and i32 %3553, 16776960
  %3555 = or i32 %3554, 48
  %3556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = or i32 %3554, 64
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = extractvalue %dx.types.ResRet.i32 %3561, 1
  %3564 = or i32 %3554, 80
  %3565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3564, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 2
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 3
  %3568 = or i32 %3554, 96
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3574 = or i32 %3554, 112
  %3575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3577 = or i32 %3554, 128
  %3578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.f32 %3578, 0
  %3580 = extractvalue %dx.types.ResRet.f32 %3578, 1
  %3581 = extractvalue %dx.types.ResRet.f32 %3578, 2
  %3582 = extractvalue %dx.types.ResRet.f32 %3578, 3
  %3583 = or i32 %3554, 144
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3588 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3589 = or i32 %3554, 160
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = extractvalue %dx.types.ResRet.f32 %3590, 3
  %3595 = or i32 %3554, 192
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = or i32 %3554, 208
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = or i32 %3554, 248
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3610 = call float @dx.op.dot4.f32(i32 56, float %3606, float %3607, float %3608, float %3609, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3611 = or i32 %3554, 16
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = call float @dx.op.dot4.f32(i32 56, float %3613, float %3614, float %3615, float %3616, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3618 = or i32 %3554, 32
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = call float @dx.op.dot4.f32(i32 56, float %3620, float %3621, float %3622, float %3623, float %62, float %63, float %64, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3625 = call float @dx.op.unary.f32(i32 27, float %3610)  ; Round_ni(value)
  %3626 = call float @dx.op.unary.f32(i32 6, float %3625)  ; FAbs(value)
  %3627 = call float @dx.op.unary.f32(i32 27, float %3617)  ; Round_ni(value)
  %3628 = call float @dx.op.unary.f32(i32 6, float %3627)  ; FAbs(value)
  %3629 = call float @dx.op.unary.f32(i32 6, float %3624)  ; FAbs(value)
  %3630 = call float @dx.op.unary.f32(i32 27, float %3629)  ; Round_ni(value)
  %3631 = fadd fast float %3628, %3626
  %3632 = fadd fast float %3631, %3630
  %3633 = fcmp fast oeq float %3632, 0.000000e+00
  %3634 = call float @dx.op.dot4.f32(i32 56, float %3606, float %3607, float %3608, float %3609, float %3472, float %3473, float %3474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3635 = call float @dx.op.dot4.f32(i32 56, float %3613, float %3614, float %3615, float %3616, float %3472, float %3473, float %3474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3636 = call float @dx.op.dot4.f32(i32 56, float %3606, float %3607, float %3608, float %3609, float %3475, float %3476, float %3477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3613, float %3614, float %3615, float %3616, float %3475, float %3476, float %3477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = fsub fast float %3634, %3610
  %3639 = fsub fast float %3636, %3610
  %3640 = fsub fast float %3635, %3617
  %3641 = fsub fast float %3637, %3617
  %3642 = call float @dx.op.dot3.f32(i32 55, float %3557, float %3558, float %3559, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3645 = fadd fast float %3644, %3642
  %3646 = call float @dx.op.unary.f32(i32 7, float %3645)  ; Saturate(value)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3648 = fcmp fast ogt float %3646, %3647
  %3649 = and i1 %3633, %3648
  br i1 %3649, label %3671, label %3650

; <label>:3650                                    ; preds = %3937, %3754, %3671, %3528
  %3651 = phi float [ %3530, %3671 ], [ %3757, %3754 ], [ %3757, %3937 ], [ %3530, %3528 ]
  %3652 = phi float [ %3531, %3671 ], [ %3531, %3754 ], [ %3912, %3937 ], [ %3531, %3528 ]
  %3653 = phi float [ %3532, %3671 ], [ %3532, %3754 ], [ %3911, %3937 ], [ %3532, %3528 ]
  %3654 = phi float [ %3533, %3671 ], [ %3533, %3754 ], [ %3909, %3937 ], [ %3533, %3528 ]
  %3655 = phi float [ %3534, %3671 ], [ %3534, %3754 ], [ %3881, %3937 ], [ %3534, %3528 ]
  %3656 = phi float [ %3535, %3671 ], [ %3535, %3754 ], [ %3879, %3937 ], [ %3535, %3528 ]
  %3657 = phi float [ %3536, %3671 ], [ %3536, %3754 ], [ %3947, %3937 ], [ %3536, %3528 ]
  %3658 = phi float [ %3537, %3671 ], [ %3537, %3754 ], [ %3948, %3937 ], [ %3537, %3528 ]
  %3659 = phi float [ %3538, %3671 ], [ %3538, %3754 ], [ %3949, %3937 ], [ %3538, %3528 ]
  %3660 = phi float [ %3539, %3671 ], [ %3539, %3754 ], [ %3860, %3937 ], [ %3539, %3528 ]
  %3661 = phi float [ %3540, %3671 ], [ %3540, %3754 ], [ %3861, %3937 ], [ %3540, %3528 ]
  %3662 = phi float [ %3541, %3671 ], [ %3541, %3754 ], [ %3862, %3937 ], [ %3541, %3528 ]
  %3663 = phi float [ %3542, %3671 ], [ %3542, %3754 ], [ %3889, %3937 ], [ %3542, %3528 ]
  %3664 = phi float [ %3543, %3671 ], [ %3543, %3754 ], [ %3886, %3937 ], [ %3543, %3528 ]
  %3665 = phi float [ %3544, %3671 ], [ %3544, %3754 ], [ %3883, %3937 ], [ %3544, %3528 ]
  %3666 = phi float [ %3545, %3671 ], [ %3545, %3754 ], [ %3877, %3937 ], [ %3545, %3528 ]
  %3667 = phi float [ %3546, %3671 ], [ %3546, %3754 ], [ %3872, %3937 ], [ %3546, %3528 ]
  %3668 = phi float [ %3547, %3671 ], [ %3547, %3754 ], [ %3873, %3937 ], [ %3547, %3528 ]
  %3669 = phi float [ %3548, %3671 ], [ %3548, %3754 ], [ %3874, %3937 ], [ %3548, %3528 ]
  %3670 = icmp eq i32 %3552, 0
  br i1 %3670, label %3950, label %3528

; <label>:3671                                    ; preds = %3528
  %3672 = extractvalue %dx.types.ResRet.f32 %3556, 3
  %3673 = extractvalue %dx.types.ResRet.f32 %3575, 3
  %3674 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3678 = extractvalue %dx.types.ResRet.i32 %3561, 3
  %3679 = extractvalue %dx.types.ResRet.i32 %3561, 2
  %3680 = bitcast float %3672 to i32
  %3681 = add i32 %3678, 0
  %3682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3681, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3684 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3682, %dx.types.Handle %3683, float %3610, float %3617, float undef, float undef, i32 0, i32 0, i32 undef, float %3638, float %3640, float undef, float %3639, float %3641, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = fmul fast float %3685, %3677
  %3687 = fadd fast float %3686, %3676
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = fmul fast float %3610, %3570
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3617, float %3689)  ; FMad(a,b,c)
  %3691 = fadd fast float %3690, %3675
  %3692 = fmul fast float %3610, %3572
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3617, float %3692)  ; FMad(a,b,c)
  %3694 = fadd fast float %3693, %3674
  %3695 = fmul fast float %3638, %3570
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3640, float %3695)  ; FMad(a,b,c)
  %3697 = fmul fast float %3638, %3572
  %3698 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3640, float %3697)  ; FMad(a,b,c)
  %3699 = fmul fast float %3639, %3570
  %3700 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3641, float %3699)  ; FMad(a,b,c)
  %3701 = fmul fast float %3639, %3572
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3573, float %3641, float %3701)  ; FMad(a,b,c)
  %3703 = add i32 %3679, 0
  %3704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3703, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3705 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3704, %dx.types.Handle %3683, float %3691, float %3694, float undef, float undef, i32 0, i32 0, i32 undef, float %3696, float %3698, float undef, float %3700, float %3702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3706 = extractvalue %dx.types.ResRet.f32 %3705, 0
  %3707 = and i32 %3680, 1024
  %3708 = icmp ne i32 %3707, 0
  %3709 = fcmp fast ogt float %3706, 0x3FE0101020000000
  %3710 = uitofp i1 %3709 to float
  %3711 = select i1 %3708, float %3710, float %3706
  %3712 = and i32 %3680, 8192
  %3713 = icmp ne i32 %3712, 0
  %3714 = select i1 %3713, float %3673, float 1.000000e+00
  %3715 = fmul fast float %3610, 2.000000e+00
  %3716 = fadd fast float %3715, -1.000000e+00
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = fmul fast float %3717, %3603
  %3719 = fsub fast float %3718, %3603
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fmul fast float %3617, 2.000000e+00
  %3722 = fadd fast float %3721, -1.000000e+00
  %3723 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3724 = fmul fast float %3723, %3604
  %3725 = fsub fast float %3724, %3604
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3629, %3566
  %3728 = fsub fast float %3727, %3566
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3688, %3714
  %3731 = fmul fast float %3730, %3685
  %3732 = fmul fast float %3731, %3720
  %3733 = fmul fast float %3732, %3711
  %3734 = fmul fast float %3733, %3726
  %3735 = fmul fast float %3734, %3729
  %3736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3737 = extractvalue %dx.types.CBufRet.f32 %3736, 1
  %3738 = extractvalue %dx.types.CBufRet.f32 %3736, 0
  %3739 = fsub fast float %3646, %3738
  %3740 = fmul fast float %3739, %3737
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3742 = fmul fast float %3735, %3567
  %3743 = fadd fast float %3735, %3567
  %3744 = fmul fast float %3743, %3576
  %3745 = fsub fast float %3744, %3576
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = and i32 %3680, 128
  %3748 = icmp ne i32 %3747, 0
  %3749 = select i1 %3748, float %3746, float %3742
  %3750 = fmul fast float %3749, %3741
  %3751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3752 = extractvalue %dx.types.CBufRet.f32 %3751, 0
  %3753 = fcmp fast ugt float %3750, %3752
  br i1 %3753, label %3754, label %3650

; <label>:3754                                    ; preds = %3671
  %3755 = select i1 %3713, float %3750, float 0.000000e+00
  %3756 = fadd fast float %3755, %3530
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  br i1 %3713, label %3650, label %3758

; <label>:3758                                    ; preds = %3754
  %3759 = and i32 %3680, 4
  %3760 = and i32 %3680, 8
  %3761 = add i32 %3562, 0
  %3762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3761, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3762, %dx.types.Handle %3763, float %3691, float %3694, float undef, float undef, i32 0, i32 0, i32 undef, float %3696, float %3698, float undef, float %3700, float %3702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = bitcast float %3588 to i32
  %3770 = and i32 %3769, 255
  %3771 = uitofp i32 %3770 to float
  %3772 = lshr i32 %3769, 8
  %3773 = and i32 %3772, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3768, %3771
  %3776 = fadd fast float %3775, %3774
  %3777 = fmul fast float %3776, 0x3F70101000000000
  %3778 = add i32 %3563, 0
  %3779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3780 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3779, %dx.types.Handle %3763, float %3691, float %3694, float undef, float undef, i32 0, i32 0, i32 undef, float %3696, float %3698, float undef, float %3700, float %3702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = extractvalue %dx.types.ResRet.f32 %3780, 1
  %3783 = extractvalue %dx.types.ResRet.f32 %3780, 2
  %3784 = extractvalue %dx.types.ResRet.f32 %3780, 3
  %3785 = bitcast float %3582 to i32
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = lshr i32 %3785, 8
  %3789 = and i32 %3788, 255
  %3790 = uitofp i32 %3789 to float
  %3791 = lshr i32 %3785, 16
  %3792 = and i32 %3791, 255
  %3793 = uitofp i32 %3792 to float
  %3794 = fmul fast float %3793, 0x3F70101000000000
  %3795 = fmul fast float %3781, %3787
  %3796 = fadd fast float %3795, %3790
  %3797 = fmul fast float %3796, 0x3F70101000000000
  %3798 = fadd fast float %3782, -5.000000e-01
  %3799 = fadd fast float %3784, -5.000000e-01
  %3800 = fmul fast float %3798, %3794
  %3801 = fmul fast float %3799, %3794
  %3802 = fadd fast float %3800, 5.000000e-01
  %3803 = fadd fast float %3801, 5.000000e-01
  %3804 = fmul fast float %3765, %3591
  %3805 = fmul fast float %3766, %3592
  %3806 = fmul fast float %3767, %3593
  %3807 = fmul fast float %3802, 2.000000e+00
  %3808 = fadd fast float %3807, -1.000000e+00
  %3809 = fmul fast float %3803, 2.000000e+00
  %3810 = fadd fast float %3809, -1.000000e+00
  %3811 = fadd fast float %3808, %3810
  %3812 = fmul fast float %3811, 5.000000e-01
  %3813 = fsub fast float %3808, %3810
  %3814 = fmul fast float %3813, 5.000000e-01
  %3815 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3816 = fsub fast float 1.000000e+00, %3815
  %3817 = call float @dx.op.unary.f32(i32 6, float %3814)  ; FAbs(value)
  %3818 = fsub fast float %3816, %3817
  %3819 = call float @dx.op.dot3.f32(i32 55, float %3812, float %3814, float %3818, float %3812, float %3814, float %3818)  ; Dot3(ax,ay,az,bx,by,bz)
  %3820 = call float @dx.op.unary.f32(i32 25, float %3819)  ; Rsqrt(value)
  %3821 = fmul fast float %3812, %3820
  %3822 = fmul fast float %3814, %3820
  %3823 = fmul fast float %3820, %3818
  %3824 = fmul fast float %3823, %3557
  %3825 = fmul fast float %3823, %3558
  %3826 = fmul fast float %3823, %3559
  %3827 = fmul fast float %3821, %3579
  %3828 = fmul fast float %3821, %3580
  %3829 = fmul fast float %3821, %3581
  %3830 = fadd fast float %3827, %3824
  %3831 = fadd fast float %3828, %3825
  %3832 = fadd fast float %3829, %3826
  %3833 = fmul fast float %3822, %3585
  %3834 = fmul fast float %3822, %3586
  %3835 = fmul fast float %3822, %3587
  %3836 = fadd fast float %3830, %3833
  %3837 = fadd fast float %3831, %3834
  %3838 = fadd fast float %3832, %3835
  %3839 = call float @dx.op.dot3.f32(i32 55, float %3836, float %3837, float %3838, float %3836, float %3837, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3840 = call float @dx.op.unary.f32(i32 25, float %3839)  ; Rsqrt(value)
  %3841 = fmul fast float %3836, %3840
  %3842 = fmul fast float %3837, %3840
  %3843 = fmul fast float %3838, %3840
  %3844 = icmp ne i32 %3760, 0
  %3845 = select i1 %3844, float 1.000000e+00, float 0.000000e+00
  %3846 = fmul fast float %3750, %3845
  %3847 = and i32 %3680, 1
  %3848 = icmp eq i32 %3847, 0
  br i1 %3848, label %3849, label %3853

; <label>:3849                                    ; preds = %3758
  %3850 = fsub fast float %3841, %3539
  %3851 = fsub fast float %3842, %3540
  %3852 = fsub fast float %3843, %3541
  br label %3853

; <label>:3853                                    ; preds = %3849, %3758
  %3854 = phi float [ %3850, %3849 ], [ %3841, %3758 ]
  %3855 = phi float [ %3851, %3849 ], [ %3842, %3758 ]
  %3856 = phi float [ %3852, %3849 ], [ %3843, %3758 ]
  %3857 = fmul float %3856, %3846
  %3858 = fmul float %3855, %3846
  %3859 = fmul float %3854, %3846
  %3860 = fadd fast float %3859, %3539
  %3861 = fadd fast float %3858, %3540
  %3862 = fadd fast float %3857, %3541
  %3863 = icmp ne i32 %3759, 0
  %3864 = select i1 %3863, float 1.000000e+00, float 0.000000e+00
  %3865 = fmul fast float %3750, %3864
  %3866 = fsub fast float %3804, %3546
  %3867 = fsub fast float %3805, %3547
  %3868 = fsub fast float %3806, %3548
  %3869 = fmul fast float %3866, %3865
  %3870 = fmul fast float %3867, %3865
  %3871 = fmul fast float %3868, %3865
  %3872 = fadd fast float %3869, %3546
  %3873 = fadd fast float %3870, %3547
  %3874 = fadd fast float %3871, %3548
  %3875 = fsub fast float %3777, %3545
  %3876 = fmul fast float %3875, %3865
  %3877 = fadd fast float %3876, %3545
  %3878 = fmul fast float %3865, %3535
  %3879 = fsub fast float %3535, %3878
  %3880 = fmul fast float %3865, %3534
  %3881 = fsub fast float %3534, %3880
  %3882 = fadd fast float %3750, %3544
  %3883 = call float @dx.op.unary.f32(i32 7, float %3882)  ; Saturate(value)
  %3884 = fsub fast float %3797, %3543
  %3885 = fmul fast float %3884, %3846
  %3886 = fadd fast float %3885, %3543
  %3887 = fsub fast float %3783, %3542
  %3888 = fmul fast float %3887, %3846
  %3889 = fadd fast float %3888, %3542
  %3890 = call float @dx.op.dot3.f32(i32 55, float %3804, float %3805, float %3806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = extractvalue %dx.types.CBufRet.f32 %3891, 1
  %3894 = fmul fast float %3893, %3890
  %3895 = fadd fast float %3894, %3892
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = bitcast float %3594 to i32
  %3898 = and i32 %3897, 65535
  %3899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3898)  ; LegacyF16ToF32(value)
  %3900 = lshr i32 %3897, 16
  %3901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3900)  ; LegacyF16ToF32(value)
  %3902 = fcmp fast oge float %3899, 0.000000e+00
  %3903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.f32 %3903, 0
  %3905 = select i1 %3902, float %3899, float %3904
  %3906 = fadd fast float %3905, %3901
  %3907 = fsub fast float %3896, %3533
  %3908 = fmul fast float %3907, %3750
  %3909 = fadd fast float %3908, %3533
  %3910 = fmul fast float %3906, %3750
  %3911 = call float @dx.op.binary.f32(i32 35, float %3532, float %3910)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3531, float %3750)  ; FMax(a,b)
  %3913 = and i32 %3680, 16
  %3914 = icmp eq i32 %3913, 0
  br i1 %3914, label %3937, label %3915

; <label>:3915                                    ; preds = %3853
  %3916 = bitcast float %3600 to i32
  %3917 = add i32 %3597, 0
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3917, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3918, %dx.types.Handle %3763, float %3691, float %3694, float undef, float undef, i32 0, i32 0, i32 undef, float %3696, float %3698, float undef, float %3700, float %3702, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = and i32 %3916, 65535
  %3924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3923)  ; LegacyF16ToF32(value)
  %3925 = fmul fast float %3920, %3591
  %3926 = fmul fast float %3921, %3592
  %3927 = fmul fast float %3922, %3593
  %3928 = and i32 %3680, 16384
  %3929 = icmp ne i32 %3928, 0
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = select i1 %3929, float %3931, float 1.000000e+00
  %3933 = fmul fast float %3932, %3924
  %3934 = fmul fast float %3925, %3933
  %3935 = fmul fast float %3926, %3933
  %3936 = fmul fast float %3927, %3933
  br label %3937

; <label>:3937                                    ; preds = %3915, %3853
  %3938 = phi float [ %3934, %3915 ], [ 0.000000e+00, %3853 ]
  %3939 = phi float [ %3935, %3915 ], [ 0.000000e+00, %3853 ]
  %3940 = phi float [ %3936, %3915 ], [ 0.000000e+00, %3853 ]
  %3941 = fsub fast float %3938, %3536
  %3942 = fsub fast float %3939, %3537
  %3943 = fsub fast float %3940, %3538
  %3944 = fmul fast float %3941, %3750
  %3945 = fmul fast float %3942, %3750
  %3946 = fmul fast float %3943, %3750
  %3947 = fadd fast float %3944, %3536
  %3948 = fadd fast float %3945, %3537
  %3949 = fadd fast float %3946, %3538
  br label %3650

; <label>:3950                                    ; preds = %3650
  br label %3951

; <label>:3951                                    ; preds = %3950, %3465
  %3952 = phi float [ 0.000000e+00, %3465 ], [ %3651, %3950 ]
  %3953 = phi float [ %1086, %3465 ], [ %3652, %3950 ]
  %3954 = phi float [ %3435, %3465 ], [ %3653, %3950 ]
  %3955 = phi float [ %3433, %3465 ], [ %3654, %3950 ]
  %3956 = phi float [ 0.000000e+00, %3465 ], [ %3655, %3950 ]
  %3957 = phi float [ %3432, %3465 ], [ %3656, %3950 ]
  %3958 = phi float [ %3426, %3465 ], [ %3657, %3950 ]
  %3959 = phi float [ %3427, %3465 ], [ %3658, %3950 ]
  %3960 = phi float [ %3428, %3465 ], [ %3659, %3950 ]
  %3961 = phi float [ %3461, %3465 ], [ %3660, %3950 ]
  %3962 = phi float [ %3462, %3465 ], [ %3661, %3950 ]
  %3963 = phi float [ %3463, %3465 ], [ %3662, %3950 ]
  %3964 = phi float [ %3431, %3465 ], [ %3663, %3950 ]
  %3965 = phi float [ %3430, %3465 ], [ %3664, %3950 ]
  %3966 = phi float [ 0.000000e+00, %3465 ], [ %3665, %3950 ]
  %3967 = phi float [ %3429, %3465 ], [ %3666, %3950 ]
  %3968 = phi float [ %3423, %3465 ], [ %3667, %3950 ]
  %3969 = phi float [ %3424, %3465 ], [ %3668, %3950 ]
  %3970 = phi float [ %3425, %3465 ], [ %3669, %3950 ]
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %3961, float %3962, float %3963)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = call float @dx.op.unary.f32(i32 25, float %3971)  ; Rsqrt(value)
  %3973 = fmul fast float %3972, %3961
  %3974 = fmul fast float %3972, %3962
  %3975 = fmul fast float %3972, %3963
  %3976 = fadd fast float %3966, %1086
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3973, float %3974, float %3975, float %3973, float %3974, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = call float @dx.op.unary.f32(i32 25, float %3978)  ; Rsqrt(value)
  %3980 = fmul fast float %3979, %3973
  %3981 = fmul fast float %3979, %3974
  %3982 = fmul fast float %3979, %3975
  br label %3983

; <label>:3983                                    ; preds = %3951, %3420
  %3984 = phi float [ %3980, %3951 ], [ %3461, %3420 ]
  %3985 = phi float [ %3981, %3951 ], [ %3462, %3420 ]
  %3986 = phi float [ %3982, %3951 ], [ %3463, %3420 ]
  %3987 = phi float [ %3968, %3951 ], [ %3423, %3420 ]
  %3988 = phi float [ %3969, %3951 ], [ %3424, %3420 ]
  %3989 = phi float [ %3970, %3951 ], [ %3425, %3420 ]
  %3990 = phi float [ %3958, %3951 ], [ %3426, %3420 ]
  %3991 = phi float [ %3959, %3951 ], [ %3427, %3420 ]
  %3992 = phi float [ %3960, %3951 ], [ %3428, %3420 ]
  %3993 = phi float [ %3967, %3951 ], [ %3429, %3420 ]
  %3994 = phi float [ %3977, %3951 ], [ %1086, %3420 ]
  %3995 = phi float [ %3965, %3951 ], [ %3430, %3420 ]
  %3996 = phi float [ %3964, %3951 ], [ %3431, %3420 ]
  %3997 = phi float [ %3957, %3951 ], [ %3432, %3420 ]
  %3998 = phi float [ %3956, %3951 ], [ 0.000000e+00, %3420 ]
  %3999 = phi float [ %3952, %3951 ], [ 0.000000e+00, %3420 ]
  %4000 = phi float [ %3954, %3951 ], [ %3435, %3420 ]
  %4001 = phi float [ %3953, %3951 ], [ %1086, %3420 ]
  %4002 = phi float [ %3955, %3951 ], [ %3433, %3420 ]
  %4003 = fadd fast float %3993, 0xBFB99999A0000000
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = fmul fast float %4004, 0x3FF1C71C80000000
  %4006 = call float @dx.op.binary.f32(i32 36, float %3993, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4007 = fsub fast float 1.000000e+00, %4005
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = fmul fast float %4008, %3987
  %4010 = fmul fast float %4008, %3988
  %4011 = fmul fast float %4008, %3989
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4015 = fmul fast float %4005, %3987
  %4016 = fmul fast float %4005, %3988
  %4017 = fmul fast float %4005, %3989
  %4018 = fadd fast float %4015, %4006
  %4019 = fadd fast float %4016, %4006
  %4020 = fadd fast float %4017, %4006
  %4021 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4022 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4023 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4024 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %4025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.i32 %4025, 3
  %4027 = and i32 %4026, 8
  %4028 = icmp ne i32 %4027, 0
  %4029 = call float @dx.op.binary.f32(i32 35, float %4012, float %3987)  ; FMax(a,b)
  %4030 = call float @dx.op.binary.f32(i32 35, float %4013, float %3987)  ; FMax(a,b)
  %4031 = call float @dx.op.binary.f32(i32 35, float %4014, float %3987)  ; FMax(a,b)
  %4032 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4013, float %4014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4033 = select i1 %260, float %3987, float %4012
  %4034 = select i1 %260, float %4032, float %4013
  %4035 = select i1 %260, float 1.000000e+00, float %4014
  %4036 = select i1 %4028, float %4029, float %4033
  %4037 = select i1 %4028, float %4030, float %4034
  %4038 = select i1 %4028, float %4031, float %4035
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4043 = fadd fast float %4040, %201
  %4044 = fadd fast float %4041, %202
  %4045 = fadd fast float %4042, %203
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = fsub fast float %4043, %4047
  %4050 = fsub fast float %4044, %4048
  %4051 = fmul fast float %4049, %4049
  %4052 = fmul fast float %4050, %4050
  %4053 = fadd fast float %4051, %4052
  %4054 = call float @dx.op.unary.f32(i32 24, float %4053)  ; Sqrt(value)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4056 = fcmp fast olt float %4054, %4055
  br i1 %4056, label %4057, label %4124

; <label>:4057                                    ; preds = %3983
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.CBufRet.f32 %4058, 1
  %4065 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4066 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4068 = extractvalue %dx.types.CBufRet.f32 %4060, 3
  %4069 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4070 = fadd fast float %4067, %4043
  %4071 = fadd fast float %4068, %4044
  %4072 = fadd fast float %4069, %4045
  %4073 = fmul fast float %4070, %4059
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %4071, float %4061, float %4073)  ; FMad(a,b,c)
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4063, float %4074)  ; FMad(a,b,c)
  %4076 = fmul fast float %4070, %4064
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %4071, float %4065, float %4076)  ; FMad(a,b,c)
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4066, float %4077)  ; FMad(a,b,c)
  %4079 = fsub fast float %4075, %4067
  %4080 = fsub fast float %4078, %4068
  %4081 = fsub fast float %4079, %4047
  %4082 = fadd fast float %4081, %4055
  %4083 = fsub fast float %4080, %4048
  %4084 = fadd fast float %4083, %4055
  %4085 = extractvalue %dx.types.CBufRet.f32 %4046, 3
  %4086 = fmul fast float %4082, %4085
  %4087 = fmul fast float %4084, %4085
  %4088 = call float @dx.op.unary.f32(i32 7, float %4086)  ; Saturate(value)
  %4089 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4090 = fsub fast float 1.000000e+00, %4088
  %4091 = fsub fast float 1.000000e+00, %4089
  %4092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %54, float %4090, float %4091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = fcmp fast ugt float %4093, 0.000000e+00
  br i1 %4094, label %4095, label %4398

; <label>:4095                                    ; preds = %4057
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 2
  %4098 = fmul fast float %4097, %4093
  %4099 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4100 = fadd fast float %4099, %4098
  %4101 = extractvalue %dx.types.CBufRet.f32 %4062, 2
  %4102 = fadd fast float %4100, %4069
  %4103 = fmul fast float %4075, %4063
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4066, float %4103)  ; FMad(a,b,c)
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4102, float %4101, float %4104)  ; FMad(a,b,c)
  %4106 = fsub fast float %4105, %4069
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4109 = fsub fast float %4106, %4108
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4090, float %4091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.ResRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.ResRet.f32 %4110, 2
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4090, float %4091, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.ResRet.f32 %4114, 1
  %4117 = extractvalue %dx.types.ResRet.f32 %4114, 2
  %4118 = fadd fast float %4115, %4111
  %4119 = fmul fast float %4118, 0x3F847AE140000000
  %4120 = fadd fast float %4116, %4112
  %4121 = fmul fast float %4120, 0x3F847AE140000000
  %4122 = fadd fast float %4117, %4113
  %4123 = fmul fast float %4122, 0x3F847AE140000000
  br label %4398

; <label>:4124                                    ; preds = %3983
  %4125 = and i32 %239, 1
  %4126 = icmp eq i32 %4125, 0
  br i1 %4126, label %4398, label %4127

; <label>:4127                                    ; preds = %4124
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 0
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4135 = extractvalue %dx.types.CBufRet.f32 %4130, 1
  %4136 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4137 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4138 = extractvalue %dx.types.CBufRet.f32 %4130, 3
  %4139 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4140 = fadd fast float %4137, %4043
  %4141 = fadd fast float %4138, %4044
  %4142 = fadd fast float %4139, %4045
  %4143 = fmul fast float %4140, %4129
  %4144 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4131, float %4143)  ; FMad(a,b,c)
  %4145 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4133, float %4144)  ; FMad(a,b,c)
  %4146 = fmul fast float %4140, %4134
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4141, float %4135, float %4146)  ; FMad(a,b,c)
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4142, float %4136, float %4147)  ; FMad(a,b,c)
  %4149 = fsub fast float %4145, %4137
  %4150 = fsub fast float %4148, %4138
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.i32 %4158, 0
  %4160 = extractvalue %dx.types.CBufRet.i32 %4158, 1
  %4161 = udiv i32 %4160, %4159
  %4162 = fsub fast float %4149, %4152
  %4163 = fsub fast float %4150, %4153
  %4164 = call float @dx.op.binary.f32(i32 35, float %4162, float 0.000000e+00)  ; FMax(a,b)
  %4165 = call float @dx.op.binary.f32(i32 35, float %4163, float 0.000000e+00)  ; FMax(a,b)
  %4166 = call float @dx.op.binary.f32(i32 36, float %4164, float %4154)  ; FMin(a,b)
  %4167 = call float @dx.op.binary.f32(i32 36, float %4165, float %4155)  ; FMin(a,b)
  %4168 = add i32 %4159, -1
  %4169 = add i32 %4161, -1
  %4170 = fmul fast float %4166, %4157
  %4171 = fmul fast float %4167, %4157
  %4172 = fptoui float %4170 to i32
  %4173 = fptoui float %4171 to i32
  %4174 = call i32 @dx.op.binary.i32(i32 40, i32 %4172, i32 %4168)  ; UMin(a,b)
  %4175 = call i32 @dx.op.binary.i32(i32 40, i32 %4173, i32 %4169)  ; UMin(a,b)
  %4176 = mul i32 %4175, %4159
  %4177 = add i32 %4176, %4174
  %4178 = shl i32 %4177, 2
  %4179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.i32 %4179, 0
  %4181 = icmp eq i32 %4180, -1
  br i1 %4181, label %4398, label %4182

; <label>:4182                                    ; preds = %4127
  %4183 = mul i32 %4180, 148
  %4184 = add i32 %4183, 4
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = add i32 %4183, 8
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = add i32 %4183, 36
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = add i32 %4183, 60
  %4194 = add i32 %4183, 92
  %4195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.i32 %4195, 0
  %4197 = add i32 %4183, 116
  %4198 = fsub fast float %4149, %4186
  %4199 = fsub fast float %4150, %4189
  %4200 = fmul fast float %4157, %4198
  %4201 = fmul fast float %4157, %4199
  %4202 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4204 = fsub fast float 1.000000e+00, %4203
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 2
  %4207 = call float @dx.op.unary.f32(i32 83, float %4202)  ; DerivCoarseX(value)
  %4208 = call float @dx.op.unary.f32(i32 83, float %4204)  ; DerivCoarseX(value)
  %4209 = call float @dx.op.unary.f32(i32 84, float %4202)  ; DerivCoarseY(value)
  %4210 = call float @dx.op.unary.f32(i32 84, float %4204)  ; DerivCoarseY(value)
  %4211 = fmul fast float %4207, %4206
  %4212 = fmul fast float %4208, %4206
  %4213 = fmul fast float %4209, %4206
  %4214 = fmul fast float %4210, %4206
  %4215 = call float @dx.op.dot2.f32(i32 54, float %4213, float %4214, float %4213, float %4214)  ; Dot2(ax,ay,bx,by)
  %4216 = call float @dx.op.dot2.f32(i32 54, float %4211, float %4212, float %4211, float %4212)  ; Dot2(ax,ay,bx,by)
  %4217 = call float @dx.op.binary.f32(i32 35, float %4216, float %4215)  ; FMax(a,b)
  %4218 = call float @dx.op.unary.f32(i32 23, float %4217)  ; Log(value)
  %4219 = fmul fast float %4218, 5.000000e-01
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4222 = fadd fast float %4221, %4219
  %4223 = call float @dx.op.binary.f32(i32 35, float %4222, float 0.000000e+00)  ; FMax(a,b)
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4226 = fadd fast float %4225, %4223
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 3
  %4229 = fadd fast float %4226, %4228
  %4230 = add i32 %4196, 0
  %4231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4231, i32 0)  ; GetDimensions(handle,mipLevel)
  %4233 = extractvalue %dx.types.Dimensions %4232, 0
  %4234 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4233)  ; FirstbitLo(value)
  %4235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.i32 %4235, 1
  %4237 = sub nsw i32 %4236, %4234
  %4238 = sitofp i32 %4237 to float
  %4239 = fsub fast float %4229, %4238
  %4240 = call float @dx.op.binary.f32(i32 35, float %4239, float 0.000000e+00)  ; FMax(a,b)
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4231, %dx.types.Handle %52, float %4202, float %4204, float %4192, float undef, i32 0, i32 0, i32 undef, float %4240)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = fcmp ule float %4242, 0x3FE0101020000000
  %4244 = extractvalue %dx.types.CBufRet.i32 %4235, 0
  %4245 = and i32 %4244, 128
  %4246 = icmp ne i32 %4245, 0
  %4247 = and i1 %4243, %4246
  br i1 %4247, label %4398, label %4248

; <label>:4248                                    ; preds = %4182
  %4249 = add i32 %4183, 20
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4183, 24
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4183, 40
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4183, 96
  %4259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.i32 %4259, 0
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 2
  %4263 = fmul fast float %4262, %4202
  %4264 = fmul fast float %4262, %4204
  %4265 = extractvalue %dx.types.CBufRet.f32 %4261, 3
  %4266 = fadd fast float %4263, %4265
  %4267 = fadd fast float %4264, %4265
  %4268 = add i32 %4260, 0
  %4269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4268, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4270 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4269, i32 0)  ; GetDimensions(handle,mipLevel)
  %4271 = extractvalue %dx.types.Dimensions %4270, 0
  %4272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4271)  ; FirstbitLo(value)
  %4273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.i32 %4273, 1
  %4275 = sub nsw i32 %4274, %4272
  %4276 = sitofp i32 %4275 to float
  %4277 = fsub fast float %4226, %4276
  %4278 = call float @dx.op.binary.f32(i32 35, float %4277, float 0.000000e+00)  ; FMax(a,b)
  %4279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4269, %dx.types.Handle %52, float %4266, float %4267, float %4257, float undef, i32 0, i32 0, i32 undef, float %4278)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = fmul fast float %4280, %4251
  %4282 = fadd fast float %4281, %4254
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = extractvalue %dx.types.CBufRet.f32 %4283, 1
  %4286 = extractvalue %dx.types.CBufRet.f32 %4283, 2
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4291 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4292 = fadd fast float %4288, %4149
  %4293 = fadd fast float %4290, %4150
  %4294 = fadd fast float %4282, %4291
  %4295 = fmul fast float %4292, %4284
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4293, float %4285, float %4295)  ; FMad(a,b,c)
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4286, float %4296)  ; FMad(a,b,c)
  %4298 = fsub fast float %4297, %4291
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4301 = fsub fast float %4298, %4300
  %4302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.i32 %4302, 0
  %4304 = call i32 @dx.op.binary.i32(i32 40, i32 %4180, i32 %4303)  ; UMin(a,b)
  %4305 = mul i32 %4304, 36
  %4306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.i32 %4306, 0
  %4308 = add i32 %4305, 4
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = fmul fast float %4310, %4202
  %4312 = fmul fast float %4310, %4204
  %4313 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4314 = fadd fast float %4311, %4313
  %4315 = fadd fast float %4312, %4313
  %4316 = icmp eq i32 %4307, 0
  br i1 %4316, label %4385, label %4317

; <label>:4317                                    ; preds = %4248
  br label %4318

; <label>:4318                                    ; preds = %4375, %4317
  %4319 = phi float [ %4376, %4375 ], [ 0.000000e+00, %4317 ]
  %4320 = phi float [ %4377, %4375 ], [ 0.000000e+00, %4317 ]
  %4321 = phi float [ %4378, %4375 ], [ 0.000000e+00, %4317 ]
  %4322 = phi float [ %4379, %4375 ], [ 0.000000e+00, %4317 ]
  %4323 = phi float [ %4380, %4375 ], [ 0.000000e+00, %4317 ]
  %4324 = phi float [ %4381, %4375 ], [ 0.000000e+00, %4317 ]
  %4325 = phi i32 [ %4382, %4375 ], [ 0, %4317 ]
  %4326 = shl i32 %4325, 2
  %4327 = add i32 %4193, %4326
  %4328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = add i32 %4197, %4326
  %4331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.i32 %4331, 0
  %4333 = add i32 %4332, 0
  %4334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4333, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4335 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4334, i32 0)  ; GetDimensions(handle,mipLevel)
  %4336 = extractvalue %dx.types.Dimensions %4335, 0
  %4337 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4336)  ; FirstbitLo(value)
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 1
  %4340 = sub nsw i32 %4339, %4337
  %4341 = sitofp i32 %4340 to float
  %4342 = fsub fast float %4226, %4341
  %4343 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4334, %dx.types.Handle %52, float %4314, float %4315, float %4329, float undef, i32 0, i32 0, i32 undef, float %4343)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fcmp fast ogt float %4345, 0.000000e+00
  br i1 %4346, label %4347, label %4375

; <label>:4347                                    ; preds = %4318
  %4348 = add i32 %4308, %4326
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = and i32 %4350, 32767
  %4352 = mul nuw nsw i32 %4351, 928
  %4353 = add nuw nsw i32 %4352, 48
  %4354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.ResRet.f32 %4354, 1
  %4357 = extractvalue %dx.types.ResRet.f32 %4354, 2
  %4358 = add nuw nsw i32 %4352, 60
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = fmul fast float %4355, %4345
  %4364 = fmul fast float %4356, %4345
  %4365 = fmul fast float %4357, %4345
  %4366 = fadd fast float %4363, %4319
  %4367 = fadd fast float %4364, %4320
  %4368 = fadd fast float %4365, %4321
  %4369 = fmul fast float %4360, %4345
  %4370 = fmul fast float %4361, %4345
  %4371 = fmul fast float %4362, %4345
  %4372 = fadd fast float %4369, %4322
  %4373 = fadd fast float %4370, %4323
  %4374 = fadd fast float %4371, %4324
  br label %4375

; <label>:4375                                    ; preds = %4347, %4318
  %4376 = phi float [ %4366, %4347 ], [ %4319, %4318 ]
  %4377 = phi float [ %4367, %4347 ], [ %4320, %4318 ]
  %4378 = phi float [ %4368, %4347 ], [ %4321, %4318 ]
  %4379 = phi float [ %4372, %4347 ], [ %4322, %4318 ]
  %4380 = phi float [ %4373, %4347 ], [ %4323, %4318 ]
  %4381 = phi float [ %4374, %4347 ], [ %4324, %4318 ]
  %4382 = add nuw i32 %4325, 1
  %4383 = icmp eq i32 %4382, %4307
  br i1 %4383, label %4384, label %4318

; <label>:4384                                    ; preds = %4375
  br label %4385

; <label>:4385                                    ; preds = %4384, %4248
  %4386 = phi float [ 0.000000e+00, %4248 ], [ %4376, %4384 ]
  %4387 = phi float [ 0.000000e+00, %4248 ], [ %4377, %4384 ]
  %4388 = phi float [ 0.000000e+00, %4248 ], [ %4378, %4384 ]
  %4389 = phi float [ 0.000000e+00, %4248 ], [ %4379, %4384 ]
  %4390 = phi float [ 0.000000e+00, %4248 ], [ %4380, %4384 ]
  %4391 = phi float [ 0.000000e+00, %4248 ], [ %4381, %4384 ]
  %4392 = fadd fast float %4389, %4386
  %4393 = fmul fast float %4392, 0x3F847AE140000000
  %4394 = fadd fast float %4390, %4387
  %4395 = fmul fast float %4394, 0x3F847AE140000000
  %4396 = fadd fast float %4391, %4388
  %4397 = fmul fast float %4396, 0x3F847AE140000000
  br label %4398

; <label>:4398                                    ; preds = %4385, %4182, %4127, %4124, %4095, %4057
  %4399 = phi float [ %4119, %4095 ], [ 0.000000e+00, %4057 ], [ %4393, %4385 ], [ 0.000000e+00, %4127 ], [ 0.000000e+00, %4182 ], [ 0.000000e+00, %4124 ]
  %4400 = phi float [ %4121, %4095 ], [ 0.000000e+00, %4057 ], [ %4395, %4385 ], [ 0.000000e+00, %4127 ], [ 0.000000e+00, %4182 ], [ 0.000000e+00, %4124 ]
  %4401 = phi float [ %4123, %4095 ], [ 0.000000e+00, %4057 ], [ %4397, %4385 ], [ 0.000000e+00, %4127 ], [ 0.000000e+00, %4182 ], [ 0.000000e+00, %4124 ]
  %4402 = phi float [ %4109, %4095 ], [ -1.310720e+05, %4057 ], [ %4301, %4385 ], [ -1.310720e+05, %4127 ], [ -1.310720e+05, %4182 ], [ -1.310720e+05, %4124 ]
  %4403 = phi i1 [ true, %4095 ], [ false, %4057 ], [ true, %4385 ], [ false, %4127 ], [ false, %4182 ], [ false, %4124 ]
  %4404 = and i32 %239, 3
  %4405 = icmp eq i32 %4404, 1
  %4406 = select i1 %4405, float 1.000000e+00, float 0.000000e+00
  %4407 = fsub fast float %4402, %203
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = select i1 %4403, float %4408, float 1.000000e+00
  %4410 = fmul fast float %4409, %4406
  %4411 = icmp eq i32 %4404, 3
  %4412 = select i1 %4411, float 1.000000e+00, float %4410
  %4413 = call float @dx.op.binary.f32(i32 35, float %3999, float %4412)  ; FMax(a,b)
  %4414 = fcmp fast olt float %4412, 1.000000e+00
  %4415 = fcmp uge float %75, 0.000000e+00
  %4416 = and i1 %4415, %4414
  br i1 %4416, label %4417, label %4427

; <label>:4417                                    ; preds = %4398
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %52, float %75, float %76, float %77, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = fadd fast float %4419, %4413
  %4423 = fcmp ule float %74, 0.000000e+00
  %4424 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = select i1 %4423, float %4424, float 1.000000e+00
  %4426 = fmul fast float %4425, %4421
  br label %4427

; <label>:4427                                    ; preds = %4417, %4398
  %4428 = phi float [ %4422, %4417 ], [ %4413, %4398 ]
  %4429 = phi float [ %4420, %4417 ], [ 0.000000e+00, %4398 ]
  %4430 = phi float [ %4426, %4417 ], [ 0.000000e+00, %4398 ]
  %4431 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4433 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4434 = fcmp fast une float %4432, 0.000000e+00
  %4435 = fcmp fast une float %4433, 0.000000e+00
  %4436 = or i1 %4434, %4435
  br i1 %4436, label %4437, label %4996

; <label>:4437                                    ; preds = %4427
  br i1 %4434, label %4438, label %4711

; <label>:4438                                    ; preds = %4437
  %4439 = call float @dx.op.unary.f32(i32 23, float %3996)  ; Log(value)
  %4440 = fmul fast float %4439, 4.000000e+00
  %4441 = call float @dx.op.unary.f32(i32 21, float %4440)  ; Exp(value)
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = fmul fast float %4443, %62
  %4445 = fmul fast float %4443, %63
  %4446 = fmul fast float %4443, %64
  %4447 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4448 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4449 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4450 = call float @dx.op.unary.f32(i32 23, float %4447)  ; Log(value)
  %4451 = call float @dx.op.unary.f32(i32 23, float %4448)  ; Log(value)
  %4452 = call float @dx.op.unary.f32(i32 23, float %4449)  ; Log(value)
  %4453 = fmul fast float %4450, 4.000000e+00
  %4454 = fmul fast float %4451, 4.000000e+00
  %4455 = fmul fast float %4452, 4.000000e+00
  %4456 = call float @dx.op.unary.f32(i32 21, float %4453)  ; Exp(value)
  %4457 = call float @dx.op.unary.f32(i32 21, float %4454)  ; Exp(value)
  %4458 = call float @dx.op.unary.f32(i32 21, float %4455)  ; Exp(value)
  %4459 = fadd fast float %4457, %4456
  %4460 = fadd fast float %4459, %4458
  %4461 = fdiv fast float 1.000000e+00, %4460
  %4462 = fmul fast float %4461, %4456
  %4463 = fcmp fast ogt float %71, 0.000000e+00
  %4464 = fcmp fast ogt float %72, 0.000000e+00
  %4465 = fcmp fast ogt float %73, 0.000000e+00
  %4466 = fcmp fast olt float %71, 0.000000e+00
  %4467 = fcmp fast olt float %72, 0.000000e+00
  %4468 = fcmp fast olt float %73, 0.000000e+00
  %4469 = zext i1 %4463 to i32
  %4470 = zext i1 %4464 to i32
  %4471 = zext i1 %4465 to i32
  %4472 = zext i1 %4466 to i32
  %4473 = zext i1 %4467 to i32
  %4474 = zext i1 %4468 to i32
  %4475 = sub nsw i32 %4469, %4472
  %4476 = sub nsw i32 %4470, %4473
  %4477 = sub nsw i32 %4471, %4474
  %4478 = call float @dx.op.unary.f32(i32 83, float %4444)  ; DerivCoarseX(value)
  %4479 = call float @dx.op.unary.f32(i32 83, float %4445)  ; DerivCoarseX(value)
  %4480 = call float @dx.op.unary.f32(i32 83, float %4446)  ; DerivCoarseX(value)
  %4481 = call float @dx.op.unary.f32(i32 84, float %4444)  ; DerivCoarseY(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %4445)  ; DerivCoarseY(value)
  %4483 = call float @dx.op.unary.f32(i32 84, float %4446)  ; DerivCoarseY(value)
  %4484 = fcmp fast ole float %271, %4462
  %4485 = fmul fast float %4461, %4459
  %4486 = fcmp fast ole float %271, %4485
  %4487 = select i1 %4486, float %4446, float %4444
  %4488 = select i1 %4486, float %4444, float %4445
  %4489 = select i1 %4484, float %4445, float %4487
  %4490 = select i1 %4484, float %4446, float %4488
  %4491 = select i1 %4486, float %4480, float %4478
  %4492 = select i1 %4486, float %4478, float %4479
  %4493 = select i1 %4484, float %4479, float %4491
  %4494 = select i1 %4484, float %4480, float %4492
  %4495 = select i1 %4486, float %4483, float %4481
  %4496 = select i1 %4486, float %4481, float %4482
  %4497 = select i1 %4484, float %4482, float %4495
  %4498 = select i1 %4484, float %4483, float %4496
  %4499 = call float @dx.op.unary.f32(i32 27, float %4489)  ; Round_ni(value)
  %4500 = call float @dx.op.unary.f32(i32 27, float %4490)  ; Round_ni(value)
  %4501 = fptosi float %4499 to i32
  %4502 = fptosi float %4500 to i32
  %4503 = xor i32 %4502, %4501
  %4504 = sitofp i32 %4503 to float
  %4505 = fptosi float %4504 to i32
  %4506 = sitofp i32 %4505 to float
  %4507 = fmul fast float %4506, 0x3FE3C6EF40000000
  %4508 = frem fast float %4499, 2.560000e+02
  %4509 = frem fast float %4500, 2.560000e+02
  %4510 = fptoui float %4508 to i32
  %4511 = fptoui float %4509 to i32
  %4512 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4510, i32 %4511, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fadd fast float %4513, %4507
  %4517 = fadd fast float %4514, %4507
  %4518 = fadd fast float %4515, %4507
  %4519 = call float @dx.op.unary.f32(i32 22, float %4516)  ; Frc(value)
  %4520 = call float @dx.op.unary.f32(i32 22, float %4517)  ; Frc(value)
  %4521 = call float @dx.op.unary.f32(i32 22, float %4518)  ; Frc(value)
  %4522 = fmul fast float %4521, 0x401921FB60000000
  %4523 = call float @dx.op.unary.f32(i32 13, float %4522)  ; Sin(value)
  %4524 = call float @dx.op.unary.f32(i32 12, float %4522)  ; Cos(value)
  %4525 = fsub fast float -0.000000e+00, %4524
  %4526 = fmul fast float %4524, %4489
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4523, float %4490, float %4526)  ; FMad(a,b,c)
  %4528 = fmul fast float %4523, %4489
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4525, float %4490, float %4528)  ; FMad(a,b,c)
  %4530 = fadd fast float %4527, %4519
  %4531 = fadd fast float %4529, %4520
  %4532 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4533 = bitcast float %4532 to i32
  %4534 = icmp eq i32 %4533, 0
  br i1 %4534, label %4573, label %4535

; <label>:4535                                    ; preds = %4438
  %4536 = add i32 %4533, 0
  %4537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4538 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4537, %dx.types.Handle %111, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4541 = extractvalue %dx.types.CBufRet.f32 %4540, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4540, 2
  %4543 = fsub fast float 1.000000e+00, %4432
  %4544 = call float @dx.op.binary.f32(i32 35, float %4543, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4545 = bitcast float %4432 to i32
  %4546 = sitofp i32 %4545 to float
  %4547 = fadd fast float %4546, 0xC1CFBF8940000000
  %4548 = fmul fast float %4542, %4547
  %4549 = fadd fast float %4548, 0x41CFBF8940000000
  %4550 = fptosi float %4549 to i32
  %4551 = bitcast i32 %4550 to float
  %4552 = bitcast float %4544 to i32
  %4553 = sitofp i32 %4552 to float
  %4554 = fadd fast float %4553, 0xC1CFBF8940000000
  %4555 = fmul fast float %4554, %4542
  %4556 = fadd fast float %4555, 0x41CFBF8940000000
  %4557 = fptosi float %4556 to i32
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4551, %4541
  %4560 = fmul fast float %4558, %4541
  %4561 = fsub fast float %4544, %4559
  %4562 = fadd fast float %4560, %4544
  %4563 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4565 = fsub fast float %4539, %4563
  %4566 = fsub fast float %4564, %4563
  %4567 = bitcast float %4566 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, %4565
  %4571 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4572 = fcmp fast olt float %4571, 0x3F70101020000000
  br i1 %4572, label %4711, label %4573

; <label>:4573                                    ; preds = %4535, %4438
  %4574 = phi float [ %4571, %4535 ], [ %4432, %4438 ]
  %4575 = fmul fast float %4574, %4441
  %4576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.i32 %4576, 1
  %4578 = extractvalue %dx.types.CBufRet.i32 %4576, 0
  %4579 = add i32 %4578, 0
  %4580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4581 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4580, %dx.types.Handle %110, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.ResRet.f32 %4581, 1
  %4584 = extractvalue %dx.types.ResRet.f32 %4581, 2
  %4585 = extractvalue %dx.types.ResRet.f32 %4581, 3
  %4586 = and i32 %4577, 255
  %4587 = uitofp i32 %4586 to float
  %4588 = lshr i32 %4577, 8
  %4589 = and i32 %4588, 255
  %4590 = uitofp i32 %4589 to float
  %4591 = fmul fast float %4585, %4587
  %4592 = fadd fast float %4591, %4590
  %4593 = fmul fast float %4592, 0x3F70101000000000
  %4594 = fadd fast float %4593, 0xBFB99999A0000000
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4595, 0x3FF1C71C80000000
  %4597 = call float @dx.op.binary.f32(i32 36, float %4593, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4598 = fsub fast float 1.000000e+00, %4596
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4599, %4582
  %4601 = fmul fast float %4599, %4583
  %4602 = fmul fast float %4599, %4584
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4606 = fmul fast float %4596, %4582
  %4607 = fmul fast float %4596, %4583
  %4608 = fmul fast float %4596, %4584
  %4609 = fadd fast float %4606, %4597
  %4610 = fadd fast float %4607, %4597
  %4611 = fadd fast float %4608, %4597
  %4612 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4613 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4614 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.i32 %4615, 3
  %4617 = extractvalue %dx.types.CBufRet.i32 %4615, 2
  %4618 = add i32 %4617, 0
  %4619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4620 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4619, %dx.types.Handle %110, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float %4493, float %4494, float undef, float %4497, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = and i32 %4616, 255
  %4626 = uitofp i32 %4625 to float
  %4627 = lshr i32 %4616, 8
  %4628 = and i32 %4627, 255
  %4629 = uitofp i32 %4628 to float
  %4630 = lshr i32 %4616, 16
  %4631 = and i32 %4630, 255
  %4632 = uitofp i32 %4631 to float
  %4633 = fmul fast float %4632, 0x3F70101000000000
  %4634 = fmul fast float %4621, %4626
  %4635 = fadd fast float %4634, %4629
  %4636 = fmul fast float %4635, 0x3F70101000000000
  %4637 = fadd fast float %4622, -5.000000e-01
  %4638 = fadd fast float %4624, -5.000000e-01
  %4639 = fmul fast float %4637, %4633
  %4640 = fmul fast float %4638, %4633
  %4641 = fadd fast float %4639, 5.000000e-01
  %4642 = fadd fast float %4640, 5.000000e-01
  %4643 = fmul fast float %4641, 2.000000e+00
  %4644 = fadd fast float %4643, -1.000000e+00
  %4645 = fmul fast float %4642, 2.000000e+00
  %4646 = fadd fast float %4645, -1.000000e+00
  %4647 = fadd fast float %4644, %4646
  %4648 = fmul fast float %4647, 5.000000e-01
  %4649 = fsub fast float %4644, %4646
  %4650 = fmul fast float %4649, 5.000000e-01
  %4651 = call float @dx.op.unary.f32(i32 6, float %4648)  ; FAbs(value)
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4654 = fsub fast float %4652, %4653
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4650, float %4654, float %4648, float %4650, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.unary.f32(i32 25, float %4655)  ; Rsqrt(value)
  %4657 = fmul fast float %4648, %4656
  %4658 = fmul fast float %4650, %4656
  %4659 = select i1 %4486, i32 %4476, i32 %4477
  %4660 = select i1 %4484, i32 %4475, i32 %4659
  %4661 = sitofp i32 %4660 to float
  %4662 = fmul fast float %4654, %4661
  %4663 = fmul fast float %4662, %4656
  %4664 = select i1 %4486, float %4663, float %4658
  %4665 = select i1 %4486, float %4658, float %4663
  %4666 = select i1 %4484, float %4663, float %4657
  %4667 = select i1 %4484, float %4658, float %4664
  %4668 = select i1 %4484, float %4657, float %4665
  %4669 = fsub fast float %4603, %4036
  %4670 = fsub fast float %4604, %4037
  %4671 = fsub fast float %4605, %4038
  %4672 = fmul fast float %4669, %4575
  %4673 = fmul fast float %4670, %4575
  %4674 = fmul fast float %4671, %4575
  %4675 = fadd fast float %4672, %4036
  %4676 = fadd fast float %4673, %4037
  %4677 = fadd fast float %4674, %4038
  %4678 = fsub fast float %4612, %4021
  %4679 = fsub fast float %4613, %4022
  %4680 = fsub fast float %4614, %4023
  %4681 = fmul fast float %4678, %4575
  %4682 = fmul fast float %4679, %4575
  %4683 = fmul fast float %4680, %4575
  %4684 = fadd fast float %4681, %4021
  %4685 = fadd fast float %4682, %4022
  %4686 = fadd fast float %4683, %4023
  %4687 = fadd fast float %4666, %3984
  %4688 = fadd fast float %4667, %3985
  %4689 = fadd fast float %4668, %3986
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 25, float %4690)  ; Rsqrt(value)
  %4692 = fmul fast float %4687, %4691
  %4693 = fmul fast float %4688, %4691
  %4694 = fmul fast float %4689, %4691
  %4695 = fsub fast float %4692, %3984
  %4696 = fsub fast float %4693, %3985
  %4697 = fsub fast float %4694, %3986
  %4698 = fmul fast float %4695, %4575
  %4699 = fmul fast float %4696, %4575
  %4700 = fmul fast float %4697, %4575
  %4701 = fadd fast float %4698, %3984
  %4702 = fadd fast float %4699, %3985
  %4703 = fadd fast float %4700, %3986
  %4704 = call float @dx.op.binary.f32(i32 36, float %3996, float %4623)  ; FMin(a,b)
  %4705 = fsub fast float %4704, %3996
  %4706 = fmul fast float %4705, %4575
  %4707 = fadd fast float %4706, %3996
  %4708 = fsub fast float %4636, %4024
  %4709 = fmul fast float %4708, %4575
  %4710 = fadd fast float %4709, %4024
  br label %4711

; <label>:4711                                    ; preds = %4573, %4535, %4437
  %4712 = phi float [ %4684, %4573 ], [ %4021, %4535 ], [ %4021, %4437 ]
  %4713 = phi float [ %4685, %4573 ], [ %4022, %4535 ], [ %4022, %4437 ]
  %4714 = phi float [ %4686, %4573 ], [ %4023, %4535 ], [ %4023, %4437 ]
  %4715 = phi float [ %4675, %4573 ], [ %4036, %4535 ], [ %4036, %4437 ]
  %4716 = phi float [ %4676, %4573 ], [ %4037, %4535 ], [ %4037, %4437 ]
  %4717 = phi float [ %4677, %4573 ], [ %4038, %4535 ], [ %4038, %4437 ]
  %4718 = phi float [ %4701, %4573 ], [ %3984, %4535 ], [ %3984, %4437 ]
  %4719 = phi float [ %4702, %4573 ], [ %3985, %4535 ], [ %3985, %4437 ]
  %4720 = phi float [ %4703, %4573 ], [ %3986, %4535 ], [ %3986, %4437 ]
  %4721 = phi float [ %4710, %4573 ], [ %4024, %4535 ], [ %4024, %4437 ]
  %4722 = phi float [ %4707, %4573 ], [ %3996, %4535 ], [ %3996, %4437 ]
  br i1 %4435, label %4723, label %4996

; <label>:4723                                    ; preds = %4711
  %4724 = call float @dx.op.unary.f32(i32 23, float %4722)  ; Log(value)
  %4725 = fmul fast float %4724, 4.000000e+00
  %4726 = call float @dx.op.unary.f32(i32 21, float %4725)  ; Exp(value)
  %4727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.f32 %4727, 0
  %4729 = fmul fast float %4728, %62
  %4730 = fmul fast float %4728, %63
  %4731 = fmul fast float %4728, %64
  %4732 = call float @dx.op.unary.f32(i32 6, float %71)  ; FAbs(value)
  %4733 = call float @dx.op.unary.f32(i32 6, float %72)  ; FAbs(value)
  %4734 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %4735 = call float @dx.op.unary.f32(i32 23, float %4732)  ; Log(value)
  %4736 = call float @dx.op.unary.f32(i32 23, float %4733)  ; Log(value)
  %4737 = call float @dx.op.unary.f32(i32 23, float %4734)  ; Log(value)
  %4738 = fmul fast float %4735, 4.000000e+00
  %4739 = fmul fast float %4736, 4.000000e+00
  %4740 = fmul fast float %4737, 4.000000e+00
  %4741 = call float @dx.op.unary.f32(i32 21, float %4738)  ; Exp(value)
  %4742 = call float @dx.op.unary.f32(i32 21, float %4739)  ; Exp(value)
  %4743 = call float @dx.op.unary.f32(i32 21, float %4740)  ; Exp(value)
  %4744 = fadd fast float %4742, %4741
  %4745 = fadd fast float %4744, %4743
  %4746 = fdiv fast float 1.000000e+00, %4745
  %4747 = fmul fast float %4746, %4741
  %4748 = fcmp fast ogt float %71, 0.000000e+00
  %4749 = fcmp fast ogt float %72, 0.000000e+00
  %4750 = fcmp fast ogt float %73, 0.000000e+00
  %4751 = fcmp fast olt float %71, 0.000000e+00
  %4752 = fcmp fast olt float %72, 0.000000e+00
  %4753 = fcmp fast olt float %73, 0.000000e+00
  %4754 = zext i1 %4748 to i32
  %4755 = zext i1 %4749 to i32
  %4756 = zext i1 %4750 to i32
  %4757 = zext i1 %4751 to i32
  %4758 = zext i1 %4752 to i32
  %4759 = zext i1 %4753 to i32
  %4760 = sub nsw i32 %4754, %4757
  %4761 = sub nsw i32 %4755, %4758
  %4762 = sub nsw i32 %4756, %4759
  %4763 = call float @dx.op.unary.f32(i32 83, float %4729)  ; DerivCoarseX(value)
  %4764 = call float @dx.op.unary.f32(i32 83, float %4730)  ; DerivCoarseX(value)
  %4765 = call float @dx.op.unary.f32(i32 83, float %4731)  ; DerivCoarseX(value)
  %4766 = call float @dx.op.unary.f32(i32 84, float %4729)  ; DerivCoarseY(value)
  %4767 = call float @dx.op.unary.f32(i32 84, float %4730)  ; DerivCoarseY(value)
  %4768 = call float @dx.op.unary.f32(i32 84, float %4731)  ; DerivCoarseY(value)
  %4769 = fcmp fast ole float %271, %4747
  %4770 = fmul fast float %4746, %4744
  %4771 = fcmp fast ole float %271, %4770
  %4772 = select i1 %4771, float %4731, float %4729
  %4773 = select i1 %4771, float %4729, float %4730
  %4774 = select i1 %4769, float %4730, float %4772
  %4775 = select i1 %4769, float %4731, float %4773
  %4776 = select i1 %4771, float %4765, float %4763
  %4777 = select i1 %4771, float %4763, float %4764
  %4778 = select i1 %4769, float %4764, float %4776
  %4779 = select i1 %4769, float %4765, float %4777
  %4780 = select i1 %4771, float %4768, float %4766
  %4781 = select i1 %4771, float %4766, float %4767
  %4782 = select i1 %4769, float %4767, float %4780
  %4783 = select i1 %4769, float %4768, float %4781
  %4784 = call float @dx.op.unary.f32(i32 27, float %4774)  ; Round_ni(value)
  %4785 = call float @dx.op.unary.f32(i32 27, float %4775)  ; Round_ni(value)
  %4786 = fptosi float %4784 to i32
  %4787 = fptosi float %4785 to i32
  %4788 = xor i32 %4787, %4786
  %4789 = sitofp i32 %4788 to float
  %4790 = fptosi float %4789 to i32
  %4791 = sitofp i32 %4790 to float
  %4792 = fmul fast float %4791, 0x3FE3C6EF40000000
  %4793 = frem fast float %4784, 2.560000e+02
  %4794 = frem fast float %4785, 2.560000e+02
  %4795 = fptoui float %4793 to i32
  %4796 = fptoui float %4794 to i32
  %4797 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %4795, i32 %4796, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = fadd fast float %4798, %4792
  %4802 = fadd fast float %4799, %4792
  %4803 = fadd fast float %4800, %4792
  %4804 = call float @dx.op.unary.f32(i32 22, float %4801)  ; Frc(value)
  %4805 = call float @dx.op.unary.f32(i32 22, float %4802)  ; Frc(value)
  %4806 = call float @dx.op.unary.f32(i32 22, float %4803)  ; Frc(value)
  %4807 = fmul fast float %4806, 0x401921FB60000000
  %4808 = call float @dx.op.unary.f32(i32 13, float %4807)  ; Sin(value)
  %4809 = call float @dx.op.unary.f32(i32 12, float %4807)  ; Cos(value)
  %4810 = fsub fast float -0.000000e+00, %4809
  %4811 = fmul fast float %4809, %4774
  %4812 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4775, float %4811)  ; FMad(a,b,c)
  %4813 = fmul fast float %4808, %4774
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4810, float %4775, float %4813)  ; FMad(a,b,c)
  %4815 = fadd fast float %4812, %4804
  %4816 = fadd fast float %4814, %4805
  %4817 = extractvalue %dx.types.CBufRet.f32 %4727, 3
  %4818 = bitcast float %4817 to i32
  %4819 = icmp eq i32 %4818, 0
  br i1 %4819, label %4858, label %4820

; <label>:4820                                    ; preds = %4723
  %4821 = add i32 %4818, 0
  %4822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4823 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4822, %dx.types.Handle %111, float %4815, float %4816, float undef, float undef, i32 0, i32 0, i32 undef, float %4778, float %4779, float undef, float %4782, float %4783, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4824 = extractvalue %dx.types.ResRet.f32 %4823, 0
  %4825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4826 = extractvalue %dx.types.CBufRet.f32 %4825, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4825, 2
  %4828 = fsub fast float 1.000000e+00, %4433
  %4829 = call float @dx.op.binary.f32(i32 35, float %4828, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4830 = bitcast float %4433 to i32
  %4831 = sitofp i32 %4830 to float
  %4832 = fadd fast float %4831, 0xC1CFBF8940000000
  %4833 = fmul fast float %4827, %4832
  %4834 = fadd fast float %4833, 0x41CFBF8940000000
  %4835 = fptosi float %4834 to i32
  %4836 = bitcast i32 %4835 to float
  %4837 = bitcast float %4829 to i32
  %4838 = sitofp i32 %4837 to float
  %4839 = fadd fast float %4838, 0xC1CFBF8940000000
  %4840 = fmul fast float %4839, %4827
  %4841 = fadd fast float %4840, 0x41CFBF8940000000
  %4842 = fptosi float %4841 to i32
  %4843 = bitcast i32 %4842 to float
  %4844 = fmul fast float %4836, %4826
  %4845 = fmul fast float %4843, %4826
  %4846 = fsub fast float %4829, %4844
  %4847 = fadd fast float %4845, %4829
  %4848 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4850 = fsub fast float %4824, %4848
  %4851 = fsub fast float %4849, %4848
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = fmul fast float %4854, %4850
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fcmp fast olt float %4856, 0x3F70101020000000
  br i1 %4857, label %4996, label %4858

; <label>:4858                                    ; preds = %4820, %4723
  %4859 = phi float [ %4856, %4820 ], [ %4433, %4723 ]
  %4860 = fmul fast float %4859, %4726
  %4861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.i32 %4861, 1
  %4863 = extractvalue %dx.types.CBufRet.i32 %4861, 0
  %4864 = add i32 %4863, 0
  %4865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4866 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4865, %dx.types.Handle %110, float %4815, float %4816, float undef, float undef, i32 0, i32 0, i32 undef, float %4778, float %4779, float undef, float %4782, float %4783, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.ResRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.ResRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.ResRet.f32 %4866, 3
  %4871 = and i32 %4862, 255
  %4872 = uitofp i32 %4871 to float
  %4873 = lshr i32 %4862, 8
  %4874 = and i32 %4873, 255
  %4875 = uitofp i32 %4874 to float
  %4876 = fmul fast float %4870, %4872
  %4877 = fadd fast float %4876, %4875
  %4878 = fmul fast float %4877, 0x3F70101000000000
  %4879 = fadd fast float %4878, 0xBFB99999A0000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4880, 0x3FF1C71C80000000
  %4882 = call float @dx.op.binary.f32(i32 36, float %4878, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4883 = fsub fast float 1.000000e+00, %4881
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4884, %4867
  %4886 = fmul fast float %4884, %4868
  %4887 = fmul fast float %4884, %4869
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = fmul fast float %4881, %4867
  %4892 = fmul fast float %4881, %4868
  %4893 = fmul fast float %4881, %4869
  %4894 = fadd fast float %4891, %4882
  %4895 = fadd fast float %4892, %4882
  %4896 = fadd fast float %4893, %4882
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4899 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.i32 %4900, 3
  %4902 = extractvalue %dx.types.CBufRet.i32 %4900, 2
  %4903 = add i32 %4902, 0
  %4904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4905 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4904, %dx.types.Handle %110, float %4815, float %4816, float undef, float undef, i32 0, i32 0, i32 undef, float %4778, float %4779, float undef, float %4782, float %4783, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.ResRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.ResRet.f32 %4905, 2
  %4909 = extractvalue %dx.types.ResRet.f32 %4905, 3
  %4910 = and i32 %4901, 255
  %4911 = uitofp i32 %4910 to float
  %4912 = lshr i32 %4901, 8
  %4913 = and i32 %4912, 255
  %4914 = uitofp i32 %4913 to float
  %4915 = lshr i32 %4901, 16
  %4916 = and i32 %4915, 255
  %4917 = uitofp i32 %4916 to float
  %4918 = fmul fast float %4917, 0x3F70101000000000
  %4919 = fmul fast float %4906, %4911
  %4920 = fadd fast float %4919, %4914
  %4921 = fmul fast float %4920, 0x3F70101000000000
  %4922 = fadd fast float %4907, -5.000000e-01
  %4923 = fadd fast float %4909, -5.000000e-01
  %4924 = fmul fast float %4922, %4918
  %4925 = fmul fast float %4923, %4918
  %4926 = fadd fast float %4924, 5.000000e-01
  %4927 = fadd fast float %4925, 5.000000e-01
  %4928 = fmul fast float %4926, 2.000000e+00
  %4929 = fadd fast float %4928, -1.000000e+00
  %4930 = fmul fast float %4927, 2.000000e+00
  %4931 = fadd fast float %4930, -1.000000e+00
  %4932 = fadd fast float %4929, %4931
  %4933 = fmul fast float %4932, 5.000000e-01
  %4934 = fsub fast float %4929, %4931
  %4935 = fmul fast float %4934, 5.000000e-01
  %4936 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = call float @dx.op.unary.f32(i32 6, float %4935)  ; FAbs(value)
  %4939 = fsub fast float %4937, %4938
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4933, float %4935, float %4939, float %4933, float %4935, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4933, %4941
  %4943 = fmul fast float %4935, %4941
  %4944 = select i1 %4771, i32 %4761, i32 %4762
  %4945 = select i1 %4769, i32 %4760, i32 %4944
  %4946 = sitofp i32 %4945 to float
  %4947 = fmul fast float %4939, %4946
  %4948 = fmul fast float %4947, %4941
  %4949 = select i1 %4771, float %4948, float %4943
  %4950 = select i1 %4771, float %4943, float %4948
  %4951 = select i1 %4769, float %4948, float %4942
  %4952 = select i1 %4769, float %4943, float %4949
  %4953 = select i1 %4769, float %4942, float %4950
  %4954 = fsub fast float %4888, %4715
  %4955 = fsub fast float %4889, %4716
  %4956 = fsub fast float %4890, %4717
  %4957 = fmul fast float %4954, %4860
  %4958 = fmul fast float %4955, %4860
  %4959 = fmul fast float %4956, %4860
  %4960 = fadd fast float %4957, %4715
  %4961 = fadd fast float %4958, %4716
  %4962 = fadd fast float %4959, %4717
  %4963 = fsub fast float %4897, %4712
  %4964 = fsub fast float %4898, %4713
  %4965 = fsub fast float %4899, %4714
  %4966 = fmul fast float %4963, %4860
  %4967 = fmul fast float %4964, %4860
  %4968 = fmul fast float %4965, %4860
  %4969 = fadd fast float %4966, %4712
  %4970 = fadd fast float %4967, %4713
  %4971 = fadd fast float %4968, %4714
  %4972 = fadd fast float %4951, %4718
  %4973 = fadd fast float %4952, %4719
  %4974 = fadd fast float %4953, %4720
  %4975 = call float @dx.op.dot3.f32(i32 55, float %4972, float %4973, float %4974, float %4972, float %4973, float %4974)  ; Dot3(ax,ay,az,bx,by,bz)
  %4976 = call float @dx.op.unary.f32(i32 25, float %4975)  ; Rsqrt(value)
  %4977 = fmul fast float %4972, %4976
  %4978 = fmul fast float %4973, %4976
  %4979 = fmul fast float %4974, %4976
  %4980 = fsub fast float %4977, %4718
  %4981 = fsub fast float %4978, %4719
  %4982 = fsub fast float %4979, %4720
  %4983 = fmul fast float %4980, %4860
  %4984 = fmul fast float %4981, %4860
  %4985 = fmul fast float %4982, %4860
  %4986 = fadd fast float %4983, %4718
  %4987 = fadd fast float %4984, %4719
  %4988 = fadd fast float %4985, %4720
  %4989 = call float @dx.op.binary.f32(i32 36, float %4722, float %4908)  ; FMin(a,b)
  %4990 = fsub fast float %4989, %4722
  %4991 = fmul fast float %4990, %4860
  %4992 = fadd fast float %4991, %4722
  %4993 = fsub fast float %4921, %4721
  %4994 = fmul fast float %4993, %4860
  %4995 = fadd fast float %4994, %4721
  br label %4996

; <label>:4996                                    ; preds = %4858, %4820, %4711, %4427
  %4997 = phi float [ %4969, %4858 ], [ %4712, %4820 ], [ %4712, %4711 ], [ %4021, %4427 ]
  %4998 = phi float [ %4970, %4858 ], [ %4713, %4820 ], [ %4713, %4711 ], [ %4022, %4427 ]
  %4999 = phi float [ %4971, %4858 ], [ %4714, %4820 ], [ %4714, %4711 ], [ %4023, %4427 ]
  %5000 = phi float [ %4960, %4858 ], [ %4715, %4820 ], [ %4715, %4711 ], [ %4036, %4427 ]
  %5001 = phi float [ %4961, %4858 ], [ %4716, %4820 ], [ %4716, %4711 ], [ %4037, %4427 ]
  %5002 = phi float [ %4962, %4858 ], [ %4717, %4820 ], [ %4717, %4711 ], [ %4038, %4427 ]
  %5003 = phi float [ %4986, %4858 ], [ %4718, %4820 ], [ %4718, %4711 ], [ %3984, %4427 ]
  %5004 = phi float [ %4987, %4858 ], [ %4719, %4820 ], [ %4719, %4711 ], [ %3985, %4427 ]
  %5005 = phi float [ %4988, %4858 ], [ %4720, %4820 ], [ %4720, %4711 ], [ %3986, %4427 ]
  %5006 = phi float [ %4995, %4858 ], [ %4721, %4820 ], [ %4721, %4711 ], [ %4024, %4427 ]
  %5007 = phi float [ %4992, %4858 ], [ %4722, %4820 ], [ %4722, %4711 ], [ %3996, %4427 ]
  %5008 = fcmp fast une float %4431, 0.000000e+00
  %5009 = call float @dx.op.dot3.f32(i32 55, float %201, float %202, float %203, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = call float @dx.op.unary.f32(i32 25, float %5009)  ; Rsqrt(value)
  br i1 %5008, label %5018, label %5011

; <label>:5011                                    ; preds = %4996
  %5012 = fmul fast float %5010, %201
  %5013 = fmul fast float %5010, %202
  %5014 = fmul fast float %5010, %203
  %5015 = fsub fast float -0.000000e+00, %5012
  %5016 = fsub fast float -0.000000e+00, %5013
  %5017 = fsub fast float -0.000000e+00, %5014
  br label %5185

; <label>:5018                                    ; preds = %4996
  %5019 = fmul fast float %201, %5010
  %5020 = fsub fast float -0.000000e+00, %5019
  %5021 = fmul fast float %202, %5010
  %5022 = fsub fast float -0.000000e+00, %5021
  %5023 = fmul fast float %203, %5010
  %5024 = fsub fast float -0.000000e+00, %5023
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5022, float %5024, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = fmul fast float %4431, 2.500000e+00
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fmul fast float %4431, 0x4013FFFFE0000000
  %5029 = fadd fast float %5028, 0xBFFFFFFFE0000000
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fmul fast float %4431, 0x4004000020000000
  %5032 = fadd fast float %5031, 0xBFF8000040000000
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fmul fast float %4003, 1.000000e+01
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5035, 2.000000e+00
  %5037 = fsub fast float 3.000000e+00, %5036
  %5038 = fmul fast float %5035, %5035
  %5039 = fmul fast float %5038, %5037
  %5040 = fsub fast float 1.000000e+00, %5039
  %5041 = fsub fast float 0x3FE3333340000000, %5006
  %5042 = fmul fast float %5041, 0x400AAAAAA0000000
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5040, %5043
  %5045 = fmul fast float %5000, 0x3FEA2B8620000000
  %5046 = fmul fast float %5001, 0x3FEA2B8620000000
  %5047 = fmul fast float %5002, 0x3FEA2B8620000000
  %5048 = fadd fast float %5045, 0x3FC81DFBA0000000
  %5049 = fmul fast float %5048, %5000
  %5050 = fadd fast float %5049, 0x3F910E6020000000
  %5051 = fadd fast float %5046, 0x3FC81DFBA0000000
  %5052 = fmul fast float %5051, %5001
  %5053 = fadd fast float %5052, 0x3F910E6020000000
  %5054 = fadd fast float %5047, 0x3FC81DFBA0000000
  %5055 = fmul fast float %5054, %5002
  %5056 = fadd fast float %5055, 0x3F910E6020000000
  %5057 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = fsub fast float %5057, %5000
  %5061 = fsub fast float %5058, %5001
  %5062 = fsub fast float %5059, %5002
  %5063 = fmul fast float %5060, %5027
  %5064 = fmul fast float %5063, %5044
  %5065 = fmul fast float %5061, %5027
  %5066 = fmul fast float %5065, %5044
  %5067 = fmul fast float %5062, %5027
  %5068 = fmul fast float %5067, %5044
  %5069 = fadd fast float %5064, %5000
  %5070 = fadd fast float %5066, %5001
  %5071 = fadd fast float %5068, %5002
  %5072 = fmul fast float %5007, %5007
  %5073 = fmul fast float %5072, %5072
  %5074 = fadd fast float %5030, 1.000000e+00
  %5075 = fsub fast float %5074, %5044
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fsub fast float 1.000000e+00, %5073
  %5080 = call float @dx.op.binary.f32(i32 36, float %5076, float %5079)  ; FMin(a,b)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5082 = call float @dx.op.binary.f32(i32 35, float %5080, float %5081)  ; FMax(a,b)
  %5083 = fadd fast float %5078, 0xBFE4CCCCC0000000
  %5084 = fmul fast float %5083, 0x4006DB6DA0000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, 2.000000e+00
  %5087 = fsub fast float 3.000000e+00, %5086
  %5088 = bitcast float %4997 to i32
  %5089 = ashr i32 %5088, 1
  %5090 = add nsw i32 %5089, 532487669
  %5091 = bitcast i32 %5090 to float
  %5092 = fsub fast float 1.000000e+00, %5091
  %5093 = bitcast float %5092 to i32
  %5094 = sub nsw i32 2129859010, %5093
  %5095 = bitcast i32 %5094 to float
  %5096 = fmul fast float %5095, 2.000000e+00
  %5097 = bitcast float %4998 to i32
  %5098 = ashr i32 %5097, 1
  %5099 = add nsw i32 %5098, 532487669
  %5100 = bitcast i32 %5099 to float
  %5101 = fsub fast float 1.000000e+00, %5100
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, 2.000000e+00
  %5106 = bitcast float %4999 to i32
  %5107 = ashr i32 %5106, 1
  %5108 = add nsw i32 %5107, 532487669
  %5109 = bitcast i32 %5108 to float
  %5110 = fsub fast float 1.000000e+00, %5109
  %5111 = bitcast float %5110 to i32
  %5112 = sub nsw i32 2129859010, %5111
  %5113 = bitcast i32 %5112 to float
  %5114 = fmul fast float %5113, 2.000000e+00
  %5115 = fsub fast float 0x4002A9FBE0000000, %5096
  %5116 = fadd fast float %5096, 0x3FD54FDF00000000
  %5117 = bitcast float %5116 to i32
  %5118 = sub nsw i32 2129859010, %5117
  %5119 = bitcast i32 %5118 to float
  %5120 = fmul fast float %5119, %5115
  %5121 = fmul fast float %5120, %5120
  %5122 = fsub fast float 0x4002A9FBE0000000, %5105
  %5123 = fadd fast float %5105, 0x3FD54FDF00000000
  %5124 = bitcast float %5123 to i32
  %5125 = sub nsw i32 2129859010, %5124
  %5126 = bitcast i32 %5125 to float
  %5127 = fmul fast float %5126, %5122
  %5128 = fmul fast float %5127, %5127
  %5129 = fsub fast float 0x4002A9FBE0000000, %5114
  %5130 = fadd fast float %5114, 0x3FD54FDF00000000
  %5131 = bitcast float %5130 to i32
  %5132 = sub nsw i32 2129859010, %5131
  %5133 = bitcast i32 %5132 to float
  %5134 = fmul fast float %5133, %5129
  %5135 = fmul fast float %5134, %5134
  %5136 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5121)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5128)  ; FMax(a,b)
  %5138 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5135)  ; FMax(a,b)
  %5139 = fsub fast float 1.000000e+00, %5025
  %5140 = fadd fast float %5139, %5040
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fsub fast float 1.000000e+00, %4412
  %5143 = fmul fast float %5082, %5142
  %5144 = fmul fast float %5085, %5085
  %5145 = fmul fast float %5144, %5143
  %5146 = fmul fast float %5145, %5087
  %5147 = fmul fast float %5142, 0xBFE99999A0000000
  %5148 = fmul fast float %5147, %5027
  %5149 = fmul fast float %5148, %5044
  %5150 = fadd fast float %5149, 1.000000e+00
  %5151 = fadd fast float %5006, -1.000000e+00
  %5152 = fmul fast float %5150, %5151
  %5153 = fadd fast float %5152, 1.000000e+00
  %5154 = fsub fast float %5136, %4997
  %5155 = fsub fast float %5137, %4998
  %5156 = fsub fast float %5138, %4999
  %5157 = fmul fast float %5146, %5154
  %5158 = fmul fast float %5146, %5155
  %5159 = fmul fast float %5146, %5156
  %5160 = fadd fast float %5157, %4997
  %5161 = fadd fast float %5158, %4998
  %5162 = fadd fast float %5159, %4999
  %5163 = fsub fast float %121, %5003
  %5164 = fsub fast float %122, %5004
  %5165 = fsub fast float %123, %5005
  %5166 = fmul fast float %5146, %5163
  %5167 = fmul fast float %5146, %5164
  %5168 = fmul fast float %5146, %5165
  %5169 = fadd fast float %5166, %5003
  %5170 = fadd fast float %5167, %5004
  %5171 = fadd fast float %5168, %5005
  %5172 = fmul fast float %5146, %5141
  %5173 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5172, %5174
  %5176 = fadd fast float %5175, %5173
  %5177 = fsub fast float 1.000000e+00, %5007
  %5178 = fmul fast float %5146, %5177
  %5179 = fadd fast float %5178, %5007
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5170, float %5171, float %5169, float %5170, float %5171)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = call float @dx.op.unary.f32(i32 25, float %5180)  ; Rsqrt(value)
  %5182 = fmul fast float %5169, %5181
  %5183 = fmul fast float %5170, %5181
  %5184 = fmul fast float %5171, %5181
  br label %5185

; <label>:5185                                    ; preds = %5018, %5011
  %5186 = phi float [ %5017, %5011 ], [ %5024, %5018 ]
  %5187 = phi float [ %5016, %5011 ], [ %5022, %5018 ]
  %5188 = phi float [ %5015, %5011 ], [ %5020, %5018 ]
  %5189 = phi float [ %5014, %5011 ], [ %5023, %5018 ]
  %5190 = phi float [ %5013, %5011 ], [ %5021, %5018 ]
  %5191 = phi float [ %5012, %5011 ], [ %5019, %5018 ]
  %5192 = phi float [ %4997, %5011 ], [ %5160, %5018 ]
  %5193 = phi float [ %4998, %5011 ], [ %5161, %5018 ]
  %5194 = phi float [ %4999, %5011 ], [ %5162, %5018 ]
  %5195 = phi float [ %5000, %5011 ], [ %5069, %5018 ]
  %5196 = phi float [ %5001, %5011 ], [ %5070, %5018 ]
  %5197 = phi float [ %5002, %5011 ], [ %5071, %5018 ]
  %5198 = phi float [ %5003, %5011 ], [ %5182, %5018 ]
  %5199 = phi float [ %5004, %5011 ], [ %5183, %5018 ]
  %5200 = phi float [ %5005, %5011 ], [ %5184, %5018 ]
  %5201 = phi float [ %5006, %5011 ], [ %5176, %5018 ]
  %5202 = phi float [ %5007, %5011 ], [ %5179, %5018 ]
  %5203 = fsub fast float -0.000000e+00, %203
  %5204 = select i1 %260, float 0.000000e+00, float %5194
  %5205 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float %5188, float %5187, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5206 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5190, float %5189, float %5198, float %5199, float %5200)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fmul fast float %5207, 2.000000e+00
  %5209 = fmul fast float %5208, %5198
  %5210 = fmul fast float %5208, %5199
  %5211 = fmul fast float %5208, %5200
  %5212 = fsub fast float %5191, %5209
  %5213 = fsub fast float %5190, %5210
  %5214 = fsub fast float %5189, %5211
  %5215 = call float @dx.op.binary.f32(i32 36, float %5202, float 1.000000e+00)  ; FMin(a,b)
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = bitcast float %5216 to i32
  %5218 = ashr i32 %5217, 1
  %5219 = add nsw i32 %5218, 532487669
  %5220 = bitcast i32 %5219 to float
  %5221 = fsub fast float 1.000000e+00, %5201
  %5222 = call float @dx.op.binary.f32(i32 35, float %5221, float 0x3F847AE140000000)  ; FMax(a,b)
  %5223 = fmul fast float %5222, %5222
  %5224 = fmul fast float %5223, %5223
  %5225 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5220, float %5224, float %5225, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = fsub fast float 1.000000e+00, %5202
  %5229 = bitcast float %5228 to i32
  %5230 = sub nsw i32 2129859010, %5229
  %5231 = bitcast i32 %5230 to float
  %5232 = fsub fast float 1.000000e+00, %81
  %5233 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.binary.f32(i32 35, float %5233, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5235 = fdiv fast float %5232, %5234
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5237, 5.000000e-01
  %5239 = fadd fast float %5238, 5.000000e-01
  %5240 = fmul fast float %5239, %81
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fmul fast float %5242, %5235
  %5244 = fadd fast float %5240, %5243
  %5245 = fsub fast float 5.000000e-01, %5238
  %5246 = fmul fast float %5245, %5195
  %5247 = fmul fast float %5245, %5196
  %5248 = fmul fast float %5245, %5197
  %5249 = fadd fast float %5244, %5246
  %5250 = fadd fast float %5244, %5247
  %5251 = fadd fast float %5244, %5248
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, 5.000000e-01
  %5255 = fadd fast float %5254, 5.000000e-01
  %5256 = fmul fast float %5255, %81
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5259 = fmul fast float %5258, %5235
  %5260 = fadd fast float %5256, %5259
  %5261 = fsub fast float 5.000000e-01, %5254
  %5262 = fmul fast float %5261, %5195
  %5263 = fmul fast float %5261, %5196
  %5264 = fmul fast float %5261, %5197
  %5265 = fadd fast float %5260, %5262
  %5266 = fadd fast float %5260, %5263
  %5267 = fadd fast float %5260, %5264
  %5268 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = call float @dx.op.binary.f32(i32 36, float %5195, float %5270)  ; FMin(a,b)
  %5272 = fmul fast float %5271, %5216
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = bitcast float %5273 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = call float @dx.op.binary.f32(i32 36, float %5196, float %5270)  ; FMin(a,b)
  %5278 = fmul fast float %5277, %5216
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = call float @dx.op.binary.f32(i32 36, float %5197, float %5270)  ; FMin(a,b)
  %5284 = fmul fast float %5283, %5216
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = bitcast float %5285 to i32
  %5287 = sub nsw i32 2129859010, %5286
  %5288 = bitcast i32 %5287 to float
  %5289 = fmul fast float %5215, %82
  %5290 = fmul fast float %5289, %5249
  %5291 = fmul fast float %5290, %5276
  %5292 = fmul fast float %5215, %83
  %5293 = fmul fast float %5292, %5250
  %5294 = fmul fast float %5293, %5282
  %5295 = fmul fast float %5215, %84
  %5296 = fmul fast float %5295, %5251
  %5297 = fmul fast float %5296, %5288
  %5298 = call float @dx.op.binary.f32(i32 36, float %5192, float %5270)  ; FMin(a,b)
  %5299 = fmul fast float %5298, %5216
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = bitcast float %5300 to i32
  %5302 = sub nsw i32 2129859010, %5301
  %5303 = bitcast i32 %5302 to float
  %5304 = call float @dx.op.binary.f32(i32 36, float %5193, float %5270)  ; FMin(a,b)
  %5305 = fmul fast float %5304, %5216
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = bitcast float %5306 to i32
  %5308 = sub nsw i32 2129859010, %5307
  %5309 = bitcast i32 %5308 to float
  %5310 = call float @dx.op.binary.f32(i32 36, float %5204, float %5270)  ; FMin(a,b)
  %5311 = fmul fast float %5310, %5216
  %5312 = fsub fast float 1.000000e+00, %5311
  %5313 = bitcast float %5312 to i32
  %5314 = sub nsw i32 2129859010, %5313
  %5315 = bitcast i32 %5314 to float
  %5316 = fmul fast float %5289, %5265
  %5317 = fmul fast float %5316, %5303
  %5318 = fmul fast float %5292, %5266
  %5319 = fmul fast float %5318, %5309
  %5320 = fmul fast float %5295, %5267
  %5321 = fmul fast float %5320, %5315
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5294, float %5297, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = select i1 %260, float 0.000000e+00, float %5291
  %5324 = select i1 %260, float %5322, float %5294
  %5325 = select i1 %260, float 0.000000e+00, float %5297
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5319, float %5321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = select i1 %260, float 0.000000e+00, float %5317
  %5328 = select i1 %260, float %5326, float %5319
  %5329 = select i1 %260, float 0.000000e+00, float %5321
  %5330 = fmul fast float %5206, 9.843750e-01
  %5331 = fmul fast float %5201, 9.843750e-01
  %5332 = fadd fast float %5330, 7.812500e-03
  %5333 = fadd fast float %5331, 7.812500e-03
  %5334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %5332, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 3
  %5337 = fmul fast float %5335, %5192
  %5338 = fmul fast float %5335, %5193
  %5339 = fmul fast float %5335, %5204
  %5340 = fadd fast float %5337, %5336
  %5341 = fadd fast float %5338, %5336
  %5342 = fadd fast float %5339, %5336
  %5343 = fcmp fast ogt float %3997, 0.000000e+00
  br i1 %5343, label %5344, label %5370

; <label>:5344                                    ; preds = %5185
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3997, float %5206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = fadd fast float %5346, -5.000000e-01
  %5350 = fadd fast float %5347, -5.000000e-01
  %5351 = fadd fast float %5348, -5.000000e-01
  %5352 = fsub fast float 1.000000e+00, %5192
  %5353 = fsub fast float 1.000000e+00, %5193
  %5354 = fsub fast float 1.000000e+00, %5204
  %5355 = fmul fast float %5192, 4.000000e+00
  %5356 = fmul fast float %5355, %5352
  %5357 = fmul fast float %5356, %5349
  %5358 = fmul fast float %5193, 4.000000e+00
  %5359 = fmul fast float %5358, %5353
  %5360 = fmul fast float %5359, %5350
  %5361 = fmul fast float %5204, 4.000000e+00
  %5362 = fmul fast float %5361, %5354
  %5363 = fmul fast float %5362, %5351
  %5364 = fadd fast float %5357, %5340
  %5365 = fadd fast float %5360, %5341
  %5366 = fadd fast float %5363, %5342
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  br label %5370

; <label>:5370                                    ; preds = %5344, %5185
  %5371 = phi float [ %5367, %5344 ], [ %5340, %5185 ]
  %5372 = phi float [ %5368, %5344 ], [ %5341, %5185 ]
  %5373 = phi float [ %5369, %5344 ], [ %5342, %5185 ]
  %5374 = call float @dx.op.binary.f32(i32 35, float %5372, float %5373)  ; FMax(a,b)
  %5375 = call float @dx.op.binary.f32(i32 35, float %5371, float %5374)  ; FMax(a,b)
  %5376 = fsub fast float 1.000000e+00, %5375
  %5377 = fmul fast float %5375, %5201
  %5378 = fadd fast float %5377, %5201
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 2
  %5381 = extractvalue %dx.types.CBufRet.f32 %5379, 3
  %5382 = fmul fast float %5378, %5380
  %5383 = fadd fast float %5382, %5381
  %5384 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5385 = fsub fast float 1.000000e+00, %5227
  %5386 = fadd fast float %5385, %5384
  %5387 = call float @dx.op.unary.f32(i32 7, float %5386)  ; Saturate(value)
  %5388 = fcmp fast olt float %5387, 1.000000e+00
  br i1 %5388, label %5389, label %5865

; <label>:5389                                    ; preds = %5370
  %5390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5391 = extractvalue %dx.types.CBufRet.f32 %5390, 2
  %5392 = extractvalue %dx.types.CBufRet.f32 %5390, 3
  %5393 = fmul fast float %5391, %114
  %5394 = fmul fast float %5392, %115
  %5395 = fptoui float %5393 to i32
  %5396 = fptoui float %5394 to i32
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.CBufRet.f32 %5397, 2
  %5400 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5401 = fadd fast float %101, -4.000000e+00
  %5402 = call float @dx.op.binary.f32(i32 35, float %5401, float 0.000000e+00)  ; FMax(a,b)
  %5403 = fadd fast float %5402, %5398
  %5404 = fmul fast float %5403, %5399
  %5405 = call float @dx.op.unary.f32(i32 23, float %5404)  ; Log(value)
  %5406 = fmul fast float %5405, %5400
  %5407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5408 = extractvalue %dx.types.CBufRet.f32 %5407, 2
  %5409 = fmul fast float %5406, %5408
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.i32 %5411, 1
  %5413 = add i32 %5412, -1
  %5414 = uitofp i32 %5412 to float
  %5415 = fmul fast float %5414, %5410
  %5416 = fptoui float %5415 to i32
  %5417 = call i32 @dx.op.binary.i32(i32 40, i32 %5416, i32 %5413)  ; UMin(a,b)
  %5418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.i32 %5418, 2
  %5420 = extractvalue %dx.types.CBufRet.i32 %5418, 3
  %5421 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5396, i32 %5419, i32 %5395)  ; UMad(a,b,c)
  %5422 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5417, i32 %5420, i32 %5421)  ; UMad(a,b,c)
  %5423 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %5424 = fptoui float %5423 to i32
  %5425 = lshr i32 %5424, 5
  %5426 = call i32 @dx.op.binary.i32(i32 40, i32 %5425, i32 8191)  ; UMin(a,b)
  %5427 = fsub fast float %4402, %203
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fcmp fast ogt float %5428, 0.000000e+00
  %5430 = fcmp fast ogt float %5214, 0.000000e+00
  %5431 = and i1 %5430, %5429
  br i1 %5431, label %5432, label %5461

; <label>:5432                                    ; preds = %5389
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.binary.f32(i32 35, float %5433, float -1.000000e+00)  ; FMax(a,b)
  %5435 = call float @dx.op.binary.f32(i32 36, float %5434, float 1.000000e+00)  ; FMin(a,b)
  %5436 = fmul fast float %5435, %5435
  %5437 = fsub fast float 1.000000e+00, %5436
  %5438 = fmul fast float %5437, 0x3FFC6E2300000000
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = fcmp fast ogt float %5439, 0.000000e+00
  %5441 = call float @dx.op.unary.f32(i32 24, float %5439)  ; Sqrt(value)
  %5442 = fsub fast float 1.000000e+00, %5441
  %5443 = call float @dx.op.unary.f32(i32 23, float %5442)  ; Log(value)
  %5444 = fmul fast float %5443, 5.000000e+00
  %5445 = call float @dx.op.unary.f32(i32 21, float %5444)  ; Exp(value)
  %5446 = fmul fast float %5445, 0x3FEF591A60000000
  %5447 = fadd fast float %5446, 0x3F94DCB540000000
  %5448 = select i1 %5440, float %5447, float 1.000000e+00
  %5449 = fcmp fast oge float %5448, 1.000000e+00
  %5450 = fmul fast float %5433, 2.000000e+00
  %5451 = fadd fast float %5450, %5214
  %5452 = select i1 %5449, float %5451, float %5214
  %5453 = fsub fast float %5452, %5214
  %5454 = fmul fast float %5453, %5428
  %5455 = fadd fast float %5454, %5214
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5455, float %5212, float %5213, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 25, float %5456)  ; Rsqrt(value)
  %5458 = fmul fast float %5457, %5212
  %5459 = fmul fast float %5457, %5213
  %5460 = fmul fast float %5455, %5457
  br label %5461

; <label>:5461                                    ; preds = %5432, %5389
  %5462 = phi float [ %5458, %5432 ], [ %5212, %5389 ]
  %5463 = phi float [ %5459, %5432 ], [ %5213, %5389 ]
  %5464 = phi float [ %5460, %5432 ], [ %5214, %5389 ]
  %5465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.i32 %5465, 2
  %5467 = add nsw i32 %5466, -1
  %5468 = call i32 @dx.op.binary.i32(i32 37, i32 %5467, i32 0)  ; IMax(a,b)
  %5469 = shl i32 %5426, 2
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = lshr i32 %5471, 16
  %5473 = and i32 %5471, 65535
  %5474 = lshr i32 %5471, 21
  %5475 = lshr i32 %5473, 5
  %5476 = call i32 @dx.op.binary.i32(i32 40, i32 %5475, i32 %5468)  ; UMin(a,b)
  %5477 = icmp ugt i32 %5474, %5476
  br i1 %5477, label %5841, label %5478

; <label>:5478                                    ; preds = %5461
  br label %5479

; <label>:5479                                    ; preds = %5833, %5478
  %5480 = phi float [ %5834, %5833 ], [ 0.000000e+00, %5478 ]
  %5481 = phi float [ %5835, %5833 ], [ 0.000000e+00, %5478 ]
  %5482 = phi float [ %5836, %5833 ], [ 0.000000e+00, %5478 ]
  %5483 = phi float [ %5837, %5833 ], [ 1.000000e+00, %5478 ]
  %5484 = phi i32 [ %5838, %5833 ], [ %5474, %5478 ]
  %5485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.i32 %5485, 2
  %5487 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5422, i32 %5486, i32 %5484)  ; UMad(a,b,c)
  %5488 = shl i32 %5487, 2
  %5489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.i32 %5489, 0
  %5491 = shl i32 %5484, 5
  %5492 = sub nsw i32 %5472, %5491
  %5493 = call i32 @dx.op.binary.i32(i32 37, i32 %5492, i32 0)  ; IMax(a,b)
  %5494 = call i32 @dx.op.binary.i32(i32 38, i32 %5493, i32 31)  ; IMin(a,b)
  %5495 = sub nsw i32 1, %5472
  %5496 = add nsw i32 %5495, %5473
  %5497 = call i32 @dx.op.binary.i32(i32 37, i32 %5496, i32 0)  ; IMax(a,b)
  %5498 = call i32 @dx.op.binary.i32(i32 38, i32 %5497, i32 32)  ; IMin(a,b)
  %5499 = and i32 %5498, 31
  %5500 = shl i32 -1, %5499
  %5501 = xor i32 %5500, -1
  %5502 = and i32 %5494, 31
  %5503 = shl i32 %5501, %5502
  %5504 = icmp eq i32 %5498, 32
  %5505 = select i1 %5504, i32 -1, i32 %5503
  %5506 = and i32 %5505, %5490
  %5507 = icmp eq i32 %5506, 0
  br i1 %5507, label %5833, label %5508

; <label>:5508                                    ; preds = %5479
  br label %5509

; <label>:5509                                    ; preds = %5616, %5508
  %5510 = phi float [ %5617, %5616 ], [ %5480, %5508 ]
  %5511 = phi float [ %5618, %5616 ], [ %5481, %5508 ]
  %5512 = phi float [ %5619, %5616 ], [ %5482, %5508 ]
  %5513 = phi float [ %5620, %5616 ], [ %5483, %5508 ]
  %5514 = phi i32 [ %5519, %5616 ], [ %5506, %5508 ]
  %5515 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5514)  ; FirstbitLo(value)
  %5516 = add i32 %5515, %5491
  %5517 = and i32 %5515, 31
  %5518 = shl i32 1, %5517
  %5519 = xor i32 %5518, %5514
  %5520 = mul i32 %5516, 72
  %5521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5520, i32 undef)  ; BufferLoad(srv,index,wot)
  %5522 = extractvalue %dx.types.ResRet.f32 %5521, 0
  %5523 = extractvalue %dx.types.ResRet.f32 %5521, 1
  %5524 = extractvalue %dx.types.ResRet.f32 %5521, 2
  %5525 = add i32 %5520, 12
  %5526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %5525, i32 undef)  ; BufferLoad(srv,index,wot)
  %5527 = extractvalue %dx.types.ResRet.i32 %5526, 0
  %5528 = add i32 %5520, 16
  %5529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = add i32 %5520, 28
  %5534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5533, i32 undef)  ; BufferLoad(srv,index,wot)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = add i32 %5520, 32
  %5537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5536, i32 undef)  ; BufferLoad(srv,index,wot)
  %5538 = extractvalue %dx.types.ResRet.f32 %5537, 0
  %5539 = extractvalue %dx.types.ResRet.f32 %5537, 1
  %5540 = extractvalue %dx.types.ResRet.f32 %5537, 2
  %5541 = extractvalue %dx.types.ResRet.f32 %5537, 3
  %5542 = add i32 %5520, 48
  %5543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5542, i32 undef)  ; BufferLoad(srv,index,wot)
  %5544 = extractvalue %dx.types.ResRet.f32 %5543, 0
  %5545 = extractvalue %dx.types.ResRet.f32 %5543, 1
  %5546 = add i32 %5520, 56
  %5547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5546, i32 undef)  ; BufferLoad(srv,index,wot)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = add i32 %5520, 64
  %5551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = mul i32 %5516, 60
  %5555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5554, i32 undef)  ; BufferLoad(srv,index,wot)
  %5556 = extractvalue %dx.types.ResRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.ResRet.f32 %5555, 1
  %5558 = extractvalue %dx.types.ResRet.f32 %5555, 2
  %5559 = add i32 %5554, 12
  %5560 = add i32 %5554, 48
  %5561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5560, i32 undef)  ; BufferLoad(srv,index,wot)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = and i32 %5527, 32767
  %5566 = bitcast float %5522 to i32
  %5567 = icmp eq i32 %5566, -1
  %5568 = bitcast float %5523 to i32
  %5569 = and i32 %5527, 32768
  %5570 = icmp ne i32 %5569, 0
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5575 = fsub fast float %5556, %5572
  %5576 = fsub fast float %5557, %5573
  %5577 = fsub fast float %5558, %5574
  %5578 = fsub fast float %201, %5575
  %5579 = fsub fast float %202, %5576
  %5580 = fsub fast float %203, %5577
  %5581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5559, i32 undef)  ; BufferLoad(srv,index,wot)
  %5582 = extractvalue %dx.types.ResRet.f32 %5581, 0
  %5583 = extractvalue %dx.types.ResRet.f32 %5581, 1
  %5584 = extractvalue %dx.types.ResRet.f32 %5581, 2
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5582, float %5583, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = add i32 %5554, 24
  %5587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5586, i32 undef)  ; BufferLoad(srv,index,wot)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = extractvalue %dx.types.ResRet.f32 %5587, 1
  %5590 = extractvalue %dx.types.ResRet.f32 %5587, 2
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5588, float %5589, float %5590)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = add i32 %5554, 36
  %5593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %46, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5594, float %5595, float %5596)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = call float @dx.op.unary.f32(i32 6, float %5585)  ; FAbs(value)
  %5599 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5600 = call float @dx.op.unary.f32(i32 6, float %5597)  ; FAbs(value)
  %5601 = fsub fast float %5562, %5598
  %5602 = fsub fast float %5563, %5599
  %5603 = fsub fast float %5564, %5600
  %5604 = fmul fast float %5601, %5530
  %5605 = fmul fast float %5602, %5531
  %5606 = fmul fast float %5603, %5532
  %5607 = call float @dx.op.binary.f32(i32 36, float %5605, float %5606)  ; FMin(a,b)
  %5608 = call float @dx.op.binary.f32(i32 36, float %5604, float %5607)  ; FMin(a,b)
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = call float @dx.op.binary.f32(i32 36, float %5513, float %5609)  ; FMin(a,b)
  %5611 = uitofp i1 %5570 to float
  %5612 = fadd fast float %5428, 1.000000e+00
  %5613 = fsub fast float %5612, %5611
  %5614 = fmul fast float %5610, %5613
  %5615 = fcmp fast ogt float %5614, 0.000000e+00
  br i1 %5615, label %5622, label %5616

; <label>:5616                                    ; preds = %5764, %5509
  %5617 = phi float [ %5828, %5764 ], [ %5510, %5509 ]
  %5618 = phi float [ %5829, %5764 ], [ %5511, %5509 ]
  %5619 = phi float [ %5830, %5764 ], [ %5512, %5509 ]
  %5620 = phi float [ %5831, %5764 ], [ %5513, %5509 ]
  %5621 = icmp eq i32 %5514, %5518
  br i1 %5621, label %5832, label %5509

; <label>:5622                                    ; preds = %5509
  br i1 %5567, label %5680, label %5623

; <label>:5623                                    ; preds = %5622
  %5624 = fsub fast float -0.000000e+00, %5582
  %5625 = fsub fast float -0.000000e+00, %5583
  %5626 = fsub fast float -0.000000e+00, %5584
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = fsub fast float -0.000000e+00, %5627
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fadd fast float %5629, %5545
  %5631 = fadd fast float %5544, %5629
  %5632 = fsub fast float -0.000000e+00, %5631
  %5633 = fcmp ogt float %5627, -0.000000e+00
  %5634 = select i1 %5633, float %5632, float %5630
  %5635 = call float @dx.op.unary.f32(i32 6, float %5628)  ; FAbs(value)
  %5636 = fdiv fast float 1.000000e+00, %5635
  %5637 = fmul fast float %5634, %5636
  %5638 = call float @dx.op.binary.f32(i32 35, float %5637, float 0.000000e+00)  ; FMax(a,b)
  %5639 = fsub fast float -0.000000e+00, %5588
  %5640 = fsub fast float -0.000000e+00, %5589
  %5641 = fsub fast float -0.000000e+00, %5590
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = fsub fast float -0.000000e+00, %5642
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = fadd fast float %5644, %5549
  %5646 = fadd fast float %5548, %5644
  %5647 = fsub fast float -0.000000e+00, %5646
  %5648 = fcmp ogt float %5642, -0.000000e+00
  %5649 = select i1 %5648, float %5647, float %5645
  %5650 = call float @dx.op.unary.f32(i32 6, float %5643)  ; FAbs(value)
  %5651 = fdiv fast float 1.000000e+00, %5650
  %5652 = fmul fast float %5649, %5651
  %5653 = call float @dx.op.binary.f32(i32 35, float %5652, float 0.000000e+00)  ; FMax(a,b)
  %5654 = fsub fast float -0.000000e+00, %5594
  %5655 = fsub fast float -0.000000e+00, %5595
  %5656 = fsub fast float -0.000000e+00, %5596
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fsub fast float -0.000000e+00, %5657
  %5659 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float %5654, float %5655, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5660 = fadd fast float %5659, %5553
  %5661 = fadd fast float %5552, %5659
  %5662 = fsub fast float -0.000000e+00, %5661
  %5663 = fcmp ogt float %5657, -0.000000e+00
  %5664 = select i1 %5663, float %5662, float %5660
  %5665 = call float @dx.op.unary.f32(i32 6, float %5658)  ; FAbs(value)
  %5666 = fdiv fast float 1.000000e+00, %5665
  %5667 = fmul fast float %5664, %5666
  %5668 = call float @dx.op.binary.f32(i32 35, float %5667, float 0.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 36, float %5653, float %5668)  ; FMin(a,b)
  %5670 = call float @dx.op.binary.f32(i32 36, float %5638, float %5669)  ; FMin(a,b)
  %5671 = fmul fast float %5670, %5462
  %5672 = fmul fast float %5670, %5463
  %5673 = fmul fast float %5670, %5464
  %5674 = fadd fast float %5671, %201
  %5675 = fadd fast float %5672, %202
  %5676 = fadd fast float %5673, %203
  %5677 = fsub fast float %5674, %5522
  %5678 = fsub fast float %5675, %5523
  %5679 = fsub fast float %5676, %5524
  br label %5687

; <label>:5680                                    ; preds = %5622
  %5681 = fmul fast float %5462, 8.096000e+03
  %5682 = fmul fast float %5463, 8.096000e+03
  %5683 = fmul fast float %5464, 8.096000e+03
  %5684 = fadd fast float %5681, %201
  %5685 = fadd fast float %5682, %202
  %5686 = fadd fast float %5683, %203
  br label %5687

; <label>:5687                                    ; preds = %5680, %5623
  %5688 = phi float [ %5462, %5680 ], [ %5677, %5623 ]
  %5689 = phi float [ %5463, %5680 ], [ %5678, %5623 ]
  %5690 = phi float [ %5464, %5680 ], [ %5679, %5623 ]
  %5691 = phi float [ %5684, %5680 ], [ %5674, %5623 ]
  %5692 = phi float [ %5685, %5680 ], [ %5675, %5623 ]
  %5693 = phi float [ %5686, %5680 ], [ %5676, %5623 ]
  %5694 = fcmp fast olt float %5541, 1.000000e+00
  br i1 %5694, label %5695, label %5726, !dx.controlflow.hints !100

; <label>:5695                                    ; preds = %5687
  %5696 = fmul fast float %5690, %5539
  %5697 = fmul fast float %5689, %5540
  %5698 = fsub fast float %5696, %5697
  %5699 = fmul fast float %5688, %5540
  %5700 = fmul fast float %5690, %5538
  %5701 = fsub fast float %5699, %5700
  %5702 = fmul fast float %5689, %5538
  %5703 = fmul fast float %5688, %5539
  %5704 = fsub fast float %5702, %5703
  %5705 = fmul fast float %5698, 2.000000e+00
  %5706 = fmul fast float %5701, 2.000000e+00
  %5707 = fmul fast float %5704, 2.000000e+00
  %5708 = fmul fast float %5705, %5541
  %5709 = fmul fast float %5706, %5541
  %5710 = fmul fast float %5707, %5541
  %5711 = fmul fast float %5707, %5539
  %5712 = fmul fast float %5706, %5540
  %5713 = fmul fast float %5705, %5540
  %5714 = fmul fast float %5707, %5538
  %5715 = fmul fast float %5706, %5538
  %5716 = fmul fast float %5705, %5539
  %5717 = fadd fast float %5711, %5688
  %5718 = fadd fast float %5717, %5708
  %5719 = fsub fast float %5718, %5712
  %5720 = fsub fast float %5689, %5714
  %5721 = fadd fast float %5720, %5709
  %5722 = fadd fast float %5721, %5713
  %5723 = fadd fast float %5710, %5690
  %5724 = fsub fast float %5723, %5716
  %5725 = fadd fast float %5724, %5715
  br label %5726

; <label>:5726                                    ; preds = %5695, %5687
  %5727 = phi float [ %5719, %5695 ], [ %5688, %5687 ]
  %5728 = phi float [ %5722, %5695 ], [ %5689, %5687 ]
  %5729 = phi float [ %5725, %5695 ], [ %5690, %5687 ]
  br i1 %5567, label %5761, label %5730

; <label>:5730                                    ; preds = %5726
  %5731 = fmul fast float %5201, 0x400187C840000000
  %5732 = fadd fast float %5731, 0xC00EFC2120000000
  %5733 = fmul fast float %5732, %5201
  %5734 = fadd fast float %5733, 0x3FE5D16340000000
  %5735 = fmul fast float %5734, %5201
  %5736 = fadd fast float %5735, 1.000000e+00
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = fsub fast float %5691, %201
  %5739 = fsub fast float %5692, %202
  %5740 = fsub fast float %5693, %203
  %5741 = fsub fast float %5691, %5522
  %5742 = fsub fast float %5692, %5523
  %5743 = fsub fast float %5693, %5524
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5738, float %5739, float %5740, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fadd fast float %5745, 0x3EE4F8B580000000
  %5747 = fdiv fast float %5744, %5746
  %5748 = bitcast float %5747 to i32
  %5749 = ashr i32 %5748, 1
  %5750 = add nsw i32 %5749, 532487669
  %5751 = bitcast i32 %5750 to float
  %5752 = fmul fast float %5751, %5737
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = fmul fast float %5753, 0x4009981AE0000000
  %5755 = fsub fast float 0x40111BBD80000000, %5754
  %5756 = fmul fast float %5755, %5753
  %5757 = fadd fast float %5756, 0xC0009F6020000000
  %5758 = fmul fast float %5757, %5753
  %5759 = fadd fast float %5758, 1.000000e+00
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  br label %5764

; <label>:5761                                    ; preds = %5726
  %5762 = icmp ne i32 %5568, -1
  %5763 = zext i1 %5762 to i32
  br label %5764

; <label>:5764                                    ; preds = %5761, %5730
  %5765 = phi float [ %5201, %5761 ], [ %5760, %5730 ]
  %5766 = phi i32 [ %5763, %5761 ], [ 0, %5730 ]
  %5767 = fmul float %5765, 5.000000e+00
  %5768 = fsub float 5.000000e+00, %5767
  %5769 = icmp ne i32 %5766, 0
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5772 = fadd fast float %5771, %5768
  %5773 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5772)  ; FMax(a,b)
  %5774 = call float @dx.op.unary.f32(i32 6, float %5727)  ; FAbs(value)
  %5775 = call float @dx.op.unary.f32(i32 6, float %5728)  ; FAbs(value)
  %5776 = fadd fast float %5775, %5774
  %5777 = call float @dx.op.unary.f32(i32 6, float %5729)  ; FAbs(value)
  %5778 = fadd fast float %5776, %5777
  %5779 = fcmp fast oeq float %5778, 0.000000e+00
  %5780 = fdiv fast float 1.000000e+00, %5778
  %5781 = select i1 %5779, float 1.000000e+00, float %5780
  %5782 = fmul fast float %5781, %5727
  %5783 = fmul fast float %5781, %5728
  %5784 = call float @dx.op.unary.f32(i32 6, float %5783)  ; FAbs(value)
  %5785 = call float @dx.op.unary.f32(i32 6, float %5782)  ; FAbs(value)
  %5786 = fsub fast float 1.000000e+00, %5784
  %5787 = fsub fast float 1.000000e+00, %5785
  %5788 = fcmp fast oge float %5782, 0.000000e+00
  %5789 = fcmp fast oge float %5783, 0.000000e+00
  %5790 = select i1 %5788, float 1.000000e+00, float -1.000000e+00
  %5791 = select i1 %5789, float 1.000000e+00, float -1.000000e+00
  %5792 = fcmp fast ole float %5729, 0.000000e+00
  %5793 = fmul fast float %5790, %5786
  %5794 = fmul fast float %5791, %5787
  %5795 = select i1 %5792, float %5793, float %5782
  %5796 = select i1 %5792, float %5794, float %5783
  %5797 = fmul fast float %5795, 5.000000e-01
  %5798 = fmul fast float %5796, 5.000000e-01
  %5799 = fadd fast float %5797, 5.000000e-01
  %5800 = fadd fast float %5798, 5.000000e-01
  %5801 = uitofp i32 %5565 to float
  %5802 = call float @dx.op.binary.f32(i32 36, float %5773, float 3.000000e+00)  ; FMin(a,b)
  %5803 = fadd fast float %5802, 2.000000e+00
  %5804 = call float @dx.op.unary.f32(i32 21, float %5803)  ; Exp(value)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5770, 1
  %5806 = fmul fast float %5805, %5804
  %5807 = fmul fast float %5806, 2.000000e+00
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = fmul fast float %5799, %5808
  %5810 = fmul fast float %5800, %5808
  %5811 = fadd fast float %5809, %5806
  %5812 = fadd fast float %5810, %5806
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %52, float %5811, float %5812, float %5801, float undef, i32 0, i32 0, i32 undef, float %5773)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5819 = fmul fast float %5818, %5535
  %5820 = call float @dx.op.binary.f32(i32 36, float %5268, float %5819)  ; FMin(a,b)
  %5821 = select i1 %5769, float %5820, float %5819
  %5822 = fmul fast float %5814, %5614
  %5823 = fmul fast float %5822, %5821
  %5824 = fmul fast float %5815, %5614
  %5825 = fmul fast float %5824, %5821
  %5826 = fmul fast float %5816, %5614
  %5827 = fmul fast float %5826, %5821
  %5828 = fadd fast float %5823, %5510
  %5829 = fadd fast float %5825, %5511
  %5830 = fadd fast float %5827, %5512
  %5831 = fsub fast float %5513, %5614
  br label %5616

; <label>:5832                                    ; preds = %5616
  br label %5833

; <label>:5833                                    ; preds = %5832, %5479
  %5834 = phi float [ %5480, %5479 ], [ %5617, %5832 ]
  %5835 = phi float [ %5481, %5479 ], [ %5618, %5832 ]
  %5836 = phi float [ %5482, %5479 ], [ %5619, %5832 ]
  %5837 = phi float [ %5483, %5479 ], [ %5620, %5832 ]
  %5838 = add i32 %5484, 1
  %5839 = icmp ugt i32 %5838, %5476
  br i1 %5839, label %5840, label %5479, !llvm.loop !101

; <label>:5840                                    ; preds = %5833
  br label %5841

; <label>:5841                                    ; preds = %5840, %5461
  %5842 = phi float [ 0.000000e+00, %5461 ], [ %5834, %5840 ]
  %5843 = phi float [ 0.000000e+00, %5461 ], [ %5835, %5840 ]
  %5844 = phi float [ 0.000000e+00, %5461 ], [ %5836, %5840 ]
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5842, float %5843, float %5844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = select i1 %260, float 0.000000e+00, float %5842
  %5847 = select i1 %260, float %5845, float %5843
  %5848 = select i1 %260, float 0.000000e+00, float %5844
  %5849 = fcmp fast olt float %5387, 0.000000e+00
  %5850 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5851 = fmul fast float %5850, %5327
  %5852 = fmul fast float %5850, %5328
  %5853 = fmul fast float %5850, %5329
  %5854 = select i1 %5849, float %5327, float %5851
  %5855 = select i1 %5849, float %5328, float %5852
  %5856 = select i1 %5849, float %5329, float %5853
  %5857 = fsub fast float 1.000000e+00, %5850
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fmul fast float %5858, %5846
  %5860 = fmul fast float %5858, %5847
  %5861 = fmul fast float %5858, %5848
  %5862 = fadd fast float %5854, %5859
  %5863 = fadd fast float %5855, %5860
  %5864 = fadd fast float %5856, %5861
  br label %5865

; <label>:5865                                    ; preds = %5841, %5370
  %5866 = phi float [ %5327, %5370 ], [ %5862, %5841 ]
  %5867 = phi float [ %5328, %5370 ], [ %5863, %5841 ]
  %5868 = phi float [ %5329, %5370 ], [ %5864, %5841 ]
  %5869 = fmul fast float %5376, %5323
  %5870 = fmul fast float %5376, %5324
  %5871 = fmul fast float %5376, %5325
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = fcmp fast ogt float %5872, 0x3E7FF19E20000000
  %5874 = fdiv fast float 1.000000e+00, %5872
  %5875 = select i1 %5873, float %5874, float 0.000000e+00
  %5876 = fmul fast float %5875, %5195
  %5877 = fmul fast float %5875, %5196
  %5878 = fmul fast float %5875, %5197
  %5879 = fadd fast float %5876, -1.000000e+00
  %5880 = fadd fast float %5877, -1.000000e+00
  %5881 = fadd fast float %5878, -1.000000e+00
  %5882 = fmul fast float %5879, 5.000000e-01
  %5883 = fmul fast float %5880, 5.000000e-01
  %5884 = fmul fast float %5881, 5.000000e-01
  %5885 = fadd fast float %5882, 1.000000e+00
  %5886 = fadd fast float %5883, 1.000000e+00
  %5887 = fadd fast float %5884, 1.000000e+00
  %5888 = fmul fast float %5866, %5371
  %5889 = fmul fast float %5867, %5372
  %5890 = fmul fast float %5868, %5373
  %5891 = fsub fast float 1.000000e+00, %5206
  %5892 = bitcast float %5891 to i32
  %5893 = sitofp i32 %5892 to float
  %5894 = fmul fast float %5893, 5.000000e+00
  %5895 = fadd fast float %5894, 0xC1EFBF8940000000
  %5896 = fptosi float %5895 to i32
  %5897 = bitcast i32 %5896 to float
  %5898 = fmul fast float %5897, %3998
  %5899 = fmul fast float %5323, %5898
  %5900 = fmul fast float %5899, %5376
  %5901 = fmul fast float %5900, %5885
  %5902 = fmul fast float %5324, %5898
  %5903 = fmul fast float %5902, %5376
  %5904 = fmul fast float %5903, %5886
  %5905 = fmul fast float %5325, %5898
  %5906 = fmul fast float %5905, %5376
  %5907 = fmul fast float %5906, %5887
  %5908 = fmul fast float %5869, %3994
  %5909 = fmul fast float %5870, %3994
  %5910 = fmul fast float %5871, %3994
  %5911 = fadd fast float %5888, %3990
  %5912 = fadd fast float %5911, %5901
  %5913 = fmul fast float %5912, %3994
  %5914 = fadd fast float %5889, %3991
  %5915 = fadd fast float %5914, %5904
  %5916 = fmul fast float %5915, %3994
  %5917 = fadd fast float %5890, %3992
  %5918 = fadd fast float %5917, %5907
  %5919 = fmul fast float %5918, %3994
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5922 = fcmp fast oeq float %5921, 0.000000e+00
  br i1 %5922, label %7626, label %5923

; <label>:5923                                    ; preds = %5865
  %5924 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5926 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5928, float %5929, float %5930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = select i1 %260, float %5932, float %5928
  %5936 = select i1 %260, float %5934, float %5929
  %5937 = select i1 %260, float %5933, float %5930
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5940 = fmul fast float %5939, %121
  %5941 = fmul fast float %5939, %122
  %5942 = fmul fast float %5939, %123
  %5943 = fadd fast float %5940, %201
  %5944 = fadd fast float %5941, %202
  %5945 = fadd fast float %5942, %203
  %5946 = fcmp fast olt float %5921, 0.000000e+00
  br i1 %5946, label %7204, label %5947

; <label>:5947                                    ; preds = %5923
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 1
  %5951 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5952 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.CBufRet.f32 %5953, 2
  %5957 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5962 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5963 = fmul fast float %5949, %5943
  %5964 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %5950, float %5963)  ; FMad(a,b,c)
  %5965 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5951, float %5964)  ; FMad(a,b,c)
  %5966 = fadd fast float %5965, %5952
  %5967 = fmul fast float %5954, %5943
  %5968 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %5955, float %5967)  ; FMad(a,b,c)
  %5969 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5956, float %5968)  ; FMad(a,b,c)
  %5970 = fadd fast float %5969, %5957
  %5971 = fmul fast float %5959, %5943
  %5972 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %5960, float %5971)  ; FMad(a,b,c)
  %5973 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5961, float %5972)  ; FMad(a,b,c)
  %5974 = fadd fast float %5973, %5962
  %5975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5976 = extractvalue %dx.types.CBufRet.f32 %5975, 0
  %5977 = fcmp fast une float %5976, 0.000000e+00
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5982 = fmul fast float %5981, %5966
  %5983 = fmul fast float %5981, %5970
  %5984 = fadd fast float %5982, %5979
  %5985 = fadd fast float %5983, %5980
  %5986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5987 = extractvalue %dx.types.CBufRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.CBufRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.CBufRet.f32 %5986, 3
  %5990 = fmul fast float %5989, %5966
  %5991 = fmul fast float %5989, %5970
  %5992 = fadd fast float %5990, %5987
  %5993 = fadd fast float %5991, %5988
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5996 = fsub fast float %5995, %5974
  %5997 = extractvalue %dx.types.CBufRet.f32 %5994, 2
  %5998 = fmul fast float %5996, %5997
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  br i1 %5977, label %6061, label %6001

; <label>:6001                                    ; preds = %5947
  %6002 = extractvalue %dx.types.CBufRet.f32 %5986, 2
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6005 = fadd fast float %6004, %6002
  %6006 = fcmp fast ogt float %6005, 0.000000e+00
  br i1 %6006, label %6007, label %6031

; <label>:6007                                    ; preds = %6001
  %6008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6009 = extractvalue %dx.types.CBufRet.f32 %6008, 0
  %6010 = extractvalue %dx.types.CBufRet.f32 %6008, 1
  %6011 = fsub fast float %5992, %6009
  %6012 = fsub fast float %5993, %6010
  %6013 = fcmp fast olt float %6011, 0.000000e+00
  %6014 = fcmp fast olt float %6012, 0.000000e+00
  %6015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6016 = extractvalue %dx.types.CBufRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.CBufRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.CBufRet.f32 %6015, 2
  %6019 = extractvalue %dx.types.CBufRet.f32 %6015, 3
  %6020 = select i1 %6013, float %6016, float %6018
  %6021 = select i1 %6014, float %6017, float %6019
  %6022 = fmul fast float %6020, %6011
  %6023 = fmul fast float %6021, %6012
  %6024 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6025 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6026 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %6027 = call float @dx.op.binary.f32(i32 35, float %6024, float %6025)  ; FMax(a,b)
  %6028 = fsub fast float %6026, %6027
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = fmul fast float %6029, %6000
  br label %6031

; <label>:6031                                    ; preds = %6007, %6001
  %6032 = phi float [ %6030, %6007 ], [ 0.000000e+00, %6001 ]
  %6033 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %6034 = extractvalue %dx.types.CBufRet.f32 %6003, 1
  %6035 = fadd fast float %6034, %6033
  %6036 = fcmp fast ogt float %6035, 0.000000e+00
  br i1 %6036, label %6037, label %6061

; <label>:6037                                    ; preds = %6031
  %6038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.f32 %6038, 0
  %6040 = extractvalue %dx.types.CBufRet.f32 %6038, 1
  %6041 = fsub fast float %5984, %6039
  %6042 = fsub fast float %5985, %6040
  %6043 = fcmp fast olt float %6041, 0.000000e+00
  %6044 = fcmp fast olt float %6042, 0.000000e+00
  %6045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6046 = extractvalue %dx.types.CBufRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.CBufRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.CBufRet.f32 %6045, 2
  %6049 = extractvalue %dx.types.CBufRet.f32 %6045, 3
  %6050 = select i1 %6043, float %6046, float %6048
  %6051 = select i1 %6044, float %6047, float %6049
  %6052 = fmul fast float %6050, %6041
  %6053 = fmul fast float %6051, %6042
  %6054 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6055 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6056 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %6057 = call float @dx.op.binary.f32(i32 35, float %6054, float %6055)  ; FMax(a,b)
  %6058 = fsub fast float %6056, %6057
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = fmul fast float %6059, %6000
  br label %6061

; <label>:6061                                    ; preds = %6037, %6031, %5947
  %6062 = phi float [ 0.000000e+00, %5947 ], [ %6060, %6037 ], [ 0.000000e+00, %6031 ]
  %6063 = phi float [ 0.000000e+00, %5947 ], [ %6032, %6037 ], [ %6032, %6031 ]
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6066 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = fsub fast float %5966, %6068
  %6071 = fsub fast float %5970, %6069
  %6072 = fcmp fast olt float %6070, 0.000000e+00
  %6073 = fcmp fast olt float %6071, 0.000000e+00
  %6074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6074, 0
  %6076 = extractvalue %dx.types.CBufRet.f32 %6074, 1
  %6077 = extractvalue %dx.types.CBufRet.f32 %6074, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6074, 3
  %6079 = select i1 %6072, float %6075, float %6077
  %6080 = select i1 %6073, float %6076, float %6078
  %6081 = fmul fast float %6079, %6070
  %6082 = fmul fast float %6080, %6071
  %6083 = call float @dx.op.unary.f32(i32 6, float %6081)  ; FAbs(value)
  %6084 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6085 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %6086 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6087 = fsub fast float %6085, %6086
  %6088 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6089 = call float @dx.op.binary.f32(i32 36, float %6088, float %6066)  ; FMin(a,b)
  %6090 = fmul fast float %6089, %6000
  %6091 = fsub fast float %6062, %6090
  %6092 = fsub fast float %6063, %6062
  %6093 = fsub fast float %6092, %6090
  %6094 = call float @dx.op.binary.f32(i32 35, float %6062, float %6063)  ; FMax(a,b)
  %6095 = call float @dx.op.binary.f32(i32 35, float %6090, float %6094)  ; FMax(a,b)
  %6096 = fcmp fast olt float %6095, 1.000000e+00
  br i1 %6096, label %6097, label %6495, !dx.controlflow.hints !103

; <label>:6097                                    ; preds = %6061
  %6098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6099 = extractvalue %dx.types.CBufRet.f32 %6098, 0
  %6100 = fcmp fast une float %6099, 0.000000e+00
  br i1 %6100, label %6101, label %6495, !dx.controlflow.hints !104

; <label>:6101                                    ; preds = %6097
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6117 = fmul fast float %6103, %5943
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %6104, float %6117)  ; FMad(a,b,c)
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %6105, float %6118)  ; FMad(a,b,c)
  %6120 = fadd fast float %6119, %6106
  %6121 = fmul fast float %6108, %5943
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %6109, float %6121)  ; FMad(a,b,c)
  %6123 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %6110, float %6122)  ; FMad(a,b,c)
  %6124 = fadd fast float %6123, %6111
  %6125 = fmul fast float %6113, %5943
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %6114, float %6125)  ; FMad(a,b,c)
  %6127 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %6115, float %6126)  ; FMad(a,b,c)
  %6128 = fadd fast float %6127, %6116
  %6129 = fcmp fast oge float %6120, 1.000000e+00
  %6130 = fcmp fast oge float %6124, 1.000000e+00
  %6131 = or i1 %6129, %6130
  %6132 = fcmp fast olt float %6120, 0.000000e+00
  %6133 = fcmp fast olt float %6124, 0.000000e+00
  %6134 = or i1 %6132, %6133
  %6135 = or i1 %6131, %6134
  br i1 %6135, label %6495, label %6136, !dx.controlflow.hints !105

; <label>:6136                                    ; preds = %6101
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.i32 %6141, 2
  %6143 = uitofp i32 %6142 to float
  %6144 = extractvalue %dx.types.CBufRet.i32 %6141, 3
  %6145 = uitofp i32 %6144 to float
  %6146 = extractvalue %dx.types.CBufRet.f32 %6137, 3
  %6147 = fmul fast float %6146, 2.000000e+00
  %6148 = fsub fast float %6120, %6138
  %6149 = fsub fast float %6124, %6139
  %6150 = fmul fast float %6147, %6148
  %6151 = fmul fast float %6147, %6149
  %6152 = fdiv fast float 1.000000e+00, %5926
  %6153 = fmul fast float %6151, %6152
  %6154 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6155 = fmul fast float %6140, %5945
  %6156 = fmul fast float %6155, %6147
  %6157 = call float @dx.op.unary.f32(i32 6, float %6156)  ; FAbs(value)
  %6158 = call float @dx.op.unary.f32(i32 6, float %6150)  ; FAbs(value)
  %6159 = call float @dx.op.binary.f32(i32 35, float %6157, float %6154)  ; FMax(a,b)
  %6160 = call float @dx.op.binary.f32(i32 35, float %6158, float %6159)  ; FMax(a,b)
  %6161 = fmul fast float %6160, 2.000000e+00
  %6162 = call float @dx.op.unary.f32(i32 23, float %6161)  ; Log(value)
  %6163 = call float @dx.op.binary.f32(i32 35, float %6162, float %6143)  ; FMax(a,b)
  %6164 = call float @dx.op.unary.f32(i32 22, float %6163)  ; Frc(value)
  %6165 = fadd fast float %6164, 0xBFEA666660000000
  %6166 = fmul fast float %6165, 8.000000e+00
  %6167 = call float @dx.op.unary.f32(i32 7, float %6166)  ; Saturate(value)
  %6168 = call float @dx.op.unary.f32(i32 27, float %6163)  ; Round_ni(value)
  %6169 = fadd fast float %6168, %6167
  %6170 = call float @dx.op.binary.f32(i32 36, float %6169, float %6145)  ; FMin(a,b)
  %6171 = call float @dx.op.unary.f32(i32 27, float %6170)  ; Round_ni(value)
  %6172 = fsub fast float -0.000000e+00, %6171
  %6173 = call float @dx.op.unary.f32(i32 21, float %6172)  ; Exp(value)
  %6174 = fmul fast float %6173, %6147
  %6175 = fmul fast float %6174, %6120
  %6176 = fmul fast float %6174, %6124
  %6177 = fmul fast float %6175, 2.500000e-01
  %6178 = fmul fast float %6176, 2.500000e-01
  %6179 = fadd fast float %6177, 5.000000e-01
  %6180 = fadd fast float %6178, 5.000000e-01
  %6181 = fsub fast float %6145, %6143
  %6182 = fptoui float %6181 to i32
  %6183 = add i32 %6182, 320
  %6184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6183)  ; CBufferLoadLegacy(handle,regIndex)
  %6185 = extractvalue %dx.types.CBufRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.CBufRet.f32 %6184, 1
  %6187 = fcmp fast une float %6170, %6145
  %6188 = fsub fast float %6120, %6185
  %6189 = fsub fast float %6124, %6186
  %6190 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6192 = fmul fast float %6190, %6174
  %6193 = fmul fast float %6191, %6174
  %6194 = fcmp fast olt float %6192, 1.000000e+00
  %6195 = fcmp fast olt float %6193, 1.000000e+00
  %6196 = and i1 %6194, %6195
  %6197 = or i1 %6187, %6196
  br i1 %6197, label %6198, label %6495, !dx.controlflow.hints !106

; <label>:6198                                    ; preds = %6136
  %6199 = fmul fast float %6176, 5.000000e-01
  %6200 = fmul fast float %6175, 5.000000e-01
  %6201 = fadd fast float %6199, 5.000000e-01
  %6202 = fadd fast float %6200, 5.000000e-01
  %6203 = sitofp i32 %6142 to float
  %6204 = fsub fast float %6170, %6203
  %6205 = call float @dx.op.unary.f32(i32 27, float %6204)  ; Round_ni(value)
  %6206 = call float @dx.op.unary.f32(i32 22, float %6170)  ; Frc(value)
  %6207 = call float @dx.op.unary.f32(i32 22, float %6202)  ; Frc(value)
  %6208 = call float @dx.op.unary.f32(i32 22, float %6201)  ; Frc(value)
  %6209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6207, float %6208, float %6205, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.ResRet.f32 %6209, 1
  %6212 = extractvalue %dx.types.ResRet.f32 %6209, 2
  %6213 = extractvalue %dx.types.ResRet.f32 %6209, 3
  %6214 = fcmp fast ogt float %6206, 0.000000e+00
  br i1 %6214, label %6215, label %6236, !dx.controlflow.hints !107

; <label>:6215                                    ; preds = %6198
  %6216 = fadd fast float %6205, 1.000000e+00
  %6217 = call float @dx.op.unary.f32(i32 22, float %6179)  ; Frc(value)
  %6218 = call float @dx.op.unary.f32(i32 22, float %6180)  ; Frc(value)
  %6219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6217, float %6218, float %6216, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6220 = extractvalue %dx.types.ResRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.ResRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.ResRet.f32 %6219, 2
  %6223 = extractvalue %dx.types.ResRet.f32 %6219, 3
  %6224 = fsub fast float %6220, %6210
  %6225 = fsub fast float %6221, %6211
  %6226 = fsub fast float %6222, %6212
  %6227 = fsub fast float %6223, %6213
  %6228 = fmul fast float %6224, %6206
  %6229 = fmul fast float %6225, %6206
  %6230 = fmul fast float %6226, %6206
  %6231 = fmul fast float %6227, %6206
  %6232 = fadd fast float %6228, %6210
  %6233 = fadd fast float %6229, %6211
  %6234 = fadd fast float %6230, %6212
  %6235 = fadd fast float %6231, %6213
  br label %6236

; <label>:6236                                    ; preds = %6215, %6198
  %6237 = phi float [ %6232, %6215 ], [ %6210, %6198 ]
  %6238 = phi float [ %6233, %6215 ], [ %6211, %6198 ]
  %6239 = phi float [ %6234, %6215 ], [ %6212, %6198 ]
  %6240 = phi float [ %6235, %6215 ], [ %6213, %6198 ]
  %6241 = fadd fast float %6237, -5.000000e-01
  %6242 = fadd fast float %6239, -5.000000e-01
  %6243 = fmul fast float %6241, 0xBFD5555560000000
  %6244 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6242, float %6243)  ; FMad(a,b,c)
  %6245 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6238, float 0.000000e+00)  ; FMad(a,b,c)
  %6246 = fadd fast float %6245, %6240
  %6247 = fmul fast float %6241, -7.500000e-01
  %6248 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6242, float %6247)  ; FMad(a,b,c)
  %6249 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6238, float 0.000000e+00)  ; FMad(a,b,c)
  %6250 = fadd fast float %6249, %6240
  %6251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.f32 %6251, 0
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6258 = fsub fast float %6254, %6244
  %6259 = fsub fast float %6255, %6246
  %6260 = fsub fast float %6256, %6248
  %6261 = fsub fast float %6257, %6250
  %6262 = fmul fast float %6258, %6252
  %6263 = fmul fast float %6259, %6252
  %6264 = fmul fast float %6260, %6252
  %6265 = fmul fast float %6261, %6252
  %6266 = fadd fast float %6262, %6244
  %6267 = fadd fast float %6263, %6246
  %6268 = fadd fast float %6264, %6248
  %6269 = fadd fast float %6265, %6250
  %6270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6271 = extractvalue %dx.types.ResRet.i32 %6270, 0
  %6272 = and i32 %6271, 536870911
  %6273 = uitofp i32 %6272 to float
  %6274 = fmul fast float %6273, %6120
  %6275 = fmul fast float %6273, %6124
  %6276 = fptoui float %6274 to i32
  %6277 = fptoui float %6275 to i32
  %6278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6279 = extractvalue %dx.types.ResRet.i32 %6278, 0
  %6280 = and i32 %6279, 31
  %6281 = lshr i32 %6276, %6280
  %6282 = lshr i32 %6277, %6280
  %6283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.i32 %6283, 0
  %6285 = and i32 %6284, 31
  %6286 = shl i32 1, %6285
  %6287 = call i32 @dx.op.binary.i32(i32 40, i32 %6286, i32 4)  ; UMin(a,b)
  %6288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6289 = extractvalue %dx.types.ResRet.i32 %6288, 0
  %6290 = extractvalue %dx.types.ResRet.i32 %6288, 1
  %6291 = icmp eq i32 %6287, 0
  br i1 %6291, label %6333, label %6292

; <label>:6292                                    ; preds = %6236
  br label %6293

; <label>:6293                                    ; preds = %6321, %6292
  %6294 = phi i32 [ %6324, %6321 ], [ 0, %6292 ]
  %6295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.i32 %6295, 0
  %6297 = lshr i32 %6296, 16
  %6298 = and i32 %6297, 31
  %6299 = shl i32 %6282, %6298
  %6300 = add i32 %6299, %6281
  %6301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6302 = extractvalue %dx.types.ResRet.i32 %6301, 0
  %6303 = and i32 %6302, 31
  %6304 = shl i32 %6300, %6303
  %6305 = add i32 %6304, %6294
  %6306 = shl i32 %6305, 2
  %6307 = add i32 %6306, 32
  %6308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6307, i32 undef)  ; BufferLoad(srv,index,wot)
  %6309 = extractvalue %dx.types.ResRet.i32 %6308, 0
  %6310 = icmp slt i32 %6309, 0
  %6311 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6294
  %6312 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6294
  %6313 = bitcast float* %6311 to i32*
  %6314 = bitcast float* %6312 to i32*
  br i1 %6310, label %6315, label %6321

; <label>:6315                                    ; preds = %6293
  %6316 = and i32 %6309, 1073741823
  %6317 = add nuw nsw i32 %6316, 20
  %6318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6317, i32 undef)  ; BufferLoad(srv,index,wot)
  %6319 = extractvalue %dx.types.ResRet.i32 %6318, 0
  %6320 = extractvalue %dx.types.ResRet.i32 %6318, 1
  br label %6321

; <label>:6321                                    ; preds = %6315, %6293
  %6322 = phi i32 [ %6319, %6315 ], [ %6289, %6293 ]
  %6323 = phi i32 [ %6320, %6315 ], [ %6290, %6293 ]
  store i32 %6322, i32* %6313, align 4
  store i32 %6323, i32* %6314, align 4
  %6324 = add nuw i32 %6294, 1
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 2
  %6327 = icmp eq i32 %6326, 0
  %6328 = icmp ugt i32 %6309, -1073741825
  %6329 = and i1 %6328, %6327
  %6330 = icmp ult i32 %6324, %6287
  %6331 = and i1 %6329, %6330
  br i1 %6331, label %6293, label %6332

; <label>:6332                                    ; preds = %6321
  br label %6333

; <label>:6333                                    ; preds = %6332, %6236
  %6334 = phi i32 [ 0, %6236 ], [ %6324, %6332 ]
  %6335 = extractvalue %dx.types.CBufRet.f32 %6098, 2
  %6336 = fptoui float %6335 to i32
  %6337 = icmp eq i32 %6336, 0
  br i1 %6337, label %6389, label %6338

; <label>:6338                                    ; preds = %6333
  br label %6339

; <label>:6339                                    ; preds = %6384, %6338
  %6340 = phi i32 [ %6385, %6384 ], [ %6334, %6338 ]
  %6341 = phi i32 [ %6386, %6384 ], [ 0, %6338 ]
  %6342 = lshr i32 %6341, 2
  %6343 = and i32 %6341, 3
  %6344 = add nuw nsw i32 %6342, 83
  %6345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6344)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.i32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.i32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.i32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.i32 %6345, 3
  %6350 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6346, i32* %6350, align 4
  %6351 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6347, i32* %6351, align 4
  %6352 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6348, i32* %6352, align 4
  %6353 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6349, i32* %6353, align 4
  %6354 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6343
  %6355 = load i32, i32* %6354, align 4, !tbaa !108, !noalias !112
  %6356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6357 = extractvalue %dx.types.ResRet.i32 %6356, 0
  %6358 = lshr i32 %6357, 16
  %6359 = and i32 %6358, 31
  %6360 = shl i32 %6282, %6359
  %6361 = add i32 %6360, %6281
  %6362 = shl i32 %6361, 2
  %6363 = add i32 %6362, %6355
  %6364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6363, i32 undef)  ; BufferLoad(srv,index,wot)
  %6365 = extractvalue %dx.types.ResRet.i32 %6364, 0
  %6366 = icmp eq i32 %6365, 0
  br i1 %6366, label %6384, label %6367

; <label>:6367                                    ; preds = %6339
  %6368 = icmp slt i32 %6365, 0
  %6369 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6340
  %6370 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6340
  %6371 = bitcast float* %6369 to i32*
  %6372 = bitcast float* %6370 to i32*
  br i1 %6368, label %6373, label %6380

; <label>:6373                                    ; preds = %6367
  %6374 = and i32 %6365, 1073741823
  %6375 = add i32 %6355, 20
  %6376 = add i32 %6375, %6374
  %6377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6376, i32 undef)  ; BufferLoad(srv,index,wot)
  %6378 = extractvalue %dx.types.ResRet.i32 %6377, 0
  %6379 = extractvalue %dx.types.ResRet.i32 %6377, 1
  br label %6380

; <label>:6380                                    ; preds = %6373, %6367
  %6381 = phi i32 [ %6378, %6373 ], [ %6289, %6367 ]
  %6382 = phi i32 [ %6379, %6373 ], [ %6290, %6367 ]
  store i32 %6381, i32* %6371, align 4
  store i32 %6382, i32* %6372, align 4
  %6383 = add i32 %6340, 1
  br label %6384

; <label>:6384                                    ; preds = %6380, %6339
  %6385 = phi i32 [ %6340, %6339 ], [ %6383, %6380 ]
  %6386 = add nuw i32 %6341, 1
  %6387 = icmp eq i32 %6386, %6336
  br i1 %6387, label %6388, label %6339

; <label>:6388                                    ; preds = %6384
  br label %6389

; <label>:6389                                    ; preds = %6388, %6333
  %6390 = phi i32 [ %6334, %6333 ], [ %6385, %6388 ]
  %6391 = icmp eq i32 %6390, 1
  %6392 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 0
  %6393 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 0
  br i1 %6391, label %6394, label %6397

; <label>:6394                                    ; preds = %6389
  %6395 = load float, float* %6392, align 4
  %6396 = load float, float* %6393, align 4
  br label %6424

; <label>:6397                                    ; preds = %6389
  %6398 = load float, float* %6392, align 4
  %6399 = load float, float* %6393, align 4
  %6400 = fdiv fast float 1.000000e+00, %6399
  %6401 = fsub fast float %6398, %6400
  %6402 = icmp ugt i32 %6390, 1
  br i1 %6402, label %6403, label %6419

; <label>:6403                                    ; preds = %6397
  br label %6404

; <label>:6404                                    ; preds = %6404, %6403
  %6405 = phi float [ %6414, %6404 ], [ %6401, %6403 ]
  %6406 = phi float [ %6415, %6404 ], [ %6398, %6403 ]
  %6407 = phi i32 [ %6416, %6404 ], [ 1, %6403 ]
  %6408 = getelementptr [12 x float], [12 x float]* %102, i32 0, i32 %6407
  %6409 = load float, float* %6408, align 4
  %6410 = getelementptr [12 x float], [12 x float]* %103, i32 0, i32 %6407
  %6411 = load float, float* %6410, align 4
  %6412 = fdiv fast float 1.000000e+00, %6411
  %6413 = fsub fast float %6409, %6412
  %6414 = call float @dx.op.binary.f32(i32 36, float %6405, float %6413)  ; FMin(a,b)
  %6415 = call float @dx.op.binary.f32(i32 35, float %6406, float %6409)  ; FMax(a,b)
  %6416 = add nuw i32 %6407, 1
  %6417 = icmp eq i32 %6416, %6390
  br i1 %6417, label %6418, label %6404

; <label>:6418                                    ; preds = %6404
  br label %6419

; <label>:6419                                    ; preds = %6418, %6397
  %6420 = phi float [ %6401, %6397 ], [ %6414, %6418 ]
  %6421 = phi float [ %6398, %6397 ], [ %6415, %6418 ]
  %6422 = fsub fast float %6421, %6420
  %6423 = fdiv fast float 1.000000e+00, %6422
  br label %6424

; <label>:6424                                    ; preds = %6419, %6394
  %6425 = phi float [ %6395, %6394 ], [ %6421, %6419 ]
  %6426 = phi float [ %6396, %6394 ], [ %6423, %6419 ]
  %6427 = fadd fast float %6128, %6425
  %6428 = fmul fast float %6427, %6426
  %6429 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  %6430 = fmul fast float %6429, 2.000000e+00
  %6431 = fsub fast float 1.000000e+00, %6430
  %6432 = fmul fast float %6266, %6266
  %6433 = fsub fast float %6267, %6432
  %6434 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6433)  ; FMax(a,b)
  %6435 = fdiv fast float 1.000000e+00, %6434
  %6436 = fmul fast float %6267, %6266
  %6437 = fsub fast float %6268, %6436
  %6438 = fsub fast float %6431, %6266
  %6439 = fmul fast float %6431, %6431
  %6440 = fsub fast float %6439, %6267
  %6441 = fmul fast float %6435, %6437
  %6442 = fmul fast float %6441, %6438
  %6443 = fsub fast float %6440, %6442
  %6444 = fmul fast float %6267, %6267
  %6445 = fsub fast float %6269, %6444
  %6446 = fmul fast float %6437, %6437
  %6447 = fmul fast float %6446, %6435
  %6448 = fsub fast float %6445, %6447
  %6449 = fdiv fast float %6443, %6448
  %6450 = fmul fast float %6449, %6437
  %6451 = fsub fast float %6438, %6450
  %6452 = fmul fast float %6451, %6435
  %6453 = fmul fast float %6452, %6266
  %6454 = fsub fast float 1.000000e+00, %6453
  %6455 = fmul fast float %6449, %6267
  %6456 = fsub fast float %6454, %6455
  %6457 = fmul fast float %6452, %6452
  %6458 = fmul fast float %6449, 4.000000e+00
  %6459 = fmul fast float %6458, %6456
  %6460 = fsub fast float %6457, %6459
  %6461 = call float @dx.op.unary.f32(i32 24, float %6460)  ; Sqrt(value)
  %6462 = fcmp fast oge float %6452, 0.000000e+00
  %6463 = fsub fast float -0.000000e+00, %6461
  %6464 = select i1 %6462, float %6463, float %6461
  %6465 = fsub fast float %6464, %6452
  %6466 = fdiv fast float %6465, %6449
  %6467 = fdiv fast float %6456, %6465
  %6468 = fmul fast float %6466, 5.000000e-01
  %6469 = fmul fast float %6467, 2.000000e+00
  %6470 = select i1 %6462, float %6468, float %6469
  %6471 = select i1 %6462, float %6469, float %6468
  %6472 = call float @dx.op.binary.f32(i32 35, float %6470, float %6471)  ; FMax(a,b)
  %6473 = call float @dx.op.binary.f32(i32 36, float %6470, float %6471)  ; FMin(a,b)
  %6474 = fcmp fast ogt float %6431, %6472
  %6475 = fsub fast float %6431, %6473
  %6476 = fsub fast float %6431, %6472
  %6477 = fsub fast float %6472, %6473
  %6478 = select i1 %6474, float %6476, float %6477
  %6479 = fmul float %6475, %6478
  %6480 = select i1 %6474, float %6473, float %6431
  %6481 = fcmp fast ogt float %6431, %6473
  %6482 = fmul fast float %6480, %6472
  %6483 = fadd fast float %6480, %6472
  %6484 = fmul fast float %6483, %6266
  %6485 = fadd fast float %6482, %6267
  %6486 = fsub fast float %6485, %6484
  %6487 = fdiv fast float %6486, %6479
  %6488 = select i1 %6481, float %6487, float 0.000000e+00
  %6489 = fsub fast float 1.000000e+00, %6488
  %6490 = select i1 %6474, float %6489, float %6488
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6251, 3
  %6493 = fmul fast float %6492, %6491
  %6494 = fsub fast float 1.000000e+00, %6493
  br label %6495

; <label>:6495                                    ; preds = %6424, %6136, %6101, %6097, %6061
  %6496 = phi float [ 1.000000e+00, %6061 ], [ %6494, %6424 ], [ 1.000000e+00, %6101 ], [ 1.000000e+00, %6136 ], [ 1.000000e+00, %6097 ]
  %6497 = fcmp fast ogt float %6093, 0.000000e+00
  br i1 %6497, label %6498, label %6662, !dx.controlflow.hints !121

; <label>:6498                                    ; preds = %6495
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6501 = fadd fast float %6500, %5974
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6504 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6507 = call float @dx.op.binary.f32(i32 35, float %6501, float 0.000000e+00)  ; FMax(a,b)
  %6508 = fadd fast float %6507, 0x3F10000000000000
  %6509 = fcmp fast oeq float %6506, 0.000000e+00
  br i1 %6509, label %6510, label %6577

; <label>:6510                                    ; preds = %6498
  %6511 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6512 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6513 = fmul fast float %6512, %5992
  %6514 = fmul fast float %6511, %5993
  %6515 = fadd fast float %6513, 5.000000e-01
  %6516 = call float @dx.op.unary.f32(i32 27, float %6515)  ; Round_ni(value)
  %6517 = fadd fast float %6514, 5.000000e-01
  %6518 = call float @dx.op.unary.f32(i32 27, float %6517)  ; Round_ni(value)
  %6519 = fsub fast float %6515, %6516
  %6520 = fsub fast float %6517, %6518
  %6521 = fadd fast float %6516, -5.000000e-01
  %6522 = fadd fast float %6518, -5.000000e-01
  %6523 = fmul fast float %6519, 2.000000e+00
  %6524 = fsub fast float 3.000000e+00, %6523
  %6525 = fadd fast float %6523, 1.000000e+00
  %6526 = fsub fast float 2.000000e+00, %6519
  %6527 = bitcast float %6524 to i32
  %6528 = sub nsw i32 2129859010, %6527
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %6526
  %6531 = fadd fast float %6530, -1.000000e+00
  %6532 = bitcast float %6525 to i32
  %6533 = sub nsw i32 2129859010, %6532
  %6534 = bitcast i32 %6533 to float
  %6535 = fmul fast float %6534, %6519
  %6536 = fadd fast float %6535, 1.000000e+00
  %6537 = fmul fast float %6520, 2.000000e+00
  %6538 = fsub fast float 3.000000e+00, %6537
  %6539 = fadd fast float %6537, 1.000000e+00
  %6540 = fsub fast float 2.000000e+00, %6520
  %6541 = bitcast float %6538 to i32
  %6542 = sub nsw i32 2129859010, %6541
  %6543 = bitcast i32 %6542 to float
  %6544 = fmul fast float %6543, %6540
  %6545 = fadd fast float %6544, -1.000000e+00
  %6546 = bitcast float %6539 to i32
  %6547 = sub nsw i32 2129859010, %6546
  %6548 = bitcast i32 %6547 to float
  %6549 = fmul fast float %6548, %6520
  %6550 = fadd fast float %6549, 1.000000e+00
  %6551 = fadd fast float %6531, %6521
  %6552 = fmul fast float %6551, %6503
  %6553 = fadd fast float %6545, %6522
  %6554 = fmul fast float %6553, %6504
  %6555 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6552, float %6554, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6556 = extractvalue %dx.types.ResRet.f32 %6555, 0
  %6557 = fmul fast float %6556, %6524
  %6558 = fadd fast float %6536, %6521
  %6559 = fmul fast float %6558, %6503
  %6560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6559, float %6554, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6561 = extractvalue %dx.types.ResRet.f32 %6560, 0
  %6562 = fmul fast float %6561, %6525
  %6563 = fadd fast float %6550, %6522
  %6564 = fmul fast float %6563, %6504
  %6565 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6552, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6566 = extractvalue %dx.types.ResRet.f32 %6565, 0
  %6567 = fmul fast float %6566, %6524
  %6568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6559, float %6564, float undef, float undef, i32 0, i32 0, i32 undef, float %6508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = fmul fast float %6569, %6525
  %6571 = fadd fast float %6570, %6567
  %6572 = fmul fast float %6571, %6539
  %6573 = fadd fast float %6562, %6557
  %6574 = fmul fast float %6573, %6538
  %6575 = fadd fast float %6574, %6572
  %6576 = fmul fast float %6575, 6.250000e-02
  br label %6662

; <label>:6577                                    ; preds = %6498
  %6578 = fmul fast float %271, 0x401921FB60000000
  %6579 = call float @dx.op.unary.f32(i32 13, float %6578)  ; Sin(value)
  %6580 = call float @dx.op.unary.f32(i32 12, float %6578)  ; Cos(value)
  %6581 = fsub fast float -0.000000e+00, %6579
  br label %6582

; <label>:6582                                    ; preds = %6631, %6577
  %6583 = phi float [ 0.000000e+00, %6577 ], [ %6626, %6631 ]
  %6584 = phi float [ 0.000000e+00, %6577 ], [ %6628, %6631 ]
  %6585 = phi i32 [ 0, %6577 ], [ %6632, %6631 ]
  %6586 = mul i32 %6585, 2
  %6587 = add i32 0, %6586
  %6588 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6587
  %6589 = load float, float* %6588, align 4
  %6590 = mul i32 %6585, 2
  %6591 = add i32 1, %6590
  %6592 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6591
  %6593 = load float, float* %6592, align 4
  %6594 = fmul fast float %6589, %6580
  %6595 = call float @dx.op.tertiary.f32(i32 46, float %6593, float %6581, float %6594)  ; FMad(a,b,c)
  %6596 = fmul fast float %6589, %6579
  %6597 = call float @dx.op.tertiary.f32(i32 46, float %6593, float %6580, float %6596)  ; FMad(a,b,c)
  %6598 = fmul fast float %6595, %6506
  %6599 = fmul fast float %6597, %6506
  %6600 = fadd fast float %6598, %5992
  %6601 = fadd fast float %6599, %5993
  %6602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6600, float %6601, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 1
  %6605 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6606 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6607 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 0
  store float %6603, float* %6607, align 4
  %6608 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 1
  store float %6604, float* %6608, align 4
  %6609 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 2
  store float %6605, float* %6609, align 4
  %6610 = getelementptr inbounds [4 x float], [4 x float]* %107, i32 0, i32 3
  store float %6606, float* %6610, align 4
  %6611 = fsub fast float %6603, %6508
  %6612 = fcmp fast olt float %6611, 0.000000e+00
  %6613 = select i1 %6612, float 0.000000e+00, float 1.000000e+00
  %6614 = fadd fast float %6613, %6583
  %6615 = fmul fast float %6613, %6611
  %6616 = fadd fast float %6615, %6584
  br label %6617

; <label>:6617                                    ; preds = %6617, %6582
  %6618 = phi i32 [ 1, %6582 ], [ %6629, %6617 ]
  %6619 = phi float [ %6616, %6582 ], [ %6628, %6617 ]
  %6620 = phi float [ %6614, %6582 ], [ %6626, %6617 ]
  %6621 = getelementptr [4 x float], [4 x float]* %107, i32 0, i32 %6618
  %6622 = load float, float* %6621, align 4, !tbaa !122, !noalias !112
  %6623 = fsub fast float %6622, %6508
  %6624 = fcmp fast olt float %6623, 0.000000e+00
  %6625 = select i1 %6624, float 0.000000e+00, float 1.000000e+00
  %6626 = fadd fast float %6625, %6620
  %6627 = fmul fast float %6625, %6623
  %6628 = fadd fast float %6627, %6619
  %6629 = add nuw nsw i32 %6618, 1
  %6630 = icmp eq i32 %6629, 4
  br i1 %6630, label %6631, label %6617, !llvm.loop !124

; <label>:6631                                    ; preds = %6617
  %6632 = add nuw nsw i32 %6585, 1
  %6633 = icmp eq i32 %6632, 8
  br i1 %6633, label %6634, label %6582, !llvm.loop !125

; <label>:6634                                    ; preds = %6631
  %6635 = fdiv fast float 1.000000e+00, %6626
  %6636 = fmul fast float %6635, %6628
  %6637 = fdiv fast float 1.000000e+00, %6508
  %6638 = fmul fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = call float @dx.op.binary.f32(i32 35, float %6639, float 0.000000e+00)  ; FMax(a,b)
  %6641 = fmul fast float %6626, 3.125000e-02
  %6642 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6643 = fmul fast float %6642, 2.000000e+00
  %6644 = fadd fast float %6643, -1.000000e+00
  %6645 = fcmp fast ogt float %6644, 0.000000e+00
  %6646 = fcmp fast olt float %6644, 0.000000e+00
  %6647 = zext i1 %6645 to i32
  %6648 = zext i1 %6646 to i32
  %6649 = sub nsw i32 %6647, %6648
  %6650 = sitofp i32 %6649 to float
  %6651 = fmul fast float %6650, %6644
  %6652 = fsub fast float 1.000000e+00, %6651
  %6653 = fmul fast float %6652, %6652
  %6654 = fmul fast float %6653, %6652
  %6655 = fsub fast float %6652, %6654
  %6656 = fmul fast float %6655, %6640
  %6657 = fsub fast float 1.000000e+00, %6654
  %6658 = fsub fast float %6657, %6656
  %6659 = fmul fast float %6650, 5.000000e-01
  %6660 = fmul fast float %6659, %6658
  %6661 = fsub fast float 5.000000e-01, %6660
  br label %6662

; <label>:6662                                    ; preds = %6634, %6510, %6495
  %6663 = phi float [ 1.000000e+00, %6495 ], [ %6576, %6510 ], [ %6661, %6634 ]
  %6664 = fcmp fast ogt float %6091, 0.000000e+00
  br i1 %6664, label %6665, label %6829, !dx.controlflow.hints !126

; <label>:6665                                    ; preds = %6662
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6668 = fadd fast float %6667, %5974
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 2
  %6671 = extractvalue %dx.types.CBufRet.f32 %6669, 3
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6674 = call float @dx.op.binary.f32(i32 35, float %6668, float 0.000000e+00)  ; FMax(a,b)
  %6675 = fadd fast float %6674, 0x3F10000000000000
  %6676 = fcmp fast oeq float %6673, 0.000000e+00
  br i1 %6676, label %6677, label %6744

; <label>:6677                                    ; preds = %6665
  %6678 = extractvalue %dx.types.CBufRet.f32 %6669, 1
  %6679 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6680 = fmul fast float %6679, %5984
  %6681 = fmul fast float %6678, %5985
  %6682 = fadd fast float %6680, 5.000000e-01
  %6683 = call float @dx.op.unary.f32(i32 27, float %6682)  ; Round_ni(value)
  %6684 = fadd fast float %6681, 5.000000e-01
  %6685 = call float @dx.op.unary.f32(i32 27, float %6684)  ; Round_ni(value)
  %6686 = fsub fast float %6682, %6683
  %6687 = fsub fast float %6684, %6685
  %6688 = fadd fast float %6683, -5.000000e-01
  %6689 = fadd fast float %6685, -5.000000e-01
  %6690 = fmul fast float %6686, 2.000000e+00
  %6691 = fsub fast float 3.000000e+00, %6690
  %6692 = fadd fast float %6690, 1.000000e+00
  %6693 = fsub fast float 2.000000e+00, %6686
  %6694 = bitcast float %6691 to i32
  %6695 = sub nsw i32 2129859010, %6694
  %6696 = bitcast i32 %6695 to float
  %6697 = fmul fast float %6696, %6693
  %6698 = fadd fast float %6697, -1.000000e+00
  %6699 = bitcast float %6692 to i32
  %6700 = sub nsw i32 2129859010, %6699
  %6701 = bitcast i32 %6700 to float
  %6702 = fmul fast float %6701, %6686
  %6703 = fadd fast float %6702, 1.000000e+00
  %6704 = fmul fast float %6687, 2.000000e+00
  %6705 = fsub fast float 3.000000e+00, %6704
  %6706 = fadd fast float %6704, 1.000000e+00
  %6707 = fsub fast float 2.000000e+00, %6687
  %6708 = bitcast float %6705 to i32
  %6709 = sub nsw i32 2129859010, %6708
  %6710 = bitcast i32 %6709 to float
  %6711 = fmul fast float %6710, %6707
  %6712 = fadd fast float %6711, -1.000000e+00
  %6713 = bitcast float %6706 to i32
  %6714 = sub nsw i32 2129859010, %6713
  %6715 = bitcast i32 %6714 to float
  %6716 = fmul fast float %6715, %6687
  %6717 = fadd fast float %6716, 1.000000e+00
  %6718 = fadd fast float %6698, %6688
  %6719 = fmul fast float %6718, %6670
  %6720 = fadd fast float %6712, %6689
  %6721 = fmul fast float %6720, %6671
  %6722 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6719, float %6721, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6723 = extractvalue %dx.types.ResRet.f32 %6722, 0
  %6724 = fmul fast float %6723, %6691
  %6725 = fadd fast float %6703, %6688
  %6726 = fmul fast float %6725, %6670
  %6727 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6726, float %6721, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6728 = extractvalue %dx.types.ResRet.f32 %6727, 0
  %6729 = fmul fast float %6728, %6692
  %6730 = fadd fast float %6717, %6689
  %6731 = fmul fast float %6730, %6671
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6719, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = fmul fast float %6733, %6691
  %6735 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6726, float %6731, float undef, float undef, i32 0, i32 0, i32 undef, float %6675)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  %6737 = fmul fast float %6736, %6692
  %6738 = fadd fast float %6737, %6734
  %6739 = fmul fast float %6738, %6706
  %6740 = fadd fast float %6729, %6724
  %6741 = fmul fast float %6740, %6705
  %6742 = fadd fast float %6741, %6739
  %6743 = fmul fast float %6742, 6.250000e-02
  br label %6829

; <label>:6744                                    ; preds = %6665
  %6745 = fmul fast float %271, 0x401921FB60000000
  %6746 = call float @dx.op.unary.f32(i32 13, float %6745)  ; Sin(value)
  %6747 = call float @dx.op.unary.f32(i32 12, float %6745)  ; Cos(value)
  %6748 = fsub fast float -0.000000e+00, %6746
  br label %6749

; <label>:6749                                    ; preds = %6798, %6744
  %6750 = phi float [ 0.000000e+00, %6744 ], [ %6793, %6798 ]
  %6751 = phi float [ 0.000000e+00, %6744 ], [ %6795, %6798 ]
  %6752 = phi i32 [ 0, %6744 ], [ %6799, %6798 ]
  %6753 = mul i32 %6752, 2
  %6754 = add i32 0, %6753
  %6755 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6754
  %6756 = load float, float* %6755, align 4
  %6757 = mul i32 %6752, 2
  %6758 = add i32 1, %6757
  %6759 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6758
  %6760 = load float, float* %6759, align 4
  %6761 = fmul fast float %6756, %6747
  %6762 = call float @dx.op.tertiary.f32(i32 46, float %6760, float %6748, float %6761)  ; FMad(a,b,c)
  %6763 = fmul fast float %6756, %6746
  %6764 = call float @dx.op.tertiary.f32(i32 46, float %6760, float %6747, float %6763)  ; FMad(a,b,c)
  %6765 = fmul fast float %6762, %6673
  %6766 = fmul fast float %6764, %6673
  %6767 = fadd fast float %6765, %5984
  %6768 = fadd fast float %6766, %5985
  %6769 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6767, float %6768, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6770 = extractvalue %dx.types.ResRet.f32 %6769, 0
  %6771 = extractvalue %dx.types.ResRet.f32 %6769, 1
  %6772 = extractvalue %dx.types.ResRet.f32 %6769, 2
  %6773 = extractvalue %dx.types.ResRet.f32 %6769, 3
  %6774 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 0
  store float %6770, float* %6774, align 4
  %6775 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 1
  store float %6771, float* %6775, align 4
  %6776 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 2
  store float %6772, float* %6776, align 4
  %6777 = getelementptr inbounds [4 x float], [4 x float]* %106, i32 0, i32 3
  store float %6773, float* %6777, align 4
  %6778 = fsub fast float %6770, %6675
  %6779 = fcmp fast olt float %6778, 0.000000e+00
  %6780 = select i1 %6779, float 0.000000e+00, float 1.000000e+00
  %6781 = fadd fast float %6780, %6750
  %6782 = fmul fast float %6780, %6778
  %6783 = fadd fast float %6782, %6751
  br label %6784

; <label>:6784                                    ; preds = %6784, %6749
  %6785 = phi i32 [ 1, %6749 ], [ %6796, %6784 ]
  %6786 = phi float [ %6783, %6749 ], [ %6795, %6784 ]
  %6787 = phi float [ %6781, %6749 ], [ %6793, %6784 ]
  %6788 = getelementptr [4 x float], [4 x float]* %106, i32 0, i32 %6785
  %6789 = load float, float* %6788, align 4, !tbaa !122, !noalias !112
  %6790 = fsub fast float %6789, %6675
  %6791 = fcmp fast olt float %6790, 0.000000e+00
  %6792 = select i1 %6791, float 0.000000e+00, float 1.000000e+00
  %6793 = fadd fast float %6792, %6787
  %6794 = fmul fast float %6792, %6790
  %6795 = fadd fast float %6794, %6786
  %6796 = add nuw nsw i32 %6785, 1
  %6797 = icmp eq i32 %6796, 4
  br i1 %6797, label %6798, label %6784, !llvm.loop !124

; <label>:6798                                    ; preds = %6784
  %6799 = add nuw nsw i32 %6752, 1
  %6800 = icmp eq i32 %6799, 8
  br i1 %6800, label %6801, label %6749, !llvm.loop !125

; <label>:6801                                    ; preds = %6798
  %6802 = fdiv fast float 1.000000e+00, %6793
  %6803 = fmul fast float %6802, %6795
  %6804 = fdiv fast float 1.000000e+00, %6675
  %6805 = fmul fast float %6803, %6804
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = call float @dx.op.binary.f32(i32 35, float %6806, float 0.000000e+00)  ; FMax(a,b)
  %6808 = fmul fast float %6793, 3.125000e-02
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = fmul fast float %6809, 2.000000e+00
  %6811 = fadd fast float %6810, -1.000000e+00
  %6812 = fcmp fast ogt float %6811, 0.000000e+00
  %6813 = fcmp fast olt float %6811, 0.000000e+00
  %6814 = zext i1 %6812 to i32
  %6815 = zext i1 %6813 to i32
  %6816 = sub nsw i32 %6814, %6815
  %6817 = sitofp i32 %6816 to float
  %6818 = fmul fast float %6817, %6811
  %6819 = fsub fast float 1.000000e+00, %6818
  %6820 = fmul fast float %6819, %6819
  %6821 = fmul fast float %6820, %6819
  %6822 = fsub fast float %6819, %6821
  %6823 = fmul fast float %6822, %6807
  %6824 = fsub fast float 1.000000e+00, %6821
  %6825 = fsub fast float %6824, %6823
  %6826 = fmul fast float %6817, 5.000000e-01
  %6827 = fmul fast float %6826, %6825
  %6828 = fsub fast float 5.000000e-01, %6827
  br label %6829

; <label>:6829                                    ; preds = %6801, %6677, %6662
  %6830 = phi float [ 1.000000e+00, %6662 ], [ %6743, %6677 ], [ %6828, %6801 ]
  %6831 = fcmp fast ogt float %6090, 0.000000e+00
  br i1 %6831, label %6832, label %7150, !dx.controlflow.hints !127

; <label>:6832                                    ; preds = %6829
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = fadd fast float %6834, %5974
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6840 = extractvalue %dx.types.CBufRet.f32 %6839, 0
  %6841 = call float @dx.op.binary.f32(i32 35, float %6835, float 0.000000e+00)  ; FMax(a,b)
  %6842 = fadd fast float %6841, 0x3F10000000000000
  %6843 = fcmp fast oeq float %6840, 0.000000e+00
  br i1 %5977, label %6844, label %6997, !dx.controlflow.hints !128

; <label>:6844                                    ; preds = %6832
  br i1 %6843, label %6845, label %6912

; <label>:6845                                    ; preds = %6844
  %6846 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6848 = fmul fast float %6847, %5966
  %6849 = fmul fast float %6846, %5970
  %6850 = fadd fast float %6848, 5.000000e-01
  %6851 = call float @dx.op.unary.f32(i32 27, float %6850)  ; Round_ni(value)
  %6852 = fadd fast float %6849, 5.000000e-01
  %6853 = call float @dx.op.unary.f32(i32 27, float %6852)  ; Round_ni(value)
  %6854 = fsub fast float %6850, %6851
  %6855 = fsub fast float %6852, %6853
  %6856 = fadd fast float %6851, -5.000000e-01
  %6857 = fadd fast float %6853, -5.000000e-01
  %6858 = fmul fast float %6854, 2.000000e+00
  %6859 = fsub fast float 3.000000e+00, %6858
  %6860 = fadd fast float %6858, 1.000000e+00
  %6861 = fsub fast float 2.000000e+00, %6854
  %6862 = bitcast float %6859 to i32
  %6863 = sub nsw i32 2129859010, %6862
  %6864 = bitcast i32 %6863 to float
  %6865 = fmul fast float %6864, %6861
  %6866 = fadd fast float %6865, -1.000000e+00
  %6867 = bitcast float %6860 to i32
  %6868 = sub nsw i32 2129859010, %6867
  %6869 = bitcast i32 %6868 to float
  %6870 = fmul fast float %6869, %6854
  %6871 = fadd fast float %6870, 1.000000e+00
  %6872 = fmul fast float %6855, 2.000000e+00
  %6873 = fsub fast float 3.000000e+00, %6872
  %6874 = fadd fast float %6872, 1.000000e+00
  %6875 = fsub fast float 2.000000e+00, %6855
  %6876 = bitcast float %6873 to i32
  %6877 = sub nsw i32 2129859010, %6876
  %6878 = bitcast i32 %6877 to float
  %6879 = fmul fast float %6878, %6875
  %6880 = fadd fast float %6879, -1.000000e+00
  %6881 = bitcast float %6874 to i32
  %6882 = sub nsw i32 2129859010, %6881
  %6883 = bitcast i32 %6882 to float
  %6884 = fmul fast float %6883, %6855
  %6885 = fadd fast float %6884, 1.000000e+00
  %6886 = fadd fast float %6866, %6856
  %6887 = fmul fast float %6886, %6837
  %6888 = fadd fast float %6880, %6857
  %6889 = fmul fast float %6888, %6838
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6887, float %6889, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = fmul fast float %6891, %6859
  %6893 = fadd fast float %6871, %6856
  %6894 = fmul fast float %6893, %6837
  %6895 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6894, float %6889, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 0
  %6897 = fmul fast float %6896, %6860
  %6898 = fadd fast float %6885, %6857
  %6899 = fmul fast float %6898, %6838
  %6900 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6887, float %6899, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6901 = extractvalue %dx.types.ResRet.f32 %6900, 0
  %6902 = fmul fast float %6901, %6859
  %6903 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %56, float %6894, float %6899, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6904 = extractvalue %dx.types.ResRet.f32 %6903, 0
  %6905 = fmul fast float %6904, %6860
  %6906 = fadd fast float %6905, %6902
  %6907 = fmul fast float %6906, %6874
  %6908 = fadd fast float %6897, %6892
  %6909 = fmul fast float %6908, %6873
  %6910 = fadd fast float %6909, %6907
  %6911 = fmul fast float %6910, 6.250000e-02
  br label %7150

; <label>:6912                                    ; preds = %6844
  %6913 = fmul fast float %271, 0x401921FB60000000
  %6914 = call float @dx.op.unary.f32(i32 13, float %6913)  ; Sin(value)
  %6915 = call float @dx.op.unary.f32(i32 12, float %6913)  ; Cos(value)
  %6916 = fsub fast float -0.000000e+00, %6914
  br label %6917

; <label>:6917                                    ; preds = %6966, %6912
  %6918 = phi float [ 0.000000e+00, %6912 ], [ %6961, %6966 ]
  %6919 = phi float [ 0.000000e+00, %6912 ], [ %6963, %6966 ]
  %6920 = phi i32 [ 0, %6912 ], [ %6967, %6966 ]
  %6921 = mul i32 %6920, 2
  %6922 = add i32 0, %6921
  %6923 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6922
  %6924 = load float, float* %6923, align 4
  %6925 = mul i32 %6920, 2
  %6926 = add i32 1, %6925
  %6927 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6926
  %6928 = load float, float* %6927, align 4
  %6929 = fmul fast float %6924, %6915
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %6928, float %6916, float %6929)  ; FMad(a,b,c)
  %6931 = fmul fast float %6924, %6914
  %6932 = call float @dx.op.tertiary.f32(i32 46, float %6928, float %6915, float %6931)  ; FMad(a,b,c)
  %6933 = fmul fast float %6930, %6840
  %6934 = fmul fast float %6932, %6840
  %6935 = fadd fast float %6933, %5966
  %6936 = fadd fast float %6934, %5970
  %6937 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %55, float %6935, float %6936, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.ResRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.ResRet.f32 %6937, 2
  %6941 = extractvalue %dx.types.ResRet.f32 %6937, 3
  %6942 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 0
  store float %6938, float* %6942, align 4
  %6943 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 1
  store float %6939, float* %6943, align 4
  %6944 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 2
  store float %6940, float* %6944, align 4
  %6945 = getelementptr inbounds [4 x float], [4 x float]* %105, i32 0, i32 3
  store float %6941, float* %6945, align 4
  %6946 = fsub fast float %6938, %6842
  %6947 = fcmp fast olt float %6946, 0.000000e+00
  %6948 = select i1 %6947, float 0.000000e+00, float 1.000000e+00
  %6949 = fadd fast float %6948, %6918
  %6950 = fmul fast float %6948, %6946
  %6951 = fadd fast float %6950, %6919
  br label %6952

; <label>:6952                                    ; preds = %6952, %6917
  %6953 = phi i32 [ 1, %6917 ], [ %6964, %6952 ]
  %6954 = phi float [ %6951, %6917 ], [ %6963, %6952 ]
  %6955 = phi float [ %6949, %6917 ], [ %6961, %6952 ]
  %6956 = getelementptr [4 x float], [4 x float]* %105, i32 0, i32 %6953
  %6957 = load float, float* %6956, align 4, !tbaa !122, !noalias !112
  %6958 = fsub fast float %6957, %6842
  %6959 = fcmp fast olt float %6958, 0.000000e+00
  %6960 = select i1 %6959, float 0.000000e+00, float 1.000000e+00
  %6961 = fadd fast float %6960, %6955
  %6962 = fmul fast float %6960, %6958
  %6963 = fadd fast float %6962, %6954
  %6964 = add nuw nsw i32 %6953, 1
  %6965 = icmp eq i32 %6964, 4
  br i1 %6965, label %6966, label %6952, !llvm.loop !124

; <label>:6966                                    ; preds = %6952
  %6967 = add nuw nsw i32 %6920, 1
  %6968 = icmp eq i32 %6967, 8
  br i1 %6968, label %6969, label %6917, !llvm.loop !125

; <label>:6969                                    ; preds = %6966
  %6970 = fdiv fast float 1.000000e+00, %6961
  %6971 = fmul fast float %6970, %6963
  %6972 = fdiv fast float 1.000000e+00, %6842
  %6973 = fmul fast float %6971, %6972
  %6974 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  %6975 = call float @dx.op.binary.f32(i32 35, float %6974, float 0.000000e+00)  ; FMax(a,b)
  %6976 = fmul fast float %6961, 3.125000e-02
  %6977 = call float @dx.op.unary.f32(i32 7, float %6976)  ; Saturate(value)
  %6978 = fmul fast float %6977, 2.000000e+00
  %6979 = fadd fast float %6978, -1.000000e+00
  %6980 = fcmp fast ogt float %6979, 0.000000e+00
  %6981 = fcmp fast olt float %6979, 0.000000e+00
  %6982 = zext i1 %6980 to i32
  %6983 = zext i1 %6981 to i32
  %6984 = sub nsw i32 %6982, %6983
  %6985 = sitofp i32 %6984 to float
  %6986 = fmul fast float %6985, %6979
  %6987 = fsub fast float 1.000000e+00, %6986
  %6988 = fmul fast float %6987, %6987
  %6989 = fmul fast float %6988, %6987
  %6990 = fsub fast float %6987, %6989
  %6991 = fmul fast float %6990, %6975
  %6992 = fsub fast float 1.000000e+00, %6989
  %6993 = fsub fast float %6992, %6991
  %6994 = fmul fast float %6985, 5.000000e-01
  %6995 = fmul fast float %6994, %6993
  %6996 = fsub fast float 5.000000e-01, %6995
  br label %7150

; <label>:6997                                    ; preds = %6832
  br i1 %6843, label %6998, label %7065

; <label>:6998                                    ; preds = %6997
  %6999 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %7000 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %7001 = fmul fast float %7000, %5966
  %7002 = fmul fast float %6999, %5970
  %7003 = fadd fast float %7001, 5.000000e-01
  %7004 = call float @dx.op.unary.f32(i32 27, float %7003)  ; Round_ni(value)
  %7005 = fadd fast float %7002, 5.000000e-01
  %7006 = call float @dx.op.unary.f32(i32 27, float %7005)  ; Round_ni(value)
  %7007 = fsub fast float %7003, %7004
  %7008 = fsub fast float %7005, %7006
  %7009 = fadd fast float %7004, -5.000000e-01
  %7010 = fadd fast float %7006, -5.000000e-01
  %7011 = fmul fast float %7007, 2.000000e+00
  %7012 = fsub fast float 3.000000e+00, %7011
  %7013 = fadd fast float %7011, 1.000000e+00
  %7014 = fsub fast float 2.000000e+00, %7007
  %7015 = bitcast float %7012 to i32
  %7016 = sub nsw i32 2129859010, %7015
  %7017 = bitcast i32 %7016 to float
  %7018 = fmul fast float %7017, %7014
  %7019 = fadd fast float %7018, -1.000000e+00
  %7020 = bitcast float %7013 to i32
  %7021 = sub nsw i32 2129859010, %7020
  %7022 = bitcast i32 %7021 to float
  %7023 = fmul fast float %7022, %7007
  %7024 = fadd fast float %7023, 1.000000e+00
  %7025 = fmul fast float %7008, 2.000000e+00
  %7026 = fsub fast float 3.000000e+00, %7025
  %7027 = fadd fast float %7025, 1.000000e+00
  %7028 = fsub fast float 2.000000e+00, %7008
  %7029 = bitcast float %7026 to i32
  %7030 = sub nsw i32 2129859010, %7029
  %7031 = bitcast i32 %7030 to float
  %7032 = fmul fast float %7031, %7028
  %7033 = fadd fast float %7032, -1.000000e+00
  %7034 = bitcast float %7027 to i32
  %7035 = sub nsw i32 2129859010, %7034
  %7036 = bitcast i32 %7035 to float
  %7037 = fmul fast float %7036, %7008
  %7038 = fadd fast float %7037, 1.000000e+00
  %7039 = fadd fast float %7019, %7009
  %7040 = fmul fast float %7039, %6837
  %7041 = fadd fast float %7033, %7010
  %7042 = fmul fast float %7041, %6838
  %7043 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7040, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7044 = extractvalue %dx.types.ResRet.f32 %7043, 0
  %7045 = fmul fast float %7044, %7012
  %7046 = fadd fast float %7024, %7009
  %7047 = fmul fast float %7046, %6837
  %7048 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7047, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7049 = extractvalue %dx.types.ResRet.f32 %7048, 0
  %7050 = fmul fast float %7049, %7013
  %7051 = fadd fast float %7038, %7010
  %7052 = fmul fast float %7051, %6838
  %7053 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7040, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7054 = extractvalue %dx.types.ResRet.f32 %7053, 0
  %7055 = fmul fast float %7054, %7012
  %7056 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7047, float %7052, float undef, float undef, i32 0, i32 0, i32 undef, float %6842)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = fmul fast float %7057, %7013
  %7059 = fadd fast float %7058, %7055
  %7060 = fmul fast float %7059, %7027
  %7061 = fadd fast float %7050, %7045
  %7062 = fmul fast float %7061, %7026
  %7063 = fadd fast float %7062, %7060
  %7064 = fmul fast float %7063, 6.250000e-02
  br label %7150

; <label>:7065                                    ; preds = %6997
  %7066 = fmul fast float %271, 0x401921FB60000000
  %7067 = call float @dx.op.unary.f32(i32 13, float %7066)  ; Sin(value)
  %7068 = call float @dx.op.unary.f32(i32 12, float %7066)  ; Cos(value)
  %7069 = fsub fast float -0.000000e+00, %7067
  br label %7070

; <label>:7070                                    ; preds = %7119, %7065
  %7071 = phi float [ 0.000000e+00, %7065 ], [ %7114, %7119 ]
  %7072 = phi float [ 0.000000e+00, %7065 ], [ %7116, %7119 ]
  %7073 = phi i32 [ 0, %7065 ], [ %7120, %7119 ]
  %7074 = mul i32 %7073, 2
  %7075 = add i32 0, %7074
  %7076 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7075
  %7077 = load float, float* %7076, align 4
  %7078 = mul i32 %7073, 2
  %7079 = add i32 1, %7078
  %7080 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7079
  %7081 = load float, float* %7080, align 4
  %7082 = fmul fast float %7077, %7068
  %7083 = call float @dx.op.tertiary.f32(i32 46, float %7081, float %7069, float %7082)  ; FMad(a,b,c)
  %7084 = fmul fast float %7077, %7067
  %7085 = call float @dx.op.tertiary.f32(i32 46, float %7081, float %7068, float %7084)  ; FMad(a,b,c)
  %7086 = fmul fast float %7083, %6840
  %7087 = fmul fast float %7085, %6840
  %7088 = fadd fast float %7086, %5966
  %7089 = fadd fast float %7087, %5970
  %7090 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7088, float %7089, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7091 = extractvalue %dx.types.ResRet.f32 %7090, 0
  %7092 = extractvalue %dx.types.ResRet.f32 %7090, 1
  %7093 = extractvalue %dx.types.ResRet.f32 %7090, 2
  %7094 = extractvalue %dx.types.ResRet.f32 %7090, 3
  %7095 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7091, float* %7095, align 4
  %7096 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7092, float* %7096, align 4
  %7097 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7093, float* %7097, align 4
  %7098 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7094, float* %7098, align 4
  %7099 = fsub fast float %7091, %6842
  %7100 = fcmp fast olt float %7099, 0.000000e+00
  %7101 = select i1 %7100, float 0.000000e+00, float 1.000000e+00
  %7102 = fadd fast float %7101, %7071
  %7103 = fmul fast float %7101, %7099
  %7104 = fadd fast float %7103, %7072
  br label %7105

; <label>:7105                                    ; preds = %7105, %7070
  %7106 = phi i32 [ 1, %7070 ], [ %7117, %7105 ]
  %7107 = phi float [ %7104, %7070 ], [ %7116, %7105 ]
  %7108 = phi float [ %7102, %7070 ], [ %7114, %7105 ]
  %7109 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7106
  %7110 = load float, float* %7109, align 4, !tbaa !122, !noalias !112
  %7111 = fsub fast float %7110, %6842
  %7112 = fcmp fast olt float %7111, 0.000000e+00
  %7113 = select i1 %7112, float 0.000000e+00, float 1.000000e+00
  %7114 = fadd fast float %7113, %7108
  %7115 = fmul fast float %7113, %7111
  %7116 = fadd fast float %7115, %7107
  %7117 = add nuw nsw i32 %7106, 1
  %7118 = icmp eq i32 %7117, 4
  br i1 %7118, label %7119, label %7105, !llvm.loop !124

; <label>:7119                                    ; preds = %7105
  %7120 = add nuw nsw i32 %7073, 1
  %7121 = icmp eq i32 %7120, 8
  br i1 %7121, label %7122, label %7070, !llvm.loop !125

; <label>:7122                                    ; preds = %7119
  %7123 = fdiv fast float 1.000000e+00, %7114
  %7124 = fmul fast float %7123, %7116
  %7125 = fdiv fast float 1.000000e+00, %6842
  %7126 = fmul fast float %7124, %7125
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = call float @dx.op.binary.f32(i32 35, float %7127, float 0.000000e+00)  ; FMax(a,b)
  %7129 = fmul fast float %7114, 3.125000e-02
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = fmul fast float %7130, 2.000000e+00
  %7132 = fadd fast float %7131, -1.000000e+00
  %7133 = fcmp fast ogt float %7132, 0.000000e+00
  %7134 = fcmp fast olt float %7132, 0.000000e+00
  %7135 = zext i1 %7133 to i32
  %7136 = zext i1 %7134 to i32
  %7137 = sub nsw i32 %7135, %7136
  %7138 = sitofp i32 %7137 to float
  %7139 = fmul fast float %7138, %7132
  %7140 = fsub fast float 1.000000e+00, %7139
  %7141 = fmul fast float %7140, %7140
  %7142 = fmul fast float %7141, %7140
  %7143 = fsub fast float %7140, %7142
  %7144 = fmul fast float %7143, %7128
  %7145 = fsub fast float 1.000000e+00, %7142
  %7146 = fsub fast float %7145, %7144
  %7147 = fmul fast float %7138, 5.000000e-01
  %7148 = fmul fast float %7147, %7146
  %7149 = fsub fast float 5.000000e-01, %7148
  br label %7150

; <label>:7150                                    ; preds = %7122, %6998, %6969, %6845, %6829
  %7151 = phi float [ 1.000000e+00, %6829 ], [ %6911, %6845 ], [ %6996, %6969 ], [ %7064, %6998 ], [ %7149, %7122 ]
  %7152 = fsub fast float %6663, %6496
  %7153 = fmul fast float %7152, %6063
  %7154 = fadd fast float %7153, %6496
  %7155 = fsub fast float %6830, %7154
  %7156 = fmul fast float %7155, %6062
  %7157 = fadd fast float %7156, %7154
  %7158 = fsub fast float %7151, %7157
  %7159 = fmul fast float %7158, %6090
  %7160 = fadd fast float %7159, %7157
  %7161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7162 = extractvalue %dx.types.CBufRet.f32 %7161, 2
  %7163 = fcmp fast ogt float %7162, 0.000000e+00
  br i1 %7163, label %7164, label %7204, !dx.controlflow.hints !129

; <label>:7164                                    ; preds = %7150
  %7165 = fcmp fast ugt float %7162, 0.000000e+00
  br i1 %7165, label %7166, label %7201

; <label>:7166                                    ; preds = %7164
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 0
  %7169 = extractvalue %dx.types.CBufRet.f32 %7167, 1
  %7170 = extractvalue %dx.types.CBufRet.f32 %7167, 2
  %7171 = extractvalue %dx.types.CBufRet.f32 %7167, 3
  %7172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7173 = extractvalue %dx.types.CBufRet.f32 %7172, 0
  %7174 = extractvalue %dx.types.CBufRet.f32 %7172, 1
  %7175 = extractvalue %dx.types.CBufRet.f32 %7172, 2
  %7176 = extractvalue %dx.types.CBufRet.f32 %7172, 3
  %7177 = extractvalue %dx.types.CBufRet.f32 %7161, 0
  %7178 = extractvalue %dx.types.CBufRet.f32 %7161, 1
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7182 = extractvalue %dx.types.CBufRet.f32 %7179, 2
  %7183 = fadd fast float %7180, %5943
  %7184 = fadd fast float %7181, %5944
  %7185 = fadd fast float %7182, %5945
  %7186 = fmul fast float %7183, %7168
  %7187 = call float @dx.op.tertiary.f32(i32 46, float %7169, float %7184, float %7186)  ; FMad(a,b,c)
  %7188 = call float @dx.op.tertiary.f32(i32 46, float %7170, float %7185, float %7187)  ; FMad(a,b,c)
  %7189 = fadd fast float %7188, %7171
  %7190 = fmul fast float %7183, %7173
  %7191 = call float @dx.op.tertiary.f32(i32 46, float %7174, float %7184, float %7190)  ; FMad(a,b,c)
  %7192 = call float @dx.op.tertiary.f32(i32 46, float %7175, float %7185, float %7191)  ; FMad(a,b,c)
  %7193 = fadd fast float %7192, %7176
  %7194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7189, float %7193, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7195 = extractvalue %dx.types.ResRet.f32 %7194, 0
  %7196 = fmul fast float %7195, %7178
  %7197 = fadd fast float %7196, %7177
  %7198 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7199 = fmul fast float %7198, %7162
  %7200 = fsub fast float 1.000000e+00, %7199
  br label %7201

; <label>:7201                                    ; preds = %7166, %7164
  %7202 = phi float [ %7200, %7166 ], [ 1.000000e+00, %7164 ]
  %7203 = fmul fast float %7202, %7160
  br label %7204

; <label>:7204                                    ; preds = %7201, %7150, %5923
  %7205 = phi float [ 1.000000e+00, %5923 ], [ %7203, %7201 ], [ %7160, %7150 ]
  %7206 = call float @dx.op.binary.f32(i32 36, float %7205, float %7205)  ; FMin(a,b)
  %7207 = call float @dx.op.binary.f32(i32 36, float %7205, float %7206)  ; FMin(a,b)
  %7208 = fcmp fast ogt float %7207, 0.000000e+00
  br i1 %7208, label %7209, label %7374, !dx.controlflow.hints !130

; <label>:7209                                    ; preds = %7204
  %7210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7211 = extractvalue %dx.types.CBufRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.CBufRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.CBufRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.CBufRet.f32 %7210, 3
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.CBufRet.f32 %7215, 2
  %7219 = extractvalue %dx.types.CBufRet.f32 %7215, 3
  %7220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7221 = extractvalue %dx.types.CBufRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.CBufRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.CBufRet.f32 %7220, 2
  %7224 = extractvalue %dx.types.CBufRet.f32 %7220, 3
  %7225 = fmul fast float %7211, %5943
  %7226 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %7212, float %7225)  ; FMad(a,b,c)
  %7227 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %7213, float %7226)  ; FMad(a,b,c)
  %7228 = fadd fast float %7227, %7214
  %7229 = fmul fast float %7216, %5943
  %7230 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %7217, float %7229)  ; FMad(a,b,c)
  %7231 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %7218, float %7230)  ; FMad(a,b,c)
  %7232 = fadd fast float %7231, %7219
  %7233 = fmul fast float %7221, %5943
  %7234 = call float @dx.op.tertiary.f32(i32 46, float %5944, float %7222, float %7233)  ; FMad(a,b,c)
  %7235 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %7223, float %7234)  ; FMad(a,b,c)
  %7236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7237 = extractvalue %dx.types.CBufRet.f32 %7236, 0
  %7238 = extractvalue %dx.types.CBufRet.f32 %7236, 1
  %7239 = extractvalue %dx.types.CBufRet.f32 %7236, 3
  %7240 = fmul fast float %7239, %7228
  %7241 = fmul fast float %7239, %7232
  %7242 = fadd fast float %7240, %7237
  %7243 = fadd fast float %7241, %7238
  %7244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7245 = extractvalue %dx.types.CBufRet.f32 %7244, 0
  %7246 = extractvalue %dx.types.CBufRet.f32 %7244, 1
  %7247 = fsub fast float %7242, %7245
  %7248 = fsub fast float %7243, %7246
  %7249 = fcmp fast olt float %7247, 0.000000e+00
  %7250 = fcmp fast olt float %7248, 0.000000e+00
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7255 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7256 = select i1 %7249, float %7252, float %7254
  %7257 = select i1 %7250, float %7253, float %7255
  %7258 = fmul fast float %7256, %7247
  %7259 = fmul fast float %7257, %7248
  %7260 = call float @dx.op.unary.f32(i32 6, float %7258)  ; FAbs(value)
  %7261 = call float @dx.op.unary.f32(i32 6, float %7259)  ; FAbs(value)
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7264 = call float @dx.op.binary.f32(i32 35, float %7260, float %7261)  ; FMax(a,b)
  %7265 = fsub fast float %7263, %7264
  %7266 = call float @dx.op.unary.f32(i32 7, float %7265)  ; Saturate(value)
  %7267 = fcmp fast ogt float %7266, 0.000000e+00
  br i1 %7267, label %7268, label %7309, !dx.controlflow.hints !131

; <label>:7268                                    ; preds = %7209
  %7269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7242, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7271 = fcmp fast ogt float %7270, 0.000000e+00
  br i1 %7271, label %7272, label %7304

; <label>:7272                                    ; preds = %7268
  %7273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7242, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7274 = extractvalue %dx.types.ResRet.f32 %7273, 0
  %7275 = extractvalue %dx.types.ResRet.f32 %7273, 1
  %7276 = extractvalue %dx.types.ResRet.f32 %7273, 2
  %7277 = extractvalue %dx.types.ResRet.f32 %7273, 3
  %7278 = fsub fast float 1.000000e+00, %7224
  %7279 = fsub fast float %7278, %7235
  %7280 = fmul fast float %7279, 0x400921FB60000000
  %7281 = fadd fast float %7280, 0x3FF921FB60000000
  %7282 = call float @dx.op.unary.f32(i32 13, float %7281)  ; Sin(value)
  %7283 = fadd fast float %7282, -1.000000e+00
  %7284 = fmul fast float %7283, 0x3FD45F3060000000
  %7285 = fmul fast float %7279, 0x401921FB60000000
  %7286 = fadd fast float %7285, 0x400921FB60000000
  %7287 = call float @dx.op.unary.f32(i32 13, float %7286)  ; Sin(value)
  %7288 = fadd fast float %7287, 0x3E7777A5C0000000
  %7289 = fmul fast float %7288, 0x3FC45F3060000000
  %7290 = fmul fast float %7279, 0x4022D97C80000000
  %7291 = fadd fast float %7290, 0x4012D97C80000000
  %7292 = call float @dx.op.unary.f32(i32 13, float %7291)  ; Sin(value)
  %7293 = fadd fast float %7292, 1.000000e+00
  %7294 = fmul fast float %7293, 0x3FBB2995E0000000
  %7295 = fmul fast float %7279, 0x402921FB60000000
  %7296 = fadd fast float %7295, 0x401921FB60000000
  %7297 = call float @dx.op.unary.f32(i32 13, float %7296)  ; Sin(value)
  %7298 = fadd fast float %7297, 0xBE8777A5C0000000
  %7299 = fmul fast float %7298, 0x3FB45F3060000000
  %7300 = call float @dx.op.dot4.f32(i32 56, float %7274, float %7275, float %7276, float %7277, float %7284, float %7289, float %7294, float %7299)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7301 = fmul fast float %7300, 0xBFF7154760000000
  %7302 = call float @dx.op.unary.f32(i32 21, float %7301)  ; Exp(value)
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  br label %7304

; <label>:7304                                    ; preds = %7272, %7268
  %7305 = phi float [ %7303, %7272 ], [ 1.000000e+00, %7268 ]
  %7306 = fadd fast float %7305, -1.000000e+00
  %7307 = fmul fast float %7306, %7266
  %7308 = fadd fast float %7307, 1.000000e+00
  br label %7309

; <label>:7309                                    ; preds = %7304, %7209
  %7310 = phi float [ %7308, %7304 ], [ 1.000000e+00, %7209 ]
  %7311 = fmul fast float %7310, %7205
  %7312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.CBufRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.CBufRet.f32 %7312, 2
  %7316 = fadd fast float %7313, %201
  %7317 = fadd fast float %7314, %202
  %7318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7319 = extractvalue %dx.types.CBufRet.f32 %7318, 1
  %7320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7321 = extractvalue %dx.types.CBufRet.f32 %7320, 0
  %7322 = extractvalue %dx.types.CBufRet.f32 %7320, 1
  %7323 = extractvalue %dx.types.CBufRet.f32 %7320, 2
  %7324 = fsub fast float -0.000000e+00, %7316
  %7325 = fsub fast float -0.000000e+00, %7317
  %7326 = fsub fast float %5203, %7315
  %7327 = fadd fast float %7326, %7319
  %7328 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7324, float %7325, float %7327)  ; Dot3(ax,ay,az,bx,by,bz)
  %7329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7321, float %7322, float %7323)  ; Dot3(ax,ay,az,bx,by,bz)
  %7330 = fdiv fast float 1.000000e+00, %7329
  %7331 = fmul fast float %7330, %7328
  %7332 = fmul fast float %7321, %7331
  %7333 = fmul fast float %7322, %7331
  %7334 = fadd fast float %7332, %7316
  %7335 = fadd fast float %7333, %7317
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = fsub fast float %7334, %7337
  %7340 = fsub fast float %7335, %7338
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7344 = fmul fast float %7339, %7342
  %7345 = fmul fast float %7340, %7343
  %7346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.i32 %7346, 3
  %7348 = icmp eq i32 %7347, 0
  br i1 %7348, label %7354, label %7349

; <label>:7349                                    ; preds = %7309
  %7350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7344, float %7345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = extractvalue %dx.types.ResRet.f32 %7350, 1
  %7353 = extractvalue %dx.types.ResRet.f32 %7350, 2
  br label %7359

; <label>:7354                                    ; preds = %7309
  %7355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7344, float %7345, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7356 = extractvalue %dx.types.ResRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.f32 %7355, 1
  %7358 = extractvalue %dx.types.ResRet.f32 %7355, 2
  br label %7359

; <label>:7359                                    ; preds = %7354, %7349
  %7360 = phi float [ %7351, %7349 ], [ %7356, %7354 ]
  %7361 = phi float [ %7352, %7349 ], [ %7357, %7354 ]
  %7362 = phi float [ %7353, %7349 ], [ %7358, %7354 ]
  %7363 = extractvalue %dx.types.CBufRet.f32 %7318, 2
  %7364 = fmul fast float %7363, %7360
  %7365 = extractvalue %dx.types.CBufRet.f32 %7318, 0
  %7366 = fsub fast float %7331, %7365
  %7367 = fsub fast float %7366, %7364
  %7368 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7367)  ; FMax(a,b)
  %7369 = fmul fast float %7368, %7361
  %7370 = call float @dx.op.binary.f32(i32 36, float %7362, float %7369)  ; FMin(a,b)
  %7371 = fmul fast float %7370, 0xBFF7154760000000
  %7372 = call float @dx.op.unary.f32(i32 21, float %7371)  ; Exp(value)
  %7373 = fmul fast float %7311, %7372
  br label %7374

; <label>:7374                                    ; preds = %7359, %7204
  %7375 = phi float [ %7373, %7359 ], [ %7205, %7204 ]
  %7376 = call float @dx.op.binary.f32(i32 36, float %7375, float %7375)  ; FMin(a,b)
  %7377 = call float @dx.op.binary.f32(i32 36, float %7375, float %7376)  ; FMin(a,b)
  %7378 = fcmp fast ogt float %7377, 0.000000e+00
  br i1 %7378, label %7379, label %7626, !dx.controlflow.hints !132

; <label>:7379                                    ; preds = %7374
  %7380 = fmul fast float %7375, %5935
  %7381 = fmul fast float %7375, %5936
  %7382 = fmul fast float %7375, %5937
  %7383 = fsub fast float %203, %4402
  %7384 = fcmp fast ogt float %7383, 0.000000e+00
  %7385 = fmul fast float %5924, 5.120000e+02
  %7386 = fmul fast float %5925, 5.120000e+02
  %7387 = fmul fast float %5926, 5.120000e+02
  %7388 = fadd fast float %7387, %203
  %7389 = fsub fast float %4402, %7388
  %7390 = fmul fast float %7389, 2.000000e+00
  %7391 = fadd fast float %7390, %7388
  %7392 = select i1 %7384, float %7391, float %7388
  %7393 = fsub fast float %7392, %203
  %7394 = call float @dx.op.dot3.f32(i32 55, float %7385, float %7386, float %7393, float %7385, float %7386, float %7393)  ; Dot3(ax,ay,az,bx,by,bz)
  %7395 = call float @dx.op.unary.f32(i32 25, float %7394)  ; Rsqrt(value)
  %7396 = fmul fast float %7395, %7385
  %7397 = fmul fast float %7395, %7386
  %7398 = fmul fast float %7395, %7393
  %7399 = fsub fast float %4402, %203
  %7400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7399)  ; Dot3(ax,ay,az,bx,by,bz)
  %7401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7396, float %7397, float %7398)  ; Dot3(ax,ay,az,bx,by,bz)
  %7402 = fdiv fast float 1.000000e+00, %7401
  %7403 = fmul fast float %7402, %7400
  %7404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7383, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7405 = fcmp fast ogt float %7404, 0.000000e+00
  %7406 = fcmp fast olt float %7404, 0.000000e+00
  %7407 = zext i1 %7405 to i32
  %7408 = zext i1 %7406 to i32
  %7409 = sub nsw i32 %7407, %7408
  %7410 = sitofp i32 %7409 to float
  %7411 = fsub fast float %7392, %4402
  %7412 = call float @dx.op.dot3.f32(i32 55, float %7385, float %7386, float %7411, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7413 = fcmp fast ogt float %7412, 0.000000e+00
  %7414 = fcmp fast olt float %7412, 0.000000e+00
  %7415 = zext i1 %7413 to i32
  %7416 = zext i1 %7414 to i32
  %7417 = sub nsw i32 %7415, %7416
  %7418 = sitofp i32 %7417 to float
  %7419 = fcmp fast une float %7410, %7418
  br i1 %7419, label %7420, label %7430

; <label>:7420                                    ; preds = %7379
  %7421 = fmul fast float %7403, %7398
  %7422 = fmul fast float %7403, %7397
  %7423 = fmul fast float %7403, %7396
  %7424 = fmul fast float %7423, %7423
  %7425 = fmul fast float %7422, %7422
  %7426 = fadd fast float %7424, %7425
  %7427 = fmul fast float %7421, %7421
  %7428 = fadd fast float %7426, %7427
  %7429 = call float @dx.op.unary.f32(i32 24, float %7428)  ; Sqrt(value)
  br label %7440

; <label>:7430                                    ; preds = %7379
  %7431 = icmp slt i32 %7409, 0
  br i1 %7431, label %7432, label %7440

; <label>:7432                                    ; preds = %7430
  %7433 = fsub fast float %203, %7392
  %7434 = fmul fast float %7385, %7385
  %7435 = fmul fast float %7386, %7386
  %7436 = fadd fast float %7434, %7435
  %7437 = fmul fast float %7433, %7433
  %7438 = fadd fast float %7436, %7437
  %7439 = call float @dx.op.unary.f32(i32 24, float %7438)  ; Sqrt(value)
  br label %7440

; <label>:7440                                    ; preds = %7432, %7430, %7420
  %7441 = phi float [ %7429, %7420 ], [ %7439, %7432 ], [ 0.000000e+00, %7430 ]
  %7442 = fsub fast float -0.000000e+00, %7441
  %7443 = select i1 %7384, float -0.000000e+00, float %7442
  %7444 = fmul fast float %4399, 0x3FF7154760000000
  %7445 = fmul fast float %7444, %7443
  %7446 = fmul fast float %4400, 0x3FF7154760000000
  %7447 = fmul fast float %7446, %7443
  %7448 = fmul fast float %4401, 0x3FF7154760000000
  %7449 = fmul fast float %7448, %7443
  %7450 = call float @dx.op.unary.f32(i32 21, float %7445)  ; Exp(value)
  %7451 = call float @dx.op.unary.f32(i32 21, float %7447)  ; Exp(value)
  %7452 = call float @dx.op.unary.f32(i32 21, float %7449)  ; Exp(value)
  %7453 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7454 = call float @dx.op.unary.f32(i32 7, float %7451)  ; Saturate(value)
  %7455 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7456 = fmul fast float %7380, %7453
  %7457 = fmul fast float %7381, %7454
  %7458 = fmul fast float %7382, %7455
  %7459 = fsub fast float %5924, %5191
  %7460 = fsub fast float %5925, %5190
  %7461 = fsub fast float %5926, %5189
  %7462 = call float @dx.op.dot3.f32(i32 55, float %7459, float %7460, float %7461, float %7459, float %7460, float %7461)  ; Dot3(ax,ay,az,bx,by,bz)
  %7463 = call float @dx.op.unary.f32(i32 25, float %7462)  ; Rsqrt(value)
  %7464 = fmul fast float %7463, %7459
  %7465 = fmul fast float %7463, %7460
  %7466 = fmul fast float %7463, %7461
  %7467 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %5926, float %5198, float %5199, float %5200)  ; Dot3(ax,ay,az,bx,by,bz)
  %7468 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5187, float %5186, float %7464, float %7465, float %7466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7469 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7470 = fmul fast float %7469, %7469
  %7471 = fmul fast float %7470, %5231
  %7472 = call float @dx.op.unary.f32(i32 7, float %7471)  ; Saturate(value)
  %7473 = fmul fast float %7472, %7469
  %7474 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float %7464, float %7465, float %7466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7475 = fmul fast float %7474, %7474
  %7476 = call float @dx.op.unary.f32(i32 6, float %7467)  ; FAbs(value)
  %7477 = fsub fast float 1.000000e+00, %5224
  %7478 = fmul fast float %5206, %5206
  %7479 = fmul fast float %7478, %7477
  %7480 = fadd fast float %7479, %5224
  %7481 = bitcast float %7480 to i32
  %7482 = ashr i32 %7481, 1
  %7483 = add nsw i32 %7482, 532487669
  %7484 = bitcast i32 %7483 to float
  %7485 = fadd fast float %7484, %5206
  %7486 = fmul fast float %5224, %7475
  %7487 = fsub fast float 1.000000e+00, %7475
  %7488 = fadd fast float %7487, %7486
  %7489 = fmul fast float %7476, %7476
  %7490 = fmul fast float %7489, %7477
  %7491 = fadd fast float %7490, %5224
  %7492 = bitcast float %7491 to i32
  %7493 = ashr i32 %7492, 1
  %7494 = add nsw i32 %7493, 532487669
  %7495 = bitcast i32 %7494 to float
  %7496 = fadd fast float %7495, %7476
  %7497 = fmul fast float %7488, %7488
  %7498 = fmul fast float %7497, %7485
  %7499 = fmul fast float %7498, %7496
  %7500 = fdiv fast float 0x3FF0A00000000000, %7499
  %7501 = fmul fast float %7500, %5224
  %7502 = call float @dx.op.unary.f32(i32 6, float %7468)  ; FAbs(value)
  %7503 = fsub fast float 1.000000e+00, %7502
  %7504 = bitcast float %7503 to i32
  %7505 = sitofp i32 %7504 to float
  %7506 = fmul fast float %7505, 5.000000e+00
  %7507 = fadd fast float %7506, 0xC1EFBF8940000000
  %7508 = fptosi float %7507 to i32
  %7509 = bitcast i32 %7508 to float
  %7510 = fsub fast float 1.000000e+00, %5192
  %7511 = fsub fast float 1.000000e+00, %5193
  %7512 = fsub fast float 1.000000e+00, %5204
  %7513 = fmul fast float %7509, %7510
  %7514 = fmul fast float %7509, %7511
  %7515 = fmul fast float %7509, %7512
  %7516 = fadd fast float %7513, %5192
  %7517 = fadd fast float %7514, %5193
  %7518 = fadd fast float %7515, %5204
  br i1 %5343, label %7519, label %7542

; <label>:7519                                    ; preds = %7440
  %7520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3997, float %7502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7521 = extractvalue %dx.types.ResRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.ResRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.ResRet.f32 %7520, 2
  %7524 = fadd fast float %7521, -5.000000e-01
  %7525 = fadd fast float %7522, -5.000000e-01
  %7526 = fadd fast float %7523, -5.000000e-01
  %7527 = fmul fast float %5192, 4.000000e+00
  %7528 = fmul fast float %7527, %7510
  %7529 = fmul fast float %7528, %7524
  %7530 = fmul fast float %5193, 4.000000e+00
  %7531 = fmul fast float %7530, %7511
  %7532 = fmul fast float %7531, %7525
  %7533 = fmul fast float %5204, 4.000000e+00
  %7534 = fmul fast float %7533, %7512
  %7535 = fmul fast float %7534, %7526
  %7536 = fadd fast float %7529, %7516
  %7537 = fadd fast float %7532, %7517
  %7538 = fadd fast float %7535, %7518
  %7539 = call float @dx.op.unary.f32(i32 7, float %7536)  ; Saturate(value)
  %7540 = call float @dx.op.unary.f32(i32 7, float %7537)  ; Saturate(value)
  %7541 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  br label %7542

; <label>:7542                                    ; preds = %7519, %7440
  %7543 = phi float [ %7539, %7519 ], [ %7516, %7440 ]
  %7544 = phi float [ %7540, %7519 ], [ %7517, %7440 ]
  %7545 = phi float [ %7541, %7519 ], [ %7518, %7440 ]
  %7546 = fmul fast float %7467, 9.843750e-01
  %7547 = fadd fast float %7546, 7.812500e-03
  %7548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %7547, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7549 = extractvalue %dx.types.ResRet.f32 %7548, 2
  %7550 = extractvalue %dx.types.ResRet.f32 %7548, 3
  %7551 = fmul fast float %7549, %5192
  %7552 = fmul fast float %7549, %5193
  %7553 = fmul fast float %7549, %5204
  %7554 = fadd fast float %7551, %7550
  %7555 = fadd fast float %7552, %7550
  %7556 = fadd fast float %7553, %7550
  br i1 %5343, label %7557, label %7580

; <label>:7557                                    ; preds = %7542
  %7558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3997, float %7467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7559 = extractvalue %dx.types.ResRet.f32 %7558, 0
  %7560 = extractvalue %dx.types.ResRet.f32 %7558, 1
  %7561 = extractvalue %dx.types.ResRet.f32 %7558, 2
  %7562 = fadd fast float %7559, -5.000000e-01
  %7563 = fadd fast float %7560, -5.000000e-01
  %7564 = fadd fast float %7561, -5.000000e-01
  %7565 = fmul fast float %5192, 4.000000e+00
  %7566 = fmul fast float %7565, %7510
  %7567 = fmul fast float %7566, %7562
  %7568 = fmul fast float %5193, 4.000000e+00
  %7569 = fmul fast float %7568, %7511
  %7570 = fmul fast float %7569, %7563
  %7571 = fmul fast float %5204, 4.000000e+00
  %7572 = fmul fast float %7571, %7512
  %7573 = fmul fast float %7572, %7564
  %7574 = fadd fast float %7567, %7554
  %7575 = fadd fast float %7570, %7555
  %7576 = fadd fast float %7573, %7556
  %7577 = call float @dx.op.unary.f32(i32 7, float %7574)  ; Saturate(value)
  %7578 = call float @dx.op.unary.f32(i32 7, float %7575)  ; Saturate(value)
  %7579 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  br label %7580

; <label>:7580                                    ; preds = %7557, %7542
  %7581 = phi float [ %7577, %7557 ], [ %7554, %7542 ]
  %7582 = phi float [ %7578, %7557 ], [ %7555, %7542 ]
  %7583 = phi float [ %7579, %7557 ], [ %7556, %7542 ]
  %7584 = call float @dx.op.binary.f32(i32 35, float %7582, float %7583)  ; FMax(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7581, float %7584)  ; FMax(a,b)
  %7586 = fsub fast float 1.000000e+00, %7585
  %7587 = fmul fast float %7543, %7501
  %7588 = fmul fast float %7544, %7501
  %7589 = fmul fast float %7545, %7501
  %7590 = fsub fast float 1.000000e+00, %7468
  %7591 = bitcast float %7590 to i32
  %7592 = sitofp i32 %7591 to float
  %7593 = fmul fast float %7592, 5.000000e+00
  %7594 = fadd fast float %7593, 0xC1EFBF8940000000
  %7595 = fptosi float %7594 to i32
  %7596 = bitcast i32 %7595 to float
  %7597 = fmul fast float %7596, %3998
  %7598 = fmul fast float %7586, %7597
  %7599 = fmul fast float %7598, %5885
  %7600 = fmul fast float %7598, %5886
  %7601 = fmul fast float %7598, %5887
  %7602 = fadd fast float %7599, %7587
  %7603 = fadd fast float %7600, %7588
  %7604 = fadd fast float %7601, %7589
  %7605 = fmul fast float %7473, %7456
  %7606 = fmul fast float %7605, %7586
  %7607 = fmul fast float %7473, %7457
  %7608 = fmul fast float %7607, %7586
  %7609 = fmul fast float %7473, %7458
  %7610 = fmul fast float %7609, %7586
  %7611 = fmul fast float %7605, %7602
  %7612 = fmul fast float %7607, %7603
  %7613 = fmul fast float %7609, %7604
  %7614 = fadd fast float %7606, %5869
  %7615 = fmul fast float %7614, %3994
  %7616 = fadd fast float %7608, %5870
  %7617 = fmul fast float %7616, %3994
  %7618 = fadd fast float %7610, %5871
  %7619 = fmul fast float %7618, %3994
  %7620 = fadd fast float %7611, %5912
  %7621 = fmul fast float %7620, %3994
  %7622 = fadd fast float %7612, %5915
  %7623 = fmul fast float %7622, %3994
  %7624 = fadd fast float %7613, %5918
  %7625 = fmul fast float %7624, %3994
  br label %7626

; <label>:7626                                    ; preds = %7580, %7374, %5865
  %7627 = phi float [ %5913, %5865 ], [ %5913, %7374 ], [ %7621, %7580 ]
  %7628 = phi float [ %5916, %5865 ], [ %5916, %7374 ], [ %7623, %7580 ]
  %7629 = phi float [ %5919, %5865 ], [ %5919, %7374 ], [ %7625, %7580 ]
  %7630 = phi float [ %5908, %5865 ], [ %5908, %7374 ], [ %7615, %7580 ]
  %7631 = phi float [ %5909, %5865 ], [ %5909, %7374 ], [ %7617, %7580 ]
  %7632 = phi float [ %5910, %5865 ], [ %5910, %7374 ], [ %7619, %7580 ]
  %7633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7634 = extractvalue %dx.types.CBufRet.i32 %7633, 0
  %7635 = icmp eq i32 %7634, 0
  br i1 %7635, label %8298, label %7636

; <label>:7636                                    ; preds = %7626
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 2
  %7639 = extractvalue %dx.types.CBufRet.f32 %7637, 3
  %7640 = fmul fast float %7638, %114
  %7641 = fmul fast float %7639, %115
  %7642 = fptoui float %7640 to i32
  %7643 = fptoui float %7641 to i32
  %7644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7645 = extractvalue %dx.types.CBufRet.f32 %7644, 0
  %7646 = extractvalue %dx.types.CBufRet.f32 %7644, 2
  %7647 = extractvalue %dx.types.CBufRet.f32 %7644, 3
  %7648 = fadd fast float %101, -4.000000e+00
  %7649 = call float @dx.op.binary.f32(i32 35, float %7648, float 0.000000e+00)  ; FMax(a,b)
  %7650 = fadd fast float %7649, %7645
  %7651 = fmul fast float %7650, %7646
  %7652 = call float @dx.op.unary.f32(i32 23, float %7651)  ; Log(value)
  %7653 = fmul fast float %7652, %7647
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 2
  %7656 = fmul fast float %7653, %7655
  %7657 = call float @dx.op.unary.f32(i32 7, float %7656)  ; Saturate(value)
  %7658 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.i32 %7658, 1
  %7660 = add i32 %7659, -1
  %7661 = uitofp i32 %7659 to float
  %7662 = fmul fast float %7661, %7657
  %7663 = fptoui float %7662 to i32
  %7664 = call i32 @dx.op.binary.i32(i32 40, i32 %7663, i32 %7660)  ; UMin(a,b)
  %7665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7666 = extractvalue %dx.types.CBufRet.i32 %7665, 2
  %7667 = extractvalue %dx.types.CBufRet.i32 %7665, 3
  %7668 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7643, i32 %7666, i32 %7642)  ; UMad(a,b,c)
  %7669 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7664, i32 %7667, i32 %7668)  ; UMad(a,b,c)
  %7670 = add nsw i32 %7634, -1
  %7671 = call i32 @dx.op.binary.i32(i32 37, i32 %7670, i32 0)  ; IMax(a,b)
  %7672 = call float @dx.op.binary.f32(i32 35, float %101, float 0.000000e+00)  ; FMax(a,b)
  %7673 = fptoui float %7672 to i32
  %7674 = lshr i32 %7673, 5
  %7675 = call i32 @dx.op.binary.i32(i32 40, i32 %7674, i32 8191)  ; UMin(a,b)
  %7676 = shl i32 %7675, 2
  %7677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7676, i32 undef)  ; BufferLoad(srv,index,wot)
  %7678 = extractvalue %dx.types.ResRet.i32 %7677, 0
  %7679 = lshr i32 %7678, 16
  %7680 = and i32 %7678, 65535
  %7681 = lshr i32 %7678, 21
  %7682 = lshr i32 %7680, 5
  %7683 = call i32 @dx.op.binary.i32(i32 40, i32 %7682, i32 %7671)  ; UMin(a,b)
  %7684 = icmp ugt i32 %7681, %7683
  br i1 %7684, label %8298, label %7685

; <label>:7685                                    ; preds = %7636
  br label %7686

; <label>:7686                                    ; preds = %8288, %7685
  %7687 = phi i32 [ %8295, %8288 ], [ %7681, %7685 ]
  %7688 = phi float [ %8289, %8288 ], [ %7627, %7685 ]
  %7689 = phi float [ %8290, %8288 ], [ %7628, %7685 ]
  %7690 = phi float [ %8291, %8288 ], [ %7629, %7685 ]
  %7691 = phi float [ %8292, %8288 ], [ %7630, %7685 ]
  %7692 = phi float [ %8293, %8288 ], [ %7631, %7685 ]
  %7693 = phi float [ %8294, %8288 ], [ %7632, %7685 ]
  %7694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.i32 %7694, 0
  %7696 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7669, i32 %7695, i32 %7687)  ; UMad(a,b,c)
  %7697 = shl i32 %7696, 2
  %7698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7697, i32 undef)  ; BufferLoad(srv,index,wot)
  %7699 = extractvalue %dx.types.ResRet.i32 %7698, 0
  %7700 = shl i32 %7687, 5
  %7701 = sub nsw i32 %7679, %7700
  %7702 = call i32 @dx.op.binary.i32(i32 37, i32 %7701, i32 0)  ; IMax(a,b)
  %7703 = call i32 @dx.op.binary.i32(i32 38, i32 %7702, i32 31)  ; IMin(a,b)
  %7704 = sub nsw i32 1, %7679
  %7705 = add nsw i32 %7704, %7680
  %7706 = call i32 @dx.op.binary.i32(i32 37, i32 %7705, i32 0)  ; IMax(a,b)
  %7707 = call i32 @dx.op.binary.i32(i32 38, i32 %7706, i32 32)  ; IMin(a,b)
  %7708 = and i32 %7707, 31
  %7709 = shl i32 -1, %7708
  %7710 = xor i32 %7709, -1
  %7711 = and i32 %7703, 31
  %7712 = shl i32 %7710, %7711
  %7713 = icmp eq i32 %7707, 32
  %7714 = select i1 %7713, i32 -1, i32 %7712
  %7715 = and i32 %7714, %7699
  %7716 = icmp eq i32 %7715, 0
  br i1 %7716, label %8288, label %7717

; <label>:7717                                    ; preds = %7686
  br label %7718

; <label>:7718                                    ; preds = %7852, %7717
  %7719 = phi i32 [ %7730, %7852 ], [ %7715, %7717 ]
  %7720 = phi float [ %7853, %7852 ], [ %7688, %7717 ]
  %7721 = phi float [ %7854, %7852 ], [ %7689, %7717 ]
  %7722 = phi float [ %7855, %7852 ], [ %7690, %7717 ]
  %7723 = phi float [ %7856, %7852 ], [ %7691, %7717 ]
  %7724 = phi float [ %7857, %7852 ], [ %7692, %7717 ]
  %7725 = phi float [ %7858, %7852 ], [ %7693, %7717 ]
  %7726 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7719)  ; FirstbitLo(value)
  %7727 = add i32 %7726, %7700
  %7728 = and i32 %7726, 31
  %7729 = shl i32 1, %7728
  %7730 = xor i32 %7729, %7719
  %7731 = mul i32 %7727, 112
  %7732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7731, i32 undef)  ; BufferLoad(srv,index,wot)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = or i32 %7731, 12
  %7737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7736, i32 undef)  ; BufferLoad(srv,index,wot)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 0
  %7739 = add i32 %7731, 16
  %7740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7739, i32 undef)  ; BufferLoad(srv,index,wot)
  %7741 = extractvalue %dx.types.ResRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.ResRet.f32 %7740, 1
  %7743 = extractvalue %dx.types.ResRet.f32 %7740, 2
  %7744 = add i32 %7731, 28
  %7745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7744, i32 undef)  ; BufferLoad(srv,index,wot)
  %7746 = extractvalue %dx.types.ResRet.i32 %7745, 0
  %7747 = add i32 %7731, 44
  %7748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7747, i32 undef)  ; BufferLoad(srv,index,wot)
  %7749 = extractvalue %dx.types.ResRet.f32 %7748, 0
  %7750 = add i32 %7731, 48
  %7751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7750, i32 undef)  ; BufferLoad(srv,index,wot)
  %7752 = extractvalue %dx.types.ResRet.f32 %7751, 0
  %7753 = extractvalue %dx.types.ResRet.f32 %7751, 1
  %7754 = extractvalue %dx.types.ResRet.f32 %7751, 2
  %7755 = extractvalue %dx.types.ResRet.f32 %7751, 3
  %7756 = add i32 %7731, 64
  %7757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7756, i32 undef)  ; BufferLoad(srv,index,wot)
  %7758 = extractvalue %dx.types.ResRet.f32 %7757, 0
  %7759 = extractvalue %dx.types.ResRet.f32 %7757, 1
  %7760 = extractvalue %dx.types.ResRet.f32 %7757, 2
  %7761 = extractvalue %dx.types.ResRet.f32 %7757, 3
  %7762 = add i32 %7731, 80
  %7763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %7762, i32 undef)  ; BufferLoad(srv,index,wot)
  %7764 = extractvalue %dx.types.ResRet.f32 %7763, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7763, 2
  %7766 = add i32 %7731, 92
  %7767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %7766, i32 undef)  ; BufferLoad(srv,index,wot)
  %7768 = extractvalue %dx.types.ResRet.i32 %7767, 0
  %7769 = call float @dx.op.dot3.f32(i32 55, float %7733, float %7734, float %7735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7770 = select i1 %260, float %7764, float %7733
  %7771 = select i1 %260, float %7769, float %7734
  %7772 = select i1 %260, float %7765, float %7735
  %7773 = and i32 %7768, 65535
  %7774 = uitofp i32 %7773 to float
  %7775 = lshr i32 %7768, 16
  %7776 = uitofp i32 %7775 to float
  %7777 = and i32 %7746, 65535
  %7778 = and i32 %7746, 50331648
  %7779 = icmp eq i32 %7778, 33554432
  %7780 = fsub fast float %7752, %201
  %7781 = fsub fast float %7753, %202
  %7782 = fsub fast float %7754, %203
  %7783 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %7782, float %7780, float %7781, float %7782)  ; Dot3(ax,ay,az,bx,by,bz)
  %7784 = call float @dx.op.unary.f32(i32 24, float %7783)  ; Sqrt(value)
  %7785 = fdiv fast float 1.000000e+00, %7784
  %7786 = fmul fast float %7785, %7780
  %7787 = fmul fast float %7785, %7781
  %7788 = fmul fast float %7785, %7782
  %7789 = fadd fast float %7784, %7738
  %7790 = fdiv fast float 1.000000e+00, %7789
  %7791 = fmul float %7749, %7790
  %7792 = fmul float %7791, %7791
  %7793 = call float @dx.op.unary.f32(i32 7, float %7792)  ; Saturate(value)
  br i1 %7779, label %7794, label %7815

; <label>:7794                                    ; preds = %7718
  %7795 = fmul fast float %7760, %7741
  %7796 = fmul fast float %7760, %7742
  %7797 = fmul fast float %7760, %7743
  %7798 = fadd fast float %7780, %7795
  %7799 = fadd fast float %7781, %7796
  %7800 = fadd fast float %7782, %7797
  %7801 = call float @dx.op.dot3.f32(i32 55, float %7798, float %7799, float %7800, float %7798, float %7799, float %7800)  ; Dot3(ax,ay,az,bx,by,bz)
  %7802 = call float @dx.op.unary.f32(i32 25, float %7801)  ; Rsqrt(value)
  %7803 = fmul fast float %7802, %7798
  %7804 = fmul fast float %7802, %7799
  %7805 = fmul fast float %7802, %7800
  %7806 = fsub fast float %201, %7752
  %7807 = fsub fast float %202, %7753
  %7808 = fsub fast float %203, %7754
  %7809 = fsub fast float -0.000000e+00, %7806
  %7810 = fsub fast float -0.000000e+00, %7807
  %7811 = fsub fast float -0.000000e+00, %7808
  %7812 = call float @dx.op.dot3.f32(i32 55, float %7809, float %7810, float %7811, float %7741, float %7742, float %7743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = fcmp fast ogt float %7812, 0.000000e+00
  %7814 = uitofp i1 %7813 to float
  br label %7815

; <label>:7815                                    ; preds = %7794, %7718
  %7816 = phi float [ %7814, %7794 ], [ 1.000000e+00, %7718 ]
  %7817 = phi float [ %7803, %7794 ], [ %7786, %7718 ]
  %7818 = phi float [ %7804, %7794 ], [ %7787, %7718 ]
  %7819 = phi float [ %7805, %7794 ], [ %7788, %7718 ]
  %7820 = call float @dx.op.dot3.f32(i32 55, float %7741, float %7742, float %7743, float %7817, float %7818, float %7819)  ; Dot3(ax,ay,az,bx,by,bz)
  %7821 = fmul fast float %7820, %7820
  %7822 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7823 = fsub fast float 1.000000e+00, %7822
  %7824 = fmul fast float %7823, 5.000000e-01
  %7825 = fcmp fast ogt float %7820, 0.000000e+00
  %7826 = fsub fast float 1.000000e+00, %7824
  %7827 = select i1 %7825, float %7824, float %7826
  %7828 = fmul fast float %7827, %7776
  %7829 = fadd fast float %7828, %7774
  %7830 = fmul fast float %7829, 0x3EF0001000000000
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %54, float %7830, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 0
  %7833 = fmul fast float %7820, %7758
  %7834 = fadd fast float %7833, %7759
  %7835 = call float @dx.op.unary.f32(i32 7, float %7834)  ; Saturate(value)
  %7836 = select i1 %7779, float 1.000000e+00, float %7835
  %7837 = select i1 %7779, float %7835, float 1.000000e+00
  %7838 = fmul fast float %7784, %7755
  %7839 = fsub fast float 1.000000e+00, %7838
  %7840 = fmul fast float %7839, %7761
  %7841 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7842 = fmul fast float %7841, %7837
  %7843 = fmul fast float %7842, 2.000000e+00
  %7844 = fsub fast float 3.000000e+00, %7843
  %7845 = fmul fast float %7832, %7816
  %7846 = fmul fast float %7842, %7842
  %7847 = fmul fast float %7846, %7845
  %7848 = fmul fast float %7847, %7844
  %7849 = call float @dx.op.binary.f32(i32 36, float %7848, float %7848)  ; FMin(a,b)
  %7850 = call float @dx.op.binary.f32(i32 36, float %7848, float %7849)  ; FMin(a,b)
  %7851 = fcmp fast ogt float %7850, 0.000000e+00
  br i1 %7851, label %7860, label %7852, !dx.controlflow.hints !133

; <label>:7852                                    ; preds = %8244, %8006, %7815
  %7853 = phi float [ %7720, %8006 ], [ %7720, %7815 ], [ %8284, %8244 ]
  %7854 = phi float [ %7721, %8006 ], [ %7721, %7815 ], [ %8285, %8244 ]
  %7855 = phi float [ %7722, %8006 ], [ %7722, %7815 ], [ %8286, %8244 ]
  %7856 = phi float [ %7723, %8006 ], [ %7723, %7815 ], [ %8278, %8244 ]
  %7857 = phi float [ %7724, %8006 ], [ %7724, %7815 ], [ %8279, %8244 ]
  %7858 = phi float [ %7725, %8006 ], [ %7725, %7815 ], [ %8280, %8244 ]
  %7859 = icmp eq i32 %7719, %7729
  br i1 %7859, label %8287, label %7718

; <label>:7860                                    ; preds = %7815
  %7861 = icmp eq i32 %7777, 255
  br i1 %7861, label %8006, label %7862, !dx.controlflow.hints !134

; <label>:7862                                    ; preds = %7860
  %7863 = mul nuw nsw i32 %7777, 176
  %7864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7863, i32 undef)  ; BufferLoad(srv,index,wot)
  %7865 = extractvalue %dx.types.ResRet.f32 %7864, 0
  %7866 = extractvalue %dx.types.ResRet.f32 %7864, 1
  %7867 = extractvalue %dx.types.ResRet.f32 %7864, 2
  %7868 = extractvalue %dx.types.ResRet.f32 %7864, 3
  %7869 = add nuw nsw i32 %7863, 16
  %7870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7869, i32 undef)  ; BufferLoad(srv,index,wot)
  %7871 = extractvalue %dx.types.ResRet.f32 %7870, 0
  %7872 = extractvalue %dx.types.ResRet.f32 %7870, 1
  %7873 = add nuw nsw i32 %7863, 32
  %7874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7873, i32 undef)  ; BufferLoad(srv,index,wot)
  %7875 = extractvalue %dx.types.ResRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.ResRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.ResRet.f32 %7874, 2
  %7878 = add nuw nsw i32 %7863, 48
  %7879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7878, i32 undef)  ; BufferLoad(srv,index,wot)
  %7880 = extractvalue %dx.types.ResRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.ResRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.ResRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.ResRet.f32 %7879, 3
  %7884 = add nuw nsw i32 %7863, 64
  %7885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7884, i32 undef)  ; BufferLoad(srv,index,wot)
  %7886 = extractvalue %dx.types.ResRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.ResRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.ResRet.f32 %7885, 2
  %7889 = extractvalue %dx.types.ResRet.f32 %7885, 3
  %7890 = add nuw nsw i32 %7863, 80
  %7891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7890, i32 undef)  ; BufferLoad(srv,index,wot)
  %7892 = extractvalue %dx.types.ResRet.f32 %7891, 0
  %7893 = extractvalue %dx.types.ResRet.f32 %7891, 1
  %7894 = extractvalue %dx.types.ResRet.f32 %7891, 2
  %7895 = extractvalue %dx.types.ResRet.f32 %7891, 3
  %7896 = add nuw nsw i32 %7863, 96
  %7897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7896, i32 undef)  ; BufferLoad(srv,index,wot)
  %7898 = extractvalue %dx.types.ResRet.f32 %7897, 0
  %7899 = extractvalue %dx.types.ResRet.f32 %7897, 1
  %7900 = extractvalue %dx.types.ResRet.f32 %7897, 2
  %7901 = extractvalue %dx.types.ResRet.f32 %7897, 3
  %7902 = bitcast float %7872 to i32
  %7903 = fmul fast float %7877, %121
  %7904 = fmul fast float %7877, %122
  %7905 = fmul fast float %7877, %123
  %7906 = fadd fast float %7903, %201
  %7907 = fadd fast float %7904, %202
  %7908 = fadd fast float %7905, %203
  %7909 = fmul fast float %7906, %7880
  %7910 = call float @dx.op.tertiary.f32(i32 46, float %7907, float %7886, float %7909)  ; FMad(a,b,c)
  %7911 = call float @dx.op.tertiary.f32(i32 46, float %7908, float %7892, float %7910)  ; FMad(a,b,c)
  %7912 = fadd fast float %7911, %7898
  %7913 = fmul fast float %7906, %7881
  %7914 = call float @dx.op.tertiary.f32(i32 46, float %7907, float %7887, float %7913)  ; FMad(a,b,c)
  %7915 = call float @dx.op.tertiary.f32(i32 46, float %7908, float %7893, float %7914)  ; FMad(a,b,c)
  %7916 = fadd fast float %7915, %7899
  %7917 = fmul fast float %7906, %7882
  %7918 = call float @dx.op.tertiary.f32(i32 46, float %7907, float %7888, float %7917)  ; FMad(a,b,c)
  %7919 = call float @dx.op.tertiary.f32(i32 46, float %7908, float %7894, float %7918)  ; FMad(a,b,c)
  %7920 = fadd fast float %7919, %7900
  %7921 = fmul fast float %7906, %7883
  %7922 = call float @dx.op.tertiary.f32(i32 46, float %7907, float %7889, float %7921)  ; FMad(a,b,c)
  %7923 = call float @dx.op.tertiary.f32(i32 46, float %7908, float %7895, float %7922)  ; FMad(a,b,c)
  %7924 = fadd fast float %7923, %7901
  %7925 = fdiv fast float %7912, %7924
  %7926 = fdiv fast float %7916, %7924
  %7927 = fdiv fast float %7920, %7924
  %7928 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7927)  ; FMax(a,b)
  %7929 = fmul fast float %271, 0x401921FB60000000
  %7930 = call float @dx.op.unary.f32(i32 13, float %7929)  ; Sin(value)
  %7931 = call float @dx.op.unary.f32(i32 12, float %7929)  ; Cos(value)
  %7932 = fmul fast float %7931, %7876
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %7930, float %7876, float 0.000000e+00)  ; FMad(a,b,c)
  %7934 = fmul fast float %7876, %7930
  %7935 = fsub fast float -0.000000e+00, %7934
  %7936 = call float @dx.op.tertiary.f32(i32 46, float %7931, float %7876, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7937

; <label>:7937                                    ; preds = %7937, %7862
  %7938 = phi float [ 0.000000e+00, %7862 ], [ %7970, %7937 ]
  %7939 = phi float [ 0.000000e+00, %7862 ], [ %7972, %7937 ]
  %7940 = phi i32 [ 0, %7862 ], [ %7973, %7937 ]
  %7941 = mul i32 %7940, 2
  %7942 = add i32 0, %7941
  %7943 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7942
  %7944 = load float, float* %7943, align 4
  %7945 = mul i32 %7940, 2
  %7946 = add i32 1, %7945
  %7947 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7946
  %7948 = load float, float* %7947, align 4
  %7949 = fmul fast float %7932, %7944
  %7950 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7935, float %7949)  ; FMad(a,b,c)
  %7951 = fmul fast float %7944, %7933
  %7952 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7936, float %7951)  ; FMad(a,b,c)
  %7953 = fadd fast float %7950, %7925
  %7954 = fadd fast float %7952, %7926
  %7955 = fmul fast float %7953, %7871
  %7956 = fmul fast float %7954, %7871
  %7957 = call float @dx.op.binary.f32(i32 35, float %7955, float %7867)  ; FMax(a,b)
  %7958 = call float @dx.op.binary.f32(i32 35, float %7956, float %7867)  ; FMax(a,b)
  %7959 = call float @dx.op.binary.f32(i32 36, float %7957, float %7868)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 36, float %7958, float %7868)  ; FMin(a,b)
  %7961 = fadd fast float %7959, %7865
  %7962 = fadd fast float %7960, %7866
  %7963 = uitofp i32 %7902 to float
  %7964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %55, float %7961, float %7962, float %7963, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7965 = extractvalue %dx.types.ResRet.f32 %7964, 0
  %7966 = fsub fast float %7965, %7928
  %7967 = fsub fast float %7966, %7875
  %7968 = fcmp fast ogt float %7967, 0.000000e+00
  %7969 = select i1 %7968, float 1.000000e+00, float 0.000000e+00
  %7970 = fadd fast float %7969, %7938
  %7971 = select i1 %7968, float %7967, float 0.000000e+00
  %7972 = fadd fast float %7971, %7939
  %7973 = add nuw nsw i32 %7940, 1
  %7974 = icmp eq i32 %7973, 8
  br i1 %7974, label %7975, label %7937

; <label>:7975                                    ; preds = %7937
  %7976 = fdiv fast float 1.000000e+00, %7970
  %7977 = fmul fast float %7976, %7972
  %7978 = fdiv fast float 1.000000e+00, %7928
  %7979 = fmul fast float %7977, %7978
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float 0.000000e+00)  ; FMax(a,b)
  %7982 = fmul fast float %7970, 1.250000e-01
  %7983 = call float @dx.op.unary.f32(i32 7, float %7982)  ; Saturate(value)
  %7984 = fmul fast float %7983, 2.000000e+00
  %7985 = fadd fast float %7984, -1.000000e+00
  %7986 = fcmp fast ogt float %7985, 0.000000e+00
  %7987 = fcmp fast olt float %7985, 0.000000e+00
  %7988 = zext i1 %7986 to i32
  %7989 = zext i1 %7987 to i32
  %7990 = sub nsw i32 %7988, %7989
  %7991 = sitofp i32 %7990 to float
  %7992 = fmul fast float %7991, %7985
  %7993 = fsub fast float 1.000000e+00, %7992
  %7994 = fmul fast float %7993, %7993
  %7995 = fmul fast float %7994, %7993
  %7996 = fsub fast float %7993, %7995
  %7997 = fmul fast float %7996, %7981
  %7998 = fsub fast float 1.000000e+00, %7995
  %7999 = fsub fast float %7998, %7997
  %8000 = fmul fast float %7991, 5.000000e-01
  %8001 = fmul fast float %8000, %7999
  %8002 = fsub fast float -5.000000e-01, %8001
  %8003 = fmul fast float %8002, %7836
  %8004 = fadd fast float %8003, 1.000000e+00
  %8005 = fmul fast float %8004, %7848
  br label %8006

; <label>:8006                                    ; preds = %7975, %7860
  %8007 = phi float [ %8005, %7975 ], [ %7848, %7860 ]
  %8008 = call float @dx.op.binary.f32(i32 36, float %8007, float %8007)  ; FMin(a,b)
  %8009 = call float @dx.op.binary.f32(i32 36, float %8007, float %8008)  ; FMin(a,b)
  %8010 = fcmp fast ogt float %8009, 0.000000e+00
  br i1 %8010, label %8011, label %7852, !dx.controlflow.hints !135

; <label>:8011                                    ; preds = %8006
  %8012 = fmul fast float %8007, %7770
  %8013 = fmul fast float %8007, %7771
  %8014 = fmul fast float %8007, %7772
  %8015 = fsub fast float %7754, %4402
  %8016 = fcmp fast ogt float %8015, 0.000000e+00
  %8017 = fsub fast float %203, %4402
  %8018 = fcmp fast ogt float %8017, 0.000000e+00
  %8019 = xor i1 %8018, %8016
  %8020 = fsub fast float %4402, %7754
  %8021 = fmul fast float %8020, 2.000000e+00
  %8022 = fadd fast float %8021, %7754
  %8023 = select i1 %8019, float %7754, float %8022
  %8024 = fsub fast float %8023, %203
  %8025 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %8024, float %7780, float %7781, float %8024)  ; Dot3(ax,ay,az,bx,by,bz)
  %8026 = call float @dx.op.unary.f32(i32 25, float %8025)  ; Rsqrt(value)
  %8027 = fmul fast float %8026, %7780
  %8028 = fmul fast float %8026, %7781
  %8029 = fmul fast float %8026, %8024
  %8030 = fsub fast float %4402, %203
  %8031 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8030)  ; Dot3(ax,ay,az,bx,by,bz)
  %8032 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8027, float %8028, float %8029)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = fdiv fast float 1.000000e+00, %8032
  %8034 = fmul fast float %8033, %8031
  %8035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8017, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = fcmp fast ogt float %8035, 0.000000e+00
  %8037 = fcmp fast olt float %8035, 0.000000e+00
  %8038 = zext i1 %8036 to i32
  %8039 = zext i1 %8037 to i32
  %8040 = sub nsw i32 %8038, %8039
  %8041 = sitofp i32 %8040 to float
  %8042 = fsub fast float %8023, %4402
  %8043 = call float @dx.op.dot3.f32(i32 55, float %7780, float %7781, float %8042, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8044 = fcmp fast ogt float %8043, 0.000000e+00
  %8045 = fcmp fast olt float %8043, 0.000000e+00
  %8046 = zext i1 %8044 to i32
  %8047 = zext i1 %8045 to i32
  %8048 = sub nsw i32 %8046, %8047
  %8049 = sitofp i32 %8048 to float
  %8050 = fcmp fast une float %8041, %8049
  br i1 %8050, label %8051, label %8061

; <label>:8051                                    ; preds = %8011
  %8052 = fmul fast float %8034, %8029
  %8053 = fmul fast float %8034, %8028
  %8054 = fmul fast float %8034, %8027
  %8055 = fmul fast float %8054, %8054
  %8056 = fmul fast float %8053, %8053
  %8057 = fadd fast float %8055, %8056
  %8058 = fmul fast float %8052, %8052
  %8059 = fadd fast float %8057, %8058
  %8060 = call float @dx.op.unary.f32(i32 24, float %8059)  ; Sqrt(value)
  br label %8073

; <label>:8061                                    ; preds = %8011
  %8062 = icmp slt i32 %8040, 0
  br i1 %8062, label %8063, label %8073

; <label>:8063                                    ; preds = %8061
  %8064 = fsub fast float %201, %7752
  %8065 = fsub fast float %202, %7753
  %8066 = fsub fast float %203, %8023
  %8067 = fmul fast float %8064, %8064
  %8068 = fmul fast float %8065, %8065
  %8069 = fadd fast float %8067, %8068
  %8070 = fmul fast float %8066, %8066
  %8071 = fadd fast float %8069, %8070
  %8072 = call float @dx.op.unary.f32(i32 24, float %8071)  ; Sqrt(value)
  br label %8073

; <label>:8073                                    ; preds = %8063, %8061, %8051
  %8074 = phi float [ %8060, %8051 ], [ %8072, %8063 ], [ 0.000000e+00, %8061 ]
  %8075 = and i1 %8018, %8016
  %8076 = fsub fast float -0.000000e+00, %8074
  %8077 = select i1 %8075, float -0.000000e+00, float %8076
  %8078 = fmul fast float %4399, 0x3FF7154760000000
  %8079 = fmul fast float %8078, %8077
  %8080 = fmul fast float %4400, 0x3FF7154760000000
  %8081 = fmul fast float %8080, %8077
  %8082 = fmul fast float %4401, 0x3FF7154760000000
  %8083 = fmul fast float %8082, %8077
  %8084 = call float @dx.op.unary.f32(i32 21, float %8079)  ; Exp(value)
  %8085 = call float @dx.op.unary.f32(i32 21, float %8081)  ; Exp(value)
  %8086 = call float @dx.op.unary.f32(i32 21, float %8083)  ; Exp(value)
  %8087 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  %8088 = call float @dx.op.unary.f32(i32 7, float %8085)  ; Saturate(value)
  %8089 = call float @dx.op.unary.f32(i32 7, float %8086)  ; Saturate(value)
  %8090 = fmul fast float %8012, %8087
  %8091 = fmul fast float %8013, %8088
  %8092 = fmul fast float %8014, %8089
  %8093 = fsub fast float %7786, %5191
  %8094 = fsub fast float %7787, %5190
  %8095 = fsub fast float %7788, %5189
  %8096 = call float @dx.op.dot3.f32(i32 55, float %8093, float %8094, float %8095, float %8093, float %8094, float %8095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8097 = call float @dx.op.unary.f32(i32 25, float %8096)  ; Rsqrt(value)
  %8098 = fmul fast float %8097, %8093
  %8099 = fmul fast float %8097, %8094
  %8100 = fmul fast float %8097, %8095
  %8101 = call float @dx.op.dot3.f32(i32 55, float %7786, float %7787, float %7788, float %5198, float %5199, float %5200)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5187, float %5186, float %8098, float %8099, float %8100)  ; Dot3(ax,ay,az,bx,by,bz)
  %8103 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8104 = fmul fast float %8103, %7793
  %8105 = fmul fast float %8103, %8103
  %8106 = fmul fast float %8105, %5231
  %8107 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8108 = fmul fast float %8104, %8107
  %8109 = bitcast float %7783 to i32
  %8110 = ashr i32 %8109, 1
  %8111 = sub nsw i32 1597463007, %8110
  %8112 = bitcast i32 %8111 to float
  %8113 = fmul fast float %8112, %7780
  %8114 = fmul fast float %8112, %7781
  %8115 = fmul fast float %8112, %7782
  %8116 = fsub fast float %8113, %5191
  %8117 = fsub fast float %8114, %5190
  %8118 = fsub fast float %8115, %5189
  %8119 = call float @dx.op.dot3.f32(i32 55, float %8116, float %8117, float %8118, float %8116, float %8117, float %8118)  ; Dot3(ax,ay,az,bx,by,bz)
  %8120 = call float @dx.op.unary.f32(i32 25, float %8119)  ; Rsqrt(value)
  %8121 = fmul fast float %8116, %8120
  %8122 = fmul fast float %8117, %8120
  %8123 = fmul fast float %8118, %8120
  %8124 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float %8121, float %8122, float %8123)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = fmul fast float %8124, %8124
  %8126 = call float @dx.op.unary.f32(i32 6, float %8101)  ; FAbs(value)
  %8127 = fsub fast float 1.000000e+00, %5224
  %8128 = fmul fast float %5206, %5206
  %8129 = fmul fast float %8128, %8127
  %8130 = fadd fast float %8129, %5224
  %8131 = bitcast float %8130 to i32
  %8132 = ashr i32 %8131, 1
  %8133 = add nsw i32 %8132, 532487669
  %8134 = bitcast i32 %8133 to float
  %8135 = fadd fast float %8134, %5206
  %8136 = fmul fast float %5224, %8125
  %8137 = fsub fast float 1.000000e+00, %8125
  %8138 = fadd fast float %8137, %8136
  %8139 = fmul fast float %8126, %8126
  %8140 = fmul fast float %8139, %8127
  %8141 = fadd fast float %8140, %5224
  %8142 = bitcast float %8141 to i32
  %8143 = ashr i32 %8142, 1
  %8144 = add nsw i32 %8143, 532487669
  %8145 = bitcast i32 %8144 to float
  %8146 = fadd fast float %8145, %8126
  %8147 = fmul fast float %8138, %8138
  %8148 = fmul fast float %8147, %8135
  %8149 = fmul fast float %8148, %8146
  %8150 = fdiv fast float 1.000000e+00, %8149
  %8151 = bitcast float %5224 to i32
  %8152 = sitofp i32 %8151 to float
  %8153 = fmul fast float %8152, 0x3FE7F73180000000
  %8154 = fadd fast float %8153, 0x41AFE27C40000000
  %8155 = fptosi float %8154 to i32
  %8156 = bitcast i32 %8155 to float
  %8157 = fmul fast float %7749, 0x3FD80E9D60000000
  %8158 = fmul fast float %8157, %8112
  %8159 = fadd fast float %8156, %8158
  %8160 = bitcast float %8159 to i32
  %8161 = sub nsw i32 2129859010, %8160
  %8162 = bitcast i32 %8161 to float
  %8163 = fmul fast float %5224, %8150
  %8164 = fmul fast float %8163, %8156
  %8165 = fmul fast float %8164, %8162
  %8166 = call float @dx.op.unary.f32(i32 6, float %8102)  ; FAbs(value)
  %8167 = fsub fast float 1.000000e+00, %8166
  %8168 = bitcast float %8167 to i32
  %8169 = sitofp i32 %8168 to float
  %8170 = fmul fast float %8169, 5.000000e+00
  %8171 = fadd fast float %8170, 0xC1EFBF8940000000
  %8172 = fptosi float %8171 to i32
  %8173 = bitcast i32 %8172 to float
  %8174 = fsub fast float 1.000000e+00, %5192
  %8175 = fsub fast float 1.000000e+00, %5193
  %8176 = fsub fast float 1.000000e+00, %5204
  %8177 = fmul fast float %8173, %8174
  %8178 = fmul fast float %8173, %8175
  %8179 = fmul fast float %8173, %8176
  %8180 = fadd fast float %8177, %5192
  %8181 = fadd fast float %8178, %5193
  %8182 = fadd fast float %8179, %5204
  br i1 %5343, label %8183, label %8206

; <label>:8183                                    ; preds = %8073
  %8184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3997, float %8166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8185 = extractvalue %dx.types.ResRet.f32 %8184, 0
  %8186 = extractvalue %dx.types.ResRet.f32 %8184, 1
  %8187 = extractvalue %dx.types.ResRet.f32 %8184, 2
  %8188 = fadd fast float %8185, -5.000000e-01
  %8189 = fadd fast float %8186, -5.000000e-01
  %8190 = fadd fast float %8187, -5.000000e-01
  %8191 = fmul fast float %5192, 4.000000e+00
  %8192 = fmul fast float %8191, %8174
  %8193 = fmul fast float %8192, %8188
  %8194 = fmul fast float %5193, 4.000000e+00
  %8195 = fmul fast float %8194, %8175
  %8196 = fmul fast float %8195, %8189
  %8197 = fmul fast float %5204, 4.000000e+00
  %8198 = fmul fast float %8197, %8176
  %8199 = fmul fast float %8198, %8190
  %8200 = fadd fast float %8193, %8180
  %8201 = fadd fast float %8196, %8181
  %8202 = fadd fast float %8199, %8182
  %8203 = call float @dx.op.unary.f32(i32 7, float %8200)  ; Saturate(value)
  %8204 = call float @dx.op.unary.f32(i32 7, float %8201)  ; Saturate(value)
  %8205 = call float @dx.op.unary.f32(i32 7, float %8202)  ; Saturate(value)
  br label %8206

; <label>:8206                                    ; preds = %8183, %8073
  %8207 = phi float [ %8203, %8183 ], [ %8180, %8073 ]
  %8208 = phi float [ %8204, %8183 ], [ %8181, %8073 ]
  %8209 = phi float [ %8205, %8183 ], [ %8182, %8073 ]
  %8210 = fmul fast float %8101, 9.843750e-01
  %8211 = fadd fast float %8210, 7.812500e-03
  %8212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %48, %dx.types.Handle %54, float %8211, float %5333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8213 = extractvalue %dx.types.ResRet.f32 %8212, 2
  %8214 = extractvalue %dx.types.ResRet.f32 %8212, 3
  %8215 = fmul fast float %8213, %5192
  %8216 = fmul fast float %8213, %5193
  %8217 = fmul fast float %8213, %5204
  %8218 = fadd fast float %8215, %8214
  %8219 = fadd fast float %8216, %8214
  %8220 = fadd fast float %8217, %8214
  br i1 %5343, label %8221, label %8244

; <label>:8221                                    ; preds = %8206
  %8222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %54, float %3997, float %8101, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8223 = extractvalue %dx.types.ResRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.ResRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.ResRet.f32 %8222, 2
  %8226 = fadd fast float %8223, -5.000000e-01
  %8227 = fadd fast float %8224, -5.000000e-01
  %8228 = fadd fast float %8225, -5.000000e-01
  %8229 = fmul fast float %5192, 4.000000e+00
  %8230 = fmul fast float %8229, %8174
  %8231 = fmul fast float %8230, %8226
  %8232 = fmul fast float %5193, 4.000000e+00
  %8233 = fmul fast float %8232, %8175
  %8234 = fmul fast float %8233, %8227
  %8235 = fmul fast float %5204, 4.000000e+00
  %8236 = fmul fast float %8235, %8176
  %8237 = fmul fast float %8236, %8228
  %8238 = fadd fast float %8231, %8218
  %8239 = fadd fast float %8234, %8219
  %8240 = fadd fast float %8237, %8220
  %8241 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8242 = call float @dx.op.unary.f32(i32 7, float %8239)  ; Saturate(value)
  %8243 = call float @dx.op.unary.f32(i32 7, float %8240)  ; Saturate(value)
  br label %8244

; <label>:8244                                    ; preds = %8221, %8206
  %8245 = phi float [ %8241, %8221 ], [ %8218, %8206 ]
  %8246 = phi float [ %8242, %8221 ], [ %8219, %8206 ]
  %8247 = phi float [ %8243, %8221 ], [ %8220, %8206 ]
  %8248 = call float @dx.op.binary.f32(i32 35, float %8246, float %8247)  ; FMax(a,b)
  %8249 = call float @dx.op.binary.f32(i32 35, float %8245, float %8248)  ; FMax(a,b)
  %8250 = fsub fast float 1.000000e+00, %8249
  %8251 = fmul fast float %8207, %8165
  %8252 = fmul fast float %8208, %8165
  %8253 = fmul fast float %8209, %8165
  %8254 = fsub fast float 1.000000e+00, %8102
  %8255 = bitcast float %8254 to i32
  %8256 = sitofp i32 %8255 to float
  %8257 = fmul fast float %8256, 5.000000e+00
  %8258 = fadd fast float %8257, 0xC1EFBF8940000000
  %8259 = fptosi float %8258 to i32
  %8260 = bitcast i32 %8259 to float
  %8261 = fmul fast float %8260, %3998
  %8262 = fmul fast float %8250, %8261
  %8263 = fmul fast float %8262, %5885
  %8264 = fmul fast float %8262, %5886
  %8265 = fmul fast float %8262, %5887
  %8266 = fadd fast float %8263, %8251
  %8267 = fadd fast float %8264, %8252
  %8268 = fadd fast float %8265, %8253
  %8269 = fmul fast float %8090, %3994
  %8270 = fmul fast float %8269, %8108
  %8271 = fmul fast float %8270, %8250
  %8272 = fmul fast float %8091, %3994
  %8273 = fmul fast float %8272, %8108
  %8274 = fmul fast float %8273, %8250
  %8275 = fmul fast float %8092, %3994
  %8276 = fmul fast float %8275, %8108
  %8277 = fmul fast float %8276, %8250
  %8278 = fadd fast float %8271, %7723
  %8279 = fadd fast float %8274, %7724
  %8280 = fadd fast float %8277, %7725
  %8281 = fmul fast float %8270, %8266
  %8282 = fmul fast float %8273, %8267
  %8283 = fmul fast float %8276, %8268
  %8284 = fadd fast float %8281, %7720
  %8285 = fadd fast float %8282, %7721
  %8286 = fadd fast float %8283, %7722
  br label %7852

; <label>:8287                                    ; preds = %7852
  br label %8288

; <label>:8288                                    ; preds = %8287, %7686
  %8289 = phi float [ %7688, %7686 ], [ %7853, %8287 ]
  %8290 = phi float [ %7689, %7686 ], [ %7854, %8287 ]
  %8291 = phi float [ %7690, %7686 ], [ %7855, %8287 ]
  %8292 = phi float [ %7691, %7686 ], [ %7856, %8287 ]
  %8293 = phi float [ %7692, %7686 ], [ %7857, %8287 ]
  %8294 = phi float [ %7693, %7686 ], [ %7858, %8287 ]
  %8295 = add i32 %7687, 1
  %8296 = icmp ugt i32 %8295, %7683
  br i1 %8296, label %8297, label %7686

; <label>:8297                                    ; preds = %8288
  br label %8298

; <label>:8298                                    ; preds = %8297, %7636, %7626
  %8299 = phi float [ %7627, %7626 ], [ %7627, %7636 ], [ %8289, %8297 ]
  %8300 = phi float [ %7628, %7626 ], [ %7628, %7636 ], [ %8290, %8297 ]
  %8301 = phi float [ %7629, %7626 ], [ %7629, %7636 ], [ %8291, %8297 ]
  %8302 = phi float [ %7630, %7626 ], [ %7630, %7636 ], [ %8292, %8297 ]
  %8303 = phi float [ %7631, %7626 ], [ %7631, %7636 ], [ %8293, %8297 ]
  %8304 = phi float [ %7632, %7626 ], [ %7632, %7636 ], [ %8294, %8297 ]
  %8305 = fmul fast float %3994, %3994
  %8306 = fsub fast float 1.000000e+00, %8305
  %8307 = call float @dx.op.dot3.f32(i32 55, float %8306, float %8306, float %8306, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8308 = fsub fast float 1.000000e+00, %8307
  %8309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8310 = extractvalue %dx.types.CBufRet.f32 %8309, 0
  %8311 = fmul fast float %8310, %5891
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 3
  %8314 = fsub fast float 1.000000e+00, %4002
  %8315 = call float @dx.op.unary.f32(i32 7, float %8314)  ; Saturate(value)
  %8316 = fadd fast float %8304, %4000
  %8317 = fmul fast float %8316, %4002
  %8318 = fmul fast float %8315, %8313
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 3
  %8321 = fmul fast float %8302, %5195
  %8322 = fmul fast float %8303, %5196
  %8323 = fmul fast float %8304, %5197
  %8324 = fcmp fast ogt float %101, %223
  %8325 = and i1 %8324, %4405
  %8326 = or i1 %4411, %8325
  %8327 = icmp eq i32 %4404, 2
  %8328 = fcmp fast ole float %101, %223
  %8329 = and i1 %8328, %8327
  %8330 = or i1 %8329, %8326
  br i1 %8325, label %8331, label %8588

; <label>:8331                                    ; preds = %8298
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8334 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8335 = fmul fast float %8333, %114
  %8336 = fmul fast float %8334, %115
  %8337 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  %8338 = call float @dx.op.unary.f32(i32 7, float %8336)  ; Saturate(value)
  %8339 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8337, float %8338, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.ResRet.f32 %8339, 2
  %8343 = extractvalue %dx.types.ResRet.f32 %8339, 3
  %8344 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8337, float %8338, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8345 = extractvalue %dx.types.ResRet.f32 %8344, 0
  %8346 = extractvalue %dx.types.ResRet.f32 %8344, 1
  %8347 = extractvalue %dx.types.ResRet.f32 %8344, 2
  %8348 = extractvalue %dx.types.ResRet.f32 %8344, 3
  %8349 = call float @dx.op.binary.f32(i32 35, float %8341, float %8342)  ; FMax(a,b)
  %8350 = call float @dx.op.binary.f32(i32 35, float %8340, float %8349)  ; FMax(a,b)
  %8351 = call float @dx.op.binary.f32(i32 35, float %8350, float %8343)  ; FMax(a,b)
  %8352 = call float @dx.op.binary.f32(i32 36, float %8346, float %8347)  ; FMin(a,b)
  %8353 = call float @dx.op.binary.f32(i32 36, float %8345, float %8352)  ; FMin(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8353, float %8348)  ; FMin(a,b)
  %8355 = fmul fast float %8351, 2.550000e+02
  %8356 = fadd fast float %8355, 0x3F70101020000000
  %8357 = fptoui float %8356 to i32
  %8358 = fmul fast float %8354, 2.550000e+02
  %8359 = fadd fast float %8358, 0x3F70101020000000
  %8360 = fptoui float %8359 to i32
  %8361 = icmp ult i32 %8357, %8360
  br i1 %8361, label %8362, label %8530

; <label>:8362                                    ; preds = %8331
  %8363 = fcmp fast ogt float %100, 9.843750e-01
  %8364 = fadd fast float %101, -4.000000e+00
  %8365 = select i1 %8363, float -4.000000e+00, float %8364
  %8366 = call float @dx.op.binary.f32(i32 35, float %8365, float 0.000000e+00)  ; FMax(a,b)
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = fadd fast float %8368, %8366
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = fmul fast float %8369, %8370
  %8372 = call float @dx.op.unary.f32(i32 23, float %8371)  ; Log(value)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8374 = fmul fast float %8373, %8372
  %8375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.f32 %8375, 2
  %8377 = fmul fast float %8374, %8376
  %8378 = call float @dx.op.unary.f32(i32 7, float %8377)  ; Saturate(value)
  %8379 = uitofp i32 %8357 to float
  %8380 = uitofp i32 %8360 to float
  %8381 = fadd fast float %8379, 5.000000e-01
  %8382 = fadd fast float %8380, 5.000000e-01
  %8383 = fmul fast float %8376, %8381
  %8384 = fmul fast float %8376, %8382
  %8385 = fadd fast float %8383, 0x3F0FFB4800000000
  %8386 = fadd fast float %8384, 0xBF0FFB4800000000
  %8387 = call float @dx.op.binary.f32(i32 35, float %8378, float %8385)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8387, float %8386)  ; FMin(a,b)
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8392 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8393 = fmul fast float %8390, %8388
  %8394 = fadd fast float %8392, %8393
  %8395 = fadd fast float %8392, %8391
  %8396 = fsub fast float %8390, %8391
  %8397 = fadd fast float %8396, %8392
  %8398 = call float @dx.op.binary.f32(i32 35, float %8394, float %8395)  ; FMax(a,b)
  %8399 = call float @dx.op.binary.f32(i32 36, float %8398, float %8397)  ; FMin(a,b)
  %8400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8337, float %8338, float %8399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8401 = extractvalue %dx.types.ResRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.ResRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.ResRet.f32 %8400, 2
  %8404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.i32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.i32 %8404, 1
  %8407 = uitofp i32 %8405 to float
  %8408 = uitofp i32 %8406 to float
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = extractvalue %dx.types.CBufRet.f32 %8409, 1
  %8412 = fmul fast float %8407, %8337
  %8413 = fmul fast float %8408, %8338
  %8414 = fadd fast float %8412, -5.000000e-01
  %8415 = fadd fast float %8413, -5.000000e-01
  %8416 = call float @dx.op.unary.f32(i32 22, float %8414)  ; Frc(value)
  %8417 = call float @dx.op.unary.f32(i32 22, float %8415)  ; Frc(value)
  %8418 = fmul fast float %8416, %8416
  %8419 = fmul fast float %8418, %8416
  %8420 = fsub fast float 3.000000e+00, %8416
  %8421 = fmul fast float %8418, %8420
  %8422 = fmul fast float %8416, 3.000000e+00
  %8423 = fmul fast float %8419, 3.000000e+00
  %8424 = fmul fast float %8418, 6.000000e+00
  %8425 = fsub fast float %8423, %8424
  %8426 = fadd fast float %8425, 4.000000e+00
  %8427 = fmul fast float %8426, 0x3FC5555560000000
  %8428 = fmul fast float %8419, -3.000000e+00
  %8429 = fadd fast float %8418, %8416
  %8430 = fmul fast float %8429, 3.000000e+00
  %8431 = fadd fast float %8428, 1.000000e+00
  %8432 = fadd fast float %8431, %8430
  %8433 = fmul fast float %8419, 0x3FC5555560000000
  %8434 = fmul fast float %8417, %8417
  %8435 = fmul fast float %8434, %8417
  %8436 = fsub fast float 3.000000e+00, %8417
  %8437 = fmul fast float %8434, %8436
  %8438 = fmul fast float %8417, 3.000000e+00
  %8439 = fmul fast float %8435, 3.000000e+00
  %8440 = fmul fast float %8434, 6.000000e+00
  %8441 = fsub fast float %8439, %8440
  %8442 = fadd fast float %8441, 4.000000e+00
  %8443 = fmul fast float %8442, 0x3FC5555560000000
  %8444 = fmul fast float %8435, -3.000000e+00
  %8445 = fadd fast float %8434, %8417
  %8446 = fmul fast float %8445, 3.000000e+00
  %8447 = fadd fast float %8444, 1.000000e+00
  %8448 = fadd fast float %8447, %8446
  %8449 = fmul fast float %8435, 0x3FC5555560000000
  %8450 = fadd fast float %8416, 1.000000e+00
  %8451 = fsub fast float 1.000000e+00, %8422
  %8452 = fadd fast float %8451, %8421
  %8453 = fadd fast float %8452, %8426
  %8454 = fmul fast float %8453, 0x3FC5555560000000
  %8455 = fdiv fast float %8427, %8454
  %8456 = fsub fast float %8450, %8455
  %8457 = fsub fast float 1.000000e+00, %8416
  %8458 = fadd fast float %8432, %8419
  %8459 = fmul fast float %8458, 0x3FC5555560000000
  %8460 = fdiv fast float %8433, %8459
  %8461 = fadd fast float %8457, %8460
  %8462 = fadd fast float %8417, 1.000000e+00
  %8463 = fsub fast float 1.000000e+00, %8438
  %8464 = fadd fast float %8463, %8437
  %8465 = fadd fast float %8464, %8442
  %8466 = fmul fast float %8465, 0x3FC5555560000000
  %8467 = fdiv fast float %8443, %8466
  %8468 = fsub fast float %8462, %8467
  %8469 = fsub fast float 1.000000e+00, %8417
  %8470 = fadd fast float %8448, %8435
  %8471 = fmul fast float %8470, 0x3FC5555560000000
  %8472 = fdiv fast float %8449, %8471
  %8473 = fadd fast float %8472, %8469
  %8474 = fmul fast float %8456, %8410
  %8475 = fsub fast float %8337, %8474
  %8476 = fmul fast float %8461, %8410
  %8477 = fadd fast float %8476, %8337
  %8478 = fmul fast float %8473, %8411
  %8479 = fadd fast float %8478, %8338
  %8480 = fmul fast float %8468, %8411
  %8481 = fsub fast float %8338, %8480
  %8482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8475, float %8481, float %8399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.ResRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.ResRet.f32 %8482, 2
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8477, float %8481, float %8399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.ResRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.ResRet.f32 %8486, 2
  %8490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8475, float %8479, float %8399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.ResRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.ResRet.f32 %8490, 2
  %8494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8477, float %8479, float %8399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8495 = extractvalue %dx.types.ResRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.ResRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.ResRet.f32 %8494, 2
  %8498 = fsub fast float %8491, %8483
  %8499 = fsub fast float %8492, %8484
  %8500 = fsub fast float %8493, %8485
  %8501 = fmul fast float %8498, %8471
  %8502 = fmul fast float %8499, %8471
  %8503 = fmul fast float %8500, %8471
  %8504 = fadd fast float %8501, %8483
  %8505 = fadd fast float %8502, %8484
  %8506 = fadd fast float %8503, %8485
  %8507 = fsub fast float %8495, %8487
  %8508 = fsub fast float %8496, %8488
  %8509 = fsub fast float %8497, %8489
  %8510 = fmul fast float %8507, %8471
  %8511 = fmul fast float %8508, %8471
  %8512 = fmul fast float %8509, %8471
  %8513 = fsub fast float %8487, %8504
  %8514 = fadd fast float %8513, %8510
  %8515 = fsub fast float %8488, %8505
  %8516 = fadd fast float %8515, %8511
  %8517 = fsub fast float %8489, %8506
  %8518 = fadd fast float %8517, %8512
  %8519 = fmul fast float %8514, %8459
  %8520 = fmul fast float %8516, %8459
  %8521 = fmul fast float %8518, %8459
  %8522 = fadd fast float %8519, %8504
  %8523 = fadd fast float %8520, %8505
  %8524 = fadd fast float %8521, %8506
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 1
  %8527 = fmul fast float %8522, %8526
  %8528 = fmul fast float %8523, %8526
  %8529 = fmul fast float %8524, %8526
  br label %8530

; <label>:8530                                    ; preds = %8362, %8331
  %8531 = phi float [ %8401, %8362 ], [ 1.000000e+00, %8331 ]
  %8532 = phi float [ %8402, %8362 ], [ 1.000000e+00, %8331 ]
  %8533 = phi float [ %8403, %8362 ], [ 1.000000e+00, %8331 ]
  %8534 = phi float [ %8527, %8362 ], [ 0.000000e+00, %8331 ]
  %8535 = phi float [ %8528, %8362 ], [ 0.000000e+00, %8331 ]
  %8536 = phi float [ %8529, %8362 ], [ 0.000000e+00, %8331 ]
  %8537 = fmul fast float %8534, %8308
  %8538 = fmul fast float %8535, %8308
  %8539 = fmul fast float %8536, %8308
  %8540 = call float @dx.op.dot3.f32(i32 55, float %8531, float %8532, float %8533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8541 = call float @dx.op.dot3.f32(i32 55, float %8537, float %8538, float %8539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8542 = select i1 %260, float %8540, float %8531
  %8543 = select i1 %260, float %8540, float %8532
  %8544 = select i1 %260, float 1.000000e+00, float %8533
  %8545 = select i1 %260, float %8541, float %8537
  %8546 = select i1 %260, float 0.000000e+00, float %8538
  %8547 = select i1 %260, float 0.000000e+00, float %8539
  %8548 = fmul fast float %8542, %8321
  %8549 = fmul fast float %8543, %8322
  %8550 = fmul fast float %8544, %8323
  %8551 = fadd fast float %8548, %8545
  %8552 = fadd fast float %8549, %8546
  %8553 = fadd fast float %8547, %8550
  %8554 = fmul fast float %8542, %8299
  %8555 = fmul fast float %8543, %8300
  %8556 = fmul fast float %8544, %8301
  %8557 = fmul fast float %150, %8333
  %8558 = fmul fast float %152, %8334
  %8559 = fsub fast float 1.000000e+00, %8557
  %8560 = fsub fast float 1.000000e+00, %8558
  %8561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8562 = extractvalue %dx.types.CBufRet.f32 %8561, 0
  %8563 = extractvalue %dx.types.CBufRet.f32 %8561, 1
  %8564 = extractvalue %dx.types.CBufRet.f32 %8561, 2
  %8565 = fmul fast float %8559, %8562
  %8566 = fmul fast float %8559, %8563
  %8567 = fmul fast float %8559, %8564
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8571 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %8572 = fmul fast float %8560, %8569
  %8573 = fmul fast float %8560, %8570
  %8574 = fmul fast float %8560, %8571
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = fadd fast float %8572, %8576
  %8580 = fadd fast float %8579, %8565
  %8581 = fadd fast float %8573, %8577
  %8582 = fadd fast float %8581, %8566
  %8583 = fadd fast float %8574, %8578
  %8584 = fadd fast float %8583, %8567
  %8585 = fmul fast float %8580, %223
  %8586 = fmul fast float %8582, %223
  %8587 = fmul fast float %8584, %223
  br label %8588

; <label>:8588                                    ; preds = %8530, %8298
  %8589 = phi float [ %8585, %8530 ], [ %201, %8298 ]
  %8590 = phi float [ %8586, %8530 ], [ %202, %8298 ]
  %8591 = phi float [ %8587, %8530 ], [ %203, %8298 ]
  %8592 = phi float [ %223, %8530 ], [ %101, %8298 ]
  %8593 = phi float [ %8551, %8530 ], [ %8321, %8298 ]
  %8594 = phi float [ %8552, %8530 ], [ %8322, %8298 ]
  %8595 = phi float [ %8553, %8530 ], [ %8323, %8298 ]
  %8596 = phi float [ %8554, %8530 ], [ %8299, %8298 ]
  %8597 = phi float [ %8555, %8530 ], [ %8300, %8298 ]
  %8598 = phi float [ %8556, %8530 ], [ %8301, %8298 ]
  %8599 = phi float [ %8531, %8530 ], [ 1.000000e+00, %8298 ]
  br i1 %8330, label %9754, label %8600

; <label>:8600                                    ; preds = %8588
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8605 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8606, 3
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8615 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.CBufRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.CBufRet.f32 %8616, 2
  %8620 = extractvalue %dx.types.CBufRet.f32 %8616, 3
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 3
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8627 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8628 = fcmp fast olt float %8627, -5.000000e-01
  %8629 = call float @dx.op.dot3.f32(i32 55, float %8589, float %8590, float %8591, float %8589, float %8590, float %8591)  ; Dot3(ax,ay,az,bx,by,bz)
  %8630 = call float @dx.op.unary.f32(i32 25, float %8629)  ; Rsqrt(value)
  %8631 = fmul fast float %8630, %8629
  %8632 = fmul fast float %8630, %8589
  %8633 = fmul fast float %8630, %8590
  %8634 = fmul fast float %8630, %8591
  %8635 = fadd fast float %8631, %8605
  %8636 = call float @dx.op.dot3.f32(i32 55, float %8632, float %8633, float %8634, float %8602, float %8603, float %8604)  ; Dot3(ax,ay,az,bx,by,bz)
  %8637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.i32 %8637, 1
  %8639 = and i32 %8638, 1
  %8640 = icmp ne i32 %8639, 0
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 2
  %8643 = fcmp fast ogt float %8642, 0.000000e+00
  %8644 = and i1 %8640, %8643
  br i1 %8644, label %8645, label %9051, !dx.controlflow.hints !136

; <label>:8645                                    ; preds = %8600
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8652 = fsub fast float %8649, %8651
  %8653 = and i32 %8638, 2
  %8654 = extractvalue %dx.types.CBufRet.i32 %8637, 0
  %8655 = call i32 @dx.op.binary.i32(i32 40, i32 %8654, i32 3)  ; UMin(a,b)
  %8656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8657 = extractvalue %dx.types.CBufRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.CBufRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.CBufRet.f32 %8650, 0
  %8660 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8661 = fsub fast float %8657, %8659
  %8662 = fsub fast float %8658, %8660
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = fcmp fast ogt float %8664, 0.000000e+00
  %8666 = fsub fast float -0.000000e+00, %8661
  %8667 = fsub fast float -0.000000e+00, %8662
  %8668 = call float @dx.op.dot2.f32(i32 54, float %8632, float %8633, float %8632, float %8633)  ; Dot2(ax,ay,bx,by)
  %8669 = call float @dx.op.dot2.f32(i32 54, float %8632, float %8633, float %8666, float %8667)  ; Dot2(ax,ay,bx,by)
  %8670 = fmul fast float %8669, 2.000000e+00
  %8671 = call float @dx.op.dot2.f32(i32 54, float %8666, float %8667, float %8666, float %8667)  ; Dot2(ax,ay,bx,by)
  %8672 = fmul fast float %8664, %8664
  %8673 = fsub fast float %8671, %8672
  %8674 = fmul fast float %8670, %8670
  %8675 = fmul fast float %8668, 4.000000e+00
  %8676 = fmul fast float %8675, %8673
  %8677 = fsub fast float %8674, %8676
  %8678 = fcmp fast ogt float %8677, 0.000000e+00
  br i1 %8678, label %8679, label %8694

; <label>:8679                                    ; preds = %8645
  %8680 = fcmp fast ogt float %8670, 0.000000e+00
  %8681 = call float @dx.op.unary.f32(i32 24, float %8677)  ; Sqrt(value)
  %8682 = fsub fast float -0.000000e+00, %8681
  %8683 = select i1 %8680, float %8681, float %8682
  %8684 = fadd fast float %8683, %8670
  %8685 = fmul float %8684, -5.000000e-01
  %8686 = fdiv fast float %8685, %8668
  %8687 = call float @dx.op.binary.f32(i32 35, float %8686, float 0.000000e+00)  ; FMax(a,b)
  %8688 = call float @dx.op.binary.f32(i32 36, float %8631, float %8687)  ; FMin(a,b)
  %8689 = fdiv fast float %8673, %8685
  %8690 = call float @dx.op.binary.f32(i32 35, float %8689, float 0.000000e+00)  ; FMax(a,b)
  %8691 = call float @dx.op.binary.f32(i32 36, float %8631, float %8690)  ; FMin(a,b)
  %8692 = call float @dx.op.binary.f32(i32 36, float %8688, float %8691)  ; FMin(a,b)
  %8693 = call float @dx.op.binary.f32(i32 35, float %8688, float %8691)  ; FMax(a,b)
  br label %8694

; <label>:8694                                    ; preds = %8679, %8645
  %8695 = phi float [ %8693, %8679 ], [ -1.000000e+00, %8645 ]
  %8696 = phi float [ %8692, %8679 ], [ -1.000000e+00, %8645 ]
  %8697 = phi i1 [ true, %8679 ], [ false, %8645 ]
  %8698 = and i1 %8665, %8697
  br i1 %8698, label %8699, label %8701

; <label>:8699                                    ; preds = %8694
  %8700 = fcmp fast oeq float %8696, %8695
  br i1 %8700, label %9004, label %8702

; <label>:8701                                    ; preds = %8694
  br i1 %8665, label %9004, label %8702

; <label>:8702                                    ; preds = %8701, %8699
  %8703 = phi float [ %8631, %8701 ], [ %8695, %8699 ]
  %8704 = phi float [ 0.000000e+00, %8701 ], [ %8696, %8699 ]
  %8705 = icmp ne i32 %8653, 0
  %8706 = fmul fast float %8703, %8634
  %8707 = fadd fast float %8706, %8647
  %8708 = fmul fast float %8707, %8703
  %8709 = select i1 %8705, float 0.000000e+00, float %8708
  %8710 = fcmp fast oeq float %8634, 0.000000e+00
  %8711 = fdiv fast float %8652, %8634
  %8712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8711)  ; FMax(a,b)
  %8713 = select i1 %8710, float %8703, float %8712
  %8714 = call float @dx.op.binary.f32(i32 36, float %8703, float %8713)  ; FMin(a,b)
  %8715 = fcmp fast ogt float %8634, 0.000000e+00
  %8716 = fcmp fast olt float %8652, 0.000000e+00
  br i1 %8715, label %8717, label %8774

; <label>:8717                                    ; preds = %8702
  %8718 = icmp eq i32 %8653, 0
  br i1 %8716, label %8719, label %8763

; <label>:8719                                    ; preds = %8717
  %8720 = select i1 %8718, float %8703, float 0.000000e+00
  %8721 = fsub fast float -0.000000e+00, %8720
  %8722 = call float @dx.op.unary.f32(i32 6, float %8721)  ; FAbs(value)
  %8723 = fmul fast float %8720, %8634
  %8724 = fadd fast float %8723, %8647
  %8725 = fmul fast float %8722, %8724
  %8726 = fsub fast float %8709, %8725
  %8727 = fsub fast float %8703, %8722
  %8728 = select i1 %8718, float %8727, float 0.000000e+00
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.CBufRet.f32 %8729, 1
  %8732 = extractvalue %dx.types.CBufRet.f32 %8729, 2
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.CBufRet.f32 %8733, 1
  %8736 = extractvalue %dx.types.CBufRet.f32 %8733, 2
  %8737 = extractvalue %dx.types.CBufRet.f32 %8733, 3
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 3
  %8740 = call float @dx.op.binary.f32(i32 36, float %8726, float %8739)  ; FMin(a,b)
  %8741 = fmul fast float %8737, %8728
  %8742 = call float @dx.op.unary.f32(i32 7, float %8741)  ; Saturate(value)
  %8743 = fsub fast float %8734, %8730
  %8744 = fsub fast float %8735, %8731
  %8745 = fsub fast float %8736, %8732
  %8746 = fmul fast float %8742, %8743
  %8747 = fmul fast float %8742, %8744
  %8748 = fmul fast float %8742, %8745
  %8749 = fadd fast float %8746, %8730
  %8750 = fadd fast float %8747, %8731
  %8751 = fadd fast float %8748, %8732
  %8752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8753 = extractvalue %dx.types.CBufRet.f32 %8752, 0
  %8754 = extractvalue %dx.types.CBufRet.f32 %8752, 1
  %8755 = fadd fast float %8754, %8753
  %8756 = call float @dx.op.unary.f32(i32 7, float %8755)  ; Saturate(value)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8752, 2
  %8758 = extractvalue %dx.types.CBufRet.f32 %8752, 3
  %8759 = fadd fast float %8758, %8757
  %8760 = call float @dx.op.unary.f32(i32 7, float %8759)  ; Saturate(value)
  %8761 = fmul fast float %8756, %8740
  %8762 = fmul fast float %8761, %8760
  br label %9004

; <label>:8763                                    ; preds = %8717
  br i1 %8718, label %8764, label %8785

; <label>:8764                                    ; preds = %8763
  %8765 = call float @dx.op.binary.f32(i32 36, float %8714, float %8704)  ; FMin(a,b)
  %8766 = fsub fast float %8714, %8765
  %8767 = fsub fast float %8766, %8703
  %8768 = call float @dx.op.unary.f32(i32 6, float %8767)  ; FAbs(value)
  %8769 = fadd fast float %8766, %8703
  %8770 = fmul fast float %8769, %8634
  %8771 = fadd fast float %8770, %8647
  %8772 = fmul fast float %8771, %8768
  %8773 = fsub fast float %8709, %8772
  br label %8785

; <label>:8774                                    ; preds = %8702
  br i1 %8716, label %8775, label %8785

; <label>:8775                                    ; preds = %8774
  %8776 = call float @dx.op.binary.f32(i32 35, float %8704, float %8714)  ; FMax(a,b)
  %8777 = icmp eq i32 %8653, 0
  %8778 = select i1 %8777, float %8714, float 0.000000e+00
  %8779 = fsub fast float -0.000000e+00, %8778
  %8780 = call float @dx.op.unary.f32(i32 6, float %8779)  ; FAbs(value)
  %8781 = fmul fast float %8778, %8634
  %8782 = fadd fast float %8781, %8647
  %8783 = fmul fast float %8780, %8782
  %8784 = fsub fast float %8709, %8783
  br label %8785

; <label>:8785                                    ; preds = %8775, %8774, %8764, %8763
  %8786 = phi float [ %8704, %8763 ], [ %8704, %8764 ], [ %8776, %8775 ], [ %8704, %8774 ]
  %8787 = phi float [ 0.000000e+00, %8763 ], [ %8768, %8764 ], [ %8780, %8775 ], [ 0.000000e+00, %8774 ]
  %8788 = phi float [ %8709, %8763 ], [ %8773, %8764 ], [ %8784, %8775 ], [ %8709, %8774 ]
  %8789 = phi float [ %8714, %8763 ], [ %8714, %8764 ], [ %8703, %8775 ], [ %8703, %8774 ]
  %8790 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 0
  store float -1.000000e+00, float* %8790, align 4, !tbaa !122, !noalias !137
  %8791 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 1
  store float -1.000000e+00, float* %8791, align 4, !tbaa !122, !noalias !137
  %8792 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 2
  store float -1.000000e+00, float* %8792, align 4, !tbaa !122, !noalias !137
  %8793 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 0
  store float -1.000000e+00, float* %8793, align 4, !tbaa !122, !noalias !137
  %8794 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 1
  store float -1.000000e+00, float* %8794, align 4, !tbaa !122, !noalias !137
  %8795 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 2
  store float -1.000000e+00, float* %8795, align 4, !tbaa !122, !noalias !137
  %8796 = icmp sgt i32 %8655, 0
  br i1 %8796, label %8797, label %8858

; <label>:8797                                    ; preds = %8785
  br label %8798

; <label>:8798                                    ; preds = %8847, %8797
  %8799 = phi i32 [ %8848, %8847 ], [ 0, %8797 ]
  %8800 = phi i32 [ %8849, %8847 ], [ 0, %8797 ]
  %8801 = add nuw i32 %8800, 171
  %8802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8801)  ; CBufferLoadLegacy(handle,regIndex)
  %8803 = extractvalue %dx.types.CBufRet.f32 %8802, 0
  %8804 = extractvalue %dx.types.CBufRet.f32 %8802, 1
  %8805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8806 = extractvalue %dx.types.CBufRet.f32 %8805, 0
  %8807 = extractvalue %dx.types.CBufRet.f32 %8805, 1
  %8808 = fsub fast float %8803, %8806
  %8809 = fsub fast float %8804, %8807
  %8810 = extractvalue %dx.types.CBufRet.f32 %8802, 2
  %8811 = fsub fast float -0.000000e+00, %8808
  %8812 = fsub fast float -0.000000e+00, %8809
  %8813 = call float @dx.op.dot2.f32(i32 54, float %8632, float %8633, float %8811, float %8812)  ; Dot2(ax,ay,bx,by)
  %8814 = fmul fast float %8813, 2.000000e+00
  %8815 = call float @dx.op.dot2.f32(i32 54, float %8811, float %8812, float %8811, float %8812)  ; Dot2(ax,ay,bx,by)
  %8816 = fmul fast float %8810, %8810
  %8817 = fsub fast float %8815, %8816
  %8818 = fmul fast float %8814, %8814
  %8819 = fmul fast float %8675, %8817
  %8820 = fsub fast float %8818, %8819
  %8821 = fcmp fast ogt float %8820, 0.000000e+00
  br i1 %8821, label %8822, label %8837

; <label>:8822                                    ; preds = %8798
  %8823 = fcmp fast ogt float %8814, 0.000000e+00
  %8824 = call float @dx.op.unary.f32(i32 24, float %8820)  ; Sqrt(value)
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = select i1 %8823, float %8824, float %8825
  %8827 = fadd fast float %8826, %8814
  %8828 = fmul float %8827, -5.000000e-01
  %8829 = fdiv fast float %8828, %8668
  %8830 = call float @dx.op.binary.f32(i32 35, float %8829, float 0.000000e+00)  ; FMax(a,b)
  %8831 = call float @dx.op.binary.f32(i32 36, float %8703, float %8830)  ; FMin(a,b)
  %8832 = fdiv fast float %8817, %8828
  %8833 = call float @dx.op.binary.f32(i32 35, float %8832, float 0.000000e+00)  ; FMax(a,b)
  %8834 = call float @dx.op.binary.f32(i32 36, float %8703, float %8833)  ; FMin(a,b)
  %8835 = call float @dx.op.binary.f32(i32 36, float %8831, float %8834)  ; FMin(a,b)
  %8836 = call float @dx.op.binary.f32(i32 35, float %8831, float %8834)  ; FMax(a,b)
  br label %8837

; <label>:8837                                    ; preds = %8822, %8798
  %8838 = phi float [ %8836, %8822 ], [ -1.000000e+00, %8798 ]
  %8839 = phi float [ %8835, %8822 ], [ -1.000000e+00, %8798 ]
  %8840 = phi i1 [ true, %8822 ], [ false, %8798 ]
  br i1 %8840, label %8841, label %8847

; <label>:8841                                    ; preds = %8837
  %8842 = call float @dx.op.binary.f32(i32 35, float %8786, float %8839)  ; FMax(a,b)
  %8843 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8800
  store float %8842, float* %8843, align 4, !tbaa !122, !noalias !137
  %8844 = call float @dx.op.binary.f32(i32 35, float %8786, float %8838)  ; FMax(a,b)
  %8845 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8800
  store float %8844, float* %8845, align 4, !tbaa !122, !noalias !137
  %8846 = add nsw i32 %8799, 1
  br label %8847

; <label>:8847                                    ; preds = %8841, %8837
  %8848 = phi i32 [ %8846, %8841 ], [ %8799, %8837 ]
  %8849 = add nuw nsw i32 %8800, 1
  %8850 = icmp eq i32 %8849, %8655
  br i1 %8850, label %8851, label %8798

; <label>:8851                                    ; preds = %8847
  %8852 = load float, float* %8792, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8853 = load float, float* %8791, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  %8854 = load float, float* %8790, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  %8855 = load float, float* %8795, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8856 = load float, float* %8794, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  %8857 = load float, float* %8793, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  br label %8858

; <label>:8858                                    ; preds = %8851, %8785
  %8859 = phi float [ -1.000000e+00, %8785 ], [ %8857, %8851 ]
  %8860 = phi float [ -1.000000e+00, %8785 ], [ %8856, %8851 ]
  %8861 = phi float [ -1.000000e+00, %8785 ], [ %8855, %8851 ]
  %8862 = phi float [ -1.000000e+00, %8785 ], [ %8854, %8851 ]
  %8863 = phi float [ -1.000000e+00, %8785 ], [ %8853, %8851 ]
  %8864 = phi float [ -1.000000e+00, %8785 ], [ %8852, %8851 ]
  %8865 = phi i32 [ 0, %8785 ], [ %8848, %8851 ]
  %8866 = call float @dx.op.binary.f32(i32 36, float %8863, float %8864)  ; FMin(a,b)
  %8867 = call float @dx.op.binary.f32(i32 36, float %8862, float %8866)  ; FMin(a,b)
  %8868 = call float @dx.op.binary.f32(i32 35, float %8862, float %8863)  ; FMax(a,b)
  %8869 = call float @dx.op.binary.f32(i32 36, float %8868, float %8864)  ; FMin(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8862, float %8863)  ; FMin(a,b)
  %8871 = call float @dx.op.binary.f32(i32 35, float %8870, float %8869)  ; FMax(a,b)
  %8872 = call float @dx.op.binary.f32(i32 35, float %8863, float %8864)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 35, float %8862, float %8872)  ; FMax(a,b)
  store float %8867, float* %8790, align 4, !tbaa !122, !alias.scope !161, !noalias !162
  store float %8871, float* %8791, align 4, !tbaa !122, !alias.scope !159, !noalias !160
  store float %8873, float* %8792, align 4, !tbaa !122, !alias.scope !153, !noalias !156
  %8874 = call float @dx.op.binary.f32(i32 36, float %8860, float %8861)  ; FMin(a,b)
  %8875 = call float @dx.op.binary.f32(i32 36, float %8859, float %8874)  ; FMin(a,b)
  %8876 = call float @dx.op.binary.f32(i32 35, float %8859, float %8860)  ; FMax(a,b)
  %8877 = call float @dx.op.binary.f32(i32 36, float %8876, float %8861)  ; FMin(a,b)
  %8878 = call float @dx.op.binary.f32(i32 36, float %8859, float %8860)  ; FMin(a,b)
  %8879 = call float @dx.op.binary.f32(i32 35, float %8878, float %8877)  ; FMax(a,b)
  %8880 = call float @dx.op.binary.f32(i32 35, float %8860, float %8861)  ; FMax(a,b)
  %8881 = call float @dx.op.binary.f32(i32 35, float %8859, float %8880)  ; FMax(a,b)
  store float %8875, float* %8793, align 4, !tbaa !122, !alias.scope !171, !noalias !172
  store float %8879, float* %8794, align 4, !tbaa !122, !alias.scope !169, !noalias !170
  store float %8881, float* %8795, align 4, !tbaa !122, !alias.scope !163, !noalias !166
  %8882 = sub nsw i32 3, %8865
  %8883 = icmp sgt i32 %8882, 2
  br i1 %8883, label %8884, label %8922

; <label>:8884                                    ; preds = %8858
  %8885 = icmp eq i32 %8653, 0
  %8886 = fsub fast float %8703, %8787
  %8887 = select i1 %8885, float %8886, float %8787
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 0
  %8894 = extractvalue %dx.types.CBufRet.f32 %8892, 1
  %8895 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8896 = extractvalue %dx.types.CBufRet.f32 %8892, 3
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 3
  %8899 = call float @dx.op.binary.f32(i32 36, float %8788, float %8898)  ; FMin(a,b)
  %8900 = fmul fast float %8896, %8887
  %8901 = call float @dx.op.unary.f32(i32 7, float %8900)  ; Saturate(value)
  %8902 = fsub fast float %8893, %8889
  %8903 = fsub fast float %8894, %8890
  %8904 = fsub fast float %8895, %8891
  %8905 = fmul fast float %8901, %8902
  %8906 = fmul fast float %8901, %8903
  %8907 = fmul fast float %8901, %8904
  %8908 = fadd fast float %8905, %8889
  %8909 = fadd fast float %8906, %8890
  %8910 = fadd fast float %8907, %8891
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 0
  %8913 = extractvalue %dx.types.CBufRet.f32 %8911, 1
  %8914 = fadd fast float %8913, %8912
  %8915 = call float @dx.op.unary.f32(i32 7, float %8914)  ; Saturate(value)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8911, 2
  %8917 = extractvalue %dx.types.CBufRet.f32 %8911, 3
  %8918 = fadd fast float %8917, %8916
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fmul fast float %8915, %8899
  %8921 = fmul fast float %8920, %8919
  br label %9004

; <label>:8922                                    ; preds = %8858
  %8923 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8882
  %8924 = load float, float* %8923, align 4, !tbaa !122, !noalias !137
  %8925 = fcmp fast olt float %8924, %8789
  %8926 = icmp sgt i32 %8865, 0
  %8927 = and i1 %8926, %8925
  br i1 %8927, label %8928, label %8965

; <label>:8928                                    ; preds = %8922
  br label %8929

; <label>:8929                                    ; preds = %8958, %8928
  %8930 = phi float [ %8959, %8958 ], [ %8787, %8928 ]
  %8931 = phi float [ %8960, %8958 ], [ %8788, %8928 ]
  %8932 = phi float [ %8940, %8958 ], [ %8924, %8928 ]
  %8933 = phi i32 [ %8937, %8958 ], [ %8882, %8928 ]
  %8934 = getelementptr inbounds [3 x float], [3 x float]* %109, i32 0, i32 %8933
  %8935 = load float, float* %8934, align 4, !tbaa !122, !noalias !137
  %8936 = icmp slt i32 %8933, 2
  %8937 = add nsw i32 %8933, 1
  %8938 = getelementptr inbounds [3 x float], [3 x float]* %108, i32 0, i32 %8937
  %8939 = load float, float* %8938, align 4, !tbaa !122, !noalias !137
  %8940 = select i1 %8936, float %8939, float %8703
  %8941 = call float @dx.op.binary.f32(i32 36, float %8940, float %8935)  ; FMin(a,b)
  %8942 = call float @dx.op.binary.f32(i32 36, float %8789, float %8941)  ; FMin(a,b)
  %8943 = icmp eq i32 %8653, 0
  %8944 = fadd fast float %8942, %8932
  %8945 = fmul fast float %8944, %8634
  %8946 = fadd fast float %8945, %8647
  br i1 %8943, label %8952, label %8947

; <label>:8947                                    ; preds = %8929
  %8948 = fsub fast float %8942, %8932
  %8949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8948)  ; FMax(a,b)
  %8950 = fmul fast float %8949, %8946
  %8951 = fadd fast float %8950, %8931
  br label %8958

; <label>:8952                                    ; preds = %8929
  %8953 = fsub fast float %8932, %8942
  %8954 = call float @dx.op.unary.f32(i32 6, float %8953)  ; FAbs(value)
  %8955 = fadd fast float %8954, %8930
  %8956 = fmul fast float %8954, %8946
  %8957 = fsub fast float %8931, %8956
  br label %8958

; <label>:8958                                    ; preds = %8952, %8947
  %8959 = phi float [ %8949, %8947 ], [ %8955, %8952 ]
  %8960 = phi float [ %8951, %8947 ], [ %8957, %8952 ]
  %8961 = fcmp fast olt float %8940, %8789
  %8962 = icmp slt i32 %8937, 3
  %8963 = and i1 %8962, %8961
  br i1 %8963, label %8929, label %8964

; <label>:8964                                    ; preds = %8958
  br label %8965

; <label>:8965                                    ; preds = %8964, %8922
  %8966 = phi float [ %8787, %8922 ], [ %8959, %8964 ]
  %8967 = phi float [ %8788, %8922 ], [ %8960, %8964 ]
  %8968 = fsub fast float %8703, %8966
  %8969 = select i1 %8705, float %8966, float %8968
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = extractvalue %dx.types.CBufRet.f32 %8970, 1
  %8973 = extractvalue %dx.types.CBufRet.f32 %8970, 2
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = extractvalue %dx.types.CBufRet.f32 %8974, 1
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = extractvalue %dx.types.CBufRet.f32 %8974, 3
  %8979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8979, 3
  %8981 = call float @dx.op.binary.f32(i32 36, float %8967, float %8980)  ; FMin(a,b)
  %8982 = fmul fast float %8978, %8969
  %8983 = call float @dx.op.unary.f32(i32 7, float %8982)  ; Saturate(value)
  %8984 = fsub fast float %8975, %8971
  %8985 = fsub fast float %8976, %8972
  %8986 = fsub fast float %8977, %8973
  %8987 = fmul fast float %8983, %8984
  %8988 = fmul fast float %8983, %8985
  %8989 = fmul fast float %8983, %8986
  %8990 = fadd fast float %8987, %8971
  %8991 = fadd fast float %8988, %8972
  %8992 = fadd fast float %8989, %8973
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  %8995 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8996 = fadd fast float %8995, %8994
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8999 = extractvalue %dx.types.CBufRet.f32 %8993, 3
  %9000 = fadd fast float %8999, %8998
  %9001 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9002 = fmul fast float %8997, %8981
  %9003 = fmul fast float %9002, %9001
  br label %9004

; <label>:9004                                    ; preds = %8965, %8884, %8719, %8701, %8699
  %9005 = phi float [ %8728, %8719 ], [ %8887, %8884 ], [ %8969, %8965 ], [ 0.000000e+00, %8699 ], [ 0.000000e+00, %8701 ]
  %9006 = phi float [ %8762, %8719 ], [ %8921, %8884 ], [ %9003, %8965 ], [ 0.000000e+00, %8699 ], [ 0.000000e+00, %8701 ]
  %9007 = phi float [ %8749, %8719 ], [ %8908, %8884 ], [ %8990, %8965 ], [ 0.000000e+00, %8699 ], [ 0.000000e+00, %8701 ]
  %9008 = phi float [ %8750, %8719 ], [ %8909, %8884 ], [ %8991, %8965 ], [ 0.000000e+00, %8699 ], [ 0.000000e+00, %8701 ]
  %9009 = phi float [ %8751, %8719 ], [ %8910, %8884 ], [ %8992, %8965 ], [ 0.000000e+00, %8699 ], [ 0.000000e+00, %8701 ]
  %9010 = fmul fast float %8642, %9006
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 2
  %9013 = fsub fast float %8649, %9012
  %9014 = fcmp fast olt float %9010, -2.000000e+01
  %9015 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 2
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9020 = extractvalue %dx.types.CBufRet.f32 %9019, 2
  %9021 = fmul fast float %9018, %9013
  %9022 = call float @dx.op.unary.f32(i32 7, float %9021)  ; Saturate(value)
  %9023 = fsub fast float 1.000000e+00, %9022
  %9024 = fmul fast float %8634, 5.000000e-01
  %9025 = fadd fast float %9024, 5.000000e-01
  %9026 = call float @dx.op.unary.f32(i32 7, float %9025)  ; Saturate(value)
  %9027 = fsub fast float 1.000000e+00, %9026
  %9028 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9023)  ; FMax(a,b)
  %9029 = fdiv fast float %9027, %9028
  %9030 = fsub fast float %9013, %8591
  %9031 = call float @dx.op.unary.f32(i32 6, float %9030)  ; FAbs(value)
  %9032 = fmul fast float %9031, %9017
  %9033 = call float @dx.op.unary.f32(i32 7, float %9029)  ; Saturate(value)
  %9034 = fsub fast float 1.000000e+00, %9032
  %9035 = fmul fast float %9034, %9033
  %9036 = fadd fast float %9035, %9032
  %9037 = fmul fast float %9020, %9013
  %9038 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9039 = fsub fast float 1.000000e+00, %9036
  %9040 = fmul fast float %9039, %9038
  %9041 = fadd fast float %9040, %9036
  %9042 = call float @dx.op.unary.f32(i32 7, float %9041)  ; Saturate(value)
  %9043 = fadd fast float %9015, -1.000000e+00
  %9044 = select i1 %9014, float -1.000000e+00, float %9043
  %9045 = fmul fast float %9042, %9044
  %9046 = fadd fast float %9045, 1.000000e+00
  %9047 = fsub fast float -0.000000e+00, %9045
  %9048 = fmul fast float %9007, %9047
  %9049 = fmul fast float %9008, %9047
  %9050 = fmul fast float %9009, %9047
  br label %9051

; <label>:9051                                    ; preds = %9004, %8600
  %9052 = phi float [ %9005, %9004 ], [ 0.000000e+00, %8600 ]
  %9053 = phi float [ %9046, %9004 ], [ 1.000000e+00, %8600 ]
  %9054 = phi float [ %9048, %9004 ], [ 0.000000e+00, %8600 ]
  %9055 = phi float [ %9049, %9004 ], [ 0.000000e+00, %8600 ]
  %9056 = phi float [ %9050, %9004 ], [ 0.000000e+00, %8600 ]
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 1
  %9059 = fsub fast float 1.000000e+00, %9053
  %9060 = fmul fast float %9059, %8635
  %9061 = fmul fast float %9060, %9058
  %9062 = fsub fast float %8635, %9061
  br i1 %8628, label %9063, label %9092, !dx.controlflow.hints !173

; <label>:9063                                    ; preds = %9051
  %9064 = fmul fast float %8636, %8625
  %9065 = fadd fast float %9064, %8626
  %9066 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  %9067 = fmul fast float %8607, %9062
  %9068 = fsub fast float -0.000000e+00, %9067
  %9069 = fmul fast float %8608, %9062
  %9070 = fsub fast float -0.000000e+00, %9069
  %9071 = call float @dx.op.unary.f32(i32 21, float %9068)  ; Exp(value)
  %9072 = call float @dx.op.unary.f32(i32 21, float %9070)  ; Exp(value)
  %9073 = call float @dx.op.binary.f32(i32 35, float %8615, float %9071)  ; FMax(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float %8615, float %9072)  ; FMax(a,b)
  %9075 = fsub fast float %9074, %9073
  %9076 = fmul fast float %9075, %9066
  %9077 = fadd fast float %9076, %9073
  %9078 = call float @dx.op.unary.f32(i32 7, float %9077)  ; Saturate(value)
  %9079 = fsub fast float %8612, %8617
  %9080 = fsub fast float %8613, %8618
  %9081 = fsub fast float %8614, %8619
  %9082 = fmul fast float %9066, %9079
  %9083 = fmul fast float %9066, %9080
  %9084 = fmul fast float %9066, %9081
  %9085 = fadd fast float %9082, %8617
  %9086 = fadd fast float %9083, %8618
  %9087 = fadd fast float %9084, %8619
  %9088 = fsub fast float 1.000000e+00, %9078
  %9089 = fmul fast float %9088, %9085
  %9090 = fmul fast float %9088, %9086
  %9091 = fmul fast float %9088, %9087
  br label %9151

; <label>:9092                                    ; preds = %9051
  %9093 = fmul fast float %9062, %8624
  %9094 = call float @dx.op.unary.f32(i32 7, float %9093)  ; Saturate(value)
  %9095 = fsub fast float 2.000000e+00, %9094
  %9096 = fmul fast float %9094, 9.921875e-01
  %9097 = fmul fast float %9096, %9095
  %9098 = fadd fast float %9097, 3.906250e-03
  %9099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9098, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9100 = extractvalue %dx.types.ResRet.f32 %9099, 0
  %9101 = fsub fast float %9094, %9100
  %9102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9101)  ; FMax(a,b)
  %9103 = fmul fast float %8610, %8591
  %9104 = call float @dx.op.unary.f32(i32 6, float %9103)  ; FAbs(value)
  %9105 = fcmp fast ogt float %9104, 0x3EB0C6F7A0000000
  br i1 %9105, label %9106, label %9112, !dx.controlflow.hints !174

; <label>:9106                                    ; preds = %9092
  %9107 = fmul fast float %9103, 0xBFF7154760000000
  %9108 = call float @dx.op.unary.f32(i32 21, float %9107)  ; Exp(value)
  %9109 = fsub fast float 1.000000e+00, %9108
  %9110 = fdiv fast float %9109, %9103
  %9111 = fmul fast float %9110, %8620
  br label %9112

; <label>:9112                                    ; preds = %9106, %9092
  %9113 = phi float [ %9111, %9106 ], [ %8620, %9092 ]
  %9114 = fadd fast float %9113, %8622
  %9115 = fmul fast float %9114, %9102
  %9116 = fmul fast float %8607, %9115
  %9117 = fsub fast float -0.000000e+00, %9116
  %9118 = fmul fast float %8608, %9115
  %9119 = fsub fast float -0.000000e+00, %9118
  %9120 = fmul fast float %8609, %9115
  %9121 = fsub fast float -0.000000e+00, %9120
  %9122 = call float @dx.op.unary.f32(i32 21, float %9117)  ; Exp(value)
  %9123 = call float @dx.op.unary.f32(i32 21, float %9119)  ; Exp(value)
  %9124 = call float @dx.op.unary.f32(i32 21, float %9121)  ; Exp(value)
  %9125 = fmul fast float %8636, %8636
  %9126 = fadd fast float %9125, 1.000000e+00
  %9127 = fmul fast float %9126, 0x3FAE8EC8A0000000
  %9128 = fmul fast float %9127, %8617
  %9129 = fmul fast float %9127, %8618
  %9130 = fmul fast float %9127, %8619
  %9131 = fmul fast float %8636, %8615
  %9132 = fsub fast float 1.000000e+00, %9131
  %9133 = fmul fast float %8615, %8615
  %9134 = fsub fast float 1.000000e+00, %9133
  %9135 = fmul fast float %9134, 0x3FB45F3060000000
  %9136 = fmul fast float %9132, %9132
  %9137 = fdiv fast float 1.000000e+00, %9136
  %9138 = fmul fast float %9135, %9137
  %9139 = fmul fast float %9138, %8612
  %9140 = fmul fast float %9138, %8613
  %9141 = fmul fast float %9138, %8614
  %9142 = fadd fast float %9139, %9128
  %9143 = fadd fast float %9140, %9129
  %9144 = fadd fast float %9141, %9130
  %9145 = fsub fast float 1.000000e+00, %9122
  %9146 = fsub fast float 1.000000e+00, %9123
  %9147 = fsub fast float 1.000000e+00, %9124
  %9148 = fmul fast float %9142, %9145
  %9149 = fmul fast float %9143, %9146
  %9150 = fmul fast float %9144, %9147
  br label %9151

; <label>:9151                                    ; preds = %9112, %9063
  %9152 = phi float [ %9089, %9063 ], [ %9148, %9112 ]
  %9153 = phi float [ %9090, %9063 ], [ %9149, %9112 ]
  %9154 = phi float [ %9091, %9063 ], [ %9150, %9112 ]
  %9155 = phi float [ %9078, %9063 ], [ %9122, %9112 ]
  %9156 = phi float [ %9078, %9063 ], [ %9123, %9112 ]
  %9157 = phi float [ %9078, %9063 ], [ %9124, %9112 ]
  br i1 %8644, label %9158, label %9356, !dx.controlflow.hints !175

; <label>:9158                                    ; preds = %9151
  %9159 = extractvalue %dx.types.CBufRet.f32 %9057, 0
  %9160 = fmul fast float %9159, %9059
  %9161 = fsub fast float %9054, %9152
  %9162 = fsub fast float %9055, %9153
  %9163 = fsub fast float %9056, %9154
  %9164 = fmul fast float %9160, %9161
  %9165 = fmul fast float %9160, %9162
  %9166 = fmul fast float %9160, %9163
  %9167 = fadd fast float %9164, %9152
  %9168 = fadd fast float %9165, %9153
  %9169 = fadd fast float %9166, %9154
  %9170 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9155)  ; FMax(a,b)
  %9171 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9156)  ; FMax(a,b)
  %9172 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9157)  ; FMax(a,b)
  %9173 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9053)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 35, float %9052, float %9062)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9174)  ; FMax(a,b)
  %9176 = fdiv fast float %9052, %9175
  %9177 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  %9178 = fdiv fast float %9062, %9175
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fcmp fast une float %9173, 1.000000e+00
  br i1 %9180, label %9181, label %9194, !dx.controlflow.hints !176

; <label>:9181                                    ; preds = %9158
  %9182 = call float @dx.op.unary.f32(i32 23, float %9173)  ; Log(value)
  %9183 = fmul fast float %9182, 0x3FE62E4300000000
  %9184 = fmul fast float %9054, %9183
  %9185 = fsub fast float -0.000000e+00, %9184
  %9186 = fmul fast float %9055, %9183
  %9187 = fsub fast float -0.000000e+00, %9186
  %9188 = fmul fast float %9056, %9183
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fsub fast float 1.000000e+00, %9173
  %9191 = fdiv fast float %9185, %9190
  %9192 = fdiv fast float %9187, %9190
  %9193 = fdiv fast float %9189, %9190
  br label %9194

; <label>:9194                                    ; preds = %9181, %9158
  %9195 = phi float [ %9191, %9181 ], [ %9054, %9158 ]
  %9196 = phi float [ %9192, %9181 ], [ %9055, %9158 ]
  %9197 = phi float [ %9193, %9181 ], [ %9056, %9158 ]
  %9198 = phi float [ %9183, %9181 ], [ 0.000000e+00, %9158 ]
  %9199 = fcmp fast une float %9170, 1.000000e+00
  br i1 %9199, label %9200, label %9207, !dx.controlflow.hints !177

; <label>:9200                                    ; preds = %9194
  %9201 = call float @dx.op.unary.f32(i32 23, float %9170)  ; Log(value)
  %9202 = fmul fast float %9201, 0x3FE62E4300000000
  %9203 = fmul fast float %9167, %9202
  %9204 = fsub fast float -0.000000e+00, %9203
  %9205 = fsub fast float 1.000000e+00, %9170
  %9206 = fdiv fast float %9204, %9205
  br label %9207

; <label>:9207                                    ; preds = %9200, %9194
  %9208 = phi float [ %9206, %9200 ], [ %9167, %9194 ]
  %9209 = phi float [ %9202, %9200 ], [ 0.000000e+00, %9194 ]
  %9210 = fcmp fast une float %9171, 1.000000e+00
  br i1 %9210, label %9211, label %9218, !dx.controlflow.hints !177

; <label>:9211                                    ; preds = %9207
  %9212 = call float @dx.op.unary.f32(i32 23, float %9171)  ; Log(value)
  %9213 = fmul fast float %9212, 0x3FE62E4300000000
  %9214 = fmul fast float %9168, %9213
  %9215 = fsub fast float -0.000000e+00, %9214
  %9216 = fsub fast float 1.000000e+00, %9171
  %9217 = fdiv fast float %9215, %9216
  br label %9218

; <label>:9218                                    ; preds = %9211, %9207
  %9219 = phi float [ %9217, %9211 ], [ %9168, %9207 ]
  %9220 = phi float [ %9213, %9211 ], [ 0.000000e+00, %9207 ]
  %9221 = fcmp fast une float %9172, 1.000000e+00
  br i1 %9221, label %9222, label %9229, !dx.controlflow.hints !177

; <label>:9222                                    ; preds = %9218
  %9223 = call float @dx.op.unary.f32(i32 23, float %9172)  ; Log(value)
  %9224 = fmul fast float %9223, 0x3FE62E4300000000
  %9225 = fmul fast float %9169, %9224
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = fsub fast float 1.000000e+00, %9172
  %9228 = fdiv fast float %9226, %9227
  br label %9229

; <label>:9229                                    ; preds = %9222, %9218
  %9230 = phi float [ %9228, %9222 ], [ %9169, %9218 ]
  %9231 = phi float [ %9224, %9222 ], [ 0.000000e+00, %9218 ]
  %9232 = fmul fast float %9195, %9179
  %9233 = fmul fast float %9196, %9179
  %9234 = fmul fast float %9197, %9179
  %9235 = fmul fast float %9198, %9179
  %9236 = fmul fast float %9208, %9177
  %9237 = fmul fast float %9219, %9177
  %9238 = fmul fast float %9230, %9177
  %9239 = fmul fast float %9209, %9177
  %9240 = fmul fast float %9220, %9177
  %9241 = fmul fast float %9231, %9177
  %9242 = fadd fast float %9236, %9232
  %9243 = fadd fast float %9237, %9233
  %9244 = fadd fast float %9238, %9234
  %9245 = fadd fast float %9239, %9235
  %9246 = fadd fast float %9240, %9235
  %9247 = fadd fast float %9241, %9235
  %9248 = fcmp fast une float %9245, 0.000000e+00
  br i1 %9248, label %9249, label %9256, !dx.controlflow.hints !178

; <label>:9249                                    ; preds = %9229
  %9250 = fmul fast float %9245, 0x3FF7154760000000
  %9251 = call float @dx.op.unary.f32(i32 21, float %9250)  ; Exp(value)
  %9252 = fsub fast float 1.000000e+00, %9251
  %9253 = fmul fast float %9242, %9252
  %9254 = fsub fast float -0.000000e+00, %9253
  %9255 = fdiv fast float %9254, %9245
  br label %9256

; <label>:9256                                    ; preds = %9249, %9229
  %9257 = phi float [ %9251, %9249 ], [ 1.000000e+00, %9229 ]
  %9258 = phi float [ %9255, %9249 ], [ %9242, %9229 ]
  %9259 = fcmp fast une float %9246, 0.000000e+00
  br i1 %9259, label %9260, label %9267, !dx.controlflow.hints !178

; <label>:9260                                    ; preds = %9256
  %9261 = fmul fast float %9246, 0x3FF7154760000000
  %9262 = call float @dx.op.unary.f32(i32 21, float %9261)  ; Exp(value)
  %9263 = fsub fast float 1.000000e+00, %9262
  %9264 = fmul fast float %9243, %9263
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = fdiv fast float %9265, %9246
  br label %9267

; <label>:9267                                    ; preds = %9260, %9256
  %9268 = phi float [ %9262, %9260 ], [ 1.000000e+00, %9256 ]
  %9269 = phi float [ %9266, %9260 ], [ %9243, %9256 ]
  %9270 = fcmp fast une float %9247, 0.000000e+00
  br i1 %9270, label %9271, label %9278, !dx.controlflow.hints !178

; <label>:9271                                    ; preds = %9267
  %9272 = fmul fast float %9247, 0x3FF7154760000000
  %9273 = call float @dx.op.unary.f32(i32 21, float %9272)  ; Exp(value)
  %9274 = fsub fast float 1.000000e+00, %9273
  %9275 = fmul fast float %9244, %9274
  %9276 = fsub fast float -0.000000e+00, %9275
  %9277 = fdiv fast float %9276, %9247
  br label %9278

; <label>:9278                                    ; preds = %9271, %9267
  %9279 = phi float [ %9273, %9271 ], [ 1.000000e+00, %9267 ]
  %9280 = phi float [ %9277, %9271 ], [ %9244, %9267 ]
  %9281 = fcmp fast ogt float %9177, %9179
  br i1 %9281, label %9282, label %9302

; <label>:9282                                    ; preds = %9278
  %9283 = fsub fast float 1.000000e+00, %9179
  %9284 = fmul fast float %9195, %9283
  %9285 = fmul fast float %9196, %9283
  %9286 = fmul fast float %9197, %9283
  %9287 = fmul fast float %9198, %9283
  %9288 = fcmp fast une float %9287, 0.000000e+00
  br i1 %9288, label %9289, label %9340, !dx.controlflow.hints !179

; <label>:9289                                    ; preds = %9282
  %9290 = fmul fast float %9287, 0x3FF7154760000000
  %9291 = call float @dx.op.unary.f32(i32 21, float %9290)  ; Exp(value)
  %9292 = fsub fast float 1.000000e+00, %9291
  %9293 = fmul fast float %9284, %9292
  %9294 = fsub fast float -0.000000e+00, %9293
  %9295 = fmul fast float %9285, %9292
  %9296 = fsub fast float -0.000000e+00, %9295
  %9297 = fmul fast float %9286, %9292
  %9298 = fsub fast float -0.000000e+00, %9297
  %9299 = fdiv fast float %9294, %9287
  %9300 = fdiv fast float %9296, %9287
  %9301 = fdiv fast float %9298, %9287
  br label %9340

; <label>:9302                                    ; preds = %9278
  %9303 = fsub fast float 1.000000e+00, %9177
  %9304 = fmul fast float %9208, %9303
  %9305 = fmul fast float %9219, %9303
  %9306 = fmul fast float %9230, %9303
  %9307 = fmul fast float %9209, %9303
  %9308 = fmul fast float %9220, %9303
  %9309 = fmul fast float %9231, %9303
  %9310 = fcmp fast une float %9307, 0.000000e+00
  br i1 %9310, label %9311, label %9318, !dx.controlflow.hints !178

; <label>:9311                                    ; preds = %9302
  %9312 = fmul fast float %9307, 0x3FF7154760000000
  %9313 = call float @dx.op.unary.f32(i32 21, float %9312)  ; Exp(value)
  %9314 = fsub fast float 1.000000e+00, %9313
  %9315 = fmul fast float %9304, %9314
  %9316 = fsub fast float -0.000000e+00, %9315
  %9317 = fdiv fast float %9316, %9307
  br label %9318

; <label>:9318                                    ; preds = %9311, %9302
  %9319 = phi float [ %9317, %9311 ], [ %9304, %9302 ]
  %9320 = phi float [ %9313, %9311 ], [ 1.000000e+00, %9302 ]
  %9321 = fcmp fast une float %9308, 0.000000e+00
  br i1 %9321, label %9322, label %9329, !dx.controlflow.hints !178

; <label>:9322                                    ; preds = %9318
  %9323 = fmul fast float %9308, 0x3FF7154760000000
  %9324 = call float @dx.op.unary.f32(i32 21, float %9323)  ; Exp(value)
  %9325 = fsub fast float 1.000000e+00, %9324
  %9326 = fmul fast float %9305, %9325
  %9327 = fsub fast float -0.000000e+00, %9326
  %9328 = fdiv fast float %9327, %9308
  br label %9329

; <label>:9329                                    ; preds = %9322, %9318
  %9330 = phi float [ %9328, %9322 ], [ %9305, %9318 ]
  %9331 = phi float [ %9324, %9322 ], [ 1.000000e+00, %9318 ]
  %9332 = fcmp fast une float %9309, 0.000000e+00
  br i1 %9332, label %9333, label %9340, !dx.controlflow.hints !178

; <label>:9333                                    ; preds = %9329
  %9334 = fmul fast float %9309, 0x3FF7154760000000
  %9335 = call float @dx.op.unary.f32(i32 21, float %9334)  ; Exp(value)
  %9336 = fsub fast float 1.000000e+00, %9335
  %9337 = fmul fast float %9306, %9336
  %9338 = fsub fast float -0.000000e+00, %9337
  %9339 = fdiv fast float %9338, %9309
  br label %9340

; <label>:9340                                    ; preds = %9333, %9329, %9289, %9282
  %9341 = phi float [ %9339, %9333 ], [ %9301, %9289 ], [ %9286, %9282 ], [ %9306, %9329 ]
  %9342 = phi float [ %9330, %9333 ], [ %9300, %9289 ], [ %9285, %9282 ], [ %9330, %9329 ]
  %9343 = phi float [ %9319, %9333 ], [ %9299, %9289 ], [ %9284, %9282 ], [ %9319, %9329 ]
  %9344 = phi float [ %9335, %9333 ], [ %9291, %9289 ], [ 1.000000e+00, %9282 ], [ 1.000000e+00, %9329 ]
  %9345 = phi float [ %9331, %9333 ], [ %9291, %9289 ], [ 1.000000e+00, %9282 ], [ %9331, %9329 ]
  %9346 = phi float [ %9320, %9333 ], [ %9291, %9289 ], [ 1.000000e+00, %9282 ], [ %9320, %9329 ]
  %9347 = fmul fast float %9346, %9258
  %9348 = fmul fast float %9345, %9269
  %9349 = fmul fast float %9344, %9280
  %9350 = fadd fast float %9347, %9343
  %9351 = fadd fast float %9348, %9342
  %9352 = fadd fast float %9349, %9341
  %9353 = fmul fast float %9346, %9257
  %9354 = fmul fast float %9345, %9268
  %9355 = fmul fast float %9344, %9279
  br label %9356

; <label>:9356                                    ; preds = %9340, %9151
  %9357 = phi float [ %9355, %9340 ], [ %9157, %9151 ]
  %9358 = phi float [ %9354, %9340 ], [ %9156, %9151 ]
  %9359 = phi float [ %9353, %9340 ], [ %9155, %9151 ]
  %9360 = phi float [ %9352, %9340 ], [ %9154, %9151 ]
  %9361 = phi float [ %9351, %9340 ], [ %9153, %9151 ]
  %9362 = phi float [ %9350, %9340 ], [ %9152, %9151 ]
  %9363 = fmul fast float %9362, %8308
  %9364 = fmul fast float %9361, %8308
  %9365 = fmul fast float %9360, %8308
  %9366 = fmul fast float %9359, %8599
  %9367 = call float @dx.op.dot3.f32(i32 55, float %9359, float %9358, float %9357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9368 = call float @dx.op.dot3.f32(i32 55, float %9363, float %9364, float %9365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9369 = select i1 %260, float %9367, float %9359
  %9370 = select i1 %260, float %9367, float %9358
  %9371 = select i1 %260, float 1.000000e+00, float %9357
  %9372 = select i1 %260, float %9368, float %9363
  %9373 = select i1 %260, float 0.000000e+00, float %9364
  %9374 = select i1 %260, float 0.000000e+00, float %9365
  %9375 = fmul fast float %9369, %8593
  %9376 = fmul fast float %9370, %8594
  %9377 = fmul fast float %9371, %8595
  %9378 = fadd fast float %9375, %9372
  %9379 = fadd fast float %9376, %9373
  %9380 = fadd fast float %9374, %9377
  %9381 = fmul fast float %9369, %8596
  %9382 = fmul fast float %9370, %8597
  %9383 = fmul fast float %9371, %8598
  %9384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9385 = extractvalue %dx.types.CBufRet.i32 %9384, 0
  %9386 = icmp eq i32 %9385, 0
  br i1 %9386, label %9754, label %9387, !dx.controlflow.hints !180

; <label>:9387                                    ; preds = %9356
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9391 = fmul fast float %9389, %114
  %9392 = fmul fast float %9390, %115
  %9393 = fmul fast float %9391, 2.000000e+00
  %9394 = fmul fast float %9392, 2.000000e+00
  %9395 = fsub fast float 1.000000e+00, %9393
  %9396 = fsub fast float 1.000000e+00, %9394
  %9397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9398 = extractvalue %dx.types.CBufRet.f32 %9397, 0
  %9399 = extractvalue %dx.types.CBufRet.f32 %9397, 1
  %9400 = extractvalue %dx.types.CBufRet.f32 %9397, 2
  %9401 = fmul fast float %9395, %9398
  %9402 = fmul fast float %9395, %9399
  %9403 = fmul fast float %9395, %9400
  %9404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9405 = extractvalue %dx.types.CBufRet.f32 %9404, 0
  %9406 = extractvalue %dx.types.CBufRet.f32 %9404, 1
  %9407 = extractvalue %dx.types.CBufRet.f32 %9404, 2
  %9408 = fmul fast float %9396, %9405
  %9409 = fmul fast float %9396, %9406
  %9410 = fmul fast float %9396, %9407
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.CBufRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9415 = fadd fast float %9408, %9412
  %9416 = fadd fast float %9415, %9401
  %9417 = fadd fast float %9409, %9413
  %9418 = fadd fast float %9417, %9402
  %9419 = fadd fast float %9410, %9414
  %9420 = fadd fast float %9419, %9403
  %9421 = fmul fast float %9416, %8592
  %9422 = fmul fast float %9418, %8592
  %9423 = fmul fast float %9420, %8592
  %9424 = fmul fast float %9421, %9421
  %9425 = fmul fast float %9422, %9422
  %9426 = fadd fast float %9424, %9425
  %9427 = fmul fast float %9423, %9423
  %9428 = fadd fast float %9426, %9427
  %9429 = call float @dx.op.unary.f32(i32 24, float %9428)  ; Sqrt(value)
  %9430 = extractvalue %dx.types.CBufRet.f32 %8319, 0
  %9431 = fsub fast float %9429, %9430
  %9432 = extractvalue %dx.types.CBufRet.f32 %8319, 2
  %9433 = fmul fast float %9431, %9432
  %9434 = call float @dx.op.unary.f32(i32 7, float %9433)  ; Saturate(value)
  %9435 = fadd fast float %9434, -5.000000e-01
  %9436 = fmul fast float %9435, 2.000000e+00
  %9437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9437, 2
  %9439 = call float @dx.op.binary.f32(i32 36, float %9438, float %9436)  ; FMin(a,b)
  %9440 = fsub fast float -0.000000e+00, %9438
  %9441 = fcmp fast ogt float %9439, %9440
  br i1 %9441, label %9442, label %9754, !dx.controlflow.hints !181

; <label>:9442                                    ; preds = %9387
  %9443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9443, 3
  %9445 = fcmp fast ogt float %9444, 0.000000e+00
  br i1 %9445, label %9446, label %9521, !dx.controlflow.hints !182

; <label>:9446                                    ; preds = %9442
  %9447 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %9448 = extractvalue %dx.types.Dimensions %9447, 0
  %9449 = sitofp i32 %9448 to float
  %9450 = extractvalue %dx.types.Dimensions %9447, 1
  %9451 = sitofp i32 %9450 to float
  %9452 = fmul fast float %9391, %9449
  %9453 = fmul fast float %9392, %9451
  %9454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9455 = extractvalue %dx.types.CBufRet.f32 %9454, 1
  %9456 = fsub fast float -0.000000e+00, %9455
  %9457 = fptoui float %9456 to i32
  %9458 = fptoui float %9452 to i32
  %9459 = fptoui float %9453 to i32
  %9460 = and i32 %9457, 31
  %9461 = lshr i32 %9458, %9460
  %9462 = lshr i32 %9459, %9460
  %9463 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %9457, i32 %9461, i32 %9462, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9464 = extractvalue %dx.types.ResRet.f32 %9463, 0
  %9465 = fcmp fast olt float %9464, -1.000000e+00
  %9466 = fcmp fast ogt float %9464, -1.000000e+00
  %9467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9468 = extractvalue %dx.types.CBufRet.f32 %9467, 1
  %9469 = select i1 %9466, float %9468, float 1.000000e+00
  %9470 = fadd fast float %9464, 1.000000e+00
  %9471 = fmul fast float %9469, %9470
  %9472 = call float @dx.op.unary.f32(i32 6, float %9471)  ; FAbs(value)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9467, 3
  %9474 = fcmp fast oge float %9472, %9473
  %9475 = select i1 %9474, float 0x4197782600000000, float %9472
  %9476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.f32 %9476, 0
  %9478 = extractvalue %dx.types.CBufRet.f32 %9476, 1
  %9479 = extractvalue %dx.types.CBufRet.f32 %9476, 2
  %9480 = select i1 %9465, float %9477, float %9398
  %9481 = select i1 %9465, float %9478, float %9399
  %9482 = select i1 %9465, float %9479, float %9400
  %9483 = fmul fast float %9480, %9395
  %9484 = fmul fast float %9481, %9395
  %9485 = fmul fast float %9482, %9395
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9490 = select i1 %9465, float %9487, float %9405
  %9491 = select i1 %9465, float %9488, float %9406
  %9492 = select i1 %9465, float %9489, float %9407
  %9493 = fmul fast float %9490, %9396
  %9494 = fmul fast float %9491, %9396
  %9495 = fmul fast float %9492, %9396
  %9496 = fadd fast float %9493, %9483
  %9497 = fadd fast float %9494, %9484
  %9498 = fadd fast float %9495, %9485
  %9499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9500 = extractvalue %dx.types.CBufRet.f32 %9499, 0
  %9501 = extractvalue %dx.types.CBufRet.f32 %9499, 1
  %9502 = extractvalue %dx.types.CBufRet.f32 %9499, 2
  %9503 = select i1 %9465, float %9500, float %9412
  %9504 = select i1 %9465, float %9501, float %9413
  %9505 = select i1 %9465, float %9502, float %9414
  %9506 = fadd fast float %9496, %9503
  %9507 = fadd fast float %9497, %9504
  %9508 = fadd fast float %9498, %9505
  %9509 = fmul fast float %9506, %9475
  %9510 = fmul fast float %9507, %9475
  %9511 = fmul fast float %9508, %9475
  %9512 = fmul fast float %9509, %9509
  %9513 = fmul fast float %9510, %9510
  %9514 = fadd fast float %9512, %9513
  %9515 = fmul fast float %9511, %9511
  %9516 = fadd fast float %9514, %9515
  %9517 = call float @dx.op.unary.f32(i32 24, float %9516)  ; Sqrt(value)
  %9518 = fsub fast float %9517, %9430
  %9519 = fmul fast float %9518, %9432
  %9520 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  br label %9521

; <label>:9521                                    ; preds = %9446, %9442
  %9522 = phi float [ %9520, %9446 ], [ 1.000000e+00, %9442 ]
  %9523 = fmul fast float %9439, 5.000000e-01
  %9524 = fadd fast float %9523, 5.000000e-01
  %9525 = call float @dx.op.unary.f32(i32 22, float %9524)  ; Frc(value)
  %9526 = call float @dx.op.unary.f32(i32 27, float %9525)  ; Round_ni(value)
  %9527 = call float @dx.op.unary.f32(i32 22, float %9525)  ; Frc(value)
  %9528 = fmul fast float %9527, 2.000000e+00
  %9529 = fadd fast float %9528, -1.000000e+00
  %9530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9391, float %9392, float %9526, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9531 = extractvalue %dx.types.ResRet.f32 %9530, 0
  %9532 = extractvalue %dx.types.ResRet.f32 %9530, 1
  %9533 = extractvalue %dx.types.ResRet.f32 %9530, 2
  %9534 = extractvalue %dx.types.ResRet.f32 %9530, 3
  %9535 = fadd fast float %9531, -5.000000e-01
  %9536 = fadd fast float %9533, -5.000000e-01
  %9537 = fmul fast float %9535, 0xBFD5555560000000
  %9538 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9536, float %9537)  ; FMad(a,b,c)
  %9539 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9532, float 0.000000e+00)  ; FMad(a,b,c)
  %9540 = fadd fast float %9539, %9534
  %9541 = fmul fast float %9535, -7.500000e-01
  %9542 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9536, float %9541)  ; FMad(a,b,c)
  %9543 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9532, float 0.000000e+00)  ; FMad(a,b,c)
  %9544 = fadd fast float %9543, %9534
  %9545 = call float @dx.op.binary.f32(i32 35, float %9538, float -1.000000e+00)  ; FMax(a,b)
  %9546 = call float @dx.op.binary.f32(i32 35, float %9540, float -1.000000e+00)  ; FMax(a,b)
  %9547 = call float @dx.op.binary.f32(i32 35, float %9542, float -1.000000e+00)  ; FMax(a,b)
  %9548 = call float @dx.op.binary.f32(i32 35, float %9544, float -1.000000e+00)  ; FMax(a,b)
  %9549 = call float @dx.op.binary.f32(i32 36, float %9545, float 1.000000e+00)  ; FMin(a,b)
  %9550 = call float @dx.op.binary.f32(i32 36, float %9546, float 1.000000e+00)  ; FMin(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9547, float 1.000000e+00)  ; FMin(a,b)
  %9552 = call float @dx.op.binary.f32(i32 36, float %9548, float 1.000000e+00)  ; FMin(a,b)
  %9553 = fcmp fast olt float %9549, 0x3FEFFF8020000000
  br i1 %9553, label %9554, label %9669, !dx.controlflow.hints !183

; <label>:9554                                    ; preds = %9521
  %9555 = extractvalue %dx.types.CBufRet.f32 %9437, 3
  %9556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9557 = extractvalue %dx.types.CBufRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.CBufRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.CBufRet.f32 %9556, 2
  %9560 = extractvalue %dx.types.CBufRet.f32 %9556, 3
  %9561 = fsub fast float %9557, %9549
  %9562 = fsub fast float %9558, %9550
  %9563 = fsub fast float %9559, %9551
  %9564 = fsub fast float %9560, %9552
  %9565 = fmul fast float %9561, %9555
  %9566 = fmul fast float %9562, %9555
  %9567 = fmul fast float %9563, %9555
  %9568 = fmul fast float %9564, %9555
  %9569 = fadd fast float %9565, %9549
  %9570 = fadd fast float %9566, %9550
  %9571 = fsub fast float -0.000000e+00, %9570
  %9572 = fadd fast float %9567, %9551
  %9573 = fadd fast float %9568, %9552
  %9574 = fmul fast float %9569, %9569
  %9575 = fsub fast float %9570, %9574
  %9576 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9575)  ; FMax(a,b)
  %9577 = fdiv fast float 1.000000e+00, %9576
  %9578 = fmul fast float %9570, %9569
  %9579 = fsub fast float %9572, %9578
  %9580 = fsub fast float %9529, %9569
  %9581 = fmul fast float %9529, %9529
  %9582 = fsub fast float %9581, %9570
  %9583 = fmul fast float %9580, %9577
  %9584 = fmul fast float %9583, %9579
  %9585 = fsub fast float %9582, %9584
  %9586 = fmul fast float %9570, %9570
  %9587 = fsub fast float %9573, %9586
  %9588 = fmul fast float %9579, %9579
  %9589 = fmul fast float %9588, %9577
  %9590 = fsub fast float %9587, %9589
  %9591 = fdiv fast float %9585, %9590
  %9592 = fmul fast float %9579, %9591
  %9593 = fsub fast float %9580, %9592
  %9594 = fmul fast float %9593, %9577
  %9595 = fmul fast float %9594, %9569
  %9596 = fsub fast float 1.000000e+00, %9595
  %9597 = fmul fast float %9570, %9591
  %9598 = fsub fast float %9596, %9597
  %9599 = fmul fast float %9594, %9594
  %9600 = fmul fast float %9591, 4.000000e+00
  %9601 = fmul fast float %9600, %9598
  %9602 = fsub fast float %9599, %9601
  %9603 = call float @dx.op.unary.f32(i32 24, float %9602)  ; Sqrt(value)
  %9604 = fcmp fast oge float %9594, 0.000000e+00
  %9605 = fsub fast float -0.000000e+00, %9603
  %9606 = select i1 %9604, float %9605, float %9603
  %9607 = fsub fast float %9606, %9594
  %9608 = fdiv fast float %9607, %9591
  %9609 = fdiv fast float %9598, %9607
  %9610 = fmul fast float %9608, 5.000000e-01
  %9611 = fmul fast float %9609, 2.000000e+00
  %9612 = select i1 %9604, float %9610, float %9611
  %9613 = select i1 %9604, float %9611, float %9610
  %9614 = call float @dx.op.binary.f32(i32 35, float %9612, float %9613)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 36, float %9612, float %9613)  ; FMin(a,b)
  %9616 = fcmp fast ogt float %9529, %9615
  br i1 %9616, label %9617, label %9627

; <label>:9617                                    ; preds = %9554
  %9618 = fsub fast float %9529, %9615
  %9619 = fsub fast float %9614, %9615
  %9620 = fmul fast float %9618, %9619
  %9621 = fmul fast float %9614, %9529
  %9622 = fadd fast float %9614, %9529
  %9623 = fmul fast float %9622, %9569
  %9624 = fadd fast float %9621, %9570
  %9625 = fsub fast float %9624, %9623
  %9626 = fdiv fast float %9625, %9620
  br label %9627

; <label>:9627                                    ; preds = %9617, %9554
  %9628 = phi float [ %9626, %9617 ], [ 0.000000e+00, %9554 ]
  %9629 = fcmp fast ogt float %9529, %9614
  %9630 = fsub fast float %9529, %9614
  br i1 %9629, label %9631, label %9641

; <label>:9631                                    ; preds = %9627
  %9632 = fsub fast float %9614, %9615
  %9633 = fmul fast float %9632, %9630
  %9634 = fmul fast float %9615, %9529
  %9635 = fadd fast float %9615, %9529
  %9636 = fmul fast float %9635, %9569
  %9637 = fsub fast float %9571, %9634
  %9638 = fadd fast float %9637, %9636
  %9639 = fdiv fast float %9638, %9633
  %9640 = fadd fast float %9639, %9628
  br label %9641

; <label>:9641                                    ; preds = %9631, %9627
  %9642 = phi float [ %9640, %9631 ], [ %9628, %9627 ]
  %9643 = fsub fast float %9529, %9615
  %9644 = fmul fast float %9643, %9630
  %9645 = fmul fast float %9615, %9614
  %9646 = fadd fast float %9615, %9614
  %9647 = fmul fast float %9646, %9569
  %9648 = fadd fast float %9645, %9570
  %9649 = fsub fast float %9648, %9647
  %9650 = fdiv fast float %9649, %9644
  %9651 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9652 = fcmp fast oeq float %8320, 0.000000e+00
  %9653 = extractvalue %dx.types.CBufRet.f32 %9437, 0
  %9654 = fcmp fast oeq float %9653, 0.000000e+00
  %9655 = or i1 %9652, %9654
  %9656 = fmul fast float %9653, 2.000000e+00
  %9657 = fadd fast float %9438, %9439
  %9658 = fdiv fast float %9657, %9656
  %9659 = call float @dx.op.unary.f32(i32 7, float %9658)  ; Saturate(value)
  %9660 = fmul fast float %9659, 2.000000e+00
  %9661 = fsub fast float 3.000000e+00, %9660
  %9662 = fmul fast float %9659, %9659
  %9663 = fmul fast float %9662, %9661
  %9664 = select i1 %9655, float 1.000000e+00, float %9663
  %9665 = fmul fast float %9650, %8320
  %9666 = fadd fast float %9651, %9665
  %9667 = call float @dx.op.unary.f32(i32 7, float %9666)  ; Saturate(value)
  %9668 = fmul fast float %9664, %9667
  br label %9669

; <label>:9669                                    ; preds = %9641, %9521
  %9670 = phi float [ %9668, %9641 ], [ 0.000000e+00, %9521 ]
  %9671 = fsub fast float 1.000000e+00, %9670
  %9672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9391, float %9392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9673 = extractvalue %dx.types.ResRet.f32 %9672, 0
  %9674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.i32 %9674, 2
  %9676 = icmp eq i32 %9675, 0
  br i1 %9676, label %9682, label %9677

; <label>:9677                                    ; preds = %9669
  %9678 = call float @dx.op.unary.f32(i32 7, float %9670)  ; Saturate(value)
  %9679 = fadd fast float %9673, -1.000000e+00
  %9680 = fmul fast float %9678, %9679
  %9681 = fadd fast float %9680, 1.000000e+00
  br label %9682

; <label>:9682                                    ; preds = %9677, %9669
  %9683 = phi float [ %9681, %9677 ], [ %9671, %9669 ]
  br i1 %9445, label %9684, label %9702

; <label>:9684                                    ; preds = %9682
  %9685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9686 = extractvalue %dx.types.CBufRet.f32 %9685, 1
  %9687 = fsub fast float %9522, %9686
  %9688 = call float @dx.op.unary.f32(i32 7, float %9687)  ; Saturate(value)
  %9689 = fsub fast float %9522, %9444
  %9690 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9691 = fsub fast float %9688, %9690
  %9692 = fsub fast float %9524, %9690
  %9693 = fdiv fast float %9692, %9691
  %9694 = call float @dx.op.unary.f32(i32 7, float %9693)  ; Saturate(value)
  %9695 = fmul fast float %9694, 2.000000e+00
  %9696 = fsub fast float 3.000000e+00, %9695
  %9697 = fsub fast float %9673, %9683
  %9698 = fmul fast float %9694, %9694
  %9699 = fmul fast float %9698, %9697
  %9700 = fmul fast float %9699, %9696
  %9701 = fadd fast float %9700, %9683
  br label %9702

; <label>:9702                                    ; preds = %9684, %9682
  %9703 = phi float [ %9701, %9684 ], [ %9683, %9682 ]
  %9704 = call float @dx.op.binary.f32(i32 35, float %9673, float %9703)  ; FMax(a,b)
  %9705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.i32 %9705, 2
  %9707 = and i32 %9706, 1
  %9708 = icmp eq i32 %9707, 0
  %9709 = fcmp fast une float %9704, 1.000000e+00
  %9710 = and i1 %9709, %9708
  br i1 %9710, label %9711, label %9730

; <label>:9711                                    ; preds = %9702
  %9712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9391, float %9392, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9713 = extractvalue %dx.types.ResRet.f32 %9712, 0
  %9714 = extractvalue %dx.types.ResRet.f32 %9712, 1
  %9715 = extractvalue %dx.types.ResRet.f32 %9712, 2
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 1
  %9718 = fmul fast float %9717, %9713
  %9719 = fmul fast float %9717, %9714
  %9720 = fmul fast float %9717, %9715
  %9721 = fcmp fast ogt float %9673, 0x3FEFFF2E40000000
  %9722 = fsub fast float 1.000000e+00, %9704
  %9723 = fsub fast float 1.000000e+00, %9673
  %9724 = fdiv fast float %9722, %9723
  %9725 = call float @dx.op.unary.f32(i32 7, float %9724)  ; Saturate(value)
  %9726 = select i1 %9721, float 0.000000e+00, float %9725
  %9727 = fmul fast float %9718, %9726
  %9728 = fmul fast float %9719, %9726
  %9729 = fmul fast float %9720, %9726
  br label %9730

; <label>:9730                                    ; preds = %9711, %9702
  %9731 = phi float [ 0.000000e+00, %9702 ], [ %9727, %9711 ]
  %9732 = phi float [ 0.000000e+00, %9702 ], [ %9728, %9711 ]
  %9733 = phi float [ 0.000000e+00, %9702 ], [ %9729, %9711 ]
  %9734 = fmul fast float %9731, %8308
  %9735 = fmul fast float %9732, %8308
  %9736 = fmul fast float %9733, %8308
  %9737 = fmul fast float %9704, %9366
  %9738 = call float @dx.op.dot3.f32(i32 55, float %9704, float %9704, float %9704, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9739 = call float @dx.op.dot3.f32(i32 55, float %9734, float %9735, float %9736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9740 = select i1 %260, float %9738, float %9704
  %9741 = select i1 %260, float 1.000000e+00, float %9704
  %9742 = select i1 %260, float %9739, float %9734
  %9743 = select i1 %260, float 0.000000e+00, float %9735
  %9744 = select i1 %260, float 0.000000e+00, float %9736
  %9745 = fmul fast float %9740, %9378
  %9746 = fmul fast float %9740, %9379
  %9747 = fmul fast float %9741, %9380
  %9748 = fadd fast float %9745, %9742
  %9749 = fadd fast float %9746, %9743
  %9750 = fadd fast float %9744, %9747
  %9751 = fmul fast float %9740, %9381
  %9752 = fmul fast float %9740, %9382
  %9753 = fmul fast float %9741, %9383
  br label %9754

; <label>:9754                                    ; preds = %9730, %9387, %9356, %8588
  %9755 = phi float [ %8593, %8588 ], [ %9378, %9356 ], [ %9748, %9730 ], [ %9378, %9387 ]
  %9756 = phi float [ %8594, %8588 ], [ %9379, %9356 ], [ %9749, %9730 ], [ %9379, %9387 ]
  %9757 = phi float [ %8595, %8588 ], [ %9380, %9356 ], [ %9750, %9730 ], [ %9380, %9387 ]
  %9758 = phi float [ %8596, %8588 ], [ %9381, %9356 ], [ %9751, %9730 ], [ %9381, %9387 ]
  %9759 = phi float [ %8597, %8588 ], [ %9382, %9356 ], [ %9752, %9730 ], [ %9382, %9387 ]
  %9760 = phi float [ %8598, %8588 ], [ %9383, %9356 ], [ %9753, %9730 ], [ %9383, %9387 ]
  %9761 = phi float [ %8599, %8588 ], [ %9366, %9356 ], [ %9737, %9730 ], [ %9366, %9387 ]
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 2
  %9764 = extractvalue %dx.types.CBufRet.f32 %9762, 3
  %9765 = fmul fast float %9763, %114
  %9766 = fmul fast float %9764, %115
  %9767 = call float @dx.op.unary.f32(i32 7, float %9765)  ; Saturate(value)
  %9768 = call float @dx.op.unary.f32(i32 7, float %9766)  ; Saturate(value)
  %9769 = select i1 %8330, i32 2, i32 0
  %9770 = or i32 %9769, 1
  %9771 = uitofp i32 %9770 to float
  %9772 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9767, float %9768, float %9771, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9773 = extractvalue %dx.types.ResRet.f32 %9772, 0
  %9774 = extractvalue %dx.types.ResRet.f32 %9772, 1
  %9775 = extractvalue %dx.types.ResRet.f32 %9772, 2
  %9776 = extractvalue %dx.types.ResRet.f32 %9772, 3
  %9777 = add nuw nsw i32 %9769, 2
  %9778 = uitofp i32 %9777 to float
  %9779 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9767, float %9768, float %9778, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9780 = extractvalue %dx.types.ResRet.f32 %9779, 0
  %9781 = extractvalue %dx.types.ResRet.f32 %9779, 1
  %9782 = extractvalue %dx.types.ResRet.f32 %9779, 2
  %9783 = extractvalue %dx.types.ResRet.f32 %9779, 3
  %9784 = call float @dx.op.binary.f32(i32 35, float %9774, float %9775)  ; FMax(a,b)
  %9785 = call float @dx.op.binary.f32(i32 35, float %9773, float %9784)  ; FMax(a,b)
  %9786 = call float @dx.op.binary.f32(i32 35, float %9785, float %9776)  ; FMax(a,b)
  %9787 = call float @dx.op.binary.f32(i32 36, float %9781, float %9782)  ; FMin(a,b)
  %9788 = call float @dx.op.binary.f32(i32 36, float %9780, float %9787)  ; FMin(a,b)
  %9789 = call float @dx.op.binary.f32(i32 36, float %9788, float %9783)  ; FMin(a,b)
  %9790 = fmul fast float %9786, 2.550000e+02
  %9791 = fadd fast float %9790, 0x3F70101020000000
  %9792 = fptoui float %9791 to i32
  %9793 = fmul fast float %9789, 2.550000e+02
  %9794 = fadd fast float %9793, 0x3F70101020000000
  %9795 = fptoui float %9794 to i32
  %9796 = icmp ult i32 %9792, %9795
  br i1 %9796, label %9797, label %9966

; <label>:9797                                    ; preds = %9754
  %9798 = fcmp fast ogt float %100, 9.843750e-01
  %9799 = fadd fast float %8592, -4.000000e+00
  %9800 = select i1 %9798, float -4.000000e+00, float %9799
  %9801 = call float @dx.op.binary.f32(i32 35, float %9800, float 0.000000e+00)  ; FMax(a,b)
  %9802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9803 = extractvalue %dx.types.CBufRet.f32 %9802, 0
  %9804 = fadd fast float %9803, %9801
  %9805 = extractvalue %dx.types.CBufRet.f32 %9802, 2
  %9806 = fmul fast float %9804, %9805
  %9807 = call float @dx.op.unary.f32(i32 23, float %9806)  ; Log(value)
  %9808 = extractvalue %dx.types.CBufRet.f32 %9802, 3
  %9809 = fmul fast float %9808, %9807
  %9810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.f32 %9810, 2
  %9812 = fmul fast float %9809, %9811
  %9813 = call float @dx.op.unary.f32(i32 7, float %9812)  ; Saturate(value)
  %9814 = uitofp i32 %9792 to float
  %9815 = uitofp i32 %9795 to float
  %9816 = fadd fast float %9814, 5.000000e-01
  %9817 = fadd fast float %9815, 5.000000e-01
  %9818 = fmul fast float %9811, %9816
  %9819 = fmul fast float %9811, %9817
  %9820 = fadd fast float %9818, 0x3F0FFB4800000000
  %9821 = fadd fast float %9819, 0xBF0FFB4800000000
  %9822 = call float @dx.op.binary.f32(i32 35, float %9813, float %9820)  ; FMax(a,b)
  %9823 = call float @dx.op.binary.f32(i32 36, float %9822, float %9821)  ; FMin(a,b)
  %9824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9825 = extractvalue %dx.types.CBufRet.f32 %9824, 1
  %9826 = extractvalue %dx.types.CBufRet.f32 %9824, 2
  %9827 = extractvalue %dx.types.CBufRet.f32 %9824, 0
  %9828 = select i1 %8330, float %9827, float 0.000000e+00
  %9829 = fmul fast float %9825, %9823
  %9830 = fadd fast float %9828, %9829
  %9831 = fadd fast float %9828, %9826
  %9832 = fsub fast float %9825, %9826
  %9833 = fadd fast float %9832, %9828
  %9834 = call float @dx.op.binary.f32(i32 35, float %9830, float %9831)  ; FMax(a,b)
  %9835 = call float @dx.op.binary.f32(i32 36, float %9834, float %9833)  ; FMin(a,b)
  %9836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9767, float %9768, float %9835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9837 = extractvalue %dx.types.ResRet.f32 %9836, 0
  %9838 = extractvalue %dx.types.ResRet.f32 %9836, 1
  %9839 = extractvalue %dx.types.ResRet.f32 %9836, 2
  %9840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.i32 %9840, 0
  %9842 = extractvalue %dx.types.CBufRet.i32 %9840, 1
  %9843 = uitofp i32 %9841 to float
  %9844 = uitofp i32 %9842 to float
  %9845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9846 = extractvalue %dx.types.CBufRet.f32 %9845, 0
  %9847 = extractvalue %dx.types.CBufRet.f32 %9845, 1
  %9848 = fmul fast float %9843, %9767
  %9849 = fmul fast float %9844, %9768
  %9850 = fadd fast float %9848, -5.000000e-01
  %9851 = fadd fast float %9849, -5.000000e-01
  %9852 = call float @dx.op.unary.f32(i32 22, float %9850)  ; Frc(value)
  %9853 = call float @dx.op.unary.f32(i32 22, float %9851)  ; Frc(value)
  %9854 = fmul fast float %9852, %9852
  %9855 = fmul fast float %9854, %9852
  %9856 = fsub fast float 3.000000e+00, %9852
  %9857 = fmul fast float %9854, %9856
  %9858 = fmul fast float %9852, 3.000000e+00
  %9859 = fmul fast float %9855, 3.000000e+00
  %9860 = fmul fast float %9854, 6.000000e+00
  %9861 = fsub fast float %9859, %9860
  %9862 = fadd fast float %9861, 4.000000e+00
  %9863 = fmul fast float %9862, 0x3FC5555560000000
  %9864 = fmul fast float %9855, -3.000000e+00
  %9865 = fadd fast float %9854, %9852
  %9866 = fmul fast float %9865, 3.000000e+00
  %9867 = fadd fast float %9864, 1.000000e+00
  %9868 = fadd fast float %9867, %9866
  %9869 = fmul fast float %9855, 0x3FC5555560000000
  %9870 = fmul fast float %9853, %9853
  %9871 = fmul fast float %9870, %9853
  %9872 = fsub fast float 3.000000e+00, %9853
  %9873 = fmul fast float %9870, %9872
  %9874 = fmul fast float %9853, 3.000000e+00
  %9875 = fmul fast float %9871, 3.000000e+00
  %9876 = fmul fast float %9870, 6.000000e+00
  %9877 = fsub fast float %9875, %9876
  %9878 = fadd fast float %9877, 4.000000e+00
  %9879 = fmul fast float %9878, 0x3FC5555560000000
  %9880 = fmul fast float %9871, -3.000000e+00
  %9881 = fadd fast float %9870, %9853
  %9882 = fmul fast float %9881, 3.000000e+00
  %9883 = fadd fast float %9880, 1.000000e+00
  %9884 = fadd fast float %9883, %9882
  %9885 = fmul fast float %9871, 0x3FC5555560000000
  %9886 = fadd fast float %9852, 1.000000e+00
  %9887 = fsub fast float 1.000000e+00, %9858
  %9888 = fadd fast float %9887, %9857
  %9889 = fadd fast float %9888, %9862
  %9890 = fmul fast float %9889, 0x3FC5555560000000
  %9891 = fdiv fast float %9863, %9890
  %9892 = fsub fast float %9886, %9891
  %9893 = fsub fast float 1.000000e+00, %9852
  %9894 = fadd fast float %9868, %9855
  %9895 = fmul fast float %9894, 0x3FC5555560000000
  %9896 = fdiv fast float %9869, %9895
  %9897 = fadd fast float %9893, %9896
  %9898 = fadd fast float %9853, 1.000000e+00
  %9899 = fsub fast float 1.000000e+00, %9874
  %9900 = fadd fast float %9899, %9873
  %9901 = fadd fast float %9900, %9878
  %9902 = fmul fast float %9901, 0x3FC5555560000000
  %9903 = fdiv fast float %9879, %9902
  %9904 = fsub fast float %9898, %9903
  %9905 = fsub fast float 1.000000e+00, %9853
  %9906 = fadd fast float %9884, %9871
  %9907 = fmul fast float %9906, 0x3FC5555560000000
  %9908 = fdiv fast float %9885, %9907
  %9909 = fadd fast float %9908, %9905
  %9910 = fmul fast float %9892, %9846
  %9911 = fsub fast float %9767, %9910
  %9912 = fmul fast float %9897, %9846
  %9913 = fadd fast float %9912, %9767
  %9914 = fmul fast float %9909, %9847
  %9915 = fadd fast float %9914, %9768
  %9916 = fmul fast float %9904, %9847
  %9917 = fsub fast float %9768, %9916
  %9918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9911, float %9917, float %9835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9919 = extractvalue %dx.types.ResRet.f32 %9918, 0
  %9920 = extractvalue %dx.types.ResRet.f32 %9918, 1
  %9921 = extractvalue %dx.types.ResRet.f32 %9918, 2
  %9922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9913, float %9917, float %9835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9923 = extractvalue %dx.types.ResRet.f32 %9922, 0
  %9924 = extractvalue %dx.types.ResRet.f32 %9922, 1
  %9925 = extractvalue %dx.types.ResRet.f32 %9922, 2
  %9926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9911, float %9915, float %9835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9927 = extractvalue %dx.types.ResRet.f32 %9926, 0
  %9928 = extractvalue %dx.types.ResRet.f32 %9926, 1
  %9929 = extractvalue %dx.types.ResRet.f32 %9926, 2
  %9930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9913, float %9915, float %9835, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9931 = extractvalue %dx.types.ResRet.f32 %9930, 0
  %9932 = extractvalue %dx.types.ResRet.f32 %9930, 1
  %9933 = extractvalue %dx.types.ResRet.f32 %9930, 2
  %9934 = fsub fast float %9927, %9919
  %9935 = fsub fast float %9928, %9920
  %9936 = fsub fast float %9929, %9921
  %9937 = fmul fast float %9934, %9907
  %9938 = fmul fast float %9935, %9907
  %9939 = fmul fast float %9936, %9907
  %9940 = fadd fast float %9937, %9919
  %9941 = fadd fast float %9938, %9920
  %9942 = fadd fast float %9939, %9921
  %9943 = fsub fast float %9931, %9923
  %9944 = fsub fast float %9932, %9924
  %9945 = fsub fast float %9933, %9925
  %9946 = fmul fast float %9943, %9907
  %9947 = fmul fast float %9944, %9907
  %9948 = fmul fast float %9945, %9907
  %9949 = fsub fast float %9923, %9940
  %9950 = fadd fast float %9949, %9946
  %9951 = fsub fast float %9924, %9941
  %9952 = fadd fast float %9951, %9947
  %9953 = fsub fast float %9925, %9942
  %9954 = fadd fast float %9953, %9948
  %9955 = fmul fast float %9950, %9895
  %9956 = fmul fast float %9952, %9895
  %9957 = fmul fast float %9954, %9895
  %9958 = fadd fast float %9955, %9940
  %9959 = fadd fast float %9956, %9941
  %9960 = fadd fast float %9957, %9942
  %9961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9962 = extractvalue %dx.types.CBufRet.f32 %9961, 1
  %9963 = fmul fast float %9958, %9962
  %9964 = fmul fast float %9959, %9962
  %9965 = fmul fast float %9960, %9962
  br label %9966

; <label>:9966                                    ; preds = %9797, %9754
  %9967 = phi float [ %9837, %9797 ], [ 1.000000e+00, %9754 ]
  %9968 = phi float [ %9838, %9797 ], [ 1.000000e+00, %9754 ]
  %9969 = phi float [ %9839, %9797 ], [ 1.000000e+00, %9754 ]
  %9970 = phi float [ %9963, %9797 ], [ 0.000000e+00, %9754 ]
  %9971 = phi float [ %9964, %9797 ], [ 0.000000e+00, %9754 ]
  %9972 = phi float [ %9965, %9797 ], [ 0.000000e+00, %9754 ]
  %9973 = fmul fast float %9970, %8308
  %9974 = fmul fast float %9971, %8308
  %9975 = fmul fast float %9972, %8308
  %9976 = fmul fast float %9967, %9761
  %9977 = call float @dx.op.dot3.f32(i32 55, float %9967, float %9968, float %9969, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9978 = call float @dx.op.dot3.f32(i32 55, float %9973, float %9974, float %9975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9979 = select i1 %260, float %9977, float %9967
  %9980 = select i1 %260, float %9977, float %9968
  %9981 = select i1 %260, float 1.000000e+00, float %9969
  %9982 = select i1 %260, float %9978, float %9973
  %9983 = select i1 %260, float 0.000000e+00, float %9974
  %9984 = select i1 %260, float 0.000000e+00, float %9975
  %9985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9986 = extractvalue %dx.types.CBufRet.i32 %9985, 3
  %9987 = and i32 %9986, 3
  %9988 = icmp ne i32 %9987, 0
  %9989 = and i32 %9986, 4
  %9990 = icmp ne i32 %9989, 0
  %9991 = and i1 %9988, %9990
  %9992 = and i1 %260, %9991
  br i1 %9992, label %9993, label %9999

; <label>:9993                                    ; preds = %9966
  %9994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9995 = extractvalue %dx.types.CBufRet.f32 %9994, 1
  %9996 = fadd fast float %9976, -1.000000e+00
  %9997 = fmul fast float %9995, %9996
  %9998 = fadd fast float %9997, 1.000000e+00
  br label %9999

; <label>:9999                                    ; preds = %9993, %9966
  %10000 = phi float [ %9998, %9993 ], [ %9976, %9966 ]
  %10001 = fadd fast float %9758, %9755
  %10002 = fmul fast float %9979, %10001
  %10003 = fadd fast float %10002, %9982
  %10004 = fadd fast float %9759, %9756
  %10005 = fmul fast float %9980, %10004
  %10006 = fadd fast float %10005, %9983
  %10007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10008 = extractvalue %dx.types.CBufRet.f32 %10007, 0
  br i1 %260, label %10009, label %10033

; <label>:10009                                   ; preds = %9999
  %10010 = fadd fast float %10003, %10006
  %10011 = fmul fast float %10008, %10010
  %10012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10013 = extractvalue %dx.types.CBufRet.f32 %10012, 3
  %10014 = extractvalue %dx.types.CBufRet.f32 %8312, 1
  %10015 = fsub fast float %8317, %8311
  %10016 = fadd fast float %10015, %8318
  %10017 = fsub fast float %10016, %10014
  %10018 = extractvalue %dx.types.CBufRet.f32 %8312, 2
  %10019 = fmul fast float %10017, %10018
  %10020 = call float @dx.op.unary.f32(i32 7, float %10019)  ; Saturate(value)
  %10021 = fsub fast float %10020, %10013
  %10022 = fmul fast float %10021, %10000
  %10023 = fadd fast float %10022, %10013
  %10024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10025 = extractvalue %dx.types.CBufRet.f32 %10024, 0
  %10026 = fsub fast float %10023, %10025
  %10027 = fmul fast float %10026, 1.000000e+01
  %10028 = call float @dx.op.unary.f32(i32 7, float %10027)  ; Saturate(value)
  %10029 = fsub fast float %4001, %8308
  %10030 = fmul fast float %10028, %10029
  %10031 = fadd fast float %10030, %8308
  %10032 = fmul fast float %10031, %10023
  br label %10057

; <label>:10033                                   ; preds = %9999
  %10034 = fadd fast float %9760, %9757
  %10035 = fmul fast float %9981, %10034
  %10036 = fadd fast float %10035, %9984
  %10037 = fmul fast float %10008, %10003
  %10038 = fmul fast float %10008, %10006
  %10039 = fmul fast float %10008, %10036
  %10040 = call float @dx.op.binary.f32(i32 35, float %10038, float %10039)  ; FMax(a,b)
  %10041 = call float @dx.op.binary.f32(i32 35, float %10037, float %10040)  ; FMax(a,b)
  %10042 = call float @dx.op.binary.f32(i32 35, float %10041, float %8308)  ; FMax(a,b)
  %10043 = fcmp fast ugt float %10042, 0x3F10000000000000
  br i1 %10043, label %10045, label %10044

; <label>:10044                                   ; preds = %10033
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10045

; <label>:10045                                   ; preds = %10044, %10033
  %10046 = add i32 %60, 356
  %10047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10046, i32 undef)  ; BufferLoad(srv,index,wot)
  %10048 = extractvalue %dx.types.ResRet.i32 %10047, 0
  %10049 = and i32 %10048, 32
  %10050 = icmp eq i32 %10049, 0
  br i1 %10050, label %10057, label %10051

; <label>:10051                                   ; preds = %10045
  %10052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10053 = extractvalue %dx.types.CBufRet.f32 %10052, 0
  %10054 = fmul fast float %10053, 0x3FE99999A0000000
  %10055 = fadd fast float %10053, %10037
  %10056 = fadd fast float %10054, %10039
  br label %10057

; <label>:10057                                   ; preds = %10051, %10045, %10009
  %10058 = phi float [ %10011, %10009 ], [ %10055, %10051 ], [ %10037, %10045 ]
  %10059 = phi float [ %10032, %10009 ], [ %10038, %10051 ], [ %10038, %10045 ]
  %10060 = phi float [ %10031, %10009 ], [ %10056, %10051 ], [ %10039, %10045 ]
  %10061 = phi float [ %10031, %10009 ], [ %8308, %10051 ], [ %8308, %10045 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10062 = call float @dx.op.binary.f32(i32 36, float %10058, float 3.225500e+04)  ; FMin(a,b)
  %10063 = call float @dx.op.binary.f32(i32 36, float %10059, float 3.225500e+04)  ; FMin(a,b)
  %10064 = call float @dx.op.binary.f32(i32 36, float %10060, float 3.225500e+04)  ; FMin(a,b)
  %10065 = call float @dx.op.binary.f32(i32 36, float %10061, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10062)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10063)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10064)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10065)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

