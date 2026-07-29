import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemma

structure BergmanSpace where
  domain : Type
  topology : TopologicalSpace domain
  dimension : Nat
  weightFunction : String

structure BergmanAdmittedObject where
  space : BergmanSpace
  weightedSquareIntegrable : Prop
  reproducingKernelGiven : Prop
  conclusion : weightedSquareIntegrable ∧ reproducingKernelGiven

structure BergmanEndgameState where
  object : BergmanAdmittedObject

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

end BergmanSpacesFunctionsSeveralComplexLemma
end HautevilleHouse