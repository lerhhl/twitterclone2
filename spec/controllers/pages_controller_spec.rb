require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  it { should route(:get, '/').to(action: :home) }
end
