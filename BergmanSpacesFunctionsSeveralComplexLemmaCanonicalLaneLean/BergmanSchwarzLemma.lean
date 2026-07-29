import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanSchwarzLemmaPackage {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) where
  holomorphicMap : ℂ → ℂ
  contractivity : Prop
  equalityCondition : Prop

structure BergmanSchwarzLemmaEvidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (S : BergmanSchwarzLemmaPackage M) where
  contractivityClosed : S.contractivity
  equalityConditionClosed : S.equalityCondition

def BergmanSchwarzLemmaClosed {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (S : BergmanSchwarzLemmaPackage M) : Prop :=
  S.contractivity ∧ S.equalityCondition

theorem bergman_schwarz_lemma_closed_from_evidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (S : BergmanSchwarzLemmaPackage M) (E : BergmanSchwarzLemmaEvidence S) :
    BergmanSchwarzLemmaClosed S := by
  exact And.intro E.contractivityClosed E.equalityConditionClosed

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse