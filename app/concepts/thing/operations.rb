class Thing::Form < Trailblazer::Operation
  contract do
    undef :persisted?
    property :one, virtual: true
    property :two, virtual: true
  end
end
