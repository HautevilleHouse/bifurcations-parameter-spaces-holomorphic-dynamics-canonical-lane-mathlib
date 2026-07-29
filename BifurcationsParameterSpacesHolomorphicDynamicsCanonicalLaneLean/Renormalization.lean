import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamics.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamics

structure RenormalizationPackage where
  renormalizationOperator : Type u
  fixedPointExistence : Prop
  convergenceRenormalization : Prop
  universality : Prop

def RenormalizationClosed (R : RenormalizationPackage) : Prop :=
  R.fixedPointExistence ∧ R.convergenceRenormalization ∧ R.universality

structure RenormalizationEvidence (R : RenormalizationPackage) where
  fixedPointExistenceClosed : R.fixedPointExistence
  convergenceRenormalizationClosed : R.convergenceRenormalization
  universalityClosed : R.universality

theorem renormalization_closed_from_evidence (R : RenormalizationPackage)
    (E : RenormalizationEvidence R) : RenormalizationClosed R := by
  exact And.intro E.fixedPointExistenceClosed
    (And.intro E.convergenceRenormalizationClosed E.universalityClosed)

end BifurcationsParameterSpacesHolomorphicDynamics
end HautevilleHouse