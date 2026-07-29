import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure AdhesionDynamicsPackage where
  focalAdhesionAssembly : Prop
  integrinBindingKinetics : Prop
  tractionForceGeneration : Prop
  adhesionTurnover : Prop

structure AdhesionDynamicsEvidence (A : AdhesionDynamicsPackage) where
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  integrinBindingKineticsClosed : A.integrinBindingKinetics
  tractionForceGenerationClosed : A.tractionForceGeneration
  adhesionTurnoverClosed : A.adhesionTurnover

def AdhesionDynamicsClosed (A : AdhesionDynamicsPackage) : Prop :=
  A.focalAdhesionAssembly ∧ A.integrinBindingKinetics ∧
  A.tractionForceGeneration ∧ A.adhesionTurnover

theorem adhesion_dynamics_closed_from_evidence
    (A : AdhesionDynamicsPackage) (E : AdhesionDynamicsEvidence A) :
    AdhesionDynamicsClosed A := by
  exact And.intro E.focalAdhesionAssemblyClosed
    (And.intro E.integrinBindingKineticsClosed
      (And.intro E.tractionForceGenerationClosed E.adhesionTurnoverClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse