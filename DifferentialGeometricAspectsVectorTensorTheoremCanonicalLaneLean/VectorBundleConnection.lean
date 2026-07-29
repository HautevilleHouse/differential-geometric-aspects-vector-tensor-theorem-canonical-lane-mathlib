import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure VectorBundleConnectionPackage where
  baseManifold : Type u
  totalSpace : Type v
  projectionMap : Type w
  connectionForm : Prop
  parallelTransport : Prop
  curvatureTwoForm : Prop

structure VectorBundleConnectionEvidence (C : VectorBundleConnectionPackage) where
  connectionFormClosed : C.connectionForm
  parallelTransportClosed : C.parallelTransport
  curvatureTwoFormClosed : C.curvatureTwoForm

def VectorBundleConnectionClosed (C : VectorBundleConnectionPackage) : Prop :=
  C.connectionForm ∧ C.parallelTransport ∧ C.curvatureTwoForm

theorem vector_bundle_connection_closed_from_evidence (C : VectorBundleConnectionPackage)
    (E : VectorBundleConnectionEvidence C) : VectorBundleConnectionClosed C := by
  exact And.intro E.connectionFormClosed (And.intro E.parallelTransportClosed E.curvatureTwoFormClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse