import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.MigrationGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def ConstrainedCellMigrationClosure (A : MigrationAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem cell_migration_endgame (A : MigrationAdmittedObject) :
    ConstrainedCellMigrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse