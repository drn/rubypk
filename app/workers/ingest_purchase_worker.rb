# frozen_string_literal: true

class IngestPurchaseWorker
  include Sidekiq::Worker

  def perform(params)
    @params = params
    IngestPurchase.call(params: params)
  end
end
