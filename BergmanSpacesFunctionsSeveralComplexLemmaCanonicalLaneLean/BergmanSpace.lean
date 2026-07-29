import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanSpacePackage (K : BergmanKernelPackage) where
  functions : Type u
  holomorphic : Prop
  squareIntegrable : Prop
  innerProduct : Prop
  completeness : Prop

structure BergmanSpaceEvidence {K : BergmanKernelPackage} (B : BergmanSpacePackage K) where
  holomorphicClosed : B.holomorphic
  squareIntegrableClosed : B.squareIntegrable
  innerProductClosed : B.innerProduct
  completenessClosed : B.completeness

def BergmanSpaceClosed {K : BergmanKernelPackage} (B : BergmanSpacePackage K) : Prop :=
  B.holomorphic ∧ B.squareIntegrable ∧ B.innerProduct ∧ B.completeness

theorem bergman_space_closed_from_evidence {K : BergmanKernelPackage} (B : BergmanSpacePackage K) (E : BergmanSpaceEvidence B) :
    BergmanSpaceClosed B := by
  exact And.intro E.holomorphicClosed (And.intro E.squareIntegrableClosed (And.intro E.innerProductClosed E.completenessClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse