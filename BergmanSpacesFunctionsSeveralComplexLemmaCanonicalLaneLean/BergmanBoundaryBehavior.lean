import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanBoundaryBehaviorPackage {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) where
  boundaryAsymptotics : ℂ → ℝ
  kernelDivergence : Prop
  smoothBoundary : Prop
  localization : Prop

structure BergmanBoundaryBehaviorEvidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (BB : BergmanBoundaryBehaviorPackage M) where
  kernelDivergenceClosed : BB.kernelDivergence
  smoothBoundaryClosed : BB.smoothBoundary
  localizationClosed : BB.localization

def BergmanBoundaryBehaviorClosed {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (BB : BergmanBoundaryBehaviorPackage M) : Prop :=
  BB.kernelDivergence ∧ BB.smoothBoundary ∧ BB.localization

theorem bergman_boundary_behavior_closed_from_evidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (BB : BergmanBoundaryBehaviorPackage M) (E : BergmanBoundaryBehaviorEvidence BB) :
    BergmanBoundaryBehaviorClosed BB := by
  exact And.intro E.kernelDivergenceClosed (And.intro E.smoothBoundaryClosed E.localizationClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse