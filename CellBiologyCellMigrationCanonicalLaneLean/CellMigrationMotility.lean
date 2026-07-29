import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationMotilityPackage where
  cellType : Type
  substrate : Type
  adhesionComplexFormation : Prop
  actinPolymerizationRate : Prop
  myosinContraction : Prop
  focalAdhesionTurnover : Prop
  membraneProtrusion : Prop

structure CellMigrationMotilityEvidence (M : CellMigrationMotilityPackage) where
  adhesionComplexFormationClosed : M.adhesionComplexFormation
  actinPolymerizationRateClosed : M.actinPolymerizationRate
  myosinContractionClosed : M.myosinContraction
  focalAdhesionTurnoverClosed : M.focalAdhesionTurnover
  membraneProtrusionClosed : M.membraneProtrusion

def CellMigrationMotilityClosed (M : CellMigrationMotilityPackage) : Prop :=
  M.adhesionComplexFormation ∧ M.actinPolymerizationRate ∧
  M.myosinContraction ∧ M.focalAdhesionTurnover ∧ M.membraneProtrusion

theorem cell_migration_motility_closed_from_evidence (M : CellMigrationMotilityPackage)
    (E : CellMigrationMotilityEvidence M) : CellMigrationMotilityClosed M := by
  exact And.intro E.adhesionComplexFormationClosed
    (And.intro E.actinPolymerizationRateClosed
      (And.intro E.myosinContractionClosed
        (And.intro E.focalAdhesionTurnoverClosed
          E.membraneProtrusionClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse