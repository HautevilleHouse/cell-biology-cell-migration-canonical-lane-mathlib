import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationAdhesionPackage where
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  tractionForceGeneration : Prop
  adhesionTurnover : Prop
  mechanosensing : Prop

structure CellMigrationAdhesionEvidence (A : CellMigrationAdhesionPackage) where
  integrinBindingClosed : A.integrinBinding
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  tractionForceGenerationClosed : A.tractionForceGeneration
  adhesionTurnoverClosed : A.adhesionTurnover
  mechanosensingClosed : A.mechanosensing

def CellMigrationAdhesionClosed (A : CellMigrationAdhesionPackage) : Prop :=
  A.integrinBinding ∧ A.focalAdhesionAssembly ∧
  A.tractionForceGeneration ∧ A.adhesionTurnover ∧ A.mechanosensing

theorem cell_migration_adhesion_closed_from_evidence
    (A : CellMigrationAdhesionPackage) (E : CellMigrationAdhesionEvidence A) :
    CellMigrationAdhesionClosed A :=
  And.intro E.integrinBindingClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.tractionForceGenerationClosed
        (And.intro E.adhesionTurnoverClosed E.mechanosensingClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse