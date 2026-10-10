;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: b923301ee843190b6cad25cb1e7a2172
;
; Pipeline Runtime Information: 
;
;
;
; Buffer Definitions:
;
; cbuffer 
; {
;
;   [64 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [32 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s1     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV  struct         r/w      U0             u0     1
;                                       UAV  struct         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.RWStructuredBuffer<CSMNodePlanes>" = type { %struct.CSMNodePlanes }
%struct.CSMNodePlanes = type { <4 x float>, float, i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%CSMConstants = type { <4 x i32>, <4 x i32>, <4 x i32>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @serialize_tree() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = shl i32 %7, 2
  %9 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %10 = extractvalue %dx.types.CBufRet.i32 %9, 1
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %1875, !dx.controlflow.hints !21

; <label>:12                                      ; preds = %0
  %13 = extractvalue %dx.types.CBufRet.i32 %9, 0
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 1
  %16 = add i32 %15, -2
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %156, !dx.controlflow.hints !22

; <label>:18                                      ; preds = %12
  %19 = extractvalue %dx.types.CBufRet.i32 %9, 2
  %20 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %19, i32 0)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = extractvalue %dx.types.ResRet.f32 %20, 1
  %23 = extractvalue %dx.types.ResRet.f32 %20, 2
  %24 = extractvalue %dx.types.ResRet.f32 %20, 3
  %25 = call float @dx.op.unary.f32(i32 6, float %21)  ; FAbs(value)
  %26 = call float @dx.op.unary.f32(i32 6, float %22)  ; FAbs(value)
  %27 = fadd fast float %26, %25
  %28 = call float @dx.op.binary.f32(i32 35, float %27, float 0x3F847AE140000000)  ; FMax(a,b)
  %29 = fdiv fast float %25, %28
  %30 = fcmp fast olt float %21, 0.000000e+00
  %31 = fcmp fast olt float %22, 0.000000e+00
  %32 = zext i1 %30 to i32
  %33 = select i1 %31, i32 2, i32 0
  %34 = or i32 %32, %33
  %35 = fmul fast float %29, 1.638300e+04
  %36 = fptoui float %35 to i32
  %37 = fmul fast float %23, 6.553500e+04
  %38 = fptoui float %37 to i32
  %39 = and i32 %38, 65535
  %40 = fmul fast float %24, 1.638375e+04
  %41 = fadd fast float %40, 3.276750e+04
  %42 = fptoui float %41 to i32
  %43 = and i32 %42, 65535
  %44 = shl nuw i32 %34, 30
  %45 = shl i32 %36, 16
  %46 = and i32 %45, 1073676288
  %47 = or i32 %44, %39
  %48 = or i32 %47, %46
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 9, i32 0, i32 %48, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %49 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 10, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %50 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 10, i32 0, i32 undef, i32 %43)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %19, i32 28, i32 32, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %51 = add i32 %19, 1
  %52 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %51, i32 0)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = extractvalue %dx.types.ResRet.f32 %52, 1
  %55 = extractvalue %dx.types.ResRet.f32 %52, 2
  %56 = extractvalue %dx.types.ResRet.f32 %52, 3
  %57 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %58 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %59 = fadd fast float %58, %57
  %60 = call float @dx.op.binary.f32(i32 35, float %59, float 0x3F847AE140000000)  ; FMax(a,b)
  %61 = fdiv fast float %57, %60
  %62 = fcmp fast olt float %53, 0.000000e+00
  %63 = fcmp fast olt float %54, 0.000000e+00
  %64 = zext i1 %62 to i32
  %65 = select i1 %63, i32 2, i32 0
  %66 = or i32 %64, %65
  %67 = fmul fast float %61, 1.638300e+04
  %68 = fptoui float %67 to i32
  %69 = fmul fast float %55, 6.553500e+04
  %70 = fptoui float %69 to i32
  %71 = fmul fast float %56, 1.638375e+04
  %72 = fadd fast float %71, 3.276750e+04
  %73 = fptoui float %72 to i32
  %74 = shl nuw nsw i32 %66, 14
  %75 = and i32 %68, 16383
  %76 = or i32 %75, %74
  %77 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 11, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %78 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 12, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %79 = shl i32 %70, 16
  %80 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 11, i32 0, i32 undef, i32 %79)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %81 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 12, i32 0, i32 undef, i32 %76)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %82 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 12, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %83 = shl i32 %73, 16
  %84 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 12, i32 0, i32 undef, i32 %83)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %51, i32 28, i32 42, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %85 = add i32 %19, 2
  %86 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %85, i32 0)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = extractvalue %dx.types.ResRet.f32 %86, 1
  %89 = extractvalue %dx.types.ResRet.f32 %86, 2
  %90 = extractvalue %dx.types.ResRet.f32 %86, 3
  %91 = call float @dx.op.unary.f32(i32 6, float %87)  ; FAbs(value)
  %92 = call float @dx.op.unary.f32(i32 6, float %88)  ; FAbs(value)
  %93 = fadd fast float %92, %91
  %94 = call float @dx.op.binary.f32(i32 35, float %93, float 0x3F847AE140000000)  ; FMax(a,b)
  %95 = fdiv fast float %91, %94
  %96 = fcmp fast olt float %87, 0.000000e+00
  %97 = fcmp fast olt float %88, 0.000000e+00
  %98 = zext i1 %96 to i32
  %99 = select i1 %97, i32 2, i32 0
  %100 = or i32 %98, %99
  %101 = fmul fast float %95, 1.638300e+04
  %102 = fptoui float %101 to i32
  %103 = fmul fast float %89, 6.553500e+04
  %104 = fptoui float %103 to i32
  %105 = and i32 %104, 65535
  %106 = fmul fast float %90, 1.638375e+04
  %107 = fadd fast float %106, 3.276750e+04
  %108 = fptoui float %107 to i32
  %109 = and i32 %108, 65535
  %110 = shl nuw i32 %100, 30
  %111 = shl i32 %102, 16
  %112 = and i32 %111, 1073676288
  %113 = or i32 %110, %105
  %114 = or i32 %113, %112
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 14, i32 0, i32 %114, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %115 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 15, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %116 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 15, i32 0, i32 undef, i32 %109)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %85, i32 28, i32 52, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %117 = add i32 %19, 3
  %118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %117, i32 0)  ; BufferLoad(srv,index,wot)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = extractvalue %dx.types.ResRet.f32 %118, 1
  %121 = extractvalue %dx.types.ResRet.f32 %118, 2
  %122 = extractvalue %dx.types.ResRet.f32 %118, 3
  %123 = call float @dx.op.unary.f32(i32 6, float %119)  ; FAbs(value)
  %124 = call float @dx.op.unary.f32(i32 6, float %120)  ; FAbs(value)
  %125 = fadd fast float %124, %123
  %126 = call float @dx.op.binary.f32(i32 35, float %125, float 0x3F847AE140000000)  ; FMax(a,b)
  %127 = fdiv fast float %123, %126
  %128 = fcmp fast olt float %119, 0.000000e+00
  %129 = fcmp fast olt float %120, 0.000000e+00
  %130 = zext i1 %128 to i32
  %131 = select i1 %129, i32 2, i32 0
  %132 = or i32 %130, %131
  %133 = fmul fast float %127, 1.638300e+04
  %134 = fptoui float %133 to i32
  %135 = fmul fast float %121, 6.553500e+04
  %136 = fptoui float %135 to i32
  %137 = fmul fast float %122, 1.638375e+04
  %138 = fadd fast float %137, 3.276750e+04
  %139 = fptoui float %138 to i32
  %140 = shl nuw nsw i32 %132, 14
  %141 = and i32 %134, 16383
  %142 = or i32 %141, %140
  %143 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 16, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %144 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 17, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %145 = shl i32 %136, 16
  %146 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 16, i32 0, i32 undef, i32 %145)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %147 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 17, i32 0, i32 undef, i32 %142)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %148 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 17, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %149 = shl i32 %139, 16
  %150 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 17, i32 0, i32 undef, i32 %149)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %117, i32 28, i32 62, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.i32 %151, 1
  %153 = add i32 %152, -2
  %154 = extractvalue %dx.types.CBufRet.i32 %151, 2
  %155 = add i32 %153, %154
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %155, i32 24, i32 72, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1875

; <label>:156                                     ; preds = %12
  %157 = add i32 %15, -1
  %158 = icmp eq i32 %13, %157
  %159 = icmp eq i32 %8, 0
  br i1 %158, label %160, label %1196, !dx.controlflow.hints !23

; <label>:160                                     ; preds = %156
  br i1 %159, label %161, label %196, !dx.controlflow.hints !24

; <label>:161                                     ; preds = %160
  %162 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %162, i32 24)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = add i32 %162, -4
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 24)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = add i32 %162, -3
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %168, i32 24)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = add i32 %162, -2
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %171, i32 24)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = add i32 %162, -1
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %174, i32 24)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = add i32 %167, %164
  %178 = add i32 %177, %170
  %179 = add i32 %178, %173
  %180 = add i32 %179, %176
  %181 = add i32 %13, %162
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %181, i32 24, i32 %180, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %182 = add i32 %180, 3
  %183 = and i32 %182, -4
  %184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.i32 %184, 3
  %186 = call i32 @dx.op.binary.i32(i32 40, i32 %183, i32 %185)  ; UMin(a,b)
  %187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.i32 %187, 3
  %189 = extractvalue %dx.types.CBufRet.i32 %184, 0
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 0
  %192 = mul i32 %191, %189
  %193 = or i32 %192, 1073741824
  %194 = icmp ugt i32 %183, %185
  %195 = select i1 %194, i32 131072, i32 0
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 %186, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 1, i32 0, i32 %193, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 2, i32 0, i32 %188, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 3, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 4, i32 0, i32 %195, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 5, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 6, i32 0, i32 1065353216, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %196

; <label>:196                                     ; preds = %161, %160
  %197 = and i32 %7, 1073741823
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %197, i32 28)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = icmp eq i32 %199, 16777215
  br i1 %200, label %1875, label %201, !dx.controlflow.hints !25

; <label>:201                                     ; preds = %196
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 2
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %203, i32 24)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.i32 %202, 3
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %1875, !dx.controlflow.hints !26

; <label>:208                                     ; preds = %201
  %209 = extractvalue %dx.types.CBufRet.i32 %202, 1
  %210 = add i32 %209, -2
  %211 = icmp sgt i32 %210, -1
  br i1 %211, label %212, label %290

; <label>:212                                     ; preds = %208
  %213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.i32 %213, 1
  br label %215

; <label>:215                                     ; preds = %280, %212
  %216 = phi i32 [ %214, %212 ], [ %221, %280 ]
  %217 = phi i32 [ -1, %212 ], [ %284, %280 ]
  %218 = phi i32 [ 0, %212 ], [ %281, %280 ]
  %219 = phi i32 [ 0, %212 ], [ %283, %280 ]
  %220 = phi i32 [ %197, %212 ], [ %282, %280 ]
  %221 = lshr i32 %216, 2
  %222 = add i32 %219, %220
  %223 = and i32 %220, 3
  %224 = icmp eq i32 %223, 3
  br i1 %224, label %225, label %250, !dx.controlflow.hints !27

; <label>:225                                     ; preds = %215
  %226 = add i32 %222, -3
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %226, i32 28)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = icmp eq i32 %228, 16777215
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %226, i32 24)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = select i1 %229, i32 0, i32 %231
  %233 = add i32 %222, -2
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %233, i32 28)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = icmp eq i32 %235, 16777215
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %233, i32 24)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = select i1 %236, i32 0, i32 %238
  %240 = add i32 %222, -1
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %240, i32 28)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = icmp eq i32 %242, 16777215
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %240, i32 24)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = select i1 %243, i32 0, i32 %245
  %247 = add i32 %232, %218
  %248 = add i32 %247, %239
  %249 = add i32 %248, %246
  br label %280

; <label>:250                                     ; preds = %215
  %251 = icmp eq i32 %223, 2
  br i1 %251, label %252, label %269, !dx.controlflow.hints !28

; <label>:252                                     ; preds = %250
  %253 = add i32 %222, -2
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %253, i32 28)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = icmp eq i32 %255, 16777215
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %253, i32 24)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = select i1 %256, i32 0, i32 %258
  %260 = add i32 %222, -1
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %260, i32 28)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = icmp eq i32 %262, 16777215
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %260, i32 24)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = select i1 %263, i32 0, i32 %265
  %267 = add i32 %259, %218
  %268 = add i32 %267, %266
  br label %280

; <label>:269                                     ; preds = %250
  %270 = icmp eq i32 %223, 1
  br i1 %270, label %271, label %280, !dx.controlflow.hints !29

; <label>:271                                     ; preds = %269
  %272 = add i32 %222, -1
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %272, i32 28)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = icmp eq i32 %274, 16777215
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %272, i32 24)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = select i1 %275, i32 0, i32 %277
  %279 = add i32 %278, %218
  br label %280

; <label>:280                                     ; preds = %271, %269, %252, %225
  %281 = phi i32 [ %249, %225 ], [ %268, %252 ], [ %279, %271 ], [ %218, %269 ]
  %282 = lshr i32 %220, 2
  %283 = add i32 %219, %221
  %284 = add nsw i32 %217, 1
  %285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.i32 %285, 1
  %287 = add i32 %286, -2
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %215, label %289

; <label>:289                                     ; preds = %280
  br label %290

; <label>:290                                     ; preds = %289, %208
  %291 = phi i32 [ 0, %208 ], [ %281, %289 ]
  %292 = add i32 %291, %205
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %197, i32 28)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = sub i32 %292, %294
  %296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.i32 %296, 3
  %298 = bitcast i32 %297 to float
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %197, i32 20)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = lshr i32 %300, 8
  %302 = xor i32 %301, -1
  %303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.i32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.i32 %303, 1
  %306 = bitcast i32 %305 to float
  %307 = and i32 %302, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %526, label %309, !dx.controlflow.hints !30

; <label>:309                                     ; preds = %290
  %310 = add i32 %292, 6
  %311 = icmp ult i32 %310, %206
  br i1 %311, label %312, label %1180, !dx.controlflow.hints !31

; <label>:312                                     ; preds = %309
  %313 = icmp eq i32 %304, 1
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 1
  br i1 %313, label %424, label %316, !dx.controlflow.hints !32

; <label>:316                                     ; preds = %312
  br i1 %159, label %339, label %317

; <label>:317                                     ; preds = %316
  br label %318

; <label>:318                                     ; preds = %333, %317
  %319 = phi i32 [ %335, %333 ], [ %8, %317 ]
  %320 = phi i32 [ %334, %333 ], [ 0, %317 ]
  %321 = phi i32 [ %336, %333 ], [ 0, %317 ]
  %322 = and i32 %319, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %333, label %324, !dx.controlflow.hints !33

; <label>:324                                     ; preds = %318
  %325 = lshr i32 %321, 1
  %326 = and i32 %321, 1
  %327 = icmp ne i32 %326, 0
  %328 = select i1 %327, i32 %315, i32 0
  %329 = add i32 %328, %325
  %330 = and i32 %329, 31
  %331 = shl i32 1, %330
  %332 = or i32 %331, %320
  br label %333

; <label>:333                                     ; preds = %324, %318
  %334 = phi i32 [ %332, %324 ], [ %320, %318 ]
  %335 = lshr i32 %319, 1
  %336 = add i32 %321, 1
  %337 = icmp eq i32 %335, 0
  br i1 %337, label %338, label %318

; <label>:338                                     ; preds = %333
  br label %339

; <label>:339                                     ; preds = %338, %316
  %340 = phi i32 [ 0, %316 ], [ %334, %338 ]
  %341 = and i32 %315, 31
  %342 = shl i32 1, %341
  %343 = add i32 %342, -1
  %344 = and i32 %340, %343
  %345 = lshr i32 %340, %341
  %346 = mul i32 %344, %304
  %347 = uitofp i32 %346 to float
  %348 = fadd fast float %347, 5.000000e-01
  %349 = fmul fast float %348, %306
  %350 = icmp eq i32 %304, 0
  br i1 %350, label %388, label %351

; <label>:351                                     ; preds = %339
  %352 = mul i32 %345, %304
  %353 = uitofp i32 %352 to float
  %354 = fadd fast float %353, 5.000000e-01
  %355 = fmul fast float %354, %306
  br label %356

; <label>:356                                     ; preds = %383, %351
  %357 = phi float [ %384, %383 ], [ %355, %351 ]
  %358 = phi float [ %379, %383 ], [ 2.000000e+00, %351 ]
  %359 = phi i32 [ %385, %383 ], [ 0, %351 ]
  br label %360

; <label>:360                                     ; preds = %378, %356
  %361 = phi float [ %380, %378 ], [ %349, %356 ]
  %362 = phi float [ %379, %378 ], [ %358, %356 ]
  %363 = phi i32 [ %381, %378 ], [ 0, %356 ]
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = fmul fast float %365, %361
  %368 = fmul fast float %366, %357
  %369 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %370 = extractvalue %dx.types.CBufRet.f32 %364, 3
  %371 = fadd fast float %367, %369
  %372 = fadd fast float %368, %370
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fcmp fast ogt float %374, 0.000000e+00
  br i1 %375, label %376, label %378, !dx.controlflow.hints !34

; <label>:376                                     ; preds = %360
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float %362)  ; FMin(a,b)
  br label %378

; <label>:378                                     ; preds = %376, %360
  %379 = phi float [ %377, %376 ], [ %362, %360 ]
  %380 = fadd fast float %361, %306
  %381 = add nuw i32 %363, 1
  %382 = icmp eq i32 %381, %304
  br i1 %382, label %383, label %360

; <label>:383                                     ; preds = %378
  %384 = fadd fast float %357, %306
  %385 = add nuw i32 %359, 1
  %386 = icmp eq i32 %385, %304
  br i1 %386, label %387, label %356

; <label>:387                                     ; preds = %383
  br label %388

; <label>:388                                     ; preds = %387, %339
  %389 = phi float [ 2.000000e+00, %339 ], [ %379, %387 ]
  %390 = fcmp fast ole float %389, 1.000000e+00
  %391 = select i1 %390, float %389, float 0.000000e+00
  br i1 %350, label %474, label %392

; <label>:392                                     ; preds = %388
  %393 = mul i32 %345, %304
  %394 = uitofp i32 %393 to float
  %395 = fadd fast float %394, 5.000000e-01
  %396 = fmul fast float %395, %306
  br label %397

; <label>:397                                     ; preds = %420, %392
  %398 = phi float [ %421, %420 ], [ %396, %392 ]
  %399 = phi float [ %416, %420 ], [ 0.000000e+00, %392 ]
  %400 = phi i32 [ %422, %420 ], [ 0, %392 ]
  br label %401

; <label>:401                                     ; preds = %401, %397
  %402 = phi float [ %417, %401 ], [ %349, %397 ]
  %403 = phi float [ %416, %401 ], [ %399, %397 ]
  %404 = phi i32 [ %418, %401 ], [ 0, %397 ]
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = fmul fast float %406, %402
  %409 = fmul fast float %407, %398
  %410 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %411 = extractvalue %dx.types.CBufRet.f32 %405, 3
  %412 = fadd fast float %408, %410
  %413 = fadd fast float %409, %411
  %414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %412, float %413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %415 = extractvalue %dx.types.ResRet.f32 %414, 0
  %416 = call float @dx.op.binary.f32(i32 35, float %415, float %403)  ; FMax(a,b)
  %417 = fadd fast float %402, %306
  %418 = add nuw i32 %404, 1
  %419 = icmp eq i32 %418, %304
  br i1 %419, label %420, label %401

; <label>:420                                     ; preds = %401
  %421 = fadd fast float %398, %306
  %422 = add nuw i32 %400, 1
  %423 = icmp eq i32 %422, %304
  br i1 %423, label %473, label %397

; <label>:424                                     ; preds = %312
  br i1 %159, label %447, label %425

; <label>:425                                     ; preds = %424
  br label %426

; <label>:426                                     ; preds = %441, %425
  %427 = phi i32 [ %443, %441 ], [ %8, %425 ]
  %428 = phi i32 [ %442, %441 ], [ 0, %425 ]
  %429 = phi i32 [ %444, %441 ], [ 0, %425 ]
  %430 = and i32 %427, 1
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %441, label %432, !dx.controlflow.hints !33

; <label>:432                                     ; preds = %426
  %433 = lshr i32 %429, 1
  %434 = and i32 %429, 1
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %435, i32 %315, i32 0
  %437 = add i32 %436, %433
  %438 = and i32 %437, 31
  %439 = shl i32 1, %438
  %440 = or i32 %439, %428
  br label %441

; <label>:441                                     ; preds = %432, %426
  %442 = phi i32 [ %440, %432 ], [ %428, %426 ]
  %443 = lshr i32 %427, 1
  %444 = add i32 %429, 1
  %445 = icmp eq i32 %443, 0
  br i1 %445, label %446, label %426

; <label>:446                                     ; preds = %441
  br label %447

; <label>:447                                     ; preds = %446, %424
  %448 = phi i32 [ 0, %424 ], [ %442, %446 ]
  %449 = and i32 %315, 31
  %450 = shl i32 1, %449
  %451 = add i32 %450, -1
  %452 = and i32 %448, %451
  %453 = lshr i32 %448, %449
  %454 = uitofp i32 %452 to float
  %455 = fadd fast float %454, 5.000000e-01
  %456 = uitofp i32 %453 to float
  %457 = fadd fast float %456, 5.000000e-01
  %458 = fmul fast float %455, %298
  %459 = fmul fast float %457, %298
  %460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %461 = extractvalue %dx.types.CBufRet.f32 %460, 0
  %462 = extractvalue %dx.types.CBufRet.f32 %460, 1
  %463 = fmul fast float %458, %461
  %464 = fmul fast float %459, %462
  %465 = extractvalue %dx.types.CBufRet.f32 %460, 2
  %466 = extractvalue %dx.types.CBufRet.f32 %460, 3
  %467 = fadd fast float %463, %465
  %468 = fadd fast float %464, %466
  %469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %467, float %468, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  br label %474

; <label>:473                                     ; preds = %420
  br label %474

; <label>:474                                     ; preds = %473, %447, %388
  %475 = phi float [ %470, %447 ], [ %391, %388 ], [ %391, %473 ]
  %476 = phi float [ %472, %447 ], [ 0.000000e+00, %388 ], [ %416, %473 ]
  %477 = call float @dx.op.binary.f32(i32 35, float %475, float 0.000000e+00)  ; FMax(a,b)
  %478 = call float @dx.op.binary.f32(i32 35, float %476, float 0.000000e+00)  ; FMax(a,b)
  %479 = fcmp fast une float %476, 0.000000e+00
  br i1 %479, label %483, label %480, !dx.controlflow.hints !35

; <label>:480                                     ; preds = %474
  %481 = fcmp fast une float %475, 0.000000e+00
  %482 = select i1 %481, float 1.000000e+00, float 0x3F847AE140000000
  br label %498

; <label>:483                                     ; preds = %474
  %484 = fcmp fast ugt float %475, %476
  br i1 %484, label %485, label %495, !dx.controlflow.hints !36

; <label>:485                                     ; preds = %483
  %486 = fadd fast float %476, 0x3E7AD7F2A0000000
  %487 = fcmp fast ult float %486, %475
  br i1 %487, label %488, label %493, !dx.controlflow.hints !37

; <label>:488                                     ; preds = %485
  %489 = fsub fast float %475, %476
  %490 = fmul fast float %489, 0x3F847AE140000000
  %491 = fadd fast float %490, %475
  %492 = call float @dx.op.binary.f32(i32 36, float %491, float 1.000000e+00)  ; FMin(a,b)
  br label %498

; <label>:493                                     ; preds = %485
  %494 = fadd fast float %476, 0xBE7AD7F2A0000000
  br label %498

; <label>:495                                     ; preds = %483
  %496 = fadd fast float %476, 0xBE7AD7F2A0000000
  %497 = call float @dx.op.binary.f32(i32 36, float %475, float %496)  ; FMin(a,b)
  br label %498

; <label>:498                                     ; preds = %495, %493, %488, %480
  %499 = phi float [ %497, %495 ], [ %494, %493 ], [ %477, %488 ], [ %477, %480 ]
  %500 = phi float [ %478, %495 ], [ %478, %493 ], [ %492, %488 ], [ %482, %480 ]
  %501 = fadd fast float %500, %499
  %502 = fmul fast float %501, 8.191875e+03
  %503 = fadd fast float %502, 3.276750e+04
  %504 = fptoui float %503 to i32
  %505 = and i32 %504, 65535
  %506 = and i32 %292, 2
  %507 = icmp eq i32 %506, 0
  %508 = lshr i32 %292, 2
  br i1 %507, label %509, label %510, !dx.controlflow.hints !38

; <label>:509                                     ; preds = %498
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %508, i32 0, i32 65535, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %516

; <label>:510                                     ; preds = %498
  %511 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %508, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %512 = add nuw nsw i32 %508, 1
  %513 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %512, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %514 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %508, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %515 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %512, i32 0, i32 undef, i32 0)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %516

; <label>:516                                     ; preds = %510, %509
  %517 = add i32 %292, 4
  %518 = lshr i32 %517, 2
  %519 = and i32 %517, 2
  %520 = icmp ne i32 %519, 0
  %521 = shl nuw nsw i32 %519, 3
  %522 = select i1 %520, i32 65535, i32 -65536
  %523 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %518, i32 0, i32 undef, i32 %522)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %524 = shl i32 %505, %521
  %525 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %518, i32 0, i32 undef, i32 %524)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %526

; <label>:526                                     ; preds = %516, %290
  %527 = phi i32 [ %310, %516 ], [ %292, %290 ]
  %528 = phi i32 [ 2, %516 ], [ 0, %290 ]
  %529 = and i32 %302, 2
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %744, label %531, !dx.controlflow.hints !30

; <label>:531                                     ; preds = %526
  %532 = add i32 %527, 6
  %533 = icmp ult i32 %532, %206
  br i1 %533, label %534, label %1180, !dx.controlflow.hints !31

; <label>:534                                     ; preds = %531
  %535 = or i32 %528, 8
  %536 = icmp eq i32 %304, 1
  %537 = or i32 %8, 1
  %538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.i32 %538, 1
  br i1 %536, label %541, label %540, !dx.controlflow.hints !32

; <label>:540                                     ; preds = %534
  br label %542

; <label>:541                                     ; preds = %534
  br label %630

; <label>:542                                     ; preds = %557, %540
  %543 = phi i32 [ %559, %557 ], [ %537, %540 ]
  %544 = phi i32 [ %558, %557 ], [ 0, %540 ]
  %545 = phi i32 [ %560, %557 ], [ 0, %540 ]
  %546 = and i32 %543, 1
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %557, label %548, !dx.controlflow.hints !33

; <label>:548                                     ; preds = %542
  %549 = lshr i32 %545, 1
  %550 = and i32 %545, 1
  %551 = icmp ne i32 %550, 0
  %552 = select i1 %551, i32 %539, i32 0
  %553 = add i32 %552, %549
  %554 = and i32 %553, 31
  %555 = shl i32 1, %554
  %556 = or i32 %555, %544
  br label %557

; <label>:557                                     ; preds = %548, %542
  %558 = phi i32 [ %556, %548 ], [ %544, %542 ]
  %559 = lshr i32 %543, 1
  %560 = add i32 %545, 1
  %561 = icmp eq i32 %559, 0
  br i1 %561, label %728, label %542

; <label>:562                                     ; preds = %739, %589
  %563 = phi float [ %590, %589 ], [ %743, %739 ]
  %564 = phi float [ %585, %589 ], [ 2.000000e+00, %739 ]
  %565 = phi i32 [ %591, %589 ], [ 0, %739 ]
  br label %566

; <label>:566                                     ; preds = %584, %562
  %567 = phi float [ %586, %584 ], [ %737, %562 ]
  %568 = phi float [ %585, %584 ], [ %564, %562 ]
  %569 = phi i32 [ %587, %584 ], [ 0, %562 ]
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 0
  %572 = extractvalue %dx.types.CBufRet.f32 %570, 1
  %573 = fmul fast float %571, %567
  %574 = fmul fast float %572, %563
  %575 = extractvalue %dx.types.CBufRet.f32 %570, 2
  %576 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %577 = fadd fast float %573, %575
  %578 = fadd fast float %574, %576
  %579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 0
  %581 = fcmp fast ogt float %580, 0.000000e+00
  br i1 %581, label %582, label %584, !dx.controlflow.hints !34

; <label>:582                                     ; preds = %566
  %583 = call float @dx.op.binary.f32(i32 36, float %580, float %568)  ; FMin(a,b)
  br label %584

; <label>:584                                     ; preds = %582, %566
  %585 = phi float [ %583, %582 ], [ %568, %566 ]
  %586 = fadd fast float %567, %306
  %587 = add nuw i32 %569, 1
  %588 = icmp eq i32 %587, %304
  br i1 %588, label %589, label %566

; <label>:589                                     ; preds = %584
  %590 = fadd fast float %563, %306
  %591 = add nuw i32 %565, 1
  %592 = icmp eq i32 %591, %304
  br i1 %592, label %593, label %562

; <label>:593                                     ; preds = %589
  br label %594

; <label>:594                                     ; preds = %728, %593
  %595 = phi float [ 2.000000e+00, %728 ], [ %585, %593 ]
  %596 = fcmp fast ole float %595, 1.000000e+00
  %597 = select i1 %596, float %595, float 0.000000e+00
  br i1 %738, label %651, label %598

; <label>:598                                     ; preds = %594
  %599 = mul i32 %733, %304
  %600 = uitofp i32 %599 to float
  %601 = fadd fast float %600, 5.000000e-01
  %602 = fmul fast float %601, %306
  br label %603

; <label>:603                                     ; preds = %626, %598
  %604 = phi float [ %627, %626 ], [ %602, %598 ]
  %605 = phi float [ %622, %626 ], [ 0.000000e+00, %598 ]
  %606 = phi i32 [ %628, %626 ], [ 0, %598 ]
  br label %607

; <label>:607                                     ; preds = %607, %603
  %608 = phi float [ %623, %607 ], [ %737, %603 ]
  %609 = phi float [ %622, %607 ], [ %605, %603 ]
  %610 = phi i32 [ %624, %607 ], [ 0, %603 ]
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %614 = fmul fast float %612, %608
  %615 = fmul fast float %613, %604
  %616 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %618 = fadd fast float %614, %616
  %619 = fadd fast float %615, %617
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %618, float %619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = call float @dx.op.binary.f32(i32 35, float %621, float %609)  ; FMax(a,b)
  %623 = fadd fast float %608, %306
  %624 = add nuw i32 %610, 1
  %625 = icmp eq i32 %624, %304
  br i1 %625, label %626, label %607

; <label>:626                                     ; preds = %607
  %627 = fadd fast float %604, %306
  %628 = add nuw i32 %606, 1
  %629 = icmp eq i32 %628, %304
  br i1 %629, label %650, label %603

; <label>:630                                     ; preds = %645, %541
  %631 = phi i32 [ %647, %645 ], [ %537, %541 ]
  %632 = phi i32 [ %646, %645 ], [ 0, %541 ]
  %633 = phi i32 [ %648, %645 ], [ 0, %541 ]
  %634 = and i32 %631, 1
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %645, label %636, !dx.controlflow.hints !33

; <label>:636                                     ; preds = %630
  %637 = lshr i32 %633, 1
  %638 = and i32 %633, 1
  %639 = icmp ne i32 %638, 0
  %640 = select i1 %639, i32 %539, i32 0
  %641 = add i32 %640, %637
  %642 = and i32 %641, 31
  %643 = shl i32 1, %642
  %644 = or i32 %643, %632
  br label %645

; <label>:645                                     ; preds = %636, %630
  %646 = phi i32 [ %644, %636 ], [ %632, %630 ]
  %647 = lshr i32 %631, 1
  %648 = add i32 %633, 1
  %649 = icmp eq i32 %647, 0
  br i1 %649, label %703, label %630

; <label>:650                                     ; preds = %626
  br label %651

; <label>:651                                     ; preds = %703, %650, %594
  %652 = phi float [ %725, %703 ], [ %597, %594 ], [ %597, %650 ]
  %653 = phi float [ %727, %703 ], [ 0.000000e+00, %594 ], [ %622, %650 ]
  %654 = call float @dx.op.binary.f32(i32 35, float %652, float 0.000000e+00)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 35, float %653, float 0.000000e+00)  ; FMax(a,b)
  %656 = fcmp fast une float %653, 0.000000e+00
  br i1 %656, label %660, label %657, !dx.controlflow.hints !35

; <label>:657                                     ; preds = %651
  %658 = fcmp fast une float %652, 0.000000e+00
  %659 = select i1 %658, float 1.000000e+00, float 0x3F847AE140000000
  br label %675

; <label>:660                                     ; preds = %651
  %661 = fcmp fast ugt float %652, %653
  br i1 %661, label %662, label %672, !dx.controlflow.hints !36

; <label>:662                                     ; preds = %660
  %663 = fadd fast float %653, 0x3E7AD7F2A0000000
  %664 = fcmp fast ult float %663, %652
  br i1 %664, label %665, label %670, !dx.controlflow.hints !37

; <label>:665                                     ; preds = %662
  %666 = fsub fast float %652, %653
  %667 = fmul fast float %666, 0x3F847AE140000000
  %668 = fadd fast float %667, %652
  %669 = call float @dx.op.binary.f32(i32 36, float %668, float 1.000000e+00)  ; FMin(a,b)
  br label %675

; <label>:670                                     ; preds = %662
  %671 = fadd fast float %653, 0xBE7AD7F2A0000000
  br label %675

; <label>:672                                     ; preds = %660
  %673 = fadd fast float %653, 0xBE7AD7F2A0000000
  %674 = call float @dx.op.binary.f32(i32 36, float %652, float %673)  ; FMin(a,b)
  br label %675

; <label>:675                                     ; preds = %672, %670, %665, %657
  %676 = phi float [ %674, %672 ], [ %671, %670 ], [ %654, %665 ], [ %654, %657 ]
  %677 = phi float [ %655, %672 ], [ %655, %670 ], [ %669, %665 ], [ %659, %657 ]
  %678 = fadd fast float %677, %676
  %679 = fmul fast float %678, 8.191875e+03
  %680 = fadd fast float %679, 3.276750e+04
  %681 = fptoui float %680 to i32
  %682 = and i32 %681, 65535
  %683 = and i32 %527, 2
  %684 = icmp eq i32 %683, 0
  %685 = lshr i32 %527, 2
  br i1 %684, label %686, label %687, !dx.controlflow.hints !38

; <label>:686                                     ; preds = %675
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %685, i32 0, i32 65535, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %693

; <label>:687                                     ; preds = %675
  %688 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %685, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %689 = add nuw nsw i32 %685, 1
  %690 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %689, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %691 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %685, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %692 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %689, i32 0, i32 undef, i32 0)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %693

; <label>:693                                     ; preds = %687, %686
  %694 = add i32 %527, 4
  %695 = lshr i32 %694, 2
  %696 = and i32 %694, 2
  %697 = icmp ne i32 %696, 0
  %698 = shl nuw nsw i32 %696, 3
  %699 = select i1 %697, i32 65535, i32 -65536
  %700 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %695, i32 0, i32 undef, i32 %699)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %701 = shl i32 %682, %698
  %702 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %695, i32 0, i32 undef, i32 %701)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %744

; <label>:703                                     ; preds = %645
  %704 = and i32 %539, 31
  %705 = shl i32 1, %704
  %706 = add i32 %705, -1
  %707 = and i32 %646, %706
  %708 = lshr i32 %646, %704
  %709 = uitofp i32 %707 to float
  %710 = fadd fast float %709, 5.000000e-01
  %711 = uitofp i32 %708 to float
  %712 = fadd fast float %711, 5.000000e-01
  %713 = fmul fast float %710, %298
  %714 = fmul fast float %712, %298
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 1
  %718 = fmul fast float %716, %713
  %719 = fmul fast float %717, %714
  %720 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %721 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %722 = fadd fast float %718, %720
  %723 = fadd fast float %719, %721
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %722, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %722, float %723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  br label %651

; <label>:728                                     ; preds = %557
  %729 = and i32 %539, 31
  %730 = shl i32 1, %729
  %731 = add i32 %730, -1
  %732 = and i32 %558, %731
  %733 = lshr i32 %558, %729
  %734 = mul i32 %732, %304
  %735 = uitofp i32 %734 to float
  %736 = fadd fast float %735, 5.000000e-01
  %737 = fmul fast float %736, %306
  %738 = icmp eq i32 %304, 0
  br i1 %738, label %594, label %739

; <label>:739                                     ; preds = %728
  %740 = mul i32 %733, %304
  %741 = uitofp i32 %740 to float
  %742 = fadd fast float %741, 5.000000e-01
  %743 = fmul fast float %742, %306
  br label %562

; <label>:744                                     ; preds = %693, %526
  %745 = phi i32 [ %532, %693 ], [ %527, %526 ]
  %746 = phi i32 [ %535, %693 ], [ %528, %526 ]
  %747 = and i32 %302, 4
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %921, label %749, !dx.controlflow.hints !30

; <label>:749                                     ; preds = %744
  %750 = add i32 %745, 6
  %751 = icmp ult i32 %750, %206
  br i1 %751, label %752, label %1180, !dx.controlflow.hints !31

; <label>:752                                     ; preds = %749
  %753 = or i32 %746, 32
  %754 = icmp eq i32 %304, 1
  %755 = or i32 %8, 2
  %756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.i32 %756, 1
  br i1 %754, label %759, label %758, !dx.controlflow.hints !32

; <label>:758                                     ; preds = %752
  br label %760

; <label>:759                                     ; preds = %752
  br label %848

; <label>:760                                     ; preds = %775, %758
  %761 = phi i32 [ %777, %775 ], [ %755, %758 ]
  %762 = phi i32 [ %776, %775 ], [ 0, %758 ]
  %763 = phi i32 [ %778, %775 ], [ 0, %758 ]
  %764 = and i32 %761, 1
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %775, label %766, !dx.controlflow.hints !33

; <label>:766                                     ; preds = %760
  %767 = lshr i32 %763, 1
  %768 = and i32 %763, 1
  %769 = icmp ne i32 %768, 0
  %770 = select i1 %769, i32 %757, i32 0
  %771 = add i32 %770, %767
  %772 = and i32 %771, 31
  %773 = shl i32 1, %772
  %774 = or i32 %773, %762
  br label %775

; <label>:775                                     ; preds = %766, %760
  %776 = phi i32 [ %774, %766 ], [ %762, %760 ]
  %777 = lshr i32 %761, 1
  %778 = add i32 %763, 1
  %779 = icmp eq i32 %777, 0
  br i1 %779, label %954, label %760

; <label>:780                                     ; preds = %965, %807
  %781 = phi float [ %808, %807 ], [ %969, %965 ]
  %782 = phi float [ %803, %807 ], [ 2.000000e+00, %965 ]
  %783 = phi i32 [ %809, %807 ], [ 0, %965 ]
  br label %784

; <label>:784                                     ; preds = %802, %780
  %785 = phi float [ %804, %802 ], [ %963, %780 ]
  %786 = phi float [ %803, %802 ], [ %782, %780 ]
  %787 = phi i32 [ %805, %802 ], [ 0, %780 ]
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 1
  %791 = fmul fast float %789, %785
  %792 = fmul fast float %790, %781
  %793 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %795 = fadd fast float %791, %793
  %796 = fadd fast float %792, %794
  %797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %795, float %796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = fcmp fast ogt float %798, 0.000000e+00
  br i1 %799, label %800, label %802, !dx.controlflow.hints !34

; <label>:800                                     ; preds = %784
  %801 = call float @dx.op.binary.f32(i32 36, float %798, float %786)  ; FMin(a,b)
  br label %802

; <label>:802                                     ; preds = %800, %784
  %803 = phi float [ %801, %800 ], [ %786, %784 ]
  %804 = fadd fast float %785, %306
  %805 = add nuw i32 %787, 1
  %806 = icmp eq i32 %805, %304
  br i1 %806, label %807, label %784

; <label>:807                                     ; preds = %802
  %808 = fadd fast float %781, %306
  %809 = add nuw i32 %783, 1
  %810 = icmp eq i32 %809, %304
  br i1 %810, label %811, label %780

; <label>:811                                     ; preds = %807
  br label %812

; <label>:812                                     ; preds = %954, %811
  %813 = phi float [ 2.000000e+00, %954 ], [ %803, %811 ]
  %814 = fcmp fast ole float %813, 1.000000e+00
  %815 = select i1 %814, float %813, float 0.000000e+00
  br i1 %964, label %869, label %816

; <label>:816                                     ; preds = %812
  %817 = mul i32 %959, %304
  %818 = uitofp i32 %817 to float
  %819 = fadd fast float %818, 5.000000e-01
  %820 = fmul fast float %819, %306
  br label %821

; <label>:821                                     ; preds = %844, %816
  %822 = phi float [ %845, %844 ], [ %820, %816 ]
  %823 = phi float [ %840, %844 ], [ 0.000000e+00, %816 ]
  %824 = phi i32 [ %846, %844 ], [ 0, %816 ]
  br label %825

; <label>:825                                     ; preds = %825, %821
  %826 = phi float [ %841, %825 ], [ %963, %821 ]
  %827 = phi float [ %840, %825 ], [ %823, %821 ]
  %828 = phi i32 [ %842, %825 ], [ 0, %821 ]
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %832 = fmul fast float %830, %826
  %833 = fmul fast float %831, %822
  %834 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %835 = extractvalue %dx.types.CBufRet.f32 %829, 3
  %836 = fadd fast float %832, %834
  %837 = fadd fast float %833, %835
  %838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %836, float %837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = call float @dx.op.binary.f32(i32 35, float %839, float %827)  ; FMax(a,b)
  %841 = fadd fast float %826, %306
  %842 = add nuw i32 %828, 1
  %843 = icmp eq i32 %842, %304
  br i1 %843, label %844, label %825

; <label>:844                                     ; preds = %825
  %845 = fadd fast float %822, %306
  %846 = add nuw i32 %824, 1
  %847 = icmp eq i32 %846, %304
  br i1 %847, label %868, label %821

; <label>:848                                     ; preds = %863, %759
  %849 = phi i32 [ %865, %863 ], [ %755, %759 ]
  %850 = phi i32 [ %864, %863 ], [ 0, %759 ]
  %851 = phi i32 [ %866, %863 ], [ 0, %759 ]
  %852 = and i32 %849, 1
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %863, label %854, !dx.controlflow.hints !33

; <label>:854                                     ; preds = %848
  %855 = lshr i32 %851, 1
  %856 = and i32 %851, 1
  %857 = icmp ne i32 %856, 0
  %858 = select i1 %857, i32 %757, i32 0
  %859 = add i32 %858, %855
  %860 = and i32 %859, 31
  %861 = shl i32 1, %860
  %862 = or i32 %861, %850
  br label %863

; <label>:863                                     ; preds = %854, %848
  %864 = phi i32 [ %862, %854 ], [ %850, %848 ]
  %865 = lshr i32 %849, 1
  %866 = add i32 %851, 1
  %867 = icmp eq i32 %865, 0
  br i1 %867, label %929, label %848

; <label>:868                                     ; preds = %844
  br label %869

; <label>:869                                     ; preds = %929, %868, %812
  %870 = phi float [ %951, %929 ], [ %815, %812 ], [ %815, %868 ]
  %871 = phi float [ %953, %929 ], [ 0.000000e+00, %812 ], [ %840, %868 ]
  %872 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 35, float %871, float 0.000000e+00)  ; FMax(a,b)
  %874 = fcmp fast une float %871, 0.000000e+00
  br i1 %874, label %878, label %875, !dx.controlflow.hints !35

; <label>:875                                     ; preds = %869
  %876 = fcmp fast une float %870, 0.000000e+00
  %877 = select i1 %876, float 1.000000e+00, float 0x3F847AE140000000
  br label %893

; <label>:878                                     ; preds = %869
  %879 = fcmp fast ugt float %870, %871
  br i1 %879, label %880, label %890, !dx.controlflow.hints !36

; <label>:880                                     ; preds = %878
  %881 = fadd fast float %871, 0x3E7AD7F2A0000000
  %882 = fcmp fast ult float %881, %870
  br i1 %882, label %883, label %888, !dx.controlflow.hints !37

; <label>:883                                     ; preds = %880
  %884 = fsub fast float %870, %871
  %885 = fmul fast float %884, 0x3F847AE140000000
  %886 = fadd fast float %885, %870
  %887 = call float @dx.op.binary.f32(i32 36, float %886, float 1.000000e+00)  ; FMin(a,b)
  br label %893

; <label>:888                                     ; preds = %880
  %889 = fadd fast float %871, 0xBE7AD7F2A0000000
  br label %893

; <label>:890                                     ; preds = %878
  %891 = fadd fast float %871, 0xBE7AD7F2A0000000
  %892 = call float @dx.op.binary.f32(i32 36, float %870, float %891)  ; FMin(a,b)
  br label %893

; <label>:893                                     ; preds = %890, %888, %883, %875
  %894 = phi float [ %892, %890 ], [ %889, %888 ], [ %872, %883 ], [ %872, %875 ]
  %895 = phi float [ %873, %890 ], [ %873, %888 ], [ %887, %883 ], [ %877, %875 ]
  %896 = fadd fast float %895, %894
  %897 = fmul fast float %896, 8.191875e+03
  %898 = fadd fast float %897, 3.276750e+04
  %899 = fptoui float %898 to i32
  %900 = and i32 %899, 65535
  %901 = and i32 %745, 2
  %902 = icmp eq i32 %901, 0
  %903 = lshr i32 %745, 2
  br i1 %902, label %904, label %905, !dx.controlflow.hints !38

; <label>:904                                     ; preds = %893
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %903, i32 0, i32 65535, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %911

; <label>:905                                     ; preds = %893
  %906 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %903, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %907 = add nuw nsw i32 %903, 1
  %908 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %907, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %909 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %903, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %910 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %907, i32 0, i32 undef, i32 0)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %911

; <label>:911                                     ; preds = %905, %904
  %912 = add i32 %745, 4
  %913 = lshr i32 %912, 2
  %914 = and i32 %912, 2
  %915 = icmp ne i32 %914, 0
  %916 = shl nuw nsw i32 %914, 3
  %917 = select i1 %915, i32 65535, i32 -65536
  %918 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %913, i32 0, i32 undef, i32 %917)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %919 = shl i32 %900, %916
  %920 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %913, i32 0, i32 undef, i32 %919)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %921

; <label>:921                                     ; preds = %911, %744
  %922 = phi i32 [ %750, %911 ], [ %745, %744 ]
  %923 = phi i32 [ %753, %911 ], [ %746, %744 ]
  %924 = add i32 %922, 6
  %925 = and i32 %302, 8
  %926 = icmp eq i32 %925, 0
  %927 = icmp uge i32 %924, %206
  %928 = or i1 %926, %927
  br i1 %928, label %1180, label %970, !dx.controlflow.hints !30

; <label>:929                                     ; preds = %863
  %930 = and i32 %757, 31
  %931 = shl i32 1, %930
  %932 = add i32 %931, -1
  %933 = and i32 %864, %932
  %934 = lshr i32 %864, %930
  %935 = uitofp i32 %933 to float
  %936 = fadd fast float %935, 5.000000e-01
  %937 = uitofp i32 %934 to float
  %938 = fadd fast float %937, 5.000000e-01
  %939 = fmul fast float %936, %298
  %940 = fmul fast float %938, %298
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = fmul fast float %942, %939
  %945 = fmul fast float %943, %940
  %946 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %948 = fadd fast float %944, %946
  %949 = fadd fast float %945, %947
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %953 = extractvalue %dx.types.ResRet.f32 %952, 0
  br label %869

; <label>:954                                     ; preds = %775
  %955 = and i32 %757, 31
  %956 = shl i32 1, %955
  %957 = add i32 %956, -1
  %958 = and i32 %776, %957
  %959 = lshr i32 %776, %955
  %960 = mul i32 %958, %304
  %961 = uitofp i32 %960 to float
  %962 = fadd fast float %961, 5.000000e-01
  %963 = fmul fast float %962, %306
  %964 = icmp eq i32 %304, 0
  br i1 %964, label %812, label %965

; <label>:965                                     ; preds = %954
  %966 = mul i32 %959, %304
  %967 = uitofp i32 %966 to float
  %968 = fadd fast float %967, 5.000000e-01
  %969 = fmul fast float %968, %306
  br label %780

; <label>:970                                     ; preds = %921
  %971 = or i32 %923, 128
  %972 = icmp eq i32 %304, 1
  %973 = or i32 %8, 3
  %974 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.i32 %974, 1
  br i1 %972, label %977, label %976, !dx.controlflow.hints !32

; <label>:976                                     ; preds = %970
  br label %978

; <label>:977                                     ; preds = %970
  br label %1066

; <label>:978                                     ; preds = %993, %976
  %979 = phi i32 [ %995, %993 ], [ %973, %976 ]
  %980 = phi i32 [ %994, %993 ], [ 0, %976 ]
  %981 = phi i32 [ %996, %993 ], [ 0, %976 ]
  %982 = and i32 %979, 1
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %993, label %984, !dx.controlflow.hints !33

; <label>:984                                     ; preds = %978
  %985 = lshr i32 %981, 1
  %986 = and i32 %981, 1
  %987 = icmp ne i32 %986, 0
  %988 = select i1 %987, i32 %975, i32 0
  %989 = add i32 %988, %985
  %990 = and i32 %989, 31
  %991 = shl i32 1, %990
  %992 = or i32 %991, %980
  br label %993

; <label>:993                                     ; preds = %984, %978
  %994 = phi i32 [ %992, %984 ], [ %980, %978 ]
  %995 = lshr i32 %979, 1
  %996 = add i32 %981, 1
  %997 = icmp eq i32 %995, 0
  br i1 %997, label %1164, label %978

; <label>:998                                     ; preds = %1175, %1025
  %999 = phi float [ %1026, %1025 ], [ %1179, %1175 ]
  %1000 = phi float [ %1021, %1025 ], [ 2.000000e+00, %1175 ]
  %1001 = phi i32 [ %1027, %1025 ], [ 0, %1175 ]
  br label %1002

; <label>:1002                                    ; preds = %1020, %998
  %1003 = phi float [ %1022, %1020 ], [ %1173, %998 ]
  %1004 = phi float [ %1021, %1020 ], [ %1000, %998 ]
  %1005 = phi i32 [ %1023, %1020 ], [ 0, %998 ]
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1008, %999
  %1011 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1012 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1013 = fadd fast float %1009, %1011
  %1014 = fadd fast float %1010, %1012
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = fcmp fast ogt float %1016, 0.000000e+00
  br i1 %1017, label %1018, label %1020, !dx.controlflow.hints !34

; <label>:1018                                    ; preds = %1002
  %1019 = call float @dx.op.binary.f32(i32 36, float %1016, float %1004)  ; FMin(a,b)
  br label %1020

; <label>:1020                                    ; preds = %1018, %1002
  %1021 = phi float [ %1019, %1018 ], [ %1004, %1002 ]
  %1022 = fadd fast float %1003, %306
  %1023 = add nuw i32 %1005, 1
  %1024 = icmp eq i32 %1023, %304
  br i1 %1024, label %1025, label %1002

; <label>:1025                                    ; preds = %1020
  %1026 = fadd fast float %999, %306
  %1027 = add nuw i32 %1001, 1
  %1028 = icmp eq i32 %1027, %304
  br i1 %1028, label %1029, label %998

; <label>:1029                                    ; preds = %1025
  br label %1030

; <label>:1030                                    ; preds = %1164, %1029
  %1031 = phi float [ 2.000000e+00, %1164 ], [ %1021, %1029 ]
  %1032 = fcmp fast ole float %1031, 1.000000e+00
  %1033 = select i1 %1032, float %1031, float 0.000000e+00
  br i1 %1174, label %1087, label %1034

; <label>:1034                                    ; preds = %1030
  %1035 = mul i32 %1169, %304
  %1036 = uitofp i32 %1035 to float
  %1037 = fadd fast float %1036, 5.000000e-01
  %1038 = fmul fast float %1037, %306
  br label %1039

; <label>:1039                                    ; preds = %1062, %1034
  %1040 = phi float [ %1063, %1062 ], [ %1038, %1034 ]
  %1041 = phi float [ %1058, %1062 ], [ 0.000000e+00, %1034 ]
  %1042 = phi i32 [ %1064, %1062 ], [ 0, %1034 ]
  br label %1043

; <label>:1043                                    ; preds = %1043, %1039
  %1044 = phi float [ %1059, %1043 ], [ %1173, %1039 ]
  %1045 = phi float [ %1058, %1043 ], [ %1041, %1039 ]
  %1046 = phi i32 [ %1060, %1043 ], [ 0, %1039 ]
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = fmul fast float %1048, %1044
  %1051 = fmul fast float %1049, %1040
  %1052 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1053 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1054 = fadd fast float %1050, %1052
  %1055 = fadd fast float %1051, %1053
  %1056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1054, float %1055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = call float @dx.op.binary.f32(i32 35, float %1057, float %1045)  ; FMax(a,b)
  %1059 = fadd fast float %1044, %306
  %1060 = add nuw i32 %1046, 1
  %1061 = icmp eq i32 %1060, %304
  br i1 %1061, label %1062, label %1043

; <label>:1062                                    ; preds = %1043
  %1063 = fadd fast float %1040, %306
  %1064 = add nuw i32 %1042, 1
  %1065 = icmp eq i32 %1064, %304
  br i1 %1065, label %1086, label %1039

; <label>:1066                                    ; preds = %1081, %977
  %1067 = phi i32 [ %1083, %1081 ], [ %973, %977 ]
  %1068 = phi i32 [ %1082, %1081 ], [ 0, %977 ]
  %1069 = phi i32 [ %1084, %1081 ], [ 0, %977 ]
  %1070 = and i32 %1067, 1
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1081, label %1072, !dx.controlflow.hints !33

; <label>:1072                                    ; preds = %1066
  %1073 = lshr i32 %1069, 1
  %1074 = and i32 %1069, 1
  %1075 = icmp ne i32 %1074, 0
  %1076 = select i1 %1075, i32 %975, i32 0
  %1077 = add i32 %1076, %1073
  %1078 = and i32 %1077, 31
  %1079 = shl i32 1, %1078
  %1080 = or i32 %1079, %1068
  br label %1081

; <label>:1081                                    ; preds = %1072, %1066
  %1082 = phi i32 [ %1080, %1072 ], [ %1068, %1066 ]
  %1083 = lshr i32 %1067, 1
  %1084 = add i32 %1069, 1
  %1085 = icmp eq i32 %1083, 0
  br i1 %1085, label %1139, label %1066

; <label>:1086                                    ; preds = %1062
  br label %1087

; <label>:1087                                    ; preds = %1139, %1086, %1030
  %1088 = phi float [ %1161, %1139 ], [ %1033, %1030 ], [ %1033, %1086 ]
  %1089 = phi float [ %1163, %1139 ], [ 0.000000e+00, %1030 ], [ %1058, %1086 ]
  %1090 = call float @dx.op.binary.f32(i32 35, float %1088, float 0.000000e+00)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 35, float %1089, float 0.000000e+00)  ; FMax(a,b)
  %1092 = fcmp fast une float %1089, 0.000000e+00
  br i1 %1092, label %1096, label %1093, !dx.controlflow.hints !35

; <label>:1093                                    ; preds = %1087
  %1094 = fcmp fast une float %1088, 0.000000e+00
  %1095 = select i1 %1094, float 1.000000e+00, float 0x3F847AE140000000
  br label %1111

; <label>:1096                                    ; preds = %1087
  %1097 = fcmp fast ugt float %1088, %1089
  br i1 %1097, label %1098, label %1108, !dx.controlflow.hints !36

; <label>:1098                                    ; preds = %1096
  %1099 = fadd fast float %1089, 0x3E7AD7F2A0000000
  %1100 = fcmp fast ult float %1099, %1088
  br i1 %1100, label %1101, label %1106, !dx.controlflow.hints !37

; <label>:1101                                    ; preds = %1098
  %1102 = fsub fast float %1088, %1089
  %1103 = fmul fast float %1102, 0x3F847AE140000000
  %1104 = fadd fast float %1103, %1088
  %1105 = call float @dx.op.binary.f32(i32 36, float %1104, float 1.000000e+00)  ; FMin(a,b)
  br label %1111

; <label>:1106                                    ; preds = %1098
  %1107 = fadd fast float %1089, 0xBE7AD7F2A0000000
  br label %1111

; <label>:1108                                    ; preds = %1096
  %1109 = fadd fast float %1089, 0xBE7AD7F2A0000000
  %1110 = call float @dx.op.binary.f32(i32 36, float %1088, float %1109)  ; FMin(a,b)
  br label %1111

; <label>:1111                                    ; preds = %1108, %1106, %1101, %1093
  %1112 = phi float [ %1110, %1108 ], [ %1107, %1106 ], [ %1090, %1101 ], [ %1090, %1093 ]
  %1113 = phi float [ %1091, %1108 ], [ %1091, %1106 ], [ %1105, %1101 ], [ %1095, %1093 ]
  %1114 = fadd fast float %1113, %1112
  %1115 = fmul fast float %1114, 8.191875e+03
  %1116 = fadd fast float %1115, 3.276750e+04
  %1117 = fptoui float %1116 to i32
  %1118 = and i32 %1117, 65535
  %1119 = and i32 %922, 2
  %1120 = icmp eq i32 %1119, 0
  %1121 = lshr i32 %922, 2
  br i1 %1120, label %1122, label %1123, !dx.controlflow.hints !38

; <label>:1122                                    ; preds = %1111
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1121, i32 0, i32 65535, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1129

; <label>:1123                                    ; preds = %1111
  %1124 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1121, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1125 = add nuw nsw i32 %1121, 1
  %1126 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1125, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1127 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1121, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1128 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1125, i32 0, i32 undef, i32 0)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1129

; <label>:1129                                    ; preds = %1123, %1122
  %1130 = add i32 %922, 4
  %1131 = lshr i32 %1130, 2
  %1132 = and i32 %1130, 2
  %1133 = icmp ne i32 %1132, 0
  %1134 = shl nuw nsw i32 %1132, 3
  %1135 = select i1 %1133, i32 65535, i32 -65536
  %1136 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1131, i32 0, i32 undef, i32 %1135)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1137 = shl i32 %1118, %1134
  %1138 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1131, i32 0, i32 undef, i32 %1137)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1180

; <label>:1139                                    ; preds = %1081
  %1140 = and i32 %975, 31
  %1141 = shl i32 1, %1140
  %1142 = add i32 %1141, -1
  %1143 = and i32 %1082, %1142
  %1144 = lshr i32 %1082, %1140
  %1145 = uitofp i32 %1143 to float
  %1146 = fadd fast float %1145, 5.000000e-01
  %1147 = uitofp i32 %1144 to float
  %1148 = fadd fast float %1147, 5.000000e-01
  %1149 = fmul fast float %1146, %298
  %1150 = fmul fast float %1148, %298
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = fmul fast float %1152, %1149
  %1155 = fmul fast float %1153, %1150
  %1156 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1157 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1158 = fadd fast float %1154, %1156
  %1159 = fadd fast float %1155, %1157
  %1160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %5, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %1158, float %1159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  br label %1087

; <label>:1164                                    ; preds = %993
  %1165 = and i32 %975, 31
  %1166 = shl i32 1, %1165
  %1167 = add i32 %1166, -1
  %1168 = and i32 %994, %1167
  %1169 = lshr i32 %994, %1165
  %1170 = mul i32 %1168, %304
  %1171 = uitofp i32 %1170 to float
  %1172 = fadd fast float %1171, 5.000000e-01
  %1173 = fmul fast float %1172, %306
  %1174 = icmp eq i32 %304, 0
  br i1 %1174, label %1030, label %1175

; <label>:1175                                    ; preds = %1164
  %1176 = mul i32 %1169, %304
  %1177 = uitofp i32 %1176 to float
  %1178 = fadd fast float %1177, 5.000000e-01
  %1179 = fmul fast float %1178, %306
  br label %998

; <label>:1180                                    ; preds = %1129, %921, %749, %531, %309
  %1181 = phi i32 [ 0, %309 ], [ %528, %531 ], [ %746, %749 ], [ %971, %1129 ], [ %923, %921 ]
  %1182 = shl i32 %295, 8
  %1183 = or i32 %1181, %1182
  %1184 = and i32 %294, 2
  %1185 = icmp eq i32 %1184, 0
  %1186 = lshr i32 %294, 2
  br i1 %1185, label %1195, label %1187, !dx.controlflow.hints !38

; <label>:1187                                    ; preds = %1180
  %1188 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1186, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1189 = add nuw nsw i32 %1186, 1
  %1190 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1189, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1191 = shl i32 %1183, 16
  %1192 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1186, i32 0, i32 undef, i32 %1191)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1193 = lshr i32 %1183, 16
  %1194 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1189, i32 0, i32 undef, i32 %1193)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1875

; <label>:1195                                    ; preds = %1180
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1186, i32 0, i32 %1183, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1875

; <label>:1196                                    ; preds = %156
  br i1 %159, label %1197, label %1220, !dx.controlflow.hints !39

; <label>:1197                                    ; preds = %1196
  %1198 = add i32 %13, 1
  %1199 = extractvalue %dx.types.CBufRet.i32 %14, 2
  %1200 = add i32 %1198, %1199
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1200, i32 24)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1199, -4
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1203, i32 24)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1199, -3
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1206, i32 24)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %1199, -2
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1209, i32 24)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1199, -1
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1212, i32 24)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1205, %1202
  %1216 = add i32 %1215, %1208
  %1217 = add i32 %1216, %1211
  %1218 = add i32 %1217, %1214
  %1219 = add i32 %1199, %13
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1219, i32 24, i32 %1218, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1220

; <label>:1220                                    ; preds = %1197, %1196
  %1221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.i32 %1221, 2
  %1223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.i32 %1223, 3
  %1225 = icmp ult i32 %1222, %1224
  br i1 %1225, label %1226, label %1875, !dx.controlflow.hints !40

; <label>:1226                                    ; preds = %1220
  %1227 = extractvalue %dx.types.CBufRet.i32 %1221, 1
  %1228 = add i32 %1227, %1222
  %1229 = and i32 %7, 1073741823
  %1230 = add i32 %1228, %1229
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1230, i32 28)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = icmp eq i32 %1232, 16777215
  br i1 %1233, label %1234, label %1242, !dx.controlflow.hints !41

; <label>:1234                                    ; preds = %1226
  %1235 = add i32 %1222, %8
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1235, i32 28, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1236 = or i32 %8, 1
  %1237 = add i32 %1236, %1222
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1237, i32 28, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1238 = or i32 %8, 2
  %1239 = add i32 %1238, %1222
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1239, i32 28, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1240 = or i32 %8, 3
  %1241 = add i32 %1240, %1222
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1241, i32 28, i32 16777215, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1875

; <label>:1242                                    ; preds = %1226
  %1243 = extractvalue %dx.types.CBufRet.i32 %1223, 1
  %1244 = add i32 %1243, -2
  %1245 = icmp slt i32 %13, %1244
  br i1 %1245, label %1246, label %1322

; <label>:1246                                    ; preds = %1242
  br label %1247

; <label>:1247                                    ; preds = %1312, %1246
  %1248 = phi i32 [ %1253, %1312 ], [ %1227, %1246 ]
  %1249 = phi i32 [ %1316, %1312 ], [ %13, %1246 ]
  %1250 = phi i32 [ %1313, %1312 ], [ 0, %1246 ]
  %1251 = phi i32 [ %1315, %1312 ], [ %1228, %1246 ]
  %1252 = phi i32 [ %1314, %1312 ], [ %1229, %1246 ]
  %1253 = lshr i32 %1248, 2
  %1254 = add i32 %1251, %1252
  %1255 = and i32 %1252, 3
  %1256 = icmp eq i32 %1255, 3
  br i1 %1256, label %1257, label %1282, !dx.controlflow.hints !27

; <label>:1257                                    ; preds = %1247
  %1258 = add i32 %1254, -3
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1258, i32 28)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = icmp eq i32 %1260, 16777215
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1258, i32 24)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = select i1 %1261, i32 0, i32 %1263
  %1265 = add i32 %1254, -2
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1265, i32 28)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = icmp eq i32 %1267, 16777215
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1265, i32 24)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = select i1 %1268, i32 0, i32 %1270
  %1272 = add i32 %1254, -1
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1272, i32 28)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = icmp eq i32 %1274, 16777215
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1272, i32 24)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = select i1 %1275, i32 0, i32 %1277
  %1279 = add i32 %1264, %1250
  %1280 = add i32 %1279, %1271
  %1281 = add i32 %1280, %1278
  br label %1312

; <label>:1282                                    ; preds = %1247
  %1283 = icmp eq i32 %1255, 2
  br i1 %1283, label %1284, label %1301, !dx.controlflow.hints !28

; <label>:1284                                    ; preds = %1282
  %1285 = add i32 %1254, -2
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1285, i32 28)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = icmp eq i32 %1287, 16777215
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1285, i32 24)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = select i1 %1288, i32 0, i32 %1290
  %1292 = add i32 %1254, -1
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1292, i32 28)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = icmp eq i32 %1294, 16777215
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1292, i32 24)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = select i1 %1295, i32 0, i32 %1297
  %1299 = add i32 %1291, %1250
  %1300 = add i32 %1299, %1298
  br label %1312

; <label>:1301                                    ; preds = %1282
  %1302 = icmp eq i32 %1255, 1
  br i1 %1302, label %1303, label %1312, !dx.controlflow.hints !29

; <label>:1303                                    ; preds = %1301
  %1304 = add i32 %1254, -1
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1304, i32 28)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = icmp eq i32 %1306, 16777215
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1304, i32 24)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = select i1 %1307, i32 0, i32 %1309
  %1311 = add i32 %1310, %1250
  br label %1312

; <label>:1312                                    ; preds = %1303, %1301, %1284, %1257
  %1313 = phi i32 [ %1281, %1257 ], [ %1300, %1284 ], [ %1311, %1303 ], [ %1250, %1301 ]
  %1314 = lshr i32 %1252, 2
  %1315 = add i32 %1251, %1253
  %1316 = add nsw i32 %1249, 1
  %1317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.i32 %1317, 1
  %1319 = add i32 %1318, -2
  %1320 = icmp slt i32 %1316, %1319
  br i1 %1320, label %1247, label %1321

; <label>:1321                                    ; preds = %1312
  br label %1322

; <label>:1322                                    ; preds = %1321, %1242
  %1323 = phi i32 [ 0, %1242 ], [ %1313, %1321 ]
  %1324 = add i32 %13, 1
  %1325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1326 = extractvalue %dx.types.CBufRet.i32 %1325, 2
  %1327 = add i32 %1324, %1326
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1327, i32 24)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = add i32 %1329, %1323
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1230, i32 28)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = sub i32 %1330, %1332
  %1334 = add i32 %1222, %8
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1334, i32 20)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 1
  %1338 = icmp eq i32 %1337, 0
  %1339 = and i32 %1336, 2
  %1340 = shl nuw nsw i32 %1339, 1
  %1341 = xor i32 %1340, 4
  %1342 = lshr exact i32 %1339, 1
  %1343 = add nuw nsw i32 %1341, 6
  %1344 = select i1 %1338, i32 %1343, i32 %1341
  %1345 = shl nuw nsw i32 %1337, 1
  %1346 = xor i32 %1345, 3
  %1347 = xor i32 %1342, %1346
  %1348 = add i32 %1344, %1330
  %1349 = icmp ult i32 %1348, %1224
  br i1 %1349, label %1350, label %1859, !dx.controlflow.hints !42

; <label>:1350                                    ; preds = %1322
  %1351 = icmp eq i32 %1347, 3
  br i1 %1351, label %1406, label %1352, !dx.controlflow.hints !43

; <label>:1352                                    ; preds = %1350
  %1353 = icmp eq i32 %1347, 2
  br i1 %1353, label %1354, label %1459, !dx.controlflow.hints !44

; <label>:1354                                    ; preds = %1352
  %1355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1334, i32 0)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.f32 %1355, 0
  %1357 = extractvalue %dx.types.ResRet.f32 %1355, 1
  %1358 = extractvalue %dx.types.ResRet.f32 %1355, 2
  %1359 = extractvalue %dx.types.ResRet.f32 %1355, 3
  %1360 = call float @dx.op.unary.f32(i32 6, float %1356)  ; FAbs(value)
  %1361 = call float @dx.op.unary.f32(i32 6, float %1357)  ; FAbs(value)
  %1362 = fadd fast float %1361, %1360
  %1363 = call float @dx.op.binary.f32(i32 35, float %1362, float 0x3F847AE140000000)  ; FMax(a,b)
  %1364 = fdiv fast float %1360, %1363
  %1365 = fcmp fast olt float %1356, 0.000000e+00
  %1366 = fcmp fast olt float %1357, 0.000000e+00
  %1367 = zext i1 %1365 to i32
  %1368 = select i1 %1366, i32 2, i32 0
  %1369 = or i32 %1367, %1368
  %1370 = fmul fast float %1364, 1.638300e+04
  %1371 = fptoui float %1370 to i32
  %1372 = fmul fast float %1358, 6.553500e+04
  %1373 = fptoui float %1372 to i32
  %1374 = fmul fast float %1359, 1.638375e+04
  %1375 = fadd fast float %1374, 3.276750e+04
  %1376 = fptoui float %1375 to i32
  %1377 = and i32 %1376, 65535
  %1378 = shl nuw i32 %1369, 30
  %1379 = shl i32 %1371, 16
  %1380 = and i32 %1379, 1073676288
  %1381 = or i32 %1380, %1378
  %1382 = and i32 %1330, 2
  %1383 = icmp eq i32 %1382, 0
  %1384 = lshr i32 %1330, 2
  br i1 %1383, label %1385, label %1388, !dx.controlflow.hints !38

; <label>:1385                                    ; preds = %1354
  %1386 = and i32 %1373, 65535
  %1387 = or i32 %1381, %1386
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1384, i32 0, i32 %1387, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1396

; <label>:1388                                    ; preds = %1354
  %1389 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1384, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1390 = add nuw nsw i32 %1384, 1
  %1391 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1390, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1392 = shl i32 %1373, 16
  %1393 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1384, i32 0, i32 undef, i32 %1392)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1394 = lshr exact i32 %1381, 16
  %1395 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1390, i32 0, i32 undef, i32 %1394)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1396

; <label>:1396                                    ; preds = %1388, %1385
  %1397 = add i32 %1330, 4
  %1398 = lshr i32 %1397, 2
  %1399 = and i32 %1397, 2
  %1400 = icmp ne i32 %1399, 0
  %1401 = shl nuw nsw i32 %1399, 3
  %1402 = select i1 %1400, i32 65535, i32 -65536
  %1403 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1398, i32 0, i32 undef, i32 %1402)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1404 = shl i32 %1377, %1401
  %1405 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1398, i32 0, i32 undef, i32 %1404)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1459

; <label>:1406                                    ; preds = %1350
  %1407 = add i32 %1330, 4
  %1408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1334, i32 0)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.ResRet.f32 %1408, 1
  %1411 = extractvalue %dx.types.ResRet.f32 %1408, 2
  %1412 = extractvalue %dx.types.ResRet.f32 %1408, 3
  %1413 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1414 = call float @dx.op.unary.f32(i32 6, float %1410)  ; FAbs(value)
  %1415 = fadd fast float %1414, %1413
  %1416 = call float @dx.op.binary.f32(i32 35, float %1415, float 0x3F847AE140000000)  ; FMax(a,b)
  %1417 = fdiv fast float %1413, %1416
  %1418 = fcmp fast olt float %1409, 0.000000e+00
  %1419 = fcmp fast olt float %1410, 0.000000e+00
  %1420 = zext i1 %1418 to i32
  %1421 = select i1 %1419, i32 2, i32 0
  %1422 = or i32 %1420, %1421
  %1423 = fmul fast float %1417, 1.638300e+04
  %1424 = fptoui float %1423 to i32
  %1425 = fmul fast float %1411, 6.553500e+04
  %1426 = fptoui float %1425 to i32
  %1427 = fmul fast float %1412, 1.638375e+04
  %1428 = fadd fast float %1427, 3.276750e+04
  %1429 = fptoui float %1428 to i32
  %1430 = and i32 %1429, 65535
  %1431 = shl nuw i32 %1422, 30
  %1432 = shl i32 %1424, 16
  %1433 = and i32 %1432, 1073676288
  %1434 = or i32 %1433, %1431
  %1435 = and i32 %1407, 2
  %1436 = icmp eq i32 %1435, 0
  %1437 = lshr i32 %1407, 2
  br i1 %1436, label %1438, label %1441, !dx.controlflow.hints !38

; <label>:1438                                    ; preds = %1406
  %1439 = and i32 %1426, 65535
  %1440 = or i32 %1434, %1439
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1437, i32 0, i32 %1440, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1449

; <label>:1441                                    ; preds = %1406
  %1442 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1437, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1443 = add nuw nsw i32 %1437, 1
  %1444 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1443, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1445 = shl i32 %1426, 16
  %1446 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1437, i32 0, i32 undef, i32 %1445)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1447 = lshr exact i32 %1434, 16
  %1448 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1443, i32 0, i32 undef, i32 %1447)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1449

; <label>:1449                                    ; preds = %1441, %1438
  %1450 = add i32 %1330, 8
  %1451 = lshr i32 %1450, 2
  %1452 = and i32 %1450, 2
  %1453 = icmp ne i32 %1452, 0
  %1454 = shl nuw nsw i32 %1452, 3
  %1455 = select i1 %1453, i32 65535, i32 -65536
  %1456 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1451, i32 0, i32 undef, i32 %1455)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1457 = shl i32 %1430, %1454
  %1458 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1451, i32 0, i32 undef, i32 %1457)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1459

; <label>:1459                                    ; preds = %1449, %1396, %1352
  %1460 = and i32 %1347, 1
  %1461 = icmp ne i32 %1460, 0
  %1462 = select i1 %1461, i32 %1330, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1334, i32 28, i32 %1462, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1463 = or i32 %8, 1
  %1464 = add i32 %1463, %1222
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1464, i32 20)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 1
  %1468 = icmp eq i32 %1467, 0
  %1469 = and i32 %1466, 2
  %1470 = shl nuw nsw i32 %1469, 1
  %1471 = xor i32 %1470, 4
  %1472 = lshr exact i32 %1469, 1
  %1473 = add nuw nsw i32 %1471, 6
  %1474 = select i1 %1468, i32 %1473, i32 %1471
  %1475 = shl nuw nsw i32 %1467, 1
  %1476 = xor i32 %1475, 3
  %1477 = xor i32 %1472, %1476
  %1478 = add i32 %1474, %1348
  %1479 = icmp ult i32 %1478, %1224
  br i1 %1479, label %1480, label %1859, !dx.controlflow.hints !42

; <label>:1480                                    ; preds = %1459
  %1481 = shl nuw nsw i32 %1477, 2
  %1482 = or i32 %1481, %1347
  %1483 = icmp eq i32 %1477, 3
  br i1 %1483, label %1538, label %1484, !dx.controlflow.hints !43

; <label>:1484                                    ; preds = %1480
  %1485 = icmp eq i32 %1477, 2
  br i1 %1485, label %1486, label %1591, !dx.controlflow.hints !44

; <label>:1486                                    ; preds = %1484
  %1487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1464, i32 0)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = extractvalue %dx.types.ResRet.f32 %1487, 1
  %1490 = extractvalue %dx.types.ResRet.f32 %1487, 2
  %1491 = extractvalue %dx.types.ResRet.f32 %1487, 3
  %1492 = call float @dx.op.unary.f32(i32 6, float %1488)  ; FAbs(value)
  %1493 = call float @dx.op.unary.f32(i32 6, float %1489)  ; FAbs(value)
  %1494 = fadd fast float %1493, %1492
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3F847AE140000000)  ; FMax(a,b)
  %1496 = fdiv fast float %1492, %1495
  %1497 = fcmp fast olt float %1488, 0.000000e+00
  %1498 = fcmp fast olt float %1489, 0.000000e+00
  %1499 = zext i1 %1497 to i32
  %1500 = select i1 %1498, i32 2, i32 0
  %1501 = or i32 %1499, %1500
  %1502 = fmul fast float %1496, 1.638300e+04
  %1503 = fptoui float %1502 to i32
  %1504 = fmul fast float %1490, 6.553500e+04
  %1505 = fptoui float %1504 to i32
  %1506 = fmul fast float %1491, 1.638375e+04
  %1507 = fadd fast float %1506, 3.276750e+04
  %1508 = fptoui float %1507 to i32
  %1509 = and i32 %1508, 65535
  %1510 = shl nuw i32 %1501, 30
  %1511 = shl i32 %1503, 16
  %1512 = and i32 %1511, 1073676288
  %1513 = or i32 %1512, %1510
  %1514 = and i32 %1348, 2
  %1515 = icmp eq i32 %1514, 0
  %1516 = lshr i32 %1348, 2
  br i1 %1515, label %1517, label %1520, !dx.controlflow.hints !38

; <label>:1517                                    ; preds = %1486
  %1518 = and i32 %1505, 65535
  %1519 = or i32 %1513, %1518
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1516, i32 0, i32 %1519, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1528

; <label>:1520                                    ; preds = %1486
  %1521 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1516, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1522 = add nuw nsw i32 %1516, 1
  %1523 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1522, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1524 = shl i32 %1505, 16
  %1525 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1516, i32 0, i32 undef, i32 %1524)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1526 = lshr exact i32 %1513, 16
  %1527 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1522, i32 0, i32 undef, i32 %1526)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1528

; <label>:1528                                    ; preds = %1520, %1517
  %1529 = add i32 %1348, 4
  %1530 = lshr i32 %1529, 2
  %1531 = and i32 %1529, 2
  %1532 = icmp ne i32 %1531, 0
  %1533 = shl nuw nsw i32 %1531, 3
  %1534 = select i1 %1532, i32 65535, i32 -65536
  %1535 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1530, i32 0, i32 undef, i32 %1534)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1536 = shl i32 %1509, %1533
  %1537 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1530, i32 0, i32 undef, i32 %1536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1591

; <label>:1538                                    ; preds = %1480
  %1539 = add i32 %1348, 4
  %1540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1464, i32 0)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.f32 %1540, 0
  %1542 = extractvalue %dx.types.ResRet.f32 %1540, 1
  %1543 = extractvalue %dx.types.ResRet.f32 %1540, 2
  %1544 = extractvalue %dx.types.ResRet.f32 %1540, 3
  %1545 = call float @dx.op.unary.f32(i32 6, float %1541)  ; FAbs(value)
  %1546 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1547 = fadd fast float %1546, %1545
  %1548 = call float @dx.op.binary.f32(i32 35, float %1547, float 0x3F847AE140000000)  ; FMax(a,b)
  %1549 = fdiv fast float %1545, %1548
  %1550 = fcmp fast olt float %1541, 0.000000e+00
  %1551 = fcmp fast olt float %1542, 0.000000e+00
  %1552 = zext i1 %1550 to i32
  %1553 = select i1 %1551, i32 2, i32 0
  %1554 = or i32 %1552, %1553
  %1555 = fmul fast float %1549, 1.638300e+04
  %1556 = fptoui float %1555 to i32
  %1557 = fmul fast float %1543, 6.553500e+04
  %1558 = fptoui float %1557 to i32
  %1559 = fmul fast float %1544, 1.638375e+04
  %1560 = fadd fast float %1559, 3.276750e+04
  %1561 = fptoui float %1560 to i32
  %1562 = and i32 %1561, 65535
  %1563 = shl nuw i32 %1554, 30
  %1564 = shl i32 %1556, 16
  %1565 = and i32 %1564, 1073676288
  %1566 = or i32 %1565, %1563
  %1567 = and i32 %1539, 2
  %1568 = icmp eq i32 %1567, 0
  %1569 = lshr i32 %1539, 2
  br i1 %1568, label %1570, label %1573, !dx.controlflow.hints !38

; <label>:1570                                    ; preds = %1538
  %1571 = and i32 %1558, 65535
  %1572 = or i32 %1566, %1571
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1569, i32 0, i32 %1572, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1581

; <label>:1573                                    ; preds = %1538
  %1574 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1569, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1575 = add nuw nsw i32 %1569, 1
  %1576 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1575, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1577 = shl i32 %1558, 16
  %1578 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1569, i32 0, i32 undef, i32 %1577)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1579 = lshr exact i32 %1566, 16
  %1580 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1575, i32 0, i32 undef, i32 %1579)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1581

; <label>:1581                                    ; preds = %1573, %1570
  %1582 = add i32 %1348, 8
  %1583 = lshr i32 %1582, 2
  %1584 = and i32 %1582, 2
  %1585 = icmp ne i32 %1584, 0
  %1586 = shl nuw nsw i32 %1584, 3
  %1587 = select i1 %1585, i32 65535, i32 -65536
  %1588 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1583, i32 0, i32 undef, i32 %1587)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1589 = shl i32 %1562, %1586
  %1590 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1583, i32 0, i32 undef, i32 %1589)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1591

; <label>:1591                                    ; preds = %1581, %1528, %1484
  %1592 = and i32 %1477, 1
  %1593 = icmp ne i32 %1592, 0
  %1594 = select i1 %1593, i32 %1348, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1464, i32 28, i32 %1594, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1595 = or i32 %8, 2
  %1596 = add i32 %1595, %1222
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1596, i32 20)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 1
  %1600 = icmp eq i32 %1599, 0
  %1601 = and i32 %1598, 2
  %1602 = shl nuw nsw i32 %1601, 1
  %1603 = xor i32 %1602, 4
  %1604 = lshr exact i32 %1601, 1
  %1605 = add nuw nsw i32 %1603, 6
  %1606 = select i1 %1600, i32 %1605, i32 %1603
  %1607 = shl nuw nsw i32 %1599, 1
  %1608 = xor i32 %1607, 3
  %1609 = xor i32 %1604, %1608
  %1610 = add i32 %1606, %1478
  %1611 = icmp ult i32 %1610, %1224
  br i1 %1611, label %1612, label %1859, !dx.controlflow.hints !42

; <label>:1612                                    ; preds = %1591
  %1613 = shl nuw nsw i32 %1609, 4
  %1614 = or i32 %1613, %1482
  %1615 = icmp eq i32 %1609, 3
  br i1 %1615, label %1670, label %1616, !dx.controlflow.hints !43

; <label>:1616                                    ; preds = %1612
  %1617 = icmp eq i32 %1609, 2
  br i1 %1617, label %1618, label %1723, !dx.controlflow.hints !44

; <label>:1618                                    ; preds = %1616
  %1619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1596, i32 0)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = extractvalue %dx.types.ResRet.f32 %1619, 3
  %1624 = call float @dx.op.unary.f32(i32 6, float %1620)  ; FAbs(value)
  %1625 = call float @dx.op.unary.f32(i32 6, float %1621)  ; FAbs(value)
  %1626 = fadd fast float %1625, %1624
  %1627 = call float @dx.op.binary.f32(i32 35, float %1626, float 0x3F847AE140000000)  ; FMax(a,b)
  %1628 = fdiv fast float %1624, %1627
  %1629 = fcmp fast olt float %1620, 0.000000e+00
  %1630 = fcmp fast olt float %1621, 0.000000e+00
  %1631 = zext i1 %1629 to i32
  %1632 = select i1 %1630, i32 2, i32 0
  %1633 = or i32 %1631, %1632
  %1634 = fmul fast float %1628, 1.638300e+04
  %1635 = fptoui float %1634 to i32
  %1636 = fmul fast float %1622, 6.553500e+04
  %1637 = fptoui float %1636 to i32
  %1638 = fmul fast float %1623, 1.638375e+04
  %1639 = fadd fast float %1638, 3.276750e+04
  %1640 = fptoui float %1639 to i32
  %1641 = and i32 %1640, 65535
  %1642 = shl nuw i32 %1633, 30
  %1643 = shl i32 %1635, 16
  %1644 = and i32 %1643, 1073676288
  %1645 = or i32 %1644, %1642
  %1646 = and i32 %1478, 2
  %1647 = icmp eq i32 %1646, 0
  %1648 = lshr i32 %1478, 2
  br i1 %1647, label %1649, label %1652, !dx.controlflow.hints !38

; <label>:1649                                    ; preds = %1618
  %1650 = and i32 %1637, 65535
  %1651 = or i32 %1645, %1650
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1648, i32 0, i32 %1651, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1660

; <label>:1652                                    ; preds = %1618
  %1653 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1648, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1654 = add nuw nsw i32 %1648, 1
  %1655 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1654, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1656 = shl i32 %1637, 16
  %1657 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1648, i32 0, i32 undef, i32 %1656)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1658 = lshr exact i32 %1645, 16
  %1659 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1654, i32 0, i32 undef, i32 %1658)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1660

; <label>:1660                                    ; preds = %1652, %1649
  %1661 = add i32 %1478, 4
  %1662 = lshr i32 %1661, 2
  %1663 = and i32 %1661, 2
  %1664 = icmp ne i32 %1663, 0
  %1665 = shl nuw nsw i32 %1663, 3
  %1666 = select i1 %1664, i32 65535, i32 -65536
  %1667 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1662, i32 0, i32 undef, i32 %1666)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1668 = shl i32 %1641, %1665
  %1669 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1662, i32 0, i32 undef, i32 %1668)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1723

; <label>:1670                                    ; preds = %1612
  %1671 = add i32 %1478, 4
  %1672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1596, i32 0)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.ResRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.ResRet.f32 %1672, 2
  %1676 = extractvalue %dx.types.ResRet.f32 %1672, 3
  %1677 = call float @dx.op.unary.f32(i32 6, float %1673)  ; FAbs(value)
  %1678 = call float @dx.op.unary.f32(i32 6, float %1674)  ; FAbs(value)
  %1679 = fadd fast float %1678, %1677
  %1680 = call float @dx.op.binary.f32(i32 35, float %1679, float 0x3F847AE140000000)  ; FMax(a,b)
  %1681 = fdiv fast float %1677, %1680
  %1682 = fcmp fast olt float %1673, 0.000000e+00
  %1683 = fcmp fast olt float %1674, 0.000000e+00
  %1684 = zext i1 %1682 to i32
  %1685 = select i1 %1683, i32 2, i32 0
  %1686 = or i32 %1684, %1685
  %1687 = fmul fast float %1681, 1.638300e+04
  %1688 = fptoui float %1687 to i32
  %1689 = fmul fast float %1675, 6.553500e+04
  %1690 = fptoui float %1689 to i32
  %1691 = fmul fast float %1676, 1.638375e+04
  %1692 = fadd fast float %1691, 3.276750e+04
  %1693 = fptoui float %1692 to i32
  %1694 = and i32 %1693, 65535
  %1695 = shl nuw i32 %1686, 30
  %1696 = shl i32 %1688, 16
  %1697 = and i32 %1696, 1073676288
  %1698 = or i32 %1697, %1695
  %1699 = and i32 %1671, 2
  %1700 = icmp eq i32 %1699, 0
  %1701 = lshr i32 %1671, 2
  br i1 %1700, label %1702, label %1705, !dx.controlflow.hints !38

; <label>:1702                                    ; preds = %1670
  %1703 = and i32 %1690, 65535
  %1704 = or i32 %1698, %1703
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1701, i32 0, i32 %1704, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1713

; <label>:1705                                    ; preds = %1670
  %1706 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1701, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1707 = add nuw nsw i32 %1701, 1
  %1708 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1707, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1709 = shl i32 %1690, 16
  %1710 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1701, i32 0, i32 undef, i32 %1709)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1711 = lshr exact i32 %1698, 16
  %1712 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1707, i32 0, i32 undef, i32 %1711)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1713

; <label>:1713                                    ; preds = %1705, %1702
  %1714 = add i32 %1478, 8
  %1715 = lshr i32 %1714, 2
  %1716 = and i32 %1714, 2
  %1717 = icmp ne i32 %1716, 0
  %1718 = shl nuw nsw i32 %1716, 3
  %1719 = select i1 %1717, i32 65535, i32 -65536
  %1720 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1715, i32 0, i32 undef, i32 %1719)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1721 = shl i32 %1694, %1718
  %1722 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1715, i32 0, i32 undef, i32 %1721)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1723

; <label>:1723                                    ; preds = %1713, %1660, %1616
  %1724 = and i32 %1609, 1
  %1725 = icmp ne i32 %1724, 0
  %1726 = select i1 %1725, i32 %1478, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1596, i32 28, i32 %1726, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1727 = or i32 %8, 3
  %1728 = add i32 %1727, %1222
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %1728, i32 20)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 1
  %1732 = icmp eq i32 %1731, 0
  %1733 = and i32 %1730, 2
  %1734 = shl nuw nsw i32 %1733, 1
  %1735 = xor i32 %1734, 4
  %1736 = lshr exact i32 %1733, 1
  %1737 = add nuw nsw i32 %1735, 6
  %1738 = select i1 %1732, i32 %1737, i32 %1735
  %1739 = shl nuw nsw i32 %1731, 1
  %1740 = xor i32 %1739, 3
  %1741 = xor i32 %1736, %1740
  %1742 = add i32 %1738, %1610
  %1743 = icmp ult i32 %1742, %1224
  br i1 %1743, label %1744, label %1859, !dx.controlflow.hints !42

; <label>:1744                                    ; preds = %1723
  %1745 = shl nuw nsw i32 %1741, 6
  %1746 = or i32 %1745, %1614
  %1747 = icmp eq i32 %1741, 3
  br i1 %1747, label %1802, label %1748, !dx.controlflow.hints !43

; <label>:1748                                    ; preds = %1744
  %1749 = icmp eq i32 %1741, 2
  br i1 %1749, label %1750, label %1855, !dx.controlflow.hints !44

; <label>:1750                                    ; preds = %1748
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1728, i32 0)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = extractvalue %dx.types.ResRet.f32 %1751, 3
  %1756 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1757 = call float @dx.op.unary.f32(i32 6, float %1753)  ; FAbs(value)
  %1758 = fadd fast float %1757, %1756
  %1759 = call float @dx.op.binary.f32(i32 35, float %1758, float 0x3F847AE140000000)  ; FMax(a,b)
  %1760 = fdiv fast float %1756, %1759
  %1761 = fcmp fast olt float %1752, 0.000000e+00
  %1762 = fcmp fast olt float %1753, 0.000000e+00
  %1763 = zext i1 %1761 to i32
  %1764 = select i1 %1762, i32 2, i32 0
  %1765 = or i32 %1763, %1764
  %1766 = fmul fast float %1760, 1.638300e+04
  %1767 = fptoui float %1766 to i32
  %1768 = fmul fast float %1754, 6.553500e+04
  %1769 = fptoui float %1768 to i32
  %1770 = fmul fast float %1755, 1.638375e+04
  %1771 = fadd fast float %1770, 3.276750e+04
  %1772 = fptoui float %1771 to i32
  %1773 = and i32 %1772, 65535
  %1774 = shl nuw i32 %1765, 30
  %1775 = shl i32 %1767, 16
  %1776 = and i32 %1775, 1073676288
  %1777 = or i32 %1776, %1774
  %1778 = and i32 %1610, 2
  %1779 = icmp eq i32 %1778, 0
  %1780 = lshr i32 %1610, 2
  br i1 %1779, label %1781, label %1784, !dx.controlflow.hints !38

; <label>:1781                                    ; preds = %1750
  %1782 = and i32 %1769, 65535
  %1783 = or i32 %1777, %1782
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1780, i32 0, i32 %1783, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1792

; <label>:1784                                    ; preds = %1750
  %1785 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1780, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1786 = add nuw nsw i32 %1780, 1
  %1787 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1786, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1788 = shl i32 %1769, 16
  %1789 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1780, i32 0, i32 undef, i32 %1788)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1790 = lshr exact i32 %1777, 16
  %1791 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1786, i32 0, i32 undef, i32 %1790)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1792

; <label>:1792                                    ; preds = %1784, %1781
  %1793 = add i32 %1610, 4
  %1794 = lshr i32 %1793, 2
  %1795 = and i32 %1793, 2
  %1796 = icmp ne i32 %1795, 0
  %1797 = shl nuw nsw i32 %1795, 3
  %1798 = select i1 %1796, i32 65535, i32 -65536
  %1799 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1794, i32 0, i32 undef, i32 %1798)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1800 = shl i32 %1773, %1797
  %1801 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1794, i32 0, i32 undef, i32 %1800)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1855

; <label>:1802                                    ; preds = %1744
  %1803 = add i32 %1610, 4
  %1804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1728, i32 0)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.ResRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.ResRet.f32 %1804, 2
  %1808 = extractvalue %dx.types.ResRet.f32 %1804, 3
  %1809 = call float @dx.op.unary.f32(i32 6, float %1805)  ; FAbs(value)
  %1810 = call float @dx.op.unary.f32(i32 6, float %1806)  ; FAbs(value)
  %1811 = fadd fast float %1810, %1809
  %1812 = call float @dx.op.binary.f32(i32 35, float %1811, float 0x3F847AE140000000)  ; FMax(a,b)
  %1813 = fdiv fast float %1809, %1812
  %1814 = fcmp fast olt float %1805, 0.000000e+00
  %1815 = fcmp fast olt float %1806, 0.000000e+00
  %1816 = zext i1 %1814 to i32
  %1817 = select i1 %1815, i32 2, i32 0
  %1818 = or i32 %1816, %1817
  %1819 = fmul fast float %1813, 1.638300e+04
  %1820 = fptoui float %1819 to i32
  %1821 = fmul fast float %1807, 6.553500e+04
  %1822 = fptoui float %1821 to i32
  %1823 = fmul fast float %1808, 1.638375e+04
  %1824 = fadd fast float %1823, 3.276750e+04
  %1825 = fptoui float %1824 to i32
  %1826 = and i32 %1825, 65535
  %1827 = shl nuw i32 %1818, 30
  %1828 = shl i32 %1820, 16
  %1829 = and i32 %1828, 1073676288
  %1830 = or i32 %1829, %1827
  %1831 = and i32 %1803, 2
  %1832 = icmp eq i32 %1831, 0
  %1833 = lshr i32 %1803, 2
  br i1 %1832, label %1834, label %1837, !dx.controlflow.hints !38

; <label>:1834                                    ; preds = %1802
  %1835 = and i32 %1822, 65535
  %1836 = or i32 %1830, %1835
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1833, i32 0, i32 %1836, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1845

; <label>:1837                                    ; preds = %1802
  %1838 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1833, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1839 = add nuw nsw i32 %1833, 1
  %1840 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1839, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1841 = shl i32 %1822, 16
  %1842 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1833, i32 0, i32 undef, i32 %1841)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1843 = lshr exact i32 %1830, 16
  %1844 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1839, i32 0, i32 undef, i32 %1843)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1845

; <label>:1845                                    ; preds = %1837, %1834
  %1846 = add i32 %1610, 8
  %1847 = lshr i32 %1846, 2
  %1848 = and i32 %1846, 2
  %1849 = icmp ne i32 %1848, 0
  %1850 = shl nuw nsw i32 %1848, 3
  %1851 = select i1 %1849, i32 65535, i32 -65536
  %1852 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1847, i32 0, i32 undef, i32 %1851)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1853 = shl i32 %1826, %1850
  %1854 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1847, i32 0, i32 undef, i32 %1853)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1855

; <label>:1855                                    ; preds = %1845, %1792, %1748
  %1856 = and i32 %1741, 1
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, i32 %1610, i32 16777215
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1728, i32 28, i32 %1858, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1859

; <label>:1859                                    ; preds = %1855, %1723, %1591, %1459, %1322
  %1860 = phi i32 [ 0, %1322 ], [ %1347, %1459 ], [ %1482, %1591 ], [ %1746, %1855 ], [ %1614, %1723 ]
  %1861 = shl i32 %1333, 8
  %1862 = or i32 %1860, %1861
  %1863 = and i32 %1332, 2
  %1864 = icmp eq i32 %1863, 0
  %1865 = lshr i32 %1332, 2
  br i1 %1864, label %1874, label %1866, !dx.controlflow.hints !38

; <label>:1866                                    ; preds = %1859
  %1867 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1865, i32 0, i32 undef, i32 65535)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1868 = add nuw nsw i32 %1865, 1
  %1869 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 1, i32 %1868, i32 0, i32 undef, i32 -65536)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1870 = shl i32 %1862, 16
  %1871 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1865, i32 0, i32 undef, i32 %1870)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1872 = lshr i32 %1862, 16
  %1873 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %1, i32 2, i32 %1868, i32 0, i32 undef, i32 %1872)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %1875

; <label>:1874                                    ; preds = %1859
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1865, i32 0, i32 %1862, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1875

; <label>:1875                                    ; preds = %1874, %1866, %1234, %1220, %1195, %1187, %201, %196, %18, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !14, !16}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !12}
!10 = !{i32 0, %"class.RWStructuredBuffer<CSMNodePlanes>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 32}
!12 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !13}
!13 = !{i32 1, i32 4}
!14 = !{!15}
!15 = !{i32 0, %CSMConstants* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!18 = !{void ()* @serialize_tree, !"serialize_tree", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}

