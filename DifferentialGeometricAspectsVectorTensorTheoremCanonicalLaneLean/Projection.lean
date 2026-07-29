import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def vectorTensorProjection : Projection VectorTensorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem vector_tensor_projection_idempotent (x : VectorTensorEndgameState) :
    vectorTensorProjection.toFun (vectorTensorProjection.toFun x) = vectorTensorProjection.toFun x := by
  exact vectorTensorProjection.idempotent x

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
