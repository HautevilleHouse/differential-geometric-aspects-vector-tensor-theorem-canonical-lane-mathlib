import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure BianchiIdentitiesPackage {C : ConnectionTensorPackage}
    {I : CurvatureInvariantsPackage C} where
  firstBianchi : Prop
  secondBianchi : Prop
  contractedBianchi : Prop

def BianchiIdentitiesClosed {C : ConnectionTensorPackage}
    {I : CurvatureInvariantsPackage C} (B : BianchiIdentitiesPackage C I) : Prop :=
  B.firstBianchi ∧ B.secondBianchi ∧ B.contractedBianchi

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
