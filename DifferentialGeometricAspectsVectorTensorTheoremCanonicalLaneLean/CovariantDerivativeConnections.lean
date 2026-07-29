import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure ConnectionPackage where
  connectionType : Type
  covariantDerivativeMapping : Prop
  torsionFreeCondition : Prop
  metricCompatibility : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  covariantDerivativeMappingClosed : C.covariantDerivativeMapping
  torsionFreeConditionClosed : C.torsionFreeCondition
  metricCompatibilityClosed : C.metricCompatibility

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.covariantDerivativeMapping ∧ C.torsionFreeCondition ∧ C.metricCompatibility

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.covariantDerivativeMappingClosed (And.intro E.torsionFreeConditionClosed E.metricCompatibilityClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
