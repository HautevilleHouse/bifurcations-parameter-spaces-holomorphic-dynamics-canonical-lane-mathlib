import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BridgeLemmas
import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

def ConstrainedBifParamsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifparams_endgame (A : AdmissibleClass) :
    ConstrainedBifParamsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse