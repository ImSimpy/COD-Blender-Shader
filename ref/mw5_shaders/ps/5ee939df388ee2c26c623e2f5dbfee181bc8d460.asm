;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORD                 0   xy          2     NONE   float       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 8c01b5a2b36c688f24354b81f196dd0d
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
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
;   [112 x i8] (type annotation not present)
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
;                                   texture     f32     2darray      T0             t0     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1 }
;   output 1 depends on inputs: { 0, 1 }
;   output 2 depends on inputs: { 0, 1 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 0
  %8 = icmp eq i32 %7, 2
  %9 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.f32 %9, 2
  %11 = extractvalue %dx.types.CBufRet.f32 %9, 3
  br i1 %8, label %12, label %26

; <label>:12                                      ; preds = %0
  %13 = fmul fast float %4, 2.000000e+00
  %14 = fmul fast float %5, 2.000000e+00
  %15 = fmul fast float %13, %10
  %16 = fmul fast float %14, %11
  %17 = call float @dx.op.unary.f32(i32 29, float %15)  ; Round_z(value)
  %18 = fsub fast float %15, %17
  %19 = fptosi float %17 to i32
  %20 = call float @dx.op.unary.f32(i32 29, float %16)  ; Round_z(value)
  %21 = fsub fast float %16, %20
  %22 = fptosi float %20 to i32
  %23 = shl i32 %22, 1
  %24 = add i32 %19, 1
  %25 = add i32 %24, %23
  br label %30

; <label>:26                                      ; preds = %0
  %27 = add i32 %7, -3
  %28 = fmul fast float %10, %4
  %29 = fmul fast float %11, %5
  br label %30

; <label>:30                                      ; preds = %26, %12
  %31 = phi i32 [ %25, %12 ], [ %27, %26 ]
  %32 = phi float [ %18, %12 ], [ %28, %26 ]
  %33 = phi float [ %21, %12 ], [ %29, %26 ]
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = uitofp i32 %35 to float
  %38 = uitofp i32 %36 to float
  %39 = fmul fast float %37, %32
  %40 = fmul fast float %38, %33
  %41 = fptoui float %39 to i32
  %42 = fptoui float %40 to i32
  %43 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %41, i32 %42, i32 %31, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = fmul fast float %44, 2.550000e+02
  %46 = fadd fast float %45, 0x3F70101020000000
  %47 = fptoui float %46 to i32
  %48 = add i32 %47, -1
  %49 = uitofp i32 %48 to float
  %50 = fmul fast float %49, 1.562500e-02
  %51 = fadd fast float %50, -1.000000e+00
  %52 = call float @dx.op.unary.f32(i32 7, float %51)  ; Saturate(value)
  %53 = call float @dx.op.unary.f32(i32 7, float %50)  ; Saturate(value)
  %54 = fsub fast float 1.000000e+00, %53
  %55 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %56 = fsub fast float 1.000000e+00, %55
  %57 = select i1 %8, i32 4, i32 2
  %58 = sub nsw i32 0, %57
  %59 = and i32 %41, %58
  %60 = and i32 %42, %58
  %61 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %59, i32 %60, i32 %31, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = fmul fast float %62, 2.550000e+02
  %64 = fadd fast float %63, 0x3F70101020000000
  %65 = fptoui float %64 to i32
  %66 = uitofp i32 %59 to float
  %67 = uitofp i32 %60 to float
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = fmul fast float %66, %69
  %72 = fmul fast float %67, %70
  %73 = uitofp i32 %57 to float
  %74 = fdiv fast float 3.000000e+00, %73
  %75 = fsub fast float %32, %71
  %76 = fsub fast float %33, %72
  %77 = fmul fast float %75, %74
  %78 = fmul fast float %76, %74
  %79 = fmul fast float %77, %37
  %80 = fmul fast float %78, %38
  %81 = fcmp fast olt float %80, 0.000000e+00
  %82 = fcmp fast oge float %80, 1.000000e+00
  %83 = or i1 %81, %82
  br i1 %83, label %182, label %84

; <label>:84                                      ; preds = %30
  %85 = call float @dx.op.unary.f32(i32 27, float %79)  ; Round_ni(value)
  %86 = fptosi float %85 to i32
  %87 = sub nsw i32 2, %86
  %88 = sub i32 0, %65
  %89 = call i32 @dx.op.binary.i32(i32 37, i32 %65, i32 %88)  ; IMax(a,b)
  %90 = sitofp i32 %89 to float
  %91 = call float @dx.op.unary.f32(i32 23, float %90)  ; Log(value)
  %92 = fmul fast float %91, 0x3FD3441360000000
  %93 = call float @dx.op.unary.f32(i32 27, float %92)  ; Round_ni(value)
  %94 = call float @dx.op.binary.f32(i32 35, float %93, float 0.000000e+00)  ; FMax(a,b)
  %95 = fptosi float %94 to i32
  %96 = lshr i32 %65, 31
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %87, %97
  %99 = icmp slt i32 %87, 0
  %100 = or i1 %99, %98
  br i1 %100, label %182, label %101

; <label>:101                                     ; preds = %84
  %102 = icmp slt i32 %65, 0
  %103 = icmp eq i32 %87, %97
  %104 = and i1 %102, %103
  br i1 %104, label %118, label %105

; <label>:105                                     ; preds = %101
  %106 = sitofp i32 %65 to float
  %107 = sitofp i32 %87 to float
  %108 = fmul fast float %107, 0xC00A934F00000000
  %109 = call float @dx.op.unary.f32(i32 21, float %108)  ; Exp(value)
  %110 = fmul fast float %109, %106
  %111 = call float @dx.op.unary.f32(i32 6, float %110)  ; FAbs(value)
  %112 = fmul fast float %111, 0x3FB99999A0000000
  %113 = call float @dx.op.unary.f32(i32 22, float %112)  ; Frc(value)
  %114 = fmul fast float %113, 1.000000e+01
  %115 = call float @dx.op.unary.f32(i32 27, float %114)  ; Round_ni(value)
  %116 = fptoui float %115 to i32
  %117 = add i32 %116, 48
  br label %118

; <label>:118                                     ; preds = %105, %101
  %119 = phi i32 [ %117, %105 ], [ 45, %101 ]
  %120 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %121 = call float @dx.op.unary.f32(i32 22, float %80)  ; Frc(value)
  %122 = icmp eq i32 %119, 45
  %123 = icmp eq i32 %119, 46
  %124 = icmp eq i32 %119, 48
  %125 = icmp eq i32 %119, 49
  %126 = icmp eq i32 %119, 50
  %127 = icmp eq i32 %119, 51
  %128 = icmp eq i32 %119, 52
  %129 = icmp eq i32 %119, 53
  %130 = icmp eq i32 %119, 54
  %131 = icmp eq i32 %119, 55
  %132 = icmp eq i32 %119, 56
  %133 = icmp eq i32 %119, 57
  %134 = select i1 %133, i32 1667448320, i32 0
  %135 = select i1 %133, i32 4087934, i32 0
  %136 = select i1 %132, i32 1046691328, i32 %134
  %137 = select i1 %132, i32 4088675, i32 %135
  %138 = select i1 %131, i32 811630336, i32 %136
  %139 = select i1 %131, i32 789528, i32 %137
  %140 = select i1 %130, i32 1057177088, i32 %138
  %141 = select i1 %130, i32 4088675, i32 %139
  %142 = select i1 %129, i32 1057193728, i32 %140
  %143 = select i1 %129, i32 4088672, i32 %141
  %144 = select i1 %128, i32 505157632, i32 %142
  %145 = select i1 %128, i32 1605403, i32 %143
  %146 = select i1 %127, i32 946028032, i32 %144
  %147 = select i1 %127, i32 4088672, i32 %145
  %148 = select i1 %126, i32 1617116672, i32 %146
  %149 = select i1 %126, i32 8323902, i32 %147
  %150 = select i1 %125, i32 404494336, i32 %148
  %151 = select i1 %125, i32 3938328, i32 %149
  %152 = select i1 %124, i32 2071150080, i32 %150
  %153 = select i1 %124, i32 4089711, i32 %151
  %154 = select i1 %123, i32 0, i32 %152
  %155 = select i1 %123, i32 1579008, i32 %153
  %156 = select i1 %122, i32 2113929216, i32 %154
  %157 = select i1 %122, i32 0, i32 %155
  %158 = fcmp fast olt float %120, 0.000000e+00
  %159 = fcmp fast olt float %121, 0.000000e+00
  %160 = or i1 %158, %159
  %161 = fcmp fast oge float %120, 1.000000e+00
  %162 = or i1 %161, %160
  %163 = fcmp fast oge float %121, 1.000000e+00
  %164 = or i1 %163, %162
  %165 = select i1 %164, float 0.000000e+00, float 1.000000e+00
  %166 = fmul fast float %120, 8.000000e+00
  %167 = fmul fast float %121, 8.000000e+00
  %168 = call float @dx.op.unary.f32(i32 27, float %166)  ; Round_ni(value)
  %169 = call float @dx.op.unary.f32(i32 27, float %167)  ; Round_ni(value)
  %170 = fptoui float %168 to i32
  %171 = fptoui float %169 to i32
  %172 = shl i32 %171, 3
  %173 = add i32 %172, %170
  %174 = icmp ult i32 %171, 4
  %175 = select i1 %174, i32 %156, i32 %157
  %176 = and i32 %173, 31
  %177 = lshr i32 %175, %176
  %178 = and i32 %177, 1
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, %165
  %181 = fcmp ogt float %180, 0x3FB99999A0000000
  br label %182

; <label>:182                                     ; preds = %118, %84, %30
  %183 = phi i1 [ %181, %118 ], [ false, %30 ], [ false, %84 ]
  %184 = select i1 %183, float 1.000000e+00, float %52
  %185 = select i1 %183, float 1.000000e+00, float %54
  %186 = select i1 %183, float 1.000000e+00, float %56
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %184)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %185)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!11}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10}
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 112, null}
!11 = !{[12 x i32] [i32 10, i32 4, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!12 = !{void ()* @ps_main, !"ps_main", !13, !4, null}
!13 = !{!14, !20, null}
!14 = !{!15, !18, !19}
!15 = !{i32 0, !"SV_Position", i8 9, i8 3, !16, i8 4, i32 1, i8 4, i32 0, i8 0, !17}
!16 = !{i32 0}
!17 = !{i32 3, i32 3}
!18 = !{i32 1, !"COLOR", i8 9, i8 0, !16, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!19 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !16, i8 2, i32 1, i8 2, i32 2, i8 0, null}
!20 = !{!21}
!21 = !{i32 0, !"SV_Target", i8 9, i8 16, !16, i8 0, i32 1, i8 4, i32 0, i8 0, !22}
!22 = !{i32 3, i32 15}

