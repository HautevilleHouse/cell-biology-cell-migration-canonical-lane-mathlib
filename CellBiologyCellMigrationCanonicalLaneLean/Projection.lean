import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cellMigrationProjection : Projection CellMigrationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cell_migration_projection_idempotent (x : CellMigrationEndgameState) :
    cellMigrationProjection.toFun (cellMigrationProjection.toFun x) = cellMigrationProjection.toFun x := by
  exact cellMigrationProjection.idempotent x

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse
