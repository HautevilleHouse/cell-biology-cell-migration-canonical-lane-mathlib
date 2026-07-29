import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.MigrationBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

def gateClosed (A : MigrationAdmittedObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MigrationAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse