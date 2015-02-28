class ProfileMedicationsController < InheritedResources::Base

  private

    def profile_medication_params
      params.require(:profile_medication).permit(:profile_id, :medication_id, :startDate, :endDate, :count, :unit, :dose, :unit, :frequency, :taken)
    end
end

