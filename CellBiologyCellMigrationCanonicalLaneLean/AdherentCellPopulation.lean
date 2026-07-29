import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationCanonicalLaneLean

structure AdherentCellPopulation where
  cellCarrier : Type u
  topology : TopologicalSpace cellCarrier
  cellDensity : Type v
  migrationState : Type w
  cellDensityDefined : Prop
  migrationStateDefined : Prop
  conclusion : cellDensityDefined ∧ migrationStateDefined

structure CellMigrationAdmittedObject where
  population : AdherentCellPopulation
  integrinSignalingActive : Prop
  cytoskeletonRearrangement : Prop
  conclusion : integrinSignalingActive ∧ cytoskeletonRearrangement

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellMigrationCanonicalLaneLean
end HautevilleHouse