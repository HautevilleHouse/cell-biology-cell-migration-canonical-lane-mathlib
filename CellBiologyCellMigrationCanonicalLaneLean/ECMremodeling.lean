import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure ECMremodelingPackage where
  extracellularMatrix : Type
  matrixMetalloproteinases : Prop
  integrinBinding : Prop
  focalAdhesionKinaseSignaling : Prop
  matrixDegradation : Prop
  tractionForceGeneration : Prop

structure ECMremodelingEvidence (E : ECMremodelingPackage) where
  matrixMetalloproteinasesClosed : E.matrixMetalloproteinases
  integrinBindingClosed : E.integrinBinding
  focalAdhesionKinaseSignalingClosed : E.focalAdhesionKinaseSignaling
  matrixDegradationClosed : E.matrixDegradation
  tractionForceGenerationClosed : E.tractionForceGeneration

def ECMremodelingClosed (E : ECMremodelingPackage) : Prop :=
  E.matrixMetalloproteinases ∧ E.integrinBinding ∧
  E.focalAdhesionKinaseSignaling ∧ E.matrixDegradation ∧ E.tractionForceGeneration

theorem ecm_remodeling_closed_from_evidence (E : ECMremodelingPackage)
    (Ev : ECMremodelingEvidence E) : ECMremodelingClosed E := by
  exact And.intro Ev.matrixMetalloproteinasesClosed
    (And.intro Ev.integrinBindingClosed
      (And.intro Ev.focalAdhesionKinaseSignalingClosed
        (And.intro Ev.matrixDegradationClosed
          Ev.tractionForceGenerationClosed)))

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse