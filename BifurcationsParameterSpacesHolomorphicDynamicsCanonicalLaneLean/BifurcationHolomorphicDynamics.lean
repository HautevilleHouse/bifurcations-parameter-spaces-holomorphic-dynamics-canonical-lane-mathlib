import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BifurcationParameterSpace

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationHolomorphicDynamics (P : BifurcationParameterSpace) where
  juliaSetParameterized : Type u
  criticalPointCount : ℕ
  periodicPointClassification : Prop
  bifurcationDiagram : Prop
  hyperbolicityDensity : Prop

structure BifurcationHolomorphicDynamicsEvidence {P : BifurcationParameterSpace}
    (D : BifurcationHolomorphicDynamics P) where
  criticalPointCountClosed : D.criticalPointCount = 0 → False
  periodicPointClassificationClosed : D.periodicPointClassification
  bifurcationDiagramClosed : D.bifurcationDiagram
  hyperbolicityDensityClosed : D.hyperbolicityDensity

def BifurcationHolomorphicDynamicsClosed {P : BifurcationParameterSpace}
    (D : BifurcationHolomorphicDynamics P) : Prop :=
  D.periodicPointClassification ∧ D.bifurcationDiagram ∧ D.hyperbolicityDensity

theorem bifurcation_holomorphic_dynamics_closed_from_evidence
    {P : BifurcationParameterSpace} (D : BifurcationHolomorphicDynamics P)
    (E : BifurcationHolomorphicDynamicsEvidence D) : BifurcationHolomorphicDynamicsClosed D := by
  exact And.intro E.periodicPointClassificationClosed
    (And.intro E.bifurcationDiagramClosed E.hyperbolicityDensityClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse