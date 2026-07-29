import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ChemotaxisPDEPackage where
  chemoattractantGradient : Prop
  receptorDynamics : Prop
  signalTransduction : Prop
  polarisationResponse : Prop
  chemotacticIndex : Prop

structure ChemotaxisPDEEvidence (C : ChemotaxisPDEPackage) where
  chemoattractantGradientClosed : C.chemoattractantGradient
  receptorDynamicsClosed : C.receptorDynamics
  signalTransductionClosed : C.signalTransduction
  polarisationResponseClosed : C.polarisationResponse
  chemotacticIndexClosed : C.chemotacticIndex

def ChemotaxisPDEClosed (C : ChemotaxisPDEPackage) : Prop :=
  C.chemoattractantGradient ∧ C.receptorDynamics ∧ C.signalTransduction ∧ C.polarisationResponse ∧ C.chemotacticIndex

theorem chemotaxis_pde_closed_from_evidence (C : ChemotaxisPDEPackage) (E : ChemotaxisPDEEvidence C) :
    ChemotaxisPDEClosed C := by
  exact And.intro E.chemoattractantGradientClosed
    (And.intro E.receptorDynamicsClosed
      (And.intro E.signalTransductionClosed
        (And.intro E.polarisationResponseClosed E.chemotacticIndexClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse