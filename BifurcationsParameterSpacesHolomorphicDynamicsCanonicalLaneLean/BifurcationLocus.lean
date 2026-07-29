import canonicalLaneMathlib.AdmissibleClass
import BifurcationParameterSpacesHolomorphicDynamicsCanonicalLaneLean.HolomorphicFamilyParameterSpace

namespace HautevilleHouse
namespace BifurcationParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationLocusPackage (H : HolomorphicFamilyParameterSpace) where
  bifurcationSet : Set (H.parameterSpace)
  hyperbolicComponents : Prop
  postcriticalRelations : Prop
  stableRegions : Prop
  bifurcationSetClosed : Prop

structure BifurcationLocusEvidence (H : HolomorphicFamilyParameterSpace) (B : BifurcationLocusPackage H) where
  hyperbolicComponentsClosed : B.hyperbolicComponents
  postcriticalRelationsClosed : B.postcriticalRelations
  stableRegionsClosed : B.stableRegions
  bifurcationSetClosedTerm : B.bifurcationSetClosed

def BifurcationLocusClosed (H : HolomorphicFamilyParameterSpace) (B : BifurcationLocusPackage H) : Prop :=
  B.hyperbolicComponents ∧ B.postcriticalRelations ∧ B.stableRegions ∧ B.bifurcationSetClosed

theorem bifurcation_locus_closed_from_evidence
    (H : HolomorphicFamilyParameterSpace) (B : BifurcationLocusPackage H)
    (E : BifurcationLocusEvidence H B) : BifurcationLocusClosed H B := by
  exact And.intro E.hyperbolicComponentsClosed
    (And.intro E.postcriticalRelationsClosed
      (And.intro E.stableRegionsClosed E.bifurcationSetClosedTerm))

end BifurcationParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse