import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure CurvatureInvariantPackage where
  riemannCurvatureTensor : Type u
  ricciTensor : Type v
  scalarCurvature : Type w
  sectionalCurvature : Type x
  curvatureDecomposition : Prop
  invariantPolynomials : Prop
  curvatureRelations : Prop

structure CurvatureInvariantEvidence (C : CurvatureInvariantPackage) where
  curvatureDecompositionClosed : C.curvatureDecomposition
  invariantPolynomialsClosed : C.invariantPolynomials
  curvatureRelationsClosed : C.curvatureRelations

def CurvatureInvariantClosed (C : CurvatureInvariantPackage) : Prop :=
  C.curvatureDecomposition ∧ C.invariantPolynomials ∧ C.curvatureRelations

theorem curvature_invariant_closed_from_evidence (C : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence C) :
    CurvatureInvariantClosed C := by
  exact And.intro E.curvatureDecompositionClosed
    (And.intro E.invariantPolynomialsClosed E.curvatureRelationsClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse