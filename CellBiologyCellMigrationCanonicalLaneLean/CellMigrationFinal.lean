import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMigrationCanonicalLaneLean.CellMigrationBridgeLemmas
import CellBiologyCellMigrationCanonicalLaneLean.CellMigrationGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def ConstrainedCellMigrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_migration_endgame (A : AdmissibleClass) :
    ConstrainedCellMigrationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse