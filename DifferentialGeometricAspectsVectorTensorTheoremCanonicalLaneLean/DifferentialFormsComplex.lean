import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure DifferentialFormsComplexPackage where
  baseManifold : Type u
  exteriorAlgebra : Type v
  deRhamDifferential : Type w
  flatConnection : Prop
  wedgeProduct : Prop
  poincareLemma : Prop

structure DifferentialFormsComplexEvidence (C : DifferentialFormsComplexPackage) where
  flatConnectionClosed : C.flatConnection
  wedgeProductClosed : C.wedgeProduct
  poincareLemmaClosed : C.poincareLemma

def DifferentialFormsComplexClosed (C : DifferentialFormsComplexPackage) : Prop :=
  C.flatConnection ∧ C.wedgeProduct ∧ C.poincareLemma

theorem differential_forms_complex_closed_from_evidence (C : DifferentialFormsComplexPackage)
    (E : DifferentialFormsComplexEvidence C) : DifferentialFormsComplexClosed C := by
  exact And.intro E.flatConnectionClosed (And.intro E.wedgeProductClosed E.poincareLemmaClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse