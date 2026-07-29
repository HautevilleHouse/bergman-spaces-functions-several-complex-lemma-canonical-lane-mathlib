import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanSpaceEstimatesPackage where
  projectionRef : BergmanProjectionPackage
  l2Estimate : Prop
  sobolevEstimate : Prop
  regularityEstimate : Prop
  compactnessProperty : Prop

structure BergmanSpaceEstimatesEvidence (E : BergmanSpaceEstimatesPackage) where
  l2EstimateClosed : E.l2Estimate
  sobolevEstimateClosed : E.sobolevEstimate
  regularityEstimateClosed : E.regularityEstimate
  compactnessPropertyClosed : E.compactnessProperty

def BergmanSpaceEstimatesClosed (E : BergmanSpaceEstimatesPackage) : Prop :=
  E.l2Estimate ∧ E.sobolevEstimate ∧ E.regularityEstimate ∧ E.compactnessProperty

theorem bergman_space_estimates_closed_from_evidence (E : BergmanSpaceEstimatesPackage) (Ev : BergmanSpaceEstimatesEvidence E) :
    BergmanSpaceEstimatesClosed E := by
  exact And.intro Ev.l2EstimateClosed
    (And.intro Ev.sobolevEstimateClosed
      (And.intro Ev.regularityEstimateClosed Ev.compactnessPropertyClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse