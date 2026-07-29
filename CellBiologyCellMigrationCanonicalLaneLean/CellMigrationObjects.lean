import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellMigrationAdmittedObject where
  space : CellMigrationSpace
  threeDimensionalMatrix : Prop
  motilePhenotype : Prop
  directionModel : Type
  directionTopology : TopologicalSpace directionModel
  chemotacticGradientDetected : Prop
  conclusion : chemotacticGradientDetected

structure CellMigrationEndgameState where
  object : CellMigrationAdmittedObject

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.chemotacticGradientDetected

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse