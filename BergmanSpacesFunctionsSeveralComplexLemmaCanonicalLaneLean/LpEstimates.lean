import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.ReproducingKernelHilbertSpace

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure LpEstimatesPackage (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K) where
  bergmanProjectionDefined : Prop
  boundednessLp : Prop
  rangeIsBergmanSpace : Prop
  kernelIntegralFormula : Prop

structure LpEstimatesEvidence (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K)
    (L : LpEstimatesPackage B K R) where
  bergmanProjectionDefinedClosed : L.bergmanProjectionDefined
  boundednessLpClosed : L.boundednessLp
  rangeIsBergmanSpaceClosed : L.rangeIsBergmanSpace
  kernelIntegralFormulaClosed : L.kernelIntegralFormula

def LpEstimatesClosed (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K)
    (L : LpEstimatesPackage B K R) : Prop :=
  L.bergmanProjectionDefined ∧ L.boundednessLp ∧ L.rangeIsBergmanSpace ∧ L.kernelIntegralFormula

theorem lp_estimates_closed_from_evidence (B : BergmanSpace)
    (K : BergmanKernelPackage B) (R : ReproducingKernelHilbertSpacePackage B K)
    (L : LpEstimatesPackage B K R) (E : LpEstimatesEvidence B K R L) :
    LpEstimatesClosed B K R L := by
  exact And.intro E.bergmanProjectionDefinedClosed
    (And.intro E.boundednessLpClosed
      (And.intro E.rangeIsBergmanSpaceClosed E.kernelIntegralFormulaClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse