import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BoundaryBehaviorPackage (A : BergmanAdmittedObject) where
  kernelAsymptotics : Prop
  projectionMappingOnSmoothFunctions : Prop
  boundaryRegularity : Prop

structure BoundaryBehaviorEvidence (A : BergmanAdmittedObject) (B : BoundaryBehaviorPackage A) where
  kernelAsymptoticsClosed : B.kernelAsymptotics
  projectionMappingOnSmoothFunctionsClosed : B.projectionMappingOnSmoothFunctions
  boundaryRegularityClosed : B.boundaryRegularity

def BoundaryBehaviorClosed (A : BergmanAdmittedObject) (B : BoundaryBehaviorPackage A) : Prop :=
  B.kernelAsymptotics ∧ B.projectionMappingOnSmoothFunctions ∧ B.boundaryRegularity

theorem boundary_behavior_closed_from_evidence (A : BergmanAdmittedObject) (B : BoundaryBehaviorPackage A) (E : BoundaryBehaviorEvidence A B) : BoundaryBehaviorClosed A B := by
  exact And.intro E.kernelAsymptoticsClosed (And.intro E.projectionMappingOnSmoothFunctionsClosed E.boundaryRegularityClosed)

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse