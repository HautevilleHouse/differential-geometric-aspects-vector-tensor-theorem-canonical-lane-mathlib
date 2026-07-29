import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

structure HolonomyBundlePackage where
  baseManifold : Type u
  connection : Type v
  holonomyGroup : Type w
  reducedHolonomy : Prop
  ambroseSingerTheorem : Prop
  holonomyInvariantSubbundle : Prop

structure HolonomyBundleEvidence (C : HolonomyBundlePackage) where
  reducedHolonomyClosed : C.reducedHolonomy
  ambroseSingerTheoremClosed : C.ambroseSingerTheorem
  holonomyInvariantSubbundleClosed : C.holonomyInvariantSubbundle

def HolonomyBundleClosed (C : HolonomyBundlePackage) : Prop :=
  C.reducedHolonomy ∧ C.ambroseSingerTheorem ∧ C.holonomyInvariantSubbundle

theorem holonomy_bundle_closed_from_evidence (C : HolonomyBundlePackage)
    (E : HolonomyBundleEvidence C) : HolonomyBundleClosed C := by
  exact And.intro E.reducedHolonomyClosed (And.intro E.ambroseSingerTheoremClosed E.holonomyInvariantSubbundleClosed)

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse