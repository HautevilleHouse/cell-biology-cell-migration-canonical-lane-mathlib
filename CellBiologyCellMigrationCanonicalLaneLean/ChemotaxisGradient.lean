import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ChemotaxisGradientPackage where
  chemoattractantSource : Type
  ligandReceptorBinding : Prop
  gradientSensing : Prop
  pI3KsignalingActivation : Prop
  leadingEdgePolarization : Prop
  directionalPersistence : Prop

structure ChemotaxisGradientEvidence (C : ChemotaxisGradientPackage) where
  ligandReceptorBindingClosed : C.ligandReceptorBinding
  gradientSensingClosed : C.gradientSensing
  pI3KsignalingActivationClosed : C.pI3KsignalingActivation
  leadingEdgePolarizationClosed : C.leadingEdgePolarization
  directionalPersistenceClosed : C.directionalPersistence

def ChemotaxisGradientClosed (C : ChemotaxisGradientPackage) : Prop :=
  C.ligandReceptorBinding ∧ C.gradientSensing ∧
  C.pI3KsignalingActivation ∧ C.leadingEdgePolarization ∧ C.directionalPersistence

theorem chemotaxis_gradient_closed_from_evidence (C : ChemotaxisGradientPackage)
    (E : ChemotaxisGradientEvidence C) : ChemotaxisGradientClosed C := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.gradientSensingClosed
      (And.intro E.pI3KsignalingActivationClosed
        (And.intro E.leadingEdgePolarizationClosed
          E.directionalPersistenceClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse