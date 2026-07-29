import BergmanSpacesFunctionsSeveralComplexLemma.BergmanSpacesObjects

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemma

structure BergmanWeightedIntegrabilityPackage where
  weightFunction : String
  integrabilityCondition : Prop
  weightedBergmanSpaceDefined : Prop
  normEquivalence : Prop

structure BergmanWeightedIntegrabilityEvidence (P : BergmanWeightedIntegrabilityPackage) where
  weightFunctionClosed : P.weightFunction = "det(I - z*wbar)^(-α)"
  integrabilityConditionClosed : P.integrabilityCondition
  weightedBergmanSpaceDefinedClosed : P.weightedBergmanSpaceDefined
  normEquivalenceClosed : P.normEquivalence

def BergmanWeightedIntegrabilityClosed (P : BergmanWeightedIntegrabilityPackage) : Prop :=
  P.integrabilityCondition ∧ P.weightedBergmanSpaceDefined ∧ P.normEquivalence

theorem bergman_weighted_integrability_closed_from_evidence
    (P : BergmanWeightedIntegrabilityPackage) (E : BergmanWeightedIntegrabilityEvidence P) :
    BergmanWeightedIntegrabilityClosed P := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.weightedBergmanSpaceDefinedClosed E.normEquivalenceClosed)

end BergmanSpacesFunctionsSeveralComplexLemma
end HautevilleHouse