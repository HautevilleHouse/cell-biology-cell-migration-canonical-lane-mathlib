import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure IntegrinActivationPackage where
  talinBinding : Prop
  kindlinRecruitment : Prop
  insideOutSignaling : Prop
  activationState : Prop

structure IntegrinActivationEvidence (A : IntegrinActivationPackage) where
  talinBindingClosed : A.talinBinding
  kindlinRecruitmentClosed : A.kindlinRecruitment
  insideOutSignalingClosed : A.insideOutSignaling
  activationStateClosed : A.activationState

def IntegrinActivationClosed (A : IntegrinActivationPackage) : Prop :=
  A.talinBinding ∧ A.kindlinRecruitment ∧ A.insideOutSignaling ∧ A.activationState

theorem integrin_activation_closed_from_evidence (A : IntegrinActivationPackage)
    (E : IntegrinActivationEvidence A) : IntegrinActivationClosed A := by
  exact And.intro E.talinBindingClosed (And.intro E.kindlinRecruitmentClosed
    (And.intro E.insideOutSignalingClosed E.activationStateClosed))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse