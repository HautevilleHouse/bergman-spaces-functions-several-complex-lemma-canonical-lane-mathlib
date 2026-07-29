import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.BergmanKernel

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure ReproducingKernelHilbertSpacePackage (B : BergmanSpace)
    (K : BergmanKernelPackage B) where
  innerProductBilinear : Prop
  normComplete : Prop
  pointEvaluationBounded : Prop
  kernelReproduces : Prop

structure ReproducingKernelHilbertSpaceEvidence (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K) where
  innerProductBilinearClosed : R.innerProductBilinear
  normCompleteClosed : R.normComplete
  pointEvaluationBoundedClosed : R.pointEvaluationBounded
  kernelReproducesClosed : R.kernelReproduces

def ReproducingKernelHilbertSpaceClosed (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K) : Prop :=
  R.innerProductBilinear ∧ R.normComplete ∧ R.pointEvaluationBounded ∧ R.kernelReproduces

theorem reproducing_kernel_hilbert_space_closed_from_evidence (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K)
    (E : ReproducingKernelHilbertSpaceEvidence B K R) :
    ReproducingKernelHilbertSpaceClosed B K R := by
  exact And.intro E.innerProductBilinearClosed
    (And.intro E.normCompleteClosed
      (And.intro E.pointEvaluationBoundedClosed E.kernelReproducesClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse