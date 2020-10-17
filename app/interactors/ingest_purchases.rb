class IngestPurchases
  include Interactor

  def call
    Thanx.new.purchases.each do |purchase|
      Rails.logger.info "Ingesting #{purchase['id']}"
      IngestPurchaseWorker.perform_async(purchase)
    end
  end
end
