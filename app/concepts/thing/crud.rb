class Thing::Form < Trailblazer::Operation
  include Model
  model Thing, :create

  contract do
  #  undef :persisted?
    property :one, validates: {presence: true}
    property :two, validates: {presence: true}

    collection :others do
      property :three, validates: {presence: true}
      property :four, validates: {presence: true}
    end
  end

  def setup_model!(params)
    model.others.build
  end
end
