import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure MigrationModePackage where
  mesenchymalMigration : Prop
  amoeboidMigration : Prop
  collectiveMigration : Prop
  chemotaxis : Prop
  haptotaxis : Prop

structure MigrationModeEvidence (M : MigrationModePackage) where
  mesenchymalMigrationClosed : M.mesenchymalMigration
  amoeboidMigrationClosed : M.amoeboidMigration
  collectiveMigrationClosed : M.collectiveMigration
  chemotaxisClosed : M.chemotaxis
  haptotaxisClosed : M.haptotaxis

def MigrationModeClosed (M : MigrationModePackage) : Prop :=
  M.mesenchymalMigration ∧ M.amoeboidMigration ∧ M.collectiveMigration ∧ M.chemotaxis ∧ M.haptotaxis

theorem migration_mode_closed_from_evidence (M : MigrationModePackage) (E : MigrationModeEvidence M) : MigrationModeClosed M :=
  And.intro E.mesenchymalMigrationClosed (And.intro E.amoeboidMigrationClosed (And.intro E.collectiveMigrationClosed (And.intro E.chemotaxisClosed E.haptotaxisClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse