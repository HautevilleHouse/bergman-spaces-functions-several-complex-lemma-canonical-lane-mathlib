import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure CompactnessPackage (A : BergmanAdmittedObject) where
  projectionCompact : Prop
  kernelCompactOnDiagonal : Prop
  rellichEmbedding : Prop

structure CompactnessEvidence (A : BergmanAdmittedObject) (C : CompactnessPackage A) where
  projectionCompactClosed : C.projectionCompact
  kernelCompactOnDiagonalClosed : C.kernelCompactOnDiagonal
  rellichEmbeddingClosed : C.rellichEmbedding

def CompactnessClosed (A : BergmanAdmittedObject) (C : CompactnessPackage A) : Prop :=
  C.projectionCompact ∧ C.kernelCompactOnDiagonal ∧ C.rellichEmbedding

theorem compactness_closed_from_evidence (A : BergmanAdmittedObject) (C : CompactnessPackage A) (E : CompactnessEvidence A C) : CompactnessClosed A C := by
  exact And.intro E.projectionCompactClosed (And.intro E.kernelCompactOnDiagonalClosed E.rellichEmbeddingClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse