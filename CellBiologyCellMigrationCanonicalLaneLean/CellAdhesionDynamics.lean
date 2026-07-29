import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellAdhesionDynamicsPackage where
  focalAdhesionKinetics : Prop
  integrinBindingAffinity : Prop
  tractionForceGeneration : Prop
  adhesionTurnover : Prop
  mechanosensing : Prop

structure CellAdhesionDynamicsEvidence (C : CellAdhesionDynamicsPackage) where
  focalAdhesionKineticsClosed : C.focalAdhesionKinetics
  integrinBindingAffinityClosed : C.integrinBindingAffinity
  tractionForceGenerationClosed : C.tractionForceGeneration
  adhesionTurnoverClosed : C.adhesionTurnover
  mechanosensingClosed : C.mechanosensing

def CellAdhesionDynamicsClosed (C : CellAdhesionDynamicsPackage) : Prop :=
  C.focalAdhesionKinetics ∧ C.integrinBindingAffinity ∧ C.tractionForceGeneration ∧ C.adhesionTurnover ∧ C.mechanosensing

theorem cell_adhesion_dynamics_closed_from_evidence (C : CellAdhesionDynamicsPackage) (E : CellAdhesionDynamicsEvidence C) :
    CellAdhesionDynamicsClosed C := by
  exact And.intro E.focalAdhesionKineticsClosed
    (And.intro E.integrinBindingAffinityClosed
      (And.intro E.tractionForceGenerationClosed
        (And.intro E.adhesionTurnoverClosed E.mechanosensingClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse