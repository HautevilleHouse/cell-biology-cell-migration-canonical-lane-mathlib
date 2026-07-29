import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.PopulationPersistencePackage

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationCertificate (M : MotilityModel) (P : PopulationPersistencePackage M) where
  motilityMechanismValid : Prop
  chemotaxisResponse : Prop
  adhesionDynamics : Prop
  cytoskeletalRearrangement : Prop
  motilityMechanismValidClosed : motilityMechanismValid
  chemotaxisResponseClosed : chemotaxisResponse
  adhesionDynamicsClosed : adhesionDynamics
  cytoskeletalRearrangementClosed : cytoskeletalRearrangement
  populationEvidence : PopulationPersistenceEvidence P

def CellMigrationCertificateClosed {M : MotilityModel} {P : PopulationPersistencePackage M}
    (C : CellMigrationCertificate M P) : Prop :=
  C.motilityMechanismValid ∧ C.chemotaxisResponse ∧ C.adhesionDynamics ∧
  C.cytoskeletalRearrangement ∧ PopulationPersistenceClosed P

theorem cell_migration_certificate_closed
    {M : MotilityModel} {P : PopulationPersistencePackage M}
    (C : CellMigrationCertificate M P) : CellMigrationCertificateClosed C := by
  exact And.intro C.motilityMechanismValidClosed
    (And.intro C.chemotaxisResponseClosed
      (And.intro C.adhesionDynamicsClosed
        (And.intro C.cytoskeletalRearrangementClosed
          (population_persistence_closed_from_evidence P C.populationEvidence))))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse