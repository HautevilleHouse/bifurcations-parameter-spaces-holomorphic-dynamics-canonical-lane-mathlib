import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifParamsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse