import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure AdhesionDynamicsPackage where
  integrinActivation : Prop
  focalAdhesionAssembly : Prop
  tractionForceGeneration : Prop
  adhesionTurnover : Prop

structure AdhesionDynamicsEvidence (A : AdhesionDynamicsPackage) where
  integrinActivationClosed : A.integrinActivation
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  tractionForceGenerationClosed : A.tractionForceGeneration
  adhesionTurnoverClosed : A.adhesionTurnover

def AdhesionDynamicsClosed (A : AdhesionDynamicsPackage) : Prop :=
  A.integrinActivation ∧ A.focalAdhesionAssembly ∧ A.tractionForceGeneration ∧ A.adhesionTurnover

theorem adhesion_dynamics_closed_from_evidence (A : AdhesionDynamicsPackage) (E : AdhesionDynamicsEvidence A) : AdhesionDynamicsClosed A :=
  And.intro E.integrinActivationClosed (And.intro E.focalAdhesionAssemblyClosed (And.intro E.tractionForceGenerationClosed E.adhesionTurnoverClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse