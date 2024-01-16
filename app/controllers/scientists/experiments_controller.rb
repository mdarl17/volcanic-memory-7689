class Scientists::ExperimentsController < ApplicationController 
  def destroy 
    scientist = Scientist.find(params[:scientist_id])
    experiment = Experiment.find(params[:id])

    scientist_experiment = ScientistExperiment.find_by(scientist_id: scientist.id, experiment_id: experiment.id)
    scientist_experiment.destroy

    redirect_to scientist_path(scientist.id)
  end
end
