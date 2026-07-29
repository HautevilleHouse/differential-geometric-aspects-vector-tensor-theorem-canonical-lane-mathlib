import DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VectorTensorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VectorTensorAdmittedObject where
  space : VectorTensorSpace
  vectorBundle : Prop
  tensorBundle : Prop
  connectionDefined : Prop
  curvatureInvariant : Prop
  indexTheoremHolds : Prop
  conclusion : indexTheoremHolds

structure VectorTensorEndgameState where
  object : VectorTensorAdmittedObject

def VectorTensorWitnessClosed (O : VectorTensorAdmittedObject) : Prop :=
  O.indexTheoremHolds

end DifferentialGeometricAspectsVectorTensorTheoremCanonicalLaneLean
end HautevilleHouse
