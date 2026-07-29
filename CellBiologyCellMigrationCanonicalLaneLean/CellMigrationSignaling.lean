import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure CellMigrationSignalingPackage where
  growthFactorConcentration : Prop
  receptorActivation : Prop
  downstreamKinase : Prop
  signalAmplification : Prop
  adaptationBehavior : Prop

structure CellMigrationSignalingEvidence (S : CellMigrationSignalingPackage) where
  growthFactorConcentrationClosed : S.growthFactorConcentration
  receptorActivationClosed : S.receptorActivation
  downstreamKinaseClosed : S.downstreamKinase
  signalAmplificationClosed : S.signalAmplification
  adaptationBehaviorClosed : S.adaptationBehavior

def CellMigrationSignalingClosed (S : CellMigrationSignalingPackage) : Prop :=
  S.growthFactorConcentration ∧ S.receptorActivation ∧
  S.downstreamKinase ∧ S.signalAmplification ∧ S.adaptationBehavior

theorem cell_migration_signaling_closed_from_evidence
    (S : CellMigrationSignalingPackage) (E : CellMigrationSignalingEvidence S) :
    CellMigrationSignalingClosed S :=
  And.intro E.growthFactorConcentrationClosed
    (And.intro E.receptorActivationClosed
      (And.intro E.downstreamKinaseClosed
        (And.intro E.signalAmplificationClosed E.adaptationBehaviorClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse