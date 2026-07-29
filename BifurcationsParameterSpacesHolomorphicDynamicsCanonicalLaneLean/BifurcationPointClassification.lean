import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean

structure BifurcationPointPackage {P : ParameterSpacePackage} where
  point : P.parameterType
  bifurcationType : String
  localDegeneracy : Prop
  universalProperty : Prop

structure BifurcationPointEvidence {P : ParameterSpacePackage}
    (B : BifurcationPointPackage P) where
  localDegeneracyClosed : B.localDegeneracy
  universalPropertyClosed : B.universalProperty

def BifurcationPointClosed {P : ParameterSpacePackage}
    (B : BifurcationPointPackage P) : Prop :=
  B.localDegeneracy ∧ B.universalProperty

theorem bifurcation_point_closed_from_evidence {P : ParameterSpacePackage}
    (B : BifurcationPointPackage P) (E : BifurcationPointEvidence B) :
    BifurcationPointClosed B := by
  exact And.intro E.localDegeneracyClosed E.universalPropertyClosed

end BifurcationsParameterSpacesHolomorphicDynamicsCanonicalLaneLean
end HautevilleHouse
