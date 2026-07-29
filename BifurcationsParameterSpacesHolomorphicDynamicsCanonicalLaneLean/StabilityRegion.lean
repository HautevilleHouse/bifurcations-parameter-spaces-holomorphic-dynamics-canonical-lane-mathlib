import canonicalLaneMathlib.AdmissibleClass
import BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean.BifurcationLocus

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure StabilityRegion where
  family : HolomorphicFamily
  stableSet : Set (family.parameterSpace)
  openness : IsOpen stableSet
  complementEqualsBifurcationSet : complement stableSet = bifurcationSet (BifurcationLocus.mk family _ (by exact ?_) (by exact ?_) (by exact ?_))
  uniformStability : Prop

structure StabilityRegionEvidence (S : StabilityRegion) where
  opennessClosed : S.openness
  complementClosed : S.complementEqualsBifurcationSet
  uniformStabilityClosed : S.uniformStability

def StabilityRegionClosed (S : StabilityRegion) : Prop :=
  S.openness ∧ S.complementEqualsBifurcationSet ∧ S.uniformStability

theorem stability_region_closed_from_evidence (S : StabilityRegion) (E : StabilityRegionEvidence S) :
    StabilityRegionClosed S :=
  And.intro E.opennessClosed (And.intro E.complementClosed E.uniformStabilityClosed)

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse