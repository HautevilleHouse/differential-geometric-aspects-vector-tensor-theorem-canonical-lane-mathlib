import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.CurvatureInvariants

/-!
# Connection Theory Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure ConnectionTheoryPackage {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} where
  leviCivitaConnection : Prop
  parallelTransport : Prop
  holonomyGroup : Prop
  torsionFree : Prop
  metricCompatible : Prop

structure ConnectionTheoryEvidence {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} (CT : ConnectionTheoryPackage C) where
  leviCivitaConnectionClosed : CT.leviCivitaConnection
  parallelTransportClosed : CT.parallelTransport
  holonomyGroupClosed : CT.holonomyGroup
  torsionFreeClosed : CT.torsionFree
  metricCompatibleClosed : CT.metricCompatible

def ConnectionTheoryClosed {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} (CT : ConnectionTheoryPackage C) : Prop :=
  CT.leviCivitaConnection ∧ CT.parallelTransport ∧ CT.holonomyGroup ∧ CT.torsionFree ∧ CT.metricCompatible

theorem connection_theory_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G}
    (CT : ConnectionTheoryPackage C) (E : ConnectionTheoryEvidence CT) :
    ConnectionTheoryClosed CT := by
  exact And.intro E.leviCivitaConnectionClosed
    (And.intro E.parallelTransportClosed
      (And.intro E.holonomyGroupClosed
        (And.intro E.torsionFreeClosed E.metricCompatibleClosed)))

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
