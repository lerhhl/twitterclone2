require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  it { should route(:get, '/').to(action: :home) }
end