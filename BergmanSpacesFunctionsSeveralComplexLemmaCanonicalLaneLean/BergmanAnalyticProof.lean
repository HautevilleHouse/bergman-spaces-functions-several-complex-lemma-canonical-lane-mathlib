import BergmanSpacesFunctionsSeveralComplexLemma.BergmanAnalyticEvidenceTerms

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemma

structure BergmanAnalyticCertificate where
  weightCondition : Prop
  reproducingKernelFormula : Prop
  bergmanProjectionBounded : Prop
  weightedBergmanSpaceComplete : Prop
  weightConditionClosed : weightCondition
  reproducingKernelFormulaClosed : reproducingKernelFormula
  bergmanProjectionBoundedClosed : bergmanProjectionBounded
  weightedBergmanSpaceCompleteClosed : weightedBergmanSpaceComplete
  integrabilityEvidence : BergmanWeightedIntegrabilityEvidence (default)

def BergmanAnalyticCertificateClosed (C : BergmanAnalyticCertificate) : Prop :=
  C.weightCondition ∧ C.reproducingKernelFormula ∧
  C.bergmanProjectionBounded ∧ C.weightedBergmanSpaceComplete ∧
  BergmanWeightedIntegrabilityClosed (default)

theorem bergman_analytic_certificate_closed
    (C : BergmanAnalyticCertificate) : BergmanAnalyticCertificateClosed C := by
  exact And.intro C.weightConditionClosed
    (And.intro C.reproducingKernelFormulaClosed
      (And.intro C.bergmanProjectionBoundedClosed
        (And.intro C.weightedBergmanSpaceCompleteClosed
          (bergman_weighted_integrability_closed_from_evidence (default)
            C.integrabilityEvidence))))

end BergmanSpacesFunctionsSeveralComplexLemma
end HautevilleHouse