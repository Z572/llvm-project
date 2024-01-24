; RUN: llc -mtriple=riscv64 -target-abi=ilp32 -filetype=obj < %s | llvm-readobj -h - | FileCheck %s
;
; CHECK:      Class: 32-bit (0x1)
; CHECK:      Flags [ (0x20)
; CHECK-NEXT: EF_RISCV_X32 (0x20)
; CHECK-NEXT: ]
define void @foo() {
  ret void
}
