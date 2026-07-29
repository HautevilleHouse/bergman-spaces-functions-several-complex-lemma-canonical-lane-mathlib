import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanMetricPackage {K : BergmanKernelPackage} (B : BergmanSpacePackage K) where
  metricTensor : ℂ → ℂ → ℂ
  kahlerPotential : ℂ → ℝ
  positiveDefinite : Prop
  invariance : Prop

structure BergmanMetricEvidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) where
  positiveDefiniteClosed : M.positiveDefinite
  invarianceClosed : M.invariance

def BergmanMetricClosed {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) : Prop :=
  M.positiveDefinite ∧ M.invariance

theorem bergman_metric_closed_from_evidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) (E : BergmanMetricEvidence M) :
    BergmanMetricClosed M := by
  exact And.intro E.positiveDefiniteClosed E.invarianceClosed

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse