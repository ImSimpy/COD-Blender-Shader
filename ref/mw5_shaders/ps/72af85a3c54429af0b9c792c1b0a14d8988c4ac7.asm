;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 3c968612c2beacdd4a458efcbc68ceed
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture    byte         r/o      T0     t67,space1     1
;                                   texture     f32          2d      T1             t0     1
;
;
; ViewId state:
;
; Number of inputs: 10, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 8, 9 }
;   output 1 depends on inputs: { 5, 8, 9 }
;   output 2 depends on inputs: { 6, 8, 9 }
;   output 3 depends on inputs: { 7 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = alloca [4 x i32], align 4
  %7 = alloca [4 x i32], align 4
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %16 = fptoui float %15 to i32
  %17 = extractvalue %dx.types.CBufRet.f32 %14, 3
  %18 = fmul fast float %17, %8
  %19 = fmul fast float %17, %9
  %20 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %21 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %22 = fadd fast float %18, %20
  %23 = fadd fast float %19, %21
  %24 = call float @dx.op.unary.f32(i32 7, float %22)  ; Saturate(value)
  %25 = call float @dx.op.unary.f32(i32 7, float %23)  ; Saturate(value)
  %26 = icmp eq i32 %16, 1
  br i1 %26, label %27, label %702

; <label>:27                                      ; preds = %0
  %28 = fcmp fast olt float %24, 0.000000e+00
  %29 = fcmp fast olt float %25, 0.000000e+00
  %30 = or i1 %28, %29
  %31 = fcmp fast oge float %24, 1.000000e+00
  %32 = fcmp fast oge float %25, 1.000000e+00
  %33 = or i1 %31, %32
  %34 = or i1 %30, %33
  br i1 %34, label %1208, label %35

; <label>:35                                      ; preds = %27
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = and i32 %37, 536870911
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %39, %24
  %41 = fmul fast float %39, %25
  %42 = fptoui float %40 to i32
  %43 = fptoui float %41 to i32
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = and i32 %45, 31
  %47 = lshr i32 %42, %46
  %48 = lshr i32 %43, %46
  %49 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.i32 %49, 0
  %51 = and i32 %50, 31
  %52 = shl i32 1, %51
  %53 = call i32 @dx.op.binary.i32(i32 40, i32 %52, i32 4)  ; UMin(a,b)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %372, label %55

; <label>:55                                      ; preds = %35
  br label %56

; <label>:56                                      ; preds = %368, %55
  %57 = phi float [ %362, %368 ], [ 0.000000e+00, %55 ]
  %58 = phi i32 [ %369, %368 ], [ 0, %55 ]
  %59 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 31
  %63 = shl i32 %48, %62
  %64 = add i32 %63, %47
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = and i32 %66, 31
  %68 = shl i32 %64, %67
  %69 = add i32 %68, %58
  %70 = shl i32 %69, 2
  %71 = add i32 %70, 32
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %358

; <label>:75                                      ; preds = %56
  %76 = shl i32 1, %46
  %77 = add i32 %76, -1
  %78 = and i32 %77, %42
  %79 = and i32 %77, %43
  %80 = and i32 %73, 1073741823
  %81 = add nuw nsw i32 %80, 4
  %82 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %83 = extractvalue %dx.types.ResRet.i32 %82, 0
  %84 = lshr i32 %83, 29
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %147

; <label>:86                                      ; preds = %75
  %87 = and i32 %83, 536870911
  %88 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %87)  ; FirstbitHi(value)
  %89 = icmp eq i32 %88, -1
  %90 = add i32 %88, 1
  %91 = call i32 @dx.op.unary.i32(i32 30, i32 %78)  ; Bfrev(value)
  %92 = and i32 %90, 31
  %93 = select i1 %89, i32 1, i32 %92
  %94 = lshr i32 %91, %93
  %95 = call i32 @dx.op.unary.i32(i32 30, i32 %79)  ; Bfrev(value)
  %96 = lshr i32 %95, %93
  %97 = and i32 %94, 1
  %98 = shl i32 %96, 1
  %99 = and i32 %98, 2
  %100 = or i32 %99, %97
  %101 = mul nuw nsw i32 %100, 12
  %102 = add nuw nsw i32 %80, 32
  %103 = add nuw i32 %102, %101
  br label %104

; <label>:104                                     ; preds = %115, %86
  %105 = phi i32 [ 2, %86 ], [ %128, %115 ]
  %106 = phi i32 [ %94, %86 ], [ %116, %115 ]
  %107 = phi i32 [ %96, %86 ], [ %117, %115 ]
  %108 = phi i32 [ %103, %86 ], [ %140, %115 ]
  %109 = phi i32 [ 0, %86 ], [ %120, %115 ]
  %110 = phi i32 [ 0, %86 ], [ %111, %115 ]
  %111 = add nuw nsw i32 %110, 1
  %112 = icmp eq i32 %105, 3
  %113 = icmp ugt i32 %111, 9
  %114 = or i1 %112, %113
  br i1 %114, label %142, label %115

; <label>:115                                     ; preds = %104
  %116 = lshr i32 %106, 1
  %117 = lshr i32 %107, 1
  %118 = icmp eq i32 %105, 2
  %119 = add i32 %108, 4
  %120 = select i1 %118, i32 %119, i32 %109
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %116, 1
  %124 = and i32 %107, 2
  %125 = or i32 %123, %124
  %126 = shl nuw nsw i32 %125, 1
  %127 = lshr i32 %122, %126
  %128 = and i32 %127, 3
  %129 = lshr i32 %122, 8
  %130 = sub nsw i32 4, %125
  %131 = shl nuw nsw i32 %130, 1
  %132 = lshr i32 255, %131
  %133 = and i32 %122, %132
  %134 = lshr i32 %133, 1
  %135 = and i32 %134, 85
  %136 = xor i32 %135, %133
  %137 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %136)  ; Countbits(value)
  %138 = shl i32 %137, 2
  %139 = add i32 %138, %108
  %140 = add i32 %139, %129
  %141 = icmp eq i32 %128, 0
  br i1 %141, label %142, label %104

; <label>:142                                     ; preds = %115, %104
  %143 = phi i32 [ %108, %104 ], [ %120, %115 ]
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = bitcast i32 %145 to float
  br label %360

; <label>:147                                     ; preds = %75
  %148 = icmp eq i32 %84, 1
  br i1 %148, label %149, label %227

; <label>:149                                     ; preds = %147
  %150 = and i32 %83, 536870911
  %151 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %150)  ; FirstbitHi(value)
  %152 = icmp eq i32 %151, -1
  %153 = add i32 %151, 1
  %154 = call i32 @dx.op.unary.i32(i32 30, i32 %78)  ; Bfrev(value)
  %155 = and i32 %153, 31
  %156 = select i1 %152, i32 1, i32 %155
  %157 = lshr i32 %154, %156
  %158 = call i32 @dx.op.unary.i32(i32 30, i32 %79)  ; Bfrev(value)
  %159 = lshr i32 %158, %156
  %160 = and i32 %157, 1
  %161 = shl i32 %159, 1
  %162 = and i32 %161, 2
  %163 = or i32 %162, %160
  %164 = shl nuw nsw i32 %163, 3
  %165 = or i32 %164, 32
  %166 = add nuw nsw i32 %165, %80
  br label %167

; <label>:167                                     ; preds = %178, %149
  %168 = phi i32 [ 3, %149 ], [ %199, %178 ]
  %169 = phi i32 [ %157, %149 ], [ %179, %178 ]
  %170 = phi i32 [ %159, %149 ], [ %180, %178 ]
  %171 = phi i32 [ %166, %149 ], [ %213, %178 ]
  %172 = phi i32 [ 0, %149 ], [ %183, %178 ]
  %173 = phi i32 [ 0, %149 ], [ %174, %178 ]
  %174 = add nuw nsw i32 %173, 1
  %175 = icmp eq i32 %168, 2
  %176 = icmp ugt i32 %174, 9
  %177 = or i1 %175, %176
  br i1 %177, label %215, label %178

; <label>:178                                     ; preds = %167
  %179 = lshr i32 %169, 1
  %180 = lshr i32 %170, 1
  %181 = icmp eq i32 %168, 3
  %182 = add i32 %171, 4
  %183 = select i1 %181, i32 %182, i32 %172
  %184 = and i32 %171, -4
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = extractvalue %dx.types.ResRet.i32 %185, 1
  %188 = and i32 %171, 2
  %189 = icmp ne i32 %188, 0
  %190 = lshr i32 %186, 16
  %191 = shl i32 %187, 16
  %192 = or i32 %190, %191
  %193 = select i1 %189, i32 %192, i32 %186
  %194 = and i32 %179, 1
  %195 = and i32 %170, 2
  %196 = or i32 %194, %195
  %197 = shl nuw nsw i32 %196, 1
  %198 = lshr i32 %193, %197
  %199 = and i32 %198, 3
  %200 = lshr i32 %193, 8
  %201 = sub nsw i32 4, %196
  %202 = shl nuw nsw i32 %201, 1
  %203 = lshr i32 255, %202
  %204 = and i32 %193, %203
  %205 = and i32 %204, 85
  %206 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %205)  ; Countbits(value)
  %207 = shl i32 %206, 2
  %208 = and i32 %204, 170
  %209 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %208)  ; Countbits(value)
  %210 = shl i32 %209, 1
  %211 = add i32 %207, %171
  %212 = add i32 %211, %210
  %213 = add i32 %212, %200
  %214 = icmp eq i32 %199, 0
  br i1 %214, label %215, label %167

; <label>:215                                     ; preds = %178, %167
  %216 = phi i32 [ %171, %167 ], [ %183, %178 ]
  %217 = and i32 %216, -4
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %216, 2
  %221 = icmp ne i32 %220, 0
  %222 = lshr i32 %219, 16
  %223 = and i32 %219, 65535
  %224 = select i1 %221, i32 %222, i32 %223
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3EF0001000000000
  br label %360

; <label>:227                                     ; preds = %147
  %228 = icmp eq i32 %84, 2
  br i1 %228, label %229, label %360

; <label>:229                                     ; preds = %227
  %230 = and i32 %83, 536870911
  %231 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %230)  ; FirstbitHi(value)
  %232 = icmp eq i32 %231, -1
  %233 = add i32 %231, 1
  %234 = call i32 @dx.op.unary.i32(i32 30, i32 %78)  ; Bfrev(value)
  %235 = and i32 %233, 31
  %236 = select i1 %232, i32 1, i32 %235
  %237 = lshr i32 %234, %236
  %238 = call i32 @dx.op.unary.i32(i32 30, i32 %79)  ; Bfrev(value)
  %239 = lshr i32 %238, %236
  %240 = and i32 %237, 1
  %241 = shl i32 %239, 1
  %242 = and i32 %241, 2
  %243 = or i32 %242, %240
  %244 = mul nuw nsw i32 %243, 10
  %245 = add nuw nsw i32 %80, 32
  %246 = add nuw i32 %245, %244
  br label %247

; <label>:247                                     ; preds = %258, %229
  %248 = phi i32 [ 3, %229 ], [ %279, %258 ]
  %249 = phi i32 [ %237, %229 ], [ %259, %258 ]
  %250 = phi i32 [ %239, %229 ], [ %260, %258 ]
  %251 = phi i32 [ %246, %229 ], [ %293, %258 ]
  %252 = phi i32 [ 0, %229 ], [ %263, %258 ]
  %253 = phi i32 [ 0, %229 ], [ %254, %258 ]
  %254 = add nuw nsw i32 %253, 1
  %255 = icmp eq i32 %248, 2
  %256 = icmp ugt i32 %254, 9
  %257 = or i1 %255, %256
  br i1 %257, label %295, label %258

; <label>:258                                     ; preds = %247
  %259 = lshr i32 %249, 1
  %260 = lshr i32 %250, 1
  %261 = icmp eq i32 %248, 3
  %262 = add i32 %251, 4
  %263 = select i1 %261, i32 %262, i32 %252
  %264 = and i32 %251, -4
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = extractvalue %dx.types.ResRet.i32 %265, 1
  %268 = and i32 %251, 2
  %269 = icmp ne i32 %268, 0
  %270 = lshr i32 %266, 16
  %271 = shl i32 %267, 16
  %272 = or i32 %270, %271
  %273 = select i1 %269, i32 %272, i32 %266
  %274 = and i32 %259, 1
  %275 = and i32 %250, 2
  %276 = or i32 %274, %275
  %277 = shl nuw nsw i32 %276, 1
  %278 = lshr i32 %273, %277
  %279 = and i32 %278, 3
  %280 = lshr i32 %273, 8
  %281 = sub nsw i32 4, %276
  %282 = shl nuw nsw i32 %281, 1
  %283 = lshr i32 255, %282
  %284 = and i32 %273, %283
  %285 = and i32 %284, 85
  %286 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %285)  ; Countbits(value)
  %287 = shl i32 %286, 2
  %288 = and i32 %284, 170
  %289 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %288)  ; Countbits(value)
  %290 = mul i32 %289, 6
  %291 = add i32 %287, %251
  %292 = add i32 %291, %290
  %293 = add i32 %292, %280
  %294 = icmp eq i32 %279, 0
  br i1 %294, label %295, label %247

; <label>:295                                     ; preds = %258, %247
  %296 = phi i32 [ %251, %247 ], [ %263, %258 ]
  %297 = and i32 %296, -4
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = extractvalue %dx.types.ResRet.i32 %298, 1
  %301 = and i32 %296, 2
  %302 = icmp ne i32 %301, 0
  %303 = lshr i32 %299, 16
  %304 = shl i32 %300, 16
  %305 = or i32 %303, %304
  %306 = select i1 %302, i32 %305, i32 %299
  %307 = add i32 %296, 4
  %308 = and i32 %307, -4
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %307, 2
  %312 = icmp ne i32 %311, 0
  %313 = lshr i32 %310, 16
  %314 = and i32 %310, 65535
  %315 = select i1 %312, i32 %313, i32 %314
  %316 = and i32 %306, 65535
  %317 = lshr i32 %306, 16
  %318 = and i32 %317, 16383
  %319 = lshr i32 %306, 30
  %320 = uitofp i32 %318 to float
  %321 = fmul fast float %320, 0x3F10004000000000
  %322 = fsub fast float 1.000000e+00, %321
  %323 = uitofp i32 %316 to float
  %324 = fmul fast float %323, 0x3EF0001000000000
  %325 = uitofp i32 %315 to float
  %326 = fmul fast float %325, 0x3F10001000000000
  %327 = fadd fast float %326, -2.000000e+00
  %328 = fmul fast float %324, %324
  %329 = fsub fast float 1.000000e+00, %328
  %330 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %331 = and i32 %319, 1
  %332 = icmp ne i32 %331, 0
  %333 = fsub fast float -0.000000e+00, %321
  %334 = select i1 %332, float %333, float %321
  %335 = and i32 %319, 2
  %336 = icmp ne i32 %335, 0
  %337 = fsub fast float -0.000000e+00, %322
  %338 = select i1 %336, float %337, float %322
  %339 = call float @dx.op.dot2.f32(i32 54, float %334, float %338, float %334, float %338)  ; Dot2(ax,ay,bx,by)
  %340 = call float @dx.op.unary.f32(i32 25, float %339)  ; Rsqrt(value)
  %341 = fmul fast float %340, %330
  %342 = fmul fast float %341, %334
  %343 = fmul fast float %341, %338
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = lshr i32 %345, 16
  %347 = and i32 %346, 31
  %348 = shl i32 1, %347
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, %24
  %351 = fmul fast float %349, %25
  %352 = call float @dx.op.unary.f32(i32 22, float %350)  ; Frc(value)
  %353 = call float @dx.op.unary.f32(i32 22, float %351)  ; Frc(value)
  %354 = call float @dx.op.dot2.f32(i32 54, float %342, float %343, float %352, float %353)  ; Dot2(ax,ay,bx,by)
  %355 = fsub fast float %327, %354
  %356 = fdiv fast float %355, %324
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  br label %360

; <label>:358                                     ; preds = %56
  %359 = bitcast i32 %73 to float
  br label %360

; <label>:360                                     ; preds = %358, %295, %227, %215, %142
  %361 = phi float [ %359, %358 ], [ %146, %142 ], [ %226, %215 ], [ %357, %295 ], [ 0.000000e+00, %227 ]
  %362 = call float @dx.op.binary.f32(i32 35, float %57, float %361)  ; FMax(a,b)
  %363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.i32 %363, 2
  %365 = icmp eq i32 %364, 0
  %366 = icmp ugt i32 %73, -1073741825
  %367 = and i1 %366, %365
  br i1 %367, label %368, label %371

; <label>:368                                     ; preds = %360
  %369 = add nuw i32 %58, 1
  %370 = icmp ult i32 %369, %53
  br i1 %370, label %56, label %371

; <label>:371                                     ; preds = %368, %360
  br label %372

; <label>:372                                     ; preds = %371, %35
  %373 = phi float [ 0.000000e+00, %35 ], [ %362, %371 ]
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %376 = fptoui float %375 to i32
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %1208, label %378

; <label>:378                                     ; preds = %372
  br label %379

; <label>:379                                     ; preds = %698, %378
  %380 = phi float [ %699, %698 ], [ %373, %378 ]
  %381 = phi i32 [ %700, %698 ], [ 0, %378 ]
  %382 = lshr i32 %381, 2
  %383 = and i32 %381, 3
  %384 = add nuw nsw i32 %382, 83
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %384)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %387 = extractvalue %dx.types.CBufRet.i32 %385, 1
  %388 = extractvalue %dx.types.CBufRet.i32 %385, 2
  %389 = extractvalue %dx.types.CBufRet.i32 %385, 3
  %390 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %386, i32* %390, align 4
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %387, i32* %391, align 4
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %388, i32* %392, align 4
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %389, i32* %393, align 4
  %394 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %383
  %395 = load i32, i32* %394, align 4, !tbaa !27
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = lshr i32 %397, 16
  %399 = and i32 %398, 31
  %400 = shl i32 %48, %399
  %401 = add i32 %400, %47
  %402 = shl i32 %401, 2
  %403 = add i32 %402, %395
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %698, label %407

; <label>:407                                     ; preds = %379
  %408 = icmp slt i32 %405, 0
  br i1 %408, label %409, label %693

; <label>:409                                     ; preds = %407
  %410 = shl i32 1, %46
  %411 = add i32 %410, -1
  %412 = and i32 %411, %42
  %413 = and i32 %411, %43
  %414 = and i32 %405, 1073741823
  %415 = add i32 %414, %395
  %416 = add i32 %415, 4
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = lshr i32 %418, 29
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %482

; <label>:421                                     ; preds = %409
  %422 = and i32 %418, 536870911
  %423 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %422)  ; FirstbitHi(value)
  %424 = icmp eq i32 %423, -1
  %425 = add i32 %423, 1
  %426 = call i32 @dx.op.unary.i32(i32 30, i32 %412)  ; Bfrev(value)
  %427 = and i32 %425, 31
  %428 = select i1 %424, i32 1, i32 %427
  %429 = lshr i32 %426, %428
  %430 = call i32 @dx.op.unary.i32(i32 30, i32 %413)  ; Bfrev(value)
  %431 = lshr i32 %430, %428
  %432 = and i32 %429, 1
  %433 = shl i32 %431, 1
  %434 = and i32 %433, 2
  %435 = or i32 %434, %432
  %436 = mul nuw nsw i32 %435, 12
  %437 = add i32 %415, 32
  %438 = add i32 %437, %436
  br label %439

; <label>:439                                     ; preds = %450, %421
  %440 = phi i32 [ 2, %421 ], [ %463, %450 ]
  %441 = phi i32 [ %429, %421 ], [ %451, %450 ]
  %442 = phi i32 [ %431, %421 ], [ %452, %450 ]
  %443 = phi i32 [ %438, %421 ], [ %475, %450 ]
  %444 = phi i32 [ 0, %421 ], [ %455, %450 ]
  %445 = phi i32 [ 0, %421 ], [ %446, %450 ]
  %446 = add nuw nsw i32 %445, 1
  %447 = icmp eq i32 %440, 3
  %448 = icmp ugt i32 %446, 9
  %449 = or i1 %447, %448
  br i1 %449, label %477, label %450

; <label>:450                                     ; preds = %439
  %451 = lshr i32 %441, 1
  %452 = lshr i32 %442, 1
  %453 = icmp eq i32 %440, 2
  %454 = add i32 %443, 4
  %455 = select i1 %453, i32 %454, i32 %444
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %451, 1
  %459 = and i32 %442, 2
  %460 = or i32 %458, %459
  %461 = shl nuw nsw i32 %460, 1
  %462 = lshr i32 %457, %461
  %463 = and i32 %462, 3
  %464 = lshr i32 %457, 8
  %465 = sub nsw i32 4, %460
  %466 = shl nuw nsw i32 %465, 1
  %467 = lshr i32 255, %466
  %468 = and i32 %457, %467
  %469 = lshr i32 %468, 1
  %470 = and i32 %469, 85
  %471 = xor i32 %470, %468
  %472 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %471)  ; Countbits(value)
  %473 = shl i32 %472, 2
  %474 = add i32 %473, %443
  %475 = add i32 %474, %464
  %476 = icmp eq i32 %463, 0
  br i1 %476, label %477, label %439

; <label>:477                                     ; preds = %450, %439
  %478 = phi i32 [ %443, %439 ], [ %455, %450 ]
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = bitcast i32 %480 to float
  br label %695

; <label>:482                                     ; preds = %409
  %483 = icmp eq i32 %419, 1
  br i1 %483, label %484, label %562

; <label>:484                                     ; preds = %482
  %485 = and i32 %418, 536870911
  %486 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %485)  ; FirstbitHi(value)
  %487 = icmp eq i32 %486, -1
  %488 = add i32 %486, 1
  %489 = call i32 @dx.op.unary.i32(i32 30, i32 %412)  ; Bfrev(value)
  %490 = and i32 %488, 31
  %491 = select i1 %487, i32 1, i32 %490
  %492 = lshr i32 %489, %491
  %493 = call i32 @dx.op.unary.i32(i32 30, i32 %413)  ; Bfrev(value)
  %494 = lshr i32 %493, %491
  %495 = and i32 %492, 1
  %496 = shl i32 %494, 1
  %497 = and i32 %496, 2
  %498 = or i32 %497, %495
  %499 = shl nuw nsw i32 %498, 3
  %500 = or i32 %499, 32
  %501 = add i32 %500, %415
  br label %502

; <label>:502                                     ; preds = %513, %484
  %503 = phi i32 [ 3, %484 ], [ %534, %513 ]
  %504 = phi i32 [ %492, %484 ], [ %514, %513 ]
  %505 = phi i32 [ %494, %484 ], [ %515, %513 ]
  %506 = phi i32 [ %501, %484 ], [ %548, %513 ]
  %507 = phi i32 [ 0, %484 ], [ %518, %513 ]
  %508 = phi i32 [ 0, %484 ], [ %509, %513 ]
  %509 = add nuw nsw i32 %508, 1
  %510 = icmp eq i32 %503, 2
  %511 = icmp ugt i32 %509, 9
  %512 = or i1 %510, %511
  br i1 %512, label %550, label %513

; <label>:513                                     ; preds = %502
  %514 = lshr i32 %504, 1
  %515 = lshr i32 %505, 1
  %516 = icmp eq i32 %503, 3
  %517 = add i32 %506, 4
  %518 = select i1 %516, i32 %517, i32 %507
  %519 = and i32 %506, -4
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = extractvalue %dx.types.ResRet.i32 %520, 1
  %523 = and i32 %506, 2
  %524 = icmp ne i32 %523, 0
  %525 = lshr i32 %521, 16
  %526 = shl i32 %522, 16
  %527 = or i32 %525, %526
  %528 = select i1 %524, i32 %527, i32 %521
  %529 = and i32 %514, 1
  %530 = and i32 %505, 2
  %531 = or i32 %529, %530
  %532 = shl nuw nsw i32 %531, 1
  %533 = lshr i32 %528, %532
  %534 = and i32 %533, 3
  %535 = lshr i32 %528, 8
  %536 = sub nsw i32 4, %531
  %537 = shl nuw nsw i32 %536, 1
  %538 = lshr i32 255, %537
  %539 = and i32 %528, %538
  %540 = and i32 %539, 85
  %541 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %540)  ; Countbits(value)
  %542 = shl i32 %541, 2
  %543 = and i32 %539, 170
  %544 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %543)  ; Countbits(value)
  %545 = shl i32 %544, 1
  %546 = add i32 %542, %506
  %547 = add i32 %546, %545
  %548 = add i32 %547, %535
  %549 = icmp eq i32 %534, 0
  br i1 %549, label %550, label %502

; <label>:550                                     ; preds = %513, %502
  %551 = phi i32 [ %506, %502 ], [ %518, %513 ]
  %552 = and i32 %551, -4
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %551, 2
  %556 = icmp ne i32 %555, 0
  %557 = lshr i32 %554, 16
  %558 = and i32 %554, 65535
  %559 = select i1 %556, i32 %557, i32 %558
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3EF0001000000000
  br label %695

; <label>:562                                     ; preds = %482
  %563 = icmp eq i32 %419, 2
  br i1 %563, label %564, label %695

; <label>:564                                     ; preds = %562
  %565 = and i32 %418, 536870911
  %566 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %565)  ; FirstbitHi(value)
  %567 = icmp eq i32 %566, -1
  %568 = add i32 %566, 1
  %569 = call i32 @dx.op.unary.i32(i32 30, i32 %412)  ; Bfrev(value)
  %570 = and i32 %568, 31
  %571 = select i1 %567, i32 1, i32 %570
  %572 = lshr i32 %569, %571
  %573 = call i32 @dx.op.unary.i32(i32 30, i32 %413)  ; Bfrev(value)
  %574 = lshr i32 %573, %571
  %575 = and i32 %572, 1
  %576 = shl i32 %574, 1
  %577 = and i32 %576, 2
  %578 = or i32 %577, %575
  %579 = mul nuw nsw i32 %578, 10
  %580 = add i32 %415, 32
  %581 = add i32 %580, %579
  br label %582

; <label>:582                                     ; preds = %593, %564
  %583 = phi i32 [ 3, %564 ], [ %614, %593 ]
  %584 = phi i32 [ %572, %564 ], [ %594, %593 ]
  %585 = phi i32 [ %574, %564 ], [ %595, %593 ]
  %586 = phi i32 [ %581, %564 ], [ %628, %593 ]
  %587 = phi i32 [ 0, %564 ], [ %598, %593 ]
  %588 = phi i32 [ 0, %564 ], [ %589, %593 ]
  %589 = add nuw nsw i32 %588, 1
  %590 = icmp eq i32 %583, 2
  %591 = icmp ugt i32 %589, 9
  %592 = or i1 %590, %591
  br i1 %592, label %630, label %593

; <label>:593                                     ; preds = %582
  %594 = lshr i32 %584, 1
  %595 = lshr i32 %585, 1
  %596 = icmp eq i32 %583, 3
  %597 = add i32 %586, 4
  %598 = select i1 %596, i32 %597, i32 %587
  %599 = and i32 %586, -4
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = extractvalue %dx.types.ResRet.i32 %600, 1
  %603 = and i32 %586, 2
  %604 = icmp ne i32 %603, 0
  %605 = lshr i32 %601, 16
  %606 = shl i32 %602, 16
  %607 = or i32 %605, %606
  %608 = select i1 %604, i32 %607, i32 %601
  %609 = and i32 %594, 1
  %610 = and i32 %585, 2
  %611 = or i32 %609, %610
  %612 = shl nuw nsw i32 %611, 1
  %613 = lshr i32 %608, %612
  %614 = and i32 %613, 3
  %615 = lshr i32 %608, 8
  %616 = sub nsw i32 4, %611
  %617 = shl nuw nsw i32 %616, 1
  %618 = lshr i32 255, %617
  %619 = and i32 %608, %618
  %620 = and i32 %619, 85
  %621 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %620)  ; Countbits(value)
  %622 = shl i32 %621, 2
  %623 = and i32 %619, 170
  %624 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %623)  ; Countbits(value)
  %625 = mul i32 %624, 6
  %626 = add i32 %622, %586
  %627 = add i32 %626, %625
  %628 = add i32 %627, %615
  %629 = icmp eq i32 %614, 0
  br i1 %629, label %630, label %582

; <label>:630                                     ; preds = %593, %582
  %631 = phi i32 [ %586, %582 ], [ %598, %593 ]
  %632 = and i32 %631, -4
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = extractvalue %dx.types.ResRet.i32 %633, 1
  %636 = and i32 %631, 2
  %637 = icmp ne i32 %636, 0
  %638 = lshr i32 %634, 16
  %639 = shl i32 %635, 16
  %640 = or i32 %638, %639
  %641 = select i1 %637, i32 %640, i32 %634
  %642 = add i32 %631, 4
  %643 = and i32 %642, -4
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %642, 2
  %647 = icmp ne i32 %646, 0
  %648 = lshr i32 %645, 16
  %649 = and i32 %645, 65535
  %650 = select i1 %647, i32 %648, i32 %649
  %651 = and i32 %641, 65535
  %652 = lshr i32 %641, 16
  %653 = and i32 %652, 16383
  %654 = lshr i32 %641, 30
  %655 = uitofp i32 %653 to float
  %656 = fmul fast float %655, 0x3F10004000000000
  %657 = fsub fast float 1.000000e+00, %656
  %658 = uitofp i32 %651 to float
  %659 = fmul fast float %658, 0x3EF0001000000000
  %660 = uitofp i32 %650 to float
  %661 = fmul fast float %660, 0x3F10001000000000
  %662 = fadd fast float %661, -2.000000e+00
  %663 = fmul fast float %659, %659
  %664 = fsub fast float 1.000000e+00, %663
  %665 = call float @dx.op.unary.f32(i32 24, float %664)  ; Sqrt(value)
  %666 = and i32 %654, 1
  %667 = icmp ne i32 %666, 0
  %668 = fsub fast float -0.000000e+00, %656
  %669 = select i1 %667, float %668, float %656
  %670 = and i32 %654, 2
  %671 = icmp ne i32 %670, 0
  %672 = fsub fast float -0.000000e+00, %657
  %673 = select i1 %671, float %672, float %657
  %674 = call float @dx.op.dot2.f32(i32 54, float %669, float %673, float %669, float %673)  ; Dot2(ax,ay,bx,by)
  %675 = call float @dx.op.unary.f32(i32 25, float %674)  ; Rsqrt(value)
  %676 = fmul fast float %675, %665
  %677 = fmul fast float %676, %669
  %678 = fmul fast float %676, %673
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 16
  %682 = and i32 %681, 31
  %683 = shl i32 1, %682
  %684 = uitofp i32 %683 to float
  %685 = fmul fast float %684, %24
  %686 = fmul fast float %684, %25
  %687 = call float @dx.op.unary.f32(i32 22, float %685)  ; Frc(value)
  %688 = call float @dx.op.unary.f32(i32 22, float %686)  ; Frc(value)
  %689 = call float @dx.op.dot2.f32(i32 54, float %677, float %678, float %687, float %688)  ; Dot2(ax,ay,bx,by)
  %690 = fsub fast float %662, %689
  %691 = fdiv fast float %690, %659
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  br label %695

; <label>:693                                     ; preds = %407
  %694 = bitcast i32 %405 to float
  br label %695

; <label>:695                                     ; preds = %693, %630, %562, %550, %477
  %696 = phi float [ %694, %693 ], [ %481, %477 ], [ %561, %550 ], [ %692, %630 ], [ 0.000000e+00, %562 ]
  %697 = call float @dx.op.binary.f32(i32 35, float %380, float %696)  ; FMax(a,b)
  br label %698

; <label>:698                                     ; preds = %695, %379
  %699 = phi float [ %380, %379 ], [ %697, %695 ]
  %700 = add nuw i32 %381, 1
  %701 = icmp eq i32 %700, %376
  br i1 %701, label %1207, label %379

; <label>:702                                     ; preds = %0
  %703 = icmp eq i32 %16, 2
  br i1 %703, label %704, label %1204

; <label>:704                                     ; preds = %702
  %705 = fcmp fast olt float %24, 0.000000e+00
  %706 = fcmp fast olt float %25, 0.000000e+00
  %707 = or i1 %705, %706
  %708 = fcmp fast oge float %24, 1.000000e+00
  %709 = fcmp fast oge float %25, 1.000000e+00
  %710 = or i1 %708, %709
  %711 = or i1 %707, %710
  br i1 %711, label %1208, label %712

; <label>:712                                     ; preds = %704
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 536870911
  %716 = uitofp i32 %715 to float
  %717 = fmul fast float %716, %24
  %718 = fmul fast float %716, %25
  %719 = fptoui float %717 to i32
  %720 = fptoui float %718 to i32
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 65535
  %724 = and i32 %722, 31
  %725 = lshr i32 %719, %724
  %726 = lshr i32 %720, %724
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 31
  %730 = shl i32 1, %729
  %731 = call i32 @dx.op.binary.i32(i32 40, i32 %730, i32 4)  ; UMin(a,b)
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %961, label %733

; <label>:733                                     ; preds = %712
  br label %734

; <label>:734                                     ; preds = %957, %733
  %735 = phi i32 [ %951, %957 ], [ 0, %733 ]
  %736 = phi i32 [ %958, %957 ], [ 0, %733 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = lshr i32 %738, 16
  %740 = and i32 %739, 31
  %741 = shl i32 %726, %740
  %742 = add i32 %741, %725
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 31
  %746 = shl i32 %742, %745
  %747 = add i32 %746, %736
  %748 = shl i32 %747, 2
  %749 = add i32 %748, 32
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = icmp slt i32 %751, 0
  br i1 %752, label %753, label %950

; <label>:753                                     ; preds = %734
  %754 = shl i32 1, %724
  %755 = add i32 %754, -1
  %756 = and i32 %755, %719
  %757 = and i32 %755, %720
  %758 = and i32 %751, 1073741823
  %759 = add nuw nsw i32 %758, 4
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = lshr i32 %761, 29
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %816

; <label>:764                                     ; preds = %753
  %765 = and i32 %761, 536870911
  %766 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %765)  ; FirstbitHi(value)
  %767 = icmp eq i32 %766, -1
  %768 = add i32 %766, 1
  %769 = call i32 @dx.op.unary.i32(i32 30, i32 %756)  ; Bfrev(value)
  %770 = and i32 %768, 31
  %771 = select i1 %767, i32 1, i32 %770
  %772 = lshr i32 %769, %771
  %773 = call i32 @dx.op.unary.i32(i32 30, i32 %757)  ; Bfrev(value)
  %774 = lshr i32 %773, %771
  %775 = and i32 %772, 1
  %776 = shl i32 %774, 1
  %777 = and i32 %776, 2
  %778 = or i32 %777, %775
  %779 = mul nuw nsw i32 %778, 12
  %780 = add nuw nsw i32 %758, 32
  %781 = add nuw i32 %780, %779
  br label %782

; <label>:782                                     ; preds = %792, %764
  %783 = phi i32 [ 2, %764 ], [ %802, %792 ]
  %784 = phi i32 [ %772, %764 ], [ %793, %792 ]
  %785 = phi i32 [ %774, %764 ], [ %794, %792 ]
  %786 = phi i32 [ %781, %764 ], [ %814, %792 ]
  %787 = phi i32 [ 0, %764 ], [ %788, %792 ]
  %788 = add nuw nsw i32 %787, 1
  %789 = icmp eq i32 %783, 3
  %790 = icmp ugt i32 %788, 9
  %791 = or i1 %789, %790
  br i1 %791, label %944, label %792

; <label>:792                                     ; preds = %782
  %793 = lshr i32 %784, 1
  %794 = lshr i32 %785, 1
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %793, 1
  %798 = and i32 %785, 2
  %799 = or i32 %797, %798
  %800 = shl nuw nsw i32 %799, 1
  %801 = lshr i32 %796, %800
  %802 = and i32 %801, 3
  %803 = lshr i32 %796, 8
  %804 = sub nsw i32 4, %799
  %805 = shl nuw nsw i32 %804, 1
  %806 = lshr i32 255, %805
  %807 = and i32 %796, %806
  %808 = lshr i32 %807, 1
  %809 = and i32 %808, 85
  %810 = xor i32 %809, %807
  %811 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %810)  ; Countbits(value)
  %812 = shl i32 %811, 2
  %813 = add i32 %812, %786
  %814 = add i32 %813, %803
  %815 = icmp eq i32 %802, 0
  br i1 %815, label %944, label %782

; <label>:816                                     ; preds = %753
  %817 = icmp eq i32 %762, 1
  br i1 %817, label %818, label %880

; <label>:818                                     ; preds = %816
  %819 = and i32 %761, 536870911
  %820 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %819)  ; FirstbitHi(value)
  %821 = icmp eq i32 %820, -1
  %822 = add i32 %820, 1
  %823 = call i32 @dx.op.unary.i32(i32 30, i32 %756)  ; Bfrev(value)
  %824 = and i32 %822, 31
  %825 = select i1 %821, i32 1, i32 %824
  %826 = lshr i32 %823, %825
  %827 = call i32 @dx.op.unary.i32(i32 30, i32 %757)  ; Bfrev(value)
  %828 = lshr i32 %827, %825
  %829 = and i32 %826, 1
  %830 = shl i32 %828, 1
  %831 = and i32 %830, 2
  %832 = or i32 %831, %829
  %833 = shl nuw nsw i32 %832, 3
  %834 = or i32 %833, 32
  %835 = add nuw nsw i32 %834, %758
  br label %836

; <label>:836                                     ; preds = %846, %818
  %837 = phi i32 [ 3, %818 ], [ %864, %846 ]
  %838 = phi i32 [ %826, %818 ], [ %847, %846 ]
  %839 = phi i32 [ %828, %818 ], [ %848, %846 ]
  %840 = phi i32 [ %835, %818 ], [ %878, %846 ]
  %841 = phi i32 [ 0, %818 ], [ %842, %846 ]
  %842 = add nuw nsw i32 %841, 1
  %843 = icmp eq i32 %837, 2
  %844 = icmp ugt i32 %842, 9
  %845 = or i1 %843, %844
  br i1 %845, label %945, label %846

; <label>:846                                     ; preds = %836
  %847 = lshr i32 %838, 1
  %848 = lshr i32 %839, 1
  %849 = and i32 %840, -4
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = extractvalue %dx.types.ResRet.i32 %850, 1
  %853 = and i32 %840, 2
  %854 = icmp ne i32 %853, 0
  %855 = lshr i32 %851, 16
  %856 = shl i32 %852, 16
  %857 = or i32 %855, %856
  %858 = select i1 %854, i32 %857, i32 %851
  %859 = and i32 %847, 1
  %860 = and i32 %839, 2
  %861 = or i32 %859, %860
  %862 = shl nuw nsw i32 %861, 1
  %863 = lshr i32 %858, %862
  %864 = and i32 %863, 3
  %865 = lshr i32 %858, 8
  %866 = sub nsw i32 4, %861
  %867 = shl nuw nsw i32 %866, 1
  %868 = lshr i32 255, %867
  %869 = and i32 %858, %868
  %870 = and i32 %869, 85
  %871 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %870)  ; Countbits(value)
  %872 = shl i32 %871, 2
  %873 = and i32 %869, 170
  %874 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %873)  ; Countbits(value)
  %875 = shl i32 %874, 1
  %876 = add i32 %872, %840
  %877 = add i32 %876, %875
  %878 = add i32 %877, %865
  %879 = icmp eq i32 %864, 0
  br i1 %879, label %945, label %836

; <label>:880                                     ; preds = %816
  %881 = icmp eq i32 %762, 2
  br i1 %881, label %882, label %947

; <label>:882                                     ; preds = %880
  %883 = and i32 %761, 536870911
  %884 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %883)  ; FirstbitHi(value)
  %885 = icmp eq i32 %884, -1
  %886 = add i32 %884, 1
  %887 = call i32 @dx.op.unary.i32(i32 30, i32 %756)  ; Bfrev(value)
  %888 = and i32 %886, 31
  %889 = select i1 %885, i32 1, i32 %888
  %890 = lshr i32 %887, %889
  %891 = call i32 @dx.op.unary.i32(i32 30, i32 %757)  ; Bfrev(value)
  %892 = lshr i32 %891, %889
  %893 = and i32 %890, 1
  %894 = shl i32 %892, 1
  %895 = and i32 %894, 2
  %896 = or i32 %895, %893
  %897 = mul nuw nsw i32 %896, 10
  %898 = add nuw nsw i32 %758, 32
  %899 = add nuw i32 %898, %897
  br label %900

; <label>:900                                     ; preds = %910, %882
  %901 = phi i32 [ 3, %882 ], [ %928, %910 ]
  %902 = phi i32 [ %890, %882 ], [ %911, %910 ]
  %903 = phi i32 [ %892, %882 ], [ %912, %910 ]
  %904 = phi i32 [ %899, %882 ], [ %942, %910 ]
  %905 = phi i32 [ 0, %882 ], [ %906, %910 ]
  %906 = add nuw nsw i32 %905, 1
  %907 = icmp eq i32 %901, 2
  %908 = icmp ugt i32 %906, 9
  %909 = or i1 %907, %908
  br i1 %909, label %946, label %910

; <label>:910                                     ; preds = %900
  %911 = lshr i32 %902, 1
  %912 = lshr i32 %903, 1
  %913 = and i32 %904, -4
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = extractvalue %dx.types.ResRet.i32 %914, 1
  %917 = and i32 %904, 2
  %918 = icmp ne i32 %917, 0
  %919 = lshr i32 %915, 16
  %920 = shl i32 %916, 16
  %921 = or i32 %919, %920
  %922 = select i1 %918, i32 %921, i32 %915
  %923 = and i32 %911, 1
  %924 = and i32 %903, 2
  %925 = or i32 %923, %924
  %926 = shl nuw nsw i32 %925, 1
  %927 = lshr i32 %922, %926
  %928 = and i32 %927, 3
  %929 = lshr i32 %922, 8
  %930 = sub nsw i32 4, %925
  %931 = shl nuw nsw i32 %930, 1
  %932 = lshr i32 255, %931
  %933 = and i32 %922, %932
  %934 = and i32 %933, 85
  %935 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %934)  ; Countbits(value)
  %936 = shl i32 %935, 2
  %937 = and i32 %933, 170
  %938 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %937)  ; Countbits(value)
  %939 = mul i32 %938, 6
  %940 = add i32 %936, %904
  %941 = add i32 %940, %939
  %942 = add i32 %941, %929
  %943 = icmp eq i32 %928, 0
  br i1 %943, label %946, label %900

; <label>:944                                     ; preds = %792, %782
  br label %947

; <label>:945                                     ; preds = %846, %836
  br label %947

; <label>:946                                     ; preds = %910, %900
  br label %947

; <label>:947                                     ; preds = %946, %945, %944, %880
  %948 = phi i32 [ 0, %880 ], [ %788, %944 ], [ %842, %945 ], [ %906, %946 ]
  %949 = call i32 @dx.op.binary.i32(i32 39, i32 %735, i32 %948)  ; UMax(a,b)
  br label %950

; <label>:950                                     ; preds = %947, %734
  %951 = phi i32 [ %949, %947 ], [ %735, %734 ]
  %952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.i32 %952, 2
  %954 = icmp eq i32 %953, 0
  %955 = icmp ugt i32 %751, -1073741825
  %956 = and i1 %955, %954
  br i1 %956, label %957, label %960

; <label>:957                                     ; preds = %950
  %958 = add nuw i32 %736, 1
  %959 = icmp ult i32 %958, %731
  br i1 %959, label %734, label %960

; <label>:960                                     ; preds = %957, %950
  br label %961

; <label>:961                                     ; preds = %960, %712
  %962 = phi i32 [ 0, %712 ], [ %951, %960 ]
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = fptoui float %964 to i32
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1199, label %967

; <label>:967                                     ; preds = %961
  br label %968

; <label>:968                                     ; preds = %1194, %967
  %969 = phi i32 [ %1195, %1194 ], [ %962, %967 ]
  %970 = phi i32 [ %1196, %1194 ], [ 0, %967 ]
  %971 = lshr i32 %970, 2
  %972 = and i32 %970, 3
  %973 = add nuw nsw i32 %971, 83
  %974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %973)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.i32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.i32 %974, 1
  %977 = extractvalue %dx.types.CBufRet.i32 %974, 2
  %978 = extractvalue %dx.types.CBufRet.i32 %974, 3
  %979 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 0
  store i32 %975, i32* %979, align 4
  %980 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 1
  store i32 %976, i32* %980, align 4
  %981 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 2
  store i32 %977, i32* %981, align 4
  %982 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 3
  store i32 %978, i32* %982, align 4
  %983 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i32 0, i32 %972
  %984 = load i32, i32* %983, align 4, !tbaa !27
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 16
  %988 = and i32 %987, 31
  %989 = shl i32 %726, %988
  %990 = add i32 %989, %725
  %991 = shl i32 %990, 2
  %992 = add i32 %991, %984
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = icmp slt i32 %994, 0
  br i1 %995, label %996, label %1194

; <label>:996                                     ; preds = %968
  %997 = shl i32 1, %724
  %998 = add i32 %997, -1
  %999 = and i32 %998, %719
  %1000 = and i32 %998, %720
  %1001 = and i32 %994, 1073741823
  %1002 = add i32 %1001, %984
  %1003 = add i32 %1002, 4
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 29
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1060

; <label>:1008                                    ; preds = %996
  %1009 = and i32 %1005, 536870911
  %1010 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1009)  ; FirstbitHi(value)
  %1011 = icmp eq i32 %1010, -1
  %1012 = add i32 %1010, 1
  %1013 = call i32 @dx.op.unary.i32(i32 30, i32 %999)  ; Bfrev(value)
  %1014 = and i32 %1012, 31
  %1015 = select i1 %1011, i32 1, i32 %1014
  %1016 = lshr i32 %1013, %1015
  %1017 = call i32 @dx.op.unary.i32(i32 30, i32 %1000)  ; Bfrev(value)
  %1018 = lshr i32 %1017, %1015
  %1019 = and i32 %1016, 1
  %1020 = shl i32 %1018, 1
  %1021 = and i32 %1020, 2
  %1022 = or i32 %1021, %1019
  %1023 = mul nuw nsw i32 %1022, 12
  %1024 = add i32 %1002, 32
  %1025 = add i32 %1024, %1023
  br label %1026

; <label>:1026                                    ; preds = %1036, %1008
  %1027 = phi i32 [ 0, %1008 ], [ %1032, %1036 ]
  %1028 = phi i32 [ %1025, %1008 ], [ %1058, %1036 ]
  %1029 = phi i32 [ %1018, %1008 ], [ %1038, %1036 ]
  %1030 = phi i32 [ %1016, %1008 ], [ %1037, %1036 ]
  %1031 = phi i32 [ 2, %1008 ], [ %1046, %1036 ]
  %1032 = add nuw nsw i32 %1027, 1
  %1033 = icmp eq i32 %1031, 3
  %1034 = icmp ugt i32 %1032, 9
  %1035 = or i1 %1034, %1033
  br i1 %1035, label %1188, label %1036

; <label>:1036                                    ; preds = %1026
  %1037 = lshr i32 %1030, 1
  %1038 = lshr i32 %1029, 1
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1037, 1
  %1042 = and i32 %1029, 2
  %1043 = or i32 %1041, %1042
  %1044 = shl nuw nsw i32 %1043, 1
  %1045 = lshr i32 %1040, %1044
  %1046 = and i32 %1045, 3
  %1047 = lshr i32 %1040, 8
  %1048 = sub nsw i32 4, %1043
  %1049 = shl nuw nsw i32 %1048, 1
  %1050 = lshr i32 255, %1049
  %1051 = and i32 %1040, %1050
  %1052 = lshr i32 %1051, 1
  %1053 = and i32 %1052, 85
  %1054 = xor i32 %1053, %1051
  %1055 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1054)  ; Countbits(value)
  %1056 = shl i32 %1055, 2
  %1057 = add i32 %1056, %1028
  %1058 = add i32 %1057, %1047
  %1059 = icmp eq i32 %1046, 0
  br i1 %1059, label %1188, label %1026

; <label>:1060                                    ; preds = %996
  %1061 = icmp eq i32 %1006, 1
  br i1 %1061, label %1062, label %1124

; <label>:1062                                    ; preds = %1060
  %1063 = and i32 %1005, 536870911
  %1064 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1063)  ; FirstbitHi(value)
  %1065 = icmp eq i32 %1064, -1
  %1066 = add i32 %1064, 1
  %1067 = call i32 @dx.op.unary.i32(i32 30, i32 %999)  ; Bfrev(value)
  %1068 = and i32 %1066, 31
  %1069 = select i1 %1065, i32 1, i32 %1068
  %1070 = lshr i32 %1067, %1069
  %1071 = call i32 @dx.op.unary.i32(i32 30, i32 %1000)  ; Bfrev(value)
  %1072 = lshr i32 %1071, %1069
  %1073 = and i32 %1070, 1
  %1074 = shl i32 %1072, 1
  %1075 = and i32 %1074, 2
  %1076 = or i32 %1075, %1073
  %1077 = shl nuw nsw i32 %1076, 3
  %1078 = or i32 %1077, 32
  %1079 = add i32 %1078, %1002
  br label %1080

; <label>:1080                                    ; preds = %1090, %1062
  %1081 = phi i32 [ 0, %1062 ], [ %1086, %1090 ]
  %1082 = phi i32 [ %1079, %1062 ], [ %1122, %1090 ]
  %1083 = phi i32 [ %1072, %1062 ], [ %1092, %1090 ]
  %1084 = phi i32 [ %1070, %1062 ], [ %1091, %1090 ]
  %1085 = phi i32 [ 3, %1062 ], [ %1108, %1090 ]
  %1086 = add nuw nsw i32 %1081, 1
  %1087 = icmp eq i32 %1085, 2
  %1088 = icmp ugt i32 %1086, 9
  %1089 = or i1 %1088, %1087
  br i1 %1089, label %1189, label %1090

; <label>:1090                                    ; preds = %1080
  %1091 = lshr i32 %1084, 1
  %1092 = lshr i32 %1083, 1
  %1093 = and i32 %1082, -4
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.i32 %1094, 1
  %1097 = and i32 %1082, 2
  %1098 = icmp ne i32 %1097, 0
  %1099 = lshr i32 %1095, 16
  %1100 = shl i32 %1096, 16
  %1101 = or i32 %1099, %1100
  %1102 = select i1 %1098, i32 %1101, i32 %1095
  %1103 = and i32 %1091, 1
  %1104 = and i32 %1083, 2
  %1105 = or i32 %1103, %1104
  %1106 = shl nuw nsw i32 %1105, 1
  %1107 = lshr i32 %1102, %1106
  %1108 = and i32 %1107, 3
  %1109 = lshr i32 %1102, 8
  %1110 = sub nsw i32 4, %1105
  %1111 = shl nuw nsw i32 %1110, 1
  %1112 = lshr i32 255, %1111
  %1113 = and i32 %1102, %1112
  %1114 = and i32 %1113, 85
  %1115 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1114)  ; Countbits(value)
  %1116 = shl i32 %1115, 2
  %1117 = and i32 %1113, 170
  %1118 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1117)  ; Countbits(value)
  %1119 = shl i32 %1118, 1
  %1120 = add i32 %1116, %1082
  %1121 = add i32 %1120, %1119
  %1122 = add i32 %1121, %1109
  %1123 = icmp eq i32 %1108, 0
  br i1 %1123, label %1189, label %1080

; <label>:1124                                    ; preds = %1060
  %1125 = icmp eq i32 %1006, 2
  br i1 %1125, label %1126, label %1191

; <label>:1126                                    ; preds = %1124
  %1127 = and i32 %1005, 536870911
  %1128 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1127)  ; FirstbitHi(value)
  %1129 = icmp eq i32 %1128, -1
  %1130 = add i32 %1128, 1
  %1131 = call i32 @dx.op.unary.i32(i32 30, i32 %999)  ; Bfrev(value)
  %1132 = and i32 %1130, 31
  %1133 = select i1 %1129, i32 1, i32 %1132
  %1134 = lshr i32 %1131, %1133
  %1135 = call i32 @dx.op.unary.i32(i32 30, i32 %1000)  ; Bfrev(value)
  %1136 = lshr i32 %1135, %1133
  %1137 = and i32 %1134, 1
  %1138 = shl i32 %1136, 1
  %1139 = and i32 %1138, 2
  %1140 = or i32 %1139, %1137
  %1141 = mul nuw nsw i32 %1140, 10
  %1142 = add i32 %1002, 32
  %1143 = add i32 %1142, %1141
  br label %1144

; <label>:1144                                    ; preds = %1154, %1126
  %1145 = phi i32 [ 0, %1126 ], [ %1150, %1154 ]
  %1146 = phi i32 [ %1143, %1126 ], [ %1186, %1154 ]
  %1147 = phi i32 [ %1136, %1126 ], [ %1156, %1154 ]
  %1148 = phi i32 [ %1134, %1126 ], [ %1155, %1154 ]
  %1149 = phi i32 [ 3, %1126 ], [ %1172, %1154 ]
  %1150 = add nuw nsw i32 %1145, 1
  %1151 = icmp eq i32 %1149, 2
  %1152 = icmp ugt i32 %1150, 9
  %1153 = or i1 %1152, %1151
  br i1 %1153, label %1190, label %1154

; <label>:1154                                    ; preds = %1144
  %1155 = lshr i32 %1148, 1
  %1156 = lshr i32 %1147, 1
  %1157 = and i32 %1146, -4
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.i32 %1158, 1
  %1161 = and i32 %1146, 2
  %1162 = icmp ne i32 %1161, 0
  %1163 = lshr i32 %1159, 16
  %1164 = shl i32 %1160, 16
  %1165 = or i32 %1163, %1164
  %1166 = select i1 %1162, i32 %1165, i32 %1159
  %1167 = and i32 %1155, 1
  %1168 = and i32 %1147, 2
  %1169 = or i32 %1167, %1168
  %1170 = shl nuw nsw i32 %1169, 1
  %1171 = lshr i32 %1166, %1170
  %1172 = and i32 %1171, 3
  %1173 = lshr i32 %1166, 8
  %1174 = sub nsw i32 4, %1169
  %1175 = shl nuw nsw i32 %1174, 1
  %1176 = lshr i32 255, %1175
  %1177 = and i32 %1166, %1176
  %1178 = and i32 %1177, 85
  %1179 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1178)  ; Countbits(value)
  %1180 = shl i32 %1179, 2
  %1181 = and i32 %1177, 170
  %1182 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1181)  ; Countbits(value)
  %1183 = mul i32 %1182, 6
  %1184 = add i32 %1180, %1146
  %1185 = add i32 %1184, %1183
  %1186 = add i32 %1185, %1173
  %1187 = icmp eq i32 %1172, 0
  br i1 %1187, label %1190, label %1144

; <label>:1188                                    ; preds = %1036, %1026
  br label %1191

; <label>:1189                                    ; preds = %1090, %1080
  br label %1191

; <label>:1190                                    ; preds = %1154, %1144
  br label %1191

; <label>:1191                                    ; preds = %1190, %1189, %1188, %1124
  %1192 = phi i32 [ 0, %1124 ], [ %1032, %1188 ], [ %1086, %1189 ], [ %1150, %1190 ]
  %1193 = call i32 @dx.op.binary.i32(i32 39, i32 %969, i32 %1192)  ; UMax(a,b)
  br label %1194

; <label>:1194                                    ; preds = %1191, %968
  %1195 = phi i32 [ %1193, %1191 ], [ %969, %968 ]
  %1196 = add nuw i32 %970, 1
  %1197 = icmp eq i32 %1196, %965
  br i1 %1197, label %1198, label %968

; <label>:1198                                    ; preds = %1194
  br label %1199

; <label>:1199                                    ; preds = %1198, %961
  %1200 = phi i32 [ %962, %961 ], [ %1195, %1198 ]
  %1201 = uitofp i32 %1200 to float
  %1202 = uitofp i32 %723 to float
  %1203 = fdiv fast float %1201, %1202
  br label %1208

; <label>:1204                                    ; preds = %702
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1, %dx.types.Handle %3, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  br label %1208

; <label>:1207                                    ; preds = %698
  br label %1208

; <label>:1208                                    ; preds = %1207, %1204, %1199, %704, %372, %27
  %1209 = phi float [ %1206, %1204 ], [ 0.000000e+00, %27 ], [ %373, %372 ], [ %1203, %1199 ], [ 0.000000e+00, %704 ], [ %699, %1207 ]
  %1210 = icmp eq i32 %16, 0
  br i1 %1210, label %1211, label %1241

; <label>:1211                                    ; preds = %1208
  %1212 = fsub fast float 1.000000e+00, %1209
  %1213 = fcmp fast oeq float %1212, 1.000000e+00
  br i1 %1213, label %1246, label %1214

; <label>:1214                                    ; preds = %1211
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1217 = fcmp fast ogt float %1216, 0.000000e+00
  br i1 %1217, label %1218, label %1230

; <label>:1218                                    ; preds = %1214
  %1219 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1220 = fmul fast float %1216, %1212
  %1221 = fsub fast float %1216, %1219
  %1222 = fmul fast float %1221, %1212
  %1223 = fadd fast float %1222, %1219
  %1224 = fdiv fast float %1220, %1223
  %1225 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1226 = fmul fast float %1225, %1224
  %1227 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1228 = fadd fast float %1226, %1227
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  br label %1246

; <label>:1230                                    ; preds = %1214
  %1231 = fcmp fast olt float %1216, 0.000000e+00
  br i1 %1231, label %1232, label %1246

; <label>:1232                                    ; preds = %1230
  %1233 = extractvalue %dx.types.CBufRet.f32 %1215, 3
  %1234 = fmul fast float %1209, %1233
  %1235 = fsub fast float -0.000000e+00, %1234
  %1236 = fsub fast float %1216, %1233
  %1237 = fmul fast float %1236, %1209
  %1238 = fsub fast float %1237, %1216
  %1239 = fdiv fast float %1235, %1238
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  br label %1246

; <label>:1241                                    ; preds = %1208
  br i1 %26, label %1242, label %1246

; <label>:1242                                    ; preds = %1241
  %1243 = fcmp fast oeq float %1209, 0.000000e+00
  %1244 = select i1 %1243, float 0.000000e+00, float %1209
  %1245 = select i1 %1243, float 5.000000e-01, float %1209
  br label %1246

; <label>:1246                                    ; preds = %1242, %1241, %1232, %1230, %1218, %1211
  %1247 = phi float [ %1229, %1218 ], [ %1240, %1232 ], [ %1244, %1242 ], [ 0.000000e+00, %1211 ], [ %1209, %1230 ], [ %1209, %1241 ]
  %1248 = phi float [ %1229, %1218 ], [ %1240, %1232 ], [ %1245, %1242 ], [ 5.000000e-01, %1211 ], [ %1209, %1230 ], [ %1209, %1241 ]
  %1249 = fmul fast float %1247, %10
  %1250 = fmul fast float %1247, %11
  %1251 = fmul fast float %1248, %12
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1249)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1251)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %13)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #0

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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !12}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{[12 x i32] [i32 10, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 4, i32 8, i32 7, i32 7]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, !26}
!16 = !{!17, !24, null}
!17 = !{!18, !20, !22}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!19 = !{i32 0}
!20 = !{i32 1, !"COLOR", i8 9, i8 0, !19, i8 2, i32 1, i8 4, i32 1, i8 0, !21}
!21 = !{i32 3, i32 15}
!22 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 2, i8 0, !23}
!23 = !{i32 3, i32 3}
!24 = !{!25}
!25 = !{i32 0, !"SV_Target", i8 9, i8 16, !19, i8 0, i32 1, i8 4, i32 0, i8 0, !21}
!26 = !{i32 0, i64 16}
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}

