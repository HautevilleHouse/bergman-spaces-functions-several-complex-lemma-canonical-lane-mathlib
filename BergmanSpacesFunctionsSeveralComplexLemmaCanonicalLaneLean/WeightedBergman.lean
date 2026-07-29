import BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.BergmanKernelPackage

/-!
# Weighted Bergman Spaces Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure WeightedBergmanPackage (K : BergmanKernelPackage) where
  weight : Type v
  weightedBergmanSpace : Type w
  boundedness : Prop
  compactness : Prop

structure WeightedBergmanEvidence {K : BergmanKernelPackage} (W : WeightedBergmanPackage K) where
  boundednessClosed : W.boundedness
  compactnessClosed : W.compactness

def WeightedBergmanClosed {K : BergmanKernelPackage} (W : WeightedBergmanPackage K) : Prop :=
  W.boundedness ∧ W.compactness

theorem weighted_bergman_closed_from_evidence {K : BergmanKernelPackage} (W : WeightedBergmanPackage K) (E : WeightedBergmanEvidence W) :
    WeightedBergmanClosed W := by
  exact And.intro E.boundednessClosed E.compactnessClosed

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse