import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BifurcationAnalysis

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationEndpointClassification {P : BifurcationParameterSpace}
    {D : BifurcationHolomorphicDynamics P} {A : BifurcationAnalysis D} where
  endpointParameter : P.manifold
  bifurcationType : Prop
  endpointReached : Prop
  juliaSetHomogeneous : Prop
  endpointMatchesConjecture : Prop

structure BifurcationEndpointClassificationEvidence
    {P : BifurcationParameterSpace} {D : BifurcationHolomorphicDynamics P}
    {A : BifurcationAnalysis D} (E : BifurcationEndpointClassification A) where
  endpointReachedClosed : E.endpointReached
  juliaSetHomogeneousClosed : E.juliaSetHomogeneous
  endpointMatchesConjectureClosed : E.endpointMatchesConjecture

def BifurcationEndpointClassificationClosed
    {P : BifurcationParameterSpace} {D : BifurcationHolomorphicDynamics P}
    {A : BifurcationAnalysis D} (E : BifurcationEndpointClassification A) : Prop :=
  E.endpointReached ∧ E.juliaSetHomogeneous ∧ E.endpointMatchesConjecture

theorem bifurcation_endpoint_classification_closed_from_evidence
    {P : BifurcationParameterSpace} {D : BifurcationHolomorphicDynamics P}
    {A : BifurcationAnalysis D} (E : BifurcationEndpointClassification A)
    (Ev : BifurcationEndpointClassificationEvidence E) :
    BifurcationEndpointClassificationClosed E := by
  exact And.intro Ev.endpointReachedClosed
    (And.intro Ev.juliaSetHomogeneousClosed Ev.endpointMatchesConjectureClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse