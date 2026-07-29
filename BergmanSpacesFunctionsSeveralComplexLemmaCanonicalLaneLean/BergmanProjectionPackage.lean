import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanProjectionPackage (A : BergmanAdmittedObject) where
  projectionOperator : (A.domain → ℂ) → (A.domain → ℂ)
  l2Boundedness : Prop
  orthogonalProjection : Prop
  mappingProperties : Prop

structure BergmanProjectionEvidence (A : BergmanAdmittedObject) (P : BergmanProjectionPackage A) where
  l2BoundednessClosed : P.l2Boundedness
  orthogonalProjectionClosed : P.orthogonalProjection
  mappingPropertiesClosed : P.mappingProperties

def BergmanProjectionClosed (A : BergmanAdmittedObject) (P : BergmanProjectionPackage A) : Prop :=
  P.l2Boundedness ∧ P.orthogonalProjection ∧ P.mappingProperties

theorem bergman_projection_closed_from_evidence (A : BergmanAdmittedObject) (P : BergmanProjectionPackage A) (E : BergmanProjectionEvidence A P) : BergmanProjectionClosed A P := by
  exact And.intro E.l2BoundednessClosed (And.intro E.orthogonalProjectionClosed E.mappingPropertiesClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse