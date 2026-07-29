import HautevilleHouse.CellBiologyCellMigrationCanonicalLaneLean.MigrationMathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure PopulationPersistencePackage (M : MotilityModel) where
  growthRate : Float
  carryingCapacity : Float
  migrationRate : Float
  survivalProbability : Prop

structure PopulationPersistenceEvidence {M : MotilityModel} (P : PopulationPersistencePackage M) where
  growthRateClosed : P.growthRate > 0
  carryingCapacityClosed : P.carryingCapacity > 0
  migrationRateClosed : P.migrationRate > 0
  survivalProbabilityClosed : P.survivalProbability

def PopulationPersistenceClosed {M : MotilityModel} (P : PopulationPersistencePackage M) : Prop :=
  P.growthRate > 0 ∧ P.carryingCapacity > 0 ∧ P.migrationRate > 0 ∧ P.survivalProbability

theorem population_persistence_closed_from_evidence
    {M : MotilityModel} (P : PopulationPersistencePackage M)
    (E : PopulationPersistenceEvidence P) : PopulationPersistenceClosed P := by
  exact And.intro E.growthRateClosed
    (And.intro E.carryingCapacityClosed
      (And.intro E.migrationRateClosed E.survivalProbabilityClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse