import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanKernelPackage where
  domainType : Type u
  dimension : ℕ
  kernelDefined : Prop
  reproducingProperty : Prop
  holomorphicInFirstArg : Prop
  antiHolomorphicInSecondArg : Prop

structure BergmanKernelEvidence (B : BergmanKernelPackage) where
  kernelDefinedClosed : B.kernelDefined
  reproducingPropertyClosed : B.reproducingProperty
  holomorphicInFirstArgClosed : B.holomorphicInFirstArg
  antiHolomorphicInSecondArgClosed : B.antiHolomorphicInSecondArg

def BergmanKernelClosed (B : BergmanKernelPackage) : Prop :=
  B.kernelDefined ∧ B.reproducingProperty ∧ B.holomorphicInFirstArg ∧ B.antiHolomorphicInSecondArg

theorem bergman_kernel_closed_from_evidence (B : BergmanKernelPackage) (E : BergmanKernelEvidence B) :
    BergmanKernelClosed B := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.reproducingPropertyClosed
      (And.intro E.holomorphicInFirstArgClosed E.antiHolomorphicInSecondArgClosed))

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse