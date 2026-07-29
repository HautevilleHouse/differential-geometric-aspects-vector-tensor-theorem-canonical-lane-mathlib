import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure IndexTheoremPackage where
  ellipticOperatorType : Type
  indexDefined : Prop
  topologicalInvariance : Prop
  analyticIndexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexDefinedClosed : I.indexDefined
  topologicalInvarianceClosed : I.topologicalInvariance
  analyticIndexEqualityClosed : I.analyticIndexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexDefined ∧ I.topologicalInvariance ∧ I.analyticIndexEquality

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexDefinedClosed (And.intro E.topologicalInvarianceClosed E.analyticIndexEqualityClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
