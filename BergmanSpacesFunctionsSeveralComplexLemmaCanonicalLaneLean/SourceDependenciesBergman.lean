import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat

deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat

deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [{ file := "scripts/extract_constants.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 }]

def sourcePathDependencies : List SourcePathDependency :=
  [{ file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", path := "artifacts/constants_extraction_inputs.json", role := "artifact", line := 17 }]

def sourceImportDependencyCount : Nat := 1
def sourcePathDependencyCount : Nat := 1

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 1 := by
  native_decide

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 1 := by
  native_decide

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse