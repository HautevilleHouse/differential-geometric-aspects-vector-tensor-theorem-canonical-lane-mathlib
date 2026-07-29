import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.ConnectionTensor

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage {C : ConnectionTensorPackage} where
  sectionalCurvature : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  invariantLaws : Prop

def CurvatureInvariantsClosed {C : ConnectionTensorPackage} (P : CurvatureInvariantsPackage C) : Prop :=
  P.sectionalCurvature ∧ P.ricciCurvature ∧ P.scalarCurvature ∧ P.invariantLaws

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
