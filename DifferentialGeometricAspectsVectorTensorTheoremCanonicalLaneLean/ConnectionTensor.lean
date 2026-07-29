import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure ConnectionTensorPackage where
  manifold : Type u
  vectorBundle : Type v
  connection : Type w
  connectionLawful : Prop
  parallelTransport : Prop
  curvatureForm : Prop

def ConnectionTensorClosed (C : ConnectionTensorPackage) : Prop :=
  C.connectionLawful ∧ C.parallelTransport ∧ C.curvatureForm

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
