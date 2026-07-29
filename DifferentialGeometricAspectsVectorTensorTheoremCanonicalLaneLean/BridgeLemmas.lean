import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
