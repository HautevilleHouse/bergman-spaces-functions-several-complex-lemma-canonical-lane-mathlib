import BergmanSpacesFunctionsSeveralComplexLemma.BergmanWeightedIntegrabilityPackage

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemma

structure BergmanIntegrabilityEvidenceTerms
    (P : BergmanWeightedIntegrabilityPackage) (E : BergmanWeightedIntegrabilityEvidence P) where
  integrabilityCondition : E.integrabilityConditionClosed
  weightedBergmanSpaceDefined : E.weightedBergmanSpaceDefinedClosed
  normEquivalence : E.normEquivalenceClosed
  bergmanWeightedIntegrabilityClosed : BergmanWeightedIntegrabilityClosed P

def BergmanWeightedIntegrabilityEvidence.evidenceTerms
    (P : BergmanWeightedIntegrabilityPackage) (E : BergmanWeightedIntegrabilityEvidence P) :
    BergmanIntegrabilityEvidenceTerms P E := {
  integrabilityCondition := E.integrabilityConditionClosed
  weightedBergmanSpaceDefined := E.weightedBergmanSpaceDefinedClosed
  normEquivalence := E.normEquivalenceClosed
  bergmanWeightedIntegrabilityClosed :=
    bergman_weighted_integrability_closed_from_evidence P E
}

end BergmanSpacesFunctionsSeveralComplexLemma
end HautevilleHouse