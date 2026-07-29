import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BergmanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BergmanWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse