import CellBiologyCellMigrationCanonicalLaneLean.CytoskeletonDynamics

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure MigrationAssayPackage {C : CellAdhesionPackage S}
    {Cy : CytoskeletonDynamicsPackage C} {Ch : ChemotaxisSignalingPackage C} where
  woundHealingAssay : Prop
  transwellMigration : Prop
  singleCellTracking : Prop
  migrationSpeed : Prop
  directionality : Prop

structure MigrationAssayEvidence {C : CellAdhesionPackage S}
    {Cy : CytoskeletonDynamicsPackage C} {Ch : ChemotaxisSignalingPackage C}
    (M : MigrationAssayPackage Cy Ch) where
  woundHealingAssayClosed : M.woundHealingAssay
  transwellMigrationClosed : M.transwellMigration
  singleCellTrackingClosed : M.singleCellTracking
  migrationSpeedClosed : M.migrationSpeed
  directionalityClosed : M.directionality

def MigrationAssayClosed {C : CellAdhesionPackage S}
    {Cy : CytoskeletonDynamicsPackage C} {Ch : ChemotaxisSignalingPackage C}
    (M : MigrationAssayPackage Cy Ch) : Prop :=
  M.woundHealingAssay ∧ M.transwellMigration ∧ M.singleCellTracking ∧
  M.migrationSpeed ∧ M.directionality

theorem migration_assay_closed_from_evidence {C : CellAdhesionPackage S}
    {Cy : CytoskeletonDynamicsPackage C} {Ch : ChemotaxisSignalingPackage C}
    (M : MigrationAssayPackage Cy Ch) (E : MigrationAssayEvidence M) :
    MigrationAssayClosed M := by
  exact And.intro E.woundHealingAssayClosed
    (And.intro E.transwellMigrationClosed
      (And.intro E.singleCellTrackingClosed
        (And.intro E.migrationSpeedClosed E.directionalityClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse