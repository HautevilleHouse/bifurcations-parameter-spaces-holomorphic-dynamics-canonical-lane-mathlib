import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure RenormalizationPackage {P : ParameterSpacePackage}
    {B : BifurcationPointPackage P} where
  renormalizationOperator : Type
  fixedPoint : Prop
  scalingLaw : Prop
  universality : Prop

structure RenormalizationEvidence {P : ParameterSpacePackage}
    {B : BifurcationPointPackage P} (R : RenormalizationPackage P B) where
  fixedPointClosed : R.fixedPoint
  scalingLawClosed : R.scalingLaw
  universalityClosed : R.universality

def RenormalizationClosed {P : ParameterSpacePackage}
    {B : BifurcationPointPackage P} (R : RenormalizationPackage P B) : Prop :=
  R.fixedPoint ∧ R.scalingLaw ∧ R.universality

theorem renormalization_closed_from_evidence {P : ParameterSpacePackage}
    {B : BifurcationPointPackage P} (R : RenormalizationPackage P B)
    (E : RenormalizationEvidence R) : RenormalizationClosed R := by
  exact And.intro E.fixedPointClosed
    (And.intro E.scalingLawClosed E.universalityClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse
