class MedicationsController < InheritedResources::Base

  private

    def medication_params
      params.require(:medication).permit(:user_id, :name, :description, :specialNotes)
    end
end

