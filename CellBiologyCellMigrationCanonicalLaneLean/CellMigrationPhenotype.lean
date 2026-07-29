import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationPhenotypePackage where
  cellPolarity : Prop
  leadingEdgeProtrusion : Prop
  trailingEdgeRetraction : Prop
  migrationSpeed : Prop
  directionalPersistence : Prop

structure CellMigrationPhenotypeEvidence (P : CellMigrationPhenotypePackage) where
  cellPolarityClosed : P.cellPolarity
  leadingEdgeProtrusionClosed : P.leadingEdgeProtrusion
  trailingEdgeRetractionClosed : P.trailingEdgeRetraction
  migrationSpeedClosed : P.migrationSpeed
  directionalPersistenceClosed : P.directionalPersistence

def CellMigrationPhenotypeClosed (P : CellMigrationPhenotypePackage) : Prop :=
  P.cellPolarity ∧ P.leadingEdgeProtrusion ∧
  P.trailingEdgeRetraction ∧ P.migrationSpeed ∧ P.directionalPersistence

theorem cell_migration_phenotype_closed_from_evidence
    (P : CellMigrationPhenotypePackage) (E : CellMigrationPhenotypeEvidence P) :
    CellMigrationPhenotypeClosed P :=
  And.intro E.cellPolarityClosed
    (And.intro E.leadingEdgeProtrusionClosed
      (And.intro E.trailingEdgeRetractionClosed
        (And.intro E.migrationSpeedClosed E.directionalPersistenceClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse