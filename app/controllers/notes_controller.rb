class NotesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_note, only: [:destroy]

  def index
    @notes = Note.includes(:user).order(:line_number).page(params[:page]).per(20)
    
    @number_notes = Note.all.count
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    @note.destroy
  end

  private

  def set_note
    @note = current_user.notes.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:note, :user_id)
  end
end
