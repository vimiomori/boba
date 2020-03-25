module Api
  module V1
    class JournalsController < ApplicationController
      before_action :authorize_access_request!
      before_action :set_journal, only: [:show, :update, :destroy]

      # GET /journals
      def index
        @journals = current_user.journals.all

        render json: @journals
      end

      # GET /journals/1
      def show
        render json: @journal
      end

      # POST /journals
      def create
        @journal = current_user.records.build(journal_params)

        if @journal.save
          render json: @journal, status: :created, location: @journal
        else
          render json: @journal.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /journals/1
      def update
        if @journal.update(journal_params)
          render json: @journal
        else
          render json: @journal.errors, status: :unprocessable_entity
        end
      end

      # DELETE /journals/1
      def destroy
        @journal.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_journal
          @journal = current_user.records.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def journal_params
          params.require(:journal).permit(:name)
        end
    end
  end
end
