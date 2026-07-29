import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationParameterSpace where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Type v
  parameterSpaceDimension : ℕ
  holomorphicFamily : Prop
  familySmooth : Prop
  criticalPointsFinite : Prop
  periodicCyclesClassified : Prop

structure BifurcationParameterSpaceEvidence (P : BifurcationParameterSpace) where
  parameterSpaceDimensionClosed : P.parameterSpaceDimension > 0
  holomorphicFamilyClosed : P.holomorphicFamily
  familySmoothClosed : P.familySmooth
  criticalPointsFiniteClosed : P.criticalPointsFinite
  periodicCyclesClassifiedClosed : P.periodicCyclesClassified

def BifurcationParameterSpaceClosed (P : BifurcationParameterSpace) : Prop :=
  P.parameterSpaceDimension > 0 ∧ P.holomorphicFamily ∧ P.familySmooth ∧
  P.criticalPointsFinite ∧ P.periodicCyclesClassified

theorem bifurcation_parameter_space_closed_from_evidence
    (P : BifurcationParameterSpace) (E : BifurcationParameterSpaceEvidence P) :
    BifurcationParameterSpaceClosed P := by
  exact And.intro E.parameterSpaceDimensionClosed
    (And.intro E.holomorphicFamilyClosed
      (And.intro E.familySmoothClosed
        (And.intro E.criticalPointsFiniteClosed E.periodicCyclesClassifiedClosed)))

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse