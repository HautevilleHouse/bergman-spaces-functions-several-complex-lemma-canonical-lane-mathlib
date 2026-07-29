import HautevilleHouse.BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bergmanConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "bergman-spaces-functions-several-complex-lemma-canonical-lane"

def sourceDescription : String :=
  "Bergman spaces, reproducing kernels, and function-theoretic applications in several complex variables"

def sourceTheoremBoundary : String :=
  "classical boundary: the full Bergman theory remaining outside the kernel closure"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := sourceTheoremBoundary
  , bergmanConstrainedStatement := "kernel-constrained theorem certificate internalized through baseline gates, source constants, and reviewer bridge"
  , certificateLane := "kernel_constrained"
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse