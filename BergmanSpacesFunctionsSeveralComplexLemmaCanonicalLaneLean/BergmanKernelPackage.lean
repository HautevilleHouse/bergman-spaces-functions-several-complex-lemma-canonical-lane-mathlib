import BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.BergmanAdmissibleClass

/-!
# Bergman Kernel Package
-/

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanKernelPackage where
  domain : Type u
  kernelFunction : Type v
  reproducingProperty : Prop
  holomorphicity : Prop
  antiHolomorphicity : Prop

structure BergmanKernelEvidence (K : BergmanKernelPackage) where
  reproducingPropertyClosed : K.reproducingProperty
  holomorphicityClosed : K.holomorphicity
  antiHolomorphicityClosed : K.antiHolomorphicity

def BergmanKernelClosed (K : BergmanKernelPackage) : Prop :=
  K.reproducingProperty ∧ K.holomorphicity ∧ K.antiHolomorphicity

theorem bergman_kernel_closed_from_evidence (K : BergmanKernelPackage) (E : BergmanKernelEvidence K) :
    BergmanKernelClosed K := by
  exact And.intro E.reproducingPropertyClosed (And.intro E.holomorphicityClosed E.antiHolomorphicityClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse