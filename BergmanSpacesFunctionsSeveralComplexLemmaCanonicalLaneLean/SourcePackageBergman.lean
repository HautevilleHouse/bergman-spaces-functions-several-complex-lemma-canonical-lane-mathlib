import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool

deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat

deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat

deriving Repr, DecidableEq

def sourceCheckoutHead : String := "ed9593465c1e2c7d8fcd2ceae9de9a5440018fc9"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d", functionCount := 9, classCount := 0, assignmentCount := 7, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/extract_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 29, isAsync := false }]

def sourceClasses : List SourceClassDecl := []

def sourceAssignments : List SourceAssignmentDecl :=
  [{ file := "scripts/extract_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 }]

end BergmanSpacesFunctionsSeveralComplexLemmaCanonicalLaneLean
end HautevilleHouse