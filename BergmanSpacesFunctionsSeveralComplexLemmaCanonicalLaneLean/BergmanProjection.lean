import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanProjectionPackage where
  kernelRef : BergmanKernelPackage
  projectionDefined : Prop
  boundedOnL2 : Prop
  orthogonalProjection : Prop
  reproducesHolomorphicFunctions : Prop

structure BergmanProjectionEvidence (P : BergmanProjectionPackage) where
  projectionDefinedClosed : P.projectionDefined
  boundedOnL2Closed : P.boundedOnL2
  orthogonalProjectionClosed : P.orthogonalProjection
  reproducesHolomorphicFunctionsClosed : P.reproducesHolomorphicFunctions

def BergmanProjectionClosed (P : BergmanProjectionPackage) : Prop :=
  P.projectionDefined ∧ P.boundedOnL2 ∧ P.orthogonalProjection ∧ P.reproducesHolomorphicFunctions

theorem bergman_projection_closed_from_evidence (P : BergmanProjectionPackage) (E : BergmanProjectionEvidence P) :
    BergmanProjectionClosed P := by
  exact And.intro E.projectionDefinedClosed
    (And.intro E.boundedOnL2Closed
      (And.intro E.orthogonalProjectionClosed E.reproducesHolomorphicFunctionsClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse