import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "differential-geometric-aspects-vector-tensor-theorem-canonical-lane",
  theoremName := "DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean",
  theoremObject := "Vector Tensor Theorem: curvature invariants and connection theory under admissible class",
  classicalBoundary := "classical boundary: unrestricted curvature classification remains open",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through curvature invariants, connection theory, index theorems, and holonomy",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse