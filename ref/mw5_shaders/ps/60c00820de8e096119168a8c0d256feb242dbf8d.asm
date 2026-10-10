;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; NORMAL                   0   xyz         1     NONE   float   xyz 
; TRIID                    0   x           2     NONE    uint   x   
; ENTITY_IDS               0    yz         2     NONE    uint     z 
; CLIP_POS                 0   xyzw        3     NONE   float   xy w
; PREV_CLIP_POS            0   xyzw        4     NONE   float   xy w
; PACKED_TRI_DATA          0   xyzw        5     NONE    uint       
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   x           0   TARGET    uint   x   
; SV_Target                1   x           1   TARGET    uint   x   
; SV_Target                2   xyzw        2   TARGET   float   xyzw
;
; shader hash: 032868d706222f9b02d9dc7280d6b51d
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
; NORMAL                   0                 linear       
; TRIID                    0        nointerpolation       
; ENTITY_IDS               0        nointerpolation       
; CLIP_POS                 0                 linear       
; PREV_CLIP_POS            0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
;
; Output signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Target                0                              
; SV_Target                1                              
; SV_Target                2                              
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
;   [224 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0      t9,space1     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 12
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 8 }
;   output 4 depends on inputs: { 4, 5, 6 }
;   output 8 depends on inputs: { 10 }
;   output 9 depends on inputs: { 10 }
;   output 10 depends on inputs: { 12, 15, 16, 19 }
;   output 11 depends on inputs: { 13, 15, 17, 19 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call i32 @dx.op.loadInput.i32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = call float @dx.op.dot3.f32(i32 55, float %12, float %13, float %14, float %12, float %13, float %14)  ; Dot3(ax,ay,az,bx,by,bz)
  %18 = bitcast float %17 to i32
  %19 = ashr i32 %18, 1
  %20 = sub nsw i32 1597250115, %19
  %21 = bitcast i32 %20 to float
  %22 = fmul fast float %21, %12
  %23 = fmul fast float %21, %13
  %24 = fmul fast float %21, %14
  %25 = and i32 %10, 255
  %26 = uitofp i32 %25 to float
  %27 = fmul fast float %26, 0x3F70101020000000
  %28 = lshr i32 %10, 8
  %29 = uitofp i32 %28 to float
  %30 = fmul fast float %29, 0x3F70101020000000
  %31 = icmp eq i32 %10, 0
  br i1 %31, label %67, label %32

; <label>:32                                      ; preds = %0
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = fmul fast float %33, %16
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = fmul fast float %35, %16
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 2
  %39 = extractvalue %dx.types.CBufRet.f32 %37, 3
  %40 = fmul fast float %36, %38
  %41 = fmul fast float %34, %39
  %42 = fmul fast float %40, 1.024000e+03
  %43 = fmul fast float %41, 1.024000e+03
  %44 = fadd fast float %42, -5.120000e+02
  %45 = fadd fast float %43, -5.120000e+02
  %46 = fmul fast float %40, 0x4081BEDF00000000
  %47 = fadd fast float %46, 0xC071BEDF00000000
  %48 = call float @dx.op.unary.f32(i32 22, float %47)  ; Frc(value)
  %49 = fmul fast float %44, %48
  %50 = fadd fast float %49, %45
  %51 = fmul fast float %41, 0x4073BEBE20000000
  %52 = fadd fast float %51, 0xC063BEBE20000000
  %53 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %54 = fmul fast float %45, %53
  %55 = fadd fast float %54, %44
  %56 = fmul fast float %50, %55
  %57 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %58 = mul i32 %10, 100
  %59 = add i32 %58, 12
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, 255
  %63 = uitofp i32 %62 to float
  %64 = fmul fast float %63, 0x3F70101020000000
  %65 = fcmp fast olt float %57, %64
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %32
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %67

; <label>:67                                      ; preds = %66, %32, %0
  %68 = fdiv fast float %7, %9
  %69 = fdiv fast float %8, %9
  %70 = fdiv fast float %4, %6
  %71 = fdiv fast float %5, %6
  %72 = fsub fast float %68, %70
  %73 = fsub fast float %69, %71
  %74 = fmul fast float %72, 5.000000e-01
  %75 = fmul fast float %73, -5.000000e-01
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 240)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %118

; <label>:79                                      ; preds = %67
  %80 = fmul fast float %72, 9.600000e+02
  %81 = fmul fast float %73, -5.400000e+02
  %82 = call float @dx.op.unary.f32(i32 6, float %80)  ; FAbs(value)
  %83 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %84 = fadd fast float %82, -3.000000e+00
  %85 = fadd fast float %83, -3.000000e+00
  %86 = fmul fast float %84, 0x3F8A98EF60000000
  %87 = fmul fast float %85, 0x3F8A98EF60000000
  %88 = call float @dx.op.unary.f32(i32 7, float %86)  ; Saturate(value)
  %89 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %90 = fmul fast float %82, 0x3FD5555560000000
  %91 = fmul fast float %83, 0x3FD5555560000000
  %92 = call float @dx.op.unary.f32(i32 7, float %90)  ; Saturate(value)
  %93 = call float @dx.op.unary.f32(i32 7, float %91)  ; Saturate(value)
  %94 = call float @dx.op.unary.f32(i32 24, float %88)  ; Sqrt(value)
  %95 = call float @dx.op.unary.f32(i32 24, float %89)  ; Sqrt(value)
  %96 = fsub fast float %92, %94
  %97 = fsub fast float %93, %95
  %98 = fmul fast float %96, 5.000000e-01
  %99 = fmul fast float %97, 5.000000e-01
  %100 = fadd fast float %98, %94
  %101 = fadd fast float %99, %95
  %102 = fsub fast float -0.000000e+00, %100
  %103 = fsub fast float -0.000000e+00, %101
  %104 = fcmp fast olt float %80, 0.000000e+00
  %105 = fcmp fast olt float %81, 0.000000e+00
  %106 = select i1 %104, float 0.000000e+00, float 1.000000e+00
  %107 = select i1 %105, float 0.000000e+00, float 1.000000e+00
  %108 = fcmp fast une float %106, 0.000000e+00
  %109 = fcmp fast une float %107, 0.000000e+00
  %110 = select i1 %108, float %100, float %102
  %111 = select i1 %109, float %101, float %103
  %112 = fmul fast float %110, 5.000000e-01
  %113 = fmul fast float %111, 5.000000e-01
  %114 = fadd fast float %112, 0x3FE0101020000000
  %115 = fadd fast float %113, 0x3FE0101020000000
  %116 = call float @dx.op.unary.f32(i32 7, float %114)  ; Saturate(value)
  %117 = call float @dx.op.unary.f32(i32 7, float %115)  ; Saturate(value)
  br label %118

; <label>:118                                     ; preds = %79, %67
  %119 = phi float [ %116, %79 ], [ %74, %67 ]
  %120 = phi float [ %117, %79 ], [ %75, %67 ]
  %121 = call float @dx.op.unary.f32(i32 6, float %22)  ; FAbs(value)
  %122 = call float @dx.op.unary.f32(i32 6, float %23)  ; FAbs(value)
  %123 = fadd fast float %122, %121
  %124 = call float @dx.op.unary.f32(i32 6, float %24)  ; FAbs(value)
  %125 = fadd fast float %123, %124
  %126 = fdiv fast float %22, %125
  %127 = fdiv fast float %23, %125
  %128 = fdiv fast float %24, %125
  %129 = fcmp fast oge float %128, 0.000000e+00
  %130 = call float @dx.op.unary.f32(i32 6, float %127)  ; FAbs(value)
  %131 = call float @dx.op.unary.f32(i32 6, float %126)  ; FAbs(value)
  %132 = fsub fast float 1.000000e+00, %130
  %133 = fsub fast float 1.000000e+00, %131
  %134 = fcmp fast oge float %126, 0.000000e+00
  %135 = select i1 %134, float 1.000000e+00, float -1.000000e+00
  %136 = fcmp fast oge float %127, 0.000000e+00
  %137 = select i1 %136, float 1.000000e+00, float -1.000000e+00
  %138 = fmul fast float %132, %135
  %139 = fmul fast float %133, %137
  %140 = select i1 %129, float %126, float %138
  %141 = select i1 %129, float %127, float %139
  %142 = fmul fast float %140, 1.275000e+02
  %143 = fmul fast float %141, 1.275000e+02
  %144 = fadd fast float %142, 1.275000e+02
  %145 = fadd fast float %143, 1.275000e+02
  %146 = call float @dx.op.unary.f32(i32 26, float %144)  ; Round_ne(value)
  %147 = call float @dx.op.unary.f32(i32 26, float %145)  ; Round_ne(value)
  %148 = fptoui float %146 to i32
  %149 = fptoui float %147 to i32
  %150 = shl i32 %149, 8
  %151 = or i32 %150, %148
  call void @dx.op.storeOutput.i32(i32 5, i32 0, i32 0, i8 0, i32 %11)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.i32(i32 5, i32 1, i32 0, i8 0, i32 %151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 0, float %27)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 1, float %30)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 2, float %119)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 2, i32 0, i8 3, float %120)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.i32(i32, i32, i32, i8, i32) #1

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!10}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 9, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9}
!8 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!9 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 224, null}
!10 = !{[26 x i32] [i32 24, i32 12, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 0, i32 1, i32 0, i32 768, i32 0, i32 1024, i32 2048, i32 0, i32 3072, i32 1024, i32 2048, i32 0, i32 3072, i32 0, i32 0, i32 0, i32 0]}
!11 = !{void ()* @ps_main, !"ps_main", !12, !4, !34}
!12 = !{!13, !27, null}
!13 = !{!14, !17, !19, !21, !23, !25, !26}
!14 = !{i32 0, !"SV_Position", i8 9, i8 3, !15, i8 4, i32 1, i8 4, i32 0, i8 0, !16}
!15 = !{i32 0}
!16 = !{i32 3, i32 3}
!17 = !{i32 1, !"NORMAL", i8 9, i8 0, !15, i8 2, i32 1, i8 3, i32 1, i8 0, !18}
!18 = !{i32 3, i32 7}
!19 = !{i32 2, !"TRIID", i8 5, i8 0, !15, i8 1, i32 1, i8 1, i32 2, i8 0, !20}
!20 = !{i32 3, i32 1}
!21 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !15, i8 1, i32 1, i8 2, i32 2, i8 1, !22}
!22 = !{i32 3, i32 2}
!23 = !{i32 4, !"CLIP_POS", i8 9, i8 0, !15, i8 2, i32 1, i8 4, i32 3, i8 0, !24}
!24 = !{i32 3, i32 11}
!25 = !{i32 5, !"PREV_CLIP_POS", i8 9, i8 0, !15, i8 2, i32 1, i8 4, i32 4, i8 0, !24}
!26 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !15, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!27 = !{!28, !29, !31}
!28 = !{i32 0, !"SV_Target", i8 5, i8 16, !15, i8 0, i32 1, i8 1, i32 0, i8 0, !20}
!29 = !{i32 1, !"SV_Target", i8 5, i8 16, !30, i8 0, i32 1, i8 1, i32 1, i8 0, !20}
!30 = !{i32 1}
!31 = !{i32 2, !"SV_Target", i8 9, i8 16, !32, i8 0, i32 1, i8 4, i32 2, i8 0, !33}
!32 = !{i32 2}
!33 = !{i32 3, i32 15}
!34 = !{i32 0, i64 16}

