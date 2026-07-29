import CellBiologyCellMigrationCanonicalLaneLean.CellAdhesion

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ChemotaxisSignalingPackage {C : CellAdhesionPackage S} where
  gradientSensing : Prop
  receptorActivation : Prop
  pi3kAktPathway : Prop
  rhoGtpaseRegulation : Prop
  chemotacticMigration : Prop

structure ChemotaxisSignalingEvidence {C : CellAdhesionPackage S}
    (Ch : ChemotaxisSignalingPackage C) where
  gradientSensingClosed : Ch.gradientSensing
  receptorActivationClosed : Ch.receptorActivation
  pi3kAktPathwayClosed : Ch.pi3kAktPathway
  rhoGtpaseRegulationClosed : Ch.rhoGtpaseRegulation
  chemotacticMigrationClosed : Ch.chemotacticMigration

def ChemotaxisSignalingClosed {C : CellAdhesionPackage S}
    (Ch : ChemotaxisSignalingPackage C) : Prop :=
  Ch.gradientSensing ∧ Ch.receptorActivation ∧ Ch.pi3kAktPathway ∧
  Ch.rhoGtpaseRegulation ∧ Ch.chemotacticMigration

theorem chemotaxis_signaling_closed_from_evidence {C : CellAdhesionPackage S}
    (Ch : ChemotaxisSignalingPackage C) (E : ChemotaxisSignalingEvidence Ch) :
    ChemotaxisSignalingClosed Ch := by
  exact And.intro E.gradientSensingClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.pi3kAktPathwayClosed
        (And.intro E.rhoGtpaseRegulationClosed E.chemotacticMigrationClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse