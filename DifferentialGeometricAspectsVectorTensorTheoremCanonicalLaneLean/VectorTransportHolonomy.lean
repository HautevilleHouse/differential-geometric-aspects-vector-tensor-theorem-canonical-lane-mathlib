import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroupType : Type
  parallelTransportDefined : Prop
  loopComposition : Prop
  holonomyInvariance : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  parallelTransportDefinedClosed : H.parallelTransportDefined
  loopCompositionClosed : H.loopComposition
  holonomyInvarianceClosed : H.holonomyInvariance

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.parallelTransportDefined ∧ H.loopComposition ∧ H.holonomyInvariance

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.parallelTransportDefinedClosed (And.intro E.loopCompositionClosed E.holonomyInvarianceClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
