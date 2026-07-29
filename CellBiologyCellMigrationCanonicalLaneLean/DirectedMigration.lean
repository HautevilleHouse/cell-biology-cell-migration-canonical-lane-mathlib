import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure DirectedMigrationPackage where
  chemotacticGradientSensing : Prop
  polarizationEstablishment : Prop
  persistentRandomWalk : Prop
  leadingEdgeProtrusion : Prop

structure DirectedMigrationEvidence (D : DirectedMigrationPackage) where
  chemotacticGradientSensingClosed : D.chemotacticGradientSensing
  polarizationEstablishmentClosed : D.polarizationEstablishment
  persistentRandomWalkClosed : D.persistentRandomWalk
  leadingEdgeProtrusionClosed : D.leadingEdgeProtrusion

def DirectedMigrationClosed (D : DirectedMigrationPackage) : Prop :=
  D.chemotacticGradientSensing ∧ D.polarizationEstablishment ∧
  D.persistentRandomWalk ∧ D.leadingEdgeProtrusion

theorem directed_migration_closed_from_evidence
    (D : DirectedMigrationPackage) (E : DirectedMigrationEvidence D) :
    DirectedMigrationClosed D := by
  exact And.intro E.chemotacticGradientSensingClosed
    (And.intro E.polarizationEstablishmentClosed
      (And.intro E.persistentRandomWalkClosed E.leadingEdgeProtrusionClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse