import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanMetricPackage (A : BergmanAdmittedObject) where
  metric : A.domain → A.domain → ℝ
  hermitian : Prop
  kaehler : Prop
  completeness : Prop
  holomorphicCurvatureBounded : Prop

structure BergmanMetricEvidence (A : BergmanAdmittedObject) (M : BergmanMetricPackage A) where
  hermitianClosed : M.hermitian
  kaehlerClosed : M.kaehler
  completenessClosed : M.completeness
  holomorphicCurvatureBoundedClosed : M.holomorphicCurvatureBounded

def BergmanMetricClosed (A : BergmanAdmittedObject) (M : BergmanMetricPackage A) : Prop :=
  M.hermitian ∧ M.kaehler ∧ M.completeness ∧ M.holomorphicCurvatureBounded

theorem bergman_metric_closed_from_evidence (A : BergmanAdmittedObject) (M : BergmanMetricPackage A) (E : BergmanMetricEvidence A M) : BergmanMetricClosed A M := by
  exact And.intro E.hermitianClosed (And.intro E.kaehlerClosed (And.intro E.completenessClosed E.holomorphicCurvatureBoundedClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse