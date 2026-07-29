import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ChemotaxisGradientSensingPackage where
  gradientDetection : Type u
  receptorBinding : Prop
  intracellularSignaling : Prop
  polarization : Prop
  directedMigration : Prop

structure ChemotaxisGradientSensingEvidence (P : ChemotaxisGradientSensingPackage) where
  receptorBindingClosed : P.receptorBinding
  intracellularSignalingClosed : P.intracellularSignaling
  polarizationClosed : P.polarization
  directedMigrationClosed : P.directedMigration

def ChemotaxisGradientSensingClosed (P : ChemotaxisGradientSensingPackage) : Prop :=
  P.receptorBinding ∧ P.intracellularSignaling ∧ P.polarization ∧ P.directedMigration

theorem chemotaxis_gradient_sensing_closed_from_evidence (P : ChemotaxisGradientSensingPackage) (E : ChemotaxisGradientSensingEvidence P) : ChemotaxisGradientSensingClosed P := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.intracellularSignalingClosed
      (And.intro E.polarizationClosed E.directedMigrationClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse