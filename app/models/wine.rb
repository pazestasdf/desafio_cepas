class Wine < ApplicationRecord
    has_many :wine_strains, :dependent => :destroy
    has_many :strains, through: :wine_strains

    has_and_belongs_to_many :oenologists
    has_many :oenologist_scores

    def addStrainPercent(strainPercents)
        # {"1"=>"10", "2"=>"90", "3"=>""}
        self.wine_strains.destroy_all
        strainPercents.each do |strainId, strainPercentage|
            if strainPercentage != ""
                self.wine_strains.create(strain_id: strainId, percentage: strainPercentage)
            end
        end
    end

    def getPercentByStrain(strainId)
        self.wine_strains.find_by(strain_id: strainId) ? self.wine_strains.find_by(strain_id: strainId).percentage : 0
    end
end
