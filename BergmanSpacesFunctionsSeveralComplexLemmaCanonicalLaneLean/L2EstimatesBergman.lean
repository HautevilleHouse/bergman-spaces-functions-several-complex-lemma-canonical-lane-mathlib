import BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.WeightedBergman

/-!
# L² Estimates for ∂̄ in Bergman Spaces Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure L2EstimatesBergmanPackage (W : WeightedBergmanPackage) where
  dbarOperator : Type u
  closedRange : Prop
  hoermanderEstimate : Prop
  existenceOfSolutions : Prop

structure L2EstimatesBergmanEvidence {W : WeightedBergmanPackage} (L : L2EstimatesBergmanPackage W) where
  closedRangeClosed : L.closedRange
  hoermanderEstimateClosed : L.hoermanderEstimate
  existenceOfSolutionsClosed : L.existenceOfSolutions

def L2EstimatesBergmanClosed {W : WeightedBergmanPackage} (L : L2EstimatesBergmanPackage W) : Prop :=
  L.closedRange ∧ L.hoermanderEstimate ∧ L.existenceOfSolutions

theorem l2_estimates_bergman_closed_from_evidence {W : WeightedBergmanPackage} (L : L2EstimatesBergmanPackage W) (E : L2EstimatesBergmanEvidence L) :
    L2EstimatesBergmanClosed L := by
  exact And.intro E.closedRangeClosed (And.intro E.hoermanderEstimateClosed E.existenceOfSolutionsClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse