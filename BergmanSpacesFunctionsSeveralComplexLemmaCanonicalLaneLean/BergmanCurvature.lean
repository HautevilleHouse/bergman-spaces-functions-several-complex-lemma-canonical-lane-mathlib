import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure BergmanCurvaturePackage {K : BergmanKernelPackage} {B : BergmanSpacePackage K} (M : BergmanMetricPackage B) where
  curvatureTensor : ℂ → ℂ → ℂ → ℂ → ℂ
  holomorphicSectionalCurvature : ℂ → ℝ
  negativeCurvature : Prop
  boundedCurvature : Prop

structure BergmanCurvatureEvidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (C : BergmanCurvaturePackage M) where
  negativeCurvatureClosed : C.negativeCurvature
  boundedCurvatureClosed : C.boundedCurvature

def BergmanCurvatureClosed {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (C : BergmanCurvaturePackage M) : Prop :=
  C.negativeCurvature ∧ C.boundedCurvature

theorem bergman_curvature_closed_from_evidence {K : BergmanKernelPackage} {B : BergmanSpacePackage K} {M : BergmanMetricPackage B} (C : BergmanCurvaturePackage M) (E : BergmanCurvatureEvidence C) :
    BergmanCurvatureClosed C := by
  exact And.intro E.negativeCurvatureClosed E.boundedCurvatureClosed

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse