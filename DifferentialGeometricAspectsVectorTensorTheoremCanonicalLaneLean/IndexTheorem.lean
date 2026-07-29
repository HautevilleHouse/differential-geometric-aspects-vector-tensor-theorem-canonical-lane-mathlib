import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.ConnectionTheory

/-!
# Index Theorem Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure IndexTheoremPackage {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {CT : ConnectionTheoryPackage C} where
  ellipticComplex : Prop
  indexFormula : Prop
  chernCharacter : Prop
  toddClass : Prop
  cohomologicalPairing : Prop

structure IndexTheoremEvidence {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {CT : ConnectionTheoryPackage C}
    (IT : IndexTheoremPackage CT) where
  ellipticComplexClosed : IT.ellipticComplex
  indexFormulaClosed : IT.indexFormula
  chernCharacterClosed : IT.chernCharacter
  toddClassClosed : IT.toddClass
  cohomologicalPairingClosed : IT.cohomologicalPairing

def IndexTheoremClosed {G : RiemannianCurvaturePackage}
    {C : CurvatureInvariantsPackage G} {CT : ConnectionTheoryPackage C}
    (IT : IndexTheoremPackage CT) : Prop :=
  IT.ellipticComplex ∧ IT.indexFormula ∧ IT.chernCharacter ∧ IT.toddClass ∧ IT.cohomologicalPairing

theorem index_theorem_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : CurvatureInvariantsPackage G}
    {CT : ConnectionTheoryPackage C} (IT : IndexTheoremPackage CT)
    (E : IndexTheoremEvidence IT) : IndexTheoremClosed IT := by
  exact And.intro E.ellipticComplexClosed
    (And.intro E.indexFormulaClosed
      (And.intro E.chernCharacterClosed
        (And.intro E.toddClassClosed E.cohomologicalPairingClosed)))

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
