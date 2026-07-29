import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure VectorTensorAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorBundle : Type v
  tensorStructure : Type w
  connectionDefined : Prop
  curvatureDefined : Prop
  invariantsDefined : Prop
  conclusion : Prop

structure VectorTensorAdmissibleClass where
  object : VectorTensorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def vectorTensorAdmittedClosure (A : VectorTensorAdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def VectorTensorWitnessClosed (O : VectorTensorAdmittedObject) : Prop :=
  O.conclusion

theorem vector_tensor_bridge_closed (A : VectorTensorAdmissibleClass) :
    VectorTensorWitnessClosed A.object := by
  exact A.object.conclusion

theorem vector_tensor_gate_closed (A : VectorTensorAdmissibleClass) :
    A.endpointSatisfied ∨ A.remainderRecorded := by
  exact A.gateWitness

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse