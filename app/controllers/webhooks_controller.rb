# frozen_string_literal: true

class WebhooksController < ApplicationController
  def root
    render json: {
      fulfillmentText: FulfillmentText.process(fulfillment_params)
    }
  end

  private

  def fulfillment_params
    params.dig(
      :queryResult,
      :parameters
    )&.permit(intents).to_h
  end

  def intents
    %w[
      calendario_evento
    ]
  end
end
