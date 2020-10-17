# frozen_string_literal: true

class IngestPurchase
  include Interactor

  delegate :params, to: :context

  def call
    Purchase.create!(creation_params)
  end

private

  def creation_params
    {
      uid:          params['id'],
      user_uid:     params['user_id'],
      merchant_uid: params['merchant_id'],
      location_uid: params['location_id'],
      purchased_at: params['purchased_at'],
      amount:       params['amount']
    }
  end
end
