import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellMigrationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellMigrationAdmittedObject where
  space : CellMigrationSpace
  threeDimensional : Prop
  cellMotile : Prop
  migrationPathModel : Type
  pathTopology : TopologicalSpace migrationPathModel
  pathConnectedToEndpoint : Prop
  conclusion : pathConnectedToEndpoint

structure CellMigrationEndgameState where
  object : CellMigrationAdmittedObject

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.pathConnectedToEndpoint

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse
