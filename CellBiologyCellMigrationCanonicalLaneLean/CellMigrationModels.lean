import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationModelsPackage where
  mesenchymalMigration : Prop
  amoeboidMigration : Prop
  collectiveMigration : Prop
  migrationModeSwitch : Prop

structure CellMigrationModelsEvidence (M : CellMigrationModelsPackage) where
  mesenchymalMigrationClosed : M.mesenchymalMigration
  amoeboidMigrationClosed : M.amoeboidMigration
  collectiveMigrationClosed : M.collectiveMigration
  migrationModeSwitchClosed : M.migrationModeSwitch

def CellMigrationModelsClosed (M : CellMigrationModelsPackage) : Prop :=
  M.mesenchymalMigration ∧ M.amoeboidMigration ∧
  M.collectiveMigration ∧ M.migrationModeSwitch

theorem cell_migration_models_closed_from_evidence
    (M : CellMigrationModelsPackage) (E : CellMigrationModelsEvidence M) :
    CellMigrationModelsClosed M := by
  exact And.intro E.mesenchymalMigrationClosed
    (And.intro E.amoeboidMigrationClosed
      (And.intro E.collectiveMigrationClosed E.migrationModeSwitchClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse
