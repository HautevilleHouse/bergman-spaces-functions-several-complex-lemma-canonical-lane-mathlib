import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanSpace where
  domain : Type u
  complexStructure : ComplexStructure domain
  measure : Measure domain
  dimension : ℕ
  holomorphicSquareIntegrable : Set (domain → ℂ)
  isHilbertSpace : Prop
  bergmanKernel : domain → domain → ℂ
  reproducingProperty : Prop

structure BergmanAdmittedObject where
  space : BergmanSpace
  kernelBounded : Prop
  projectionBounded : Prop
  conclusion : kernelBounded ∧ projectionBounded

def BergmanWitnessClosed (O : BergmanAdmittedObject) : Prop :=
  O.conclusion

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse