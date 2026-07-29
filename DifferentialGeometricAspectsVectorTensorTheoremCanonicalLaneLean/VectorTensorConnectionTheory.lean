import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure ConnectionPackage where
  totalSpace : Type u
  baseManifold : Type v
  projectionMap : totalSpace → baseManifold
  verticalSubbundle : Type w
  connectionForm : Type x
  curvatureForm : Type y
  torsionForm : Type z
  connectionLawful : Prop
  curvatureTransformation : Prop
  torsionFreeCondition : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  connectionLawfulClosed : C.connectionLawful
  curvatureTransformationClosed : C.curvatureTransformation
  torsionFreeConditionClosed : C.torsionFreeCondition

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.connectionLawful ∧ C.curvatureTransformation ∧ C.torsionFreeCondition

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.connectionLawfulClosed
    (And.intro E.curvatureTransformationClosed E.torsionFreeConditionClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse